; ModuleID = '/llk/IR_all_yes/drivers/infiniband/hw/vmw_pvrdma/pvrdma_misc.c_pt.bc'
source_filename = "../drivers/infiniband/hw/vmw_pvrdma/pvrdma_misc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pvrdma_dev = type { %struct.ib_device, ptr, ptr, ptr, i32, ptr, ptr, i32, %struct.list_head, i32, %struct.spinlock, %struct.semaphore, %struct.completion, i32, ptr, ptr, %struct.pvrdma_page_dir, ptr, %struct.pvrdma_page_dir, ptr, %struct.spinlock, ptr, %struct.spinlock, ptr, %struct.spinlock, %struct.pvrdma_uar_table, %struct.pvrdma_uar_map, i64, %struct.spinlock, i32, %struct.mutex, i8, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, %struct.notifier_block }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.171, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%union.anon.171 = type { %struct.ib_core_device }
%struct.ib_core_device = type { %struct.device, %struct.possible_net_t, ptr, %struct.list_head, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type { ptr }
%struct.ib_device_attr = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i32, i32, %struct.ib_odp_caps, i64, i64, %struct.ib_rss_caps, i32, i32, %struct.ib_tm_caps, %struct.ib_cq_caps, i64, i32 }
%struct.ib_odp_caps = type { i64, %struct.anon.162 }
%struct.anon.162 = type { i32, i32, i32, i32 }
%struct.ib_rss_caps = type { i32, i32, i32 }
%struct.ib_tm_caps = type { i32, i32, i32, i32, i32 }
%struct.ib_cq_caps = type { i16, i16 }
%struct.rdmacg_device = type { %struct.list_head, %struct.list_head, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.list_head = type { ptr, ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.pvrdma_page_dir = type { i32, ptr, i32, ptr, i64, ptr }
%struct.pvrdma_uar_table = type { %struct.pvrdma_id_table, i32 }
%struct.pvrdma_id_table = type { i32, i32, i32, i32, %struct.spinlock, ptr }
%struct.pvrdma_uar_map = type { i32, ptr, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.172, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.172 = type { ptr }
%struct.ib_block_iter = type { ptr, i32, i32, i32, i32 }
%struct.ib_umem = type { ptr, ptr, i64, i32, i32, i8, %struct.work_struct, %struct.sg_append_table }
%struct.sg_append_table = type { %struct.sg_table, ptr, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.pvrdma_qp_cap = type { i32, i32, i32, i32, i32, i32 }
%struct.ib_qp_cap = type { i32, i32, i32, i32, i32, i32 }
%struct.ib_global_route = type { ptr, %union.ib_gid, i32, i8, i8, i8 }
%union.ib_gid = type { %struct.anon.158 }
%struct.anon.158 = type { i64, i64 }
%struct.pvrdma_global_route = type { %union.pvrdma_gid, i32, i8, i8, i8, i8 }
%union.pvrdma_gid = type { %struct.anon.174 }
%struct.anon.174 = type { i64, i64 }
%struct.rdma_ah_attr = type { %struct.ib_global_route, i8, i8, i32, i8, i32, %union.anon.163 }
%union.anon.163 = type { %struct.opa_ah_attr }
%struct.opa_ah_attr = type { i32, i8, i8 }
%struct.pvrdma_ah_attr = type { %struct.pvrdma_global_route, i16, i16, i8, i8, i8, i8, i8, [6 x i8], i8 }
%struct.ib_ah_attr = type { i16, i8 }

@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pvrdma_page_dir_init(ptr nocapture noundef readonly %dev, ptr noundef %pdir, i64 noundef %npages, i1 noundef zeroext %alloc_pages) local_unnamed_addr #0 align 64 {
entry:
  %page_dma = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 262144, i64 %npages)
  %cmp = icmp ugt i64 %npages, 262144
  br i1 %cmp, label %entry.cleanup59_crit_edge, label %if.end

entry.cleanup59_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup59

if.end:                                           ; preds = %entry
  %0 = call ptr @memset(ptr %pdir, i32 0, i32 32)
  %pdev = getelementptr inbounds %struct.pvrdma_dev, ptr %dev, i32 0, i32 1
  %1 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pdev, align 8
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev1, i32 noundef 4096, ptr noundef %pdir, i32 noundef 3264, i32 noundef 0) #11
  %dir = getelementptr inbounds %struct.pvrdma_page_dir, ptr %pdir, i32 0, i32 1
  %3 = ptrtoint ptr %dir to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %dir, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.err_crit_edge, label %if.end4

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

if.end4:                                          ; preds = %if.end
  %4 = trunc i64 %npages to i32
  %5 = add nuw nsw i32 %4, 262143
  %6 = lshr i32 %5, 9
  %7 = and i32 %6, 511
  %conv = add nuw nsw i32 %7, 1
  %ntables = getelementptr inbounds %struct.pvrdma_page_dir, ptr %pdir, i32 0, i32 2
  %8 = ptrtoint ptr %ntables to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv, ptr %ntables, align 8
  %9 = shl nuw nsw i32 %conv, 2
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %9, i32 noundef 3520) #14
  %tables = getelementptr inbounds %struct.pvrdma_page_dir, ptr %pdir, i32 0, i32 3
  %10 = ptrtoint ptr %tables to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call8.i.i, ptr %tables, align 4
  %tobool8.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool8.not, label %if.end4.err_crit_edge, label %for.cond.preheader

if.end4.err_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

for.cond.preheader:                               ; preds = %if.end4
  %11 = ptrtoint ptr %ntables to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ntables, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp13139.not = icmp eq i32 %12, 0
  br i1 %cmp13139.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.cond:                                         ; preds = %for.body
  %inc = add nuw i64 %i.0140, 1
  %13 = ptrtoint ptr %ntables to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ntables, align 8
  %conv12 = sext i32 %14 to i64
  %cmp13 = icmp ult i64 %inc, %conv12
  br i1 %cmp13, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0140 = phi i64 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %15 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev, align 8
  %dev16 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  %17 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dir, align 4
  %idxprom = trunc i64 %i.0140 to i32
  %arrayidx = getelementptr i64, ptr %18, i32 %idxprom
  %call.i95 = tail call ptr @dma_alloc_attrs(ptr noundef %dev16, i32 noundef 4096, ptr noundef %arrayidx, i32 noundef 3264, i32 noundef 0) #11
  %19 = ptrtoint ptr %tables to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tables, align 4
  %arrayidx21 = getelementptr ptr, ptr %20, i32 %idxprom
  %21 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i95, ptr %arrayidx21, align 4
  %22 = load ptr, ptr %tables, align 4
  %arrayidx24 = getelementptr ptr, ptr %22, i32 %idxprom
  %23 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx24, align 4
  %tobool25.not = icmp eq ptr %24, null
  br i1 %tobool25.not, label %for.body.err_crit_edge, label %for.cond

for.body.err_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %npages28 = getelementptr inbounds %struct.pvrdma_page_dir, ptr %pdir, i32 0, i32 4
  %25 = ptrtoint ptr %npages28 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %npages, ptr %npages28, align 8
  br i1 %alloc_pages, label %if.then30, label %for.end.cleanup59_crit_edge

for.end.cleanup59_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup59

if.then30:                                        ; preds = %for.end
  %26 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %4, i32 4) #11
  %27 = extractvalue { i32, i1 } %26, 1
  br i1 %27, label %kcalloc.exit128.thread, label %if.end7.i.i126, !prof !9

