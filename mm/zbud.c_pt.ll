; ModuleID = '/llk/IR_all_yes/mm/zbud.c_pt.bc'
source_filename = "../mm/zbud.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.zpool_driver = type { ptr, ptr, %struct.atomic_t, %struct.list_head, ptr, ptr, i8, ptr, ptr, ptr, i8, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.zbud_ops = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.zbud_pool = type { %struct.spinlock, %union.anon.71, %struct.list_head, i64, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%union.anon.71 = type { [63 x %struct.list_head] }
%struct.zbud_header = type { %struct.list_head, %struct.list_head, i32, i32, i8 }
%struct.page = type { i32, %union.anon.2, %union.anon.63, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.63 = type { %struct.atomic_t }

@__UNIQUE_ID_alias226 = internal constant [22 x i8] c"zbud.alias=zpool-zbud\00", section ".modinfo", align 1
@zbud_zpool_driver = internal global { %struct.zpool_driver, [36 x i8] } { %struct.zpool_driver { ptr @.str.3, ptr null, %struct.atomic_t zeroinitializer, %struct.list_head zeroinitializer, ptr @zbud_zpool_create, ptr @zbud_zpool_destroy, i8 0, ptr @zbud_zpool_malloc, ptr @zbud_zpool_free, ptr @zbud_zpool_shrink, i8 1, ptr @zbud_zpool_map, ptr @zbud_zpool_unmap, ptr @zbud_zpool_total_size }, [36 x i8] zeroinitializer }, align 32
@exit_zbud._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 632, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\016zbud: unloaded\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"exit_zbud\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mm/zbud.c\00", [22 x i8] zeroinitializer }, align 32
@exit_zbud._entry_ptr = internal global ptr @exit_zbud._entry, section ".printk_index", align 4
@__initcall__kmod_zbud__228_635_init_zbud6 = internal global ptr @init_zbud, section ".initcall6.init", align 4
@__exitcall_exit_zbud = internal global ptr @exit_zbud, section ".exitcall.exit", align 4
@__UNIQUE_ID_file229 = internal constant [18 x i8] c"zbud.file=mm/zbud\00", section ".modinfo", align 1
@__UNIQUE_ID_license230 = internal constant [17 x i8] c"zbud.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author231 = internal constant [53 x i8] c"zbud.author=Seth Jennings <sjennings@variantweb.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description232 = internal constant [54 x i8] c"zbud.description=Buddy Allocator for Compressed Pages\00", section ".modinfo", align 1
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"zbud\00", [27 x i8] zeroinitializer }, align 32
@zbud_zpool_ops = internal constant { %struct.zbud_ops, [28 x i8] } { %struct.zbud_ops { ptr @zbud_zpool_evict }, [28 x i8] zeroinitializer }, align 32
@zbud_create_pool.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&pool->lock\00", [20 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@init_zbud._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 622, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\016zbud: loaded\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"init_zbud\00", [22 x i8] zeroinitializer }, align 32
@init_zbud._entry_ptr = internal global ptr @init_zbud._entry, section ".printk_index", align 4
@___asan_gen_.8 = private unnamed_addr constant [18 x i8] c"zbud_zpool_driver\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 602, i32 28 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 632, i32 2 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 603, i32 11 }
@___asan_gen_.26 = private unnamed_addr constant [15 x i8] c"zbud_zpool_ops\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 535, i32 30 }
@___asan_gen_.29 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 228, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.41 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.42 = private constant [13 x i8] c"../mm/zbud.c\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 622, i32 2 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @__UNIQUE_ID_alias226, ptr @__UNIQUE_ID_author231, ptr @__UNIQUE_ID_description232, ptr @__UNIQUE_ID_file229, ptr @__UNIQUE_ID_license230, ptr @__exitcall_exit_zbud, ptr @__initcall__kmod_zbud__228_635_init_zbud6, ptr @exit_zbud, ptr @exit_zbud._entry, ptr @exit_zbud._entry_ptr, ptr @init_zbud._entry, ptr @init_zbud._entry_ptr, ptr @zbud_zpool_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @zbud_zpool_ops, ptr @zbud_create_pool.__key, ptr @.str.4, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zbud_zpool_driver to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exit_zbud._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zbud_zpool_ops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zbud_create_pool.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_zbud._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exit_zbud() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @zpool_unregister_driver(ptr noundef nonnull @zbud_zpool_driver) #8
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zpool_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_zbud() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #11
  tail call void @zpool_register_driver(ptr noundef nonnull @zbud_zpool_driver) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @zbud_zpool_create(ptr nocapture noundef readnone %name, i32 noundef %gfp, ptr noundef %zpool_ops, ptr noundef %zpool) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %zpool_ops, null
  %cond = select i1 %tobool.not, ptr null, ptr @zbud_zpool_ops
  %and.i.i.i.i = and i32 %gfp, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %entry.kzalloc.exit.i_crit_edge, label %if.end.i.i.i.i, !prof !45

entry.kzalloc.exit.i_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %kzalloc.exit.i

if.end.i.i.i.i:                                   ; preds = %entry
  %and2.i.i.i.i = and i32 %gfp, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i.i)
  %tobool3.not.i.i.i.i = icmp eq i32 %and2.i.i.i.i, 0
  br i1 %tobool3.not.i.i.i.i, label %if.end5.i.i.i.i, label %if.end.i.i.i.i.kzalloc.exit.i_crit_edge

if.end.i.i.i.i.kzalloc.exit.i_crit_edge:          ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kzalloc.exit.i

if.end5.i.i.i.i:                                  ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %and6.i.i.i.i = and i32 %gfp, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i.i)
  %tobool7.not.i.i.i.i = icmp eq i32 %and6.i.i.i.i, 0
  %..i.i.i.i = select i1 %tobool7.not.i.i.i.i, i32 1, i32 2
  br label %kzalloc.exit.i

