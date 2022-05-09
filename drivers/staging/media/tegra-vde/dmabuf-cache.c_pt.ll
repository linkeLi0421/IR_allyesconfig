; ModuleID = '/llk/IR_all_yes/drivers/staging/media/tegra-vde/dmabuf-cache.c_pt.bc'
source_filename = "../drivers/staging/media/tegra-vde/dmabuf-cache.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tegra_vde = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.list_head, %struct.miscdevice, ptr, ptr, ptr, %struct.completion, ptr, ptr, ptr, %struct.iova_domain, ptr, ptr, ptr, ptr, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.iova_domain = type { %struct.spinlock, %struct.rb_root, ptr, ptr, i32, i32, i32, i32, %struct.iova, [6 x %struct.iova_rcache], %struct.hlist_node }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.rb_root = type { ptr }
%struct.iova = type { %struct.rb_node, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.iova_rcache = type { %struct.spinlock, i32, [32 x ptr], ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.tegra_vde_cache_entry = type { i32, ptr, %struct.delayed_work, ptr, %struct.list_head, ptr, ptr, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }

@__UNIQUE_ID_import_ns234 = internal constant [28 x i8] c"tegra_vde.import_ns=DMA_BUF\00", section ".modinfo", align 1
@tegra_vde_dmabuf_cache_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 100, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to attach dmabuf\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tegra_vde_dmabuf_cache_map\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/staging/media/tegra-vde/dmabuf-cache.c\00", [49 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tegra_vde_dmabuf_cache_map._entry_ptr = internal global ptr @tegra_vde_dmabuf_cache_map._entry, section ".printk_index", align 4
@tegra_vde_dmabuf_cache_map._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 107, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to get dmabufs sg_table\0A\00", [32 x i8] zeroinitializer }, align 32
@tegra_vde_dmabuf_cache_map._entry_ptr.7 = internal global ptr @tegra_vde_dmabuf_cache_map._entry.5, section ".printk_index", align 4
@tegra_vde_dmabuf_cache_map._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 113, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Sparse DMA region is unsupported, please enable IOMMU\0A\00", [41 x i8] zeroinitializer }, align 32
@tegra_vde_dmabuf_cache_map._entry_ptr.10 = internal global ptr @tegra_vde_dmabuf_cache_map._entry.8, section ".printk_index", align 4
@tegra_vde_dmabuf_cache_map.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"(work_completion)(&(&entry->dwork)->work)\00", [54 x i8] zeroinitializer }, align 32
@tegra_vde_dmabuf_cache_map.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&(&entry->dwork)->timer\00", [40 x i8] zeroinitializer }, align 32
@tegra_vde_dmabuf_cache_unmap.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@tegra_vde_release_entry.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 100, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 107, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 113, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.53 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.54 = private constant [50 x i8] c"../drivers/staging/media/tegra-vde/dmabuf-cache.c\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 135, i32 2 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @__UNIQUE_ID_import_ns234, ptr @tegra_vde_dmabuf_cache_map._entry, ptr @tegra_vde_dmabuf_cache_map._entry.5, ptr @tegra_vde_dmabuf_cache_map._entry.8, ptr @tegra_vde_dmabuf_cache_map._entry_ptr, ptr @tegra_vde_dmabuf_cache_map._entry_ptr.10, ptr @tegra_vde_dmabuf_cache_map._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @tegra_vde_dmabuf_cache_map.__key, ptr @.str.11, ptr @tegra_vde_dmabuf_cache_map.__key.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_vde_dmabuf_cache_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_vde_dmabuf_cache_map._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_vde_dmabuf_cache_map._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_vde_dmabuf_cache_map.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_vde_dmabuf_cache_map.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tegra_vde_dmabuf_cache_map(ptr noundef %vde, ptr noundef %dmabuf, i32 noundef %dma_dir, ptr nocapture noundef writeonly %ap, ptr nocapture noundef writeonly %addrp) local_unnamed_addr #0 align 64 {
entry:
  %iova = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.tegra_vde, ptr %vde, i32 0, i32 12, i32 4
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iova) #6
  %2 = ptrtoint ptr %iova to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %iova, align 4, !annotation !36
  %map_lock = getelementptr inbounds %struct.tegra_vde, ptr %vde, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %map_lock, i32 noundef 0) #6
  %map_list = getelementptr inbounds %struct.tegra_vde, ptr %vde, i32 0, i32 11
  %3 = ptrtoint ptr %map_list to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn163 = load ptr, ptr %map_list, align 4
  %cmp.not164 = icmp eq ptr %.pn163, %map_list
  br i1 %cmp.not164, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn165 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn163, %entry.for.body_crit_edge ]
  %a = getelementptr i8, ptr %.pn165, i32 -108
  %4 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %a, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %cmp4.not = icmp eq ptr %7, %dmabuf
  br i1 %cmp4.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end:                                           ; preds = %for.body
  %dwork = getelementptr i8, ptr %.pn165, i32 -104
  %call = tail call zeroext i1 @cancel_delayed_work(ptr noundef %dwork) #6
  br i1 %call, label %if.end6, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end6:                                          ; preds = %if.end
  %entry1.0.le = getelementptr i8, ptr %.pn165, i32 -112
  %8 = ptrtoint ptr %entry1.0.le to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %entry1.0.le, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %dma_dir)
  %cmp8.not = icmp eq i32 %9, %dma_dir
  br i1 %cmp8.not, label %if.end6.if.end11_crit_edge, label %if.then9

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %entry1.0.le to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %entry1.0.le, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end6.if.end11_crit_edge
  tail call void @dma_buf_put(ptr noundef %dmabuf) #6
  %domain = getelementptr inbounds %struct.tegra_vde, ptr %vde, i32 0, i32 18
  %11 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %domain, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %iova14 = getelementptr i8, ptr %.pn165, i32 12
  %13 = ptrtoint ptr %iova14 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %iova14, align 4
  %pfn_lo.i = getelementptr inbounds %struct.iova, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %pfn_lo.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pfn_lo.i, align 4
  %granule.i.i = getelementptr inbounds %struct.tegra_vde, ptr %vde, i32 0, i32 20, i32 4
  %17 = ptrtoint ptr %granule.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %granule.i.i, align 4
  %19 = tail call i32 @llvm.cttz.i32(i32 %18, i1 false) #6, !range !37
  %shl.i = shl i32 %16, %19
  %20 = ptrtoint ptr %addrp to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %shl.i, ptr %addrp, align 4
  br label %ref

