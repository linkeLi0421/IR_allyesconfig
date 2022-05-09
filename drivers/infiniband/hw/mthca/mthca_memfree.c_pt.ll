; ModuleID = '/llk/IR_all_yes/drivers/infiniband/hw/mthca/mthca_memfree.c_pt.bc'
source_filename = "../drivers/infiniband/hw/mthca/mthca_memfree.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mthca_dev = type { %struct.ib_device, ptr, i32, i32, i32, i32, [64 x i8], i64, %union.anon.173, i64, i64, %struct.spinlock, %struct.mutex, ptr, ptr, ptr, %union.anon.176, %struct.mthca_cmd, %struct.mthca_limits, %struct.mthca_uar_table, %struct.mthca_pd_table, %struct.mthca_mr_table, %struct.mthca_eq_table, %struct.mthca_cq_table, %struct.mthca_srq_table, %struct.mthca_qp_table, %struct.mthca_av_table, %struct.mthca_mcg_table, %struct.mthca_catas_err, %struct.mthca_uar, ptr, %struct.mthca_pd, %struct.mthca_mr, [2 x [2 x ptr]], [2 x ptr], %struct.spinlock, [2 x i8], i8 }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.171, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
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
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.173 = type { %struct.anon.175 }
%struct.anon.175 = type { i64, i64, i64, ptr, ptr, i16 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.176 = type { %struct.anon.178 }
%struct.anon.178 = type { ptr, ptr }
%struct.mthca_cmd = type { ptr, %struct.mutex, %struct.semaphore, %struct.semaphore, i32, %struct.spinlock, i32, ptr, i16, i32, ptr, [8 x i16] }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.mthca_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8 }
%struct.mthca_uar_table = type { %struct.mthca_alloc, i64, i32 }
%struct.mthca_alloc = type { i32, i32, i32, i32, %struct.spinlock, ptr }
%struct.mthca_pd_table = type { %struct.mthca_alloc }
%struct.mthca_mr_table = type { %struct.mthca_alloc, %struct.mthca_buddy, ptr, i64, i64, ptr, ptr, %struct.anon.179 }
%struct.mthca_buddy = type { ptr, ptr, i32, %struct.spinlock }
%struct.anon.179 = type { ptr, ptr, %struct.mthca_buddy }
%struct.mthca_eq_table = type { %struct.mthca_alloc, ptr, i32, i32, [3 x %struct.mthca_eq], i64, ptr, i32, i32, i8 }
%struct.mthca_eq = type { ptr, i32, i32, i32, i16, i16, i32, i32, ptr, %struct.mthca_mr, [64 x i8] }
%struct.mthca_cq_table = type { %struct.mthca_alloc, %struct.spinlock, %struct.mthca_array, ptr }
%struct.mthca_array = type { ptr }
%struct.mthca_srq_table = type { %struct.mthca_alloc, %struct.spinlock, %struct.mthca_array, ptr }
%struct.mthca_qp_table = type { %struct.mthca_alloc, i32, i32, i32, %struct.spinlock, %struct.mthca_array, ptr, ptr, ptr }
%struct.mthca_av_table = type { ptr, i32, i64, ptr, %struct.mthca_alloc }
%struct.mthca_mcg_table = type { %struct.mutex, %struct.mthca_alloc, ptr }
%struct.mthca_catas_err = type { i64, ptr, i32, %struct.timer_list, %struct.list_head }
%struct.mthca_uar = type { i32, i32 }
%struct.mthca_pd = type { %struct.ib_pd, i32, %struct.atomic_t, %struct.mthca_mr, i32 }
%struct.ib_pd = type { i32, i32, ptr, ptr, %struct.atomic_t, i32, ptr, %struct.rdma_restrack_entry }
%struct.rdma_restrack_entry = type { i8, i8, %struct.kref, %struct.completion, ptr, ptr, i32, i8, i32 }
%struct.mthca_mr = type { %struct.ib_mr, ptr, ptr }
%struct.ib_mr = type { ptr, ptr, i32, i32, i64, i64, i32, i32, i8, %union.anon.127, ptr, ptr, %struct.rdma_restrack_entry }
%union.anon.127 = type { %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mthca_icm_chunk = type { %struct.list_head, i32, i32, [12 x %struct.scatterlist] }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.172, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.172 = type { ptr }
%struct.mthca_icm = type { %struct.list_head, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.124, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.124 = type { %struct.atomic_t }
%struct.mthca_icm_table = type { i64, i32, i32, i32, i32, i32, %struct.mutex, [0 x ptr] }
%struct.mthca_user_db_table = type { %struct.mutex, [0 x %struct.anon.181] }
%struct.anon.181 = type { i64, %struct.scatterlist, i32 }
%struct.mthca_db_table = type { i32, i32, i32, ptr, %struct.mutex }
%struct.mthca_db_page = type { [16 x i32], ptr, i32 }

@mthca_alloc_icm_table.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&table->mutex\00", [18 x i8] zeroinitializer }, align 32
@mthca_init_user_db_tab.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&db_tab->mutex\00", [17 x i8] zeroinitializer }, align 32
@mthca_init_db_tab.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&dev->db_tab->mutex\00", [44 x i8] zeroinitializer }, align 32
@mthca_cleanup_db_tab._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 752, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Kernel UARC page %d not empty\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mthca_cleanup_db_tab\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/infiniband/hw/mthca/mthca_memfree.c\00", [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mthca_cleanup_db_tab._entry_ptr = internal global ptr @mthca_cleanup_db_tab._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 380, i32 2 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 539, i32 2 }
@___asan_gen_.21 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 714, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.42 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.43 = private constant [47 x i8] c"../drivers/infiniband/hw/mthca/mthca_memfree.c\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 752, i32 4 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @mthca_cleanup_db_tab._entry, ptr @mthca_cleanup_db_tab._entry_ptr, ptr @mthca_alloc_icm_table.__key, ptr @.str, ptr @mthca_init_user_db_tab.__key, ptr @.str.1, ptr @mthca_init_db_tab.__key, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_alloc_icm_table.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_init_user_db_tab.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_init_db_tab.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_cleanup_db_tab._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mthca_free_icm(ptr nocapture noundef readonly %dev, ptr noundef %icm, i32 noundef %coherent) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %icm, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %icm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %icm, align 4
  %cmp.not42 = icmp eq ptr %1, %icm
  br i1 %cmp.not42, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %coherent)
  %tobool8.not = icmp eq i32 %coherent, 0
  %pdev.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end10.for.body_crit_edge, %for.body.lr.ph
  %chunk.043 = phi ptr [ %1, %for.body.lr.ph ], [ %tmp.046, %if.end10.for.body_crit_edge ]
  %2 = ptrtoint ptr %chunk.043 to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp.046 = load ptr, ptr %chunk.043, align 4
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %for.body
  %npages.i = getelementptr inbounds %struct.mthca_icm_chunk, ptr %chunk.043, i32 0, i32 1
  %3 = ptrtoint ptr %npages.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %npages.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp14.i = icmp sgt i32 %4, 0
  br i1 %cmp14.i, label %if.then9.for.body.i_crit_edge, label %if.then9.if.end10_crit_edge

if.then9.if.end10_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then9.for.body.i_crit_edge:                    ; preds = %if.then9
  br label %for.body.i

for.body.i:                                       ; preds = %sg_page.exit.i.for.body.i_crit_edge, %if.then9.for.body.i_crit_edge
  %i.015.i = phi i32 [ %inc.i, %sg_page.exit.i.for.body.i_crit_edge ], [ 0, %if.then9.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mthca_icm_chunk, ptr %chunk.043, i32 0, i32 3, i32 %i.015.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i, align 4
  %and.i.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_page.exit.i, label %do.body2.i.i, !prof !29

do.body2.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #7, !srcloc !30
  unreachable

sg_page.exit.i:                                   ; preds = %for.body.i
  %length.i = getelementptr %struct.mthca_icm_chunk, ptr %chunk.043, i32 0, i32 3, i32 %i.015.i, i32 2
  %7 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %length.i, align 4
  %9 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev.i, align 8
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  %and.i.i = and i32 %6, -4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %11 = load ptr, ptr @mem_map, align 4
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %11 to i32
  %sub.ptr.sub.i.i = sub i32 %and.i.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.div.i.i = sdiv exact i32 %sub.ptr.sub.i.i, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %12 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i.i = add i32 %sub.ptr.div.i.i, %12
  %shl.i.i = shl i32 %add.i.i, 12
  %13 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %shl.i.i, i32 -2130706432, i32 8454144) #10, !srcloc !31
  %14 = inttoptr i32 %13 to ptr
  %dma_address.i = getelementptr %struct.mthca_icm_chunk, ptr %chunk.043, i32 0, i32 3, i32 %i.015.i, i32 3
  %15 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dma_address.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev1.i, i32 noundef %8, ptr noundef %14, i32 noundef %16, i32 noundef 0) #7
  %inc.i = add nuw nsw i32 %i.015.i, 1
  %17 = ptrtoint ptr %npages.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %npages.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %18
  br i1 %cmp.i, label %sg_page.exit.i.for.body.i_crit_edge, label %sg_page.exit.i.if.end10_crit_edge

sg_page.exit.i.if.end10_crit_edge:                ; preds = %sg_page.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

sg_page.exit.i.for.body.i_crit_edge:              ; preds = %sg_page.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

if.else:                                          ; preds = %for.body
  %nsg.i = getelementptr inbounds %struct.mthca_icm_chunk, ptr %chunk.043, i32 0, i32 2
  %19 = ptrtoint ptr %nsg.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nsg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.i26 = icmp sgt i32 %20, 0
  br i1 %cmp.i26, label %if.then.i, label %if.else.if.end.i_crit_edge

if.else.if.end.i_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdev.i, align 8
  %dev1.i28 = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  %mem.i = getelementptr inbounds %struct.mthca_icm_chunk, ptr %chunk.043, i32 0, i32 3
  %npages.i29 = getelementptr inbounds %struct.mthca_icm_chunk, ptr %chunk.043, i32 0, i32 1
  %23 = ptrtoint ptr %npages.i29 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %npages.i29, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %dev1.i28, ptr noundef %mem.i, i32 noundef %24, i32 noundef 0, i32 noundef 0) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.else.if.end.i_crit_edge
  %npages2.i = getelementptr inbounds %struct.mthca_icm_chunk, ptr %chunk.043, i32 0, i32 1
  %25 = ptrtoint ptr %npages2.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %npages2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp316.i = icmp sgt i32 %26, 0
  br i1 %cmp316.i, label %if.end.i.for.body.i33_crit_edge, label %if.end.i.if.end10_crit_edge

if.end.i.if.end10_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.end.i.for.body.i33_crit_edge:                  ; preds = %if.end.i
  br label %for.body.i33

for.body.i33:                                     ; preds = %sg_page.exit.i37.for.body.i33_crit_edge, %if.end.i.for.body.i33_crit_edge
  %i.017.i = phi i32 [ %inc.i39, %sg_page.exit.i37.for.body.i33_crit_edge ], [ 0, %if.end.i.for.body.i33_crit_edge ]
  %arrayidx.i30 = getelementptr %struct.mthca_icm_chunk, ptr %chunk.043, i32 0, i32 3, i32 %i.017.i
  %27 = ptrtoint ptr %arrayidx.i30 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i30, align 4
  %and.i.i.i31 = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i31)
  %tobool.i.not.i.i32 = icmp eq i32 %and.i.i.i31, 0
  br i1 %tobool.i.not.i.i32, label %sg_page.exit.i37, label %do.body2.i.i34, !prof !29

do.body2.i.i34:                                   ; preds = %for.body.i33
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #7, !srcloc !30
  unreachable