kzalloc.exit.i:                                   ; preds = %if.end5.i.i.i.i, %if.end.i.i.i.i.kzalloc.exit.i_crit_edge, %entry.kzalloc.exit.i_crit_edge
  %retval.0.i.i.i.i = phi i32 [ 0, %entry.kzalloc.exit.i_crit_edge ], [ 3, %if.end.i.i.i.i.kzalloc.exit.i_crit_edge ], [ %..i.i.i.i, %if.end5.i.i.i.i ]
  %or.i.i = or i32 %gfp, 256
  %arrayidx6.i.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i.i.i.i, i32 10
  %0 = ptrtoint ptr %arrayidx6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx6.i.i.i, align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef %or.i.i, i32 noundef 584) #12
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %kzalloc.exit.i.if.end_crit_edge, label %do.body.i

kzalloc.exit.i.if.end_crit_edge:                  ; preds = %kzalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.body.i:                                        ; preds = %kzalloc.exit.i
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @zbud_create_pool.__key, i16 noundef signext 3) #8
  %2 = getelementptr inbounds %struct.zbud_pool, ptr %call7.i.i.i, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.body.i
  %i.015.i = phi i32 [ 0, %do.body.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [63 x %struct.list_head], ptr %2, i32 0, i32 %i.015.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %arrayidx.i, ptr %arrayidx.i, align 4
  %prev.i.i = getelementptr [63 x %struct.list_head], ptr %2, i32 0, i32 %i.015.i, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %arrayidx.i, ptr %prev.i.i, align 8
  %inc.i = add nuw nsw i32 %i.015.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 63
  br i1 %exitcond.not.i, label %if.then, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.then:                                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %2, ptr %2, align 4
  %prev.i13.i = getelementptr inbounds %struct.zbud_pool, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i13.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %2, ptr %prev.i13.i, align 8
  %lru.i = getelementptr inbounds %struct.zbud_pool, ptr %call7.i.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %lru.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %lru.i, ptr %lru.i, align 4
  %prev.i14.i = getelementptr inbounds %struct.zbud_pool, ptr %call7.i.i.i, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %prev.i14.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %lru.i, ptr %prev.i14.i, align 8
  %pages_nr.i = getelementptr inbounds %struct.zbud_pool, ptr %call7.i.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %pages_nr.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 0, ptr %pages_nr.i, align 8
  %ops2.i = getelementptr inbounds %struct.zbud_pool, ptr %call7.i.i.i, i32 0, i32 4
  %10 = ptrtoint ptr %ops2.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %cond, ptr %ops2.i, align 8
  %zpool2 = getelementptr inbounds %struct.zbud_pool, ptr %call7.i.i.i, i32 0, i32 5
  %11 = ptrtoint ptr %zpool2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %zpool, ptr %zpool2, align 4
  %zpool_ops3 = getelementptr inbounds %struct.zbud_pool, ptr %call7.i.i.i, i32 0, i32 6
  %12 = ptrtoint ptr %zpool_ops3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %zpool_ops, ptr %zpool_ops3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %kzalloc.exit.i.if.end_crit_edge
  ret ptr %call7.i.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @zbud_zpool_destroy(ptr noundef %pool) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %pool) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zbud_zpool_malloc(ptr noundef %pool, i32 noundef %size, i32 noundef %gfp, ptr nocapture noundef writeonly %handle) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool.not.i = icmp ne i32 %size, 0
  %and.i = and i32 %gfp, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  %or.cond.i = and i1 %tobool.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %if.end.i, label %entry.zbud_alloc.exit_crit_edge

entry.zbud_alloc.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %zbud_alloc.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3968, i32 %size)
  %cmp.i = icmp ugt i32 %size, 3968
  br i1 %cmp.i, label %if.end.i.zbud_alloc.exit_crit_edge, label %for.body.lr.ph.i

if.end.i.zbud_alloc.exit_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %zbud_alloc.exit

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %sub.i.i = add nuw nsw i32 %size, 63
  %shr.i.i = lshr i32 %sub.i.i, 6
  tail call void @_raw_spin_lock(ptr noundef %pool) #8
  %0 = getelementptr inbounds %struct.zbud_pool, ptr %pool, i32 0, i32 1
  %umax.i = tail call i32 @llvm.umax.i32(i32 %shr.i.i, i32 62) #8
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.0120.i, 1
  %exitcond.not.i = icmp eq i32 %i.0120.i, %umax.i
  br i1 %exitcond.not.i, label %for.end.i, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0120.i = phi i32 [ %shr.i.i, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [63 x %struct.list_head], ptr %0, i32 0, i32 %i.0120.i
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %arrayidx.i, align 4
  %cmp.i.not.i = icmp eq ptr %2, %arrayidx.i
  br i1 %cmp.i.not.i, label %for.cond.i, label %if.then7.i

if.then7.i:                                       ; preds = %for.body.i
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then7.i.found.i_crit_edge

if.then7.i.found.i_crit_edge:                     ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %found.i

if.end.i.i.i:                                     ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %found.i

for.end.i:                                        ; preds = %for.cond.i
  tail call void @_raw_spin_unlock(ptr noundef %pool) #8
  %call38.i.i.i.i = tail call ptr @__alloc_pages(i32 noundef %gfp, i32 noundef 0, i32 noundef 0, ptr noundef null) #8
  %tobool15.not.i = icmp eq ptr %call38.i.i.i.i, null
  br i1 %tobool15.not.i, label %for.end.i.zbud_alloc.exit_crit_edge, label %found.thread.i

for.end.i.zbud_alloc.exit_crit_edge:              ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %zbud_alloc.exit

found.thread.i:                                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_lock(ptr noundef %pool) #8
  %pages_nr.i = getelementptr inbounds %struct.zbud_pool, ptr %pool, i32 0, i32 3
  %9 = ptrtoint ptr %pages_nr.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %pages_nr.i, align 8
  %inc19.i = add i64 %10, 1
  store i64 %inc19.i, ptr %pages_nr.i, align 8
  %call.i.i = tail call ptr @page_address(ptr noundef nonnull %call38.i.i.i.i) #8
  %first_chunks.i.i = getelementptr inbounds %struct.zbud_header, ptr %call.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %first_chunks.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %first_chunks.i.i, align 4
  %last_chunks.i.i = getelementptr inbounds %struct.zbud_header, ptr %call.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %last_chunks.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %last_chunks.i.i, align 4
  %13 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %call.i.i, ptr %call.i.i, align 4
  %prev.i.i84.i = getelementptr inbounds %struct.list_head, ptr %call.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i84.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i.i, ptr %prev.i.i84.i, align 4
  %lru.i.i = getelementptr inbounds %struct.zbud_header, ptr %call.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %lru.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %lru.i.i, ptr %lru.i.i, align 4
  %prev.i6.i.i = getelementptr inbounds %struct.zbud_header, ptr %call.i.i, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %prev.i6.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %lru.i.i, ptr %prev.i6.i.i, align 4
  %under_reclaim.i.i = getelementptr inbounds %struct.zbud_header, ptr %call.i.i, i32 0, i32 4
  %17 = ptrtoint ptr %under_reclaim.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %under_reclaim.i.i, align 4
  br label %if.then22.i

found.i:                                          ; preds = %if.end.i.i.i, %if.then7.i.found.i_crit_edge
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 256 to ptr), ptr %2, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %first_chunks.i = getelementptr inbounds %struct.zbud_header, ptr %2, i32 0, i32 2
  %20 = ptrtoint ptr %first_chunks.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %first_chunks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp9.i = icmp eq i32 %21, 0
  br i1 %cmp9.i, label %found.i.if.then22.i_crit_edge, label %if.else24.i