if.else:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %sgt16 = getelementptr i8, ptr %.pn165, i32 8
  %21 = ptrtoint ptr %sgt16 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sgt16, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dma_address, align 4
  %27 = ptrtoint ptr %addrp to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %addrp, align 4
  br label %ref

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %28 = ptrtoint ptr %.pn165 to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pn = load ptr, ptr %.pn165, align 4
  %cmp.not = icmp eq ptr %.pn, %map_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %call23 = tail call ptr @dma_buf_attach(ptr noundef %dmabuf, ptr noundef %1) #6
  %cmp.i = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end27

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str) #9
  %29 = ptrtoint ptr %call23 to i32
  br label %cleanup

if.end27:                                         ; preds = %for.end
  %call28 = tail call ptr @dma_buf_map_attachment(ptr noundef %call23, i32 noundef %dma_dir) #6
  %cmp.i157 = icmp ugt ptr %call28, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i157, label %do.end33, label %if.end35

do.end33:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.6) #9
  %30 = ptrtoint ptr %call28 to i32
  br label %err_detach

if.end35:                                         ; preds = %if.end27
  %domain36 = getelementptr inbounds %struct.tegra_vde, ptr %vde, i32 0, i32 18
  %31 = ptrtoint ptr %domain36 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %domain36, align 4
  %tobool37.not = icmp eq ptr %32, null
  br i1 %tobool37.not, label %land.lhs.true, label %if.end35.if.end43_crit_edge

if.end35.if.end43_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

land.lhs.true:                                    ; preds = %if.end35
  %nents = getelementptr inbounds %struct.sg_table, ptr %call28, i32 0, i32 1
  %33 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %nents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %34)
  %cmp38 = icmp ugt i32 %34, 1
  br i1 %cmp38, label %do.end42, label %land.lhs.true.if.end43_crit_edge

land.lhs.true.if.end43_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

do.end42:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.9) #9
  br label %err_unmap

if.end43:                                         ; preds = %land.lhs.true.if.end43_crit_edge, %if.end35.if.end43_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %35 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %35, i32 noundef 3520, i32 noundef 132) #10
  %tobool45.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool45.not, label %if.end43.err_unmap_crit_edge, label %if.end47

if.end43.err_unmap_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_unmap

if.end47:                                         ; preds = %if.end43
  %36 = ptrtoint ptr %domain36 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %domain36, align 4
  %tobool49.not = icmp eq ptr %37, null
  br i1 %tobool49.not, label %if.else57, label %if.then50