sg_page.exit.i37:                                 ; preds = %for.body.i33
  %and.i.i35 = and i32 %28, -4
  %29 = inttoptr i32 %and.i.i35 to ptr
  %length.i36 = getelementptr %struct.mthca_icm_chunk, ptr %chunk.043, i32 0, i32 3, i32 %i.017.i, i32 2
  %30 = ptrtoint ptr %length.i36 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %length.i36, align 4
  %dec.i.i = add i32 %31, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %dec.i.i)
  %tobool.not.i.i.i = icmp ult i32 %dec.i.i, 4096
  %shr.i.i = lshr i32 %dec.i.i, 12
  %32 = tail call i32 @llvm.ctlz.i32(i32 %shr.i.i, i1 true) #7, !range !32
  %sub.i.i.i = sub nuw nsw i32 32, %32
  %cond.i.i.i = select i1 %tobool.not.i.i.i, i32 0, i32 %sub.i.i.i
  tail call void @__free_pages(ptr noundef %29, i32 noundef %cond.i.i.i) #7
  %inc.i39 = add nuw nsw i32 %i.017.i, 1
  %33 = ptrtoint ptr %npages2.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %npages2.i, align 4
  %cmp3.i = icmp slt i32 %inc.i39, %34
  br i1 %cmp3.i, label %sg_page.exit.i37.for.body.i33_crit_edge, label %sg_page.exit.i37.if.end10_crit_edge

sg_page.exit.i37.if.end10_crit_edge:              ; preds = %sg_page.exit.i37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

sg_page.exit.i37.for.body.i33_crit_edge:          ; preds = %sg_page.exit.i37
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i33

if.end10:                                         ; preds = %sg_page.exit.i37.if.end10_crit_edge, %if.end.i.if.end10_crit_edge, %sg_page.exit.i.if.end10_crit_edge, %if.then9.if.end10_crit_edge
  tail call void @kfree(ptr noundef %chunk.043) #7
  %cmp.not = icmp eq ptr %tmp.046, %icm
  br i1 %cmp.not, label %if.end10.for.end_crit_edge, label %if.end10.for.body_crit_edge

if.end10.for.body_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end10.for.end_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %if.end10.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @kfree(ptr noundef nonnull %icm) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mthca_alloc_icm(ptr nocapture noundef readonly %dev, i32 noundef %npages, i32 noundef %gfp_mask, i32 noundef %coherent) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %coherent)
  %tobool.not = icmp eq i32 %coherent, 0
  %and = and i32 %gfp_mask, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1 = icmp eq i32 %and, 0
  %0 = or i1 %tobool.not, %tobool1
  br i1 %0, label %do.end9, label %do.body4, !prof !29

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/infiniband/hw/mthca/mthca_memfree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 146, 0\0A.popsection", ""() #7, !srcloc !33
  unreachable

do.end9:                                          ; preds = %entry
  %and10 = and i32 %gfp_mask, -8195
  %and.i.i = and i32 %gfp_mask, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i19.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i19.i, label %do.end9.kmalloc.exit_crit_edge, label %if.end.i20.i, !prof !29

do.end9.kmalloc.exit_crit_edge:                   ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %kmalloc.exit

if.end.i20.i:                                     ; preds = %do.end9
  %and2.i.i = and i32 %gfp_mask, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool3.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool3.not.i.i, label %if.end5.i.i, label %if.end.i20.i.kmalloc.exit_crit_edge

if.end.i20.i.kmalloc.exit_crit_edge:              ; preds = %if.end.i20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %kmalloc.exit

if.end5.i.i:                                      ; preds = %if.end.i20.i
  call void @__sanitizer_cov_trace_pc() #9
  %and6.i.i = and i32 %gfp_mask, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i)
  %tobool7.not.i.i = icmp eq i32 %and6.i.i, 0
  %..i.i = select i1 %tobool7.not.i.i, i32 1, i32 2
  br label %kmalloc.exit

kmalloc.exit:                                     ; preds = %if.end5.i.i, %if.end.i20.i.kmalloc.exit_crit_edge, %do.end9.kmalloc.exit_crit_edge
  %retval.0.i21.i = phi i32 [ 0, %do.end9.kmalloc.exit_crit_edge ], [ 3, %if.end.i20.i.kmalloc.exit_crit_edge ], [ %..i.i, %if.end5.i.i ]
  %arrayidx6.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i21.i, i32 7
  %1 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx6.i, align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef %and10, i32 noundef 12) #11
  %tobool11.not = icmp eq ptr %call7.i, null
  br i1 %tobool11.not, label %kmalloc.exit.cleanup_crit_edge, label %if.end13

kmalloc.exit.cleanup_crit_edge:                   ; preds = %kmalloc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %kmalloc.exit
  %refcount = getelementptr inbounds %struct.mthca_icm, ptr %call7.i, i32 0, i32 1
  %3 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %refcount, align 8
  %4 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %call7.i, ptr %call7.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i, ptr %prev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %npages)
  %cmp175 = icmp sgt i32 %npages, 0
  br i1 %cmp175, label %while.body.lr.ph, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.body.lr.ph:                                 ; preds = %if.end13
  %and2.i.i142 = and i32 %gfp_mask, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i142)
  %tobool3.not.i.i143 = icmp eq i32 %and2.i.i142, 0
  %and6.i.i145 = and i32 %gfp_mask, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i145)
  %tobool7.not.i.i146 = icmp eq i32 %and6.i.i145, 0
  %..i.i147 = select i1 %tobool7.not.i.i146, i32 1, i32 2
  %pdev = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  %and.i.i154 = lshr i32 %gfp_mask, 5
  %6 = and i32 %and.i.i154, 256
  %or.i = or i32 %gfp_mask, 256
  %spec.select180 = select i1 %tobool3.not.i.i143, i32 %..i.i147, i32 3
  br label %while.body

while.body:                                       ; preds = %if.end73.while.body_crit_edge, %while.body.lr.ph
  %cur_order.0179 = phi i32 [ 6, %while.body.lr.ph ], [ %cur_order.2, %if.end73.while.body_crit_edge ]
  %chunk.0178 = phi ptr [ null, %while.body.lr.ph ], [ %chunk.3, %if.end73.while.body_crit_edge ]
  %npages.addr.0176 = phi i32 [ %npages, %while.body.lr.ph ], [ %npages.addr.1, %if.end73.while.body_crit_edge ]
  %tobool15.not = icmp eq ptr %chunk.0178, null
  br i1 %tobool15.not, label %if.then16, label %while.body.if.end24_crit_edge

while.body.if.end24_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then16:                                        ; preds = %while.body
  br i1 %cmp.i19.i, label %if.then16.kmalloc.exit152_crit_edge, label %if.end.i20.i144, !prof !29

if.then16.kmalloc.exit152_crit_edge:              ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  br label %kmalloc.exit152

if.end.i20.i144:                                  ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  br label %kmalloc.exit152

kmalloc.exit152:                                  ; preds = %if.end.i20.i144, %if.then16.kmalloc.exit152_crit_edge
  %retval.0.i21.i149 = phi i32 [ 0, %if.then16.kmalloc.exit152_crit_edge ], [ %spec.select180, %if.end.i20.i144 ]
  %arrayidx6.i150 = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i21.i149, i32 8
  %7 = ptrtoint ptr %arrayidx6.i150 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx6.i150, align 4
  %call7.i151 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef %and10, i32 noundef 256) #11
  %tobool19.not = icmp eq ptr %call7.i151, null
  br i1 %tobool19.not, label %kmalloc.exit152.fail_crit_edge, label %if.end21

kmalloc.exit152.fail_crit_edge:                   ; preds = %kmalloc.exit152
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

if.end21:                                         ; preds = %kmalloc.exit152
  %mem = getelementptr inbounds %struct.mthca_icm_chunk, ptr %call7.i151, i32 0, i32 3
  tail call void @sg_init_table(ptr noundef %mem, i32 noundef 12) #7
  %npages22 = getelementptr inbounds %struct.mthca_icm_chunk, ptr %call7.i151, i32 0, i32 1
  %9 = ptrtoint ptr %npages22 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %npages22, align 8
  %nsg = getelementptr inbounds %struct.mthca_icm_chunk, ptr %call7.i151, i32 0, i32 2
  %10 = ptrtoint ptr %nsg to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %nsg, align 4
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i151, ptr noundef %12, ptr noundef nonnull %call7.i) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end21.if.end24_crit_edge

if.end21.if.end24_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.end.i.i:                                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i151, ptr %prev.i, align 4
  %14 = ptrtoint ptr %call7.i151 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i, ptr %call7.i151, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i151, i32 0, i32 1
  %15 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev3.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %call7.i151, ptr %12, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.end.i.i, %if.end21.if.end24_crit_edge, %while.body.if.end24_crit_edge
  %chunk.1 = phi ptr [ %chunk.0178, %while.body.if.end24_crit_edge ], [ %call7.i151, %if.end21.if.end24_crit_edge ], [ %call7.i151, %if.end.i.i ]
  br label %while.cond25

while.cond25:                                     ; preds = %while.cond25.while.cond25_crit_edge, %if.end24
  %cur_order.1 = phi i32 [ %cur_order.0179, %if.end24 ], [ %dec, %while.cond25.while.cond25_crit_edge ]
  %shl = shl nuw i32 1, %cur_order.1
  %cmp26 = icmp slt i32 %npages.addr.0176, %shl
  %dec = add i32 %cur_order.1, -1
  br i1 %cmp26, label %while.cond25.while.cond25_crit_edge, label %while.end

while.cond25.while.cond25_crit_edge:              ; preds = %while.cond25
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond25

while.end:                                        ; preds = %while.cond25
  br i1 %tobool.not, label %if.else, label %if.then29

if.then29:                                        ; preds = %while.end
  %17 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev, align 8
  %dev30 = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  %npages32 = getelementptr inbounds %struct.mthca_icm_chunk, ptr %chunk.1, i32 0, i32 1
  %19 = ptrtoint ptr %npages32 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %npages32, align 4
  %arrayidx = getelementptr %struct.mthca_icm_chunk, ptr %chunk.1, i32 0, i32 3, i32 %20
  %shl.i = shl i32 4096, %cur_order.1
  %dma_address.i = getelementptr %struct.mthca_icm_chunk, ptr %chunk.1, i32 0, i32 3, i32 %20, i32 3
  %call.i.i155 = tail call ptr @dma_alloc_attrs(ptr noundef %dev30, i32 noundef %shl.i, ptr noundef %dma_address.i, i32 noundef %gfp_mask, i32 noundef %6) #7
  %tobool.not.i = icmp eq ptr %call.i.i155, null
  br i1 %tobool.not.i, label %if.then29.if.else68_crit_edge, label %if.end.i

if.then29.if.else68_crit_edge:                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else68

if.end.i:                                         ; preds = %if.then29
  %21 = ptrtoint ptr %call.i.i155 to i32
  %cmp.i.i = icmp ugt ptr %call.i.i155, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.end.i.do.body5.i.i_crit_edge, !prof !29

if.end.i.do.body5.i.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body5.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %22 = load ptr, ptr @high_memory, align 4
  %cmp1.i.i = icmp ugt ptr %22, %call.i.i155
  br i1 %cmp1.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.do.body5.i.i_crit_edge, !prof !29

land.lhs.true.i.i.do.body5.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body5.i.i

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %sub.i.i = add i32 %21, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %23 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i.i = add i32 %23, %shr.i.i
  %call.i20.i = tail call i32 @pfn_valid(i32 noundef %add.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20.i)
  %tobool.i.i = icmp eq i32 %call.i20.i, 0
  br i1 %tobool.i.i, label %land.rhs.i.i.do.body5.i.i_crit_edge, label %do.end8.i.i, !prof !34

land.rhs.i.i.do.body5.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body5.i.i

do.body5.i.i:                                     ; preds = %land.rhs.i.i.do.body5.i.i_crit_edge, %land.lhs.true.i.i.do.body5.i.i_crit_edge, %if.end.i.do.body5.i.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #7, !srcloc !35
  unreachable

do.end8.i.i:                                      ; preds = %land.rhs.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %24 = load ptr, ptr @mem_map, align 4
  %add.ptr.i.i = getelementptr %struct.page, ptr %24, i32 %shr.i.i
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx, align 4
  %27 = ptrtoint ptr %add.ptr.i.i to i32
  %and2.i.i.i.i = and i32 %27, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and2.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %do.body11.i.i.i.i, label %do.body5.i.i.i.i, !prof !29

do.body5.i.i.i.i:                                 ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #7, !srcloc !36
  unreachable

do.body11.i.i.i.i:                                ; preds = %do.end8.i.i
  %and.i.i.i.i.i = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.i.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i.i, label %sg_set_buf.exit.i, label %do.body19.i.i.i.i, !prof !29

do.body19.i.i.i.i:                                ; preds = %do.body11.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #7, !srcloc !37
  unreachable