found.i.if.then22.i_crit_edge:                    ; preds = %found.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then22.i

if.then22.i:                                      ; preds = %found.i.if.then22.i_crit_edge, %found.thread.i
  %zhdr.0113.i = phi ptr [ %call.i.i, %found.thread.i ], [ %2, %found.i.if.then22.i_crit_edge ]
  %first_chunks23.i = getelementptr inbounds %struct.zbud_header, ptr %zhdr.0113.i, i32 0, i32 2
  br label %if.end25.i

if.else24.i:                                      ; preds = %found.i
  call void @__sanitizer_cov_trace_pc() #10
  %last_chunks.i = getelementptr inbounds %struct.zbud_header, ptr %2, i32 0, i32 3
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.else24.i, %if.then22.i
  %last_chunks.sink.i = phi ptr [ %last_chunks.i, %if.else24.i ], [ %first_chunks23.i, %if.then22.i ]
  %cmp.i107.i = phi i1 [ false, %if.else24.i ], [ true, %if.then22.i ]
  %zhdr.0114.i = phi ptr [ %2, %if.else24.i ], [ %zhdr.0113.i, %if.then22.i ]
  %22 = ptrtoint ptr %last_chunks.sink.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %shr.i.i, ptr %last_chunks.sink.i, align 4
  %first_chunks26.i = getelementptr inbounds %struct.zbud_header, ptr %zhdr.0114.i, i32 0, i32 2
  %23 = ptrtoint ptr %first_chunks26.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %first_chunks26.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp27.i = icmp eq i32 %24, 0
  br i1 %cmp27.i, label %if.end25.i.if.then31.i_crit_edge, label %lor.lhs.false28.i

if.end25.i.if.then31.i_crit_edge:                 ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then31.i

lor.lhs.false28.i:                                ; preds = %if.end25.i
  %last_chunks29.i = getelementptr inbounds %struct.zbud_header, ptr %zhdr.0114.i, i32 0, i32 3
  %25 = ptrtoint ptr %last_chunks29.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %last_chunks29.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp30.i = icmp eq i32 %26, 0
  br i1 %cmp30.i, label %lor.lhs.false28.i.if.then31.i_crit_edge, label %if.else35.i

lor.lhs.false28.i.if.then31.i_crit_edge:          ; preds = %lor.lhs.false28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then31.i

if.then31.i:                                      ; preds = %lor.lhs.false28.i.if.then31.i_crit_edge, %if.end25.i.if.then31.i_crit_edge
  %last_chunks.i86.i = getelementptr inbounds %struct.zbud_header, ptr %zhdr.0114.i, i32 0, i32 3
  %27 = ptrtoint ptr %last_chunks.i86.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %last_chunks.i86.i, align 4
  %29 = add i32 %24, %28
  %sub1.i.i = sub i32 63, %29
  %arrayidx34.i = getelementptr [63 x %struct.list_head], ptr %0, i32 0, i32 %sub1.i.i
  %30 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx34.i, align 4
  %call.i.i87.i = tail call zeroext i1 @__list_add_valid(ptr noundef %zhdr.0114.i, ptr noundef %arrayidx34.i, ptr noundef %31) #8
  br i1 %call.i.i87.i, label %if.then31.i.if.end37.sink.split.i_crit_edge, label %if.then31.i.if.end37.i_crit_edge

if.then31.i.if.end37.i_crit_edge:                 ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37.i

if.then31.i.if.end37.sink.split.i_crit_edge:      ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37.sink.split.i

if.else35.i:                                      ; preds = %lor.lhs.false28.i
  %32 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %0, align 4
  %call.i.i89.i = tail call zeroext i1 @__list_add_valid(ptr noundef %zhdr.0114.i, ptr noundef %0, ptr noundef %33) #8
  br i1 %call.i.i89.i, label %if.else35.i.if.end37.sink.split.i_crit_edge, label %if.else35.i.if.end37.i_crit_edge

if.else35.i.if.end37.i_crit_edge:                 ; preds = %if.else35.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37.i

if.else35.i.if.end37.sink.split.i_crit_edge:      ; preds = %if.else35.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37.sink.split.i

