; ModuleID = '/llk/IR_all_yes/fs/jffs2/read.c_pt.bc'
source_filename = "../fs/jffs2/read.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.jffs2_raw_node_ref = type { ptr, i32 }
%struct.jffs2_raw_inode = type { %struct.jint16_t, %struct.jint16_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, %struct.jmode_t, %struct.jint16_t, %struct.jint16_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, i8, i8, %struct.jint16_t, %struct.jint32_t, %struct.jint32_t, [0 x i8] }
%struct.jmode_t = type { i32 }
%struct.jint16_t = type { i16 }
%struct.jint32_t = type { i32 }
%struct.jffs2_inode_info = type { %struct.mutex, i32, %struct.rb_root, ptr, ptr, ptr, ptr, i16, i8, %struct.inode }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rb_root = type { ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.79, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.80, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.81, ptr, %struct.address_space, %struct.list_head, %union.anon.82, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.79 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.80 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.81 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.82 = type { ptr }
%struct.jffs2_node_frag = type { %struct.rb_node, ptr, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.jffs2_full_dnode = type { ptr, i32, i32, i32 }

@jffs2_read_dnode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 42, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014jffs2: Error reading node from 0x%08x: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"jffs2_read_dnode\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/jffs2/read.c\00", [16 x i8] zeroinitializer }, align 32
@jffs2_read_dnode._entry_ptr = internal global ptr @jffs2_read_dnode._entry, section ".printk_index", align 4
@jffs2_read_dnode._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 48, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\014jffs2: Short read from 0x%08x: wanted 0x%zx bytes, got 0x%zx\0A\00", [32 x i8] zeroinitializer }, align 32
@jffs2_read_dnode._entry_ptr.5 = internal global ptr @jffs2_read_dnode._entry.3, section ".printk_index", align 4
@jffs2_read_dnode._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 59, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\014jffs2: Node CRC %08x != calculated CRC %08x for node at %08x\0A\00", [32 x i8] zeroinitializer }, align 32
@jffs2_read_dnode._entry_ptr.8 = internal global ptr @jffs2_read_dnode._entry.6, section ".printk_index", align 4
@jffs2_read_dnode._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 126, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\014jffs2: Data CRC %08x != calculated CRC %08x for node at %08x\0A\00", [32 x i8] zeroinitializer }, align 32
@jffs2_read_dnode._entry_ptr.11 = internal global ptr @jffs2_read_dnode._entry.9, section ".printk_index", align 4
@jffs2_read_dnode._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 137, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014jffs2: Error: jffs2_decompress returned %d\0A\00", [50 x i8] zeroinitializer }, align 32
@jffs2_read_dnode._entry_ptr.14 = internal global ptr @jffs2_read_dnode._entry.12, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 41, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 47, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 58, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 125, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.48 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.49 = private constant [19 x i8] c"../fs/jffs2/read.c\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 137, i32 4 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @jffs2_read_dnode._entry, ptr @jffs2_read_dnode._entry.12, ptr @jffs2_read_dnode._entry.3, ptr @jffs2_read_dnode._entry.6, ptr @jffs2_read_dnode._entry.9, ptr @jffs2_read_dnode._entry_ptr, ptr @jffs2_read_dnode._entry_ptr.11, ptr @jffs2_read_dnode._entry_ptr.14, ptr @jffs2_read_dnode._entry_ptr.5, ptr @jffs2_read_dnode._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_read_dnode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_read_dnode._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_read_dnode._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_read_dnode._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_read_dnode._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jffs2_read_dnode(ptr noundef %c, ptr noundef %f, ptr nocapture noundef readonly %fd, ptr noundef %buf, i32 noundef %ofs, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %readlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %readlen) #7
  %0 = ptrtoint ptr %readlen to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %readlen, align 4, !annotation !31
  %call = tail call ptr @jffs2_alloc_raw_inode() #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %fd to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fd, align 4
  %flash_offset = getelementptr inbounds %struct.jffs2_raw_node_ref, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %flash_offset to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flash_offset, align 4
  %and = and i32 %4, -4
  %conv = zext i32 %and to i64
  %call1 = call i32 @jffs2_flash_read(ptr noundef %c, i64 noundef %conv, i32 noundef 68, ptr noundef nonnull %readlen, ptr noundef nonnull %call) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end8, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @jffs2_free_raw_inode(ptr noundef nonnull %call) #7
  %5 = ptrtoint ptr %fd to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fd, align 4
  %flash_offset5 = getelementptr inbounds %struct.jffs2_raw_node_ref, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %flash_offset5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flash_offset5, align 4
  %and6 = and i32 %8, -4
  %call7 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %and6, i32 noundef %call1) #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %9 = ptrtoint ptr %readlen to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %readlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 68, i32 %10)
  %cmp.not = icmp eq i32 %10, 68
  br i1 %cmp.not, label %if.end19, label %if.then10

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  call void @jffs2_free_raw_inode(ptr noundef nonnull %call) #7
  %11 = ptrtoint ptr %fd to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fd, align 4
  %flash_offset16 = getelementptr inbounds %struct.jffs2_raw_node_ref, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %flash_offset16 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flash_offset16, align 4
  %and17 = and i32 %14, -4
  %15 = ptrtoint ptr %readlen to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %readlen, align 4
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %and17, i32 noundef 68, i32 noundef %16) #10
  br label %cleanup