if.then50:                                        ; preds = %if.end47
  %38 = ptrtoint ptr %dmabuf to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dmabuf, align 4
  %call51 = call i32 @tegra_vde_iommu_map(ptr noundef %vde, ptr noundef %call28, ptr noundef nonnull %iova, i32 noundef %39) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end54, label %err_free

if.end54:                                         ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %iova to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %iova, align 4
  %pfn_lo.i158 = getelementptr inbounds %struct.iova, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %pfn_lo.i158 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %pfn_lo.i158, align 4
  %granule.i.i159 = getelementptr inbounds %struct.tegra_vde, ptr %vde, i32 0, i32 20, i32 4
  %44 = ptrtoint ptr %granule.i.i159 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %granule.i.i159, align 4
  %46 = call i32 @llvm.cttz.i32(i32 %45, i1 false) #6, !range !37
  %shl.i160 = shl i32 %43, %46
  %47 = ptrtoint ptr %addrp to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %shl.i160, ptr %addrp, align 4
  br label %do.body62

if.else57:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  %48 = ptrtoint ptr %call28 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %call28, align 4
  %dma_address59 = getelementptr inbounds %struct.scatterlist, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %dma_address59 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %dma_address59, align 4
  %52 = ptrtoint ptr %addrp to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %addrp, align 4
  %53 = ptrtoint ptr %iova to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %iova, align 4
  br label %do.body62

do.body62:                                        ; preds = %if.else57, %if.end54
  %dwork63 = getelementptr inbounds %struct.tegra_vde_cache_entry, ptr %call7.i.i, i32 0, i32 2
  call void @__init_work(ptr noundef %dwork63, i32 noundef 0) #6
  %54 = ptrtoint ptr %dwork63 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 -64, ptr %dwork63, align 8
  %lockdep_map = getelementptr inbounds %struct.tegra_vde_cache_entry, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.11, ptr noundef nonnull @tegra_vde_dmabuf_cache_map.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry70 = getelementptr inbounds %struct.tegra_vde_cache_entry, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1
  %55 = ptrtoint ptr %entry70 to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %entry70, ptr %entry70, align 4
  %prev.i = getelementptr inbounds %struct.tegra_vde_cache_entry, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 1
  %56 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %entry70, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.tegra_vde_cache_entry, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 2
  %57 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @tegra_vde_delayed_unmap, ptr %func, align 4
  %timer = getelementptr inbounds %struct.tegra_vde_cache_entry, ptr %call7.i.i, i32 0, i32 2, i32 1
  call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.13, ptr noundef nonnull @tegra_vde_dmabuf_cache_map.__key.12) #6
  %list81 = getelementptr inbounds %struct.tegra_vde_cache_entry, ptr %call7.i.i, i32 0, i32 4
  %58 = ptrtoint ptr %map_list to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %map_list, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list81, ptr noundef %map_list, ptr noundef %59) #6
  br i1 %call.i.i, label %if.end.i.i, label %do.body62.list_add.exit_crit_edge

do.body62.list_add.exit_crit_edge:                ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add.exit

if.end.i.i:                                       ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #8
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %list81, ptr %prev1.i.i, align 4
  %61 = ptrtoint ptr %list81 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %59, ptr %list81, align 8
  %prev3.i.i = getelementptr inbounds %struct.tegra_vde_cache_entry, ptr %call7.i.i, i32 0, i32 4, i32 1
  %62 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %map_list, ptr %prev3.i.i, align 4
  %63 = ptrtoint ptr %map_list to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %list81, ptr %map_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %do.body62.list_add.exit_crit_edge
  %64 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %dma_dir, ptr %call7.i.i, align 8
  %65 = ptrtoint ptr %iova to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %iova, align 4
  %iova84 = getelementptr inbounds %struct.tegra_vde_cache_entry, ptr %call7.i.i, i32 0, i32 6
  %67 = ptrtoint ptr %iova84 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %66, ptr %iova84, align 4
  %vde85 = getelementptr inbounds %struct.tegra_vde_cache_entry, ptr %call7.i.i, i32 0, i32 3
  %68 = ptrtoint ptr %vde85 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %vde, ptr %vde85, align 4
  %sgt86 = getelementptr inbounds %struct.tegra_vde_cache_entry, ptr %call7.i.i, i32 0, i32 5
  %69 = ptrtoint ptr %sgt86 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call28, ptr %sgt86, align 8
  %a87 = getelementptr inbounds %struct.tegra_vde_cache_entry, ptr %call7.i.i, i32 0, i32 1
  %70 = ptrtoint ptr %a87 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call23, ptr %a87, align 4
  br label %ref