if.end37.sink.split.i:                            ; preds = %if.else35.i.if.end37.sink.split.i_crit_edge, %if.then31.i.if.end37.sink.split.i_crit_edge
  %.sink125.i = phi ptr [ %31, %if.then31.i.if.end37.sink.split.i_crit_edge ], [ %33, %if.else35.i.if.end37.sink.split.i_crit_edge ]
  %.sink123.i = phi ptr [ %arrayidx34.i, %if.then31.i.if.end37.sink.split.i_crit_edge ], [ %0, %if.else35.i.if.end37.sink.split.i_crit_edge ]
  %prev1.i.i90.i = getelementptr inbounds %struct.list_head, ptr %.sink125.i, i32 0, i32 1
  %34 = ptrtoint ptr %prev1.i.i90.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %zhdr.0114.i, ptr %prev1.i.i90.i, align 4
  %35 = ptrtoint ptr %zhdr.0114.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %.sink125.i, ptr %zhdr.0114.i, align 4
  %prev3.i.i91.i = getelementptr inbounds %struct.list_head, ptr %zhdr.0114.i, i32 0, i32 1
  %36 = ptrtoint ptr %prev3.i.i91.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %.sink123.i, ptr %prev3.i.i91.i, align 4
  %37 = ptrtoint ptr %.sink123.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %zhdr.0114.i, ptr %.sink123.i, align 4
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.end37.sink.split.i, %if.else35.i.if.end37.i_crit_edge, %if.then31.i.if.end37.i_crit_edge
  %lru.i = getelementptr inbounds %struct.zbud_header, ptr %zhdr.0114.i, i32 0, i32 1
  %38 = ptrtoint ptr %lru.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile ptr, ptr %lru.i, align 4
  %cmp.i94.not.i = icmp eq ptr %39, %lru.i
  br i1 %cmp.i94.not.i, label %if.end37.i.if.end42.i_crit_edge, label %if.then40.i

if.end37.i.if.end42.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42.i

if.then40.i:                                      ; preds = %if.end37.i
  %call.i.i96.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %lru.i) #8
  br i1 %call.i.i96.i, label %if.end.i.i99.i, label %if.then40.i.list_del.exit101.i_crit_edge

if.then40.i.list_del.exit101.i_crit_edge:         ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit101.i

if.end.i.i99.i:                                   ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i97.i = getelementptr inbounds %struct.zbud_header, ptr %zhdr.0114.i, i32 0, i32 1, i32 1
  %40 = ptrtoint ptr %prev.i.i97.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prev.i.i97.i, align 4
  %42 = ptrtoint ptr %lru.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %lru.i, align 4
  %prev1.i.i.i98.i = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %prev1.i.i.i98.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %prev1.i.i.i98.i, align 4
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %43, ptr %41, align 4
  br label %list_del.exit101.i

list_del.exit101.i:                               ; preds = %if.end.i.i99.i, %if.then40.i.list_del.exit101.i_crit_edge
  %46 = ptrtoint ptr %lru.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr inttoptr (i32 256 to ptr), ptr %lru.i, align 4
  %prev.i100.i = getelementptr inbounds %struct.zbud_header, ptr %zhdr.0114.i, i32 0, i32 1, i32 1
  %47 = ptrtoint ptr %prev.i100.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i100.i, align 4
  br label %if.end42.i

if.end42.i:                                       ; preds = %list_del.exit101.i, %if.end37.i.if.end42.i_crit_edge
  %lru44.i = getelementptr inbounds %struct.zbud_pool, ptr %pool, i32 0, i32 2
  %48 = ptrtoint ptr %lru44.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %lru44.i, align 4
  %call.i.i102.i = tail call zeroext i1 @__list_add_valid(ptr noundef %lru.i, ptr noundef %lru44.i, ptr noundef %49) #8
  br i1 %call.i.i102.i, label %if.end.i.i105.i, label %if.end42.i.list_add.exit106.i_crit_edge

if.end42.i.list_add.exit106.i_crit_edge:          ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add.exit106.i

if.end.i.i105.i:                                  ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i103.i = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %prev1.i.i103.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %lru.i, ptr %prev1.i.i103.i, align 4
  %51 = ptrtoint ptr %lru.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %49, ptr %lru.i, align 4
  %prev3.i.i104.i = getelementptr inbounds %struct.zbud_header, ptr %zhdr.0114.i, i32 0, i32 1, i32 1
  %52 = ptrtoint ptr %prev3.i.i104.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %lru44.i, ptr %prev3.i.i104.i, align 4
  %53 = ptrtoint ptr %lru44.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %lru.i, ptr %lru44.i, align 4
  br label %list_add.exit106.i

list_add.exit106.i:                               ; preds = %if.end.i.i105.i, %if.end42.i.list_add.exit106.i_crit_edge
  %54 = ptrtoint ptr %zhdr.0114.i to i32
  br i1 %cmp.i107.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %list_add.exit106.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.i.i = add i32 %54, 64
  br label %encode_handle.exit.i

if.else.i.i:                                      ; preds = %list_add.exit106.i
  call void @__sanitizer_cov_trace_pc() #10
  %last_chunks.i108.i = getelementptr inbounds %struct.zbud_header, ptr %zhdr.0114.i, i32 0, i32 3
  %55 = ptrtoint ptr %last_chunks.i108.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %last_chunks.i108.i, align 4
  %shl.neg.i.i = mul i32 %56, -64
  %sub.i109.i = add i32 %54, 4096
  %add1.i.i = add i32 %sub.i109.i, %shl.neg.i.i
  br label %encode_handle.exit.i

encode_handle.exit.i:                             ; preds = %if.else.i.i, %if.then.i.i
  %handle.0.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ %add1.i.i, %if.else.i.i ]
  %57 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %handle.0.i.i, ptr %handle, align 4
  tail call void @_raw_spin_unlock(ptr noundef %pool) #8
  br label %zbud_alloc.exit

zbud_alloc.exit:                                  ; preds = %encode_handle.exit.i, %for.end.i.zbud_alloc.exit_crit_edge, %if.end.i.zbud_alloc.exit_crit_edge, %entry.zbud_alloc.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %encode_handle.exit.i ], [ -22, %entry.zbud_alloc.exit_crit_edge ], [ -28, %if.end.i.zbud_alloc.exit_crit_edge ], [ -12, %for.end.i.zbud_alloc.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @zbud_zpool_free(ptr noundef %pool, i32 noundef %handle) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef %pool) #8
  %and.i.i = and i32 %handle, -4096
  %0 = inttoptr i32 %and.i.i to ptr
  %sub.i = add i32 %handle, 4032
  %and.i = and i32 %sub.i, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %last_chunks.i = getelementptr inbounds %struct.zbud_header, ptr %0, i32 0, i32 3
  %1 = ptrtoint ptr %last_chunks.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %last_chunks.i, align 4
  br label %if.end.i

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %first_chunks.i = getelementptr inbounds %struct.zbud_header, ptr %0, i32 0, i32 2
  %2 = ptrtoint ptr %first_chunks.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %first_chunks.i, align 16
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %under_reclaim.i = getelementptr inbounds %struct.zbud_header, ptr %0, i32 0, i32 4
  %3 = ptrtoint ptr %under_reclaim.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %under_reclaim.i, align 8, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool1.not.i = icmp eq i8 %4, 0
  br i1 %tobool1.not.i, label %if.end4.i, label %if.end.i.zbud_free.exit_crit_edge

