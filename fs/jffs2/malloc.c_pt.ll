; ModuleID = '/llk/IR_all_yes/fs/jffs2/malloc.c_pt.bc'
source_filename = "../fs/jffs2/malloc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.jffs2_eraseblock = type { %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.jffs2_raw_node_ref = type { ptr, i32 }
%struct.jffs2_xattr_datum = type { ptr, ptr, i8, i8, i16, %struct.list_head, %struct.atomic_t, i32, i32, i32, i32, ptr, i32, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.jffs2_xattr_ref = type { ptr, ptr, i8, i8, i16, i32, %union.anon.0, %union.anon.1, ptr }
%union.anon.0 = type { ptr }
%union.anon.1 = type { ptr }

@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"jffs2_full_dnode\00", [47 x i8] zeroinitializer }, align 32
@full_dnode_slab = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"jffs2_raw_dirent\00", [47 x i8] zeroinitializer }, align 32
@raw_dirent_slab = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"jffs2_raw_inode\00", [16 x i8] zeroinitializer }, align 32
@raw_inode_slab = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"jffs2_tmp_dnode\00", [16 x i8] zeroinitializer }, align 32
@tmp_dnode_info_slab = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"jffs2_refblock\00", [17 x i8] zeroinitializer }, align 32
@raw_node_ref_slab = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"jffs2_node_frag\00", [16 x i8] zeroinitializer }, align 32
@node_frag_slab = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"jffs2_inode_cache\00", [46 x i8] zeroinitializer }, align 32
@inode_cache_slab = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"jffs2_xattr_datum\00", [46 x i8] zeroinitializer }, align 32
@xattr_datum_cache = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"jffs2_xattr_ref\00", [16 x i8] zeroinitializer }, align 32
@xattr_ref_cache = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 36, i32 38 }
@___asan_gen_.12 = private unnamed_addr constant [16 x i8] c"full_dnode_slab\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 22, i32 27 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 42, i32 38 }
@___asan_gen_.18 = private unnamed_addr constant [16 x i8] c"raw_dirent_slab\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 23, i32 27 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 48, i32 37 }
@___asan_gen_.24 = private unnamed_addr constant [15 x i8] c"raw_inode_slab\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 24, i32 27 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 54, i32 42 }
@___asan_gen_.30 = private unnamed_addr constant [20 x i8] c"tmp_dnode_info_slab\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 25, i32 27 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 60, i32 40 }
@___asan_gen_.36 = private unnamed_addr constant [18 x i8] c"raw_node_ref_slab\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 26, i32 27 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 66, i32 37 }
@___asan_gen_.42 = private unnamed_addr constant [15 x i8] c"node_frag_slab\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 27, i32 27 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 72, i32 39 }
@___asan_gen_.48 = private unnamed_addr constant [17 x i8] c"inode_cache_slab\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 28, i32 27 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 79, i32 40 }
@___asan_gen_.54 = private unnamed_addr constant [18 x i8] c"xattr_datum_cache\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 30, i32 27 }
@___asan_gen_.57 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 85, i32 38 }
@___asan_gen_.60 = private unnamed_addr constant [16 x i8] c"xattr_ref_cache\00", align 1
@___asan_gen_.61 = private constant [21 x i8] c"../fs/jffs2/malloc.c\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 31, i32 27 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @.str, ptr @full_dnode_slab, ptr @.str.1, ptr @raw_dirent_slab, ptr @.str.2, ptr @raw_inode_slab, ptr @.str.3, ptr @tmp_dnode_info_slab, ptr @.str.4, ptr @raw_node_ref_slab, ptr @.str.5, ptr @node_frag_slab, ptr @.str.6, ptr @inode_cache_slab, ptr @.str.7, ptr @xattr_datum_cache, ptr @.str.8, ptr @xattr_ref_cache], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @full_dnode_slab to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raw_dirent_slab to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raw_inode_slab to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmp_dnode_info_slab to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raw_node_ref_slab to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @node_frag_slab to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inode_cache_slab to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xattr_datum_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xattr_ref_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jffs2_create_slab_caches() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str, i32 noundef 16, i32 noundef 0, i32 noundef 0, ptr noundef null) #4
  store ptr %call, ptr @full_dnode_slab, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.err_crit_edge, label %if.end