ref:                                              ; preds = %list_add.exit, %if.else, %if.then12
  %entry1.1 = phi ptr [ %entry1.0.le, %if.then12 ], [ %entry1.0.le, %if.else ], [ %call7.i.i, %list_add.exit ]
  %refcnt = getelementptr inbounds %struct.tegra_vde_cache_entry, ptr %entry1.1, i32 0, i32 7
  %71 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %refcnt, align 4
  %inc = add i32 %72, 1
  store i32 %inc, ptr %refcnt, align 4
  %a88 = getelementptr inbounds %struct.tegra_vde_cache_entry, ptr %entry1.1, i32 0, i32 1
  %73 = ptrtoint ptr %a88 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %a88, align 4
  %75 = ptrtoint ptr %ap to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %74, ptr %ap, align 4
  br label %cleanup

err_free:                                         ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #8
  call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %err_unmap

err_unmap:                                        ; preds = %err_free, %if.end43.err_unmap_crit_edge, %do.end42
  %err.0 = phi i32 [ %call51, %err_free ], [ -22, %do.end42 ], [ -12, %if.end43.err_unmap_crit_edge ]
  call void @dma_buf_unmap_attachment(ptr noundef %call23, ptr noundef %call28, i32 noundef %dma_dir) #6
  br label %err_detach

err_detach:                                       ; preds = %err_unmap, %do.end33
  %err.1 = phi i32 [ %30, %do.end33 ], [ %err.0, %err_unmap ]
  call void @dma_buf_detach(ptr noundef %dmabuf, ptr noundef %call23) #6
  br label %cleanup

cleanup:                                          ; preds = %err_detach, %ref, %do.end
  %retval.0 = phi i32 [ 0, %ref ], [ %29, %do.end ], [ %err.1, %err_detach ]
  call void @mutex_unlock(ptr noundef %map_lock) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iova) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_buf_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_buf_attach(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_buf_map_attachment(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_vde_iommu_map(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_vde_delayed_unmap(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -8
  %vde2 = getelementptr i8, ptr %work, i32 100
  %0 = ptrtoint ptr %vde2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vde2, align 4
  %map_lock = getelementptr inbounds %struct.tegra_vde, ptr %1, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %map_lock, i32 noundef 0) #6
  tail call fastcc void @tegra_vde_release_entry(ptr noundef %add.ptr)
  tail call void @mutex_unlock(ptr noundef %map_lock) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_buf_unmap_attachment(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_buf_detach(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tegra_vde_dmabuf_cache_unmap(ptr noundef %vde, ptr noundef readnone %a, i1 noundef zeroext %release) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %map_lock = getelementptr inbounds %struct.tegra_vde, ptr %vde, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %map_lock, i32 noundef 0) #6
  %map_list = getelementptr inbounds %struct.tegra_vde, ptr %vde, i32 0, i32 11
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ %map_list, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %map_list
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.cond
  %a3 = getelementptr i8, ptr %.pn, i32 -108
  %1 = ptrtoint ptr %a3 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %a3, align 4
  %cmp4.not = icmp eq ptr %2, %a
  br i1 %cmp4.not, label %if.end, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond

if.end:                                           ; preds = %for.body
  %entry1.0.le = getelementptr i8, ptr %.pn, i32 -112
  %refcnt = getelementptr i8, ptr %.pn, i32 16
  %3 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %land.rhs, label %if.end.if.end38_crit_edge

if.end.if.end38_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

land.rhs:                                         ; preds = %if.end
  %.b70 = load i1, ptr @tegra_vde_dmabuf_cache_unmap.__already_done, align 1
  br i1 %.b70, label %land.rhs.if.end38_crit_edge, label %if.then15, !prof !38

land.rhs.if.end38_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.then15:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @tegra_vde_dmabuf_cache_unmap.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 176, i32 noundef 9, ptr noundef null) #6
  br label %if.end38

if.end38:                                         ; preds = %if.then15, %land.rhs.if.end38_crit_edge, %if.end.if.end38_crit_edge
  %5 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %refcnt, align 4
  %dec = add i32 %6, -1
  store i32 %dec, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp47 = icmp eq i32 %dec, 0
  br i1 %cmp47, label %if.then48, label %if.end38.for.end_crit_edge

if.end38.for.end_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.then48:                                        ; preds = %if.end38
  br i1 %release, label %if.then50, label %if.else

if.then50:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @tegra_vde_release_entry(ptr noundef %entry1.0.le)
  br label %for.end

if.else:                                          ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #8
  %dwork = getelementptr i8, ptr %.pn, i32 -104
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %7 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %7, ptr noundef %dwork, i32 noundef 500) #6
  br label %for.end

for.end:                                          ; preds = %if.else, %if.then50, %if.end38.for.end_crit_edge, %for.cond.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %map_lock) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra_vde_release_entry(ptr noundef %entry1) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %a = getelementptr inbounds %struct.tegra_vde_cache_entry, ptr %entry1, i32 0, i32 1
  %0 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %a, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %refcnt = getelementptr inbounds %struct.tegra_vde_cache_entry, ptr %entry1, i32 0, i32 7
  %4 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end30_crit_edge, label %land.rhs

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

land.rhs:                                         ; preds = %entry
  %.b57 = load i1, ptr @tegra_vde_release_entry.__already_done, align 1
  br i1 %.b57, label %land.rhs.if.end30_crit_edge, label %if.then, !prof !38

land.rhs.if.end30_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @tegra_vde_release_entry.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 36, i32 noundef 9, ptr noundef null) #6
  br label %if.end30