if.end.i.zbud_free.exit_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %zbud_free.exit

if.end4.i:                                        ; preds = %if.end.i
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end4.i.list_del.exit.i_crit_edge

if.end4.i.list_del.exit.i_crit_edge:              ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i.i, align 4
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %0, align 4096
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end4.i.list_del.exit.i_crit_edge
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %0, align 4096
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %first_chunks5.i = getelementptr inbounds %struct.zbud_header, ptr %0, i32 0, i32 2
  %13 = ptrtoint ptr %first_chunks5.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %first_chunks5.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i = icmp eq i32 %14, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %list_del.exit.i.if.else9.i_crit_edge

list_del.exit.i.if.else9.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else9.i

land.lhs.true.i:                                  ; preds = %list_del.exit.i
  %last_chunks6.i = getelementptr inbounds %struct.zbud_header, ptr %0, i32 0, i32 3
  %15 = ptrtoint ptr %last_chunks6.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %last_chunks6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp7.i = icmp eq i32 %16, 0
  br i1 %cmp7.i, label %if.then8.i, label %land.lhs.true.i.if.else9.i_crit_edge

land.lhs.true.i.if.else9.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else9.i

if.then8.i:                                       ; preds = %land.lhs.true.i
  %lru.i = getelementptr inbounds %struct.zbud_header, ptr %0, i32 0, i32 1
  %call.i.i29.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %lru.i) #8
  br i1 %call.i.i29.i, label %if.end.i.i32.i, label %if.then8.i.list_del.exit34.i_crit_edge

if.then8.i.list_del.exit34.i_crit_edge:           ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit34.i

if.end.i.i32.i:                                   ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i30.i = getelementptr inbounds %struct.zbud_header, ptr %0, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %prev.i.i30.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i30.i, align 4
  %19 = ptrtoint ptr %lru.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %lru.i, align 8
  %prev1.i.i.i31.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i31.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i31.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %list_del.exit34.i

list_del.exit34.i:                                ; preds = %if.end.i.i32.i, %if.then8.i.list_del.exit34.i_crit_edge
  %23 = ptrtoint ptr %lru.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 256 to ptr), ptr %lru.i, align 8
  %prev.i33.i = getelementptr inbounds %struct.zbud_header, ptr %0, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %prev.i33.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i33.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %25 = load ptr, ptr @mem_map, align 4
  %sub.i.i = add i32 %and.i.i, 1073741824
  %shr.i.i = lshr exact i32 %sub.i.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %25, i32 %shr.i.i
  tail call void @__free_pages(ptr noundef %add.ptr.i.i, i32 noundef 0) #8
  %pages_nr.i = getelementptr inbounds %struct.zbud_pool, ptr %pool, i32 0, i32 3
  %26 = ptrtoint ptr %pages_nr.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %pages_nr.i, align 8
  %dec.i = add i64 %27, -1
  store i64 %dec.i, ptr %pages_nr.i, align 8
  br label %zbud_free.exit

if.else9.i:                                       ; preds = %land.lhs.true.i.if.else9.i_crit_edge, %list_del.exit.i.if.else9.i_crit_edge
  %last_chunks.i.i = getelementptr inbounds %struct.zbud_header, ptr %0, i32 0, i32 3
  %28 = ptrtoint ptr %last_chunks.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %last_chunks.i.i, align 4
  %30 = add i32 %14, %29
  %sub1.i.i = sub i32 63, %30
  %31 = getelementptr inbounds %struct.zbud_pool, ptr %pool, i32 0, i32 1
  %arrayidx.i = getelementptr [63 x %struct.list_head], ptr %31, i32 0, i32 %sub1.i.i
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.i, align 4
  %call.i.i35.i = tail call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %arrayidx.i, ptr noundef %33) #8
  br i1 %call.i.i35.i, label %if.end.i.i36.i, label %if.else9.i.zbud_free.exit_crit_edge

if.else9.i.zbud_free.exit_crit_edge:              ; preds = %if.else9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %zbud_free.exit

if.end.i.i36.i:                                   ; preds = %if.else9.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %0, ptr %prev1.i.i.i, align 4
  %35 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %33, ptr %0, align 4096
  %36 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %arrayidx.i, ptr %prev.i.i, align 4
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %0, ptr %arrayidx.i, align 4
  br label %zbud_free.exit

zbud_free.exit:                                   ; preds = %if.end.i.i36.i, %if.else9.i.zbud_free.exit_crit_edge, %list_del.exit34.i, %if.end.i.zbud_free.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %pool) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zbud_zpool_shrink(ptr noundef %pool, i32 noundef %pages, ptr noundef writeonly %reclaimed) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pages)
  %cmp20.not = icmp eq i32 %pages, 0
  br i1 %cmp20.not, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %ops.i = getelementptr inbounds %struct.zbud_pool, ptr %pool, i32 0, i32 4
  %lru.i = getelementptr inbounds %struct.zbud_pool, ptr %pool, i32 0, i32 2
  %prev.i = getelementptr inbounds %struct.zbud_pool, ptr %pool, i32 0, i32 2, i32 1
  %0 = getelementptr inbounds %struct.zbud_pool, ptr %pool, i32 0, i32 1
  %pages_nr.i = getelementptr inbounds %struct.zbud_pool, ptr %pool, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %total.021 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %if.end.while.body_crit_edge ]
  tail call void @_raw_spin_lock(ptr noundef %pool) #8
  %1 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ops.i, align 8
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %while.body.zbud_reclaim_page.exit.thread_crit_edge, label %lor.lhs.false.i