kcalloc.exit128.thread:                           ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #13
  %pages134 = getelementptr inbounds %struct.pvrdma_page_dir, ptr %pdir, i32 0, i32 5
  %28 = ptrtoint ptr %pages134 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %pages134, align 8
  br label %err

if.end7.i.i126:                                   ; preds = %if.then30
  %29 = extractvalue { i32, i1 } %26, 0
  %call8.i.i125 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %29, i32 noundef 3520) #14
  %pages = getelementptr inbounds %struct.pvrdma_page_dir, ptr %pdir, i32 0, i32 5
  %30 = ptrtoint ptr %pages to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call8.i.i125, ptr %pages, align 8
  %tobool34.not = icmp eq ptr %call8.i.i125, null
  br i1 %tobool34.not, label %if.end7.i.i126.err_crit_edge, label %for.cond37.preheader

if.end7.i.i126.err_crit_edge:                     ; preds = %if.end7.i.i126
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

for.cond37.preheader:                             ; preds = %if.end7.i.i126
  %31 = ptrtoint ptr %npages28 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %npages28, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %32)
  %cmp39141.not = icmp eq i64 %32, 0
  br i1 %cmp39141.not, label %for.cond37.preheader.cleanup59_crit_edge, label %for.cond37.preheader.for.body41_crit_edge

for.cond37.preheader.for.body41_crit_edge:        ; preds = %for.cond37.preheader
  br label %for.body41

for.cond37.preheader.cleanup59_crit_edge:         ; preds = %for.cond37.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup59

for.body41:                                       ; preds = %for.inc55.for.body41_crit_edge, %for.cond37.preheader.for.body41_crit_edge
  %i.1142 = phi i64 [ %inc56, %for.inc55.for.body41_crit_edge ], [ 0, %for.cond37.preheader.for.body41_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %page_dma) #11
  %33 = ptrtoint ptr %page_dma to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %page_dma, align 4, !annotation !10
  %34 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pdev, align 8
  %dev43 = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  %call.i129 = call ptr @dma_alloc_attrs(ptr noundef %dev43, i32 noundef 4096, ptr noundef nonnull %page_dma, i32 noundef 3264, i32 noundef 0) #11
  %36 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pages, align 8
  %idxprom46 = trunc i64 %i.1142 to i32
  %arrayidx47 = getelementptr ptr, ptr %37, i32 %idxprom46
  %38 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call.i129, ptr %arrayidx47, align 4
  %39 = load ptr, ptr %pages, align 8
  %arrayidx50 = getelementptr ptr, ptr %39, i32 %idxprom46
  %40 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx50, align 4
  %tobool51.not = icmp eq ptr %41, null
  br i1 %tobool51.not, label %cleanup, label %if.end53

if.end53:                                         ; preds = %for.body41
  %42 = ptrtoint ptr %npages28 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %npages28, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %43, i64 %i.1142)
  %cmp.not.i = icmp ugt i64 %43, %i.1142
  br i1 %cmp.not.i, label %if.end.i, label %if.end53.for.inc55_crit_edge

if.end53.for.inc55_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc55

if.end.i:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #13
  %44 = ptrtoint ptr %page_dma to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %page_dma, align 4
  %46 = ptrtoint ptr %tables to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %tables, align 4
  %48 = lshr i32 %idxprom46, 9
  %idxprom.i.i = and i32 %48, 511
  %arrayidx.i.i = getelementptr ptr, ptr %47, i32 %idxprom.i.i
  %49 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx.i.i, align 4
  %conv.i = zext i32 %45 to i64
  %idxprom.i = and i32 %idxprom46, 511
  %arrayidx.i = getelementptr i64, ptr %50, i32 %idxprom.i
  %51 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %conv.i, ptr %arrayidx.i, align 8
  br label %for.inc55

cleanup:                                          ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page_dma) #11
  br label %err

