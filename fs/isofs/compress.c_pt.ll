; ModuleID = '/llk/IR_all_yes/fs/isofs/compress.c_pt.bc'
source_filename = "../fs/isofs/compress.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.53 }
%union.anon.53 = type { i32 }
%struct.z_stream_s = type { ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, i32, i32, i32 }
%struct.file = type { %union.anon.4, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.4 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.74, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.75, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.76, ptr, %struct.address_space, %struct.list_head, %union.anon.77, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.74 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.75 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.76 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.77 = type { ptr }
%struct.page = type { i32, %union.anon, %union.anon.73, %struct.atomic_t, i32 }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.73 = type { %struct.atomic_t }
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
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }

@zisofs_aops = dso_local constant { %struct.address_space_operations, [40 x i8] } { %struct.address_space_operations { ptr null, ptr @zisofs_readpage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@zisofs_zlib_workspace = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"VM_BUG_ON_PAGE(1 && PageTail(page))\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"./../include/linux/highmem-internal.h\00", [58 x i8] zeroinitializer }, align 32
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fs/isofs/compress.c\00", [44 x i8] zeroinitializer }, align 32
@zisofs_zlib_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.12, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @zisofs_zlib_lock, i64 52), ptr getelementptr (i8, ptr @zisofs_zlib_lock, i64 52) }, ptr @zisofs_zlib_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@zisofs_uncompress_block._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.5, i32 115, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017zisofs: zisofs_inflateInit returned %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"zisofs_uncompress_block\00", [40 x i8] zeroinitializer }, align 32
@zisofs_uncompress_block._entry_ptr = internal global ptr @zisofs_uncompress_block._entry, section ".printk_index", align 4
@zisofs_sink_page = internal global { [4096 x i8], [1024 x i8] } zeroinitializer, align 32
@zisofs_uncompress_block._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.5, i32 166, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [112 x i8], [48 x i8] } { [112 x i8] c"\017zisofs: zisofs_inflate returned %d, inode = %lu, page idx = %d, bh idx = %d, avail_in = %ld, avail_out = %ld\0A\00", [48 x i8] zeroinitializer }, align 32
@zisofs_uncompress_block._entry_ptr.10 = internal global ptr @zisofs_uncompress_block._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/buffer_head.h\00", [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"zisofs_zlib_lock.wait_lock\00", [37 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"zisofs_zlib_lock\00", [47 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967292]
@__sancov_gen_cov_switch_values.16 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 4294967291, i64 4294967292]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.18 = private unnamed_addr constant [12 x i8] c"zisofs_aops\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 371, i32 39 }
@___asan_gen_.21 = private unnamed_addr constant [22 x i8] c"zisofs_zlib_workspace\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 32, i32 14 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 260, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 416, i32 1 }
@___asan_gen_.34 = private unnamed_addr constant [38 x i8] c"./../include/linux/highmem-internal.h\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 44, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 231, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant [17 x i8] c"zisofs_zlib_lock\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 114, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant [17 x i8] c"zisofs_sink_page\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 26, i32 13 }
@___asan_gen_.54 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 158, i32 6 }
@___asan_gen_.61 = private unnamed_addr constant [31 x i8] c"../include/linux/buffer_head.h\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 354, i32 2 }
@___asan_gen_.67 = private constant [23 x i8] c"../fs/isofs/compress.c\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 33, i32 8 }
@___asan_gen_.69 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.70 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 717, i32 2 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @zisofs_uncompress_block._entry, ptr @zisofs_uncompress_block._entry.8, ptr @zisofs_uncompress_block._entry_ptr, ptr @zisofs_uncompress_block._entry_ptr.10, ptr @zisofs_aops, ptr @zisofs_zlib_workspace, ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @zisofs_zlib_lock, ptr @.str.6, ptr @.str.7, ptr @zisofs_sink_page, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zisofs_aops to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zisofs_zlib_workspace to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zisofs_zlib_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zisofs_uncompress_block._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zisofs_sink_page to i32), i32 4096, i32 5120, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zisofs_uncompress_block._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zisofs_readpage(ptr nocapture noundef readonly %file, ptr noundef %page) #0 align 64 {
entry:
  %stream.i.i = alloca %struct.z_stream_s, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_mapping = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_mapping, align 8
  %arrayidx = getelementptr i8, ptr %1, i32 -18
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %5)
  %cmp = icmp ugt i8 %5, 11
  %conv = zext i8 %5 to i32
  %sub = add nsw i32 %conv, -12
  %shl = shl nuw i32 1, %sub
  %cond = select i1 %cmp, i32 %shl, i32 0
  %index3 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %6 = ptrtoint ptr %index3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index3, align 4
  %i_size = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  %8 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %i_size, align 8
  %sub4 = add i64 %9, 4095
  %10 = lshr i64 %sub4, 12
  %conv5 = trunc i64 %10 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv5)
  %cmp6.not = icmp ult i32 %7, %conv5
  br i1 %cmp6.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !43
  %11 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %11, align 4
  %and.i.i.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %SetPageUptodate.exit, label %if.then.i.i.i, !prof !44

if.then.i.i.i:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !45
  unreachable

SetPageUptodate.exit:                             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 2, ptr noundef %page) #8
  tail call void @unlock_page(ptr noundef %page) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %cmp, label %if.then10, label %if.end.if.end22_crit_edge

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %sub11 = add i32 %cond, -1
  %and = and i32 %sub11, %7
  %neg = sub i32 0, %cond
  %and13 = and i32 %7, %neg
  %sub14 = sub i32 %conv5, %and13
  %14 = tail call i32 @llvm.smin.i32(i32 %cond, i32 %sub14)
  %sub21 = sub i32 %7, %and
  br label %if.end22

if.end22:                                         ; preds = %if.then10, %if.end.if.end22_crit_edge
  %pcount.0 = phi i32 [ %14, %if.then10 ], [ 1, %if.end.if.end22_crit_edge ]
  %full_page.0 = phi i32 [ %and, %if.then10 ], [ 0, %if.end.if.end22_crit_edge ]
  %index.0 = phi i32 [ %sub21, %if.then10 ], [ %7, %if.end.if.end22_crit_edge ]
  %15 = tail call i32 @llvm.umax.i32(i32 %cond, i32 1)
  %16 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %15, i32 4) #8
  %17 = extractvalue { i32, i1 } %16, 1
  br i1 %17, label %if.end22.if.then31_crit_edge, label %if.end7.i.i, !prof !46

if.end22.if.then31_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then31

if.end7.i.i:                                      ; preds = %if.end22
  %18 = extractvalue { i32, i1 } %16, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %18, i32 noundef 3520) #11
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.if.then31_crit_edge, label %if.end32

if.end7.i.i.if.then31_crit_edge:                  ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then31

if.then31:                                        ; preds = %if.end7.i.i.if.then31_crit_edge, %if.end22.if.then31_crit_edge
  tail call void @unlock_page(ptr noundef %page) #8
  br label %cleanup

if.end32:                                         ; preds = %if.end7.i.i
  %arrayidx33 = getelementptr ptr, ptr %call8.i.i, i32 %full_page.0
  %19 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %page, ptr %arrayidx33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pcount.0)
  %cmp34249 = icmp sgt i32 %pcount.0, 0
  br i1 %cmp34249, label %for.body.lr.ph, label %if.end32.for.end_crit_edge

if.end32.for.end_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end32
  %gfp_mask.i.i = getelementptr inbounds %struct.address_space, ptr %3, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %index.1252 = phi i32 [ %index.0, %for.body.lr.ph ], [ %inc49, %for.inc.for.body_crit_edge ]
  %i.0250 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0250, i32 %full_page.0)
  %cmp36.not = icmp eq i32 %i.0250, %full_page.0
  br i1 %cmp36.not, label %for.body.if.end41_crit_edge, label %if.then38

for.body.if.end41_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

if.then38:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %gfp_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %gfp_mask.i.i, align 4
  %call1.i = tail call ptr @pagecache_get_page(ptr noundef %3, i32 noundef %index.1252, i32 noundef 54, i32 noundef %21) #8
  %arrayidx40 = getelementptr ptr, ptr %call8.i.i, i32 %i.0250
  %22 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call1.i, ptr %arrayidx40, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then38, %for.body.if.end41_crit_edge
  %arrayidx42 = getelementptr ptr, ptr %call8.i.i, i32 %i.0250
  %23 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx42, align 4
  %tobool43.not = icmp eq ptr %24, null
  br i1 %tobool43.not, label %if.end41.for.inc_crit_edge, label %if.then44

if.end41.for.inc_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then44:                                        ; preds = %if.end41
  %25 = getelementptr inbounds %struct.page, ptr %24, i32 0, i32 1
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %25, align 4
  %and.i.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %do.body7.i, label %if.then.i, !prof !44

if.then.i:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef nonnull %24, ptr noundef nonnull @.str.2) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #8, !srcloc !47
  unreachable

do.body7.i:                                       ; preds = %if.then44
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %25, align 4
  %and.i31.i = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i)
  %tobool.not.i.i = icmp eq i32 %and.i31.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !44

if.then.i.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %29, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %24 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %30, %if.end.i.i ]
  %31 = inttoptr i32 %retval.0.i.i to ptr
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %33)
  %cmp.i.not.i = icmp eq i32 %33, -1
  %34 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %25, align 4
  %and.i32.i = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %tobool.not.i33.i = icmp eq i32 %and.i32.i, 0
  br i1 %cmp.i.not.i, label %if.then17.i, label %do.end24.i, !prof !46

if.then17.i:                                      ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i36.i, label %if.then.i35.i, !prof !44