while.body.zbud_reclaim_page.exit.thread_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %zbud_reclaim_page.exit.thread

lor.lhs.false.i:                                  ; preds = %while.body
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %tobool2.not.i = icmp eq ptr %4, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i.zbud_reclaim_page.exit.thread_crit_edge, label %lor.lhs.false3.i

lor.lhs.false.i.zbud_reclaim_page.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %zbud_reclaim_page.exit.thread

lor.lhs.false3.i:                                 ; preds = %lor.lhs.false.i
  %5 = ptrtoint ptr %lru.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %lru.i, align 4
  %cmp.i.not.i = icmp eq ptr %6, %lru.i
  br i1 %cmp.i.not.i, label %lor.lhs.false3.i.zbud_reclaim_page.exit.thread_crit_edge, label %lor.lhs.false3.i.for.body.i_crit_edge

lor.lhs.false3.i.for.body.i_crit_edge:            ; preds = %lor.lhs.false3.i
  br label %for.body.i

lor.lhs.false3.i.zbud_reclaim_page.exit.thread_crit_edge: ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %zbud_reclaim_page.exit.thread

for.body.i:                                       ; preds = %list_add.exit20.i.for.body.i_crit_edge, %lor.lhs.false3.i.for.body.i_crit_edge
  %i.030.i = phi i32 [ %inc.i, %list_add.exit20.i.for.body.i_crit_edge ], [ 0, %lor.lhs.false3.i.for.body.i_crit_edge ]
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 -8
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %8) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i.i, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %8, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %15 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 256 to ptr), ptr %8, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %call.i.i1.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %add.ptr.i) #8
  br i1 %call.i.i1.i, label %if.end.i.i4.i, label %list_del.exit.i.list_del.exit6.i_crit_edge

list_del.exit.i.list_del.exit6.i_crit_edge:       ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit6.i

if.end.i.i4.i:                                    ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i2.i = getelementptr i8, ptr %8, i32 -4
  %17 = ptrtoint ptr %prev.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i2.i, align 4
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr.i, align 4
  %prev1.i.i.i3.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i3.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i3.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %list_del.exit6.i

list_del.exit6.i:                                 ; preds = %if.end.i.i4.i, %list_del.exit.i.list_del.exit6.i_crit_edge
  %23 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 256 to ptr), ptr %add.ptr.i, align 4
  %prev.i5.i = getelementptr i8, ptr %8, i32 -4
  %24 = ptrtoint ptr %prev.i5.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i5.i, align 4
  %under_reclaim.i = getelementptr i8, ptr %8, i32 16
  %25 = ptrtoint ptr %under_reclaim.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %under_reclaim.i, align 4
  %first_chunks.i = getelementptr i8, ptr %8, i32 8
  %26 = ptrtoint ptr %first_chunks.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %first_chunks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool10.not.i = icmp eq i32 %27, 0
  %28 = ptrtoint ptr %add.ptr.i to i32
  %add.i.i = add i32 %28, 64
  %first_handle.0.i = select i1 %tobool10.not.i, i32 0, i32 %add.i.i
  %last_chunks.i = getelementptr i8, ptr %8, i32 12
  %29 = ptrtoint ptr %last_chunks.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %last_chunks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool14.not.i = icmp eq i32 %30, 0
  br i1 %tobool14.not.i, label %if.end17.thread.i, label %if.end17.i

if.end17.i:                                       ; preds = %list_del.exit6.i
  %shl.neg.i.i = mul i32 %30, -64
  %sub.i.i = add i32 %28, 4096
  %add1.i.i = add i32 %sub.i.i, %shl.neg.i.i
  tail call void @_raw_spin_unlock(ptr noundef %pool) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %first_handle.0.i)
  %tobool19.not.i = icmp eq i32 %first_handle.0.i, 0
  br i1 %tobool19.not.i, label %if.end27.i, label %if.end17.i.if.then20.i_crit_edge

if.end17.i.if.then20.i_crit_edge:                 ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then20.i

if.end17.thread.i:                                ; preds = %list_del.exit6.i
  tail call void @_raw_spin_unlock(ptr noundef %pool) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %first_handle.0.i)
  %tobool19.not22.i = icmp eq i32 %first_handle.0.i, 0
  br i1 %tobool19.not22.i, label %if.end17.thread.i.next.i_crit_edge, label %if.end17.thread.i.if.then20.i_crit_edge

if.end17.thread.i.if.then20.i_crit_edge:          ; preds = %if.end17.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then20.i

if.end17.thread.i.next.i_crit_edge:               ; preds = %if.end17.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %next.i

if.then20.i:                                      ; preds = %if.end17.thread.i.if.then20.i_crit_edge, %if.end17.i.if.then20.i_crit_edge
  %last_handle.025.i = phi i32 [ 0, %if.end17.thread.i.if.then20.i_crit_edge ], [ %add1.i.i, %if.end17.i.if.then20.i_crit_edge ]
  %31 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ops.i, align 8
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %call23.i = tail call i32 %34(ptr noundef %pool, i32 noundef %first_handle.0.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp ne i32 %call23.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %last_handle.025.i)
  %tobool28.not.i = icmp eq i32 %last_handle.025.i, 0
  %or.cond.i = select i1 %tobool24.not.i, i1 true, i1 %tobool28.not.i
  br i1 %or.cond.i, label %if.then20.i.next.i_crit_edge, label %if.then20.i.if.then29.i_crit_edge

if.then20.i.if.then29.i_crit_edge:                ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then29.i

if.then20.i.next.i_crit_edge:                     ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %next.i

if.end27.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add1.i.i)
  %tobool28.not.old.i = icmp eq i32 %add1.i.i, 0
  br i1 %tobool28.not.old.i, label %if.end27.i.next.i_crit_edge, label %if.end27.i.if.then29.i_crit_edge

if.end27.i.if.then29.i_crit_edge:                 ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then29.i

if.end27.i.next.i_crit_edge:                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %next.i