for.inc55:                                        ; preds = %if.end.i, %if.end53.for.inc55_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page_dma) #11
  %inc56 = add nuw i64 %i.1142, 1
  %52 = ptrtoint ptr %npages28 to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %npages28, align 8
  %cmp39 = icmp ult i64 %inc56, %53
  br i1 %cmp39, label %for.inc55.for.body41_crit_edge, label %for.inc55.cleanup59_crit_edge

for.inc55.cleanup59_crit_edge:                    ; preds = %for.inc55
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup59

for.inc55.for.body41_crit_edge:                   ; preds = %for.inc55
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body41

err:                                              ; preds = %cleanup, %if.end7.i.i126.err_crit_edge, %kcalloc.exit128.thread, %for.body.err_crit_edge, %if.end4.err_crit_edge, %if.end.err_crit_edge
  call void @pvrdma_page_dir_cleanup(ptr noundef %dev, ptr noundef %pdir)
  br label %cleanup59

cleanup59:                                        ; preds = %err, %for.inc55.cleanup59_crit_edge, %for.cond37.preheader.cleanup59_crit_edge, %for.end.cleanup59_crit_edge, %entry.cleanup59_crit_edge
  %retval.0 = phi i32 [ -12, %err ], [ -22, %entry.cleanup59_crit_edge ], [ 0, %for.end.cleanup59_crit_edge ], [ 0, %for.cond37.preheader.cleanup59_crit_edge ], [ 0, %for.inc55.cleanup59_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @pvrdma_page_dir_insert_dma(ptr nocapture noundef readonly %pdir, i64 noundef %idx, i32 noundef %daddr) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %npages = getelementptr inbounds %struct.pvrdma_page_dir, ptr %pdir, i32 0, i32 4
  %0 = ptrtoint ptr %npages to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %npages, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %idx)
  %cmp.not = icmp ugt i64 %1, %idx
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %tables.i = getelementptr inbounds %struct.pvrdma_page_dir, ptr %pdir, i32 0, i32 3
  %2 = ptrtoint ptr %tables.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tables.i, align 4
  %4 = trunc i64 %idx to i32
  %5 = lshr i32 %4, 9
  %idxprom.i = and i32 %5, 511
  %arrayidx.i = getelementptr ptr, ptr %3, i32 %idxprom.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %conv = zext i32 %daddr to i64
  %idxprom = and i32 %4, 511
  %arrayidx = getelementptr i64, ptr %7, i32 %idxprom
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %conv, ptr %arrayidx, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pvrdma_page_dir_cleanup(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %pdir) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dir = getelementptr inbounds %struct.pvrdma_page_dir, ptr %pdir, i32 0, i32 1
  %0 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dir, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  %tables.i = getelementptr inbounds %struct.pvrdma_page_dir, ptr %pdir, i32 0, i32 3
  %2 = ptrtoint ptr %tables.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tables.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.then.pvrdma_page_dir_cleanup_tables.exit_crit_edge, label %if.then.i

if.then.pvrdma_page_dir_cleanup_tables.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %pvrdma_page_dir_cleanup_tables.exit

if.then.i:                                        ; preds = %if.then
  %pages.i.i = getelementptr inbounds %struct.pvrdma_page_dir, ptr %pdir, i32 0, i32 5
  %4 = ptrtoint ptr %pages.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pages.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %if.then.i.pvrdma_page_dir_cleanup_pages.exit.i_crit_edge, label %for.cond.preheader.i.i

if.then.i.pvrdma_page_dir_cleanup_pages.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %pvrdma_page_dir_cleanup_pages.exit.i

for.cond.preheader.i.i:                           ; preds = %if.then.i
  %npages.i.i = getelementptr inbounds %struct.pvrdma_page_dir, ptr %pdir, i32 0, i32 4
  %6 = ptrtoint ptr %npages.i.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %npages.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %cmp17.not.i.i = icmp eq i64 %7, 0
  br i1 %cmp17.not.i.i, label %for.cond.preheader.i.i.for.end.i.i_crit_edge, label %land.rhs.lr.ph.i.i

for.cond.preheader.i.i.for.end.i.i_crit_edge:     ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i

land.rhs.lr.ph.i.i:                               ; preds = %for.cond.preheader.i.i
  %pdev.i.i = getelementptr inbounds %struct.pvrdma_dev, ptr %dev, i32 0, i32 1
  br label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %for.body.i.i.land.rhs.i.i_crit_edge, %land.rhs.lr.ph.i.i
  %i.018.i.i = phi i64 [ 0, %land.rhs.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.land.rhs.i.i_crit_edge ]
  %8 = ptrtoint ptr %pages.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pages.i.i, align 8
  %idxprom.i.i = trunc i64 %i.018.i.i to i32
  %arrayidx.i.i = getelementptr ptr, ptr %9, i32 %idxprom.i.i
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %11, null
  br i1 %tobool2.not.i.i, label %land.rhs.i.i.for.end.i.i_crit_edge, label %for.body.i.i

land.rhs.i.i.for.end.i.i_crit_edge:               ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %land.rhs.i.i
  %12 = ptrtoint ptr %tables.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tables.i, align 4
  %14 = lshr i32 %idxprom.i.i, 9
  %idxprom.i.i.i.i = and i32 %14, 511
  %arrayidx.i.i.i.i = getelementptr ptr, ptr %13, i32 %idxprom.i.i.i.i
  %15 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %idxprom.i.i.i = and i32 %idxprom.i.i, 511
  %arrayidx.i.i.i = getelementptr i64, ptr %16, i32 %idxprom.i.i.i
  %17 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %arrayidx.i.i.i, align 8
  %conv.i.i.i = trunc i64 %18 to i32
  %19 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdev.i.i, align 8
  %dev3.i.i = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  tail call void @dma_free_attrs(ptr noundef %dev3.i.i, i32 noundef 4096, ptr noundef nonnull %11, i32 noundef %conv.i.i.i, i32 noundef 0) #11
  %inc.i.i = add nuw i64 %i.018.i.i, 1
  %21 = ptrtoint ptr %npages.i.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %npages.i.i, align 8
  %cmp.i.i = icmp ult i64 %inc.i.i, %22
  br i1 %cmp.i.i, label %for.body.i.i.land.rhs.i.i_crit_edge, label %for.body.i.i.for.end.i.i_crit_edge

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i