sg_set_buf.exit.i:                                ; preds = %do.body11.i.i.i.i
  %and.i21.i = and i32 %21, 4095
  %and.i.i.i.i = and i32 %26, 3
  %or.i.i.i.i = or i32 %and.i.i.i.i, %27
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %or.i.i.i.i, ptr %arrayidx, align 4
  %offset1.i.i.i = getelementptr %struct.mthca_icm_chunk, ptr %chunk.1, i32 0, i32 3, i32 %20, i32 1
  %29 = ptrtoint ptr %offset1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %and.i21.i, ptr %offset1.i.i.i, align 4
  %length.i.i.i = getelementptr %struct.mthca_icm_chunk, ptr %chunk.1, i32 0, i32 3, i32 %20, i32 2
  %30 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %shl.i, ptr %length.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i21.i)
  %tobool2.not.i = icmp eq i32 %and.i21.i, 0
  br i1 %tobool2.not.i, label %if.then43, label %do.body6.i, !prof !29

do.body6.i:                                       ; preds = %sg_set_buf.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/infiniband/hw/mthca/mthca_memfree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 132, 0\0A.popsection", ""() #7, !srcloc !38
  unreachable

if.else:                                          ; preds = %while.end
  %npages35 = getelementptr inbounds %struct.mthca_icm_chunk, ptr %chunk.1, i32 0, i32 1
  %31 = ptrtoint ptr %npages35 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %npages35, align 4
  %arrayidx36 = getelementptr %struct.mthca_icm_chunk, ptr %chunk.1, i32 0, i32 3, i32 %32
  %call38.i.i.i.i = tail call ptr @__alloc_pages(i32 noundef %or.i, i32 noundef %cur_order.1, i32 noundef 0, ptr noundef null) #7
  %tobool.not.i156 = icmp eq ptr %call38.i.i.i.i, null
  br i1 %tobool.not.i156, label %if.else.if.else68_crit_edge, label %if.end.i158

if.else.if.else68_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else68

if.end.i158:                                      ; preds = %if.else
  %shl.i157 = shl i32 4096, %cur_order.1
  %33 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx36, align 4
  %35 = ptrtoint ptr %call38.i.i.i.i to i32
  %and2.i.i.i = and i32 %35, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %do.body11.i.i.i, label %do.body5.i.i.i, !prof !29

do.body5.i.i.i:                                   ; preds = %if.end.i158
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #7, !srcloc !36
  unreachable

do.body11.i.i.i:                                  ; preds = %if.end.i158
  %and.i.i.i.i159 = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i159)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i159, 0
  br i1 %tobool.i.not.i.i.i, label %if.else46, label %do.body19.i.i.i, !prof !29

do.body19.i.i.i:                                  ; preds = %do.body11.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #7, !srcloc !37
  unreachable

if.then43:                                        ; preds = %sg_set_buf.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %dma_length.i = getelementptr %struct.mthca_icm_chunk, ptr %chunk.1, i32 0, i32 3, i32 %20, i32 4
  %36 = ptrtoint ptr %dma_length.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %shl.i, ptr %dma_length.i, align 4
  %37 = ptrtoint ptr %npages32 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %npages32, align 4
  %inc = add i32 %38, 1
  store i32 %inc, ptr %npages32, align 4
  %nsg44 = getelementptr inbounds %struct.mthca_icm_chunk, ptr %chunk.1, i32 0, i32 2
  %39 = ptrtoint ptr %nsg44 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %nsg44, align 4
  %inc45 = add i32 %40, 1
  store i32 %inc45, ptr %nsg44, align 4
  br label %if.end62

if.else46:                                        ; preds = %do.body11.i.i.i
  %and.i.i.i = and i32 %34, 3
  %or.i.i.i = or i32 %and.i.i.i, %35
  %41 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %or.i.i.i, ptr %arrayidx36, align 4
  %offset1.i.i = getelementptr %struct.mthca_icm_chunk, ptr %chunk.1, i32 0, i32 3, i32 %32, i32 1
  %42 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %offset1.i.i, align 4
  %length.i.i = getelementptr %struct.mthca_icm_chunk, ptr %chunk.1, i32 0, i32 3, i32 %32, i32 2
  %43 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %shl.i157, ptr %length.i.i, align 4
  %44 = ptrtoint ptr %npages35 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %npages35, align 4
  %inc164 = add i32 %45, 1
  store i32 %inc164, ptr %npages35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %inc164)
  %cmp48 = icmp eq i32 %inc164, 12
  br i1 %cmp48, label %if.then49, label %if.else46.if.end62_crit_edge

if.else46.if.end62_crit_edge:                     ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

if.then49:                                        ; preds = %if.else46
  %46 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pdev, align 8
  %dev51 = getelementptr inbounds %struct.pci_dev, ptr %47, i32 0, i32 44
  %mem52 = getelementptr inbounds %struct.mthca_icm_chunk, ptr %chunk.1, i32 0, i32 3
  %call55 = tail call i32 @dma_map_sg_attrs(ptr noundef %dev51, ptr noundef %mem52, i32 noundef 12, i32 noundef 0, i32 noundef 0) #7
  %nsg56 = getelementptr inbounds %struct.mthca_icm_chunk, ptr %chunk.1, i32 0, i32 2
  %48 = ptrtoint ptr %nsg56 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %call55, ptr %nsg56, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call55)
  %cmp58 = icmp slt i32 %call55, 1
  br i1 %cmp58, label %if.then49.fail_crit_edge, label %if.then49.if.end62_crit_edge

if.then49.if.end62_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

if.then49.fail_crit_edge:                         ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

if.end62:                                         ; preds = %if.then49.if.end62_crit_edge, %if.else46.if.end62_crit_edge, %if.then43
  %npages41165 = phi ptr [ %npages35, %if.else46.if.end62_crit_edge ], [ %npages35, %if.then49.if.end62_crit_edge ], [ %npages32, %if.then43 ]
  %49 = ptrtoint ptr %npages41165 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %npages41165, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %50)
  %cmp64 = icmp eq i32 %50, 12
  %spec.select = select i1 %cmp64, ptr null, ptr %chunk.1
  %sub = sub i32 %npages.addr.0176, %shl
  br label %if.end73

if.else68:                                        ; preds = %if.else.if.else68_crit_edge, %if.then29.if.else68_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp70 = icmp slt i32 %dec, 0
  br i1 %cmp70, label %if.else68.fail_crit_edge, label %if.else68.if.end73_crit_edge

if.else68.if.end73_crit_edge:                     ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end73

if.else68.fail_crit_edge:                         ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

if.end73:                                         ; preds = %if.else68.if.end73_crit_edge, %if.end62
  %npages.addr.1 = phi i32 [ %npages.addr.0176, %if.else68.if.end73_crit_edge ], [ %sub, %if.end62 ]
  %chunk.3 = phi ptr [ %chunk.1, %if.else68.if.end73_crit_edge ], [ %spec.select, %if.end62 ]
  %cur_order.2 = phi i32 [ %dec, %if.else68.if.end73_crit_edge ], [ %cur_order.1, %if.end62 ]
  %cmp = icmp sgt i32 %npages.addr.1, 0
  br i1 %cmp, label %if.end73.while.body_crit_edge, label %while.end74

if.end73.while.body_crit_edge:                    ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end74:                                      ; preds = %if.end73
  %tobool.not.not = xor i1 %tobool.not, true
  %tobool76.not = icmp eq ptr %chunk.3, null
  %or.cond = select i1 %tobool.not.not, i1 true, i1 %tobool76.not
  br i1 %or.cond, label %while.end74.cleanup_crit_edge, label %if.then77

while.end74.cleanup_crit_edge:                    ; preds = %while.end74
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then77:                                        ; preds = %while.end74
  %pdev78 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  %51 = ptrtoint ptr %pdev78 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pdev78, align 8
  %dev79 = getelementptr inbounds %struct.pci_dev, ptr %52, i32 0, i32 44
  %mem80 = getelementptr inbounds %struct.mthca_icm_chunk, ptr %chunk.3, i32 0, i32 3
  %npages82 = getelementptr inbounds %struct.mthca_icm_chunk, ptr %chunk.3, i32 0, i32 1
  %53 = ptrtoint ptr %npages82 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %npages82, align 4
  %call83 = tail call i32 @dma_map_sg_attrs(ptr noundef %dev79, ptr noundef %mem80, i32 noundef %54, i32 noundef 0, i32 noundef 0) #7
  %nsg84 = getelementptr inbounds %struct.mthca_icm_chunk, ptr %chunk.3, i32 0, i32 2
  %55 = ptrtoint ptr %nsg84 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %call83, ptr %nsg84, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call83)
  %cmp86 = icmp slt i32 %call83, 1
  br i1 %cmp86, label %if.then77.fail_crit_edge, label %if.then77.cleanup_crit_edge

if.then77.cleanup_crit_edge:                      ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then77.fail_crit_edge:                         ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