if.end19:                                         ; preds = %if.end8
  %call20 = call i32 @crc32_le(i32 noundef 0, ptr noundef nonnull %call, i32 noundef 60) #11
  %node_crc = getelementptr inbounds %struct.jffs2_raw_inode, ptr %call, i32 0, i32 20
  %17 = ptrtoint ptr %node_crc to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %node_crc, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %call20, i32 %18)
  %cmp24.not = icmp eq i32 %call20, %18
  br i1 %cmp24.not, label %if.end37, label %do.end29

do.end29:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %fd to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fd, align 4
  %flash_offset34 = getelementptr inbounds %struct.jffs2_raw_node_ref, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %flash_offset34 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flash_offset34, align 4
  %and35 = and i32 %22, -4
  %call36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %18, i32 noundef %call20, i32 noundef %and35) #10
  br label %out_ri

if.end37:                                         ; preds = %if.end19
  %compr = getelementptr inbounds %struct.jffs2_raw_inode, ptr %call, i32 0, i32 16
  %23 = ptrtoint ptr %compr to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %compr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %24)
  %cmp39 = icmp eq i8 %24, 1
  br i1 %cmp39, label %land.lhs.true, label %if.end37.if.end51_crit_edge

if.end37.if.end51_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

land.lhs.true:                                    ; preds = %if.end37
  %dsize = getelementptr inbounds %struct.jffs2_raw_inode, ptr %call, i32 0, i32 15
  %25 = ptrtoint ptr %dsize to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %dsize, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool42.not = icmp eq i32 %26, 0
  br i1 %tobool42.not, label %land.lhs.true43, label %land.lhs.true.if.end51thread-pre-split_crit_edge

land.lhs.true.if.end51thread-pre-split_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51thread-pre-split

land.lhs.true43:                                  ; preds = %land.lhs.true
  %csize = getelementptr inbounds %struct.jffs2_raw_inode, ptr %call, i32 0, i32 14
  %27 = ptrtoint ptr %csize to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %csize, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool45.not = icmp eq i32 %28, 0
  br i1 %tobool45.not, label %land.lhs.true43.if.end51thread-pre-split_crit_edge, label %if.then46

land.lhs.true43.if.end51thread-pre-split_crit_edge: ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51thread-pre-split

if.then46:                                        ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %dsize to i32
  call void @__asan_storeN_noabort(i32 %29, i32 4)
  store i32 %28, ptr %dsize, align 1
  %30 = ptrtoint ptr %csize to i32
  call void @__asan_storeN_noabort(i32 %30, i32 4)
  store i32 0, ptr %csize, align 1
  br label %if.end51thread-pre-split

if.end51thread-pre-split:                         ; preds = %if.then46, %land.lhs.true43.if.end51thread-pre-split_crit_edge, %land.lhs.true.if.end51thread-pre-split_crit_edge
  %31 = ptrtoint ptr %compr to i32
  call void @__asan_load1_noabort(i32 %31)
  %.pr = load i8, ptr %compr, align 1
  br label %if.end51