for.body.i.i.land.rhs.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i.i

for.end.i.i:                                      ; preds = %for.body.i.i.for.end.i.i_crit_edge, %land.rhs.i.i.for.end.i.i_crit_edge, %for.cond.preheader.i.i.for.end.i.i_crit_edge
  %23 = ptrtoint ptr %pages.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pages.i.i, align 8
  tail call void @kfree(ptr noundef %24) #11
  br label %pvrdma_page_dir_cleanup_pages.exit.i

pvrdma_page_dir_cleanup_pages.exit.i:             ; preds = %for.end.i.i, %if.then.i.pvrdma_page_dir_cleanup_pages.exit.i_crit_edge
  %ntables.i = getelementptr inbounds %struct.pvrdma_page_dir, ptr %pdir, i32 0, i32 2
  %25 = ptrtoint ptr %ntables.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ntables.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp18.i = icmp sgt i32 %26, 0
  br i1 %cmp18.i, label %for.body.lr.ph.i, label %pvrdma_page_dir_cleanup_pages.exit.i.for.end.i_crit_edge

pvrdma_page_dir_cleanup_pages.exit.i.for.end.i_crit_edge: ; preds = %pvrdma_page_dir_cleanup_pages.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %pvrdma_page_dir_cleanup_pages.exit.i
  %pdev.i = getelementptr inbounds %struct.pvrdma_dev, ptr %dev, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.019.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %27 = ptrtoint ptr %tables.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tables.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %28, i32 %i.019.i
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i, align 4
  %tobool2.not.i = icmp eq ptr %30, null
  br i1 %tobool2.not.i, label %for.body.i.if.end.i_crit_edge, label %if.then3.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then3.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %31 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pdev.i, align 8
  %dev4.i = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  %33 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dir, align 4
  %arrayidx5.i = getelementptr i64, ptr %34, i32 %i.019.i
  %35 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %arrayidx5.i, align 8
  %conv.i = trunc i64 %36 to i32
  tail call void @dma_free_attrs(ptr noundef %dev4.i, i32 noundef 4096, ptr noundef nonnull %30, i32 noundef %conv.i, i32 noundef 0) #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.then3.i, %for.body.i.if.end.i_crit_edge
  %inc.i = add nuw nsw i32 %i.019.i, 1
  %37 = ptrtoint ptr %ntables.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ntables.i, align 8
  %cmp.i = icmp slt i32 %inc.i, %38
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.for.end.i_crit_edge

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.end.i:                                        ; preds = %if.end.i.for.end.i_crit_edge, %pvrdma_page_dir_cleanup_pages.exit.i.for.end.i_crit_edge
  %39 = ptrtoint ptr %tables.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %tables.i, align 4
  tail call void @kfree(ptr noundef %40) #11
  br label %pvrdma_page_dir_cleanup_tables.exit

pvrdma_page_dir_cleanup_tables.exit:              ; preds = %for.end.i, %if.then.pvrdma_page_dir_cleanup_tables.exit_crit_edge
  %pdev = getelementptr inbounds %struct.pvrdma_dev, ptr %dev, i32 0, i32 1
  %41 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pdev, align 8
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %42, i32 0, i32 44
  %43 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dir, align 4
  %45 = ptrtoint ptr %pdir to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %pdir, align 8
  tail call void @dma_free_attrs(ptr noundef %dev1, i32 noundef 4096, ptr noundef %44, i32 noundef %46, i32 noundef 0) #11
  br label %if.end

if.end:                                           ; preds = %pvrdma_page_dir_cleanup_tables.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @pvrdma_page_dir_get_dma(ptr nocapture noundef readonly %pdir, i64 noundef %idx) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tables.i = getelementptr inbounds %struct.pvrdma_page_dir, ptr %pdir, i32 0, i32 3
  %0 = ptrtoint ptr %tables.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tables.i, align 4
  %2 = trunc i64 %idx to i32
  %3 = lshr i32 %2, 9
  %idxprom.i = and i32 %3, 511
  %arrayidx.i = getelementptr ptr, ptr %1, i32 %idxprom.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %idxprom = and i32 %2, 511
  %arrayidx = getelementptr i64, ptr %5, i32 %idxprom
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %arrayidx, align 8
  %conv = trunc i64 %7 to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pvrdma_page_dir_insert_umem(ptr nocapture noundef readonly %pdir, ptr nocapture noundef readonly %umem, i64 noundef %offset) local_unnamed_addr #0 align 64 {