entry.err_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %err

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.1, i32 noundef 40, i32 noundef 0, i32 noundef 8192, ptr noundef null) #4
  store ptr %call1, ptr @raw_dirent_slab, align 4
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.err_crit_edge, label %if.end4

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %err

if.end4:                                          ; preds = %if.end
  %call5 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.2, i32 noundef 68, i32 noundef 0, i32 noundef 8192, ptr noundef null) #4
  store ptr %call5, ptr @raw_inode_slab, align 4
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end4.err_crit_edge, label %if.end8

if.end4.err_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %err

if.end8:                                          ; preds = %if.end4
  %call9 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.3, i32 noundef 36, i32 noundef 0, i32 noundef 0, ptr noundef null) #4
  store ptr %call9, ptr @tmp_dnode_info_slab, align 4
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.end8.err_crit_edge, label %if.end12

if.end8.err_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %err

if.end12:                                         ; preds = %if.end8
  %call13 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.4, i32 noundef 248, i32 noundef 0, i32 noundef 0, ptr noundef null) #4
  store ptr %call13, ptr @raw_node_ref_slab, align 4
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end12.err_crit_edge, label %if.end16

if.end12.err_crit_edge:                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %err

if.end16:                                         ; preds = %if.end12
  %call17 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.5, i32 noundef 24, i32 noundef 0, i32 noundef 0, ptr noundef null) #4
  store ptr %call17, ptr @node_frag_slab, align 4
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %if.end16.err_crit_edge, label %if.end20

if.end16.err_crit_edge:                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  br label %err

if.end20:                                         ; preds = %if.end16
  %call21 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.6, i32 noundef 28, i32 noundef 0, i32 noundef 0, ptr noundef null) #4
  store ptr %call21, ptr @inode_cache_slab, align 4
  %tobool22.not = icmp eq ptr %call21, null
  br i1 %tobool22.not, label %if.end20.err_crit_edge, label %if.end24

if.end20.err_crit_edge:                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  br label %err

if.end24:                                         ; preds = %if.end20
  %call25 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.7, i32 noundef 56, i32 noundef 0, i32 noundef 0, ptr noundef null) #4
  store ptr %call25, ptr @xattr_datum_cache, align 4
  %tobool26.not = icmp eq ptr %call25, null
  br i1 %tobool26.not, label %if.end24.err_crit_edge, label %if.end28

if.end24.err_crit_edge:                           ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  br label %err

if.end28:                                         ; preds = %if.end24
  %call29 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.8, i32 noundef 28, i32 noundef 0, i32 noundef 0, ptr noundef null) #4
  store ptr %call29, ptr @xattr_ref_cache, align 4
  %tobool30.not = icmp eq ptr %call29, null
  br i1 %tobool30.not, label %if.end28.err_crit_edge, label %if.end28.return_crit_edge

if.end28.return_crit_edge:                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end28.err_crit_edge:                           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #6
  br label %err

err:                                              ; preds = %if.end28.err_crit_edge, %if.end24.err_crit_edge, %if.end20.err_crit_edge, %if.end16.err_crit_edge, %if.end12.err_crit_edge, %if.end8.err_crit_edge, %if.end4.err_crit_edge, %if.end.err_crit_edge, %entry.err_crit_edge
  tail call void @jffs2_destroy_slab_caches()
  br label %return

