; ModuleID = '/llk/IR_all_yes/mm/cma_debug.c_pt.bc'
source_filename = "../mm/cma_debug.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cma = type { i32, i32, ptr, i32, %struct.spinlock, %struct.hlist_head, %struct.spinlock, %struct.debugfs_u32_array, [64 x i8], %struct.atomic64_t, %struct.atomic64_t, ptr }
%struct.hlist_head = type { ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.debugfs_u32_array = type { ptr, i32 }
%struct.atomic64_t = type { i64 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.cma_mem = type { %struct.hlist_node, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.page = type { i32, %union.anon.42, %union.anon.51, %struct.atomic_t, i32 }
%union.anon.42 = type { %struct.anon.43 }
%struct.anon.43 = type { %struct.list_head, ptr, i32, i32 }
%struct.list_head = type { ptr, ptr }
%union.anon.51 = type { %struct.atomic_t }

@__initcall__kmod_cma_debug__210_200_cma_debugfs_init7 = internal global ptr @cma_debugfs_init, section ".initcall7.init", align 4
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cma\00", [28 x i8] zeroinitializer }, align 32
@cma_area_count = external dso_local local_unnamed_addr global i32, align 4
@cma_areas = external dso_local global [8 x %struct.cma], align 8
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cma-%s\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"alloc\00", [26 x i8] zeroinitializer }, align 32
@cma_alloc_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @cma_alloc_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"free\00", [27 x i8] zeroinitializer }, align 32
@cma_free_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @cma_free_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"base_pfn\00", [23 x i8] zeroinitializer }, align 32
@cma_debugfs_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @cma_debugfs_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"count\00", [26 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"order_per_bit\00", [18 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"used\00", [27 x i8] zeroinitializer }, align 32
@cma_used_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @cma_used_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"maxchunk\00", [23 x i8] zeroinitializer }, align 32
@cma_maxchunk_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @cma_maxchunk_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"bitmap\00", [25 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%llu\0A\00", [26 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@cma_free_mem.__UNIQUE_ID_ddebug209 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, i8 0, i8 28, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cma_debug\00", [22 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cma_free_mem\00", [19 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mm/cma_debug.c\00", [17 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"cma: cannot release partial block when order_per_bit != 0\0A\00", [37 x i8] zeroinitializer }, align 32
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 193, i32 40 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 168, i32 32 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 172, i32 22 }
@___asan_gen_.24 = private unnamed_addr constant [15 x i8] c"cma_alloc_fops\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 173, i32 22 }
@___asan_gen_.30 = private unnamed_addr constant [14 x i8] c"cma_free_fops\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 129, i32 1 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 174, i32 22 }
@___asan_gen_.36 = private unnamed_addr constant [17 x i8] c"cma_debugfs_fops\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 32, i32 1 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 176, i32 22 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 177, i32 22 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 179, i32 22 }
@___asan_gen_.48 = private unnamed_addr constant [14 x i8] c"cma_used_fops\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 47, i32 1 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 180, i32 22 }
@___asan_gen_.54 = private unnamed_addr constant [18 x i8] c"cma_maxchunk_fops\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 69, i32 1 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 185, i32 27 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 161, i32 1 }
@___asan_gen_.72 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.73 = private constant [18 x i8] c"../mm/cma_debug.c\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 112, i32 4 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @__initcall__kmod_cma_debug__210_200_cma_debugfs_init7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @cma_alloc_fops, ptr @.str.3, ptr @cma_free_fops, ptr @.str.4, ptr @cma_debugfs_fops, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @cma_used_fops, ptr @.str.8, ptr @cma_maxchunk_fops, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cma_alloc_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cma_free_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cma_debugfs_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cma_used_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cma_maxchunk_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cma_debugfs_init() #0 section ".init.text" align 64 {
entry:
  %name.i = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str, ptr noundef null) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cma_area_count to i32))
  %0 = load i32, ptr @cma_area_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp3.not = icmp eq i32 %0, 0
  br i1 %cmp3.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.04 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [8 x %struct.cma], ptr @cma_areas, i32 0, i32 %i.04
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %name.i) #7
  %name1.i = getelementptr [8 x %struct.cma], ptr @cma_areas, i32 0, i32 %i.04, i32 8
  %1 = call ptr @memset(ptr %name.i, i32 255, i32 16)
  %call.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %name.i, i32 noundef 16, ptr noundef nonnull @.str.1, ptr noundef %name1.i) #7
  %call4.i = call ptr @debugfs_create_dir(ptr noundef nonnull %name.i, ptr noundef %call) #7
  %call5.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.2, i16 noundef zeroext 128, ptr noundef %call4.i, ptr noundef %arrayidx, ptr noundef nonnull @cma_alloc_fops) #7
  %call6.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.3, i16 noundef zeroext 128, ptr noundef %call4.i, ptr noundef %arrayidx, ptr noundef nonnull @cma_free_fops) #7
  %call7.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.4, i16 noundef zeroext 292, ptr noundef %call4.i, ptr noundef %arrayidx, ptr noundef nonnull @cma_debugfs_fops) #7
  %count.i = getelementptr [8 x %struct.cma], ptr @cma_areas, i32 0, i32 %i.04, i32 1
  %call8.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.5, i16 noundef zeroext 292, ptr noundef %call4.i, ptr noundef %count.i, ptr noundef nonnull @cma_debugfs_fops) #7
  %order_per_bit.i = getelementptr [8 x %struct.cma], ptr @cma_areas, i32 0, i32 %i.04, i32 3
  %call9.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.6, i16 noundef zeroext 292, ptr noundef %call4.i, ptr noundef %order_per_bit.i, ptr noundef nonnull @cma_debugfs_fops) #7
  %call10.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.7, i16 noundef zeroext 292, ptr noundef %call4.i, ptr noundef %arrayidx, ptr noundef nonnull @cma_used_fops) #7
  %call11.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.8, i16 noundef zeroext 292, ptr noundef %call4.i, ptr noundef %arrayidx, ptr noundef nonnull @cma_maxchunk_fops) #7
  %bitmap.i = getelementptr [8 x %struct.cma], ptr @cma_areas, i32 0, i32 %i.04, i32 2
  %2 = ptrtoint ptr %bitmap.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bitmap.i, align 8
  %dfs_bitmap.i = getelementptr [8 x %struct.cma], ptr @cma_areas, i32 0, i32 %i.04, i32 7
  %4 = ptrtoint ptr %dfs_bitmap.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %dfs_bitmap.i, align 4
  %5 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %count.i, align 4
  %7 = ptrtoint ptr %order_per_bit.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %order_per_bit.i, align 4
  %shr.i.i = lshr i32 %6, %8
  %sub.i = add i32 %shr.i.i, 31
  %div34.i = lshr i32 %sub.i, 5
  %n_elements.i = getelementptr [8 x %struct.cma], ptr @cma_areas, i32 0, i32 %i.04, i32 7, i32 1
  %9 = ptrtoint ptr %n_elements.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %div34.i, ptr %n_elements.i, align 8
  call void @debugfs_create_u32_array(ptr noundef nonnull @.str.9, i16 noundef zeroext 292, ptr noundef %call4.i, ptr noundef %dfs_bitmap.i) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %name.i) #7
  %inc = add nuw i32 %i.04, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cma_area_count to i32))
  %10 = load i32, ptr @cma_area_count, align 4
  %cmp = icmp ult i32 %inc, %10
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_u32_array(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debugfs_attr_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debugfs_attr_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cma_alloc_fops_open(ptr noundef %inode, ptr noundef %file) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef null, ptr noundef nonnull @cma_alloc_write, ptr noundef nonnull @.str.10) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_open(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cma_alloc_write(ptr noundef %data, i64 noundef %val) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %val to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 16) #10
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cma_alloc_mem.exit_crit_edge, label %if.end.i