entry:
  %biter = alloca %struct.ib_block_iter, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %biter) #11
  %0 = getelementptr inbounds %struct.ib_block_iter, ptr %biter, i32 0, i32 1
  %1 = getelementptr inbounds %struct.ib_block_iter, ptr %biter, i32 0, i32 4
  %npages = getelementptr inbounds %struct.pvrdma_page_dir, ptr %pdir, i32 0, i32 4
  %2 = call ptr @memset(ptr %biter, i32 255, i32 20)
  %3 = ptrtoint ptr %npages to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %npages, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %4, i64 %offset)
  %cmp.not = icmp ugt i64 %4, %offset
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %sgt_append.i = getelementptr inbounds %struct.ib_umem, ptr %umem, i32 0, i32 7
  %5 = ptrtoint ptr %sgt_append.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sgt_append.i, align 8
  %nents.i = getelementptr inbounds %struct.ib_umem, ptr %umem, i32 0, i32 7, i32 0, i32 1
  %7 = ptrtoint ptr %nents.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nents.i, align 4
  call void @__rdma_block_iter_start(ptr noundef nonnull %biter, ptr noundef %6, i32 noundef %8, i32 noundef 4096) #11
  %call13 = call zeroext i1 @__rdma_block_iter_next(ptr noundef nonnull %biter) #11
  br i1 %call13, label %for.body.lr.ph, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %tables.i.i = getelementptr inbounds %struct.pvrdma_page_dir, ptr %pdir, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %if.end4.for.body_crit_edge, %for.body.lr.ph
  %i.014 = phi i64 [ %offset, %for.body.lr.ph ], [ %inc, %if.end4.for.body_crit_edge ]
  %9 = ptrtoint ptr %npages to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %npages, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %i.014)
  %cmp.not.i = icmp ugt i64 %10, %i.014
  br i1 %cmp.not.i, label %if.end4, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %for.body
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %0, align 4
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %1, align 4
  %sh_prom.i = zext i32 %14 to i64
  %notmask.i = shl nsw i64 -1, %sh_prom.i
  %15 = trunc i64 %notmask.i to i32
  %conv1.i = and i32 %12, %15
  %16 = ptrtoint ptr %tables.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tables.i.i, align 4
  %18 = trunc i64 %i.014 to i32
  %19 = lshr i32 %18, 9
  %idxprom.i.i = and i32 %19, 511
  %arrayidx.i.i = getelementptr ptr, ptr %17, i32 %idxprom.i.i
  %20 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i.i, align 4
  %conv.i = zext i32 %conv1.i to i64
  %idxprom.i = and i32 %18, 511
  %arrayidx.i = getelementptr i64, ptr %21, i32 %idxprom.i
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %conv.i, ptr %arrayidx.i, align 8
  %inc = add nuw i64 %i.014, 1
  %call = call zeroext i1 @__rdma_block_iter_next(ptr noundef nonnull %biter) #11
  br i1 %call, label %if.end4.for.body_crit_edge, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4.for.body_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup:                                          ; preds = %if.end4.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ], [ -22, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %biter) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__rdma_block_iter_next(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pvrdma_page_dir_insert_page_list(ptr nocapture noundef readonly %pdir, ptr nocapture noundef readonly %page_list, i32 noundef %num_pages) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = sext i32 %num_pages to i64
  %npages = getelementptr inbounds %struct.pvrdma_page_dir, ptr %pdir, i32 0, i32 4
  %0 = ptrtoint ptr %npages to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %npages, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %conv)
  %cmp = icmp ult i64 %1, %conv
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_pages)
  %cmp217 = icmp sgt i32 %num_pages, 0
  br i1 %cmp217, label %for.body.lr.ph, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %tables.i.i = getelementptr inbounds %struct.pvrdma_page_dir, ptr %pdir, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.018 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %conv4 = zext i32 %i.018 to i64
  %2 = ptrtoint ptr %npages to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %npages, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %conv4)
  %cmp.not.i = icmp ugt i64 %3, %conv4
  br i1 %cmp.not.i, label %for.inc, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %arrayidx = getelementptr i64, ptr %page_list, i32 %i.018
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %arrayidx, align 8
  %6 = ptrtoint ptr %tables.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tables.i.i, align 4
  %8 = lshr i32 %i.018, 9
  %idxprom.i.i = and i32 %8, 511
  %arrayidx.i.i = getelementptr ptr, ptr %7, i32 %idxprom.i.i
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i.i, align 4
  %conv.i = and i64 %5, 4294967295
  %idxprom.i = and i32 %i.018, 511
  %arrayidx.i = getelementptr i64, ptr %10, i32 %idxprom.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %conv.i, ptr %arrayidx.i, align 8
  %inc = add nuw nsw i32 %i.018, 1
  %exitcond.not = icmp eq i32 %inc, %num_pages
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ], [ -22, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @pvrdma_qp_cap_to_ib(ptr nocapture noundef writeonly %dst, ptr nocapture noundef readonly %src) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %src, align 4
  %2 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %dst, align 4
  %max_recv_wr = getelementptr inbounds %struct.pvrdma_qp_cap, ptr %src, i32 0, i32 1
  %3 = ptrtoint ptr %max_recv_wr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %max_recv_wr, align 4
  %max_recv_wr2 = getelementptr inbounds %struct.ib_qp_cap, ptr %dst, i32 0, i32 1
  %5 = ptrtoint ptr %max_recv_wr2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %max_recv_wr2, align 4
  %max_send_sge = getelementptr inbounds %struct.pvrdma_qp_cap, ptr %src, i32 0, i32 2
  %6 = ptrtoint ptr %max_send_sge to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_send_sge, align 4
  %max_send_sge3 = getelementptr inbounds %struct.ib_qp_cap, ptr %dst, i32 0, i32 2
  %8 = ptrtoint ptr %max_send_sge3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %max_send_sge3, align 4
  %max_recv_sge = getelementptr inbounds %struct.pvrdma_qp_cap, ptr %src, i32 0, i32 3
  %9 = ptrtoint ptr %max_recv_sge to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_recv_sge, align 4
  %max_recv_sge4 = getelementptr inbounds %struct.ib_qp_cap, ptr %dst, i32 0, i32 3
  %11 = ptrtoint ptr %max_recv_sge4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %max_recv_sge4, align 4
  %max_inline_data = getelementptr inbounds %struct.pvrdma_qp_cap, ptr %src, i32 0, i32 4
  %12 = ptrtoint ptr %max_inline_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_inline_data, align 4
  %max_inline_data5 = getelementptr inbounds %struct.ib_qp_cap, ptr %dst, i32 0, i32 4
  %14 = ptrtoint ptr %max_inline_data5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %max_inline_data5, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ib_qp_cap_to_pvrdma(ptr nocapture noundef writeonly %dst, ptr nocapture noundef readonly %src) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %src, align 4
  %2 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %dst, align 4
  %max_recv_wr = getelementptr inbounds %struct.ib_qp_cap, ptr %src, i32 0, i32 1
  %3 = ptrtoint ptr %max_recv_wr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %max_recv_wr, align 4
  %max_recv_wr2 = getelementptr inbounds %struct.pvrdma_qp_cap, ptr %dst, i32 0, i32 1
  %5 = ptrtoint ptr %max_recv_wr2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %max_recv_wr2, align 4
  %max_send_sge = getelementptr inbounds %struct.ib_qp_cap, ptr %src, i32 0, i32 2
  %6 = ptrtoint ptr %max_send_sge to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_send_sge, align 4
  %max_send_sge3 = getelementptr inbounds %struct.pvrdma_qp_cap, ptr %dst, i32 0, i32 2
  %8 = ptrtoint ptr %max_send_sge3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %max_send_sge3, align 4
  %max_recv_sge = getelementptr inbounds %struct.ib_qp_cap, ptr %src, i32 0, i32 3
  %9 = ptrtoint ptr %max_recv_sge to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_recv_sge, align 4
  %max_recv_sge4 = getelementptr inbounds %struct.pvrdma_qp_cap, ptr %dst, i32 0, i32 3
  %11 = ptrtoint ptr %max_recv_sge4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %max_recv_sge4, align 4
  %max_inline_data = getelementptr inbounds %struct.ib_qp_cap, ptr %src, i32 0, i32 4
  %12 = ptrtoint ptr %max_inline_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_inline_data, align 4
  %max_inline_data5 = getelementptr inbounds %struct.pvrdma_qp_cap, ptr %dst, i32 0, i32 4
  %14 = ptrtoint ptr %max_inline_data5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %max_inline_data5, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @pvrdma_gid_to_ib(ptr nocapture noundef writeonly %dst, ptr nocapture noundef readonly %src) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %dst, ptr %src, i32 16)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ib_gid_to_pvrdma(ptr nocapture noundef writeonly %dst, ptr nocapture noundef readonly %src) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %dst, ptr %src, i32 16)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @pvrdma_global_route_to_ib(ptr nocapture noundef writeonly %dst, ptr nocapture noundef readonly %src) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dgid = getelementptr inbounds %struct.ib_global_route, ptr %dst, i32 0, i32 1
  %0 = call ptr @memcpy(ptr %dgid, ptr %src, i32 16)
  %flow_label = getelementptr inbounds %struct.pvrdma_global_route, ptr %src, i32 0, i32 1
  %1 = ptrtoint ptr %flow_label to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flow_label, align 8
  %flow_label2 = getelementptr inbounds %struct.ib_global_route, ptr %dst, i32 0, i32 2
  %3 = ptrtoint ptr %flow_label2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %flow_label2, align 8
  %sgid_index = getelementptr inbounds %struct.pvrdma_global_route, ptr %src, i32 0, i32 2
  %4 = ptrtoint ptr %sgid_index to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %sgid_index, align 4
  %sgid_index3 = getelementptr inbounds %struct.ib_global_route, ptr %dst, i32 0, i32 3
  %6 = ptrtoint ptr %sgid_index3 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %sgid_index3, align 4
  %hop_limit = getelementptr inbounds %struct.pvrdma_global_route, ptr %src, i32 0, i32 3
  %7 = ptrtoint ptr %hop_limit to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %hop_limit, align 1
  %hop_limit4 = getelementptr inbounds %struct.ib_global_route, ptr %dst, i32 0, i32 4
  %9 = ptrtoint ptr %hop_limit4 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %hop_limit4, align 1
  %traffic_class = getelementptr inbounds %struct.pvrdma_global_route, ptr %src, i32 0, i32 4
  %10 = ptrtoint ptr %traffic_class to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %traffic_class, align 2
  %traffic_class5 = getelementptr inbounds %struct.ib_global_route, ptr %dst, i32 0, i32 5
  %12 = ptrtoint ptr %traffic_class5 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %traffic_class5, align 2
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ib_global_route_to_pvrdma(ptr nocapture noundef writeonly %dst, ptr nocapture noundef readonly %src) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dgid1 = getelementptr inbounds %struct.ib_global_route, ptr %src, i32 0, i32 1
  %0 = call ptr @memcpy(ptr %dst, ptr %dgid1, i32 16)
  %flow_label = getelementptr inbounds %struct.ib_global_route, ptr %src, i32 0, i32 2
  %1 = ptrtoint ptr %flow_label to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flow_label, align 8
  %flow_label2 = getelementptr inbounds %struct.pvrdma_global_route, ptr %dst, i32 0, i32 1
  %3 = ptrtoint ptr %flow_label2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %flow_label2, align 8
  %sgid_index = getelementptr inbounds %struct.ib_global_route, ptr %src, i32 0, i32 3
  %4 = ptrtoint ptr %sgid_index to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %sgid_index, align 4
  %sgid_index3 = getelementptr inbounds %struct.pvrdma_global_route, ptr %dst, i32 0, i32 2
  %6 = ptrtoint ptr %sgid_index3 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %sgid_index3, align 4
  %hop_limit = getelementptr inbounds %struct.ib_global_route, ptr %src, i32 0, i32 4
  %7 = ptrtoint ptr %hop_limit to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %hop_limit, align 1
  %hop_limit4 = getelementptr inbounds %struct.pvrdma_global_route, ptr %dst, i32 0, i32 3
  %9 = ptrtoint ptr %hop_limit4 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %hop_limit4, align 1
  %traffic_class = getelementptr inbounds %struct.ib_global_route, ptr %src, i32 0, i32 5
  %10 = ptrtoint ptr %traffic_class to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %traffic_class, align 2
  %traffic_class5 = getelementptr inbounds %struct.pvrdma_global_route, ptr %dst, i32 0, i32 4
  %12 = ptrtoint ptr %traffic_class5 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %traffic_class5, align 2
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @pvrdma_ah_attr_to_rdma(ptr nocapture noundef %dst, ptr nocapture noundef readonly %src) local_unnamed_addr #7 align 64 {
rdma_ah_set_path_bits.exit:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.rdma_ah_attr, ptr %dst, i32 0, i32 5
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %type, align 4
  %dgid.i = getelementptr inbounds %struct.ib_global_route, ptr %dst, i32 0, i32 1
  %1 = call ptr @memcpy(ptr %dgid.i, ptr %src, i32 16)
  %flow_label.i = getelementptr inbounds %struct.pvrdma_global_route, ptr %src, i32 0, i32 1
  %2 = ptrtoint ptr %flow_label.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flow_label.i, align 8
  %flow_label2.i = getelementptr inbounds %struct.ib_global_route, ptr %dst, i32 0, i32 2
  %4 = ptrtoint ptr %flow_label2.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %flow_label2.i, align 8
  %sgid_index.i = getelementptr inbounds %struct.pvrdma_global_route, ptr %src, i32 0, i32 2
  %5 = ptrtoint ptr %sgid_index.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %sgid_index.i, align 4
  %sgid_index3.i = getelementptr inbounds %struct.ib_global_route, ptr %dst, i32 0, i32 3
  %7 = ptrtoint ptr %sgid_index3.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %sgid_index3.i, align 4
  %hop_limit.i = getelementptr inbounds %struct.pvrdma_global_route, ptr %src, i32 0, i32 3
  %8 = ptrtoint ptr %hop_limit.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %hop_limit.i, align 1
  %hop_limit4.i = getelementptr inbounds %struct.ib_global_route, ptr %dst, i32 0, i32 4
  %10 = ptrtoint ptr %hop_limit4.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %hop_limit4.i, align 1
  %traffic_class.i = getelementptr inbounds %struct.pvrdma_global_route, ptr %src, i32 0, i32 4
  %11 = ptrtoint ptr %traffic_class.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %traffic_class.i, align 2
  %traffic_class5.i = getelementptr inbounds %struct.ib_global_route, ptr %dst, i32 0, i32 5
  %13 = ptrtoint ptr %traffic_class5.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %traffic_class5.i, align 2
  %sl = getelementptr inbounds %struct.pvrdma_ah_attr, ptr %src, i32 0, i32 3
  %14 = ptrtoint ptr %sl to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %sl, align 4
  %sl1.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %dst, i32 0, i32 1
  %16 = ptrtoint ptr %sl1.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %sl1.i, align 8
  %static_rate = getelementptr inbounds %struct.pvrdma_ah_attr, ptr %src, i32 0, i32 5
  %17 = ptrtoint ptr %static_rate to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %static_rate, align 2
  %static_rate1.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %dst, i32 0, i32 2
  %19 = ptrtoint ptr %static_rate1.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %static_rate1.i, align 1
  %ah_flags = getelementptr inbounds %struct.pvrdma_ah_attr, ptr %src, i32 0, i32 6
  %20 = ptrtoint ptr %ah_flags to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %ah_flags, align 1
  %ah_flags.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %dst, i32 0, i32 4
  %22 = ptrtoint ptr %ah_flags.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %ah_flags.i, align 8
  %port_num = getelementptr inbounds %struct.pvrdma_ah_attr, ptr %src, i32 0, i32 7
  %23 = ptrtoint ptr %port_num to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %port_num, align 8
  %conv2 = zext i8 %24 to i32
  %port_num1.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %dst, i32 0, i32 3
  %25 = ptrtoint ptr %port_num1.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv2, ptr %port_num1.i, align 4
  %26 = getelementptr inbounds %struct.rdma_ah_attr, ptr %dst, i32 0, i32 6
  %dmac3 = getelementptr inbounds %struct.pvrdma_ah_attr, ptr %src, i32 0, i32 8
  %27 = call ptr @memcpy(ptr %26, ptr %dmac3, i32 6)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rdma_ah_attr_to_pvrdma(ptr nocapture noundef writeonly %dst, ptr nocapture noundef readonly %src) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dgid1.i = getelementptr inbounds %struct.ib_global_route, ptr %src, i32 0, i32 1
  %0 = call ptr @memcpy(ptr %dst, ptr %dgid1.i, i32 16)
  %flow_label.i = getelementptr inbounds %struct.ib_global_route, ptr %src, i32 0, i32 2
  %1 = ptrtoint ptr %flow_label.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flow_label.i, align 8
  %flow_label2.i = getelementptr inbounds %struct.pvrdma_global_route, ptr %dst, i32 0, i32 1
  %3 = ptrtoint ptr %flow_label2.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %flow_label2.i, align 8
  %sgid_index.i = getelementptr inbounds %struct.ib_global_route, ptr %src, i32 0, i32 3
  %4 = ptrtoint ptr %sgid_index.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %sgid_index.i, align 4
  %sgid_index3.i = getelementptr inbounds %struct.pvrdma_global_route, ptr %dst, i32 0, i32 2
  %6 = ptrtoint ptr %sgid_index3.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %sgid_index3.i, align 4
  %hop_limit.i = getelementptr inbounds %struct.ib_global_route, ptr %src, i32 0, i32 4
  %7 = ptrtoint ptr %hop_limit.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %hop_limit.i, align 1
  %hop_limit4.i = getelementptr inbounds %struct.pvrdma_global_route, ptr %dst, i32 0, i32 3
  %9 = ptrtoint ptr %hop_limit4.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %hop_limit4.i, align 1
  %traffic_class.i = getelementptr inbounds %struct.ib_global_route, ptr %src, i32 0, i32 5
  %10 = ptrtoint ptr %traffic_class.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %traffic_class.i, align 2
  %traffic_class5.i = getelementptr inbounds %struct.pvrdma_global_route, ptr %dst, i32 0, i32 4
  %12 = ptrtoint ptr %traffic_class5.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %traffic_class5.i, align 2
  %type.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %src, i32 0, i32 5
  %13 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %type.i, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %14, label %entry.rdma_ah_get_dlid.exit_crit_edge [
    i32 1, label %if.then.i
    i32 3, label %if.then4.i
  ]