return:                                           ; preds = %err, %if.end28.return_crit_edge
  %retval.0 = phi i32 [ -12, %err ], [ 0, %if.end28.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @jffs2_destroy_slab_caches() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @full_dnode_slab, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #4
  %1 = load ptr, ptr @raw_dirent_slab, align 4
  tail call void @kmem_cache_destroy(ptr noundef %1) #4
  %2 = load ptr, ptr @raw_inode_slab, align 4
  tail call void @kmem_cache_destroy(ptr noundef %2) #4
  %3 = load ptr, ptr @tmp_dnode_info_slab, align 4
  tail call void @kmem_cache_destroy(ptr noundef %3) #4
  %4 = load ptr, ptr @raw_node_ref_slab, align 4
  tail call void @kmem_cache_destroy(ptr noundef %4) #4
  %5 = load ptr, ptr @node_frag_slab, align 4
  tail call void @kmem_cache_destroy(ptr noundef %5) #4
  %6 = load ptr, ptr @inode_cache_slab, align 4
  tail call void @kmem_cache_destroy(ptr noundef %6) #4
  %7 = load ptr, ptr @xattr_datum_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %7) #4
  %8 = load ptr, ptr @xattr_ref_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %8) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @jffs2_alloc_full_dirent(i32 noundef %namesize) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %namesize, 24
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #7
  ret ptr %call9.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @jffs2_free_full_dirent(ptr noundef %x) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %x) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local noalias ptr @jffs2_alloc_full_dnode() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @full_dnode_slab, align 4
  %call = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3264) #4
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @jffs2_free_full_dnode(ptr noundef %x) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @full_dnode_slab, align 4
  tail call void @kmem_cache_free(ptr noundef %0, ptr noundef %x) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local noalias ptr @jffs2_alloc_raw_dirent() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @raw_dirent_slab, align 4
  %call = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3264) #4
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @jffs2_free_raw_dirent(ptr noundef %x) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @raw_dirent_slab, align 4
  tail call void @kmem_cache_free(ptr noundef %0, ptr noundef %x) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local noalias ptr @jffs2_alloc_raw_inode() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @raw_inode_slab, align 4
  %call = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3264) #4
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @jffs2_free_raw_inode(ptr noundef %x) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @raw_inode_slab, align 4
  tail call void @kmem_cache_free(ptr noundef %0, ptr noundef %x) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local noalias ptr @jffs2_alloc_tmp_dnode_info() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @tmp_dnode_info_slab, align 4
  %call = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3264) #4
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @jffs2_free_tmp_dnode_info(ptr noundef %x) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @tmp_dnode_info_slab, align 4
  tail call void @kmem_cache_free(ptr noundef %0, ptr noundef %x) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jffs2_prealloc_raw_node_refs(ptr nocapture noundef readnone %c, ptr nocapture noundef %jeb, i32 noundef %nr) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %last_node = getelementptr inbounds %struct.jffs2_eraseblock, ptr %jeb, i32 0, i32 10
  %0 = ptrtoint ptr %last_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %last_node, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %flash_offset = getelementptr inbounds %struct.jffs2_raw_node_ref, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %flash_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flash_offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %3)
  %cmp.not = icmp ne i32 %3, -2
  %spec.select.idx = zext i1 %cmp.not to i32
  %spec.select = getelementptr %struct.jffs2_raw_node_ref, ptr %1, i32 %spec.select.idx
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry.if.end_crit_edge
  %ref.0 = phi ptr [ null, %entry.if.end_crit_edge ], [ %spec.select, %land.lhs.true ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr)
  %tobool2.not36 = icmp eq i32 %nr, 0
  br i1 %tobool2.not36, label %if.end.while.end_crit_edge, label %if.end.while.body.lr.ph_crit_edge

if.end.while.body.lr.ph_crit_edge:                ; preds = %if.end
  br label %while.body.lr.ph

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end13.while.body.lr.ph_crit_edge, %if.end.while.body.lr.ph_crit_edge
  %p.0.ph39 = phi ptr [ %p.035, %if.end13.while.body.lr.ph_crit_edge ], [ %last_node, %if.end.while.body.lr.ph_crit_edge ]
  %ref.1.ph38 = phi ptr [ %incdec.ptr14, %if.end13.while.body.lr.ph_crit_edge ], [ %ref.0, %if.end.while.body.lr.ph_crit_edge ]
  %i.0.ph37 = phi i32 [ %dec, %if.end13.while.body.lr.ph_crit_edge ], [ %nr, %if.end.while.body.lr.ph_crit_edge ]
  br label %while.body