if.end51:                                         ; preds = %if.end51thread-pre-split, %if.end37.if.end51_crit_edge
  %32 = phi i8 [ %.pr, %if.end51thread-pre-split ], [ %24, %if.end37.if.end51_crit_edge ]
  %33 = zext i8 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values)
  switch i8 %32, label %if.end51.if.end8.i_crit_edge [
    i8 1, label %if.then56
    i8 0, label %land.lhs.true62
  ]

if.end51.if.end8.i_crit_edge:                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i

if.then56:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  %34 = call ptr @memset(ptr %buf, i32 0, i32 %len)
  br label %out_ri

land.lhs.true62:                                  ; preds = %if.end51
  %dsize63 = getelementptr inbounds %struct.jffs2_raw_inode, ptr %call, i32 0, i32 15
  %35 = ptrtoint ptr %dsize63 to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %dsize63, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %len)
  %cmp65 = icmp eq i32 %36, %len
  br i1 %cmp65, label %land.lhs.true62.if.end74_crit_edge, label %land.lhs.true62.if.end8.i_crit_edge

land.lhs.true62.if.end8.i_crit_edge:              ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i

land.lhs.true62.if.end74_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74

if.end8.i:                                        ; preds = %land.lhs.true62.if.end8.i_crit_edge, %if.end51.if.end8.i_crit_edge
  %csize68 = getelementptr inbounds %struct.jffs2_raw_inode, ptr %call, i32 0, i32 14
  %37 = ptrtoint ptr %csize68 to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load i32, ptr %csize68, align 1
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %38, i32 noundef 3264) #12
  %tobool71.not = icmp eq ptr %call9.i, null
  br i1 %tobool71.not, label %if.end8.i.out_ri_crit_edge, label %if.end8.i.if.end74_crit_edge

if.end8.i.if.end74_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74

if.end8.i.out_ri_crit_edge:                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_ri

if.end74:                                         ; preds = %if.end8.i.if.end74_crit_edge, %land.lhs.true62.if.end74_crit_edge
  %readbuf.0 = phi ptr [ %call9.i, %if.end8.i.if.end74_crit_edge ], [ %buf, %land.lhs.true62.if.end74_crit_edge ]
  %39 = ptrtoint ptr %compr to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %compr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %cmp77.not = icmp eq i8 %40, 0
  br i1 %cmp77.not, label %if.end74.do.end97_crit_edge, label %if.then79

if.end74.do.end97_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end97

if.then79:                                        ; preds = %if.end74
  %dsize80 = getelementptr inbounds %struct.jffs2_raw_inode, ptr %call, i32 0, i32 15
  %41 = ptrtoint ptr %dsize80 to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %42 = load i32, ptr %dsize80, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %len)
  %cmp82 = icmp ugt i32 %42, %len
  br i1 %cmp82, label %if.end8.i282, label %if.then79.do.end97_crit_edge

if.then79.do.end97_crit_edge:                     ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end97

if.end8.i282:                                     ; preds = %if.then79
  %call9.i281 = call noalias align 128 ptr @__kmalloc(i32 noundef %42, i32 noundef 3264) #12
  %tobool88.not = icmp eq ptr %call9.i281, null
  br i1 %tobool88.not, label %if.end8.i282.out_readbuf_crit_edge, label %if.end8.i282.do.end97_crit_edge

if.end8.i282.do.end97_crit_edge:                  ; preds = %if.end8.i282
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end97

if.end8.i282.out_readbuf_crit_edge:               ; preds = %if.end8.i282
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_readbuf