entry.cma_alloc_mem.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cma_alloc_mem.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call ptr @cma_alloc(ptr noundef %data, i32 noundef %conv, i32 noundef 0, i1 noundef zeroext false) #7
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %if.then3.i, label %if.end4.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #7
  br label %cma_alloc_mem.exit

if.end4.i:                                        ; preds = %if.end.i
  %p5.i = getelementptr inbounds %struct.cma_mem, ptr %call7.i.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %p5.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call1.i, ptr %p5.i, align 8
  %n.i = getelementptr inbounds %struct.cma_mem, ptr %call7.i.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %n.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv, ptr %n.i, align 4
  %mem_head_lock.i.i = getelementptr inbounds %struct.cma, ptr %data, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %mem_head_lock.i.i) #7
  %mem_head.i.i = getelementptr inbounds %struct.cma, ptr %data, i32 0, i32 5
  %3 = ptrtoint ptr %mem_head.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mem_head.i.i, align 4
  %5 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %4, ptr %call7.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i.i, label %if.end4.i.cma_add_to_cma_mem_list.exit.i_crit_edge, label %do.body12.i.i.i

if.end4.i.cma_add_to_cma_mem_list.exit.i_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cma_add_to_cma_mem_list.exit.i

do.body12.i.i.i:                                  ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  %pprev.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %4, i32 0, i32 1
  %6 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %call7.i.i.i, ptr %pprev.i.i.i, align 4
  br label %cma_add_to_cma_mem_list.exit.i