while.body:                                       ; preds = %if.then12, %while.body.lr.ph
  %p.035 = phi ptr [ %p.0.ph39, %while.body.lr.ph ], [ %ref.2, %if.then12 ]
  %ref.134 = phi ptr [ %ref.1.ph38, %while.body.lr.ph ], [ %14, %if.then12 ]
  %tobool3.not = icmp eq ptr %ref.134, null
  br i1 %tobool3.not, label %if.then4, label %while.body.if.end9_crit_edge

while.body.if.end9_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

if.then4:                                         ; preds = %while.body
  %4 = load ptr, ptr @raw_node_ref_slab, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %4, i32 noundef 3264) #4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %jffs2_alloc_refblock.exit.thread, label %if.then4.for.body.i_crit_edge

if.then4.for.body.i_crit_edge:                    ; preds = %if.then4
  br label %for.body.i

jffs2_alloc_refblock.exit.thread:                 ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %p.035 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %p.035, align 4
  br label %cleanup

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then4.for.body.i_crit_edge
  %i.016.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then4.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.jffs2_raw_node_ref, ptr %call.i, i32 %i.016.i
  %flash_offset.i = getelementptr %struct.jffs2_raw_node_ref, ptr %call.i, i32 %i.016.i, i32 1
  %6 = ptrtoint ptr %flash_offset.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -2, ptr %flash_offset.i, align 4
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %arrayidx.i, align 8
  %inc.i = add nuw nsw i32 %i.016.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 30
  br i1 %exitcond.not.i, label %jffs2_alloc_refblock.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

jffs2_alloc_refblock.exit:                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx2.i = getelementptr %struct.jffs2_raw_node_ref, ptr %call.i, i32 30
  %flash_offset3.i = getelementptr %struct.jffs2_raw_node_ref, ptr %call.i, i32 30, i32 1
  %8 = ptrtoint ptr %flash_offset3.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %flash_offset3.i, align 4
  %9 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %arrayidx2.i, align 8
  %10 = ptrtoint ptr %p.035 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %p.035, align 4
  br label %if.end9

if.end9:                                          ; preds = %jffs2_alloc_refblock.exit, %while.body.if.end9_crit_edge
  %ref.2 = phi ptr [ %ref.134, %while.body.if.end9_crit_edge ], [ %call.i, %jffs2_alloc_refblock.exit ]
  %flash_offset10 = getelementptr inbounds %struct.jffs2_raw_node_ref, ptr %ref.2, i32 0, i32 1
  %11 = ptrtoint ptr %flash_offset10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flash_offset10, align 4
  %cmp11 = icmp eq i32 %12, -1
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %ref.2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ref.2, align 4
  br label %while.body

if.end13:                                         ; preds = %if.end9
  %dec = add i32 %i.0.ph37, -1
  %incdec.ptr14 = getelementptr %struct.jffs2_raw_node_ref, ptr %ref.2, i32 1
  %tobool2.not = icmp eq i32 %dec, 0
  br i1 %tobool2.not, label %if.end13.while.end_crit_edge, label %if.end13.while.body.lr.ph_crit_edge

if.end13.while.body.lr.ph_crit_edge:              ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.lr.ph