entry.rdma_ah_get_dlid.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rdma_ah_get_dlid.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %16 = getelementptr inbounds %struct.rdma_ah_attr, ptr %src, i32 0, i32 6
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %16, align 8
  %conv.i = zext i16 %18 to i32
  br label %rdma_ah_get_dlid.exit

if.then4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %19 = getelementptr inbounds %struct.rdma_ah_attr, ptr %src, i32 0, i32 6
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 8
  br label %rdma_ah_get_dlid.exit

rdma_ah_get_dlid.exit:                            ; preds = %if.then4.i, %if.then.i, %entry.rdma_ah_get_dlid.exit_crit_edge
  %retval.0.i = phi i32 [ %conv.i, %if.then.i ], [ %21, %if.then4.i ], [ 0, %entry.rdma_ah_get_dlid.exit_crit_edge ]
  %conv = trunc i32 %retval.0.i to i16
  %dlid = getelementptr inbounds %struct.pvrdma_ah_attr, ptr %dst, i32 0, i32 1
  %22 = ptrtoint ptr %dlid to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv, ptr %dlid, align 8
  %sl.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %src, i32 0, i32 1
  %23 = ptrtoint ptr %sl.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %sl.i, align 8
  %sl = getelementptr inbounds %struct.pvrdma_ah_attr, ptr %dst, i32 0, i32 3
  %25 = ptrtoint ptr %sl to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %sl, align 4
  %26 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %type.i, align 4
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %27, label %rdma_ah_get_dlid.exit.rdma_ah_get_path_bits.exit_crit_edge [
    i32 1, label %if.then.i25
    i32 3, label %if.then3.i
  ]