if.then.i35.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i34.i = add i32 %35, -1
  br label %_compound_head.exit38.i

if.end.i36.i:                                     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %24 to i32
  br label %_compound_head.exit38.i

_compound_head.exit38.i:                          ; preds = %if.end.i36.i, %if.then.i35.i
  %retval.0.i37.i = phi i32 [ %sub.i34.i, %if.then.i35.i ], [ %36, %if.end.i36.i ]
  %37 = inttoptr i32 %retval.0.i37.i to ptr
  tail call void @dump_page(ptr noundef %37, ptr noundef nonnull @.str.3) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #8, !srcloc !48
  unreachable

do.end24.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i43.i, label %if.then.i42.i, !prof !44

if.then.i42.i:                                    ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i41.i = add i32 %35, -1
  br label %ClearPageError.exit

if.end.i43.i:                                     ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %24 to i32
  br label %ClearPageError.exit

ClearPageError.exit:                              ; preds = %if.end.i43.i, %if.then.i42.i
  %retval.0.i44.i = phi i32 [ %sub.i41.i, %if.then.i42.i ], [ %38, %if.end.i43.i ]
  %39 = inttoptr i32 %retval.0.i44.i to ptr
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %39) #8
  %40 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx42, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 44) #8
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 4
  %shr.i.i = lshr i32 %43, 30
  %44 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr.i.i, label %ClearPageError.exit.if.then.i175_crit_edge [
    i32 2, label %ClearPageError.exit.if.else.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

ClearPageError.exit.if.else.i_crit_edge:          ; preds = %ClearPageError.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

ClearPageError.exit.if.then.i175_crit_edge:       ; preds = %ClearPageError.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i175

is_highmem_idx.exit.i:                            ; preds = %ClearPageError.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %45 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %45)
  %cmp2.i.not.i = icmp eq i32 %45, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.else.i_crit_edge, label %is_highmem_idx.exit.i.if.then.i175_crit_edge

is_highmem_idx.exit.i.if.then.i175_crit_edge:     ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i175

is_highmem_idx.exit.i.if.else.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.then.i175:                                     ; preds = %is_highmem_idx.exit.i.if.then.i175_crit_edge, %ClearPageError.exit.if.then.i175_crit_edge
  %call5.i = tail call ptr @page_address(ptr noundef %41) #8
  br label %for.inc

if.else.i:                                        ; preds = %is_highmem_idx.exit.i.if.else.i_crit_edge, %ClearPageError.exit.if.else.i_crit_edge
  %call6.i = tail call ptr @kmap_high(ptr noundef %41) #8
  br label %for.inc

for.inc:                                          ; preds = %if.else.i, %if.then.i175, %if.end41.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0250, 1
  %inc49 = add i32 %index.1252, 1
  %exitcond.not = icmp eq i32 %inc, %pcount.0
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end32.for.end_crit_edge
  %i_format_parm.i = getelementptr i8, ptr %1, i32 -19
  %46 = ptrtoint ptr %i_format_parm.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %i_format_parm.i, align 1
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %48 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %i_sb.i, align 4
  %s_blocksize_bits.i = getelementptr inbounds %struct.super_block, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %s_blocksize_bits.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %s_blocksize_bits.i, align 4
  %conv5.i = zext i8 %51 to i32
  %52 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx33, align 4
  %tobool.not.i176 = icmp eq ptr %53, null
  br i1 %tobool.not.i176, label %do.body10.i, label %do.end15.i, !prof !46

do.body10.i:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/isofs/compress.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 217, 0\0A.popsection", ""() #8, !srcloc !49
  unreachable

do.end15.i:                                       ; preds = %for.end
  %54 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx, align 1
  %conv4.i = zext i8 %55 to i32
  %index.i.i = getelementptr inbounds %struct.page, ptr %53, i32 0, i32 1, i32 0, i32 2
  %56 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %index.i.i, align 4
  %conv.i.i = zext i32 %57 to i64
  %shl.i.i = shl nuw nsw i64 %conv.i.i, 12
  %add.i = add nuw nsw i64 %shl.i.i, 4096
  %58 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %i_size, align 8
  %60 = tail call i64 @llvm.smin.i64(i64 %add.i, i64 %59) #8
  %sh_prom.i = zext i8 %55 to i64
  %shr232.i = lshr i64 %shl.i.i, %sh_prom.i
  %shl19.i = shl nuw i32 1, %conv4.i
  %conv20.i = sext i32 %shl19.i to i64
  %add21.i = add nsw i64 %conv20.i, -1
  %sub.i = add i64 %add21.i, %60
  %shr23.i = ashr i64 %sub.i, %sh_prom.i
  %shl24.i = shl i32 %full_page.0, 12
  %conv25.i = sext i32 %shl24.i to i64
  %sub26.i = sub nsw i64 %shl.i.i, %conv25.i
  %shl28.i = shl i64 %shr232.i, %sh_prom.i
  %and.i = and i64 %shl28.i, -4096
  call void @__sanitizer_cov_trace_cmp8(i64 %sub26.i, i64 %and.i)
  %cmp29.not.i = icmp eq i64 %sub26.i, %and.i
  br i1 %cmp29.not.i, label %do.end15.i.if.end52.i_crit_edge, label %do.end46.i, !prof !44

do.end15.i.if.end52.i_crit_edge:                  ; preds = %do.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52.i

do.end46.i:                                       ; preds = %do.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 232, i32 noundef 9, ptr noundef null) #8
  br label %if.end52.i

if.end52.i:                                       ; preds = %do.end46.i, %do.end15.i.if.end52.i_crit_edge
  %conv60.i = zext i8 %47 to i64
  %add61.i = add nuw nsw i64 %shr232.i, %conv60.i
  %add61.tr.i = trunc i64 %add61.i to i32
  %conv63.i = shl i32 %add61.tr.i, 2
  %shr64.i = lshr i32 %conv63.i, %conv5.i
  %conv65.i = zext i32 %shr64.i to i64
  %call66.i = tail call ptr @isofs_bread(ptr noundef %1, i64 noundef %conv65.i) #8
  %tobool67.not.i = icmp eq ptr %call66.i, null
  br i1 %tobool67.not.i, label %if.end52.i.zisofs_fill_pages.exit_crit_edge, label %if.end69.i

if.end52.i.zisofs_fill_pages.exit_crit_edge:      ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %zisofs_fill_pages.exit

if.end69.i:                                       ; preds = %if.end52.i
  %notmask.i = shl nsw i32 -1, %conv5.i
  %sub70.i = xor i32 %notmask.i, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %shr232.i, i64 %shr23.i)
  %cmp73280.i = icmp ult i64 %shr232.i, %shr23.i
  %or.cond282.i = and i1 %cmp34249, %cmp73280.i
  br i1 %or.cond282.i, label %while.body.lr.ph.i, label %if.end69.i.zisofs_fill_pages.exit_crit_edge

if.end69.i.zisofs_fill_pages.exit_crit_edge:      ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %zisofs_fill_pages.exit

while.body.lr.ph.i:                               ; preds = %if.end69.i
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %call66.i, i32 0, i32 5
  %61 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %b_data.i, align 4
  %and71.i = and i32 %conv63.i, %sub70.i
  %add.ptr.i177 = getelementptr i8, ptr %62, i32 %and71.i
  %63 = ptrtoint ptr %add.ptr.i177 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %add.ptr.i177, align 4
  %65 = tail call i32 @llvm.bswap.i32(i32 %64) #8
  %conv72.i = zext i32 %65 to i64
  %workspace.i.i = getelementptr inbounds %struct.z_stream_s, ptr %stream.i.i, i32 0, i32 8
  %avail_out.i.i = getelementptr inbounds %struct.z_stream_s, ptr %stream.i.i, i32 0, i32 4
  %next_out.i.i = getelementptr inbounds %struct.z_stream_s, ptr %stream.i.i, i32 0, i32 3
  %avail_in.i.i = getelementptr inbounds %struct.z_stream_s, ptr %stream.i.i, i32 0, i32 1
  %i_ino.i.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 11
  %total_out.i.i = getelementptr inbounds %struct.z_stream_s, ptr %stream.i.i, i32 0, i32 5
  br label %while.body.i

while.body.i:                                     ; preds = %if.end118.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %full_page.addr.0302.i = phi i32 [ %full_page.0, %while.body.lr.ph.i ], [ %conv110231.i, %if.end118.i.while.body.i_crit_edge ]
  %bh.0301.i = phi ptr [ %call66.i, %while.body.lr.ph.i ], [ %bh.1.i, %if.end118.i.while.body.i_crit_edge ]
  %cstart_block.0300.i = phi i64 [ %shr232.i, %while.body.lr.ph.i ], [ %inc.i, %if.end118.i.while.body.i_crit_edge ]
  %poffset.0299.i = phi i64 [ 0, %while.body.lr.ph.i ], [ %and111.i, %if.end118.i.while.body.i_crit_edge ]
  %blockptr.0298.i = phi i32 [ %conv63.i, %while.body.lr.ph.i ], [ %add77.i, %if.end118.i.while.body.i_crit_edge ]
  %block_start.0297.i = phi i64 [ %conv72.i, %while.body.lr.ph.i ], [ %conv93.i, %if.end118.i.while.body.i_crit_edge ]
  %pages.addr.0290.i = phi ptr [ %call8.i.i, %while.body.lr.ph.i ], [ %add.ptr102.i, %if.end118.i.while.body.i_crit_edge ]
  %pcount.addr.0283.i = phi i32 [ %pcount.0, %while.body.lr.ph.i ], [ %conv106.i, %if.end118.i.while.body.i_crit_edge ]
  %add77.i = add i32 %blockptr.0298.i, 4
  %and79.i = and i32 %add77.i, %sub70.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79.i)
  %tobool80.not.i = icmp eq i32 %and79.i, 0
  br i1 %tobool80.not.i, label %if.then81.i, label %while.body.i.if.end88.i_crit_edge