if.end13.while.end_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.end:                                        ; preds = %if.end13.while.end_crit_edge, %if.end.while.end_crit_edge
  %allocated_refs = getelementptr inbounds %struct.jffs2_eraseblock, ptr %jeb, i32 0, i32 8
  %15 = ptrtoint ptr %allocated_refs to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %nr, ptr %allocated_refs, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %jffs2_alloc_refblock.exit.thread
  %retval.0 = phi i32 [ 0, %while.end ], [ -12, %jffs2_alloc_refblock.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @jffs2_free_refblock(ptr noundef %x) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @raw_node_ref_slab, align 4
  tail call void @kmem_cache_free(ptr noundef %0, ptr noundef %x) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local noalias ptr @jffs2_alloc_node_frag() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @node_frag_slab, align 4
  %call = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3264) #4
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @jffs2_free_node_frag(ptr noundef %x) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @node_frag_slab, align 4
  tail call void @kmem_cache_free(ptr noundef %0, ptr noundef %x) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local noalias ptr @jffs2_alloc_inode_cache() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @inode_cache_slab, align 4
  %call = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3264) #4
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @jffs2_free_inode_cache(ptr noundef %x) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @inode_cache_slab, align 4
  tail call void @kmem_cache_free(ptr noundef %0, ptr noundef %x) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @jffs2_alloc_xattr_datum() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @xattr_datum_cache, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %class = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %class to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %class, align 8
  %node = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %node, align 4
  %xindex = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %call.i, i32 0, i32 5
  %3 = ptrtoint ptr %xindex to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %xindex, ptr %xindex, align 4
  %prev.i = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %call.i, i32 0, i32 5, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %xindex, ptr %prev.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @jffs2_free_xattr_datum(ptr noundef %xd) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @xattr_datum_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %0, ptr noundef %xd) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @jffs2_alloc_xattr_ref() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @xattr_ref_cache, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %class = getelementptr inbounds %struct.jffs2_xattr_ref, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %class to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 2, ptr %class, align 8
  %node = getelementptr inbounds %struct.jffs2_xattr_ref, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %node, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @jffs2_free_xattr_ref(ptr noundef %ref) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @xattr_ref_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %0, ptr noundef %ref) #4
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/jffs2/malloc.c", i32 36, i32 38}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/jffs2/malloc.c", i32 42, i32 38}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/jffs2/malloc.c", i32 48, i32 37}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/jffs2/malloc.c", i32 54, i32 42}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/jffs2/malloc.c", i32 60, i32 40}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/jffs2/malloc.c", i32 66, i32 37}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/jffs2/malloc.c", i32 72, i32 39}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/jffs2/malloc.c", i32 79, i32 40}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/jffs2/malloc.c", i32 85, i32 38}
!18 = !{ptr @full_dnode_slab, !19, !"full_dnode_slab", i1 false, i1 false}
!19 = !{!"../fs/jffs2/malloc.c", i32 22, i32 27}
!20 = !{ptr @raw_dirent_slab, !21, !"raw_dirent_slab", i1 false, i1 false}
!21 = !{!"../fs/jffs2/malloc.c", i32 23, i32 27}
!22 = !{ptr @raw_inode_slab, !23, !"raw_inode_slab", i1 false, i1 false}
!23 = !{!"../fs/jffs2/malloc.c", i32 24, i32 27}
!24 = !{ptr @tmp_dnode_info_slab, !25, !"tmp_dnode_info_slab", i1 false, i1 false}
!25 = !{!"../fs/jffs2/malloc.c", i32 25, i32 27}
!26 = !{ptr @raw_node_ref_slab, !27, !"raw_node_ref_slab", i1 false, i1 false}
!27 = !{!"../fs/jffs2/malloc.c", i32 26, i32 27}
!28 = !{ptr @node_frag_slab, !29, !"node_frag_slab", i1 false, i1 false}
!29 = !{!"../fs/jffs2/malloc.c", i32 27, i32 27}
!30 = !{ptr @inode_cache_slab, !31, !"inode_cache_slab", i1 false, i1 false}
!31 = !{!"../fs/jffs2/malloc.c", i32 28, i32 27}
!32 = !{ptr @xattr_datum_cache, !33, !"xattr_datum_cache", i1 false, i1 false}
!33 = !{!"../fs/jffs2/malloc.c", i32 30, i32 27}
!34 = !{ptr @xattr_ref_cache, !35, !"xattr_ref_cache", i1 false, i1 false}
!35 = !{!"../fs/jffs2/malloc.c", i32 31, i32 27}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