cma_add_to_cma_mem_list.exit.i:                   ; preds = %do.body12.i.i.i, %if.end4.i.cma_add_to_cma_mem_list.exit.i_crit_edge
  %7 = ptrtoint ptr %mem_head.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %call7.i.i.i, ptr %mem_head.i.i, align 4
  %pprev34.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %call7.i.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %pprev34.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %mem_head.i.i, ptr %pprev34.i.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %mem_head_lock.i.i) #7
  br label %cma_alloc_mem.exit

cma_alloc_mem.exit:                               ; preds = %cma_add_to_cma_mem_list.exit.i, %if.then3.i, %entry.cma_alloc_mem.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %cma_add_to_cma_mem_list.exit.i ], [ -12, %if.then3.i ], [ -12, %entry.cma_alloc_mem.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cma_alloc(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cma_free_fops_open(ptr noundef %inode, ptr noundef %file) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef null, ptr noundef nonnull @cma_free_write, ptr noundef nonnull @.str.10) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cma_free_write(ptr noundef %data, i64 noundef %val) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %val to i32
  tail call fastcc void @cma_free_mem(ptr noundef %data, i32 noundef %conv)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cma_free_mem(ptr noundef %cma, i32 noundef %count) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not14 = icmp eq i32 %count, 0
  br i1 %tobool.not14, label %entry.cleanup_crit_edge, label %while.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.body.lr.ph:                                 ; preds = %entry
  %mem_head_lock.i = getelementptr inbounds %struct.cma, ptr %cma, i32 0, i32 6
  %mem_head.i = getelementptr inbounds %struct.cma, ptr %cma, i32 0, i32 5
  %order_per_bit = getelementptr inbounds %struct.cma, ptr %cma, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %if.end21.while.body_crit_edge, %while.body.lr.ph
  %count.addr.015 = phi i32 [ %count, %while.body.lr.ph ], [ %sub, %if.end21.while.body_crit_edge ]
  tail call void @_raw_spin_lock(ptr noundef %mem_head_lock.i) #7
  %0 = ptrtoint ptr %mem_head.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %mem_head.i, align 4
  %tobool.not.i.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.not.i, label %while.body.cleanup.sink.split_crit_edge, label %if.then.i

while.body.cleanup.sink.split_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then.i:                                        ; preds = %while.body
  %pprev.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.not.i.i, label %if.then.i.if.end_crit_edge, label %if.then.i.i

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then.i.i:                                      ; preds = %if.then.i
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %5, ptr %3, align 4
  %tobool.not.i3.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i3.i.i, label %if.then.i.i.__hlist_del.exit.i.i_crit_edge, label %do.body13.i.i.i

if.then.i.i.__hlist_del.exit.i.i_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__hlist_del.exit.i.i

do.body13.i.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %3, ptr %pprev14.i.i.i, align 4
  br label %__hlist_del.exit.i.i

__hlist_del.exit.i.i:                             ; preds = %do.body13.i.i.i, %if.then.i.i.__hlist_del.exit.i.i_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %1, align 4
  %9 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %pprev.i.i.i, align 4
  br label %if.end

if.end:                                           ; preds = %__hlist_del.exit.i.i, %if.then.i.if.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %mem_head_lock.i) #7
  %n = getelementptr inbounds %struct.cma_mem, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %count.addr.015)
  %cmp1.not = icmp ugt i32 %11, %count.addr.015
  br i1 %cmp1.not, label %if.else, label %if.end21