while.body.i.if.end88.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end88.i

if.then81.i:                                      ; preds = %while.body.i
  %tobool.not.i.i178 = icmp eq ptr %bh.0301.i, null
  br i1 %tobool.not.i.i178, label %if.then81.i.brelse.exit.i_crit_edge, label %if.then.i.i179

if.then81.i.brelse.exit.i_crit_edge:              ; preds = %if.then81.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit.i

if.then.i.i179:                                   ; preds = %if.then81.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %bh.0301.i) #8
  br label %brelse.exit.i

brelse.exit.i:                                    ; preds = %if.then.i.i179, %if.then81.i.brelse.exit.i_crit_edge
  %shr82.i = lshr i32 %add77.i, %conv5.i
  %conv83.i = zext i32 %shr82.i to i64
  %call84.i = call ptr @isofs_bread(ptr noundef %1, i64 noundef %conv83.i) #8
  %tobool85.not.i = icmp eq ptr %call84.i, null
  br i1 %tobool85.not.i, label %brelse.exit.i.zisofs_fill_pages.exit_crit_edge, label %brelse.exit.i.if.end88.i_crit_edge

brelse.exit.i.if.end88.i_crit_edge:               ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end88.i

brelse.exit.i.zisofs_fill_pages.exit_crit_edge:   ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %zisofs_fill_pages.exit

if.end88.i:                                       ; preds = %brelse.exit.i.if.end88.i_crit_edge, %while.body.i.if.end88.i_crit_edge
  %bh.1.i = phi ptr [ %bh.0301.i, %while.body.i.if.end88.i_crit_edge ], [ %call84.i, %brelse.exit.i.if.end88.i_crit_edge ]
  %b_data89.i = getelementptr inbounds %struct.buffer_head, ptr %bh.1.i, i32 0, i32 5
  %66 = ptrtoint ptr %b_data89.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %b_data89.i, align 4
  %add.ptr92.i = getelementptr i8, ptr %67, i32 %and79.i
  %68 = ptrtoint ptr %add.ptr92.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %add.ptr92.i, align 4
  %70 = call i32 @llvm.bswap.i32(i32 %69) #8
  %conv93.i = zext i32 %70 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %block_start.0297.i, i64 %conv93.i)
  %cmp94.i = icmp ugt i64 %block_start.0297.i, %conv93.i
  br i1 %cmp94.i, label %if.then96.i, label %if.end97.i

if.then96.i:                                      ; preds = %if.end88.i
  %tobool.not.i202.i = icmp eq ptr %bh.1.i, null
  br i1 %tobool.not.i202.i, label %if.then96.i.zisofs_fill_pages.exit_crit_edge, label %if.then.i203.i

if.then96.i.zisofs_fill_pages.exit_crit_edge:     ; preds = %if.then96.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %zisofs_fill_pages.exit

if.then.i203.i:                                   ; preds = %if.then96.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %bh.1.i) #8
  br label %zisofs_fill_pages.exit

if.end97.i:                                       ; preds = %if.end88.i
  %conv98.i = trunc i64 %poffset.0299.i to i32
  %71 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx, align 1
  %conv.i205.i = zext i8 %72 to i32
  %73 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %i_sb.i, align 4
  %s_blocksize.i.i = getelementptr inbounds %struct.super_block, ptr %74, i32 0, i32 3
  %75 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %s_blocksize.i.i, align 16
  %s_blocksize_bits.i.i = getelementptr inbounds %struct.super_block, ptr %74, i32 0, i32 2
  %77 = ptrtoint ptr %s_blocksize_bits.i.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %s_blocksize_bits.i.i, align 4
  %sub.i.i180 = add i32 %76, -1
  %79 = trunc i64 %block_start.0297.i to i32
  %conv4.i.i = sub i32 %70, %79
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %stream.i.i) #8
  %80 = call ptr @memset(ptr %stream.i.i, i32 0, i32 48)
  %conv5.i.i = sext i32 %conv4.i.i to i64
  %conv6.i.i = zext i32 %sub.i.i180 to i64
  %and.i.i181 = and i64 %block_start.0297.i, %conv6.i.i
  %add.i.i = add nsw i64 %conv6.i.i, %conv5.i.i
  %add8.i.i = add nsw i64 %add.i.i, %and.i.i181
  %sh_prom.i.i = zext i8 %78 to i64
  %shr.i.i182 = ashr i64 %add8.i.i, %sh_prom.i.i
  %conv9.i.i = trunc i64 %shr.i.i182 to i32
  %shl.i206.i = shl nuw i32 1, %conv.i205.i
  %add.i.i.i = add nuw i32 %shl.i206.i, 7
  %shr.i.i.i = lshr i32 %add.i.i.i, 3
  %add2.i.i.i = add nuw i32 %shl.i206.i, 63
  %shr3.i.i.i = lshr i32 %add2.i.i.i, 6
  %add1.i.i.i = add nuw i32 %shl.i206.i, 11
  %add4.i.i.i = add i32 %add1.i.i.i, %shr.i.i.i
  %add5.i.i.i = add i32 %add4.i.i.i, %shr3.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add5.i.i.i, i32 %conv4.i.i)
  %cmp.i.i = icmp ult i32 %add5.i.i.i, %conv4.i.i
  br i1 %cmp.i.i, label %if.end97.i.zisofs_uncompress_block.exit.thread.i_crit_edge, label %if.end.i.i183

if.end97.i.zisofs_uncompress_block.exit.thread.i_crit_edge: ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %zisofs_uncompress_block.exit.thread.i

if.end.i.i183:                                    ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv4.i.i)
  %cmp12.i.i = icmp eq i32 %conv4.i.i, 0
  br i1 %cmp12.i.i, label %if.end.i.i183.for.body.i.i_crit_edge, label %if.end26.i.i

if.end.i.i183.for.body.i.i_crit_edge:             ; preds = %if.end.i.i183
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.i.i183.for.body.i.i_crit_edge
  %i.0336.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.i.i183.for.body.i.i_crit_edge ]
  %arrayidx17.i.i = getelementptr ptr, ptr %pages.addr.0290.i, i32 %i.0336.i.i
  %81 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx17.i.i, align 4
  %tobool.not.i208.i = icmp eq ptr %82, null
  br i1 %tobool.not.i208.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end19.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

if.end19.i.i:                                     ; preds = %for.body.i.i
  %call21.i.i = call ptr @page_address(ptr noundef nonnull %82) #8
  %83 = call ptr @memset(ptr %call21.i.i, i32 0, i32 4096)
  %84 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx17.i.i, align 4
  call void @flush_dcache_page(ptr noundef %85) #8
  %86 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx17.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !43
  %88 = getelementptr inbounds %struct.page, ptr %87, i32 0, i32 1
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %88, align 4
  %and.i.i.i.i.i.i = and i32 %90, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %SetPageUptodate.exit.i.i, label %if.then.i.i.i.i.i, !prof !44

if.then.i.i.i.i.i:                                ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @dump_page(ptr noundef %87, ptr noundef nonnull @.str) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !45
  unreachable

SetPageUptodate.exit.i.i:                         ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @_set_bit(i32 noundef 2, ptr noundef %87) #8
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %SetPageUptodate.exit.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.0336.i.i, 1
  %exitcond361.not.i.i = icmp eq i32 %inc.i.i, %pcount.addr.0283.i
  br i1 %exitcond361.not.i.i, label %zisofs_uncompress_block.exit.thread223.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

zisofs_uncompress_block.exit.thread223.i:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv24.i.i = sext i32 %pcount.addr.0283.i to i64
  %shl25.i.i = shl nsw i64 %conv24.i.i, 12
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %stream.i.i) #8
  %add100226.i = or i64 %shl25.i.i, %poffset.0299.i
  %conv110228.i = sub i32 %full_page.addr.0302.i, %pcount.addr.0283.i
  br label %if.end118.i

if.end26.i.i:                                     ; preds = %if.end.i.i183
  %add29.i.i = add i32 %conv9.i.i, 1
  %91 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add29.i.i, i32 4) #8
  %92 = extractvalue { i32, i1 } %91, 1
  br i1 %92, label %if.end26.i.i.zisofs_uncompress_block.exit.thread.i_crit_edge, label %if.end7.i.i.i.i, !prof !46

if.end26.i.i.zisofs_uncompress_block.exit.thread.i_crit_edge: ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %zisofs_uncompress_block.exit.thread.i

if.end7.i.i.i.i:                                  ; preds = %if.end26.i.i
  %93 = extractvalue { i32, i1 } %91, 0
  %call8.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %93, i32 noundef 3520) #11
  %tobool31.not.i.i = icmp eq ptr %call8.i.i.i.i, null
  br i1 %tobool31.not.i.i, label %if.end7.i.i.i.i.zisofs_uncompress_block.exit.thread.i_crit_edge, label %if.end33.i.i

if.end7.i.i.i.i.zisofs_uncompress_block.exit.thread.i_crit_edge: ; preds = %if.end7.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %zisofs_uncompress_block.exit.thread.i