fail:                                             ; preds = %if.then77.fail_crit_edge, %if.else68.fail_crit_edge, %if.then49.fail_crit_edge, %kmalloc.exit152.fail_crit_edge
  tail call void @mthca_free_icm(ptr noundef %dev, ptr noundef nonnull %call7.i, i32 noundef %coherent)
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.then77.cleanup_crit_edge, %while.end74.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %kmalloc.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %fail ], [ null, %kmalloc.exit.cleanup_crit_edge ], [ %call7.i, %if.then77.cleanup_crit_edge ], [ %call7.i, %while.end74.cleanup_crit_edge ], [ %call7.i, %if.end13.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mthca_table_get(ptr noundef %dev, ptr noundef %table, i32 noundef %obj) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %num_obj = getelementptr inbounds %struct.mthca_icm_table, ptr %table, i32 0, i32 2
  %0 = ptrtoint ptr %num_obj to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_obj, align 4
  %sub = add i32 %1, -1
  %and = and i32 %sub, %obj
  %obj_size = getelementptr inbounds %struct.mthca_icm_table, ptr %table, i32 0, i32 3
  %2 = ptrtoint ptr %obj_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %obj_size, align 8
  %mul = mul i32 %and, %3
  %div = sdiv i32 %mul, 262144
  %mutex = getelementptr inbounds %struct.mthca_icm_table, ptr %table, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %arrayidx = getelementptr %struct.mthca_icm_table, ptr %table, i32 0, i32 7, i32 %div
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %refcount = getelementptr inbounds %struct.mthca_icm, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %refcount, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %refcount, align 4
  br label %out

if.end:                                           ; preds = %entry
  %lowmem = getelementptr inbounds %struct.mthca_icm_table, ptr %table, i32 0, i32 4
  %8 = ptrtoint ptr %lowmem to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %lowmem, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool3.not = icmp eq i32 %9, 0
  %or = select i1 %tobool3.not, i32 1060034, i32 11456
  %coherent = getelementptr inbounds %struct.mthca_icm_table, ptr %table, i32 0, i32 5
  %10 = ptrtoint ptr %coherent to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %coherent, align 8
  %call = tail call ptr @mthca_alloc_icm(ptr noundef %dev, i32 noundef 64, i32 noundef %or, i32 noundef %11)
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call, ptr %arrayidx, align 4
  %tobool8.not = icmp eq ptr %call, null
  br i1 %tobool8.not, label %if.end.out_crit_edge, label %if.end10

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end10:                                         ; preds = %if.end
  %13 = ptrtoint ptr %table to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %table, align 8
  %mul13 = shl nsw i32 %div, 18
  %conv = sext i32 %mul13 to i64
  %add = add i64 %14, %conv
  %call14 = tail call i32 @mthca_MAP_ICM(ptr noundef %dev, ptr noundef nonnull %call, i64 noundef %add) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  br i1 %tobool15.not, label %if.end22, label %if.then16

if.then16:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %coherent to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %coherent, align 8
  tail call void @mthca_free_icm(ptr noundef %dev, ptr noundef %16, i32 noundef %18)
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %arrayidx, align 4
  br label %out

if.end22:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %refcount25 = getelementptr inbounds %struct.mthca_icm, ptr %16, i32 0, i32 1
  %20 = ptrtoint ptr %refcount25 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %refcount25, align 4
  %inc26 = add i32 %21, 1
  store i32 %inc26, ptr %refcount25, align 4
  br label %out

out:                                              ; preds = %if.end22, %if.then16, %if.end.out_crit_edge, %if.then
  %ret.0 = phi i32 [ 0, %if.then ], [ -12, %if.then16 ], [ 0, %if.end22 ], [ -12, %if.end.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_MAP_ICM(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mthca_table_put(ptr noundef %dev, ptr noundef %table, i32 noundef %obj) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mthca_flags.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %mthca_flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mthca_flags.i, align 8
  %and.i = and i32 %1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %num_obj = getelementptr inbounds %struct.mthca_icm_table, ptr %table, i32 0, i32 2
  %2 = ptrtoint ptr %num_obj to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_obj, align 4
  %sub = add i32 %3, -1
  %and = and i32 %sub, %obj
  %obj_size = getelementptr inbounds %struct.mthca_icm_table, ptr %table, i32 0, i32 3
  %4 = ptrtoint ptr %obj_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %obj_size, align 8
  %mul = mul i32 %and, %5
  %div = sdiv i32 %mul, 262144
  %mutex = getelementptr inbounds %struct.mthca_icm_table, ptr %table, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %arrayidx = getelementptr %struct.mthca_icm_table, ptr %table, i32 0, i32 7, i32 %div
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %refcount = getelementptr inbounds %struct.mthca_icm, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %refcount, align 4
  %dec = add i32 %9, -1
  store i32 %dec, ptr %refcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %if.then1, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %table to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %table, align 8
  %mul2 = shl nsw i32 %div, 18
  %conv = sext i32 %mul2 to i64
  %add = add i64 %11, %conv
  %call3 = tail call i32 @mthca_UNMAP_ICM(ptr noundef %dev, i64 noundef %add, i32 noundef 64) #7
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %coherent = getelementptr inbounds %struct.mthca_icm_table, ptr %table, i32 0, i32 5
  %14 = ptrtoint ptr %coherent to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %coherent, align 8
  tail call void @mthca_free_icm(ptr noundef %dev, ptr noundef %13, i32 noundef %15)
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %arrayidx, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then1, %if.end.if.end8_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_UNMAP_ICM(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mthca_table_find(ptr noundef %table, i32 noundef %obj, ptr noundef writeonly %dma_handle) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lowmem = getelementptr inbounds %struct.mthca_icm_table, ptr %table, i32 0, i32 4
  %0 = ptrtoint ptr %lowmem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %lowmem, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.mthca_icm_table, ptr %table, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %num_obj = getelementptr inbounds %struct.mthca_icm_table, ptr %table, i32 0, i32 2
  %2 = ptrtoint ptr %num_obj to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_obj, align 4
  %sub = add i32 %3, -1
  %and = and i32 %sub, %obj
  %obj_size = getelementptr inbounds %struct.mthca_icm_table, ptr %table, i32 0, i32 3
  %4 = ptrtoint ptr %obj_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %obj_size, align 8
  %mul = mul i32 %and, %5
  %mul.frozen = freeze i32 %mul
  %div = sdiv i32 %mul.frozen, 262144
  %arrayidx = getelementptr %struct.mthca_icm_table, ptr %table, i32 0, i32 7, i32 %div
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %8 = mul i32 %div, 262144
  %rem.decomposed = sub i32 %mul.frozen, %8
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %if.end.out.thread_crit_edge, label %for.cond.preheader

if.end.out.thread_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.thread

for.cond.preheader:                               ; preds = %if.end
  %9 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %chunk.095 = load ptr, ptr %7, align 4
  %cmp.not96 = icmp eq ptr %chunk.095, %7
  br i1 %cmp.not96, label %for.cond.preheader.out.thread_crit_edge, label %for.cond6.preheader.lr.ph

for.cond.preheader.out.thread_crit_edge:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.thread

for.cond6.preheader.lr.ph:                        ; preds = %for.cond.preheader
  %tobool9.not = icmp ne ptr %dma_handle, null
  br label %for.cond6.preheader

for.cond.loopexit:                                ; preds = %if.end29.for.cond.loopexit_crit_edge, %for.cond6.preheader.for.cond.loopexit_crit_edge
  %dma_offset.1.lcssa = phi i32 [ %dma_offset.097, %for.cond6.preheader.for.cond.loopexit_crit_edge ], [ %dma_offset.2, %if.end29.for.cond.loopexit_crit_edge ]
  %offset.1.lcssa = phi i32 [ %offset.098, %for.cond6.preheader.for.cond.loopexit_crit_edge ], [ %sub33, %if.end29.for.cond.loopexit_crit_edge ]
  %10 = ptrtoint ptr %chunk.099 to i32
  call void @__asan_load4_noabort(i32 %10)
  %chunk.0 = load ptr, ptr %chunk.099, align 4
  %cmp.not = icmp eq ptr %chunk.0, %7
  br i1 %cmp.not, label %for.cond.loopexit.out.thread_crit_edge, label %for.cond.loopexit.for.cond6.preheader_crit_edge

for.cond.loopexit.for.cond6.preheader_crit_edge:  ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond6.preheader

for.cond.loopexit.out.thread_crit_edge:           ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.thread

for.cond6.preheader:                              ; preds = %for.cond.loopexit.for.cond6.preheader_crit_edge, %for.cond6.preheader.lr.ph
  %chunk.099 = phi ptr [ %chunk.095, %for.cond6.preheader.lr.ph ], [ %chunk.0, %for.cond.loopexit.for.cond6.preheader_crit_edge ]
  %offset.098 = phi i32 [ %rem.decomposed, %for.cond6.preheader.lr.ph ], [ %offset.1.lcssa, %for.cond.loopexit.for.cond6.preheader_crit_edge ]
  %dma_offset.097 = phi i32 [ %rem.decomposed, %for.cond6.preheader.lr.ph ], [ %dma_offset.1.lcssa, %for.cond.loopexit.for.cond6.preheader_crit_edge ]
  %npages = getelementptr inbounds %struct.mthca_icm_chunk, ptr %chunk.099, i32 0, i32 1
  %11 = ptrtoint ptr %npages to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %npages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp789 = icmp sgt i32 %12, 0
  br i1 %cmp789, label %for.cond6.preheader.for.body8_crit_edge, label %for.cond6.preheader.for.cond.loopexit_crit_edge

for.cond6.preheader.for.cond.loopexit_crit_edge:  ; preds = %for.cond6.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.loopexit

for.cond6.preheader.for.body8_crit_edge:          ; preds = %for.cond6.preheader
  br label %for.body8

for.body8:                                        ; preds = %if.end29.for.body8_crit_edge, %for.cond6.preheader.for.body8_crit_edge
  %offset.193 = phi i32 [ %sub33, %if.end29.for.body8_crit_edge ], [ %offset.098, %for.cond6.preheader.for.body8_crit_edge ]
  %dma_offset.191 = phi i32 [ %dma_offset.2, %if.end29.for.body8_crit_edge ], [ %dma_offset.097, %for.cond6.preheader.for.body8_crit_edge ]
  %i.090 = phi i32 [ %inc, %if.end29.for.body8_crit_edge ], [ 0, %for.cond6.preheader.for.body8_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dma_offset.191)
  %cmp10 = icmp sgt i32 %dma_offset.191, -1
  %or.cond = select i1 %tobool9.not, i1 %cmp10, i1 false
  br i1 %or.cond, label %if.then11, label %for.body8.if.end22_crit_edge

for.body8.if.end22_crit_edge:                     ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then11:                                        ; preds = %for.body8
  %dma_length = getelementptr %struct.mthca_icm_chunk, ptr %chunk.099, i32 0, i32 3, i32 %i.090, i32 4
  %13 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dma_length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %dma_offset.191)
  %cmp13 = icmp ugt i32 %14, %dma_offset.191
  br i1 %cmp13, label %if.then14, label %if.then11.if.end17_crit_edge

if.then11.if.end17_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then14:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  %dma_address = getelementptr %struct.mthca_icm_chunk, ptr %chunk.099, i32 0, i32 3, i32 %i.090, i32 3
  %15 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dma_address, align 4
  %add = add i32 %16, %dma_offset.191
  %17 = ptrtoint ptr %dma_handle to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add, ptr %dma_handle, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.then11.if.end17_crit_edge
  %18 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dma_length, align 4
  %sub21 = sub i32 %dma_offset.191, %19
  br label %if.end22

if.end22:                                         ; preds = %if.end17, %for.body8.if.end22_crit_edge
  %dma_offset.2 = phi i32 [ %sub21, %if.end17 ], [ %dma_offset.191, %for.body8.if.end22_crit_edge ]
  %length = getelementptr %struct.mthca_icm_chunk, ptr %chunk.099, i32 0, i32 3, i32 %i.090, i32 2
  %20 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %offset.193, i32 %21)
  %cmp25 = icmp ult i32 %offset.193, %21
  br i1 %cmp25, label %if.then26, label %if.end29

if.then26:                                        ; preds = %if.end22
  %arrayidx24 = getelementptr %struct.mthca_icm_chunk, ptr %chunk.099, i32 0, i32 3, i32 %i.090
  %22 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx24, align 4
  %and.i.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %out, label %do.body2.i, !prof !29

do.body2.i:                                       ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #7, !srcloc !30
  unreachable

if.end29:                                         ; preds = %if.end22
  %sub33 = sub i32 %offset.193, %21
  %inc = add nuw nsw i32 %i.090, 1
  %24 = ptrtoint ptr %npages to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %npages, align 4
  %cmp7 = icmp slt i32 %inc, %25
  br i1 %cmp7, label %if.end29.for.body8_crit_edge, label %if.end29.for.cond.loopexit_crit_edge

if.end29.for.cond.loopexit_crit_edge:             ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.loopexit

if.end29.for.body8_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body8

out.thread:                                       ; preds = %for.cond.loopexit.out.thread_crit_edge, %for.cond.preheader.out.thread_crit_edge, %if.end.out.thread_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  br label %cleanup

out:                                              ; preds = %if.then26
  %and.i = and i32 %23, -4
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool42.not = icmp eq i32 %and.i, 0
  br i1 %tobool42.not, label %out.cleanup_crit_edge, label %cond.true

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cond.true:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %26 = load ptr, ptr @mem_map, align 4
  %sub.ptr.rhs.cast.i = ptrtoint ptr %26 to i32
  %sub.ptr.sub.i = sub i32 %and.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %27 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i = add i32 %sub.ptr.div.i, %27
  %shl.i = shl i32 %add.i, 12
  %28 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %shl.i, i32 -2130706432, i32 8454144) #10, !srcloc !31
  %29 = inttoptr i32 %28 to ptr
  %add.ptr44 = getelementptr i8, ptr %29, i32 %offset.193
  br label %cleanup

cleanup:                                          ; preds = %cond.true, %out.cleanup_crit_edge, %out.thread, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %add.ptr44, %cond.true ], [ null, %out.cleanup_crit_edge ], [ null, %out.thread ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mthca_table_get_range(ptr noundef %dev, ptr noundef %table, i32 noundef %start, i32 noundef %end) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %obj_size = getelementptr inbounds %struct.mthca_icm_table, ptr %table, i32 0, i32 3
  %0 = ptrtoint ptr %obj_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %obj_size, align 8
  %div = sdiv i32 262144, %1
  call void @__sanitizer_cov_trace_cmp4(i32 %start, i32 %end)
  %cmp.not17 = icmp sgt i32 %start, %end
  br i1 %cmp.not17, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.018 = phi i32 [ %add, %for.inc.for.body_crit_edge ], [ %start, %entry.for.body_crit_edge ]
  %call = tail call i32 @mthca_table_get(ptr noundef %dev, ptr noundef %table, i32 noundef %i.018)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.inc, label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %i.018, i32 %start)
  %cmp119 = icmp sgt i32 %i.018, %start
  br i1 %cmp119, label %while.cond.preheader.while.body_crit_edge, label %while.cond.preheader.cleanup_crit_edge

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