if.else:                                          ; preds = %if.end
  %12 = ptrtoint ptr %order_per_bit to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %order_per_bit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp6 = icmp eq i32 %13, 0
  br i1 %cmp6, label %if.then7, label %do.body

if.then7:                                         ; preds = %if.else
  %p8 = getelementptr inbounds %struct.cma_mem, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %p8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %p8, align 4
  %call9 = tail call zeroext i1 @cma_release(ptr noundef %cma, ptr noundef %15, i32 noundef %count.addr.015) #7
  %16 = ptrtoint ptr %p8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %p8, align 4
  %add.ptr = getelementptr %struct.page, ptr %17, i32 %count.addr.015
  store ptr %add.ptr, ptr %p8, align 4
  %18 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %n, align 4
  %sub12 = sub i32 %19, %count.addr.015
  store i32 %sub12, ptr %n, align 4
  tail call void @_raw_spin_lock(ptr noundef %mem_head_lock.i) #7
  %20 = ptrtoint ptr %mem_head.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mem_head.i, align 4
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %21, ptr %1, align 4
  %tobool.not.i.i = icmp eq ptr %21, null
  br i1 %tobool.not.i.i, label %if.then7.cleanup.sink.split.sink.split_crit_edge, label %if.then7.cleanup.sink.split.sink.split.sink.split_crit_edge

if.then7.cleanup.sink.split.sink.split.sink.split_crit_edge: ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.sink.split.sink.split

if.then7.cleanup.sink.split.sink.split_crit_edge: ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.sink.split

do.body:                                          ; preds = %if.else
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cma_free_mem.__UNIQUE_ID_ddebug209, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cma_free_mem, %if.then18)) #7
          to label %do.end [label %if.then18], !srcloc !48

if.then18:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cma_free_mem.__UNIQUE_ID_ddebug209, ptr noundef nonnull @.str.14) #7
  br label %do.end

do.end:                                           ; preds = %if.then18, %do.body
  tail call void @_raw_spin_lock(ptr noundef %mem_head_lock.i) #7
  %23 = ptrtoint ptr %mem_head.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mem_head.i, align 4
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %24, ptr %1, align 4
  %tobool.not.i.i5 = icmp eq ptr %24, null
  br i1 %tobool.not.i.i5, label %do.end.cleanup.sink.split.sink.split_crit_edge, label %do.end.cleanup.sink.split.sink.split.sink.split_crit_edge

do.end.cleanup.sink.split.sink.split.sink.split_crit_edge: ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.sink.split.sink.split

do.end.cleanup.sink.split.sink.split_crit_edge:   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.sink.split

if.end21:                                         ; preds = %if.end
  %p = getelementptr inbounds %struct.cma_mem, ptr %1, i32 0, i32 1
  %26 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %p, align 4
  %call4 = tail call zeroext i1 @cma_release(ptr noundef %cma, ptr noundef %27, i32 noundef %11) #7
  %28 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %n, align 4
  %sub = sub i32 %count.addr.015, %29
  tail call void @kfree(ptr noundef nonnull %1) #7
  %tobool.not = icmp eq i32 %sub, 0
  br i1 %tobool.not, label %if.end21.cleanup_crit_edge, label %if.end21.while.body_crit_edge