if.end33.i.i:                                     ; preds = %if.end7.i.i.i.i
  %shr28.i.i = lshr i64 %block_start.0297.i, %sh_prom.i.i
  %call34.i.i = call i32 @isofs_get_blocks(ptr noundef %1, i64 noundef %shr28.i.i, ptr noundef nonnull %call8.i.i.i.i, i32 noundef %conv9.i.i) #8
  call void @ll_rw_block(i32 noundef 0, i32 noundef 0, i32 noundef %call34.i.i, ptr noundef nonnull %call8.i.i.i.i) #8
  %94 = ptrtoint ptr %call8.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %call8.i.i.i.i, align 128
  %tobool36.not.i.i = icmp eq ptr %95, null
  br i1 %tobool36.not.i.i, label %if.end33.i.i.b_eio.i.i_crit_edge, label %if.end38.i.i

if.end33.i.i.b_eio.i.i_crit_edge:                 ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %b_eio.i.i

if.end38.i.i:                                     ; preds = %if.end33.i.i
  call void @__might_sleep(ptr noundef nonnull @.str.11, i32 noundef 354) #8
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load volatile i32, ptr %95, align 4
  %98 = and i32 %97, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool.not.i.i.i185 = icmp eq i32 %98, 0
  br i1 %tobool.not.i.i.i185, label %if.end38.i.i.wait_on_buffer.exit.i.i_crit_edge, label %if.then.i.i.i186

if.end38.i.i.wait_on_buffer.exit.i.i_crit_edge:   ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wait_on_buffer.exit.i.i

if.then.i.i.i186:                                 ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__wait_on_buffer(ptr noundef nonnull %95) #8
  br label %wait_on_buffer.exit.i.i

wait_on_buffer.exit.i.i:                          ; preds = %if.then.i.i.i186, %if.end38.i.i.wait_on_buffer.exit.i.i_crit_edge
  %99 = ptrtoint ptr %call8.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %call8.i.i.i.i, align 128
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load volatile i32, ptr %100, align 4
  %and1.i.i.i.i = and i32 %102, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool42.not.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool42.not.i.i, label %wait_on_buffer.exit.i.i.b_eio.i.i_crit_edge, label %if.end44.i.i

wait_on_buffer.exit.i.i.b_eio.i.i_crit_edge:      ; preds = %wait_on_buffer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %b_eio.i.i

if.end44.i.i:                                     ; preds = %wait_on_buffer.exit.i.i
  %103 = load ptr, ptr @zisofs_zlib_workspace, align 4
  %104 = ptrtoint ptr %workspace.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %103, ptr %workspace.i.i, align 4
  call void @mutex_lock_nested(ptr noundef nonnull @zisofs_zlib_lock, i32 noundef 0) #8
  %call45.i.i = call i32 @zlib_inflateInit2(ptr noundef nonnull %stream.i.i, i32 noundef 15) #8
  %105 = zext i32 %call45.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %105, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %call45.i.i, label %if.else.i.i [
    i32 0, label %while.cond.preheader.i.i
    i32 -4, label %if.end44.i.i.do.end.i.i_crit_edge
  ]

if.end44.i.i.do.end.i.i_crit_edge:                ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i

while.cond.preheader.i.i:                         ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call34.i.i)
  %cmp57320.i.i = icmp slt i32 %call34.i.i, 1
  br i1 %cmp57320.i.i, label %while.cond.preheader.i.i.inflate_out.i.i_crit_edge, label %while.cond.preheader.i.i.while.body.i.i_crit_edge

while.cond.preheader.i.i.while.body.i.i_crit_edge: ; preds = %while.cond.preheader.i.i
  br label %while.body.i.i

while.cond.preheader.i.i.inflate_out.i.i_crit_edge: ; preds = %while.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %inflate_out.i.i

if.else.i.i:                                      ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.else.i.i, %if.end44.i.i.do.end.i.i_crit_edge
  %storemerge.i.i = phi i32 [ -5, %if.else.i.i ], [ -12, %if.end44.i.i.do.end.i.i_crit_edge ]
  %call53.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %call45.i.i) #12
  br label %z_eio.i.i

while.body.i.i:                                   ; preds = %if.end146.i.i.while.body.i.i_crit_edge, %while.cond.preheader.i.i.while.body.i.i_crit_edge
  %block_start.addr.0.off0332.i.i = phi i32 [ %block_start.addr.1.off0.i.i, %if.end146.i.i.while.body.i.i_crit_edge ], [ %79, %while.cond.preheader.i.i.while.body.i.i_crit_edge ]
  %poffset.addr.0331.i.i = phi i32 [ %poffset.addr.1.i.i, %if.end146.i.i.while.body.i.i_crit_edge ], [ %conv98.i, %while.cond.preheader.i.i.while.body.i.i_crit_edge ]
  %curpage.0328.i.i = phi i32 [ %curpage.1.i.i, %if.end146.i.i.while.body.i.i_crit_edge ], [ 0, %while.cond.preheader.i.i.while.body.i.i_crit_edge ]
  %curbh.0324.i.i = phi i32 [ %spec.select.i.i, %if.end146.i.i.while.body.i.i_crit_edge ], [ 0, %while.cond.preheader.i.i.while.body.i.i_crit_edge ]
  %zerr.0323.i.i = phi i32 [ %zerr.2278.i.i, %if.end146.i.i.while.body.i.i_crit_edge ], [ 0, %while.cond.preheader.i.i.while.body.i.i_crit_edge ]
  %block_size.0322.i.i = phi i32 [ %block_size.1.i.i, %if.end146.i.i.while.body.i.i_crit_edge ], [ %conv4.i.i, %while.cond.preheader.i.i.while.body.i.i_crit_edge ]
  %106 = ptrtoint ptr %avail_out.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %avail_out.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %tobool61.not.i.i = icmp eq i32 %107, 0
  br i1 %tobool61.not.i.i, label %if.then62.i.i, label %while.body.i.i.if.end74.i.i_crit_edge

while.body.i.i.if.end74.i.i_crit_edge:            ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74.i.i

if.then62.i.i:                                    ; preds = %while.body.i.i
  %arrayidx63.i.i = getelementptr ptr, ptr %pages.addr.0290.i, i32 %curpage.0328.i.i
  %108 = ptrtoint ptr %arrayidx63.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %arrayidx63.i.i, align 4
  %tobool64.not.i.i = icmp eq ptr %109, null
  br i1 %tobool64.not.i.i, label %if.else70.i.i, label %if.then65.i.i

if.then65.i.i:                                    ; preds = %if.then62.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call67.i.i = call ptr @page_address(ptr noundef nonnull %109) #8
  %add.ptr.i209.i = getelementptr i8, ptr %call67.i.i, i32 %poffset.addr.0331.i.i
  %110 = ptrtoint ptr %next_out.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %add.ptr.i209.i, ptr %next_out.i.i, align 4
  %sub68.i.i = sub i32 4096, %poffset.addr.0331.i.i
  br label %if.end74.sink.split.i.i

if.else70.i.i:                                    ; preds = %if.then62.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %111 = ptrtoint ptr %next_out.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr @zisofs_sink_page, ptr %next_out.i.i, align 4
  br label %if.end74.sink.split.i.i

if.end74.sink.split.i.i:                          ; preds = %if.else70.i.i, %if.then65.i.i
  %sub68.sink.i.i = phi i32 [ %sub68.i.i, %if.then65.i.i ], [ 4096, %if.else70.i.i ]
  %poffset.addr.1.ph.i.i = phi i32 [ 0, %if.then65.i.i ], [ %poffset.addr.0331.i.i, %if.else70.i.i ]
  %112 = ptrtoint ptr %avail_out.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %sub68.sink.i.i, ptr %avail_out.i.i, align 4
  br label %if.end74.i.i

if.end74.i.i:                                     ; preds = %if.end74.sink.split.i.i, %while.body.i.i.if.end74.i.i_crit_edge
  %poffset.addr.1.i.i = phi i32 [ %poffset.addr.0331.i.i, %while.body.i.i.if.end74.i.i_crit_edge ], [ %poffset.addr.1.ph.i.i, %if.end74.sink.split.i.i ]
  %113 = ptrtoint ptr %avail_in.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %avail_in.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %tobool75.not.i.i = icmp eq i32 %114, 0
  br i1 %tobool75.not.i.i, label %if.then76.i.i, label %if.end74.i.i.if.end98.i.i_crit_edge

if.end74.i.i.if.end98.i.i_crit_edge:              ; preds = %if.end74.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end98.i.i

if.then76.i.i:                                    ; preds = %if.end74.i.i
  %arrayidx77.i.i = getelementptr ptr, ptr %call8.i.i.i.i, i32 %curbh.0324.i.i
  %115 = ptrtoint ptr %arrayidx77.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %arrayidx77.i.i, align 4
  call void @__might_sleep(ptr noundef nonnull @.str.11, i32 noundef 354) #8
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load volatile i32, ptr %116, align 4
  %119 = and i32 %118, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %tobool.not.i265.i.i = icmp eq i32 %119, 0
  br i1 %tobool.not.i265.i.i, label %if.then76.i.i.wait_on_buffer.exit267.i.i_crit_edge, label %if.then.i266.i.i

if.then76.i.i.wait_on_buffer.exit267.i.i_crit_edge: ; preds = %if.then76.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wait_on_buffer.exit267.i.i

if.then.i266.i.i:                                 ; preds = %if.then76.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__wait_on_buffer(ptr noundef %116) #8
  br label %wait_on_buffer.exit267.i.i