for.inc:                                          ; preds = %for.body
  %add = add i32 %i.018, %div
  %cmp.not = icmp sgt i32 %add, %end
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %i.120 = phi i32 [ %sub, %while.body.while.body_crit_edge ], [ %i.018, %while.cond.preheader.while.body_crit_edge ]
  %sub = sub i32 %i.120, %div
  tail call void @mthca_table_put(ptr noundef %dev, ptr noundef %table, i32 noundef %sub)
  %cmp1 = icmp sgt i32 %sub, %start
  br i1 %cmp1, label %while.body.while.body_crit_edge, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %while.cond.preheader.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %call, %while.body.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mthca_table_put_range(ptr noundef %dev, ptr noundef %table, i32 noundef %start, i32 noundef %end) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mthca_flags.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %mthca_flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mthca_flags.i, align 8
  %and.i = and i32 %1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %start, i32 %end)
  %cmp.not5 = icmp sgt i32 %start, %end
  %or.cond = or i1 %tobool.not, %cmp.not5
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %obj_size = getelementptr inbounds %struct.mthca_icm_table, ptr %table, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.06 = phi i32 [ %start, %for.body.lr.ph ], [ %add, %for.body.for.body_crit_edge ]
  tail call void @mthca_table_put(ptr noundef %dev, ptr noundef %table, i32 noundef %i.06)
  %2 = ptrtoint ptr %obj_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %obj_size, align 8
  %div = sdiv i32 262144, %3
  %add = add i32 %div, %i.06
  %cmp.not = icmp sgt i32 %add, %end
  br i1 %cmp.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mthca_alloc_icm_table(ptr noundef %dev, i64 noundef %virt, i32 noundef %obj_size, i32 noundef %nobj, i32 noundef %reserved, i32 noundef %use_lowmem, i32 noundef %use_coherent) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %div = sdiv i32 262144, %obj_size
  %add = add i32 %nobj, -1
  %sub = add i32 %add, %div
  %div1 = sdiv i32 %sub, %div
  %0 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %div1, i32 4) #7
  %1 = extractvalue { i32, i1 } %0, 1
  %2 = extractvalue { i32, i1 } %0, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %2, i32 120) #7
  %retval.0.i = select i1 %1, i32 -1, i32 %spec.select.i
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i, i32 noundef 3264) #12
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %call9.i to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %virt, ptr %call9.i, align 128
  %num_icm4 = getelementptr inbounds %struct.mthca_icm_table, ptr %call9.i, i32 0, i32 1
  %4 = ptrtoint ptr %num_icm4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %div1, ptr %num_icm4, align 8
  %num_obj = getelementptr inbounds %struct.mthca_icm_table, ptr %call9.i, i32 0, i32 2
  %5 = ptrtoint ptr %num_obj to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %nobj, ptr %num_obj, align 4
  %obj_size5 = getelementptr inbounds %struct.mthca_icm_table, ptr %call9.i, i32 0, i32 3
  %6 = ptrtoint ptr %obj_size5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %obj_size, ptr %obj_size5, align 16
  %lowmem = getelementptr inbounds %struct.mthca_icm_table, ptr %call9.i, i32 0, i32 4
  %7 = ptrtoint ptr %lowmem to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %use_lowmem, ptr %lowmem, align 4
  %coherent = getelementptr inbounds %struct.mthca_icm_table, ptr %call9.i, i32 0, i32 5
  %8 = ptrtoint ptr %coherent to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %use_coherent, ptr %coherent, align 8
  %mutex = getelementptr inbounds %struct.mthca_icm_table, ptr %call9.i, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str, ptr noundef nonnull @mthca_alloc_icm_table.__key) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div1)
  %cmp128 = icmp sgt i32 %div1, 0
  br i1 %cmp128, label %for.body.preheader, label %if.end.for.cond6.preheader_crit_edge

if.end.for.cond6.preheader_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond6.preheader

for.body.preheader:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %uglygep = getelementptr i8, ptr %call9.i, i32 120
  %9 = shl nuw i32 %div1, 2
  %10 = call ptr @memset(ptr %uglygep, i32 0, i32 %9)
  br label %for.cond6.preheader

for.cond6.preheader:                              ; preds = %for.body.preheader, %if.end.for.cond6.preheader_crit_edge
  %mul7 = mul i32 %reserved, %obj_size
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul7)
  %cmp8130 = icmp sgt i32 %mul7, 0
  br i1 %cmp8130, label %for.body9.lr.ph, label %for.cond6.preheader.cleanup_crit_edge

for.cond6.preheader.cleanup_crit_edge:            ; preds = %for.cond6.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body9.lr.ph:                                  ; preds = %for.cond6.preheader
  %mul12 = mul i32 %nobj, %obj_size
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %use_lowmem)
  %tobool19.not = icmp eq i32 %use_lowmem, 0
  %or = select i1 %tobool19.not, i32 1060034, i32 11456
  br label %for.body9

for.body9:                                        ; preds = %if.end40.for.body9_crit_edge, %for.body9.lr.ph
  %mul132 = phi i32 [ 0, %for.body9.lr.ph ], [ %mul11, %if.end40.for.body9_crit_edge ]
  %i.1131 = phi i32 [ 0, %for.body9.lr.ph ], [ %add10, %if.end40.for.body9_crit_edge ]
  %add10 = add i32 %i.1131, 1
  %mul11 = shl i32 %add10, 18
  call void @__sanitizer_cov_trace_cmp4(i32 %mul11, i32 %mul12)
  %cmp13 = icmp sgt i32 %mul11, %mul12
  %sub17 = sub i32 %mul12, %mul132
  %sub17.op = lshr i32 %sub17, 12
  %shr = select i1 %cmp13, i32 %sub17.op, i32 64
  %call20 = tail call ptr @mthca_alloc_icm(ptr noundef %dev, i32 noundef %shr, i32 noundef %or, i32 noundef %use_coherent)
  %arrayidx22 = getelementptr %struct.mthca_icm_table, ptr %call9.i, i32 0, i32 7, i32 %i.1131
  %11 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call20, ptr %arrayidx22, align 4
  %tobool25.not = icmp eq ptr %call20, null
  br i1 %tobool25.not, label %for.body9.err_crit_edge, label %if.end27

for.body9.err_crit_edge:                          ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end27:                                         ; preds = %for.body9
  %conv = sext i32 %mul132 to i64
  %add31 = add i64 %conv, %virt
  %call32 = tail call i32 @mthca_MAP_ICM(ptr noundef %dev, ptr noundef nonnull %call20, i64 noundef %add31) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  %12 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx22, align 4
  br i1 %tobool33.not, label %if.end40, label %if.then34

if.then34:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %coherent to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %coherent, align 8
  tail call void @mthca_free_icm(ptr noundef %dev, ptr noundef %13, i32 noundef %15)
  %16 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %arrayidx22, align 4
  br label %err

if.end40:                                         ; preds = %if.end27
  %refcount = getelementptr inbounds %struct.mthca_icm, ptr %13, i32 0, i32 1
  %17 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %refcount, align 4
  %inc43 = add i32 %18, 1
  store i32 %inc43, ptr %refcount, align 4
  %cmp8 = icmp slt i32 %mul11, %mul7
  br i1 %cmp8, label %if.end40.for.body9_crit_edge, label %if.end40.cleanup_crit_edge

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end40.for.body9_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body9

err:                                              ; preds = %if.then34, %for.body9.err_crit_edge
  br i1 %cmp128, label %err.for.body50_crit_edge, label %err.for.end65_crit_edge

err.for.end65_crit_edge:                          ; preds = %err
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end65

err.for.body50_crit_edge:                         ; preds = %err
  br label %for.body50

for.body50:                                       ; preds = %for.inc63.for.body50_crit_edge, %err.for.body50_crit_edge
  %i.2134 = phi i32 [ %inc64, %for.inc63.for.body50_crit_edge ], [ 0, %err.for.body50_crit_edge ]
  %arrayidx52 = getelementptr %struct.mthca_icm_table, ptr %call9.i, i32 0, i32 7, i32 %i.2134
  %19 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx52, align 4
  %tobool53.not = icmp eq ptr %20, null
  br i1 %tobool53.not, label %for.body50.for.inc63_crit_edge, label %if.then54

for.body50.for.inc63_crit_edge:                   ; preds = %for.body50
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc63

if.then54:                                        ; preds = %for.body50
  call void @__sanitizer_cov_trace_pc() #9
  %mul55 = shl i32 %i.2134, 18
  %conv56 = sext i32 %mul55 to i64
  %add57 = add i64 %conv56, %virt
  %call58 = tail call i32 @mthca_UNMAP_ICM(ptr noundef %dev, i64 noundef %add57, i32 noundef 64) #7
  %21 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx52, align 4
  %23 = ptrtoint ptr %coherent to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %coherent, align 8
  tail call void @mthca_free_icm(ptr noundef %dev, ptr noundef %22, i32 noundef %24)
  br label %for.inc63

for.inc63:                                        ; preds = %if.then54, %for.body50.for.inc63_crit_edge
  %inc64 = add nuw nsw i32 %i.2134, 1
  %exitcond.not = icmp eq i32 %inc64, %div1
  br i1 %exitcond.not, label %for.inc63.for.end65_crit_edge, label %for.inc63.for.body50_crit_edge

for.inc63.for.body50_crit_edge:                   ; preds = %for.inc63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body50

for.inc63.for.end65_crit_edge:                    ; preds = %for.inc63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end65

for.end65:                                        ; preds = %for.inc63.for.end65_crit_edge, %err.for.end65_crit_edge
  tail call void @kfree(ptr noundef nonnull %call9.i) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end65, %if.end40.cleanup_crit_edge, %for.cond6.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %for.end65 ], [ null, %entry.cleanup_crit_edge ], [ %call9.i, %for.cond6.preheader.cleanup_crit_edge ], [ %call9.i, %if.end40.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mthca_free_icm_table(ptr noundef %dev, ptr noundef %table) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %num_icm = getelementptr inbounds %struct.mthca_icm_table, ptr %table, i32 0, i32 1
  %0 = ptrtoint ptr %num_icm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_icm, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp13 = icmp sgt i32 %1, 0
  br i1 %cmp13, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %coherent = getelementptr inbounds %struct.mthca_icm_table, ptr %table, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.014 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mthca_icm_table, ptr %table, i32 0, i32 7, i32 %i.014
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %table to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %table, align 8
  %mul = shl i32 %i.014, 18
  %conv = sext i32 %mul to i64
  %add = add i64 %5, %conv
  %call = tail call i32 @mthca_UNMAP_ICM(ptr noundef %dev, i64 noundef %add, i32 noundef 64) #7
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %8 = ptrtoint ptr %coherent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %coherent, align 8
  tail call void @mthca_free_icm(ptr noundef %dev, ptr noundef %7, i32 noundef %9)
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.014, 1
  %10 = ptrtoint ptr %num_icm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_icm, align 8
  %cmp = icmp slt i32 %inc, %11
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @kfree(ptr noundef %table) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mthca_map_user_db(ptr noundef %dev, ptr nocapture noundef readonly %uar, ptr noundef %db_tab, i32 noundef %index, i64 noundef %uaddr) local_unnamed_addr #0 align 64 {
entry:
  %pages = alloca [1 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pages) #7
  %0 = ptrtoint ptr %pages to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %pages, align 4, !annotation !39
  %mthca_flags.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 3
  %1 = ptrtoint ptr %mthca_flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mthca_flags.i, align 8
  %and.i = and i32 %2, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index)
  %cmp = icmp slt i32 %index, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %uarc_size = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 19, i32 2
  %3 = ptrtoint ptr %uarc_size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %uarc_size, align 8
  %div = sdiv i32 %4, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %index)
  %cmp1 = icmp slt i32 %div, %index
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %if.end3

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %lor.lhs.false
  tail call void @mutex_lock_nested(ptr noundef %db_tab, i32 noundef 0) #7
  %div4118119 = lshr i32 %index, 9
  %arrayidx = getelementptr %struct.mthca_user_db_table, ptr %db_tab, i32 0, i32 1, i32 %div4118119
  %refcount = getelementptr %struct.mthca_user_db_table, ptr %db_tab, i32 0, i32 1, i32 %div4118119, i32 2
  %5 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %refcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %6)
  %cmp5 = icmp sgt i32 %6, 511
  br i1 %cmp5, label %if.end3.out_crit_edge, label %lor.lhs.false6

if.end3.out_crit_edge:                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

lor.lhs.false6:                                   ; preds = %if.end3
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %8)
  %tobool9.not = icmp eq i64 %8, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %uaddr)
  %cmp13.not = icmp eq i64 %8, %uaddr
  %or.cond = or i1 %tobool9.not, %cmp13.not
  %and = and i64 %uaddr, 4095
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool15.not = icmp eq i64 %and, 0
  %or.cond115 = and i1 %tobool15.not, %or.cond
  br i1 %or.cond115, label %if.end17, label %lor.lhs.false6.out_crit_edge