do.end97:                                         ; preds = %if.end8.i282.do.end97_crit_edge, %if.then79.do.end97_crit_edge, %if.end74.do.end97_crit_edge
  %decomprbuf.0 = phi ptr [ %call9.i281, %if.end8.i282.do.end97_crit_edge ], [ %buf, %if.then79.do.end97_crit_edge ], [ %readbuf.0, %if.end74.do.end97_crit_edge ]
  %43 = ptrtoint ptr %fd to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %fd, align 4
  %flash_offset99 = getelementptr inbounds %struct.jffs2_raw_node_ref, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %flash_offset99 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %flash_offset99, align 4
  %47 = add i32 %46, 68
  %add = and i32 %47, -4
  %conv101 = zext i32 %add to i64
  %csize102 = getelementptr inbounds %struct.jffs2_raw_inode, ptr %call, i32 0, i32 14
  %48 = ptrtoint ptr %csize102 to i32
  call void @__asan_loadN_noabort(i32 %48, i32 4)
  %49 = load i32, ptr %csize102, align 1
  %call104 = call i32 @jffs2_flash_read(ptr noundef %c, i64 noundef %conv101, i32 noundef %49, ptr noundef nonnull %readlen, ptr noundef %readbuf.0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %land.lhs.true106, label %do.end97.out_decomprbuf_crit_edge

do.end97.out_decomprbuf_crit_edge:                ; preds = %do.end97
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_decomprbuf

land.lhs.true106:                                 ; preds = %do.end97
  %50 = ptrtoint ptr %readlen to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %readlen, align 4
  %52 = ptrtoint ptr %csize102 to i32
  call void @__asan_loadN_noabort(i32 %52, i32 4)
  %53 = load i32, ptr %csize102, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %53)
  %cmp109.not = icmp eq i32 %51, %53
  br i1 %cmp109.not, label %if.end115, label %land.lhs.true106.out_decomprbuf_crit_edge

land.lhs.true106.out_decomprbuf_crit_edge:        ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_decomprbuf

if.end115:                                        ; preds = %land.lhs.true106
  %54 = ptrtoint ptr %csize102 to i32
  call void @__asan_loadN_noabort(i32 %54, i32 4)
  %55 = load i32, ptr %csize102, align 1
  %call118 = call i32 @crc32_le(i32 noundef 0, ptr noundef %readbuf.0, i32 noundef %55) #11
  %data_crc = getelementptr inbounds %struct.jffs2_raw_inode, ptr %call, i32 0, i32 19
  %56 = ptrtoint ptr %data_crc to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %57 = load i32, ptr %data_crc, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %call118, i32 %57)
  %cmp120.not = icmp eq i32 %call118, %57
  br i1 %cmp120.not, label %do.end136, label %do.end125

do.end125:                                        ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #9
  %58 = ptrtoint ptr %fd to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %fd, align 4
  %flash_offset130 = getelementptr inbounds %struct.jffs2_raw_node_ref, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %flash_offset130 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %flash_offset130, align 4
  %and131 = and i32 %61, -4
  %call132 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %57, i32 noundef %call118, i32 noundef %and131) #10
  br label %out_decomprbuf

do.end136:                                        ; preds = %if.end115
  %62 = ptrtoint ptr %compr to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %compr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %cmp139.not = icmp eq i8 %63, 0
  br i1 %cmp139.not, label %do.end136.if.end162_crit_edge, label %do.end144

do.end136.if.end162_crit_edge:                    ; preds = %do.end136
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end162

do.end144:                                        ; preds = %do.end136
  %conv138 = zext i8 %63 to i16
  %usercompr = getelementptr inbounds %struct.jffs2_raw_inode, ptr %call, i32 0, i32 17
  %64 = ptrtoint ptr %usercompr to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %usercompr, align 1
  %conv147 = zext i8 %65 to i16
  %shl = shl nuw i16 %conv147, 8
  %or = or i16 %shl, %conv138
  %dsize151 = getelementptr inbounds %struct.jffs2_raw_inode, ptr %call, i32 0, i32 15
  %66 = ptrtoint ptr %dsize151 to i32
  call void @__asan_loadN_noabort(i32 %66, i32 4)
  %67 = load i32, ptr %dsize151, align 1
  %call153 = call i32 @jffs2_decompress(ptr noundef %c, ptr noundef %f, i16 noundef zeroext %or, ptr noundef %readbuf.0, ptr noundef %decomprbuf.0, i32 noundef %55, i32 noundef %67) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call153)
  %tobool154.not = icmp eq i32 %call153, 0
  br i1 %tobool154.not, label %do.end144.if.end162_crit_edge, label %do.end158

do.end144.if.end162_crit_edge:                    ; preds = %do.end144
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end162

do.end158:                                        ; preds = %do.end144
  call void @__sanitizer_cov_trace_pc() #9
  %call160 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call153) #10
  br label %out_decomprbuf