wait_on_buffer.exit267.i.i:                       ; preds = %if.then.i266.i.i, %if.then76.i.i.wait_on_buffer.exit267.i.i_crit_edge
  %120 = ptrtoint ptr %arrayidx77.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %arrayidx77.i.i, align 4
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load volatile i32, ptr %121, align 4
  %and1.i.i259.i.i = and i32 %123, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i259.i.i)
  %tobool80.not.i.i = icmp eq i32 %and1.i.i259.i.i, 0
  br i1 %tobool80.not.i.i, label %wait_on_buffer.exit267.i.i.inflate_out.i.i_crit_edge, label %if.end82.i.i

wait_on_buffer.exit267.i.i.inflate_out.i.i_crit_edge: ; preds = %wait_on_buffer.exit267.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %inflate_out.i.i

if.end82.i.i:                                     ; preds = %wait_on_buffer.exit267.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %b_data.i.i = getelementptr inbounds %struct.buffer_head, ptr %121, i32 0, i32 5
  %124 = ptrtoint ptr %b_data.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %b_data.i.i, align 4
  %idx.ext.i.i = and i32 %block_start.addr.0.off0332.i.i, %sub.i.i180
  %add.ptr86.i.i = getelementptr i8, ptr %125, i32 %idx.ext.i.i
  %126 = ptrtoint ptr %stream.i.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %add.ptr86.i.i, ptr %stream.i.i, align 4
  %conv91.i.i = sub i32 %76, %idx.ext.i.i
  %127 = call i32 @llvm.umin.i32(i32 %conv91.i.i, i32 %block_size.0322.i.i) #8
  %128 = ptrtoint ptr %avail_in.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %127, ptr %avail_in.i.i, align 4
  %sub97.i.i = sub i32 %block_size.0322.i.i, %127
  br label %if.end98.i.i

if.end98.i.i:                                     ; preds = %if.end82.i.i, %if.end74.i.i.if.end98.i.i_crit_edge
  %block_size.1.i.i = phi i32 [ %block_size.0322.i.i, %if.end74.i.i.if.end98.i.i_crit_edge ], [ %sub97.i.i, %if.end82.i.i ]
  %block_start.addr.1.off0.i.i = phi i32 [ %block_start.addr.0.off0332.i.i, %if.end74.i.i.if.end98.i.i_crit_edge ], [ 0, %if.end82.i.i ]
  br label %while.cond99.i.i

while.cond99.i.i:                                 ; preds = %while.body106.i.i.while.cond99.i.i_crit_edge, %if.end98.i.i
  %zerr.1.i.i = phi i32 [ %zerr.0323.i.i, %if.end98.i.i ], [ %call107.i.i, %while.body106.i.i.while.cond99.i.i_crit_edge ]
  %129 = ptrtoint ptr %avail_out.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %avail_out.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %tobool101.not.i.i = icmp eq i32 %130, 0
  br i1 %tobool101.not.i.i, label %while.cond99.i.i.if.then138.i.i_crit_edge, label %land.rhs102.i.i

while.cond99.i.i.if.then138.i.i_crit_edge:        ; preds = %while.cond99.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then138.i.i

land.rhs102.i.i:                                  ; preds = %while.cond99.i.i
  %131 = ptrtoint ptr %avail_in.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %avail_in.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %tobool104.not.i.i = icmp eq i32 %132, 0
  br i1 %tobool104.not.i.i, label %land.rhs102.i.i.if.end146.i.i_crit_edge, label %while.body106.i.i

land.rhs102.i.i.if.end146.i.i_crit_edge:          ; preds = %land.rhs102.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end146.i.i

while.body106.i.i:                                ; preds = %land.rhs102.i.i
  %call107.i.i = call i32 @zlib_inflate(ptr noundef nonnull %stream.i.i, i32 noundef 3) #8
  %133 = zext i32 %call107.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %133, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %call107.i.i, label %while.body106.i.i.do.end129.i.i_crit_edge [
    i32 -5, label %land.lhs.true110.i.i
    i32 1, label %while.body106.i.i.while.end.i.i_crit_edge
    i32 0, label %while.body106.i.i.while.cond99.i.i_crit_edge
    i32 -4, label %while.body106.i.i.inflate_out.i.i_crit_edge
  ]

while.body106.i.i.inflate_out.i.i_crit_edge:      ; preds = %while.body106.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %inflate_out.i.i

while.body106.i.i.while.cond99.i.i_crit_edge:     ; preds = %while.body106.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond99.i.i

while.body106.i.i.while.end.i.i_crit_edge:        ; preds = %while.body106.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i

while.body106.i.i.do.end129.i.i_crit_edge:        ; preds = %while.body106.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end129.i.i

land.lhs.true110.i.i:                             ; preds = %while.body106.i.i
  %134 = ptrtoint ptr %avail_in.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %avail_in.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %cmp112.i.i = icmp eq i32 %135, 0
  br i1 %cmp112.i.i, label %land.lhs.true110.i.i.while.end.i.i_crit_edge, label %land.lhs.true110.i.i.do.end129.i.i_crit_edge

land.lhs.true110.i.i.do.end129.i.i_crit_edge:     ; preds = %land.lhs.true110.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end129.i.i

land.lhs.true110.i.i.while.end.i.i_crit_edge:     ; preds = %land.lhs.true110.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i

do.end129.i.i:                                    ; preds = %land.lhs.true110.i.i.do.end129.i.i_crit_edge, %while.body106.i.i.do.end129.i.i_crit_edge
  %136 = ptrtoint ptr %i_ino.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %i_ino.i.i, align 8
  %138 = ptrtoint ptr %avail_in.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %avail_in.i.i, align 4
  %140 = ptrtoint ptr %avail_out.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %avail_out.i.i, align 4
  %call133.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call107.i.i, i32 noundef %137, i32 noundef %curpage.0328.i.i, i32 noundef %curbh.0324.i.i, i32 noundef %139, i32 noundef %141) #12
  br label %inflate_out.i.i

while.end.i.i:                                    ; preds = %land.lhs.true110.i.i.while.end.i.i_crit_edge, %while.body106.i.i.while.end.i.i_crit_edge
  %142 = ptrtoint ptr %avail_out.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %.pr.i.i = load i32, ptr %avail_out.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i.i)
  %tobool137.not.i.i = icmp eq i32 %.pr.i.i, 0
  br i1 %tobool137.not.i.i, label %while.end.i.i.if.then138.i.i_crit_edge, label %while.end.i.i.if.end146.i.i_crit_edge

while.end.i.i.if.end146.i.i_crit_edge:            ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end146.i.i

while.end.i.i.if.then138.i.i_crit_edge:           ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then138.i.i

if.then138.i.i:                                   ; preds = %while.end.i.i.if.then138.i.i_crit_edge, %while.cond99.i.i.if.then138.i.i_crit_edge
  %zerr.2279.i.i = phi i32 [ %call107.i.i, %while.end.i.i.if.then138.i.i_crit_edge ], [ %zerr.1.i.i, %while.cond99.i.i.if.then138.i.i_crit_edge ]
  %arrayidx139.i.i = getelementptr ptr, ptr %pages.addr.0290.i, i32 %curpage.0328.i.i
  %143 = ptrtoint ptr %arrayidx139.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %arrayidx139.i.i, align 4
  %tobool140.not.i.i = icmp eq ptr %144, null
  br i1 %tobool140.not.i.i, label %if.then138.i.i.if.end144.i.i_crit_edge, label %if.then141.i.i

if.then138.i.i.if.end144.i.i_crit_edge:           ; preds = %if.then138.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end144.i.i

if.then141.i.i:                                   ; preds = %if.then138.i.i
  call void @flush_dcache_page(ptr noundef nonnull %144) #8
  %145 = ptrtoint ptr %arrayidx139.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %arrayidx139.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !43
  %147 = getelementptr inbounds %struct.page, ptr %146, i32 0, i32 1
  %148 = ptrtoint ptr %147 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load volatile i32, ptr %147, align 4
  %and.i.i.i.i260.i.i = and i32 %149, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i260.i.i)
  %tobool.not.i.i.i261.i.i = icmp eq i32 %and.i.i.i.i260.i.i, 0
  br i1 %tobool.not.i.i.i261.i.i, label %SetPageUptodate.exit263.i.i, label %if.then.i.i.i262.i.i, !prof !44

if.then.i.i.i262.i.i:                             ; preds = %if.then141.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @dump_page(ptr noundef %146, ptr noundef nonnull @.str) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !45
  unreachable

SetPageUptodate.exit263.i.i:                      ; preds = %if.then141.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @_set_bit(i32 noundef 2, ptr noundef %146) #8
  br label %if.end144.i.i

if.end144.i.i:                                    ; preds = %SetPageUptodate.exit263.i.i, %if.then138.i.i.if.end144.i.i_crit_edge
  %inc145.i.i = add i32 %curpage.0328.i.i, 1
  br label %if.end146.i.i