if.end30:                                         ; preds = %if.then, %land.rhs.if.end30_crit_edge, %entry.if.end30_crit_edge
  %vde = getelementptr inbounds %struct.tegra_vde_cache_entry, ptr %entry1, i32 0, i32 3
  %6 = ptrtoint ptr %vde to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vde, align 4
  %domain = getelementptr inbounds %struct.tegra_vde, ptr %7, i32 0, i32 18
  %8 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %domain, align 4
  %tobool38.not = icmp eq ptr %9, null
  br i1 %tobool38.not, label %if.end30.if.end41_crit_edge, label %if.then39

if.end30.if.end41_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

if.then39:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  %iova = getelementptr inbounds %struct.tegra_vde_cache_entry, ptr %entry1, i32 0, i32 6
  %10 = ptrtoint ptr %iova to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %iova, align 4
  tail call void @tegra_vde_iommu_unmap(ptr noundef %7, ptr noundef %11) #6
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %if.end30.if.end41_crit_edge
  %12 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %a, align 4
  %sgt = getelementptr inbounds %struct.tegra_vde_cache_entry, ptr %entry1, i32 0, i32 5
  %14 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sgt, align 4
  %16 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %entry1, align 4
  tail call void @dma_buf_unmap_attachment(ptr noundef %13, ptr noundef %15, i32 noundef %17) #6
  %18 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %a, align 4
  tail call void @dma_buf_detach(ptr noundef %3, ptr noundef %19) #6
  tail call void @dma_buf_put(ptr noundef %3) #6
  %list = getelementptr inbounds %struct.tegra_vde_cache_entry, ptr %entry1, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.end41.list_del.exit_crit_edge

if.end41.list_del.exit_crit_edge:                 ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.tegra_vde_cache_entry, ptr %entry1, i32 0, i32 4, i32 1
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i, align 4
  %22 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev1.i.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %21, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end41.list_del.exit_crit_edge
  %26 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.tegra_vde_cache_entry, ptr %entry1, i32 0, i32 4, i32 1
  %27 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %entry1) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tegra_vde_dmabuf_cache_unmap_sync(ptr noundef %vde) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %map_lock = getelementptr inbounds %struct.tegra_vde, ptr %vde, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %map_lock, i32 noundef 0) #6
  %map_list = getelementptr inbounds %struct.tegra_vde, ptr %vde, i32 0, i32 11
  %0 = ptrtoint ptr %map_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %map_list, align 4
  %cmp.not28 = icmp eq ptr %1, %map_list
  br i1 %cmp.not28, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in29 = phi ptr [ %.pn31, %for.inc.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %entry1.030 = getelementptr i8, ptr %.pn.in29, i32 -112
  %2 = ptrtoint ptr %.pn.in29 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn31 = load ptr, ptr %.pn.in29, align 4
  %refcnt = getelementptr i8, ptr %.pn.in29, i32 16
  %3 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end:                                           ; preds = %for.body
  %dwork = getelementptr i8, ptr %.pn.in29, i32 -104
  %call = tail call zeroext i1 @cancel_delayed_work(ptr noundef %dwork) #6
  br i1 %call, label %if.end10, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @tegra_vde_release_entry(ptr noundef %entry1.030)
  br label %for.inc

for.inc:                                          ; preds = %if.end10, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %cmp.not = icmp eq ptr %.pn31, %map_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %map_lock) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tegra_vde_dmabuf_cache_unmap_all(ptr noundef %vde) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %map_lock = getelementptr inbounds %struct.tegra_vde, ptr %vde, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %map_lock, i32 noundef 0) #6
  %map_list = getelementptr inbounds %struct.tegra_vde, ptr %vde, i32 0, i32 11
  %0 = ptrtoint ptr %map_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %map_list, align 4
  %cmp.i.not37 = icmp eq ptr %1, %map_list
  br i1 %cmp.i.not37, label %entry.while.end_crit_edge, label %entry.for.cond.preheader_crit_edge