rdma_ah_get_dlid.exit.rdma_ah_get_path_bits.exit_crit_edge: ; preds = %rdma_ah_get_dlid.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %rdma_ah_get_path_bits.exit

if.then.i25:                                      ; preds = %rdma_ah_get_dlid.exit
  call void @__sanitizer_cov_trace_pc() #13
  %29 = getelementptr inbounds %struct.rdma_ah_attr, ptr %src, i32 0, i32 6
  %src_path_bits.i = getelementptr inbounds %struct.ib_ah_attr, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %src_path_bits.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %src_path_bits.i, align 2
  br label %rdma_ah_get_path_bits.exit

if.then3.i:                                       ; preds = %rdma_ah_get_dlid.exit
  call void @__sanitizer_cov_trace_pc() #13
  %src_path_bits4.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %src, i32 0, i32 6, i32 0, i32 1
  %32 = ptrtoint ptr %src_path_bits4.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %src_path_bits4.i, align 4
  br label %rdma_ah_get_path_bits.exit

rdma_ah_get_path_bits.exit:                       ; preds = %if.then3.i, %if.then.i25, %rdma_ah_get_dlid.exit.rdma_ah_get_path_bits.exit_crit_edge
  %retval.0.i26 = phi i8 [ %31, %if.then.i25 ], [ %33, %if.then3.i ], [ 0, %rdma_ah_get_dlid.exit.rdma_ah_get_path_bits.exit_crit_edge ]
  %src_path_bits = getelementptr inbounds %struct.pvrdma_ah_attr, ptr %dst, i32 0, i32 4
  %34 = ptrtoint ptr %src_path_bits to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %retval.0.i26, ptr %src_path_bits, align 1
  %static_rate.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %src, i32 0, i32 2
  %35 = ptrtoint ptr %static_rate.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %static_rate.i, align 1
  %static_rate = getelementptr inbounds %struct.pvrdma_ah_attr, ptr %dst, i32 0, i32 5
  %37 = ptrtoint ptr %static_rate to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %static_rate, align 2
  %ah_flags.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %src, i32 0, i32 4
  %38 = ptrtoint ptr %ah_flags.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %ah_flags.i, align 8
  %ah_flags = getelementptr inbounds %struct.pvrdma_ah_attr, ptr %dst, i32 0, i32 6
  %40 = ptrtoint ptr %ah_flags to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %ah_flags, align 1
  %port_num.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %src, i32 0, i32 3
  %41 = ptrtoint ptr %port_num.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %port_num.i, align 4
  %conv8 = trunc i32 %42 to i8
  %port_num = getelementptr inbounds %struct.pvrdma_ah_attr, ptr %dst, i32 0, i32 7
  %43 = ptrtoint ptr %port_num to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv8, ptr %port_num, align 8
  %dmac = getelementptr inbounds %struct.pvrdma_ah_attr, ptr %dst, i32 0, i32 8
  %44 = getelementptr inbounds %struct.rdma_ah_attr, ptr %src, i32 0, i32 6
  %45 = call ptr @memcpy(ptr %dmac, ptr %44, i32 6)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @ib_gid_type_to_pvrdma(i32 noundef %gid_type) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %gid_type)
  %cmp = icmp eq i32 %gid_type, 2
  %conv = select i1 %cmp, i8 2, i8 1
  ret i8 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rdma_block_iter_start(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

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

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{!"auto-init"}