if.end146.i.i:                                    ; preds = %if.end144.i.i, %while.end.i.i.if.end146.i.i_crit_edge, %land.rhs102.i.i.if.end146.i.i_crit_edge
  %zerr.2278.i.i = phi i32 [ %call107.i.i, %while.end.i.i.if.end146.i.i_crit_edge ], [ %zerr.2279.i.i, %if.end144.i.i ], [ %zerr.1.i.i, %land.rhs102.i.i.if.end146.i.i_crit_edge ]
  %curpage.1.i.i = phi i32 [ %curpage.0328.i.i, %while.end.i.i.if.end146.i.i_crit_edge ], [ %inc145.i.i, %if.end144.i.i ], [ %curpage.0328.i.i, %land.rhs102.i.i.if.end146.i.i_crit_edge ]
  %150 = ptrtoint ptr %avail_in.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %avail_in.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %151)
  %tobool148.not.i.i = icmp eq i32 %151, 0
  %inc150.i.i = zext i1 %tobool148.not.i.i to i32
  %spec.select.i.i = add i32 %curbh.0324.i.i, %inc150.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %curpage.1.i.i, i32 %pcount.addr.0283.i)
  %cmp55.i.i = icmp sge i32 %curpage.1.i.i, %pcount.addr.0283.i
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.i.i, i32 %call34.i.i)
  %cmp57.i.i = icmp sge i32 %spec.select.i.i, %call34.i.i
  %or.cond.i.i = select i1 %cmp55.i.i, i1 true, i1 %cmp57.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %zerr.2278.i.i)
  %cmp59.not.i.i = icmp eq i32 %zerr.2278.i.i, 1
  %or.cond258.i.i = select i1 %or.cond.i.i, i1 true, i1 %cmp59.not.i.i
  br i1 %or.cond258.i.i, label %if.end146.i.i.inflate_out.i.i_crit_edge, label %if.end146.i.i.while.body.i.i_crit_edge

if.end146.i.i.while.body.i.i_crit_edge:           ; preds = %if.end146.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

if.end146.i.i.inflate_out.i.i_crit_edge:          ; preds = %if.end146.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %inflate_out.i.i

inflate_out.i.i:                                  ; preds = %if.end146.i.i.inflate_out.i.i_crit_edge, %do.end129.i.i, %while.body106.i.i.inflate_out.i.i_crit_edge, %wait_on_buffer.exit267.i.i.inflate_out.i.i_crit_edge, %while.cond.preheader.i.i.inflate_out.i.i_crit_edge
  %err.0.i = phi i32 [ 0, %while.cond.preheader.i.i.inflate_out.i.i_crit_edge ], [ -5, %do.end129.i.i ], [ -12, %while.body106.i.i.inflate_out.i.i_crit_edge ], [ 0, %if.end146.i.i.inflate_out.i.i_crit_edge ], [ -5, %wait_on_buffer.exit267.i.i.inflate_out.i.i_crit_edge ]
  %call153.i.i = call i32 @zlib_inflateEnd(ptr noundef nonnull %stream.i.i) #8
  br label %z_eio.i.i

z_eio.i.i:                                        ; preds = %inflate_out.i.i, %do.end.i.i
  %err.1.i = phi i32 [ %storemerge.i.i, %do.end.i.i ], [ %err.0.i, %inflate_out.i.i ]
  call void @mutex_unlock(ptr noundef nonnull @zisofs_zlib_lock) #8
  br label %b_eio.i.i

b_eio.i.i:                                        ; preds = %z_eio.i.i, %wait_on_buffer.exit.i.i.b_eio.i.i_crit_edge, %if.end33.i.i.b_eio.i.i_crit_edge
  %err.2.i = phi i32 [ 0, %if.end33.i.i.b_eio.i.i_crit_edge ], [ %err.1.i, %z_eio.i.i ], [ -5, %wait_on_buffer.exit.i.i.b_eio.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i.i)
  %cmp155333.i.i = icmp sgt i32 %call34.i.i, 0
  br i1 %cmp155333.i.i, label %b_eio.i.i.for.body157.i.i_crit_edge, label %b_eio.i.i.zisofs_uncompress_block.exit.i_crit_edge

b_eio.i.i.zisofs_uncompress_block.exit.i_crit_edge: ; preds = %b_eio.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %zisofs_uncompress_block.exit.i

b_eio.i.i.for.body157.i.i_crit_edge:              ; preds = %b_eio.i.i
  br label %for.body157.i.i

for.body157.i.i:                                  ; preds = %brelse.exit.i.i.for.body157.i.i_crit_edge, %b_eio.i.i.for.body157.i.i_crit_edge
  %i.1334.i.i = phi i32 [ %inc160.i.i, %brelse.exit.i.i.for.body157.i.i_crit_edge ], [ 0, %b_eio.i.i.for.body157.i.i_crit_edge ]
  %arrayidx158.i.i = getelementptr ptr, ptr %call8.i.i.i.i, i32 %i.1334.i.i
  %152 = ptrtoint ptr %arrayidx158.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %arrayidx158.i.i, align 4
  %tobool.not.i268.i.i = icmp eq ptr %153, null
  br i1 %tobool.not.i268.i.i, label %for.body157.i.i.brelse.exit.i.i_crit_edge, label %if.then.i269.i.i

for.body157.i.i.brelse.exit.i.i_crit_edge:        ; preds = %for.body157.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit.i.i

if.then.i269.i.i:                                 ; preds = %for.body157.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %153) #8
  br label %brelse.exit.i.i

brelse.exit.i.i:                                  ; preds = %if.then.i269.i.i, %for.body157.i.i.brelse.exit.i.i_crit_edge
  %inc160.i.i = add nuw nsw i32 %i.1334.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc160.i.i, %call34.i.i
  br i1 %exitcond.not.i.i, label %brelse.exit.i.i.zisofs_uncompress_block.exit.i_crit_edge, label %brelse.exit.i.i.for.body157.i.i_crit_edge

brelse.exit.i.i.for.body157.i.i_crit_edge:        ; preds = %brelse.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body157.i.i

brelse.exit.i.i.zisofs_uncompress_block.exit.i_crit_edge: ; preds = %brelse.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %zisofs_uncompress_block.exit.i

zisofs_uncompress_block.exit.thread.i:            ; preds = %if.end7.i.i.i.i.zisofs_uncompress_block.exit.thread.i_crit_edge, %if.end26.i.i.zisofs_uncompress_block.exit.thread.i_crit_edge, %if.end97.i.zisofs_uncompress_block.exit.thread.i_crit_edge
  %err.3.ph.i = phi i32 [ -12, %if.end26.i.i.zisofs_uncompress_block.exit.thread.i_crit_edge ], [ -12, %if.end7.i.i.i.i.zisofs_uncompress_block.exit.thread.i_crit_edge ], [ -5, %if.end97.i.zisofs_uncompress_block.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %stream.i.i) #8
  br label %if.then113.i

zisofs_uncompress_block.exit.i:                   ; preds = %brelse.exit.i.i.zisofs_uncompress_block.exit.i_crit_edge, %b_eio.i.i.zisofs_uncompress_block.exit.i_crit_edge
  call void @kfree(ptr noundef nonnull %call8.i.i.i.i) #8
  %154 = ptrtoint ptr %total_out.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %total_out.i.i, align 4
  %conv162.i.i = zext i32 %155 to i64
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %stream.i.i) #8
  %add100.i = add nuw nsw i64 %poffset.0299.i, %conv162.i.i
  %156 = lshr i64 %add100.i, 12
  %157 = trunc i64 %156 to i32
  %conv110.i = sub i32 %full_page.addr.0302.i, %157
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.2.i)
  %tobool112.not.i = icmp eq i32 %err.2.i, 0
  br i1 %tobool112.not.i, label %zisofs_uncompress_block.exit.i.if.end118.i_crit_edge, label %zisofs_uncompress_block.exit.i.if.then113.i_crit_edge

zisofs_uncompress_block.exit.i.if.then113.i_crit_edge: ; preds = %zisofs_uncompress_block.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then113.i

zisofs_uncompress_block.exit.i.if.end118.i_crit_edge: ; preds = %zisofs_uncompress_block.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end118.i

if.then113.i:                                     ; preds = %zisofs_uncompress_block.exit.i.if.then113.i_crit_edge, %zisofs_uncompress_block.exit.thread.i
  %conv110222.i = phi i32 [ %full_page.addr.0302.i, %zisofs_uncompress_block.exit.thread.i ], [ %conv110.i, %zisofs_uncompress_block.exit.i.if.then113.i_crit_edge ]
  %err.3221.i = phi i32 [ %err.3.ph.i, %zisofs_uncompress_block.exit.thread.i ], [ %err.2.i, %zisofs_uncompress_block.exit.i.if.then113.i_crit_edge ]
  %tobool.not.i210.i = icmp eq ptr %bh.1.i, null
  br i1 %tobool.not.i210.i, label %if.then113.i.brelse.exit213.i_crit_edge, label %if.then.i211.i

if.then113.i.brelse.exit213.i_crit_edge:          ; preds = %if.then113.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit213.i

if.then.i211.i:                                   ; preds = %if.then113.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %bh.1.i) #8
  br label %brelse.exit213.i

brelse.exit213.i:                                 ; preds = %if.then.i211.i, %if.then113.i.brelse.exit213.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv110222.i)
  %cmp114.i = icmp slt i32 %conv110222.i, 0
  %spec.select.i = select i1 %cmp114.i, i32 0, i32 %err.3221.i
  br label %zisofs_fill_pages.exit

if.end118.i:                                      ; preds = %zisofs_uncompress_block.exit.i.if.end118.i_crit_edge, %zisofs_uncompress_block.exit.thread223.i
  %conv110231.i = phi i32 [ %conv110228.i, %zisofs_uncompress_block.exit.thread223.i ], [ %conv110.i, %zisofs_uncompress_block.exit.i.if.end118.i_crit_edge ]
  %158 = phi i32 [ %pcount.addr.0283.i, %zisofs_uncompress_block.exit.thread223.i ], [ %157, %zisofs_uncompress_block.exit.i.if.end118.i_crit_edge ]
  %add100230.i = phi i64 [ %add100226.i, %zisofs_uncompress_block.exit.thread223.i ], [ %add100.i, %zisofs_uncompress_block.exit.i.if.end118.i_crit_edge ]
  %and111.i = and i64 %add100230.i, 4095
  %conv106.i = sub i32 %pcount.addr.0283.i, %158
  %add.ptr102.i = getelementptr ptr, ptr %pages.addr.0290.i, i32 %158
  %inc.i = add nuw i64 %cstart_block.0300.i, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %inc.i, i64 %shr23.i)
  %cmp73.i = icmp ult i64 %inc.i, %shr23.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv106.i)
  %cmp75.i = icmp sgt i32 %conv106.i, 0
  %or.cond.i = select i1 %cmp73.i, i1 %cmp75.i, i1 false
  br i1 %or.cond.i, label %if.end118.i.while.body.i_crit_edge, label %while.end.i