entry.for.cond.preheader_crit_edge:               ; preds = %entry
  br label %for.cond.preheader

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

for.cond.preheader:                               ; preds = %for.end.for.cond.preheader_crit_edge, %entry.for.cond.preheader_crit_edge
  %2 = phi ptr [ %5, %for.end.for.cond.preheader_crit_edge ], [ %1, %entry.for.cond.preheader_crit_edge ]
  %cmp.not33 = icmp eq ptr %2, %map_list
  br i1 %cmp.not33, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %.pn.in34 = phi ptr [ %.pn36, %for.inc.for.body_crit_edge ], [ %2, %for.cond.preheader.for.body_crit_edge ]
  %3 = ptrtoint ptr %.pn.in34 to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn36 = load ptr, ptr %.pn.in34, align 4
  %dwork = getelementptr i8, ptr %.pn.in34, i32 -104
  %call11 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %dwork) #6
  br i1 %call11, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %entry1.035 = getelementptr i8, ptr %.pn.in34, i32 -112
  tail call fastcc void @tegra_vde_release_entry(ptr noundef %entry1.035)
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %cmp.not = icmp eq ptr %.pn36, %map_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %map_lock) #6
  tail call void @schedule() #6
  tail call void @mutex_lock_nested(ptr noundef %map_lock, i32 noundef 0) #6
  %4 = ptrtoint ptr %map_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %map_list, align 4
  %cmp.i.not = icmp eq ptr %5, %map_list
  br i1 %cmp.i.not, label %for.end.while.end_crit_edge, label %for.end.for.cond.preheader_crit_edge

for.end.for.cond.preheader_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.preheader

for.end.while.end_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %for.end.while.end_crit_edge, %entry.while.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %map_lock) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_vde_iommu_unmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !23, !25}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @__UNIQUE_ID_import_ns234, !1, !"__UNIQUE_ID_import_ns234", i1 false, i1 false}
!1 = !{!"../drivers/staging/media/tegra-vde/dmabuf-cache.c", i32 19, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/staging/media/tegra-vde/dmabuf-cache.c", i32 100, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @tegra_vde_dmabuf_cache_map._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @tegra_vde_dmabuf_cache_map._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/staging/media/tegra-vde/dmabuf-cache.c", i32 107, i32 3}
!12 = !{ptr @tegra_vde_dmabuf_cache_map._entry.5, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @tegra_vde_dmabuf_cache_map._entry_ptr.7, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/staging/media/tegra-vde/dmabuf-cache.c", i32 113, i32 3}
!16 = !{ptr @tegra_vde_dmabuf_cache_map._entry.8, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @tegra_vde_dmabuf_cache_map._entry_ptr.10, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @tegra_vde_dmabuf_cache_map.__key, !19, !"__key", i1 false, i1 false}
!19 = !{!"../drivers/staging/media/tegra-vde/dmabuf-cache.c", i32 135, i32 2}
!20 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @tegra_vde_dmabuf_cache_map.__key.12, !19, !"__key", i1 false, i1 false}
!22 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!23 = distinct !{null, !24, !"__already_done", i1 false, i1 false}
!24 = !{!"../drivers/staging/media/tegra-vde/dmabuf-cache.c", i32 176, i32 3}
!25 = distinct !{null, !26, !"__already_done", i1 false, i1 false}
!26 = !{!"../drivers/staging/media/tegra-vde/dmabuf-cache.c", i32 36, i32 2}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!36 = !{!"auto-init"}
!37 = !{i32 0, i32 33}
!38 = !{!"branch_weights", i32 2000, i32 1}