lor.lhs.false6.out_crit_edge:                     ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end17:                                         ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool21.not = icmp eq i32 %6, 0
  br i1 %tobool21.not, label %if.end26, label %if.then22

if.then22:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %inc = add nsw i32 %6, 1
  %9 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %inc, ptr %refcount, align 4
  br label %out

if.end26:                                         ; preds = %if.end17
  %10 = trunc i64 %uaddr to i32
  %conv = and i32 %10, -4096
  %call28 = call i32 @pin_user_pages_fast(i32 noundef %conv, i32 noundef 1, i32 noundef 65537, ptr noundef nonnull %pages) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.end26.out_crit_edge, label %if.end32

if.end26.out_crit_edge:                           ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end32:                                         ; preds = %if.end26
  %mem = getelementptr %struct.mthca_user_db_table, ptr %db_tab, i32 0, i32 1, i32 %div4118119, i32 1
  %11 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pages, align 4
  %13 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mem, align 4
  %15 = ptrtoint ptr %12 to i32
  %and2.i.i = and i32 %15, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool.not.i.i, label %do.body11.i.i, label %do.body5.i.i, !prof !29

do.body5.i.i:                                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #7, !srcloc !36
  unreachable

do.body11.i.i:                                    ; preds = %if.end32
  %and.i.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_set_page.exit, label %do.body19.i.i, !prof !29

do.body19.i.i:                                    ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #7, !srcloc !37
  unreachable

sg_set_page.exit:                                 ; preds = %do.body11.i.i
  %and.i.i = and i32 %14, 3
  %or.i.i = or i32 %and.i.i, %15
  %16 = ptrtoint ptr %mem to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or.i.i, ptr %mem, align 4
  %offset1.i = getelementptr %struct.mthca_user_db_table, ptr %db_tab, i32 0, i32 1, i32 %div4118119, i32 1, i32 1
  %17 = ptrtoint ptr %offset1.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %offset1.i, align 4
  %length.i = getelementptr %struct.mthca_user_db_table, ptr %db_tab, i32 0, i32 1, i32 %div4118119, i32 1, i32 2
  %18 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 4096, ptr %length.i, align 4
  %pdev = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  %19 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdev, align 8
  %dev38 = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  %call42 = call i32 @dma_map_sg_attrs(ptr noundef %dev38, ptr noundef %mem, i32 noundef 1, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp43 = icmp slt i32 %call42, 0
  br i1 %cmp43, label %if.then45, label %if.end47

if.then45:                                        ; preds = %sg_set_page.exit
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pages, align 4
  call void @unpin_user_page(ptr noundef %22) #7
  br label %out

if.end47:                                         ; preds = %sg_set_page.exit
  %dma_address = getelementptr %struct.mthca_user_db_table, ptr %db_tab, i32 0, i32 1, i32 %div4118119, i32 1, i32 3
  %23 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dma_address, align 4
  %conv51 = zext i32 %24 to i64
  %uarc_base.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 19, i32 1
  %25 = ptrtoint ptr %uarc_base.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %uarc_base.i, align 8
  %index.i = getelementptr inbounds %struct.mthca_uar, ptr %uar, i32 0, i32 1
  %27 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %index.i, align 4
  %29 = ptrtoint ptr %uarc_size to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %uarc_size, align 8
  %mul.i = mul i32 %30, %28
  %conv.i = sext i32 %mul.i to i64
  %mul2.i = shl i32 %div4118119, 12
  %conv3.i = sext i32 %mul2.i to i64
  %add.i = add i64 %26, %conv3.i
  %add4.i = add i64 %add.i, %conv.i
  %call53 = call i32 @mthca_MAP_ICM_page(ptr noundef %dev, i64 noundef %conv51, i64 noundef %add4.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end65, label %if.then55

if.then55:                                        ; preds = %if.end47
  %31 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pdev, align 8
  %dev57 = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  call void @dma_unmap_sg_attrs(ptr noundef %dev57, ptr noundef %mem, i32 noundef 1, i32 noundef 1, i32 noundef 0) #7
  %33 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %mem, align 4
  %and.i.i116 = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i116)
  %tobool.i.not.i = icmp eq i32 %and.i.i116, 0
  br i1 %tobool.i.not.i, label %sg_page.exit, label %do.body2.i, !prof !29

do.body2.i:                                       ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #7, !srcloc !30
  unreachable

sg_page.exit:                                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #9
  %and.i117 = and i32 %34, -4
  %35 = inttoptr i32 %and.i117 to ptr
  call void @unpin_user_page(ptr noundef %35) #7
  br label %out

if.end65:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %uaddr, ptr %arrayidx, align 8
  %37 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %refcount, align 4
  br label %out

out:                                              ; preds = %if.end65, %sg_page.exit, %if.then45, %if.end26.out_crit_edge, %if.then22, %lor.lhs.false6.out_crit_edge, %if.end3.out_crit_edge
  %ret.0 = phi i32 [ 0, %if.then22 ], [ %call28, %if.end26.out_crit_edge ], [ %call42, %if.then45 ], [ %call53, %sg_page.exit ], [ 0, %if.end65 ], [ -22, %lor.lhs.false6.out_crit_edge ], [ -22, %if.end3.out_crit_edge ]
  call void @mutex_unlock(ptr noundef %db_tab) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ 0, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pages) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pin_user_pages_fast(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unpin_user_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_MAP_ICM_page(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mthca_unmap_user_db(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %uar, ptr noundef %db_tab, i32 noundef %index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mthca_flags.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %mthca_flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mthca_flags.i, align 8
  %and.i = and i32 %1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_lock_nested(ptr noundef %db_tab, i32 noundef 0) #7
  %div = sdiv i32 %index, 512
  %refcount = getelementptr %struct.mthca_user_db_table, ptr %db_tab, i32 0, i32 1, i32 %div, i32 2
  %2 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %refcount, align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr %refcount, align 4
  tail call void @mutex_unlock(ptr noundef %db_tab) #7
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mthca_init_user_db_tab(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mthca_flags.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %mthca_flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mthca_flags.i, align 8
  %and.i = and i32 %1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %uarc_size = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 19, i32 2
  %2 = ptrtoint ptr %uarc_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %uarc_size, align 8
  %div = sdiv i32 %3, 4096
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %div, i32 32) #7
  %5 = extractvalue { i32, i1 } %4, 1
  %6 = extractvalue { i32, i1 } %4, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %6, i32 96) #7
  %retval.0.i = select i1 %5, i32 -1, i32 %spec.select.i
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i, i32 noundef 3264) #12
  %tobool3.not = icmp eq ptr %call9.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %if.end
  tail call void @__mutex_init(ptr noundef nonnull %call9.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @mthca_init_user_db_tab.__key) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %3)
  %cmp24 = icmp sgt i32 %3, 4095
  br i1 %cmp24, label %do.body.for.body_crit_edge, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body.for.body_crit_edge:                       ; preds = %do.body
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.body.for.body_crit_edge
  %i.025 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %do.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mthca_user_db_table, ptr %call9.i, i32 0, i32 1, i32 %i.025
  %refcount = getelementptr %struct.mthca_user_db_table, ptr %call9.i, i32 0, i32 1, i32 %i.025, i32 2
  %7 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %refcount, align 4
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 0, ptr %arrayidx, align 32
  %mem = getelementptr %struct.mthca_user_db_table, ptr %call9.i, i32 0, i32 1, i32 %i.025, i32 1
  tail call void @sg_init_table(ptr noundef %mem, i32 noundef 1) #7
  %inc = add nuw nsw i32 %i.025, 1
  %exitcond.not = icmp eq i32 %inc, %div
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %do.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ], [ %call9.i, %do.body.cleanup_crit_edge ], [ %call9.i, %for.body.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mthca_cleanup_user_db_tab(ptr noundef %dev, ptr nocapture noundef readonly %uar, ptr noundef %db_tab) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mthca_flags.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %mthca_flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mthca_flags.i, align 8
  %and.i = and i32 %1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %uarc_size = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 19, i32 2
  %2 = ptrtoint ptr %uarc_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %uarc_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %3)
  %cmp27 = icmp sgt i32 %3, 4095
  br i1 %cmp27, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %uarc_base.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 19, i32 1
  %index.i = getelementptr inbounds %struct.mthca_uar, ptr %uar, i32 0, i32 1
  %pdev = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %4 = phi i32 [ %3, %for.body.lr.ph ], [ %17, %for.inc.for.body_crit_edge ]
  %i.028 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mthca_user_db_table, ptr %db_tab, i32 0, i32 1, i32 %i.028
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %6)
  %tobool1.not = icmp eq i64 %6, 0
  br i1 %tobool1.not, label %for.body.for.inc_crit_edge, label %if.then2

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then2:                                         ; preds = %for.body
  %7 = ptrtoint ptr %uarc_base.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %uarc_base.i, align 8
  %9 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %index.i, align 4
  %mul.i = mul i32 %10, %4
  %conv.i = sext i32 %mul.i to i64
  %mul2.i = shl i32 %i.028, 12
  %conv3.i = sext i32 %mul2.i to i64
  %add.i = add i64 %8, %conv3.i
  %add4.i = add i64 %add.i, %conv.i
  %call4 = tail call i32 @mthca_UNMAP_ICM(ptr noundef %dev, i64 noundef %add4.i, i32 noundef 1) #7
  %11 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev, align 8
  %dev5 = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  %mem = getelementptr %struct.mthca_user_db_table, ptr %db_tab, i32 0, i32 1, i32 %i.028, i32 1
  tail call void @dma_unmap_sg_attrs(ptr noundef %dev5, ptr noundef %mem, i32 noundef 1, i32 noundef 1, i32 noundef 0) #7
  %13 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mem, align 4
  %and.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %sg_page.exit, label %do.body2.i, !prof !29

do.body2.i:                                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #7, !srcloc !30
  unreachable

sg_page.exit:                                     ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  %and.i25 = and i32 %14, -4
  %15 = inttoptr i32 %and.i25 to ptr
  tail call void @unpin_user_page(ptr noundef %15) #7
  br label %for.inc

for.inc:                                          ; preds = %sg_page.exit, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.028, 1
  %16 = ptrtoint ptr %uarc_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %uarc_size, align 8
  %div = sdiv i32 %17, 4096
  %cmp = icmp slt i32 %inc, %div
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  tail call void @kfree(ptr noundef %db_tab) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mthca_alloc_db(ptr noundef %dev, i32 noundef %type, i32 noundef %qn, ptr nocapture noundef writeonly %db) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %db_tab = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 30
  %0 = ptrtoint ptr %db_tab to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %db_tab, align 8
  %mutex = getelementptr inbounds %struct.mthca_db_table, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %2 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %entry.out_crit_edge [
    i32 2, label %entry.sw.bb_crit_edge
    i32 3, label %entry.sw.bb_crit_edge153
    i32 1, label %entry.sw.bb2_crit_edge
    i32 4, label %entry.sw.bb2_crit_edge154
    i32 5, label %entry.sw.bb2_crit_edge155
  ]

entry.sw.bb2_crit_edge155:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

entry.sw.bb2_crit_edge154:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

entry.sw.bb_crit_edge153:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge153
  %3 = ptrtoint ptr %db_tab to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %db_tab, align 8
  %max_group1 = getelementptr inbounds %struct.mthca_db_table, ptr %4, i32 0, i32 1
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge154, %entry.sw.bb2_crit_edge155
  %5 = ptrtoint ptr %db_tab to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %db_tab, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %sub = add i32 %8, -1
  %min_group2 = getelementptr inbounds %struct.mthca_db_table, ptr %6, i32 0, i32 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb
  %cmp36 = phi i1 [ false, %sw.bb2 ], [ true, %sw.bb ]
  %cmp70 = phi i1 [ true, %sw.bb2 ], [ false, %sw.bb ]
  %start.0 = phi i32 [ %sub, %sw.bb2 ], [ 0, %sw.bb ]
  %end.0.in = phi ptr [ %min_group2, %sw.bb2 ], [ %max_group1, %sw.bb ]
  %dir.0 = phi i32 [ -1, %sw.bb2 ], [ 1, %sw.bb ]
  %9 = ptrtoint ptr %end.0.in to i32
  call void @__asan_load4_noabort(i32 %9)
  %end.0 = load i32, ptr %end.0.in, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %start.0, i32 %end.0)
  %cmp.not138 = icmp eq i32 %start.0, %end.0
  br i1 %cmp.not138, label %sw.epilog.for.end27_crit_edge, label %sw.epilog.for.body_crit_edge