if.end162:                                        ; preds = %do.end144.if.end162_crit_edge, %do.end136.if.end162_crit_edge
  %dsize163 = getelementptr inbounds %struct.jffs2_raw_inode, ptr %call, i32 0, i32 15
  %68 = ptrtoint ptr %dsize163 to i32
  call void @__asan_loadN_noabort(i32 %68, i32 4)
  %69 = load i32, ptr %dsize163, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %69, i32 %len)
  %cmp165 = icmp ugt i32 %69, %len
  br i1 %cmp165, label %if.then167, label %if.end162.out_decomprbuf_crit_edge

if.end162.out_decomprbuf_crit_edge:               ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_decomprbuf

if.then167:                                       ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %decomprbuf.0, i32 %ofs
  %70 = call ptr @memcpy(ptr %buf, ptr %add.ptr, i32 %len)
  br label %out_decomprbuf

out_decomprbuf:                                   ; preds = %if.then167, %if.end162.out_decomprbuf_crit_edge, %do.end158, %do.end125, %land.lhs.true106.out_decomprbuf_crit_edge, %do.end97.out_decomprbuf_crit_edge
  %ret.2 = phi i32 [ -5, %do.end125 ], [ %call153, %do.end158 ], [ 0, %if.then167 ], [ 0, %if.end162.out_decomprbuf_crit_edge ], [ -5, %land.lhs.true106.out_decomprbuf_crit_edge ], [ %call104, %do.end97.out_decomprbuf_crit_edge ]
  %cmp169.not = icmp eq ptr %decomprbuf.0, %buf
  %cmp172.not = icmp eq ptr %decomprbuf.0, %readbuf.0
  %or.cond = select i1 %cmp169.not, i1 true, i1 %cmp172.not
  br i1 %or.cond, label %out_decomprbuf.out_readbuf_crit_edge, label %if.then174

out_decomprbuf.out_readbuf_crit_edge:             ; preds = %out_decomprbuf
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_readbuf

if.then174:                                       ; preds = %out_decomprbuf
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree(ptr noundef %decomprbuf.0) #7
  br label %out_readbuf

out_readbuf:                                      ; preds = %if.then174, %out_decomprbuf.out_readbuf_crit_edge, %if.end8.i282.out_readbuf_crit_edge
  %ret.3 = phi i32 [ %ret.2, %if.then174 ], [ %ret.2, %out_decomprbuf.out_readbuf_crit_edge ], [ -12, %if.end8.i282.out_readbuf_crit_edge ]
  %cmp176.not = icmp eq ptr %readbuf.0, %buf
  br i1 %cmp176.not, label %out_readbuf.out_ri_crit_edge, label %if.then178

out_readbuf.out_ri_crit_edge:                     ; preds = %out_readbuf
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_ri

if.then178:                                       ; preds = %out_readbuf
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree(ptr noundef %readbuf.0) #7
  br label %out_ri

out_ri:                                           ; preds = %if.then178, %out_readbuf.out_ri_crit_edge, %if.end8.i.out_ri_crit_edge, %if.then56, %do.end29
  %ret.4 = phi i32 [ -5, %do.end29 ], [ 0, %if.then56 ], [ %ret.3, %if.then178 ], [ %ret.3, %out_readbuf.out_ri_crit_edge ], [ -12, %if.end8.i.out_ri_crit_edge ]
  call void @jffs2_free_raw_inode(ptr noundef nonnull %call) #7
  br label %cleanup