if.end21.while.body_crit_edge:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.sink.split.sink.split.sink.split:         ; preds = %do.end.cleanup.sink.split.sink.split.sink.split_crit_edge, %if.then7.cleanup.sink.split.sink.split.sink.split_crit_edge
  %.sink = phi ptr [ %21, %if.then7.cleanup.sink.split.sink.split.sink.split_crit_edge ], [ %24, %do.end.cleanup.sink.split.sink.split.sink.split_crit_edge ]
  %pprev.i.i6 = getelementptr inbounds %struct.hlist_node, ptr %.sink, i32 0, i32 1
  %30 = ptrtoint ptr %pprev.i.i6 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %1, ptr %pprev.i.i6, align 4
  br label %cleanup.sink.split.sink.split

cleanup.sink.split.sink.split:                    ; preds = %cleanup.sink.split.sink.split.sink.split, %do.end.cleanup.sink.split.sink.split_crit_edge, %if.then7.cleanup.sink.split.sink.split_crit_edge
  %31 = ptrtoint ptr %mem_head.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %1, ptr %mem_head.i, align 4
  %32 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %mem_head.i, ptr %pprev.i.i.i, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %while.body.cleanup.sink.split_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %mem_head_lock.i) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end21.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cma_release(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cma_debugfs_fops_open(ptr noundef %inode, ptr noundef %file) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @cma_debugfs_get, ptr noundef null, ptr noundef nonnull @.str.10) #7
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cma_debugfs_get(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %val) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  %conv = zext i32 %1 to i64
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %conv, ptr %val, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cma_used_fops_open(ptr noundef %inode, ptr noundef %file) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @cma_used_get, ptr noundef null, ptr noundef nonnull @.str.10) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cma_used_get(ptr noundef %data, ptr nocapture noundef writeonly %val) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.cma, ptr %data, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #7
  %order_per_bit.i = getelementptr inbounds %struct.cma, ptr %data, i32 0, i32 3
  %count.i = getelementptr inbounds %struct.cma, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count.i, align 4
  %2 = ptrtoint ptr %order_per_bit.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %order_per_bit.i, align 4
  %shr.i7 = lshr i32 %1, %3
  %bitmap = getelementptr inbounds %struct.cma, ptr %data, i32 0, i32 2
  %4 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bitmap, align 8
  %call4.i = tail call i32 @__bitmap_weight(ptr noundef %5, i32 noundef %shr.i7) #7
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #7
  %conv = zext i32 %call4.i to i64
  %6 = ptrtoint ptr %order_per_bit.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %order_per_bit.i, align 4
  %sh_prom = zext i32 %7 to i64
  %shl = shl i64 %conv, %sh_prom
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %shl, ptr %val, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cma_maxchunk_fops_open(ptr noundef %inode, ptr noundef %file) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @cma_maxchunk_get, ptr noundef null, ptr noundef nonnull @.str.10) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cma_maxchunk_get(ptr noundef %data, ptr nocapture noundef writeonly %val) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %count.i = getelementptr inbounds %struct.cma, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count.i, align 4
  %order_per_bit.i = getelementptr inbounds %struct.cma, ptr %data, i32 0, i32 3
  %2 = ptrtoint ptr %order_per_bit.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %order_per_bit.i, align 4
  %shr.i = lshr i32 %1, %3
  %lock = getelementptr inbounds %struct.cma, ptr %data, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #7
  %bitmap = getelementptr inbounds %struct.cma, ptr %data, i32 0, i32 2
  %4 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bitmap, align 8
  %call119 = tail call i32 @_find_next_zero_bit_be(ptr noundef %5, i32 noundef %shr.i, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call119, i32 %shr.i)
  %cmp.not20 = icmp ult i32 %call119, %shr.i
  br i1 %cmp.not20, label %entry.if.end_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.end.if.end_crit_edge, %entry.if.end_crit_edge
  %call122 = phi i32 [ %call1, %if.end.if.end_crit_edge ], [ %call119, %entry.if.end_crit_edge ]
  %maxchunk.021 = phi i32 [ %8, %if.end.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  %6 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bitmap, align 8
  %call3 = tail call i32 @_find_next_bit_be(ptr noundef %7, i32 noundef %shr.i, i32 noundef %call122) #7
  %sub = sub i32 %call3, %call122
  %8 = tail call i32 @llvm.umax.i32(i32 %sub, i32 %maxchunk.021)
  %9 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bitmap, align 8
  %call1 = tail call i32 @_find_next_zero_bit_be(ptr noundef %10, i32 noundef %shr.i, i32 noundef %call3) #7
  %cmp.not = icmp ult i32 %call1, %shr.i
  br i1 %cmp.not, label %if.end.if.end_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end.if.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %maxchunk.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %8, %if.end.for.end_crit_edge ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #7
  %conv = zext i32 %maxchunk.0.lcssa to i64
  %11 = ptrtoint ptr %order_per_bit.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %order_per_bit.i, align 4
  %sh_prom = zext i32 %12 to i64
  %shl = shl i64 %conv, %sh_prom
  %13 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %shl, ptr %val, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !25, !27, !29, !30, !31, !32, !33, !35, !37}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !{ptr @__initcall__kmod_cma_debug__210_200_cma_debugfs_init7, !1, !"__initcall__kmod_cma_debug__210_200_cma_debugfs_init7", i1 false, i1 false}