sw.epilog.for.body_crit_edge:                     ; preds = %sw.epilog
  br label %for.body

sw.epilog.for.end27_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end27

for.cond12.preheader:                             ; preds = %for.inc
  br i1 %cmp.not138, label %for.cond12.preheader.for.end27_crit_edge, label %for.body14.lr.ph

for.cond12.preheader.for.end27_crit_edge:         ; preds = %for.cond12.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end27

for.body14.lr.ph:                                 ; preds = %for.cond12.preheader
  %10 = ptrtoint ptr %db_tab to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %db_tab, align 8
  %page16 = getelementptr inbounds %struct.mthca_db_table, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %page16 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %page16, align 4
  br label %for.body14

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %sw.epilog.for.body_crit_edge
  %i.0139 = phi i32 [ %add, %for.inc.for.body_crit_edge ], [ %start.0, %sw.epilog.for.body_crit_edge ]
  %14 = ptrtoint ptr %db_tab to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %db_tab, align 8
  %page6 = getelementptr inbounds %struct.mthca_db_table, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %page6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %page6, align 4
  %db_rec = getelementptr %struct.mthca_db_page, ptr %17, i32 %i.0139, i32 1
  %18 = ptrtoint ptr %db_rec to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %db_rec, align 4
  %tobool.not = icmp eq ptr %19, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %arrayidx = getelementptr %struct.mthca_db_page, ptr %17, i32 %i.0139
  %call.i = tail call i32 @_find_first_zero_bit_be(ptr noundef %arrayidx, i32 noundef 512) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %call.i)
  %cmp4.i = icmp eq i32 %call.i, 512
  br i1 %cmp4.i, label %land.lhs.true.for.inc_crit_edge, label %if.then

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %db_tab to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %db_tab, align 8
  %page11 = getelementptr inbounds %struct.mthca_db_table, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %page11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %page11, align 4
  %add.ptr = getelementptr %struct.mthca_db_page, ptr %23, i32 %i.0139
  br label %found

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %add = add i32 %i.0139, %dir.0
  %cmp.not = icmp eq i32 %add, %end.0
  br i1 %cmp.not, label %for.cond12.preheader, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body14:                                       ; preds = %for.inc25.for.body14_crit_edge, %for.body14.lr.ph
  %i.1142 = phi i32 [ %start.0, %for.body14.lr.ph ], [ %add26, %for.inc25.for.body14_crit_edge ]
  %db_rec18 = getelementptr %struct.mthca_db_page, ptr %13, i32 %i.1142, i32 1
  %24 = ptrtoint ptr %db_rec18 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %db_rec18, align 4
  %tobool19.not = icmp eq ptr %25, null
  br i1 %tobool19.not, label %if.then20, label %for.inc25

if.then20:                                        ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx17 = getelementptr %struct.mthca_db_page, ptr %13, i32 %i.1142
  br label %alloc

for.inc25:                                        ; preds = %for.body14
  %add26 = add i32 %i.1142, %dir.0
  %cmp13.not = icmp eq i32 %add26, %end.0
  br i1 %cmp13.not, label %for.inc25.for.end27_crit_edge, label %for.inc25.for.body14_crit_edge

for.inc25.for.body14_crit_edge:                   ; preds = %for.inc25
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body14

for.inc25.for.end27_crit_edge:                    ; preds = %for.inc25
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end27

for.end27:                                        ; preds = %for.inc25.for.end27_crit_edge, %for.cond12.preheader.for.end27_crit_edge, %sw.epilog.for.end27_crit_edge
  %i.1.lcssa = phi i32 [ %start.0, %for.cond12.preheader.for.end27_crit_edge ], [ %start.0, %sw.epilog.for.end27_crit_edge ], [ %end.0, %for.inc25.for.end27_crit_edge ]
  %26 = ptrtoint ptr %db_tab to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %db_tab, align 8
  %max_group129 = getelementptr inbounds %struct.mthca_db_table, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %max_group129 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %max_group129, align 4
  %min_group231 = getelementptr inbounds %struct.mthca_db_table, ptr %27, i32 0, i32 2
  %30 = ptrtoint ptr %min_group231 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %min_group231, align 4
  %sub32 = add i32 %31, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %sub32)
  %cmp33.not = icmp slt i32 %29, %sub32
  br i1 %cmp33.not, label %if.end35, label %for.end27.out_crit_edge

for.end27.out_crit_edge:                          ; preds = %for.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end35:                                         ; preds = %for.end27
  br i1 %cmp36, label %if.then37, label %if.else

if.then37:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  %inc = add nsw i32 %29, 1
  %32 = ptrtoint ptr %max_group129 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %inc, ptr %max_group129, align 4
  br label %if.end42

if.else:                                          ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %min_group231 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %sub32, ptr %min_group231, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.else, %if.then37
  %34 = ptrtoint ptr %db_tab to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %db_tab, align 8
  %page44 = getelementptr inbounds %struct.mthca_db_table, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %page44 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %page44, align 4
  %add.ptr45 = getelementptr %struct.mthca_db_page, ptr %37, i32 %end.0
  br label %alloc

alloc:                                            ; preds = %if.end42, %if.then20
  %i.1136 = phi i32 [ %i.1142, %if.then20 ], [ %i.1.lcssa, %if.end42 ]
  %page.0 = phi ptr [ %arrayidx17, %if.then20 ], [ %add.ptr45, %if.end42 ]
  %pdev = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  %38 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pdev, align 8
  %dev46 = getelementptr inbounds %struct.pci_dev, ptr %39, i32 0, i32 44
  %mapping = getelementptr inbounds %struct.mthca_db_page, ptr %page.0, i32 0, i32 2
  %call.i134 = tail call ptr @dma_alloc_attrs(ptr noundef %dev46, i32 noundef 4096, ptr noundef %mapping, i32 noundef 3264, i32 noundef 0) #7
  %db_rec48 = getelementptr inbounds %struct.mthca_db_page, ptr %page.0, i32 0, i32 1
  %40 = ptrtoint ptr %db_rec48 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call.i134, ptr %db_rec48, align 4
  %tobool50.not = icmp eq ptr %call.i134, null
  br i1 %tobool50.not, label %alloc.out_crit_edge, label %if.end52

alloc.out_crit_edge:                              ; preds = %alloc
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end52:                                         ; preds = %alloc
  %41 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %mapping, align 4
  %conv = zext i32 %42 to i64
  %uarc_base.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 19, i32 1
  %43 = ptrtoint ptr %uarc_base.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %uarc_base.i, align 8
  %index.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 29, i32 1
  %45 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %index.i, align 4
  %uarc_size.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 19, i32 2
  %47 = ptrtoint ptr %uarc_size.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %uarc_size.i, align 8
  %mul.i = mul i32 %48, %46
  %conv.i = sext i32 %mul.i to i64
  %mul2.i = shl i32 %i.1136, 12
  %conv3.i = sext i32 %mul2.i to i64
  %add.i = add i64 %44, %conv3.i
  %add4.i = add i64 %add.i, %conv.i
  %call55 = tail call i32 @mthca_MAP_ICM_page(ptr noundef %dev, i64 noundef %conv, i64 noundef %add4.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end62, label %if.then57

if.then57:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pdev, align 8
  %dev59 = getelementptr inbounds %struct.pci_dev, ptr %50, i32 0, i32 44
  %51 = ptrtoint ptr %db_rec48 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %db_rec48, align 4
  %53 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %mapping, align 4
  tail call void @dma_free_attrs(ptr noundef %dev59, i32 noundef 4096, ptr noundef %52, i32 noundef %54, i32 noundef 0) #7
  br label %out

if.end62:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  %55 = call ptr @memset(ptr %page.0, i32 0, i32 64)
  br label %found

found:                                            ; preds = %if.end62, %if.then
  %i.2 = phi i32 [ %i.0139, %if.then ], [ %i.1136, %if.end62 ]
  %page.1 = phi ptr [ %add.ptr, %if.then ], [ %page.0, %if.end62 ]
  %call67 = tail call i32 @_find_first_zero_bit_be(ptr noundef %page.1, i32 noundef 512) #7
  tail call void @_set_bit(i32 noundef %call67, ptr noundef %page.1) #7
  %sub73 = sub i32 511, %call67
  %spec.select = select i1 %cmp70, i32 %sub73, i32 %call67
  %mul = shl i32 %i.2, 9
  %add75 = add i32 %spec.select, %mul
  %shl = shl i32 %qn, 8
  %shl76 = shl i32 %type, 5
  %or = or i32 %shl, %shl76
  %conv77 = zext i32 %or to i64
  %db_rec78 = getelementptr inbounds %struct.mthca_db_page, ptr %page.1, i32 0, i32 1
  %56 = ptrtoint ptr %db_rec78 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %db_rec78, align 4
  %arrayidx79 = getelementptr i64, ptr %57, i32 %spec.select
  %58 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %conv77, ptr %arrayidx79, align 8
  %59 = load ptr, ptr %db_rec78, align 4
  %arrayidx81 = getelementptr i64, ptr %59, i32 %spec.select
  %60 = ptrtoint ptr %db to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %arrayidx81, ptr %db, align 4
  br label %out

out:                                              ; preds = %found, %if.then57, %alloc.out_crit_edge, %for.end27.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %add75, %found ], [ %call55, %if.then57 ], [ -22, %entry.out_crit_edge ], [ -12, %for.end27.out_crit_edge ], [ -12, %alloc.out_crit_edge ]
  %61 = ptrtoint ptr %db_tab to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %db_tab, align 8
  %mutex83 = getelementptr inbounds %struct.mthca_db_table, ptr %62, i32 0, i32 4
  tail call void @mutex_unlock(ptr noundef %mutex83) #7
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mthca_free_db(ptr noundef %dev, i32 noundef %type, i32 noundef %db_index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %div = sdiv i32 %db_index, 512
  %0 = mul i32 %div, 512
  %rem.decomposed = sub i32 %db_index, %0
  %db_tab = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 30
  %1 = ptrtoint ptr %db_tab to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %db_tab, align 8
  %page1 = getelementptr inbounds %struct.mthca_db_table, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %page1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %page1, align 4
  %add.ptr = getelementptr %struct.mthca_db_page, ptr %4, i32 %div
  %mutex = getelementptr inbounds %struct.mthca_db_table, ptr %2, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %db_rec = getelementptr %struct.mthca_db_page, ptr %4, i32 %div, i32 1
  %5 = ptrtoint ptr %db_rec to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %db_rec, align 4
  %arrayidx = getelementptr i64, ptr %6, i32 %rem.decomposed
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 0, ptr %arrayidx, align 8
  %8 = ptrtoint ptr %db_tab to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %db_tab, align 8
  %min_group2 = getelementptr inbounds %struct.mthca_db_table, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %min_group2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %min_group2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %11)
  %cmp.not = icmp slt i32 %div, %11
  %sub = sub nsw i32 511, %rem.decomposed
  %spec.select = select i1 %cmp.not, i32 %rem.decomposed, i32 %sub
  tail call void @_clear_bit(i32 noundef %spec.select, ptr noundef %add.ptr) #7
  %call.i = tail call i32 @_find_first_bit_be(ptr noundef %add.ptr, i32 noundef 512) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %call.i)
  %cmp4.i = icmp eq i32 %call.i, 512
  br i1 %cmp4.i, label %land.lhs.true, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

land.lhs.true:                                    ; preds = %entry
  %12 = ptrtoint ptr %db_tab to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %db_tab, align 8
  %max_group1 = getelementptr inbounds %struct.mthca_db_table, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %max_group1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max_group1, align 4
  %sub7 = add i32 %15, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %sub7)
  %cmp8.not = icmp slt i32 %div, %sub7
  br i1 %cmp8.not, label %land.lhs.true.if.end29_crit_edge, label %if.then9