cleanup:                                          ; preds = %out_ri, %if.then10, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then3 ], [ -5, %if.then10 ], [ %ret.4, %out_ri ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %readlen) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @jffs2_alloc_raw_inode() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_flash_read(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_free_raw_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_decompress(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jffs2_read_inode_range(ptr noundef %c, ptr noundef %f, ptr noundef %buf, i32 noundef %offset, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %len, %offset
  %fragtree = getelementptr inbounds %struct.jffs2_inode_info, ptr %f, i32 0, i32 2
  %call = tail call ptr @jffs2_lookup_node_frag(ptr noundef %fragtree, i32 noundef %offset) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %offset)
  %cmp167174 = icmp ugt i32 %add, %offset
  br i1 %cmp167174, label %entry.do.end3.lr.ph_crit_edge, label %entry.cleanup96_crit_edge

entry.cleanup96_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup96

entry.do.end3.lr.ph_crit_edge:                    ; preds = %entry
  br label %do.end3.lr.ph

do.end3.lr.ph:                                    ; preds = %while.cond.outer.backedge.do.end3.lr.ph_crit_edge, %entry.do.end3.lr.ph_crit_edge
  %buf.addr.0.ph177 = phi ptr [ %buf.addr.0.ph.be, %while.cond.outer.backedge.do.end3.lr.ph_crit_edge ], [ %buf, %entry.do.end3.lr.ph_crit_edge ]
  %offset.addr.0.ph176 = phi i32 [ %offset.addr.0.ph.be, %while.cond.outer.backedge.do.end3.lr.ph_crit_edge ], [ %offset, %entry.do.end3.lr.ph_crit_edge ]
  %frag.0.ph175 = phi ptr [ %call49, %while.cond.outer.backedge.do.end3.lr.ph_crit_edge ], [ %call, %entry.do.end3.lr.ph_crit_edge ]
  %tobool.not = icmp eq ptr %frag.0.ph175, null
  %ofs = getelementptr inbounds %struct.jffs2_node_frag, ptr %frag.0.ph175, i32 0, i32 3
  %size = getelementptr inbounds %struct.jffs2_node_frag, ptr %frag.0.ph175, i32 0, i32 2
  br label %do.end3

do.end3:                                          ; preds = %do.end22.do.end3_crit_edge, %do.end3.lr.ph
  %buf.addr.0171 = phi ptr [ %buf.addr.0.ph177, %do.end3.lr.ph ], [ %add.ptr, %do.end22.do.end3_crit_edge ]
  %offset.addr.0168 = phi i32 [ %offset.addr.0.ph176, %do.end3.lr.ph ], [ %add23, %do.end22.do.end3_crit_edge ]
  br i1 %tobool.not, label %if.then, label %lor.lhs.false, !prof !32

lor.lhs.false:                                    ; preds = %do.end3
  %0 = ptrtoint ptr %ofs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ofs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %offset.addr.0168)
  %cmp4 = icmp ugt i32 %1, %offset.addr.0168
  br i1 %cmp4, label %lor.lhs.false.land.lhs.true_crit_edge, label %lor.rhs, !prof !32

lor.lhs.false.land.lhs.true_crit_edge:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

lor.rhs:                                          ; preds = %lor.lhs.false
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 4
  %add6 = add i32 %3, %1
  call void @__sanitizer_cov_trace_cmp4(i32 %add6, i32 %offset.addr.0168)
  %cmp7.not = icmp ugt i32 %add6, %offset.addr.0168
  br i1 %cmp7.not, label %if.else, label %lor.rhs.land.lhs.true_crit_edge, !prof !33

lor.rhs.land.lhs.true_crit_edge:                  ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

if.then:                                          ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  %sub = sub i32 %add, %offset.addr.0168
  br label %do.end22

land.lhs.true:                                    ; preds = %lor.rhs.land.lhs.true_crit_edge, %lor.lhs.false.land.lhs.true_crit_edge
  %sub157 = sub i32 %add, %offset.addr.0168
  %4 = ptrtoint ptr %ofs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ofs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %offset.addr.0168)
  %cmp12 = icmp ugt i32 %5, %offset.addr.0168
  br i1 %cmp12, label %do.end16, label %land.lhs.true.do.end22_crit_edge

land.lhs.true.do.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end22

do.end16:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %sub18 = sub i32 %5, %offset.addr.0168
  %6 = tail call i32 @llvm.umin.i32(i32 %sub157, i32 %sub18)
  br label %do.end22

do.end22:                                         ; preds = %do.end16, %land.lhs.true.do.end22_crit_edge, %if.then
  %holesize.0 = phi i32 [ %6, %do.end16 ], [ %sub157, %land.lhs.true.do.end22_crit_edge ], [ %sub, %if.then ]
  %7 = call ptr @memset(ptr %buf.addr.0171, i32 0, i32 %holesize.0)
  %add.ptr = getelementptr i8, ptr %buf.addr.0171, i32 %holesize.0
  %add23 = add i32 %holesize.0, %offset.addr.0168
  %cmp = icmp ugt i32 %add, %add23
  br i1 %cmp, label %do.end22.do.end3_crit_edge, label %do.end22.cleanup96_crit_edge

do.end22.cleanup96_crit_edge:                     ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup96