!1 = !{!"../mm/cma_debug.c", i32 200, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../mm/cma_debug.c", i32 193, i32 40}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../mm/cma_debug.c", i32 168, i32 32}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../mm/cma_debug.c", i32 172, i32 22}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../mm/cma_debug.c", i32 173, i32 22}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../mm/cma_debug.c", i32 174, i32 22}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../mm/cma_debug.c", i32 176, i32 22}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../mm/cma_debug.c", i32 177, i32 22}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../mm/cma_debug.c", i32 179, i32 22}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../mm/cma_debug.c", i32 180, i32 22}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../mm/cma_debug.c", i32 185, i32 27}
!22 = !{ptr @cma_alloc_fops, !23, !"cma_alloc_fops", i1 false, i1 false}
!23 = !{!"../mm/cma_debug.c", i32 161, i32 1}
!24 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @cma_free_fops, !26, !"cma_free_fops", i1 false, i1 false}
!26 = !{!"../mm/cma_debug.c", i32 129, i32 1}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../mm/cma_debug.c", i32 112, i32 4}
!29 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @cma_free_mem.__UNIQUE_ID_ddebug209, !28, !"__UNIQUE_ID_ddebug209", i1 false, i1 false}
!33 = !{ptr @cma_debugfs_fops, !34, !"cma_debugfs_fops", i1 false, i1 false}
!34 = !{!"../mm/cma_debug.c", i32 32, i32 1}
!35 = !{ptr @cma_used_fops, !36, !"cma_used_fops", i1 false, i1 false}
!36 = !{!"../mm/cma_debug.c", i32 47, i32 1}
!37 = !{ptr @cma_maxchunk_fops, !38, !"cma_maxchunk_fops", i1 false, i1 false}
!38 = !{!"../mm/cma_debug.c", i32 69, i32 1}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"min_enum_size", i32 4}
!41 = !{i32 8, !"branch-target-enforcement", i32 0}
!42 = !{i32 8, !"sign-return-address", i32 0}
!43 = !{i32 8, !"sign-return-address-all", i32 0}
!44 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!48 = !{i64 2148491028, i64 2148491033, i64 2148491046, i64 2148491090, i64 2148491124, i64 2148491145}