if.then29.i:                                      ; preds = %if.end27.i.if.then29.i_crit_edge, %if.then20.i.if.then29.i_crit_edge
  %last_handle.024.i = phi i32 [ %last_handle.025.i, %if.then20.i.if.then29.i_crit_edge ], [ %add1.i.i, %if.end27.i.if.then29.i_crit_edge ]
  %35 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ops.i, align 8
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  %call32.i = tail call i32 %38(ptr noundef %pool, i32 noundef %last_handle.024.i) #8
  br label %next.i

next.i:                                           ; preds = %if.then29.i, %if.end27.i.next.i_crit_edge, %if.then20.i.next.i_crit_edge, %if.end17.thread.i.next.i_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %pool) #8
  %39 = ptrtoint ptr %under_reclaim.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %under_reclaim.i, align 4
  %40 = ptrtoint ptr %first_chunks.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %first_chunks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp40.i = icmp eq i32 %41, 0
  %42 = ptrtoint ptr %last_chunks.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %last_chunks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp42.i = icmp eq i32 %43, 0
  br i1 %cmp40.i, label %land.lhs.true.i, label %lor.lhs.false47.i

land.lhs.true.i:                                  ; preds = %next.i
  br i1 %cmp42.i, label %if.end, label %land.lhs.true.i.if.then50.i_crit_edge

land.lhs.true.i.if.then50.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then50.i

lor.lhs.false47.i:                                ; preds = %next.i
  br i1 %cmp42.i, label %lor.lhs.false47.i.if.then50.i_crit_edge, label %if.else53.i

lor.lhs.false47.i.if.then50.i_crit_edge:          ; preds = %lor.lhs.false47.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then50.i

if.then50.i:                                      ; preds = %lor.lhs.false47.i.if.then50.i_crit_edge, %land.lhs.true.i.if.then50.i_crit_edge
  %44 = add i32 %41, %43
  %sub1.i.i = sub i32 63, %44
  %arrayidx.i = getelementptr [63 x %struct.list_head], ptr %0, i32 0, i32 %sub1.i.i
  %45 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx.i, align 4
  %call.i.i9.i = tail call zeroext i1 @__list_add_valid(ptr noundef %add.ptr.i, ptr noundef %arrayidx.i, ptr noundef %46) #8
  br i1 %call.i.i9.i, label %if.then50.i.if.end56.sink.split.i_crit_edge, label %if.then50.i.if.end56.i_crit_edge

if.then50.i.if.end56.i_crit_edge:                 ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56.i

if.then50.i.if.end56.sink.split.i_crit_edge:      ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56.sink.split.i

if.else53.i:                                      ; preds = %lor.lhs.false47.i
  %47 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %0, align 4
  %call.i.i11.i = tail call zeroext i1 @__list_add_valid(ptr noundef %add.ptr.i, ptr noundef %0, ptr noundef %48) #8
  br i1 %call.i.i11.i, label %if.else53.i.if.end56.sink.split.i_crit_edge, label %if.else53.i.if.end56.i_crit_edge

if.else53.i.if.end56.i_crit_edge:                 ; preds = %if.else53.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56.i

if.else53.i.if.end56.sink.split.i_crit_edge:      ; preds = %if.else53.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56.sink.split.i

if.end56.sink.split.i:                            ; preds = %if.else53.i.if.end56.sink.split.i_crit_edge, %if.then50.i.if.end56.sink.split.i_crit_edge
  %.sink35.i = phi ptr [ %46, %if.then50.i.if.end56.sink.split.i_crit_edge ], [ %48, %if.else53.i.if.end56.sink.split.i_crit_edge ]
  %.sink33.i = phi ptr [ %arrayidx.i, %if.then50.i.if.end56.sink.split.i_crit_edge ], [ %0, %if.else53.i.if.end56.sink.split.i_crit_edge ]
  %prev1.i.i12.i = getelementptr inbounds %struct.list_head, ptr %.sink35.i, i32 0, i32 1
  %49 = ptrtoint ptr %prev1.i.i12.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %add.ptr.i, ptr %prev1.i.i12.i, align 4
  %50 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %.sink35.i, ptr %add.ptr.i, align 4
  %51 = ptrtoint ptr %prev.i5.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %.sink33.i, ptr %prev.i5.i, align 4
  %52 = ptrtoint ptr %.sink33.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %add.ptr.i, ptr %.sink33.i, align 4
  br label %if.end56.i

if.end56.i:                                       ; preds = %if.end56.sink.split.i, %if.else53.i.if.end56.i_crit_edge, %if.then50.i.if.end56.i_crit_edge
  %53 = ptrtoint ptr %lru.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %lru.i, align 4
  %call.i.i16.i = tail call zeroext i1 @__list_add_valid(ptr noundef %8, ptr noundef %lru.i, ptr noundef %54) #8
  br i1 %call.i.i16.i, label %if.end.i.i19.i, label %if.end56.i.list_add.exit20.i_crit_edge

if.end56.i.list_add.exit20.i_crit_edge:           ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add.exit20.i

if.end.i.i19.i:                                   ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i17.i = getelementptr inbounds %struct.list_head, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %prev1.i.i17.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %8, ptr %prev1.i.i17.i, align 4
  %56 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %54, ptr %8, align 4
  %57 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %lru.i, ptr %prev.i.i, align 4
  %58 = ptrtoint ptr %lru.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %8, ptr %lru.i, align 4
  br label %list_add.exit20.i

list_add.exit20.i:                                ; preds = %if.end.i.i19.i, %if.end56.i.list_add.exit20.i_crit_edge
  %inc.i = add nuw nsw i32 %i.030.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 8
  br i1 %exitcond.not.i, label %list_add.exit20.i.zbud_reclaim_page.exit.thread_crit_edge, label %list_add.exit20.i.for.body.i_crit_edge

list_add.exit20.i.for.body.i_crit_edge:           ; preds = %list_add.exit20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

list_add.exit20.i.zbud_reclaim_page.exit.thread_crit_edge: ; preds = %list_add.exit20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %zbud_reclaim_page.exit.thread