land.lhs.true.if.end29_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.then9:                                         ; preds = %land.lhs.true
  %uarc_base.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 19, i32 1
  %16 = ptrtoint ptr %uarc_base.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %uarc_base.i, align 8
  %index.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 29, i32 1
  %18 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %index.i, align 4
  %uarc_size.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 19, i32 2
  %20 = ptrtoint ptr %uarc_size.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %uarc_size.i, align 8
  %mul.i = mul i32 %21, %19
  %conv.i = sext i32 %mul.i to i64
  %mul2.i = shl i32 %div, 12
  %conv3.i = sext i32 %mul2.i to i64
  %add.i = add i64 %17, %conv3.i
  %add4.i = add i64 %add.i, %conv.i
  %call11 = tail call i32 @mthca_UNMAP_ICM(ptr noundef %dev, i64 noundef %add4.i, i32 noundef 1) #7
  %pdev = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  %22 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdev, align 8
  %dev12 = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  %24 = ptrtoint ptr %db_rec to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %db_rec, align 4
  %mapping = getelementptr %struct.mthca_db_page, ptr %4, i32 %div, i32 2
  %26 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mapping, align 4
  tail call void @dma_free_attrs(ptr noundef %dev12, i32 noundef 4096, ptr noundef %25, i32 noundef %27, i32 noundef 0) #7
  %28 = ptrtoint ptr %db_rec to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %db_rec, align 4
  %29 = ptrtoint ptr %db_tab to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %db_tab, align 8
  %max_group116 = getelementptr inbounds %struct.mthca_db_table, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %max_group116 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %max_group116, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %32)
  %cmp17 = icmp eq i32 %div, %32
  br i1 %cmp17, label %if.then18, label %if.then9.if.end21_crit_edge

if.then9.if.end21_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then18:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  %dec = add nsw i32 %div, -1
  %33 = ptrtoint ptr %max_group116 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %dec, ptr %max_group116, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.then9.if.end21_crit_edge
  %34 = ptrtoint ptr %db_tab to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %db_tab, align 8
  %min_group223 = getelementptr inbounds %struct.mthca_db_table, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %min_group223 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %min_group223, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %37)
  %cmp24 = icmp eq i32 %div, %37
  br i1 %cmp24, label %if.then25, label %if.end21.if.end29_crit_edge

if.end21.if.end29_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %inc = add nsw i32 %div, 1
  %38 = ptrtoint ptr %min_group223 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %inc, ptr %min_group223, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then25, %if.end21.if.end29_crit_edge, %land.lhs.true.if.end29_crit_edge, %entry.if.end29_crit_edge
  %39 = ptrtoint ptr %db_tab to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %db_tab, align 8
  %mutex31 = getelementptr inbounds %struct.mthca_db_table, ptr %40, i32 0, i32 4
  tail call void @mutex_unlock(ptr noundef %mutex31) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mthca_init_db_tab(ptr nocapture noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mthca_flags.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %mthca_flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mthca_flags.i, align 8
  %and.i = and i32 %1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 108) #11
  %db_tab = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 30
  %3 = ptrtoint ptr %db_tab to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i, ptr %db_tab, align 8
  %tobool3.not = icmp eq ptr %call7.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %if.end
  %mutex = getelementptr inbounds %struct.mthca_db_table, ptr %call7.i, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.2, ptr noundef nonnull @mthca_init_db_tab.__key) #7
  %uarc_size = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 19, i32 2
  %4 = ptrtoint ptr %uarc_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %uarc_size, align 8
  %div = sdiv i32 %5, 4096
  %6 = ptrtoint ptr %db_tab to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %db_tab, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %div, ptr %7, align 4
  %9 = load ptr, ptr %db_tab, align 8
  %max_group1 = getelementptr inbounds %struct.mthca_db_table, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %max_group1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %max_group1, align 4
  %11 = load ptr, ptr %db_tab, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %sub = add i32 %13, -1
  %min_group2 = getelementptr inbounds %struct.mthca_db_table, ptr %11, i32 0, i32 2
  %14 = ptrtoint ptr %min_group2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %sub, ptr %min_group2, align 4
  %15 = load ptr, ptr %db_tab, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %18 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %17, i32 72) #7
  %19 = extractvalue { i32, i1 } %18, 1
  br i1 %19, label %do.body.kmalloc_array.exit_crit_edge, label %if.end7.i, !prof !34

do.body.kmalloc_array.exit_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %kmalloc_array.exit

if.end7.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %20 = extractvalue { i32, i1 } %18, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %20, i32 noundef 3264) #12
  br label %kmalloc_array.exit

kmalloc_array.exit:                               ; preds = %if.end7.i, %do.body.kmalloc_array.exit_crit_edge
  %retval.0.i = phi ptr [ %call8.i, %if.end7.i ], [ null, %do.body.kmalloc_array.exit_crit_edge ]
  %21 = ptrtoint ptr %db_tab to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %db_tab, align 8
  %page = getelementptr inbounds %struct.mthca_db_table, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %retval.0.i, ptr %page, align 4
  %24 = load ptr, ptr %db_tab, align 8
  %page17 = getelementptr inbounds %struct.mthca_db_table, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %page17 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %page17, align 4
  %tobool18.not = icmp eq ptr %26, null
  br i1 %tobool18.not, label %if.then19, label %for.cond.preheader

for.cond.preheader:                               ; preds = %kmalloc_array.exit
  %27 = ptrtoint ptr %db_tab to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %db_tab, align 8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp42 = icmp sgt i32 %30, 0
  br i1 %cmp42, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

if.then19:                                        ; preds = %kmalloc_array.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef %24) #7
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %31 = phi ptr [ %36, %for.body.for.body_crit_edge ], [ %28, %for.cond.preheader.for.body_crit_edge ]
  %i.043 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %page25 = getelementptr inbounds %struct.mthca_db_table, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %page25 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %page25, align 4
  %db_rec = getelementptr %struct.mthca_db_page, ptr %33, i32 %i.043, i32 1
  %34 = ptrtoint ptr %db_rec to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %db_rec, align 4
  %inc = add nuw nsw i32 %i.043, 1
  %35 = ptrtoint ptr %db_tab to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %db_tab, align 8
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 4
  %cmp = icmp slt i32 %inc, %38
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.then19, %for.cond.preheader.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then19 ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mthca_cleanup_db_tab(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mthca_flags.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %mthca_flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mthca_flags.i, align 8
  %and.i = and i32 %1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %db_tab = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 30
  %2 = ptrtoint ptr %db_tab to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %db_tab, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp45 = icmp sgt i32 %5, 0
  br i1 %cmp45, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %pdev = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  %uarc_base.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 19, i32 1
  %index.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 29, i32 1
  %uarc_size.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 19, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %6 = phi ptr [ %3, %for.body.lr.ph ], [ %30, %for.inc.for.body_crit_edge ]
  %i.046 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %page = getelementptr inbounds %struct.mthca_db_table, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %page, align 4
  %db_rec = getelementptr %struct.mthca_db_page, ptr %8, i32 %i.046, i32 1
  %9 = ptrtoint ptr %db_rec to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %db_rec, align 4
  %tobool2.not = icmp eq ptr %10, null
  br i1 %tobool2.not, label %for.body.for.inc_crit_edge, label %if.end4

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end4:                                          ; preds = %for.body
  %arrayidx = getelementptr %struct.mthca_db_page, ptr %8, i32 %i.046
  %call.i = tail call i32 @_find_first_bit_be(ptr noundef %arrayidx, i32 noundef 512) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %call.i)
  %cmp4.i = icmp eq i32 %call.i, 512
  br i1 %cmp4.i, label %if.end4.if.end11_crit_edge, label %do.end

if.end4.if.end11_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev, align 8
  %dev10 = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev10, ptr noundef nonnull @.str.3, i32 noundef %i.046) #13
  br label %if.end11

if.end11:                                         ; preds = %do.end, %if.end4.if.end11_crit_edge
  %13 = ptrtoint ptr %uarc_base.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %uarc_base.i, align 8
  %15 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %index.i, align 4
  %17 = ptrtoint ptr %uarc_size.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %uarc_size.i, align 8
  %mul.i = mul i32 %18, %16
  %conv.i = sext i32 %mul.i to i64
  %mul2.i = shl i32 %i.046, 12
  %conv3.i = sext i32 %mul2.i to i64
  %add.i = add i64 %14, %conv3.i
  %add4.i = add i64 %add.i, %conv.i
  %call13 = tail call i32 @mthca_UNMAP_ICM(ptr noundef %dev, i64 noundef %add4.i, i32 noundef 1) #7
  %19 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdev, align 8
  %dev15 = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  %21 = ptrtoint ptr %db_tab to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %db_tab, align 8
  %page17 = getelementptr inbounds %struct.mthca_db_table, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %page17 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %page17, align 4
  %db_rec19 = getelementptr %struct.mthca_db_page, ptr %24, i32 %i.046, i32 1
  %25 = ptrtoint ptr %db_rec19 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %db_rec19, align 4
  %mapping = getelementptr %struct.mthca_db_page, ptr %24, i32 %i.046, i32 2
  %27 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mapping, align 4
  tail call void @dma_free_attrs(ptr noundef %dev15, i32 noundef 4096, ptr noundef %26, i32 noundef %28, i32 noundef 0) #7
  br label %for.inc

for.inc:                                          ; preds = %if.end11, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.046, 1
  %29 = ptrtoint ptr %db_tab to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %db_tab, align 8
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  %cmp = icmp slt i32 %inc, %32
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %.lcssa = phi ptr [ %3, %for.cond.preheader.for.end_crit_edge ], [ %30, %for.inc.for.end_crit_edge ]
  %page24 = getelementptr inbounds %struct.mthca_db_table, ptr %.lcssa, i32 0, i32 3
  %33 = ptrtoint ptr %page24 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %page24, align 4
  tail call void @kfree(ptr noundef %34) #7
  %35 = ptrtoint ptr %db_tab to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %db_tab, align 8
  tail call void @kfree(ptr noundef %36) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

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
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind readnone }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !12, !13, !14, !15, !16, !17}
!llvm.named.register.sp = !{!19}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @mthca_alloc_icm_table.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/hw/mthca/mthca_memfree.c", i32 380, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @mthca_init_user_db_tab.__key, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/infiniband/hw/mthca/mthca_memfree.c", i32 539, i32 2}
!5 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mthca_init_db_tab.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/infiniband/hw/mthca/mthca_memfree.c", i32 714, i32 2}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/infiniband/hw/mthca/mthca_memfree.c", i32 752, i32 4}
!11 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.7, !10, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @mthca_cleanup_db_tab._entry, !10, !"_entry", i1 false, i1 false}
!16 = !{ptr @mthca_cleanup_db_tab._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!17 = distinct !{null, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!19 = !{!"sp"}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{!"branch_weights", i32 2000, i32 1}
!30 = !{i64 2153362111, i64 2153362603, i64 2153362148, i64 2153362204, i64 2153362238, i64 2153362262, i64 2153362303, i64 2153362324, i64 2153362352, i64 2153362386}
!31 = !{i64 2149088485, i64 2149088508, i64 2149088540, i64 2149088572, i64 2149088610, i64 2149088640}
!32 = !{i32 0, i32 33}
!33 = !{i64 2158152707, i64 2158153215, i64 2158152744, i64 2158152800, i64 2158152834, i64 2158152858, i64 2158152899, i64 2158152920, i64 2158152948, i64 2158152982}
!34 = !{!"branch_weights", i32 1, i32 2000}
!35 = !{i64 2153368933, i64 2153369425, i64 2153368970, i64 2153369026, i64 2153369060, i64 2153369084, i64 2153369125, i64 2153369146, i64 2153369174, i64 2153369208}
!36 = !{i64 2153358553, i64 2153359045, i64 2153358590, i64 2153358646, i64 2153358680, i64 2153358704, i64 2153358745, i64 2153358766, i64 2153358794, i64 2153358828}
!37 = !{i64 2153360163, i64 2153360655, i64 2153360200, i64 2153360256, i64 2153360290, i64 2153360314, i64 2153360355, i64 2153360376, i64 2153360404, i64 2153360438}
!38 = !{i64 2158150846, i64 2158151354, i64 2158150883, i64 2158150939, i64 2158150973, i64 2158150997, i64 2158151038, i64 2158151059, i64 2158151087, i64 2158151121}
!39 = !{!"auto-init"}