if.end118.i.while.body.i_crit_edge:               ; preds = %if.end118.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.end.i:                                      ; preds = %if.end118.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and111.i)
  %tobool119.not.i = icmp eq i64 %and111.i, 0
  br i1 %tobool119.not.i, label %while.end.i.zisofs_fill_pages.exit_crit_edge, label %land.lhs.true.i

while.end.i.zisofs_fill_pages.exit_crit_edge:     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %zisofs_fill_pages.exit

land.lhs.true.i:                                  ; preds = %while.end.i
  %159 = ptrtoint ptr %add.ptr102.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %add.ptr102.i, align 4
  %tobool120.not.i = icmp eq ptr %160, null
  br i1 %tobool120.not.i, label %land.lhs.true.i.zisofs_fill_pages.exit_crit_edge, label %if.then121.i

land.lhs.true.i.zisofs_fill_pages.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %zisofs_fill_pages.exit

if.then121.i:                                     ; preds = %land.lhs.true.i
  %call122.i = call ptr @page_address(ptr noundef nonnull %160) #8
  %idx.ext123.i = trunc i64 %and111.i to i32
  %add.ptr124.i = getelementptr i8, ptr %call122.i, i32 %idx.ext123.i
  %conv126.i = sub nuw nsw i32 4096, %idx.ext123.i
  %161 = call ptr @memset(ptr %add.ptr124.i, i32 0, i32 %conv126.i)
  %162 = ptrtoint ptr %add.ptr102.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %add.ptr102.i, align 4
  call void @flush_dcache_page(ptr noundef %163) #8
  %164 = ptrtoint ptr %add.ptr102.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %add.ptr102.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !43
  %166 = getelementptr inbounds %struct.page, ptr %165, i32 0, i32 1
  %167 = ptrtoint ptr %166 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load volatile i32, ptr %166, align 4
  %and.i.i.i.i.i = and i32 %168, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i187 = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i187, label %SetPageUptodate.exit.i, label %if.then.i.i.i.i, !prof !44

if.then.i.i.i.i:                                  ; preds = %if.then121.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @dump_page(ptr noundef %165, ptr noundef nonnull @.str) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !45
  unreachable

SetPageUptodate.exit.i:                           ; preds = %if.then121.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @_set_bit(i32 noundef 2, ptr noundef %165) #8
  br label %zisofs_fill_pages.exit

zisofs_fill_pages.exit:                           ; preds = %SetPageUptodate.exit.i, %land.lhs.true.i.zisofs_fill_pages.exit_crit_edge, %while.end.i.zisofs_fill_pages.exit_crit_edge, %brelse.exit213.i, %if.then.i203.i, %if.then96.i.zisofs_fill_pages.exit_crit_edge, %brelse.exit.i.zisofs_fill_pages.exit_crit_edge, %if.end69.i.zisofs_fill_pages.exit_crit_edge, %if.end52.i.zisofs_fill_pages.exit_crit_edge
  %retval.0.i = phi i32 [ -5, %if.end52.i.zisofs_fill_pages.exit_crit_edge ], [ 0, %SetPageUptodate.exit.i ], [ 0, %land.lhs.true.i.zisofs_fill_pages.exit_crit_edge ], [ 0, %while.end.i.zisofs_fill_pages.exit_crit_edge ], [ -5, %if.then96.i.zisofs_fill_pages.exit_crit_edge ], [ -5, %if.then.i203.i ], [ %spec.select.i, %brelse.exit213.i ], [ 0, %if.end69.i.zisofs_fill_pages.exit_crit_edge ], [ -5, %brelse.exit.i.zisofs_fill_pages.exit_crit_edge ]
  br i1 %cmp34249, label %for.body54.lr.ph, label %zisofs_fill_pages.exit.for.end75_crit_edge

zisofs_fill_pages.exit.for.end75_crit_edge:       ; preds = %zisofs_fill_pages.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end75

for.body54.lr.ph:                                 ; preds = %zisofs_fill_pages.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool61.not = icmp eq i32 %retval.0.i, 0
  br label %for.body54

for.body54:                                       ; preds = %for.inc73.for.body54_crit_edge, %for.body54.lr.ph
  %i.1255 = phi i32 [ 0, %for.body54.lr.ph ], [ %inc74, %for.inc73.for.body54_crit_edge ]
  %arrayidx55 = getelementptr ptr, ptr %call8.i.i, i32 %i.1255
  %169 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %arrayidx55, align 4
  %tobool56.not = icmp eq ptr %170, null
  br i1 %tobool56.not, label %for.body54.for.inc73_crit_edge, label %if.then57

for.body54.for.inc73_crit_edge:                   ; preds = %for.body54
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc73

if.then57:                                        ; preds = %for.body54
  call void @flush_dcache_page(ptr noundef nonnull %170) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1255, i32 %full_page.0)
  %cmp59 = icmp ne i32 %i.1255, %full_page.0
  %or.cond = select i1 %cmp59, i1 true, i1 %tobool61.not
  br i1 %or.cond, label %if.then57.if.end64_crit_edge, label %if.then62

if.then57.if.end64_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64

if.then62:                                        ; preds = %if.then57
  %171 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %arrayidx55, align 4
  %173 = getelementptr inbounds %struct.page, ptr %172, i32 0, i32 1
  %174 = ptrtoint ptr %173 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load volatile i32, ptr %173, align 4
  %and.i.i147 = and i32 %175, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i147)
  %tobool.not.i148 = icmp eq i32 %and.i.i147, 0
  br i1 %tobool.not.i148, label %do.body7.i152, label %if.then.i149, !prof !44

if.then.i149:                                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #10
  call void @dump_page(ptr noundef %172, ptr noundef nonnull @.str.2) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #8, !srcloc !50
  unreachable

do.body7.i152:                                    ; preds = %if.then62
  %176 = ptrtoint ptr %173 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load volatile i32, ptr %173, align 4
  %and.i31.i150 = and i32 %177, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i150)
  %tobool.not.i.i151 = icmp eq i32 %and.i31.i150, 0
  br i1 %tobool.not.i.i151, label %if.end.i.i155, label %if.then.i.i154, !prof !44

if.then.i.i154:                                   ; preds = %do.body7.i152
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i153 = add i32 %177, -1
  br label %_compound_head.exit.i160

if.end.i.i155:                                    ; preds = %do.body7.i152
  call void @__sanitizer_cov_trace_pc() #10
  %178 = ptrtoint ptr %172 to i32
  br label %_compound_head.exit.i160

_compound_head.exit.i160:                         ; preds = %if.end.i.i155, %if.then.i.i154
  %retval.0.i.i156 = phi i32 [ %sub.i.i153, %if.then.i.i154 ], [ %178, %if.end.i.i155 ]
  %179 = inttoptr i32 %retval.0.i.i156 to ptr
  %180 = ptrtoint ptr %179 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load volatile i32, ptr %179, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %181)
  %cmp.i.not.i157 = icmp eq i32 %181, -1
  %182 = ptrtoint ptr %173 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load volatile i32, ptr %173, align 4
  %and.i32.i158 = and i32 %183, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i158)
  %tobool.not.i33.i159 = icmp eq i32 %and.i32.i158, 0
  br i1 %cmp.i.not.i157, label %if.then17.i161, label %do.end24.i167, !prof !46

if.then17.i161:                                   ; preds = %_compound_head.exit.i160
  br i1 %tobool.not.i33.i159, label %if.end.i36.i164, label %if.then.i35.i163, !prof !44

if.then.i35.i163:                                 ; preds = %if.then17.i161
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i34.i162 = add i32 %183, -1
  br label %_compound_head.exit38.i166

if.end.i36.i164:                                  ; preds = %if.then17.i161
  call void @__sanitizer_cov_trace_pc() #10
  %184 = ptrtoint ptr %172 to i32
  br label %_compound_head.exit38.i166

_compound_head.exit38.i166:                       ; preds = %if.end.i36.i164, %if.then.i35.i163
  %retval.0.i37.i165 = phi i32 [ %sub.i34.i162, %if.then.i35.i163 ], [ %184, %if.end.i36.i164 ]
  %185 = inttoptr i32 %retval.0.i37.i165 to ptr
  call void @dump_page(ptr noundef %185, ptr noundef nonnull @.str.3) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #8, !srcloc !51
  unreachable

do.end24.i167:                                    ; preds = %_compound_head.exit.i160
  br i1 %tobool.not.i33.i159, label %if.end.i43.i170, label %if.then.i42.i169, !prof !44

if.then.i42.i169:                                 ; preds = %do.end24.i167
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i41.i168 = add i32 %183, -1
  br label %SetPageError.exit

if.end.i43.i170:                                  ; preds = %do.end24.i167
  call void @__sanitizer_cov_trace_pc() #10
  %186 = ptrtoint ptr %172 to i32
  br label %SetPageError.exit