zbud_reclaim_page.exit.thread:                    ; preds = %list_add.exit20.i.zbud_reclaim_page.exit.thread_crit_edge, %lor.lhs.false3.i.zbud_reclaim_page.exit.thread_crit_edge, %lor.lhs.false.i.zbud_reclaim_page.exit.thread_crit_edge, %while.body.zbud_reclaim_page.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -11, %list_add.exit20.i.zbud_reclaim_page.exit.thread_crit_edge ], [ -22, %while.body.zbud_reclaim_page.exit.thread_crit_edge ], [ -22, %lor.lhs.false.i.zbud_reclaim_page.exit.thread_crit_edge ], [ -22, %lor.lhs.false3.i.zbud_reclaim_page.exit.thread_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %pool) #8
  br label %while.end

if.end:                                           ; preds = %land.lhs.true.i
  %59 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %60 = load ptr, ptr @mem_map, align 4
  %sub.i7.i = add i32 %59, 1073741824
  %shr.i.i = lshr i32 %sub.i7.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %60, i32 %shr.i.i
  tail call void @__free_pages(ptr noundef %add.ptr.i.i, i32 noundef 0) #8
  %61 = ptrtoint ptr %pages_nr.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %pages_nr.i, align 8
  %dec.i = add i64 %62, -1
  store i64 %dec.i, ptr %pages_nr.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %pool) #8
  %inc = add nuw i32 %total.021, 1
  %exitcond.not = icmp eq i32 %inc, %pages
  br i1 %exitcond.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %zbud_reclaim_page.exit.thread, %entry.while.end_crit_edge
  %total.018 = phi i32 [ %total.021, %zbud_reclaim_page.exit.thread ], [ 0, %entry.while.end_crit_edge ], [ %pages, %if.end.while.end_crit_edge ]
  %ret.1 = phi i32 [ %retval.0.i.ph, %zbud_reclaim_page.exit.thread ], [ -22, %entry.while.end_crit_edge ], [ 0, %if.end.while.end_crit_edge ]
  %tobool.not = icmp eq ptr %reclaimed, null
  br i1 %tobool.not, label %while.end.if.end3_crit_edge, label %if.then2

while.end.if.end3_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.then2:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %63 = ptrtoint ptr %reclaimed to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %total.018, ptr %reclaimed, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %while.end.if.end3_crit_edge
  ret i32 %ret.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @zbud_zpool_map(ptr nocapture noundef readnone %pool, i32 noundef %handle, i32 noundef %mm) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %handle to ptr
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @zbud_zpool_unmap(ptr nocapture noundef %pool, i32 noundef %handle) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @zbud_zpool_total_size(ptr nocapture noundef readonly %pool) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pages_nr.i = getelementptr inbounds %struct.zbud_pool, ptr %pool, i32 0, i32 3
  %0 = ptrtoint ptr %pages_nr.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pages_nr.i, align 8
  %mul = shl i64 %1, 12
  ret i64 %mul
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zbud_zpool_evict(ptr nocapture noundef readonly %pool, i32 noundef %handle) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %zpool = getelementptr inbounds %struct.zbud_pool, ptr %pool, i32 0, i32 5
  %0 = ptrtoint ptr %zpool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %zpool, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %land.lhs.true

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

land.lhs.true:                                    ; preds = %entry
  %zpool_ops = getelementptr inbounds %struct.zbud_pool, ptr %pool, i32 0, i32 6
  %2 = ptrtoint ptr %zpool_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %zpool_ops, align 8
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %land.lhs.true.return_crit_edge, label %land.lhs.true2

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

land.lhs.true2:                                   ; preds = %land.lhs.true
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %land.lhs.true2.return_crit_edge, label %if.then

land.lhs.true2.return_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 %5(ptr noundef nonnull %1, i32 noundef %handle) #8
  br label %return

return:                                           ; preds = %if.then, %land.lhs.true2.return_crit_edge, %land.lhs.true.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ -2, %land.lhs.true2.return_crit_edge ], [ -2, %land.lhs.true.return_crit_edge ], [ -2, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @zpool_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !14, !15, !17, !19, !21, !23, !25, !26, !28, !30, !32, !33, !34}
!llvm.named.register.sp = !{!35}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @__UNIQUE_ID_alias226, !1, !"__UNIQUE_ID_alias226", i1 false, i1 false}
!1 = !{!"../mm/zbud.c", i32 616, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../mm/zbud.c", i32 632, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @exit_zbud._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @exit_zbud._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @__initcall__kmod_zbud__228_635_init_zbud6, !9, !"__initcall__kmod_zbud__228_635_init_zbud6", i1 false, i1 false}
!9 = !{!"../mm/zbud.c", i32 635, i32 1}
!10 = !{ptr @__exitcall_exit_zbud, !11, !"__exitcall_exit_zbud", i1 false, i1 false}
!11 = !{!"../mm/zbud.c", i32 636, i32 1}
!12 = !{ptr @__UNIQUE_ID_file229, !13, !"__UNIQUE_ID_file229", i1 false, i1 false}
!13 = !{!"../mm/zbud.c", i32 638, i32 1}
!14 = !{ptr @__UNIQUE_ID_license230, !13, !"__UNIQUE_ID_license230", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_author231, !16, !"__UNIQUE_ID_author231", i1 false, i1 false}
!16 = !{!"../mm/zbud.c", i32 639, i32 1}
!17 = !{ptr @__UNIQUE_ID_description232, !18, !"__UNIQUE_ID_description232", i1 false, i1 false}
!18 = !{!"../mm/zbud.c", i32 640, i32 1}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../mm/zbud.c", i32 603, i32 11}
!21 = !{ptr @zbud_zpool_driver, !22, !"zbud_zpool_driver", i1 false, i1 false}
!22 = !{!"../mm/zbud.c", i32 602, i32 28}
!23 = !{ptr @zbud_create_pool.__key, !24, !"__key", i1 false, i1 false}
!24 = !{!"../mm/zbud.c", i32 228, i32 2}
!25 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @zbud_zpool_ops, !27, !"zbud_zpool_ops", i1 false, i1 false}
!27 = !{!"../mm/zbud.c", i32 535, i32 30}
!28 = distinct !{null, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!30 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../mm/zbud.c", i32 622, i32 2}
!32 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @init_zbud._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @init_zbud._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{!"sp"}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!45 = !{!"branch_weights", i32 2000, i32 1}
!46 = !{i8 0, i8 2}