do.end22.do.end3_crit_edge:                       ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3

if.else:                                          ; preds = %lor.rhs
  %node = getelementptr inbounds %struct.jffs2_node_frag, ptr %frag.0.ph175, i32 0, i32 1
  %8 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %node, align 4
  %tobool24.not = icmp eq ptr %9, null
  br i1 %tobool24.not, label %if.then33, label %if.else52, !prof !32

if.then33:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %10 = tail call i32 @llvm.umin.i32(i32 %add, i32 %add6)
  %sub46 = sub i32 %10, %offset.addr.0168
  %11 = call ptr @memset(ptr %buf.addr.0171, i32 0, i32 %sub46)
  br label %while.cond.outer.backedge

while.cond.outer.backedge:                        ; preds = %cleanup, %if.then33
  %offset.addr.0.ph.be = phi i32 [ %add84, %cleanup ], [ %10, %if.then33 ]
  %.pn = phi i32 [ %12, %cleanup ], [ %sub46, %if.then33 ]
  %call49 = tail call ptr @rb_next(ptr noundef nonnull %frag.0.ph175) #7
  %buf.addr.0.ph.be = getelementptr i8, ptr %buf.addr.0171, i32 %.pn
  %cmp167 = icmp ugt i32 %add, %offset.addr.0.ph.be
  br i1 %cmp167, label %while.cond.outer.backedge.do.end3.lr.ph_crit_edge, label %while.cond.outer.backedge.cleanup96_crit_edge

while.cond.outer.backedge.cleanup96_crit_edge:    ; preds = %while.cond.outer.backedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup96

while.cond.outer.backedge.do.end3.lr.ph_crit_edge: ; preds = %while.cond.outer.backedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.lr.ph

if.else52:                                        ; preds = %if.else
  %sub54.neg = sub i32 %1, %offset.addr.0168
  %sub56 = add i32 %sub54.neg, %3
  %sub57 = sub i32 %add, %offset.addr.0168
  %12 = tail call i32 @llvm.umin.i32(i32 %sub56, i32 %sub57)
  %ofs71 = getelementptr inbounds %struct.jffs2_full_dnode, ptr %9, i32 0, i32 1
  %13 = ptrtoint ptr %ofs71 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ofs71, align 4
  %sub72 = sub i32 %offset.addr.0168, %14
  %call73 = tail call i32 @jffs2_read_dnode(ptr noundef %c, ptr noundef %f, ptr noundef nonnull %9, ptr noundef %buf.addr.0171, i32 noundef %sub72, i32 noundef %12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool77.not = icmp eq i32 %call73, 0
  br i1 %tobool77.not, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #9
  %15 = call ptr @memset(ptr %buf.addr.0171, i32 0, i32 %12)
  br label %cleanup96

cleanup:                                          ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #9
  %add84 = add i32 %12, %offset.addr.0168
  br label %while.cond.outer.backedge

cleanup96:                                        ; preds = %cleanup.thread, %while.cond.outer.backedge.cleanup96_crit_edge, %do.end22.cleanup96_crit_edge, %entry.cleanup96_crit_edge
  %retval.2 = phi i32 [ %call73, %cleanup.thread ], [ 0, %entry.cleanup96_crit_edge ], [ 0, %do.end22.cleanup96_crit_edge ], [ 0, %while.cond.outer.backedge.cleanup96_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @jffs2_lookup_node_frag(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readonly willreturn }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/jffs2/read.c", i32 41, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @jffs2_read_dnode._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @jffs2_read_dnode._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/jffs2/read.c", i32 47, i32 3}
!8 = !{ptr @jffs2_read_dnode._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @jffs2_read_dnode._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/jffs2/read.c", i32 58, i32 3}
!12 = !{ptr @jffs2_read_dnode._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @jffs2_read_dnode._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/jffs2/read.c", i32 125, i32 3}
!16 = !{ptr @jffs2_read_dnode._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @jffs2_read_dnode._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/jffs2/read.c", i32 137, i32 4}
!20 = !{ptr @jffs2_read_dnode._entry.12, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @jffs2_read_dnode._entry_ptr.14, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!31 = !{!"auto-init"}
!32 = !{!"branch_weights", i32 1, i32 2000}
!33 = !{!"branch_weights", i32 2000, i32 1}