SetPageError.exit:                                ; preds = %if.end.i43.i170, %if.then.i42.i169
  %retval.0.i44.i171 = phi i32 [ %sub.i41.i168, %if.then.i42.i169 ], [ %186, %if.end.i43.i170 ]
  %187 = inttoptr i32 %retval.0.i44.i171 to ptr
  call void @_set_bit(i32 noundef 8, ptr noundef %187) #8
  br label %if.end64

if.end64:                                         ; preds = %SetPageError.exit, %if.then57.if.end64_crit_edge
  %188 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %arrayidx55, align 4
  call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 55) #8
  %190 = ptrtoint ptr %189 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %189, align 4
  %shr.i.i188 = lshr i32 %191, 30
  %192 = zext i32 %shr.i.i188 to i64
  call void @__sanitizer_cov_trace_switch(i64 %192, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %shr.i.i188, label %if.end64.kunmap.exit_crit_edge [
    i32 2, label %if.end64.if.end.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i190
  ]

if.end64.if.end.i_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end64.kunmap.exit_crit_edge:                   ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %kunmap.exit

is_highmem_idx.exit.i190:                         ; preds = %if.end64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %193 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %193)
  %cmp2.i.not.i189 = icmp eq i32 %193, 2
  br i1 %cmp2.i.not.i189, label %is_highmem_idx.exit.i190.if.end.i_crit_edge, label %is_highmem_idx.exit.i190.kunmap.exit_crit_edge

is_highmem_idx.exit.i190.kunmap.exit_crit_edge:   ; preds = %is_highmem_idx.exit.i190
  call void @__sanitizer_cov_trace_pc() #10
  br label %kunmap.exit

is_highmem_idx.exit.i190.if.end.i_crit_edge:      ; preds = %is_highmem_idx.exit.i190
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end.i:                                         ; preds = %is_highmem_idx.exit.i190.if.end.i_crit_edge, %if.end64.if.end.i_crit_edge
  call void @kunmap_high(ptr noundef %189) #8
  br label %kunmap.exit

kunmap.exit:                                      ; preds = %if.end.i, %is_highmem_idx.exit.i190.kunmap.exit_crit_edge, %if.end64.kunmap.exit_crit_edge
  %194 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %arrayidx55, align 4
  call void @unlock_page(ptr noundef %195) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1255, i32 %full_page.0)
  %cmp67.not = icmp eq i32 %i.1255, %full_page.0
  br i1 %cmp67.not, label %kunmap.exit.for.inc73_crit_edge, label %if.then69

kunmap.exit.for.inc73_crit_edge:                  ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc73

if.then69:                                        ; preds = %kunmap.exit
  %196 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %arrayidx55, align 4
  %198 = getelementptr inbounds %struct.page, ptr %197, i32 0, i32 1
  %199 = ptrtoint ptr %198 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load volatile i32, ptr %198, align 4
  %and.i.i191 = and i32 %200, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i191)
  %tobool.not.i.i192 = icmp eq i32 %and.i.i191, 0
  br i1 %tobool.not.i.i192, label %if.end.i.i195, label %if.then.i.i194, !prof !44

if.then.i.i194:                                   ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i193 = add i32 %200, -1
  br label %_compound_head.exit.i198

if.end.i.i195:                                    ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #10
  %201 = ptrtoint ptr %197 to i32
  br label %_compound_head.exit.i198

_compound_head.exit.i198:                         ; preds = %if.end.i.i195, %if.then.i.i194
  %retval.0.i.i196 = phi i32 [ %sub.i.i193, %if.then.i.i194 ], [ %201, %if.end.i.i195 ]
  %202 = inttoptr i32 %retval.0.i.i196 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %202, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  %203 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %204)
  %cmp.i.i.i.i197 = icmp eq i32 %204, 0
  br i1 %cmp.i.i.i.i197, label %if.then.i.i.i.i199, label %do.end5.i.i.i.i, !prof !46

if.then.i.i.i.i199:                               ; preds = %_compound_head.exit.i198
  call void @__sanitizer_cov_trace_pc() #10
  %205 = inttoptr i32 %retval.0.i.i196 to ptr
  call void @dump_page(ptr noundef %205, ptr noundef nonnull @.str.14) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #8, !srcloc !52
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i198
  %call.i.i.i10.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !53
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #8
  %206 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #8, !srcloc !54
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %206, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@zisofs_readpage, %if.then.i.i.i.i.i200)) #8
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i200], !srcloc !56

if.then.i.i.i.i.i200:                             ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %202, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #8
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i200, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.for.inc73_crit_edge

folio_put_testzero.exit.i.i.for.inc73_crit_edge:  ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc73

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__put_page(ptr noundef %202) #8
  br label %for.inc73

for.inc73:                                        ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.for.inc73_crit_edge, %kunmap.exit.for.inc73_crit_edge, %for.body54.for.inc73_crit_edge
  %inc74 = add nuw nsw i32 %i.1255, 1
  %exitcond299.not = icmp eq i32 %inc74, %pcount.0
  br i1 %exitcond299.not, label %for.inc73.for.end75_crit_edge, label %for.inc73.for.body54_crit_edge

for.inc73.for.body54_crit_edge:                   ; preds = %for.inc73
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body54

for.inc73.for.end75_crit_edge:                    ; preds = %for.inc73
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end75

for.end75:                                        ; preds = %for.inc73.for.end75_crit_edge, %zisofs_fill_pages.exit.for.end75_crit_edge
  call void @kfree(ptr noundef nonnull %call8.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end75, %if.then31, %SetPageUptodate.exit
  %retval.0 = phi i32 [ 0, %SetPageUptodate.exit ], [ %retval.0.i, %for.end75 ], [ -12, %if.then31 ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zisofs_init() local_unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @zlib_inflate_workspacesize() #8
  %call1 = tail call noalias ptr @vmalloc(i32 noundef %call) #11
  store ptr %call1, ptr @zisofs_zlib_workspace, align 4
  %tobool.not = icmp eq ptr %call1, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_inflate_workspacesize() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @zisofs_cleanup() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @zisofs_zlib_workspace, align 4
  tail call void @vfree(ptr noundef %0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pagecache_get_page(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @isofs_bread(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @isofs_get_blocks(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ll_rw_block(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_inflateInit2(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_inflate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_inflateEnd(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wait_on_buffer(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_high(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !18, !19, !20, !22, !23, !24, !26, !28, !29, !30, !32}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @zisofs_aops, !1, !"zisofs_aops", i1 false, i1 false}
!1 = !{!"../fs/isofs/compress.c", i32 371, i32 39}
!2 = !{ptr @zisofs_zlib_workspace, !3, !"zisofs_zlib_workspace", i1 false, i1 false}
!3 = !{!"../fs/isofs/compress.c", i32 32, i32 14}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!6 = distinct !{null, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../include/linux/page-flags.h", i32 416, i32 1}
!10 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"./../include/linux/highmem-internal.h", i32 44, i32 2}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/isofs/compress.c", i32 231, i32 2}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/isofs/compress.c", i32 114, i32 3}
!17 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @zisofs_uncompress_block._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @zisofs_uncompress_block._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/isofs/compress.c", i32 158, i32 6}
!22 = !{ptr @zisofs_uncompress_block._entry.8, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @zisofs_uncompress_block._entry_ptr.10, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../include/linux/buffer_head.h", i32 354, i32 2}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/isofs/compress.c", i32 33, i32 8}
!28 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @zisofs_zlib_lock, !27, !"zisofs_zlib_lock", i1 false, i1 false}
!30 = !{ptr @zisofs_sink_page, !31, !"zisofs_sink_page", i1 false, i1 false}
!31 = !{!"../fs/isofs/compress.c", i32 26, i32 13}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../include/linux/mm.h", i32 717, i32 2}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!43 = !{i64 2150925196}
!44 = !{!"branch_weights", i32 2000, i32 1}
!45 = !{i64 2150170172, i64 2150170663, i64 2150170209, i64 2150170265, i64 2150170299, i64 2150170323, i64 2150170364, i64 2150170385, i64 2150170413, i64 2150170447}
!46 = !{!"branch_weights", i32 1, i32 2000}
!47 = !{i64 2150244625, i64 2150244798, i64 2150244813, i64 2150244865, i64 2150244924, i64 2150244948, i64 2150244989, i64 2150245010, i64 2150245038, i64 2150245070}
!48 = !{i64 2150245500, i64 2150245673, i64 2150245688, i64 2150245740, i64 2150245799, i64 2150245823, i64 2150245864, i64 2150245885, i64 2150245913, i64 2150245945}
!49 = !{i64 2154324663, i64 2154325147, i64 2154324700, i64 2154324756, i64 2154324790, i64 2154324814, i64 2154324855, i64 2154324876, i64 2154324904, i64 2154324938}
!50 = !{i64 2150235823, i64 2150235996, i64 2150236011, i64 2150236063, i64 2150236122, i64 2150236146, i64 2150236187, i64 2150236208, i64 2150236236, i64 2150236268}
!51 = !{i64 2150236698, i64 2150236871, i64 2150236886, i64 2150236938, i64 2150236997, i64 2150237021, i64 2150237062, i64 2150237083, i64 2150237111, i64 2150237143}
!52 = !{i64 2153400560, i64 2153401043, i64 2153400597, i64 2153400653, i64 2153400687, i64 2153400711, i64 2153400752, i64 2153400773, i64 2153400801, i64 2153400835}
!53 = !{i64 2148436693}
!54 = !{i64 2148351402, i64 2148351434, i64 2148351463, i64 2148351497, i64 2148351528, i64 2148351551}
!55 = !{i64 2148436922}
!56 = !{i64 2148961594, i64 2148961599, i64 2148961612, i64 2148961656, i64 2148961690, i64 2148961711}
