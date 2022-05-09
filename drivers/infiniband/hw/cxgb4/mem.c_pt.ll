; ModuleID = '/llk/IR_all_yes/drivers/infiniband/hw/cxgb4/mem.c_pt.bc'
source_filename = "../drivers/infiniband/hw/cxgb4/mem.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.164 }
%union.anon.164 = type { ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.c4iw_pd = type { %struct.ib_pd, i32, ptr }
%struct.ib_pd = type { i32, i32, ptr, ptr, %struct.atomic_t, i32, ptr, %struct.rdma_restrack_entry }
%struct.rdma_restrack_entry = type { i8, i8, %struct.kref, %struct.completion, ptr, ptr, i32, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.c4iw_mr = type { %struct.ib_mr, ptr, ptr, ptr, i64, %struct.tpt_attributes, ptr, i32, i32, i32, ptr }
%struct.ib_mr = type { ptr, ptr, i32, i32, i64, i64, i32, i32, i8, %union.anon.218, ptr, ptr, %struct.rdma_restrack_entry }
%union.anon.218 = type { %struct.list_head }
%struct.tpt_attributes = type { i64, i64, i32, i32, i32, i32, i32, i32, i16 }
%struct.c4iw_wr_wait = type { %struct.completion, i32, %struct.kref }
%struct.c4iw_dev = type { %struct.ib_device, %struct.c4iw_rdev, i32, %struct.xarray, %struct.xarray, %struct.xarray, %struct.mutex, ptr, i32, %struct.xarray, %struct.xarray, %struct.xarray, %struct.list_head, i32, %struct.wait_queue_head }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.217, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%union.anon.217 = type { %struct.ib_core_device }
%struct.ib_core_device = type { %struct.device, %struct.possible_net_t, ptr, %struct.list_head, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type { ptr }
%struct.ib_device_attr = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i32, i32, %struct.ib_odp_caps, i64, i64, %struct.ib_rss_caps, i32, i32, %struct.ib_tm_caps, %struct.ib_cq_caps, i64, i32 }
%struct.ib_odp_caps = type { i64, %struct.anon.204 }
%struct.anon.204 = type { i32, i32, i32, i32 }
%struct.ib_rss_caps = type { i32, i32, i32 }
%struct.ib_tm_caps = type { i32, i32, i32, i32, i32 }
%struct.ib_cq_caps = type { i16, i16 }
%struct.rdmacg_device = type { %struct.list_head, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.c4iw_rdev = type { %struct.c4iw_resource, i32, i32, %struct.c4iw_dev_ucontext, ptr, ptr, ptr, i32, %struct.cxgb4_lld_info, i32, ptr, i32, ptr, %struct.c4iw_stats, %struct.c4iw_hw_queue, ptr, %struct.atomic_t, ptr, i32, ptr, %struct.completion, %struct.completion, %struct.kref, %struct.kref }
%struct.c4iw_resource = type { %struct.c4iw_id_table, %struct.c4iw_id_table, %struct.c4iw_id_table, %struct.c4iw_id_table }
%struct.c4iw_id_table = type { i32, i32, i32, i32, %struct.spinlock, ptr }
%struct.c4iw_dev_ucontext = type { %struct.list_head, %struct.list_head, %struct.mutex, %struct.kref }
%struct.cxgb4_lld_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i16, i8, i8, i8, i8, i8, i32, i32, i32, i16, i16, i32, i16, [4 x i16], ptr, ptr, i32, i32, i32, i32, i32, i8, i32, i32, i8, i32, i32, i32, i32, ptr, i32, i8, i8, i8 }
%struct.c4iw_stats = type { %struct.mutex, %struct.c4iw_stat, %struct.c4iw_stat, %struct.c4iw_stat, %struct.c4iw_stat, %struct.c4iw_stat, %struct.c4iw_stat, %struct.c4iw_stat, %struct.c4iw_stat, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.c4iw_stat = type { i64, i64, i64, i64 }
%struct.c4iw_hw_queue = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.fw_ri_tpte = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cxgb4_virt_res = type { %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, i32, %struct.cxgb4_range }
%struct.cxgb4_range = type { i32, i32 }
%struct.ib_block_iter = type { ptr, i32, i32, i32, i32 }
%struct.ib_umem = type { ptr, ptr, i64, i32, i32, i8, %struct.work_struct, %struct.sg_append_table }
%struct.sg_append_table = type { %struct.sg_table, ptr, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.220, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.220 = type { ptr }
%struct.page = type { i32, %union.anon.2, %union.anon.163, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.163 = type { %struct.atomic_t }
%struct.sk_buff = type { %union.anon.50, %union.anon.53, %union.anon.54, [48 x i8], %union.anon.55, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.57, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
%union.anon.53 = type { ptr }
%union.anon.54 = type { i64 }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { i32, ptr }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.59, i32, i32, i32, i16, i16, %union.anon.61, i32, %union.anon.62, %union.anon.63, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.59 = type { i32 }
%union.anon.61 = type { i32 }
%union.anon.62 = type { i32 }
%union.anon.63 = type { i16 }
%struct.work_request_hdr = type { i32, i32, i64 }
%struct.ulp_mem_io = type { %struct.work_request_hdr, i32, i32, i32, i32 }

@use_dsgl = dso_local global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_str_use_dsgl = internal constant [18 x i8] c"iw_cxgb4.use_dsgl\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@__param_use_dsgl = internal constant %struct.kernel_param { ptr @__param_str_use_dsgl, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.164 { ptr @use_dsgl } }, section "__param", align 4
@__UNIQUE_ID_use_dsgltype674 = internal constant [31 x i8] c"iw_cxgb4.parmtype=use_dsgl:int\00", section ".modinfo", align 1
@__UNIQUE_ID_use_dsgl675 = internal constant [73 x i8] c"iw_cxgb4.parm=use_dsgl:Use DSGL for PBL/FastReg (default=1) (DEPRECATED)\00", section ".modinfo", align 1
@__param_str_inline_threshold = internal constant [26 x i8] c"iw_cxgb4.inline_threshold\00", align 1
@inline_threshold = internal global { i32, [28 x i8] } { i32 128, [28 x i8] zeroinitializer }, align 32
@__param_inline_threshold = internal constant %struct.kernel_param { ptr @__param_str_inline_threshold, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.164 { ptr @inline_threshold } }, section "__param", align 4
@__UNIQUE_ID_inline_thresholdtype676 = internal constant [39 x i8] c"iw_cxgb4.parmtype=inline_threshold:int\00", section ".modinfo", align 1
@__UNIQUE_ID_inline_threshold677 = internal constant [70 x i8] c"iw_cxgb4.parm=inline_threshold:inline vs dsgl threshold (default=128)\00", section ".modinfo", align 1
@c4iw_get_dma_mr.__UNIQUE_ID_ddebug682 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 109, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"iw_cxgb4\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"c4iw_get_dma_mr\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/infiniband/hw/cxgb4/mem.c\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ib_pd %p\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"iw_cxgb4: ib_pd %p\0A\00", [44 x i8] zeroinitializer }, align 32
@c4iw_reg_user_mr.__UNIQUE_ID_ddebug683 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.3, i8 0, i8 125, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"c4iw_reg_user_mr\00", [47 x i8] zeroinitializer }, align 32
@c4iw_alloc_mr.__UNIQUE_ID_ddebug684 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 -92, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"c4iw_alloc_mr\00", [18 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mmid 0x%x mhp %p stag 0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"iw_cxgb4: mmid 0x%x mhp %p stag 0x%x\0A\00", [58 x i8] zeroinitializer }, align 32
@c4iw_dereg_mr.__UNIQUE_ID_ddebug685 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.10, i8 0, i8 -80, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"c4iw_dereg_mr\00", [18 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ib_mr %p\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"iw_cxgb4: ib_mr %p\0A\00", [44 x i8] zeroinitializer }, align 32
@c4iw_dereg_mr.__UNIQUE_ID_ddebug686 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.12, i8 0, i8 -76, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mmid 0x%x ptr %p\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"iw_cxgb4: mmid 0x%x ptr %p\0A\00", [36 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@write_tpt_entry.key = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@write_tpt_entry.__UNIQUE_ID_ddebug679 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.16, i8 0, i8 77, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"write_tpt_entry\00", [16 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"stag_state 0x%0x type 0x%0x pdid 0x%0x, stag_idx 0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"iw_cxgb4: stag_state 0x%0x type 0x%0x pdid 0x%0x, stag_idx 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@write_adapter_mem._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.18, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.write_adapter_mem = private unnamed_addr constant [18 x i8] c"write_adapter_mem\00", align 1
@write_adapter_mem._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @__func__.write_adapter_mem, ptr @.str.2, i32 255, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014iw_cxgb4: %s: dma map failure (non fatal)\0A\00", [51 x i8] zeroinitializer }, align 32
@write_adapter_mem._entry_ptr = internal global ptr @write_adapter_mem._entry, section ".printk_index", align 4
@_c4iw_write_mem_inline.__UNIQUE_ID_ddebug678 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.21, i8 0, i8 31, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"_c4iw_write_mem_inline\00", [41 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"addr 0x%x len %u\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"iw_cxgb4: addr 0x%x len %u\0A\00", [36 x i8] zeroinitializer }, align 32
@c4iw_ref_send_wait.__UNIQUE_ID_ddebug669 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.24, ptr @.str.25, i8 0, i8 74, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"c4iw_ref_send_wait\00", [45 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/infiniband/hw/cxgb4/iw_cxgb4.h\00", [57 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s wr_wait %p hwtid %u qpid %u\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"iw_cxgb4: %s wr_wait %p hwtid %u qpid %u\0A\00", [54 x i8] zeroinitializer }, align 32
@c4iw_get_wr_wait.__UNIQUE_ID_ddebug667 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.24, ptr @.str.28, i8 0, i8 57, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"c4iw_get_wr_wait\00", [47 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"wr_wait %p ref before get %u\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"iw_cxgb4: wr_wait %p ref before get %u\0A\00", [56 x i8] zeroinitializer }, align 32
@c4iw_wait_for_reply._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.24, i32 274, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\013iw_cxgb4: %s - Device %s not responding (disabling device) - tid %u qpid %u\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"c4iw_wait_for_reply\00", [44 x i8] zeroinitializer }, align 32
@c4iw_wait_for_reply._entry_ptr = internal global ptr @c4iw_wait_for_reply._entry, section ".printk_index", align 4
@c4iw_wait_for_reply.__UNIQUE_ID_ddebug668 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.24, ptr @.str.32, i8 0, i8 70, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: FW reply %d tid %u qpid %u\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"iw_cxgb4: %s: FW reply %d tid %u qpid %u\0A\00", [54 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.34 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__func__._c4iw_write_mem_dma_aligned = private unnamed_addr constant [28 x i8] c"_c4iw_write_mem_dma_aligned\00", align 1
@finish_mem_reg.__UNIQUE_ID_ddebug681 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.2, ptr @.str.37, i8 0, i8 96, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"finish_mem_reg\00", [17 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mmid 0x%x mhp %p\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"iw_cxgb4: mmid 0x%x mhp %p\0A\00", [36 x i8] zeroinitializer }, align 32
@c4iw_put_wr_wait.__UNIQUE_ID_ddebug666 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.24, ptr @.str.40, i8 0, i8 55, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"c4iw_put_wr_wait\00", [47 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"wr_wait %p ref before put %u\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"iw_cxgb4: wr_wait %p ref before put %u\0A\00", [56 x i8] zeroinitializer }, align 32
@write_pbl.__UNIQUE_ID_ddebug680 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.2, ptr @.str.43, i8 0, i8 88, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"write_pbl\00", [22 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"*pdb_addr 0x%x, pbl_base 0x%x, pbl_size %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"iw_cxgb4: *pdb_addr 0x%x, pbl_base 0x%x, pbl_size %d\0A\00", [42 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 64, i64 80]
@___asan_gen_.45 = private unnamed_addr constant [9 x i8] c"use_dsgl\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 41, i32 5 }
@___asan_gen_.48 = private unnamed_addr constant [17 x i8] c"inline_threshold\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 50, i32 12 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 438, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 502, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 659, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 706, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 723, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.97 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 87, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 280, i32 18 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 308, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 254, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 126, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 296, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 228, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 273, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 280, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 326, i32 6 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 387, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant [42 x i8] c"../drivers/infiniband/hw/cxgb4/iw_cxgb4.h\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 220, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.199 = private constant [37 x i8] c"../drivers/infiniband/hw/cxgb4/mem.c\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 351, i32 2 }
@llvm.compiler.used = appending global [60 x ptr] [ptr @__UNIQUE_ID_inline_threshold677, ptr @__UNIQUE_ID_inline_thresholdtype676, ptr @__UNIQUE_ID_use_dsgl675, ptr @__UNIQUE_ID_use_dsgltype674, ptr @__param_inline_threshold, ptr @__param_use_dsgl, ptr @c4iw_wait_for_reply._entry, ptr @c4iw_wait_for_reply._entry_ptr, ptr @write_adapter_mem._entry, ptr @write_adapter_mem._entry_ptr, ptr @use_dsgl, ptr @inline_threshold, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @init_completion.__key, ptr @.str.14, ptr @write_tpt_entry.key, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @write_adapter_mem._rs, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44], section "llvm.metadata"
@0 = internal global [52 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @use_dsgl to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inline_threshold to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_tpt_entry.key to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_adapter_mem._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_adapter_mem._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c4iw_wait_for_reply._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @c4iw_get_dma_mr(ptr noundef %pd, i32 noundef %acc) local_unnamed_addr #0 align 64 {
entry:
  %stag.addr.i = alloca i32, align 4
  %stag = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stag) #9
  %0 = ptrtoint ptr %stag to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %stag, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c4iw_get_dma_mr.__UNIQUE_ID_ddebug682, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c4iw_get_dma_mr, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !112

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @c4iw_get_dma_mr.__UNIQUE_ID_ddebug682, ptr noundef nonnull @.str.4, ptr noundef %pd) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %rhp4 = getelementptr inbounds %struct.c4iw_pd, ptr %pd, i32 0, i32 2
  %1 = ptrtoint ptr %rhp4 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rhp4, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 240) #12
  %tobool6.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool6.not, label %do.end.cleanup_crit_edge, label %if.end9

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %do.end
  %call10 = tail call ptr @c4iw_alloc_wr_wait(i32 noundef 3264) #9
  %wr_waitp = getelementptr inbounds %struct.c4iw_mr, ptr %call7.i.i, i32 0, i32 10
  %4 = ptrtoint ptr %wr_waitp to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call10, ptr %wr_waitp, align 8
  %tobool12.not = icmp eq ptr %call10, null
  br i1 %tobool12.not, label %if.end9.err_free_mhp_crit_edge, label %if.end14

if.end9.err_free_mhp_crit_edge:                   ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_mhp

if.end14:                                         ; preds = %if.end9
  %ret.i = getelementptr inbounds %struct.c4iw_wr_wait, ptr %call10, i32 0, i32 1
  %5 = ptrtoint ptr %ret.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %ret.i, align 4
  %6 = ptrtoint ptr %call10 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %call10, align 4
  %wait.i.i = getelementptr inbounds %struct.completion, ptr %call10, i32 0, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @init_completion.__key) #9
  %call.i = tail call ptr @__alloc_skb(i32 noundef 512, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #9
  %dereg_skb = getelementptr inbounds %struct.c4iw_mr, ptr %call7.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %dereg_skb to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %dereg_skb, align 8
  %tobool18.not = icmp eq ptr %call.i, null
  br i1 %tobool18.not, label %if.end14.err_free_wr_wait_crit_edge, label %if.end20

if.end14.err_free_wr_wait_crit_edge:              ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_wr_wait

if.end20:                                         ; preds = %if.end14
  %rhp21 = getelementptr inbounds %struct.c4iw_mr, ptr %call7.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %rhp21 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %2, ptr %rhp21, align 4
  %pdid = getelementptr inbounds %struct.c4iw_pd, ptr %pd, i32 0, i32 1
  %9 = ptrtoint ptr %pdid to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pdid, align 4
  %attr = getelementptr inbounds %struct.c4iw_mr, ptr %call7.i.i, i32 0, i32 5
  %pdid22 = getelementptr inbounds %struct.c4iw_mr, ptr %call7.i.i, i32 0, i32 5, i32 4
  %11 = ptrtoint ptr %pdid22 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %pdid22, align 8
  %and.i = lshr i32 %acc, 1
  %or.i = and i32 %and.i, 3
  %and4.i = shl i32 %acc, 2
  %12 = and i32 %and4.i, 4
  %or7.i = or i32 %or.i, %12
  %or8.i = or i32 %or7.i, 8
  %perms = getelementptr inbounds %struct.c4iw_mr, ptr %call7.i.i, i32 0, i32 5, i32 2
  %13 = ptrtoint ptr %perms to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or8.i, ptr %perms, align 8
  %mw_bind_enable = getelementptr inbounds %struct.c4iw_mr, ptr %call7.i.i, i32 0, i32 5, i32 8
  %14 = trunc i32 %acc to i16
  %15 = ptrtoint ptr %mw_bind_enable to i32
  call void @__asan_load2_noabort(i32 %15)
  %bf.load = load i16, ptr %mw_bind_enable, align 8
  %16 = shl i16 %14, 5
  %bf.shl = and i16 %16, 512
  %bf.clear = and i16 %bf.load, -2033
  %bf.set = or i16 %bf.clear, %bf.shl
  %va_fbo = getelementptr inbounds %struct.c4iw_mr, ptr %call7.i.i, i32 0, i32 5, i32 1
  %17 = ptrtoint ptr %va_fbo to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 0, ptr %va_fbo, align 8
  store i16 %bf.set, ptr %mw_bind_enable, align 8
  %18 = ptrtoint ptr %attr to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 -1, ptr %attr, align 8
  %pbl_size = getelementptr inbounds %struct.c4iw_mr, ptr %call7.i.i, i32 0, i32 5, i32 7
  %19 = ptrtoint ptr %pbl_size to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %pbl_size, align 4
  %rdev = getelementptr inbounds %struct.c4iw_dev, ptr %2, i32 0, i32 1
  %bf.lshr = lshr exact i16 %bf.shl, 9
  %bf.cast = zext i16 %bf.lshr to i32
  %20 = ptrtoint ptr %wr_waitp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %wr_waitp, align 8
  %call45 = call fastcc i32 @write_tpt_entry(ptr noundef %rdev, i32 noundef 0, ptr noundef nonnull %stag, i8 noundef zeroext 1, i32 noundef %10, i32 noundef %or8.i, i32 noundef %bf.cast, i32 noundef 0, i64 noundef 0, i64 noundef -1, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef %21)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %if.end20.err_free_skb_crit_edge

if.end20.err_free_skb_crit_edge:                  ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_skb

if.end48:                                         ; preds = %if.end20
  %22 = ptrtoint ptr %stag to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %stag, align 4
  %call49 = tail call fastcc i32 @finish_mem_reg(ptr noundef nonnull %call7.i.i, i32 noundef %23)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end48.cleanup_crit_edge, label %err_dereg_mem

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

err_dereg_mem:                                    ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  %stag55 = getelementptr inbounds %struct.c4iw_mr, ptr %call7.i.i, i32 0, i32 5, i32 3
  %24 = ptrtoint ptr %stag55 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %stag55, align 4
  %26 = ptrtoint ptr %pbl_size to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pbl_size, align 4
  %pbl_addr = getelementptr inbounds %struct.c4iw_mr, ptr %call7.i.i, i32 0, i32 5, i32 6
  %28 = ptrtoint ptr %pbl_addr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pbl_addr, align 8
  %30 = ptrtoint ptr %dereg_skb to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dereg_skb, align 8
  %32 = ptrtoint ptr %wr_waitp to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %wr_waitp, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stag.addr.i)
  %34 = ptrtoint ptr %stag.addr.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %25, ptr %stag.addr.i, align 4
  %call.i104 = call fastcc i32 @write_tpt_entry(ptr noundef %rdev, i32 noundef 1, ptr noundef nonnull %stag.addr.i, i8 noundef zeroext 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i64 noundef 0, i64 noundef 0, i32 noundef %27, i32 noundef %29, ptr noundef %31, ptr noundef %33) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stag.addr.i)
  br label %err_free_skb

err_free_skb:                                     ; preds = %err_dereg_mem, %if.end20.err_free_skb_crit_edge
  %ret.0 = phi i32 [ %call45, %if.end20.err_free_skb_crit_edge ], [ %call49, %err_dereg_mem ]
  %35 = ptrtoint ptr %dereg_skb to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dereg_skb, align 8
  tail call void @kfree_skb_reason(ptr noundef %36, i32 noundef 0) #9
  br label %err_free_wr_wait

err_free_wr_wait:                                 ; preds = %err_free_skb, %if.end14.err_free_wr_wait_crit_edge
  %ret.1 = phi i32 [ %ret.0, %err_free_skb ], [ -12, %if.end14.err_free_wr_wait_crit_edge ]
  %37 = ptrtoint ptr %wr_waitp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %wr_waitp, align 8
  tail call fastcc void @c4iw_put_wr_wait(ptr noundef %38)
  br label %err_free_mhp

err_free_mhp:                                     ; preds = %err_free_wr_wait, %if.end9.err_free_mhp_crit_edge
  %ret.2 = phi i32 [ %ret.1, %err_free_wr_wait ], [ -12, %if.end9.err_free_mhp_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  %39 = inttoptr i32 %ret.2 to ptr
  br label %cleanup

cleanup:                                          ; preds = %err_free_mhp, %if.end48.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %39, %err_free_mhp ], [ %call7.i.i, %if.end48.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %do.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stag) #9
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @c4iw_alloc_wr_wait(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @write_tpt_entry(ptr noundef %rdev, i32 noundef %reset_tpt_entry, ptr nocapture noundef %stag, i8 noundef zeroext %stag_state, i32 noundef %pdid, i32 noundef %perm, i32 noundef %bind_enabled, i32 noundef %zbva, i64 noundef %to, i64 noundef %len, i32 noundef %pbl_size, i32 noundef %pbl_addr, ptr noundef %skb, ptr noundef %wr_waitp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 7
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 32) #12
  %tobool2.not = icmp eq ptr %call7.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %stag_state)
  %cmp = icmp ne i8 %stag_state, 0
  %3 = ptrtoint ptr %stag to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %stag, align 4
  %shr = lshr i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %reset_tpt_entry)
  %tobool7.not = icmp eq i32 %reset_tpt_entry, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %cmp8 = icmp eq i32 %4, -1
  %or.cond = select i1 %tobool7.not, i1 %cmp8, i1 false
  br i1 %or.cond, label %if.then10, label %if.end4.do.body_crit_edge

if.end4.do.body_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.then10:                                        ; preds = %if.end4
  %call11 = tail call i32 @c4iw_get_resource(ptr noundef %rdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  %stats = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %stats, i32 noundef 0) #9
  br i1 %tobool12.not, label %if.then13, label %if.end18

if.then13:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  %fail = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 13, i32 3, i32 3
  br label %cleanup.sink.split.sink.split

if.end18:                                         ; preds = %if.then10
  %cur = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 13, i32 3, i32 1
  %5 = ptrtoint ptr %cur to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %cur, align 8
  %add = add i64 %6, 32
  store i64 %add, ptr %cur, align 8
  %max = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 13, i32 3, i32 2
  %7 = ptrtoint ptr %max to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %max, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %8)
  %cmp28 = icmp ugt i64 %add, %8
  br i1 %cmp28, label %if.then30, label %if.end18.if.end37_crit_edge

if.end18.if.end37_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.then30:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %max to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %add, ptr %max, align 8
  br label %if.end37

if.end37:                                         ; preds = %if.then30, %if.end18.if.end37_crit_edge
  tail call void @mutex_unlock(ptr noundef %stats) #9
  %shl = shl i32 %call11, 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @write_tpt_entry.key, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !113
  tail call void @llvm.prefetch.p0(ptr nonnull @write_tpt_entry.key, i32 1, i32 3, i32 1) #9
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @write_tpt_entry.key, ptr nonnull @write_tpt_entry.key, i32 1, ptr nonnull elementtype(i32) @write_tpt_entry.key) #9, !srcloc !114
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %10, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !115
  %and = and i32 %asmresult.i.i.i.i, 255
  %or = or i32 %and, %shl
  %11 = ptrtoint ptr %stag to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or, ptr %stag, align 4
  br label %do.body

do.body:                                          ; preds = %if.end37, %if.end4.do.body_crit_edge
  %stag_idx.0 = phi i32 [ %shr, %if.end4.do.body_crit_edge ], [ %call11, %if.end37 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @write_tpt_entry.__UNIQUE_ID_ddebug679, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@write_tpt_entry, %if.then46)) #9
          to label %do.end [label %if.then46], !srcloc !112

if.then46:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %conv47 = zext i1 %cmp to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @write_tpt_entry.__UNIQUE_ID_ddebug679, ptr noundef nonnull @.str.17, i32 noundef %conv47, i32 noundef 0, i32 noundef %pdid, i32 noundef %stag_idx.0) #9
  br label %do.end

do.end:                                           ; preds = %if.then46, %do.body
  br i1 %tobool7.not, label %if.else, label %if.then50

if.then50:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %12 = call ptr @memset(ptr %call7.i, i32 0, i32 32)
  br label %if.end83

if.else:                                          ; preds = %do.end
  %13 = ptrtoint ptr %stag to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %stag, align 4
  %and51 = shl i32 %14, 23
  %shl55 = select i1 %cmp, i32 4194304, i32 0
  %or53 = or i32 %and51, %shl55
  %or56 = or i32 %or53, %pdid
  %or60 = or i32 %or56, -2147483648
  %15 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or60, ptr %call7.i, align 8
  %shl61 = shl i32 %perm, 28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bind_enabled)
  %tobool62.not = icmp eq i32 %bind_enabled, 0
  %cond = select i1 %tobool62.not, i32 0, i32 33554432
  %or63 = or i32 %cond, %shl61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %zbva)
  %tobool64.not = icmp eq i32 %zbva, 0
  %shl66 = select i1 %tobool64.not, i32 67108864, i32 0
  %or67 = or i32 %or63, %shl66
  %locread_to_qpid = getelementptr inbounds %struct.fw_ri_tpte, ptr %call7.i, i32 0, i32 1
  %16 = ptrtoint ptr %locread_to_qpid to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or67, ptr %locread_to_qpid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pbl_size)
  %tobool71.not = icmp eq i32 %pbl_size, 0
  br i1 %tobool71.not, label %if.else.cond.end_crit_edge, label %cond.false

if.else.cond.end_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %vr = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 8, i32 4
  %17 = ptrtoint ptr %vr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vr, align 8
  %pbl = getelementptr inbounds %struct.cxgb4_virt_res, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %pbl to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pbl, align 4
  %sub = sub i32 %pbl_addr, %20
  %shr72 = lshr i32 %sub, 3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.else.cond.end_crit_edge
  %cond74 = phi i32 [ %shr72, %cond.false ], [ 0, %if.else.cond.end_crit_edge ]
  %nosnoop_pbladdr = getelementptr inbounds %struct.fw_ri_tpte, ptr %call7.i, i32 0, i32 2
  %21 = ptrtoint ptr %nosnoop_pbladdr to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %cond74, ptr %nosnoop_pbladdr, align 8
  %conv76 = trunc i64 %len to i32
  %len_lo = getelementptr inbounds %struct.fw_ri_tpte, ptr %call7.i, i32 0, i32 3
  %22 = ptrtoint ptr %len_lo to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv76, ptr %len_lo, align 4
  %shr77 = lshr i64 %to, 32
  %conv78 = trunc i64 %shr77 to i32
  %va_hi = getelementptr inbounds %struct.fw_ri_tpte, ptr %call7.i, i32 0, i32 4
  %23 = ptrtoint ptr %va_hi to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv78, ptr %va_hi, align 8
  %conv80 = trunc i64 %to to i32
  %va_lo_fbo = getelementptr inbounds %struct.fw_ri_tpte, ptr %call7.i, i32 0, i32 5
  %24 = ptrtoint ptr %va_lo_fbo to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv80, ptr %va_lo_fbo, align 4
  %dca_mwbcnt_pstag = getelementptr inbounds %struct.fw_ri_tpte, ptr %call7.i, i32 0, i32 6
  %25 = ptrtoint ptr %dca_mwbcnt_pstag to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %dca_mwbcnt_pstag, align 8
  %shr81 = lshr i64 %len, 32
  %conv82 = trunc i64 %shr81 to i32
  %len_hi = getelementptr inbounds %struct.fw_ri_tpte, ptr %call7.i, i32 0, i32 7
  %26 = ptrtoint ptr %len_hi to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv82, ptr %len_hi, align 4
  br label %if.end83

if.end83:                                         ; preds = %cond.end, %if.then50
  %vr85 = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 8, i32 4
  %27 = ptrtoint ptr %vr85 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %vr85, align 8
  %stag86 = getelementptr inbounds %struct.cxgb4_virt_res, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %stag86 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %stag86, align 4
  %shr88 = lshr i32 %30, 5
  %add89 = add i32 %shr88, %stag_idx.0
  %call90 = tail call fastcc i32 @write_adapter_mem(ptr noundef %rdev, i32 noundef %add89, i32 noundef 32, ptr noundef nonnull %call7.i, ptr noundef %skb, ptr noundef %wr_waitp)
  br i1 %tobool7.not, label %if.end83.cleanup.sink.split_crit_edge, label %if.then92

if.end83.cleanup.sink.split_crit_edge:            ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.then92:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @c4iw_put_resource(ptr noundef %rdev, i32 noundef %stag_idx.0) #9
  %stats95 = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %stats95, i32 noundef 0) #9
  %cur99 = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 13, i32 3, i32 1
  br label %cleanup.sink.split.sink.split

cleanup.sink.split.sink.split:                    ; preds = %if.then92, %if.then13
  %cur99.sink3 = phi ptr [ %cur99, %if.then92 ], [ %fail, %if.then13 ]
  %.sink2 = phi i64 [ -32, %if.then92 ], [ 1, %if.then13 ]
  %stats95.sink = phi ptr [ %stats95, %if.then92 ], [ %stats, %if.then13 ]
  %retval.0.ph.ph = phi i32 [ %call90, %if.then92 ], [ -12, %if.then13 ]
  %31 = ptrtoint ptr %cur99.sink3 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %cur99.sink3, align 8
  %sub100 = add i64 %32, %.sink2
  store i64 %sub100, ptr %cur99.sink3, align 8
  tail call void @mutex_unlock(ptr noundef %stats95.sink) #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %if.end83.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call90, %if.end83.cleanup.sink.split_crit_edge ], [ %retval.0.ph.ph, %cleanup.sink.split.sink.split ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @finish_mem_reg(ptr noundef %mhp, i32 noundef %stag) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %attr = getelementptr inbounds %struct.c4iw_mr, ptr %mhp, i32 0, i32 5
  %state = getelementptr inbounds %struct.c4iw_mr, ptr %mhp, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %state, align 8
  %bf.set = or i16 %bf.load, -32768
  store i16 %bf.set, ptr %state, align 8
  %stag2 = getelementptr inbounds %struct.c4iw_mr, ptr %mhp, i32 0, i32 5, i32 3
  %1 = ptrtoint ptr %stag2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %stag, ptr %stag2, align 4
  %shr = lshr i32 %stag, 8
  %lkey = getelementptr inbounds %struct.ib_mr, ptr %mhp, i32 0, i32 2
  %2 = ptrtoint ptr %lkey to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %stag, ptr %lkey, align 8
  %rkey = getelementptr inbounds %struct.ib_mr, ptr %mhp, i32 0, i32 3
  %3 = ptrtoint ptr %rkey to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %stag, ptr %rkey, align 4
  %4 = ptrtoint ptr %attr to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %attr, align 8
  %length = getelementptr inbounds %struct.ib_mr, ptr %mhp, i32 0, i32 5
  %6 = ptrtoint ptr %length to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %length, align 8
  %bf.lshr = lshr i16 %bf.load, 4
  %bf.clear8 = and i16 %bf.lshr, 31
  %narrow = add nuw nsw i16 %bf.clear8, 12
  %add = zext i16 %narrow to i32
  %shl = shl nuw i32 1, %add
  %page_size10 = getelementptr inbounds %struct.ib_mr, ptr %mhp, i32 0, i32 6
  %7 = ptrtoint ptr %page_size10 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %shl, ptr %page_size10, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @finish_mem_reg.__UNIQUE_ID_ddebug681, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@finish_mem_reg, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !112

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @finish_mem_reg.__UNIQUE_ID_ddebug681, ptr noundef nonnull @.str.38, i32 noundef %shr, ptr noundef %mhp) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %rhp = getelementptr inbounds %struct.c4iw_mr, ptr %mhp, i32 0, i32 2
  %8 = ptrtoint ptr %rhp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rhp, align 4
  %mrs = getelementptr inbounds %struct.c4iw_dev, ptr %9, i32 0, i32 5
  tail call void @_raw_spin_lock_irq(ptr noundef %mrs) #9
  %call.i = tail call i32 @__xa_insert(ptr noundef %mrs, i32 noundef %shr, ptr noundef %mhp, i32 noundef 3264) #9
  tail call void @_raw_spin_unlock_irq(ptr noundef %mrs) #9
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dereg_mem(ptr noundef %rdev, i32 noundef %stag, i32 noundef %pbl_size, i32 noundef %pbl_addr, ptr noundef %skb, ptr noundef %wr_waitp) unnamed_addr #0 align 64 {
entry:
  %stag.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %stag.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %stag, ptr %stag.addr, align 4
  %call = call fastcc i32 @write_tpt_entry(ptr noundef %rdev, i32 noundef 1, ptr noundef nonnull %stag.addr, i8 noundef zeroext 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i64 noundef 0, i64 noundef 0, i32 noundef %pbl_size, i32 noundef %pbl_addr, ptr noundef %skb, ptr noundef %wr_waitp)
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @c4iw_put_wr_wait(ptr noundef %wr_waitp) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c4iw_put_wr_wait.__UNIQUE_ID_ddebug666, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c4iw_put_wr_wait, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !112

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %kref = getelementptr inbounds %struct.c4iw_wr_wait, ptr %wr_waitp, i32 0, i32 2
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %kref, i32 noundef 4) #9
  %0 = ptrtoint ptr %kref to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %kref, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @c4iw_put_wr_wait.__UNIQUE_ID_ddebug666, ptr noundef nonnull @.str.41, ptr noundef %wr_waitp, i32 noundef %1) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %kref4 = getelementptr inbounds %struct.c4iw_wr_wait, ptr %wr_waitp, i32 0, i32 2
  %call.i.i.i.i40 = tail call zeroext i1 @__kasan_check_read(ptr noundef %kref4, i32 noundef 4) #9
  %2 = ptrtoint ptr %kref4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %kref4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %do.end20, label %do.end.if.end26_crit_edge, !prof !116

do.end.if.end26_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

do.end20:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 222, i32 noundef 9, ptr noundef null) #9
  br label %if.end26

if.end26:                                         ; preds = %do.end20, %do.end.if.end26_crit_edge
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref4, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !117
  tail call void @llvm.prefetch.p0(ptr %kref4, i32 1, i32 3, i32 1) #9
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref4, ptr %kref4, i32 1, ptr elementtype(i32) %kref4) #9, !srcloc !118
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !119

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %kref4, i32 noundef 3) #9
  br label %kref_put.exit

if.then.i:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !120
  tail call void @_c4iw_free_wr_wait(ptr noundef %kref4) #9
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @c4iw_reg_user_mr(ptr noundef %pd, i64 noundef %start, i64 noundef %length, i64 noundef %virt, i32 noundef %acc, ptr nocapture noundef readnone %udata) local_unnamed_addr #0 align 64 {
entry:
  %biter = alloca %struct.ib_block_iter, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %biter) #9
  %0 = getelementptr inbounds %struct.ib_block_iter, ptr %biter, i32 0, i32 1
  %1 = getelementptr inbounds %struct.ib_block_iter, ptr %biter, i32 0, i32 4
  %2 = call ptr @memset(ptr %biter, i32 255, i32 20)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c4iw_reg_user_mr.__UNIQUE_ID_ddebug683, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c4iw_reg_user_mr, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !112

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @c4iw_reg_user_mr.__UNIQUE_ID_ddebug683, ptr noundef nonnull @.str.4, ptr noundef %pd) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %length)
  %cmp = icmp eq i64 %length, -1
  %3 = xor i64 %start, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %length)
  %cmp6 = icmp ult i64 %3, %length
  %or.cond = or i1 %cmp, %cmp6
  br i1 %or.cond, label %do.end.cleanup_crit_edge, label %if.end9

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %do.end
  %rhp11 = getelementptr inbounds %struct.c4iw_pd, ptr %pd, i32 0, i32 2
  %4 = ptrtoint ptr %rhp11 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rhp11, align 4
  %adapter_type.i = getelementptr inbounds %struct.c4iw_dev, ptr %5, i32 0, i32 1, i32 8, i32 13
  %6 = ptrtoint ptr %adapter_type.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %adapter_type.i, align 8
  %8 = and i8 %7, -16
  %9 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i8 %8, label %if.end9.if.end16_crit_edge [
    i8 64, label %if.end9.mr_exceeds_hw_limits.exit_crit_edge
    i8 80, label %if.end9.mr_exceeds_hw_limits.exit_crit_edge199
  ]

if.end9.mr_exceeds_hw_limits.exit_crit_edge199:   ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %mr_exceeds_hw_limits.exit

if.end9.mr_exceeds_hw_limits.exit_crit_edge:      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %mr_exceeds_hw_limits.exit

if.end9.if.end16_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

mr_exceeds_hw_limits.exit:                        ; preds = %if.end9.mr_exceeds_hw_limits.exit_crit_edge, %if.end9.mr_exceeds_hw_limits.exit_crit_edge199
  call void @__sanitizer_cov_trace_const_cmp8(i64 8589934592, i64 %length)
  %cmp.i = icmp ult i64 %length, 8589934592
  br i1 %cmp.i, label %mr_exceeds_hw_limits.exit.if.end16_crit_edge, label %mr_exceeds_hw_limits.exit.cleanup_crit_edge

mr_exceeds_hw_limits.exit.cleanup_crit_edge:      ; preds = %mr_exceeds_hw_limits.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

mr_exceeds_hw_limits.exit.if.end16_crit_edge:     ; preds = %mr_exceeds_hw_limits.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.end16:                                         ; preds = %mr_exceeds_hw_limits.exit.if.end16_crit_edge, %if.end9.if.end16_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 240) #12
  %tobool18.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool18.not, label %if.end16.cleanup_crit_edge, label %if.end21

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end21:                                         ; preds = %if.end16
  %call22 = tail call ptr @c4iw_alloc_wr_wait(i32 noundef 3264) #9
  %wr_waitp = getelementptr inbounds %struct.c4iw_mr, ptr %call7.i.i, i32 0, i32 10
  %11 = ptrtoint ptr %wr_waitp to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call22, ptr %wr_waitp, align 8
  %tobool24.not = icmp eq ptr %call22, null
  br i1 %tobool24.not, label %if.end21.err_free_mhp_crit_edge, label %if.end26

if.end21.err_free_mhp_crit_edge:                  ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_mhp

if.end26:                                         ; preds = %if.end21
  %call.i = tail call ptr @__alloc_skb(i32 noundef 512, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #9
  %dereg_skb = getelementptr inbounds %struct.c4iw_mr, ptr %call7.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %dereg_skb to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %dereg_skb, align 8
  %tobool29.not = icmp eq ptr %call.i, null
  br i1 %tobool29.not, label %if.end26.err_free_wr_wait_crit_edge, label %if.end31

if.end26.err_free_wr_wait_crit_edge:              ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_wr_wait

if.end31:                                         ; preds = %if.end26
  %rhp32 = getelementptr inbounds %struct.c4iw_mr, ptr %call7.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %rhp32 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %5, ptr %rhp32, align 4
  %device = getelementptr inbounds %struct.ib_pd, ptr %pd, i32 0, i32 2
  %14 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device, align 4
  %conv = trunc i64 %start to i32
  %conv33 = trunc i64 %length to i32
  %call34 = tail call ptr @ib_umem_get(ptr noundef %15, i32 noundef %conv, i32 noundef %conv33, i32 noundef %acc) #9
  %umem = getelementptr inbounds %struct.c4iw_mr, ptr %call7.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %umem to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call34, ptr %umem, align 8
  %cmp.i177 = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i177, label %if.end31.err_free_skb_crit_edge, label %if.end38

if.end31.err_free_skb_crit_edge:                  ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_skb

if.end38:                                         ; preds = %if.end31
  %iova.i = getelementptr inbounds %struct.ib_umem, ptr %call34, i32 0, i32 2
  %17 = ptrtoint ptr %iova.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %iova.i, align 8
  %length.i = getelementptr inbounds %struct.ib_umem, ptr %call34, i32 0, i32 3
  %19 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %length.i, align 8
  %conv.i = zext i32 %20 to i64
  %add.i = add i64 %18, 4095
  %add2.i = add i64 %add.i, %conv.i
  %and.i = and i64 %add2.i, 4294963200
  %and15.i = and i64 %18, 4294963200
  %sub16.i = sub nsw i64 %and.i, %and15.i
  %conv17.i = trunc i64 %sub16.i to i32
  %21 = ptrtoint ptr %rhp32 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rhp32, align 4
  %rdev.i = getelementptr inbounds %struct.c4iw_dev, ptr %22, i32 0, i32 1
  %shl.i = lshr exact i32 %conv17.i, 9
  %call.i178 = tail call i32 @c4iw_pblpool_alloc(ptr noundef %rdev.i, i32 noundef %shl.i) #9
  %pbl_addr.i = getelementptr inbounds %struct.c4iw_mr, ptr %call7.i.i, i32 0, i32 5, i32 6
  %23 = ptrtoint ptr %pbl_addr.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call.i178, ptr %pbl_addr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i178)
  %tobool.not.i = icmp eq i32 %call.i178, 0
  br i1 %tobool.not.i, label %if.end38.err_umem_release_crit_edge, label %if.end44

if.end38.err_umem_release_crit_edge:              ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_umem_release

if.end44:                                         ; preds = %if.end38
  %div1.i = lshr exact i32 %conv17.i, 12
  %pbl_size.i = getelementptr inbounds %struct.c4iw_mr, ptr %call7.i.i, i32 0, i32 5, i32 7
  %24 = ptrtoint ptr %pbl_size.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %div1.i, ptr %pbl_size.i, align 4
  %call45 = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #9
  %25 = inttoptr i32 %call45 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end44.err_pbl_free_crit_edge, label %if.end48

if.end44.err_pbl_free_crit_edge:                  ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_pbl_free

if.end48:                                         ; preds = %if.end44
  %26 = ptrtoint ptr %umem to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %umem, align 8
  %sgt_append.i = getelementptr inbounds %struct.ib_umem, ptr %27, i32 0, i32 7
  %28 = ptrtoint ptr %sgt_append.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sgt_append.i, align 8
  %nents.i = getelementptr inbounds %struct.ib_umem, ptr %27, i32 0, i32 7, i32 0, i32 1
  %30 = ptrtoint ptr %nents.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nents.i, align 4
  call void @__rdma_block_iter_start(ptr noundef nonnull %biter, ptr noundef %29, i32 noundef %31, i32 noundef 4096) #9
  %call51192 = call zeroext i1 @__rdma_block_iter_next(ptr noundef nonnull %biter) #9
  br i1 %call51192, label %if.end48.for.body_crit_edge, label %if.end48.pbl_done.thread_crit_edge

if.end48.pbl_done.thread_crit_edge:               ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %pbl_done.thread

if.end48.for.body_crit_edge:                      ; preds = %if.end48
  br label %for.body

for.body:                                         ; preds = %if.end66.for.body_crit_edge, %if.end48.for.body_crit_edge
  %i.0194 = phi i32 [ %i.1, %if.end66.for.body_crit_edge ], [ 0, %if.end48.for.body_crit_edge ]
  %n.0193 = phi i32 [ %n.1, %if.end66.for.body_crit_edge ], [ 0, %if.end48.for.body_crit_edge ]
  %32 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %0, align 4
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %1, align 4
  %sh_prom.i = zext i32 %35 to i64
  %notmask.i = shl nsw i64 -1, %sh_prom.i
  %36 = trunc i64 %notmask.i to i32
  %conv1.i = and i32 %33, %36
  %conv53 = zext i32 %conv1.i to i64
  %inc = add i32 %i.0194, 1
  %arrayidx = getelementptr i64, ptr %25, i32 %i.0194
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %conv53, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %inc)
  %cmp54 = icmp eq i32 %inc, 512
  br i1 %cmp54, label %if.then56, label %for.body.if.end66_crit_edge

for.body.if.end66_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

if.then56:                                        ; preds = %for.body
  %38 = ptrtoint ptr %rhp32 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rhp32, align 4
  %rdev = getelementptr inbounds %struct.c4iw_dev, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %pbl_addr.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pbl_addr.i, align 8
  %shl58 = shl i32 %n.0193, 3
  %add59 = add i32 %41, %shl58
  %42 = ptrtoint ptr %wr_waitp to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %wr_waitp, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @write_pbl.__UNIQUE_ID_ddebug680, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c4iw_reg_user_mr, %if.then.i)) #9
          to label %write_pbl.exit [label %if.then.i], !srcloc !112

if.then.i:                                        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #11
  %vr.i = getelementptr inbounds %struct.c4iw_dev, ptr %39, i32 0, i32 1, i32 8, i32 4
  %44 = ptrtoint ptr %vr.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %vr.i, align 8
  %pbl3.i = getelementptr inbounds %struct.cxgb4_virt_res, ptr %45, i32 0, i32 5
  %46 = ptrtoint ptr %pbl3.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %pbl3.i, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @write_pbl.__UNIQUE_ID_ddebug680, ptr noundef nonnull @.str.44, i32 noundef %add59, i32 noundef %47, i32 noundef 512) #9
  br label %write_pbl.exit

write_pbl.exit:                                   ; preds = %if.then.i, %if.then56
  %shr.i = lshr i32 %add59, 5
  %call4.i = call fastcc i32 @write_adapter_mem(ptr noundef %rdev, i32 noundef %shr.i, i32 noundef 4096, ptr noundef nonnull %25, ptr noundef null, ptr noundef %43) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool62.not = icmp eq i32 %call4.i, 0
  br i1 %tobool62.not, label %if.end64, label %pbl_done.thread187

pbl_done.thread187:                               ; preds = %write_pbl.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @free_pages(i32 noundef %call45, i32 noundef 0) #9
  br label %err_pbl_free

if.end64:                                         ; preds = %write_pbl.exit
  call void @__sanitizer_cov_trace_pc() #11
  %add65 = add i32 %n.0193, 512
  br label %if.end66

if.end66:                                         ; preds = %if.end64, %for.body.if.end66_crit_edge
  %n.1 = phi i32 [ %add65, %if.end64 ], [ %n.0193, %for.body.if.end66_crit_edge ]
  %i.1 = phi i32 [ 0, %if.end64 ], [ %inc, %for.body.if.end66_crit_edge ]
  %call51 = call zeroext i1 @__rdma_block_iter_next(ptr noundef nonnull %biter) #9
  br i1 %call51, label %if.end66.for.body_crit_edge, label %for.end

if.end66.for.body_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %if.end66
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1)
  %tobool67.not = icmp eq i32 %i.1, 0
  br i1 %tobool67.not, label %for.end.pbl_done.thread_crit_edge, label %pbl_done

for.end.pbl_done.thread_crit_edge:                ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %pbl_done.thread

pbl_done.thread:                                  ; preds = %for.end.pbl_done.thread_crit_edge, %if.end48.pbl_done.thread_crit_edge
  call void @free_pages(i32 noundef %call45, i32 noundef 0) #9
  br label %if.end80

pbl_done:                                         ; preds = %for.end
  %48 = ptrtoint ptr %rhp32 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %rhp32, align 4
  %rdev70 = getelementptr inbounds %struct.c4iw_dev, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %pbl_addr.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %pbl_addr.i, align 8
  %shl73 = shl i32 %n.1, 3
  %add74 = add i32 %51, %shl73
  %52 = ptrtoint ptr %wr_waitp to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %wr_waitp, align 8
  %call76 = call fastcc i32 @write_pbl(ptr noundef %rdev70, ptr noundef nonnull %25, i32 noundef %add74, i32 noundef %i.1, ptr noundef %53)
  call void @free_pages(i32 noundef %call45, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool78.not = icmp eq i32 %call76, 0
  br i1 %tobool78.not, label %pbl_done.if.end80_crit_edge, label %pbl_done.err_pbl_free_crit_edge

pbl_done.err_pbl_free_crit_edge:                  ; preds = %pbl_done
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_pbl_free

pbl_done.if.end80_crit_edge:                      ; preds = %pbl_done
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80

if.end80:                                         ; preds = %pbl_done.if.end80_crit_edge, %pbl_done.thread
  %pdid = getelementptr inbounds %struct.c4iw_pd, ptr %pd, i32 0, i32 1
  %54 = ptrtoint ptr %pdid to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %pdid, align 4
  %attr81 = getelementptr inbounds %struct.c4iw_mr, ptr %call7.i.i, i32 0, i32 5
  %pdid82 = getelementptr inbounds %struct.c4iw_mr, ptr %call7.i.i, i32 0, i32 5, i32 4
  %56 = ptrtoint ptr %pdid82 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %pdid82, align 8
  %zbva = getelementptr inbounds %struct.c4iw_mr, ptr %call7.i.i, i32 0, i32 5, i32 8
  %57 = ptrtoint ptr %zbva to i32
  call void @__asan_load2_noabort(i32 %57)
  %bf.load = load i16, ptr %zbva, align 8
  %and.i180 = lshr i32 %acc, 1
  %or.i = and i32 %and.i180, 3
  %and4.i = shl i32 %acc, 2
  %58 = and i32 %and4.i, 4
  %or7.i = or i32 %or.i, %58
  %or8.i = or i32 %or7.i, 8
  %perms = getelementptr inbounds %struct.c4iw_mr, ptr %call7.i.i, i32 0, i32 5, i32 2
  %59 = ptrtoint ptr %perms to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %or8.i, ptr %perms, align 8
  %va_fbo = getelementptr inbounds %struct.c4iw_mr, ptr %call7.i.i, i32 0, i32 5, i32 1
  %60 = ptrtoint ptr %va_fbo to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %virt, ptr %va_fbo, align 8
  %bf.clear89 = and i16 %bf.load, -1521
  store i16 %bf.clear89, ptr %zbva, align 8
  %61 = ptrtoint ptr %attr81 to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %length, ptr %attr81, align 8
  %call92 = call fastcc i32 @register_mem(ptr noundef %5, ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %if.end80.cleanup_crit_edge, label %if.end80.err_pbl_free_crit_edge

if.end80.err_pbl_free_crit_edge:                  ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_pbl_free

if.end80.cleanup_crit_edge:                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

err_pbl_free:                                     ; preds = %if.end80.err_pbl_free_crit_edge, %pbl_done.err_pbl_free_crit_edge, %pbl_done.thread187, %if.end44.err_pbl_free_crit_edge
  %err.3 = phi i32 [ %call76, %pbl_done.err_pbl_free_crit_edge ], [ %call92, %if.end80.err_pbl_free_crit_edge ], [ -12, %if.end44.err_pbl_free_crit_edge ], [ %call4.i, %pbl_done.thread187 ]
  %62 = ptrtoint ptr %rhp32 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %rhp32, align 4
  %rdev97 = getelementptr inbounds %struct.c4iw_dev, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %pbl_addr.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %pbl_addr.i, align 8
  %66 = ptrtoint ptr %pbl_size.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %pbl_size.i, align 4
  %shl101 = shl i32 %67, 3
  call void @c4iw_pblpool_free(ptr noundef %rdev97, i32 noundef %65, i32 noundef %shl101) #9
  br label %err_umem_release

err_umem_release:                                 ; preds = %err_pbl_free, %if.end38.err_umem_release_crit_edge
  %err.4 = phi i32 [ %err.3, %err_pbl_free ], [ -12, %if.end38.err_umem_release_crit_edge ]
  %68 = ptrtoint ptr %umem to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %umem, align 8
  call void @ib_umem_release(ptr noundef %69) #9
  br label %err_free_skb

err_free_skb:                                     ; preds = %err_umem_release, %if.end31.err_free_skb_crit_edge
  %err.5 = phi i32 [ -12, %if.end31.err_free_skb_crit_edge ], [ %err.4, %err_umem_release ]
  %70 = ptrtoint ptr %dereg_skb to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dereg_skb, align 8
  call void @kfree_skb_reason(ptr noundef %71, i32 noundef 0) #9
  br label %err_free_wr_wait

err_free_wr_wait:                                 ; preds = %err_free_skb, %if.end26.err_free_wr_wait_crit_edge
  %err.6 = phi i32 [ %err.5, %err_free_skb ], [ -12, %if.end26.err_free_wr_wait_crit_edge ]
  %72 = ptrtoint ptr %wr_waitp to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %wr_waitp, align 8
  call fastcc void @c4iw_put_wr_wait(ptr noundef %73)
  br label %err_free_mhp

err_free_mhp:                                     ; preds = %err_free_wr_wait, %if.end21.err_free_mhp_crit_edge
  %err.7 = phi i32 [ %err.6, %err_free_wr_wait ], [ -12, %if.end21.err_free_mhp_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #9
  %74 = inttoptr i32 %err.7 to ptr
  br label %cleanup

cleanup:                                          ; preds = %err_free_mhp, %if.end80.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %mr_exceeds_hw_limits.exit.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %74, %err_free_mhp ], [ %call7.i.i, %if.end80.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %do.end.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %mr_exceeds_hw_limits.exit.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end16.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %biter) #9
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ib_umem_get(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__rdma_block_iter_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @write_pbl(ptr noundef %rdev, ptr noundef %pbl, i32 noundef %pbl_addr, i32 noundef %pbl_size, ptr noundef %wr_waitp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @write_pbl.__UNIQUE_ID_ddebug680, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@write_pbl, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !112

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %vr = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 8, i32 4
  %0 = ptrtoint ptr %vr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vr, align 8
  %pbl3 = getelementptr inbounds %struct.cxgb4_virt_res, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %pbl3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pbl3, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @write_pbl.__UNIQUE_ID_ddebug680, ptr noundef nonnull @.str.44, i32 noundef %pbl_addr, i32 noundef %3, i32 noundef %pbl_size) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %shr = lshr i32 %pbl_addr, 5
  %shl = shl i32 %pbl_size, 3
  %call4 = tail call fastcc i32 @write_adapter_mem(ptr noundef %rdev, i32 noundef %shr, i32 noundef %shl, ptr noundef %pbl, ptr noundef null, ptr noundef %wr_waitp)
  ret i32 %call4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @register_mem(ptr noundef %rhp, ptr noundef %mhp) unnamed_addr #0 align 64 {
entry:
  %stag.addr.i = alloca i32, align 4
  %stag = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stag) #9
  %0 = ptrtoint ptr %stag to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %stag, align 4
  %rdev = getelementptr inbounds %struct.c4iw_dev, ptr %rhp, i32 0, i32 1
  %attr = getelementptr inbounds %struct.c4iw_mr, ptr %mhp, i32 0, i32 5
  %pdid = getelementptr inbounds %struct.c4iw_mr, ptr %mhp, i32 0, i32 5, i32 4
  %1 = ptrtoint ptr %pdid to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %pdid, align 8
  %3 = ptrtoint ptr %attr to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %attr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %tobool.not = icmp eq i64 %4, 0
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %perms = getelementptr inbounds %struct.c4iw_mr, ptr %mhp, i32 0, i32 5, i32 2
  %5 = ptrtoint ptr %perms to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %perms, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %spec.select = phi i64 [ -1, %entry.cond.end_crit_edge ], [ %4, %cond.true ]
  %cond = phi i32 [ 0, %entry.cond.end_crit_edge ], [ %6, %cond.true ]
  %mw_bind_enable = getelementptr inbounds %struct.c4iw_mr, ptr %mhp, i32 0, i32 5, i32 8
  %7 = ptrtoint ptr %mw_bind_enable to i32
  call void @__asan_load2_noabort(i32 %7)
  %bf.load = load i16, ptr %mw_bind_enable, align 8
  %bf.lshr = lshr i16 %bf.load, 9
  %bf.clear = and i16 %bf.lshr, 1
  %bf.cast = zext i16 %bf.clear to i32
  %bf.lshr6 = lshr i16 %bf.load, 10
  %bf.clear7 = and i16 %bf.lshr6, 1
  %bf.cast8 = zext i16 %bf.clear7 to i32
  %va_fbo = getelementptr inbounds %struct.c4iw_mr, ptr %mhp, i32 0, i32 5, i32 1
  %8 = ptrtoint ptr %va_fbo to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %va_fbo, align 8
  %pbl_size = getelementptr inbounds %struct.c4iw_mr, ptr %mhp, i32 0, i32 5, i32 7
  %10 = ptrtoint ptr %pbl_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pbl_size, align 4
  %pbl_addr = getelementptr inbounds %struct.c4iw_mr, ptr %mhp, i32 0, i32 5, i32 6
  %12 = ptrtoint ptr %pbl_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pbl_addr, align 8
  %wr_waitp = getelementptr inbounds %struct.c4iw_mr, ptr %mhp, i32 0, i32 10
  %14 = ptrtoint ptr %wr_waitp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wr_waitp, align 8
  %call = call fastcc i32 @write_tpt_entry(ptr noundef %rdev, i32 noundef 0, ptr noundef nonnull %stag, i8 noundef zeroext 1, i32 noundef %2, i32 noundef %cond, i32 noundef %bf.cast, i32 noundef %bf.cast8, i64 noundef %9, i64 noundef %spec.select, i32 noundef %11, i32 noundef %13, ptr noundef null, ptr noundef %15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool21.not = icmp eq i32 %call, 0
  br i1 %tobool21.not, label %if.end, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %16 = ptrtoint ptr %stag to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %stag, align 4
  %call22 = tail call fastcc i32 @finish_mem_reg(ptr noundef %mhp, i32 noundef %17)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end.cleanup_crit_edge, label %if.then24

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then24:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %stag27 = getelementptr inbounds %struct.c4iw_mr, ptr %mhp, i32 0, i32 5, i32 3
  %18 = ptrtoint ptr %stag27 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %stag27, align 4
  %20 = ptrtoint ptr %pbl_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pbl_size, align 4
  %22 = ptrtoint ptr %pbl_addr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pbl_addr, align 8
  %dereg_skb = getelementptr inbounds %struct.c4iw_mr, ptr %mhp, i32 0, i32 3
  %24 = ptrtoint ptr %dereg_skb to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dereg_skb, align 8
  %26 = ptrtoint ptr %wr_waitp to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %wr_waitp, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stag.addr.i)
  %28 = ptrtoint ptr %stag.addr.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %19, ptr %stag.addr.i, align 4
  %call.i = call fastcc i32 @write_tpt_entry(ptr noundef %rdev, i32 noundef 1, ptr noundef nonnull %stag.addr.i, i8 noundef zeroext 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i64 noundef 0, i64 noundef 0, i32 noundef %21, i32 noundef %23, ptr noundef %25, ptr noundef %27) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stag.addr.i)
  %29 = ptrtoint ptr %dereg_skb to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %dereg_skb, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then24, %if.end.cleanup_crit_edge, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %cond.end.cleanup_crit_edge ], [ %call22, %if.then24 ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stag) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @c4iw_pblpool_free(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_umem_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @c4iw_alloc_mr(ptr nocapture noundef readonly %pd, i32 noundef %mr_type, i32 noundef %max_num_sg) local_unnamed_addr #0 align 64 {
entry:
  %stag = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stag) #9
  %0 = ptrtoint ptr %stag to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %stag, align 4
  %mul = shl i32 %max_num_sg, 3
  %add = add i32 %mul, 31
  %div141 = and i32 %add, -32
  %rhp2 = getelementptr inbounds %struct.c4iw_pd, ptr %pd, i32 0, i32 2
  %1 = ptrtoint ptr %rhp2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rhp2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mr_type)
  %cmp.not = icmp eq i32 %mr_type, 0
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %rdev = getelementptr inbounds %struct.c4iw_dev, ptr %2, i32 0, i32 1
  %lldi = getelementptr inbounds %struct.c4iw_dev, ptr %2, i32 0, i32 1, i32 8
  %ulptx_memwrite_dsgl = getelementptr inbounds %struct.c4iw_dev, ptr %2, i32 0, i32 1, i32 8, i32 34
  %3 = ptrtoint ptr %ulptx_memwrite_dsgl to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %ulptx_memwrite_dsgl, align 4, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %lor.lhs.false.land.end.thread_crit_edge, label %land.end

lor.lhs.false.land.end.thread_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end.thread

land.end:                                         ; preds = %lor.lhs.false
  %5 = load i32, ptr @use_dsgl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  br i1 %tobool3.not, label %land.end.land.end.thread_crit_edge, label %land.end._crit_edge

land.end._crit_edge:                              ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %6

land.end.land.end.thread_crit_edge:               ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end.thread

land.end.thread:                                  ; preds = %land.end.land.end.thread_crit_edge, %lor.lhs.false.land.end.thread_crit_edge
  br label %6

6:                                                ; preds = %land.end.thread, %land.end._crit_edge
  %7 = phi i32 [ 32, %land.end.thread ], [ 128, %land.end._crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %max_num_sg)
  %cmp5 = icmp ult i32 %7, %max_num_sg
  br i1 %cmp5, label %.cleanup_crit_edge, label %if.end

.cleanup_crit_edge:                               ; preds = %6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 240) #12
  %tobool8.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool8.not, label %if.end.err_crit_edge, label %if.end10

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end10:                                         ; preds = %if.end
  %call11 = tail call ptr @c4iw_alloc_wr_wait(i32 noundef 3264) #9
  %wr_waitp = getelementptr inbounds %struct.c4iw_mr, ptr %call7.i.i, i32 0, i32 10
  %9 = ptrtoint ptr %wr_waitp to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call11, ptr %wr_waitp, align 8
  %tobool13.not = icmp eq ptr %call11, null
  br i1 %tobool13.not, label %if.end10.err_free_mhp_crit_edge, label %if.end15

if.end10.err_free_mhp_crit_edge:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_mhp

if.end15:                                         ; preds = %if.end10
  %ret.i = getelementptr inbounds %struct.c4iw_wr_wait, ptr %call11, i32 0, i32 1
  %10 = ptrtoint ptr %ret.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %ret.i, align 4
  %11 = ptrtoint ptr %call11 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %call11, align 4
  %wait.i.i = getelementptr inbounds %struct.completion, ptr %call11, i32 0, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @init_completion.__key) #9
  %12 = ptrtoint ptr %lldi to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lldi, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %mpl_addr = getelementptr inbounds %struct.c4iw_mr, ptr %call7.i.i, i32 0, i32 7
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef %div141, ptr noundef %mpl_addr, i32 noundef 3264, i32 noundef 0) #9
  %mpl = getelementptr inbounds %struct.c4iw_mr, ptr %call7.i.i, i32 0, i32 6
  %14 = ptrtoint ptr %mpl to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i, ptr %mpl, align 8
  %tobool21.not = icmp eq ptr %call.i, null
  br i1 %tobool21.not, label %if.end15.err_free_wr_wait_crit_edge, label %if.end23

if.end15.err_free_wr_wait_crit_edge:              ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_wr_wait

if.end23:                                         ; preds = %if.end15
  %max_mpl_len = getelementptr inbounds %struct.c4iw_mr, ptr %call7.i.i, i32 0, i32 8
  %15 = ptrtoint ptr %max_mpl_len to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %div141, ptr %max_mpl_len, align 8
  %rhp24 = getelementptr inbounds %struct.c4iw_mr, ptr %call7.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %rhp24 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %2, ptr %rhp24, align 4
  %call.i142 = tail call i32 @c4iw_pblpool_alloc(ptr noundef %rdev, i32 noundef %mul) #9
  %pbl_addr.i = getelementptr inbounds %struct.c4iw_mr, ptr %call7.i.i, i32 0, i32 5, i32 6
  %17 = ptrtoint ptr %pbl_addr.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call.i142, ptr %pbl_addr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i142)
  %tobool.not.i143 = icmp eq i32 %call.i142, 0
  br i1 %tobool.not.i143, label %if.end23.err_free_dma_crit_edge, label %if.end28

if.end23.err_free_dma_crit_edge:                  ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_dma

if.end28:                                         ; preds = %if.end23
  %pbl_size = getelementptr inbounds %struct.c4iw_mr, ptr %call7.i.i, i32 0, i32 5, i32 7
  %18 = ptrtoint ptr %pbl_size to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %max_num_sg, ptr %pbl_size, align 4
  %pdid = getelementptr inbounds %struct.c4iw_pd, ptr %pd, i32 0, i32 1
  %19 = ptrtoint ptr %pdid to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pdid, align 4
  %21 = ptrtoint ptr %pbl_addr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pbl_addr.i, align 8
  %23 = ptrtoint ptr %wr_waitp to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %wr_waitp, align 8
  %call34 = call fastcc i32 @allocate_stag(ptr noundef %rdev, ptr noundef nonnull %stag, i32 noundef %20, i32 noundef %max_num_sg, i32 noundef %22, ptr noundef %24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %if.end28.err_free_pbl_crit_edge

if.end28.err_free_pbl_crit_edge:                  ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_pbl

if.end37:                                         ; preds = %if.end28
  %25 = ptrtoint ptr %pdid to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pdid, align 4
  %pdid40 = getelementptr inbounds %struct.c4iw_mr, ptr %call7.i.i, i32 0, i32 5, i32 4
  %27 = ptrtoint ptr %pdid40 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %pdid40, align 8
  %type = getelementptr inbounds %struct.c4iw_mr, ptr %call7.i.i, i32 0, i32 5, i32 8
  %28 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %28)
  %bf.load = load i16, ptr %type, align 8
  %29 = ptrtoint ptr %stag to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %stag, align 4
  %stag43 = getelementptr inbounds %struct.c4iw_mr, ptr %call7.i.i, i32 0, i32 5, i32 3
  %31 = ptrtoint ptr %stag43 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %stag43, align 4
  %bf.clear46 = and i16 %bf.load, 8191
  store i16 %bf.clear46, ptr %type, align 8
  %shr = lshr i32 %30, 8
  %lkey = getelementptr inbounds %struct.ib_mr, ptr %call7.i.i, i32 0, i32 2
  %32 = ptrtoint ptr %lkey to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %30, ptr %lkey, align 8
  %rkey = getelementptr inbounds %struct.ib_mr, ptr %call7.i.i, i32 0, i32 3
  %33 = ptrtoint ptr %rkey to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %30, ptr %rkey, align 4
  %mrs = getelementptr inbounds %struct.c4iw_dev, ptr %2, i32 0, i32 5
  %call49 = tail call fastcc i32 @xa_insert_irq(ptr noundef %mrs, i32 noundef %shr, ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %do.body, label %if.then51

if.then51:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %pbl_size to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pbl_size, align 4
  %36 = ptrtoint ptr %pbl_addr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pbl_addr.i, align 8
  %dereg_skb = getelementptr inbounds %struct.c4iw_mr, ptr %call7.i.i, i32 0, i32 3
  %38 = ptrtoint ptr %dereg_skb to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dereg_skb, align 8
  %40 = ptrtoint ptr %wr_waitp to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %wr_waitp, align 8
  tail call fastcc void @dereg_mem(ptr noundef %rdev, i32 noundef %30, i32 noundef %35, i32 noundef %37, ptr noundef %39, ptr noundef %41)
  br label %err_free_pbl

do.body:                                          ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c4iw_alloc_mr.__UNIQUE_ID_ddebug684, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c4iw_alloc_mr, %if.then58)) #9
          to label %cleanup [label %if.then58], !srcloc !112

if.then58:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @c4iw_alloc_mr.__UNIQUE_ID_ddebug684, ptr noundef nonnull @.str.8, i32 noundef %shr, ptr noundef nonnull %call7.i.i, i32 noundef %30) #9
  br label %cleanup

err_free_pbl:                                     ; preds = %if.then51, %if.end28.err_free_pbl_crit_edge
  %ret.0 = phi i32 [ %call34, %if.end28.err_free_pbl_crit_edge ], [ -12, %if.then51 ]
  %42 = ptrtoint ptr %rhp24 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rhp24, align 4
  %rdev69 = getelementptr inbounds %struct.c4iw_dev, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %pbl_addr.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pbl_addr.i, align 8
  %46 = ptrtoint ptr %pbl_size to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %pbl_size, align 4
  %shl = shl i32 %47, 3
  tail call void @c4iw_pblpool_free(ptr noundef %rdev69, i32 noundef %45, i32 noundef %shl) #9
  br label %err_free_dma

err_free_dma:                                     ; preds = %err_free_pbl, %if.end23.err_free_dma_crit_edge
  %ret.1 = phi i32 [ %ret.0, %err_free_pbl ], [ -12, %if.end23.err_free_dma_crit_edge ]
  %48 = ptrtoint ptr %rhp24 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %rhp24, align 4
  %lldi76 = getelementptr inbounds %struct.c4iw_dev, ptr %49, i32 0, i32 1, i32 8
  %50 = ptrtoint ptr %lldi76 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %lldi76, align 8
  %dev78 = getelementptr inbounds %struct.pci_dev, ptr %51, i32 0, i32 44
  %52 = ptrtoint ptr %max_mpl_len to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %max_mpl_len, align 8
  %54 = ptrtoint ptr %mpl to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mpl, align 8
  %56 = ptrtoint ptr %mpl_addr to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %mpl_addr, align 4
  tail call void @dma_free_attrs(ptr noundef %dev78, i32 noundef %53, ptr noundef %55, i32 noundef %57, i32 noundef 0) #9
  br label %err_free_wr_wait

err_free_wr_wait:                                 ; preds = %err_free_dma, %if.end15.err_free_wr_wait_crit_edge
  %ret.2 = phi i32 [ %ret.1, %err_free_dma ], [ -12, %if.end15.err_free_wr_wait_crit_edge ]
  %58 = ptrtoint ptr %wr_waitp to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %wr_waitp, align 8
  tail call fastcc void @c4iw_put_wr_wait(ptr noundef %59)
  br label %err_free_mhp

err_free_mhp:                                     ; preds = %err_free_wr_wait, %if.end10.err_free_mhp_crit_edge
  %ret.3 = phi i32 [ %ret.2, %err_free_wr_wait ], [ -12, %if.end10.err_free_mhp_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %err

err:                                              ; preds = %err_free_mhp, %if.end.err_crit_edge
  %ret.4 = phi i32 [ %ret.3, %err_free_mhp ], [ -12, %if.end.err_crit_edge ]
  %60 = inttoptr i32 %ret.4 to ptr
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then58, %do.body, %.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %60, %err ], [ %call7.i.i, %if.then58 ], [ inttoptr (i32 -22 to ptr), %.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ %call7.i.i, %do.body ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stag) #9
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @allocate_stag(ptr noundef %rdev, ptr nocapture noundef %stag, i32 noundef %pdid, i32 noundef %pbl_size, i32 noundef %pbl_addr, ptr noundef %wr_waitp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %stag to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %stag, align 4
  %call = tail call fastcc i32 @write_tpt_entry(ptr noundef %rdev, i32 noundef 0, ptr noundef %stag, i8 noundef zeroext 0, i32 noundef %pdid, i32 noundef 0, i32 noundef 0, i32 noundef 0, i64 noundef 0, i64 noundef 0, i32 noundef %pbl_size, i32 noundef %pbl_addr, ptr noundef null, ptr noundef %wr_waitp)
  ret i32 %call
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xa_insert_irq(ptr noundef %xa, i32 noundef %index, ptr noundef %entry1) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_lock_irq(ptr noundef %xa) #9
  %call = tail call i32 @__xa_insert(ptr noundef %xa, i32 noundef %index, ptr noundef %entry1, i32 noundef 3264) #9
  tail call void @_raw_spin_unlock_irq(ptr noundef %xa) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @c4iw_map_mr_sg(ptr noundef %ibmr, ptr noundef %sg, i32 noundef %sg_nents, ptr noundef %sg_offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mpl_len = getelementptr inbounds %struct.c4iw_mr, ptr %ibmr, i32 0, i32 9
  %0 = ptrtoint ptr %mpl_len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %mpl_len, align 4
  %call1 = tail call i32 @ib_sg_to_pages(ptr noundef %ibmr, ptr noundef %sg, i32 noundef %sg_nents, ptr noundef %sg_offset, ptr noundef nonnull @c4iw_set_page) #9
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_sg_to_pages(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @c4iw_set_page(ptr nocapture noundef %ibmr, i64 noundef %addr) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mpl_len = getelementptr inbounds %struct.c4iw_mr, ptr %ibmr, i32 0, i32 9
  %0 = ptrtoint ptr %mpl_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mpl_len, align 4
  %pbl_size = getelementptr inbounds %struct.c4iw_mr, ptr %ibmr, i32 0, i32 5, i32 7
  %2 = ptrtoint ptr %pbl_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pbl_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end, !prof !116

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %mpl = getelementptr inbounds %struct.c4iw_mr, ptr %ibmr, i32 0, i32 6
  %4 = ptrtoint ptr %mpl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mpl, align 8
  %inc = add i32 %1, 1
  %6 = ptrtoint ptr %mpl_len to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %inc, ptr %mpl_len, align 4
  %arrayidx = getelementptr i64, ptr %5, i32 %1
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %addr, ptr %arrayidx, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @c4iw_dereg_mr(ptr noundef %ib_mr, ptr nocapture noundef readnone %udata) local_unnamed_addr #0 align 64 {
entry:
  %stag.addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c4iw_dereg_mr.__UNIQUE_ID_ddebug685, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c4iw_dereg_mr, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !112

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @c4iw_dereg_mr.__UNIQUE_ID_ddebug685, ptr noundef nonnull @.str.11, ptr noundef %ib_mr) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %rhp4 = getelementptr inbounds %struct.c4iw_mr, ptr %ib_mr, i32 0, i32 2
  %0 = ptrtoint ptr %rhp4 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rhp4, align 4
  %stag = getelementptr inbounds %struct.c4iw_mr, ptr %ib_mr, i32 0, i32 5, i32 3
  %2 = ptrtoint ptr %stag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %stag, align 4
  %shr = lshr i32 %3, 8
  %mrs = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 5
  tail call void @_raw_spin_lock_irq(ptr noundef %mrs) #9
  %call.i = tail call ptr @__xa_erase(ptr noundef %mrs, i32 noundef %shr) #9
  tail call void @_raw_spin_unlock_irq(ptr noundef %mrs) #9
  %mpl = getelementptr inbounds %struct.c4iw_mr, ptr %ib_mr, i32 0, i32 6
  %4 = ptrtoint ptr %mpl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mpl, align 8
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %do.end.if.end10_crit_edge, label %if.then7

do.end.if.end10_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %rhp4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rhp4, align 4
  %lldi = getelementptr inbounds %struct.c4iw_dev, ptr %7, i32 0, i32 1, i32 8
  %8 = ptrtoint ptr %lldi to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lldi, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %max_mpl_len = getelementptr inbounds %struct.c4iw_mr, ptr %ib_mr, i32 0, i32 8
  %10 = ptrtoint ptr %max_mpl_len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_mpl_len, align 8
  %mpl_addr = getelementptr inbounds %struct.c4iw_mr, ptr %ib_mr, i32 0, i32 7
  %12 = ptrtoint ptr %mpl_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mpl_addr, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %11, ptr noundef nonnull %5, i32 noundef %13, i32 noundef 0) #9
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %do.end.if.end10_crit_edge
  %rdev11 = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %stag to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %stag, align 4
  %pbl_size = getelementptr inbounds %struct.c4iw_mr, ptr %ib_mr, i32 0, i32 5, i32 7
  %16 = ptrtoint ptr %pbl_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pbl_size, align 4
  %pbl_addr = getelementptr inbounds %struct.c4iw_mr, ptr %ib_mr, i32 0, i32 5, i32 6
  %18 = ptrtoint ptr %pbl_addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pbl_addr, align 8
  %dereg_skb = getelementptr inbounds %struct.c4iw_mr, ptr %ib_mr, i32 0, i32 3
  %20 = ptrtoint ptr %dereg_skb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dereg_skb, align 8
  %wr_waitp = getelementptr inbounds %struct.c4iw_mr, ptr %ib_mr, i32 0, i32 10
  %22 = ptrtoint ptr %wr_waitp to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %wr_waitp, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stag.addr.i)
  %24 = ptrtoint ptr %stag.addr.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %15, ptr %stag.addr.i, align 4
  %call.i78 = call fastcc i32 @write_tpt_entry(ptr noundef %rdev11, i32 noundef 1, ptr noundef nonnull %stag.addr.i, i8 noundef zeroext 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i64 noundef 0, i64 noundef 0, i32 noundef %17, i32 noundef %19, ptr noundef %21, ptr noundef %23) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stag.addr.i)
  %25 = ptrtoint ptr %pbl_size to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pbl_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool19.not = icmp eq i32 %26, 0
  br i1 %tobool19.not, label %if.end10.if.end27_crit_edge, label %if.then20

if.end10.if.end27_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then20:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %rhp4 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rhp4, align 4
  %rdev22 = getelementptr inbounds %struct.c4iw_dev, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %pbl_addr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pbl_addr, align 8
  %shl = shl i32 %26, 3
  tail call void @c4iw_pblpool_free(ptr noundef %rdev22, i32 noundef %30, i32 noundef %shl) #9
  br label %if.end27

if.end27:                                         ; preds = %if.then20, %if.end10.if.end27_crit_edge
  %kva = getelementptr inbounds %struct.c4iw_mr, ptr %ib_mr, i32 0, i32 4
  %31 = ptrtoint ptr %kva to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %kva, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %32)
  %tobool28.not = icmp eq i64 %32, 0
  br i1 %tobool28.not, label %if.end27.if.end31_crit_edge, label %if.then29

if.end27.if.end31_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.then29:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  %conv = trunc i64 %32 to i32
  %33 = inttoptr i32 %conv to ptr
  tail call void @kfree(ptr noundef %33) #9
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %if.end27.if.end31_crit_edge
  %umem = getelementptr inbounds %struct.c4iw_mr, ptr %ib_mr, i32 0, i32 1
  %34 = ptrtoint ptr %umem to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %umem, align 8
  tail call void @ib_umem_release(ptr noundef %35) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c4iw_dereg_mr.__UNIQUE_ID_ddebug686, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c4iw_dereg_mr, %if.then44)) #9
          to label %do.end47 [label %if.then44], !srcloc !112

if.then44:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @c4iw_dereg_mr.__UNIQUE_ID_ddebug686, ptr noundef nonnull @.str.13, i32 noundef %shr, ptr noundef %ib_mr) #9
  br label %do.end47

do.end47:                                         ; preds = %if.then44, %if.end31
  %36 = ptrtoint ptr %wr_waitp to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %wr_waitp, align 8
  tail call fastcc void @c4iw_put_wr_wait(ptr noundef %37)
  tail call void @kfree(ptr noundef %ib_mr) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @c4iw_invalidate_mr(ptr noundef %rhp, i32 noundef %rkey) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mrs = getelementptr inbounds %struct.c4iw_dev, ptr %rhp, i32 0, i32 5
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mrs) #9
  %shr = lshr i32 %rkey, 8
  %call6 = tail call ptr @xa_load(ptr noundef %mrs, i32 noundef %shr) #9
  %tobool.not = icmp eq ptr %call6, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %state = getelementptr inbounds %struct.c4iw_mr, ptr %call6, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %state, align 8
  %bf.clear = and i16 %bf.load, 32767
  store i16 %bf.clear, ptr %state, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mrs, i32 noundef %call2) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_load(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @c4iw_get_resource(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @write_adapter_mem(ptr noundef %rdev, i32 noundef %addr, i32 noundef %len, ptr noundef %data, ptr noundef %skb, ptr noundef %wr_waitp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lldi = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 8
  %ulptx_memwrite_dsgl = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 8, i32 34
  %0 = ptrtoint ptr %ulptx_memwrite_dsgl to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ulptx_memwrite_dsgl, align 4, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.out.sink.split_crit_edge, label %lor.lhs.false

entry.out.sink.split_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.sink.split

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, ptr @use_dsgl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool1.not = icmp eq i32 %2, 0
  br i1 %tobool1.not, label %lor.lhs.false.out.sink.split_crit_edge, label %if.end

lor.lhs.false.out.sink.split_crit_edge:           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.sink.split

if.end:                                           ; preds = %lor.lhs.false
  %3 = load i32, ptr @inline_threshold, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %len)
  %cmp.not = icmp ult i32 %3, %len
  br i1 %cmp.not, label %if.end4, label %if.end.out.sink.split_crit_edge

if.end.out.sink.split_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.sink.split

if.end4:                                          ; preds = %if.end
  %4 = ptrtoint ptr %lldi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lldi, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %call.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %data) #9
  br i1 %call.i.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %if.end4
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge, label %if.then.i.i, !prof !119

land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_map_single_attrs.exit.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %dev.i) #9
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44, i32 3
  %6 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %9, %if.end.i.i.i ], [ %7, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.34, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.35, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #9
  br label %dma_map_single_attrs.exit.i

if.end39.i.i:                                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @debug_dma_map_single(ptr noundef %dev.i, ptr noundef %data, i32 noundef %len) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %10 = load ptr, ptr @mem_map, align 4
  %11 = ptrtoint ptr %data to i32
  %sub.i.i = add i32 %11, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %10, i32 %shr.i.i
  %and.i.i = and i32 %11, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev.i, ptr noundef %add.ptr.i.i, i32 noundef %and.i.i, i32 noundef %len, i32 noundef 1, i32 noundef 0) #9
  br label %dma_map_single_attrs.exit.i

dma_map_single_attrs.exit.i:                      ; preds = %if.end39.i.i, %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call41.i.i, %if.end39.i.i ], [ -1, %dev_name.exit.i.i ], [ -1, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge ]
  %12 = ptrtoint ptr %lldi to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lldi, align 8
  %dev3.i = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev3.i, i32 noundef %retval.0.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i)
  %cmp.i.i = icmp eq i32 %retval.0.i.i, -1
  br i1 %cmp.i.i, label %dma_map_single_attrs.exit.i.if.then7_crit_edge, label %while.cond.preheader.i

dma_map_single_attrs.exit.i.if.then7_crit_edge:   ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then7

while.cond.preheader.i:                           ; preds = %dma_map_single_attrs.exit.i
  %14 = load i32, ptr @inline_threshold, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %len)
  %cmp73.i = icmp ult i32 %14, %len
  br i1 %cmp73.i, label %while.body.lr.ph.i, label %while.cond.preheader.i.if.then20.i_crit_edge

while.cond.preheader.i.if.then20.i_crit_edge:     ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then20.i

while.body.lr.ph.i:                               ; preds = %while.cond.preheader.i
  %tobool1.not.i.i = icmp eq ptr %skb, null
  %rxq_ids.i.i = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 8, i32 6
  br label %while.body.i

while.body.i:                                     ; preds = %if.end17.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %daddr.077.i = phi i32 [ %retval.0.i.i, %while.body.lr.ph.i ], [ %add18.i, %if.end17.i.while.body.i_crit_edge ]
  %remain.076.i = phi i32 [ %len, %while.body.lr.ph.i ], [ %sub.i, %if.end17.i.while.body.i_crit_edge ]
  %addr.addr.075.i = phi i32 [ %addr, %while.body.lr.ph.i ], [ %add.i, %if.end17.i.while.body.i_crit_edge ]
  %data.addr.074.i = phi ptr [ %data, %while.body.lr.ph.i ], [ %add.ptr.i, %if.end17.i.while.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %remain.076.i)
  %cmp5.i = icmp ult i32 %remain.076.i, 1024
  %and.i = and i32 %remain.076.i, -33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool7.not.i = icmp eq i32 %and.i, 0
  %and9.i = and i32 %remain.076.i, -32
  %spec.select58.i = select i1 %tobool7.not.i, i32 %remain.076.i, i32 %and9.i
  %dmalen.0.i = select i1 %cmp5.i, i32 %spec.select58.i, i32 1024
  %sub.i = sub i32 %remain.076.i, %dmalen.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %tobool13.not.i = icmp eq i32 %sub.i, 0
  %spec.select.i = select i1 %tobool13.not.i, ptr %wr_waitp, ptr null
  %and.i59.i = and i32 %addr.addr.075.i, 134217727
  %tobool.not.i.i = icmp eq ptr %spec.select.i, null
  br i1 %tobool.not.i.i, label %while.body.i.if.end.i.i_crit_edge, label %if.then.i60.i

while.body.i.if.end.i.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then.i60.i:                                    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %ret.i.i.i = getelementptr inbounds %struct.c4iw_wr_wait, ptr %spec.select.i, i32 0, i32 1
  %15 = ptrtoint ptr %ret.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %ret.i.i.i, align 4
  %16 = ptrtoint ptr %spec.select.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %spec.select.i, align 4
  %wait.i.i.i.i = getelementptr inbounds %struct.completion, ptr %spec.select.i, i32 0, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i.i.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @init_completion.__key) #9
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i60.i, %while.body.i.if.end.i.i_crit_edge
  br i1 %tobool1.not.i.i, label %if.then2.i.i, label %if.end.i.i.if.end7.i.i_crit_edge

if.end.i.i.if.end7.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef 48, i32 noundef 36032, i32 noundef 0, i32 noundef -1) #9
  %tobool4.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool4.not.i.i, label %if.then2.i.i._c4iw_write_mem_dma.exit_crit_edge, label %if.then2.i.i.if.end7.i.i_crit_edge

if.then2.i.i.if.end7.i.i_crit_edge:               ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i.i

if.then2.i.i._c4iw_write_mem_dma.exit_crit_edge:  ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %_c4iw_write_mem_dma.exit

if.end7.i.i:                                      ; preds = %if.then2.i.i.if.end7.i.i_crit_edge, %if.end.i.i.if.end7.i.i_crit_edge
  %skb.addr.0.i.i = phi ptr [ %skb, %if.end.i.i.if.end7.i.i_crit_edge ], [ %call.i.i.i, %if.then2.i.i.if.end7.i.i_crit_edge ]
  %queue_mapping1.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i.i, i32 0, i32 10
  %17 = ptrtoint ptr %queue_mapping1.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %queue_mapping1.i.i.i.i, align 8
  %data_len.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i.i, i32 0, i32 7
  %18 = ptrtoint ptr %data_len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %data_len.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.i.not.i.i.i.i = icmp eq i32 %19, 0
  br i1 %tobool.i.not.i.i.i.i, label %__skb_put_zero.exit.i.i, label %do.body3.i.i.i.i, !prof !119

do.body3.i.i.i.i:                                 ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #9, !srcloc !122
  unreachable

__skb_put_zero.exit.i.i:                          ; preds = %if.end7.i.i
  %tail.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i.i, i32 0, i32 16
  %20 = ptrtoint ptr %tail.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tail.i.i.i.i.i, align 8
  %add.ptr.i.i.i.i = getelementptr i8, ptr %21, i32 48
  store ptr %add.ptr.i.i.i.i, ptr %tail.i.i.i.i.i, align 8
  %len9.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i.i, i32 0, i32 6
  %22 = ptrtoint ptr %len9.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len9.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %23, 48
  store i32 %add.i.i.i.i, ptr %len9.i.i.i.i, align 4
  %24 = getelementptr inbounds i8, ptr %21, i32 16
  %25 = call ptr @memset(ptr %24, i32 0, i32 32)
  %wr_mid.i.i = getelementptr inbounds %struct.work_request_hdr, ptr %21, i32 0, i32 1
  %wr_lo.i.i = getelementptr inbounds %struct.work_request_hdr, ptr %21, i32 0, i32 2
  %or17.i.i = select i1 %tobool.not.i.i, i32 67108864, i32 69206016
  %26 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %or17.i.i, ptr %21, align 8
  %27 = ptrtoint ptr %spec.select.i to i32
  %conv21.i.i = zext i32 %27 to i64
  %cond22.i.i = select i1 %tobool.not.i.i, i64 0, i64 %conv21.i.i
  %28 = ptrtoint ptr %wr_lo.i.i to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %cond22.i.i, ptr %wr_lo.i.i, align 8
  %29 = ptrtoint ptr %wr_mid.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 3, ptr %wr_mid.i.i, align 4
  %30 = ptrtoint ptr %rxq_ids.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rxq_ids.i.i, align 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %31, align 2
  %conv32.i.i = zext i16 %33 to i32
  %shl33.i.i = shl nuw nsw i32 %conv32.i.i, 4
  %or34.i.i = or i32 %shl33.i.i, 54525952
  %34 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %or34.i.i, ptr %24, align 8
  %shr.i61.i = lshr i32 %dmalen.0.i, 5
  %dlen.i.i = getelementptr inbounds %struct.ulp_mem_io, ptr %21, i32 0, i32 3
  %35 = ptrtoint ptr %dlen.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %shr.i61.i, ptr %dlen.i.i, align 8
  %len16.i.i = getelementptr inbounds %struct.ulp_mem_io, ptr %21, i32 0, i32 2
  %36 = ptrtoint ptr %len16.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 2, ptr %len16.i.i, align 4
  %lock_addr.i.i = getelementptr inbounds %struct.ulp_mem_io, ptr %21, i32 0, i32 4
  %37 = ptrtoint ptr %lock_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %and.i59.i, ptr %lock_addr.i.i, align 4
  %add.ptr.i62.i = getelementptr %struct.ulp_mem_io, ptr %21, i32 1
  %38 = ptrtoint ptr %add.ptr.i62.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -2113929215, ptr %add.ptr.i62.i, align 8
  %len0.i.i = getelementptr %struct.ulp_mem_io, ptr %21, i32 1, i32 0, i32 1
  %39 = ptrtoint ptr %len0.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %dmalen.0.i, ptr %len0.i.i, align 4
  %conv42.i.i = zext i32 %daddr.077.i to i64
  %addr0.i.i = getelementptr %struct.ulp_mem_io, ptr %21, i32 1, i32 0, i32 2
  %40 = ptrtoint ptr %addr0.i.i to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %conv42.i.i, ptr %addr0.i.i, align 8
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then44.i.i

if.then44.i.i:                                    ; preds = %__skb_put_zero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call45.i.i = tail call fastcc i32 @c4iw_ref_send_wait(ptr noundef %rdev, ptr noundef nonnull %skb.addr.0.i.i, ptr noundef nonnull %spec.select.i, ptr noundef nonnull @__func__._c4iw_write_mem_dma_aligned) #9
  br label %_c4iw_write_mem_dma_aligned.exit.i

if.else.i.i:                                      ; preds = %__skb_put_zero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call46.i.i = tail call i32 @c4iw_ofld_send(ptr noundef %rdev, ptr noundef nonnull %skb.addr.0.i.i) #9
  br label %_c4iw_write_mem_dma_aligned.exit.i

_c4iw_write_mem_dma_aligned.exit.i:               ; preds = %if.else.i.i, %if.then44.i.i
  %retval.0.i63.i = phi i32 [ %call45.i.i, %if.then44.i.i ], [ %call46.i.i, %if.else.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i63.i)
  %tobool15.not.i = icmp eq i32 %retval.0.i63.i, 0
  br i1 %tobool15.not.i, label %if.end17.i, label %_c4iw_write_mem_dma_aligned.exit.i._c4iw_write_mem_dma.exit_crit_edge

_c4iw_write_mem_dma_aligned.exit.i._c4iw_write_mem_dma.exit_crit_edge: ; preds = %_c4iw_write_mem_dma_aligned.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %_c4iw_write_mem_dma.exit

if.end17.i:                                       ; preds = %_c4iw_write_mem_dma_aligned.exit.i
  %add.i = add i32 %shr.i61.i, %addr.addr.075.i
  %add.ptr.i = getelementptr i8, ptr %data.addr.074.i, i32 %dmalen.0.i
  %add18.i = add i32 %dmalen.0.i, %daddr.077.i
  %41 = load i32, ptr @inline_threshold, align 4
  %cmp.i = icmp ugt i32 %sub.i, %41
  br i1 %cmp.i, label %if.end17.i.while.body.i_crit_edge, label %while.end.i

if.end17.i.while.body.i_crit_edge:                ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.end.i:                                      ; preds = %if.end17.i
  br i1 %tobool13.not.i, label %while.end.i._c4iw_write_mem_dma.exit_crit_edge, label %while.end.i.if.then20.i_crit_edge

while.end.i.if.then20.i_crit_edge:                ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then20.i

while.end.i._c4iw_write_mem_dma.exit_crit_edge:   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %_c4iw_write_mem_dma.exit

if.then20.i:                                      ; preds = %while.end.i.if.then20.i_crit_edge, %while.cond.preheader.i.if.then20.i_crit_edge
  %remain.0.lcssa.i49 = phi i32 [ %sub.i, %while.end.i.if.then20.i_crit_edge ], [ %len, %while.cond.preheader.i.if.then20.i_crit_edge ]
  %addr.addr.0.lcssa.i48 = phi i32 [ %add.i, %while.end.i.if.then20.i_crit_edge ], [ %addr, %while.cond.preheader.i.if.then20.i_crit_edge ]
  %data.addr.0.lcssa.i47 = phi ptr [ %add.ptr.i, %while.end.i.if.then20.i_crit_edge ], [ %data, %while.cond.preheader.i.if.then20.i_crit_edge ]
  %call21.i = tail call fastcc i32 @_c4iw_write_mem_inline(ptr noundef %rdev, i32 noundef %addr.addr.0.lcssa.i48, i32 noundef %remain.0.lcssa.i49, ptr noundef %data.addr.0.lcssa.i47, ptr noundef %skb, ptr noundef %wr_waitp) #9
  br label %_c4iw_write_mem_dma.exit

_c4iw_write_mem_dma.exit:                         ; preds = %if.then20.i, %while.end.i._c4iw_write_mem_dma.exit_crit_edge, %_c4iw_write_mem_dma_aligned.exit.i._c4iw_write_mem_dma.exit_crit_edge, %if.then2.i.i._c4iw_write_mem_dma.exit_crit_edge
  %ret.1.i = phi i32 [ %call21.i, %if.then20.i ], [ 0, %while.end.i._c4iw_write_mem_dma.exit_crit_edge ], [ %retval.0.i63.i, %_c4iw_write_mem_dma_aligned.exit.i._c4iw_write_mem_dma.exit_crit_edge ], [ -12, %if.then2.i.i._c4iw_write_mem_dma.exit_crit_edge ]
  %42 = ptrtoint ptr %lldi to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %lldi, align 8
  %dev25.i = getelementptr inbounds %struct.pci_dev, ptr %43, i32 0, i32 44
  tail call void @dma_unmap_page_attrs(ptr noundef %dev25.i, i32 noundef %retval.0.i.i, i32 noundef %len, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i)
  %tobool6.not = icmp eq i32 %ret.1.i, 0
  br i1 %tobool6.not, label %_c4iw_write_mem_dma.exit.out_crit_edge, label %_c4iw_write_mem_dma.exit.if.then7_crit_edge

_c4iw_write_mem_dma.exit.if.then7_crit_edge:      ; preds = %_c4iw_write_mem_dma.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then7

_c4iw_write_mem_dma.exit.out_crit_edge:           ; preds = %_c4iw_write_mem_dma.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then7:                                         ; preds = %_c4iw_write_mem_dma.exit.if.then7_crit_edge, %dma_map_single_attrs.exit.i.if.then7_crit_edge
  %call8 = tail call i32 @___ratelimit(ptr noundef nonnull @write_adapter_mem._rs, ptr noundef nonnull @__func__.write_adapter_mem) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then7.out.sink.split_crit_edge, label %do.end

if.then7.out.sink.split_crit_edge:                ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.sink.split

do.end:                                           ; preds = %if.then7
  %44 = ptrtoint ptr %lldi to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %lldi, align 8
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %45, i32 0, i32 44, i32 3
  %46 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i39 = icmp eq ptr %47, null
  br i1 %tobool.not.i.i39, label %if.end.i.i41, label %do.end.pci_name.exit_crit_edge

do.end.pci_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %pci_name.exit

if.end.i.i41:                                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i40 = getelementptr inbounds %struct.pci_dev, ptr %45, i32 0, i32 44
  %48 = ptrtoint ptr %dev.i40 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev.i40, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i41, %do.end.pci_name.exit_crit_edge
  %retval.0.i.i42 = phi ptr [ %49, %if.end.i.i41 ], [ %47, %do.end.pci_name.exit_crit_edge ]
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %retval.0.i.i42) #13
  br label %out.sink.split

out.sink.split:                                   ; preds = %pci_name.exit, %if.then7.out.sink.split_crit_edge, %if.end.out.sink.split_crit_edge, %lor.lhs.false.out.sink.split_crit_edge, %entry.out.sink.split_crit_edge
  %call15 = tail call fastcc i32 @_c4iw_write_mem_inline(ptr noundef %rdev, i32 noundef %addr, i32 noundef %len, ptr noundef %data, ptr noundef %skb, ptr noundef %wr_waitp)
  br label %out

out:                                              ; preds = %out.sink.split, %_c4iw_write_mem_dma.exit.out_crit_edge
  %ret.0 = phi i32 [ 0, %_c4iw_write_mem_dma.exit.out_crit_edge ], [ %call15, %out.sink.split ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @c4iw_put_resource(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_c4iw_write_mem_inline(ptr noundef %rdev, i32 noundef %addr, i32 noundef %len, ptr noundef readonly %data, ptr noundef %skb, ptr noundef %wr_waitp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %addr, 134217727
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_c4iw_write_mem_inline.__UNIQUE_ID_ddebug678, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_c4iw_write_mem_inline, %if.then6)) #9
          to label %do.end [label %if.then6], !srcloc !112

if.then6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @_c4iw_write_mem_inline.__UNIQUE_ID_ddebug678, ptr noundef nonnull @.str.22, i32 noundef %and, i32 noundef %len) #9
  br label %do.end

do.end:                                           ; preds = %if.then6, %entry
  %sub = add i32 %len, 95
  %ret.i = getelementptr inbounds %struct.c4iw_wr_wait, ptr %wr_waitp, i32 0, i32 1
  %0 = ptrtoint ptr %ret.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %ret.i, align 4
  %1 = ptrtoint ptr %wr_waitp to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %wr_waitp, align 4
  %wait.i.i = getelementptr inbounds %struct.completion, ptr %wr_waitp, i32 0, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @init_completion.__key) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %sub)
  %2 = icmp ult i32 %sub, 96
  br i1 %2, label %do.end.cleanup_crit_edge, label %for.body.lr.ph

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %do.end
  %div = udiv i32 %sub, 96
  %sub43 = add nsw i32 %div, -1
  %3 = ptrtoint ptr %wr_waitp to i32
  %conv49 = zext i32 %3 to i64
  %tobool86.not = icmp eq ptr %data, null
  br label %for.body

for.body:                                         ; preds = %if.end106.for.body_crit_edge, %for.body.lr.ph
  %len.addr.0188 = phi i32 [ %len, %for.body.lr.ph ], [ %sub107, %if.end106.for.body_crit_edge ]
  %skb.addr.0187 = phi ptr [ %skb, %for.body.lr.ph ], [ null, %if.end106.for.body_crit_edge ]
  %i.0185 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end106.for.body_crit_edge ]
  %4 = tail call i32 @llvm.umin.i32(i32 %len.addr.0188, i32 96)
  %div16179.lhs.trunc = add nuw nsw i32 %4, 31
  %div16179180183 = lshr i32 %div16179.lhs.trunc, 5
  %mul = and i32 %div16179.lhs.trunc, 224
  %5 = add nuw nsw i32 %mul, 55
  %conv22 = and i32 %5, 240
  %tobool23.not = icmp eq ptr %skb.addr.0187, null
  br i1 %tobool23.not, label %if.then24, label %for.body.if.end30_crit_edge

for.body.if.end30_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.then24:                                        ; preds = %for.body
  %call.i = tail call ptr @__alloc_skb(i32 noundef %conv22, i32 noundef 36032, i32 noundef 0, i32 noundef -1) #9
  %tobool27.not = icmp eq ptr %call.i, null
  br i1 %tobool27.not, label %if.then24.cleanup_crit_edge, label %if.then24.if.end30_crit_edge

if.then24.if.end30_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.then24.cleanup_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end30:                                         ; preds = %if.then24.if.end30_crit_edge, %for.body.if.end30_crit_edge
  %skb.addr.1 = phi ptr [ %call.i, %if.then24.if.end30_crit_edge ], [ %skb.addr.0187, %for.body.if.end30_crit_edge ]
  %queue_mapping1.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1, i32 0, i32 10
  %6 = ptrtoint ptr %queue_mapping1.i.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 1, ptr %queue_mapping1.i.i, align 8
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1, i32 0, i32 7
  %7 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not.i.i = icmp eq i32 %8, 0
  br i1 %tobool.i.not.i.i, label %__skb_put_zero.exit, label %do.body3.i.i, !prof !119

do.body3.i.i:                                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #9, !srcloc !122
  unreachable

__skb_put_zero.exit:                              ; preds = %if.end30
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1, i32 0, i32 16
  %9 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 %conv22
  store ptr %add.ptr.i.i, ptr %tail.i.i.i, align 8
  %len9.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1, i32 0, i32 6
  %11 = ptrtoint ptr %len9.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len9.i.i, align 4
  %add.i.i = add i32 %12, %conv22
  store i32 %add.i.i, ptr %len9.i.i, align 4
  %13 = call ptr @memset(ptr %10, i32 0, i32 %conv22)
  %div37176 = lshr exact i32 %conv22, 4
  %wr_mid = getelementptr inbounds %struct.work_request_hdr, ptr %10, i32 0, i32 1
  %wr_lo = getelementptr inbounds %struct.work_request_hdr, ptr %10, i32 0, i32 2
  %14 = ptrtoint ptr %wr_lo to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 0, ptr %wr_lo, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0185, i32 %sub43)
  %cmp44 = icmp eq i32 %i.0185, %sub43
  br i1 %cmp44, label %if.then46, label %if.else52

if.then46:                                        ; preds = %__skb_put_zero.exit
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 69206016, ptr %10, align 8
  %16 = ptrtoint ptr %wr_lo to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %conv49, ptr %wr_lo, align 8
  br label %if.end55

if.else52:                                        ; preds = %__skb_put_zero.exit
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 67108864, ptr %10, align 8
  br label %if.end55

if.end55:                                         ; preds = %if.else52, %if.then46
  %18 = ptrtoint ptr %wr_mid to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %div37176, ptr %wr_mid, align 4
  %cmd63 = getelementptr inbounds %struct.ulp_mem_io, ptr %10, i32 0, i32 1
  %19 = ptrtoint ptr %cmd63 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 58720256, ptr %cmd63, align 8
  %dlen = getelementptr inbounds %struct.ulp_mem_io, ptr %10, i32 0, i32 3
  %20 = ptrtoint ptr %dlen to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %div16179180183, ptr %dlen, align 8
  %sub71 = add nsw i32 %conv22, -1
  %div72177 = lshr i32 %sub71, 4
  %len16 = getelementptr inbounds %struct.ulp_mem_io, ptr %10, i32 0, i32 2
  %21 = ptrtoint ptr %len16 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %div72177, ptr %len16, align 4
  %mul73 = mul nuw nsw i32 %i.0185, 3
  %add74 = add nuw nsw i32 %mul73, %and
  %lock_addr = getelementptr inbounds %struct.ulp_mem_io, ptr %10, i32 0, i32 4
  %22 = ptrtoint ptr %lock_addr to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add74, ptr %lock_addr, align 4
  %add.ptr = getelementptr %struct.ulp_mem_io, ptr %10, i32 1
  %23 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -2130706432, ptr %add.ptr, align 4
  %len82 = getelementptr %struct.ulp_mem_io, ptr %10, i32 1, i32 0, i32 1
  %24 = ptrtoint ptr %len82 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %mul, ptr %len82, align 4
  %add.ptr83 = getelementptr %struct.ulp_mem_io, ptr %10, i32 1, i32 0, i32 2
  br i1 %tobool86.not, label %if.else88, label %if.then87

if.then87:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  %mul84 = mul nuw i32 %i.0185, 96
  %add.ptr85 = getelementptr i8, ptr %data, i32 %mul84
  %25 = call ptr @memcpy(ptr %add.ptr83, ptr %add.ptr85, i32 %4)
  br label %if.end89

if.else88:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  %26 = call ptr @memset(ptr %add.ptr83, i32 0, i32 %4)
  br label %if.end89

if.end89:                                         ; preds = %if.else88, %if.then87
  %rem181182 = and i32 %4, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem181182)
  %tobool90.not = icmp eq i32 %rem181182, 0
  br i1 %tobool90.not, label %if.end89.if.end95_crit_edge, label %if.then91

if.end89.if.end95_crit_edge:                      ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end95

if.then91:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr92 = getelementptr i8, ptr %add.ptr83, i32 %4
  %sub94 = sub nuw nsw i32 32, %rem181182
  %27 = call ptr @memset(ptr %add.ptr92, i32 0, i32 %sub94)
  br label %if.end95

if.end95:                                         ; preds = %if.then91, %if.end89.if.end95_crit_edge
  br i1 %cmp44, label %if.then99, label %if.else101

if.then99:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #11
  %call100 = tail call fastcc i32 @c4iw_ref_send_wait(ptr noundef %rdev, ptr noundef nonnull %skb.addr.1, ptr noundef %wr_waitp, ptr noundef nonnull @.str.20)
  br label %if.end103

if.else101:                                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #11
  %call102 = tail call i32 @c4iw_ofld_send(ptr noundef %rdev, ptr noundef nonnull %skb.addr.1) #9
  br label %if.end103

if.end103:                                        ; preds = %if.else101, %if.then99
  %ret.1 = phi i32 [ %call100, %if.then99 ], [ %call102, %if.else101 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool104.not = icmp eq i32 %ret.1, 0
  br i1 %tobool104.not, label %if.end106, label %if.end103.cleanup_crit_edge

if.end103.cleanup_crit_edge:                      ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end106:                                        ; preds = %if.end103
  %sub107 = add i32 %len.addr.0188, -96
  %inc = add nuw nsw i32 %i.0185, 1
  %exitcond.not = icmp eq i32 %inc, %div
  br i1 %exitcond.not, label %if.end106.cleanup_crit_edge, label %if.end106.for.body_crit_edge

if.end106.for.body_crit_edge:                     ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end106.cleanup_crit_edge:                      ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %if.end106.cleanup_crit_edge, %if.end103.cleanup_crit_edge, %if.then24.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end.cleanup_crit_edge ], [ 0, %if.end106.cleanup_crit_edge ], [ %ret.1, %if.end103.cleanup_crit_edge ], [ -12, %if.then24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @c4iw_ref_send_wait(ptr noundef %rdev, ptr noundef %skb, ptr noundef %wr_waitp, ptr noundef %func) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c4iw_ref_send_wait.__UNIQUE_ID_ddebug669, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c4iw_ref_send_wait, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !112

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @c4iw_ref_send_wait.__UNIQUE_ID_ddebug669, ptr noundef nonnull @.str.26, ptr noundef %func, ptr noundef %wr_waitp, i32 noundef 0, i32 noundef 0) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c4iw_get_wr_wait.__UNIQUE_ID_ddebug667, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c4iw_ref_send_wait, %if.then.i)) #9
          to label %do.end.i [label %if.then.i], !srcloc !112

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %kref.i = getelementptr inbounds %struct.c4iw_wr_wait, ptr %wr_waitp, i32 0, i32 2
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %kref.i, i32 noundef 4) #9
  %0 = ptrtoint ptr %kref.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %kref.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @c4iw_get_wr_wait.__UNIQUE_ID_ddebug667, ptr noundef nonnull @.str.29, ptr noundef %wr_waitp, i32 noundef %1) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %do.end
  %kref4.i = getelementptr inbounds %struct.c4iw_wr_wait, ptr %wr_waitp, i32 0, i32 2
  %call.i.i.i.i39.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %kref4.i, i32 noundef 4) #9
  %2 = ptrtoint ptr %kref4.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %kref4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp eq i32 %3, 0
  br i1 %cmp.i, label %do.end20.i, label %do.end.i.if.end26.i_crit_edge, !prof !116

do.end.i.if.end26.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26.i

do.end20.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 230, i32 noundef 9, ptr noundef null) #9
  br label %if.end26.i

if.end26.i:                                       ; preds = %do.end20.i, %do.end.i.if.end26.i_crit_edge
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref4.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %kref4.i, i32 1, i32 3, i32 1) #9
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref4.i, ptr %kref4.i, i32 1, ptr elementtype(i32) %kref4.i) #9, !srcloc !123
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end26.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !116

if.end26.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end26.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %5 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %.not.i.i.i.i.i = icmp sgt i32 %5, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.c4iw_get_wr_wait.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !119

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.c4iw_get_wr_wait.exit_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %c4iw_get_wr_wait.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end26.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end26.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref4.i, i32 noundef %.sink.i.i.i.i.i) #9
  br label %c4iw_get_wr_wait.exit

c4iw_get_wr_wait.exit:                            ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.c4iw_get_wr_wait.exit_crit_edge
  %call3 = tail call i32 @c4iw_ofld_send(ptr noundef %rdev, ptr noundef %skb) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %c4iw_get_wr_wait.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @c4iw_put_wr_wait(ptr noundef %wr_waitp)
  br label %cleanup

if.end6:                                          ; preds = %c4iw_get_wr_wait.exit
  %flags.i.i = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 7
  %6 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i1

if.then.i1:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %ret1.i = getelementptr inbounds %struct.c4iw_wr_wait, ptr %wr_waitp, i32 0, i32 1
  %8 = ptrtoint ptr %ret1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -5, ptr %ret1.i, align 4
  br label %c4iw_wait_for_reply.exit

if.end.i:                                         ; preds = %if.end6
  %call2.i = tail call i32 @wait_for_completion_timeout(ptr noundef %wr_waitp, i32 noundef 6000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i2, label %if.end8.i

do.end.i2:                                        ; preds = %if.end.i
  %lldi.i = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 8
  %9 = ptrtoint ptr %lldi.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lldi.i, align 8
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44, i32 3
  %11 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %do.end.i2.pci_name.exit.i_crit_edge

do.end.i2.pci_name.exit.i_crit_edge:              ; preds = %do.end.i2
  call void @__sanitizer_cov_trace_pc() #11
  br label %pci_name.exit.i

if.end.i.i.i:                                     ; preds = %do.end.i2
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  %13 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i.i, align 4
  br label %pci_name.exit.i

pci_name.exit.i:                                  ; preds = %if.end.i.i.i, %do.end.i2.pci_name.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %14, %if.end.i.i.i ], [ %12, %do.end.i2.pci_name.exit.i_crit_edge ]
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %func, ptr noundef %retval.0.i.i.i, i32 noundef 0, i32 noundef 0) #13
  %15 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags.i.i, align 4
  %or.i = or i32 %16, 1
  store i32 %or.i, ptr %flags.i.i, align 4
  %ret7.i = getelementptr inbounds %struct.c4iw_wr_wait, ptr %wr_waitp, i32 0, i32 1
  %17 = ptrtoint ptr %ret7.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -5, ptr %ret7.i, align 4
  br label %c4iw_wait_for_reply.exit

if.end8.i:                                        ; preds = %if.end.i
  %ret9.i = getelementptr inbounds %struct.c4iw_wr_wait, ptr %wr_waitp, i32 0, i32 1
  %18 = ptrtoint ptr %ret9.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ret9.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool10.not.i = icmp eq i32 %19, 0
  br i1 %tobool10.not.i, label %if.end8.i.c4iw_wait_for_reply.exit_crit_edge, label %do.body12.i

if.end8.i.c4iw_wait_for_reply.exit_crit_edge:     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %c4iw_wait_for_reply.exit

do.body12.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c4iw_wait_for_reply.__UNIQUE_ID_ddebug668, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c4iw_ref_send_wait, %if.then18.i)) #9
          to label %c4iw_wait_for_reply.exit [label %if.then18.i], !srcloc !112

if.then18.i:                                      ; preds = %do.body12.i
  %lldi19.i = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 8
  %20 = ptrtoint ptr %lldi19.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %lldi19.i, align 8
  %init_name.i.i1.i = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44, i32 3
  %22 = ptrtoint ptr %init_name.i.i1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %init_name.i.i1.i, align 8
  %tobool.not.i.i2.i = icmp eq ptr %23, null
  br i1 %tobool.not.i.i2.i, label %if.end.i.i4.i, label %if.then18.i.pci_name.exit6.i_crit_edge

if.then18.i.pci_name.exit6.i_crit_edge:           ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pci_name.exit6.i

if.end.i.i4.i:                                    ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i3.i = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  %24 = ptrtoint ptr %dev.i3.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i3.i, align 4
  br label %pci_name.exit6.i

pci_name.exit6.i:                                 ; preds = %if.end.i.i4.i, %if.then18.i.pci_name.exit6.i_crit_edge
  %retval.0.i.i5.i = phi ptr [ %25, %if.end.i.i4.i ], [ %23, %if.then18.i.pci_name.exit6.i_crit_edge ]
  %26 = ptrtoint ptr %ret9.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ret9.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @c4iw_wait_for_reply.__UNIQUE_ID_ddebug668, ptr noundef nonnull @.str.33, ptr noundef %retval.0.i.i5.i, i32 noundef %27, i32 noundef 0, i32 noundef 0) #9
  br label %c4iw_wait_for_reply.exit

c4iw_wait_for_reply.exit:                         ; preds = %pci_name.exit6.i, %do.body12.i, %if.end8.i.c4iw_wait_for_reply.exit_crit_edge, %pci_name.exit.i, %if.then.i1
  %ret27.i = getelementptr inbounds %struct.c4iw_wr_wait, ptr %wr_waitp, i32 0, i32 1
  %28 = ptrtoint ptr %ret27.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ret27.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %c4iw_wait_for_reply.exit, %if.then5
  %retval.0 = phi i32 [ %call3, %if.then5 ], [ %29, %c4iw_wait_for_reply.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @c4iw_ofld_send(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_c4iw_free_wr_wait(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @c4iw_pblpool_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rdma_block_iter_start(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__xa_insert(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__xa_erase(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !10, !12, !14, !15, !16, !17, !18, !19, !21, !22, !24, !25, !26, !27, !29, !30, !31, !32, !34, !35, !36, !37, !38, !40, !42, !43, !45, !47, !48, !49, !50, !52, !53, !54, !55, !56, !57, !59, !60, !61, !62, !64, !65, !66, !67, !68, !70, !71, !72, !73, !75, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !90, !91, !92, !93, !95, !96, !97, !98, !100, !101, !102}
!llvm.module.flags = !{!103, !104, !105, !106, !107, !108, !109, !110}
!llvm.ident = !{!111}

!0 = !{ptr @use_dsgl, !1, !"use_dsgl", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/hw/cxgb4/mem.c", i32 41, i32 5}
!2 = !{ptr @__param_use_dsgl, !3, !"__param_use_dsgl", i1 false, i1 false}
!3 = !{!"../drivers/infiniband/hw/cxgb4/mem.c", i32 42, i32 1}
!4 = !{ptr @__UNIQUE_ID_use_dsgltype674, !3, !"__UNIQUE_ID_use_dsgltype674", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_use_dsgl675, !6, !"__UNIQUE_ID_use_dsgl675", i1 false, i1 false}
!6 = !{!"../drivers/infiniband/hw/cxgb4/mem.c", i32 43, i32 1}
!7 = !{ptr @__param_inline_threshold, !8, !"__param_inline_threshold", i1 false, i1 false}
!8 = !{!"../drivers/infiniband/hw/cxgb4/mem.c", i32 51, i32 1}
!9 = !{ptr @__UNIQUE_ID_inline_thresholdtype676, !8, !"__UNIQUE_ID_inline_thresholdtype676", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_inline_threshold677, !11, !"__UNIQUE_ID_inline_threshold677", i1 false, i1 false}
!11 = !{!"../drivers/infiniband/hw/cxgb4/mem.c", i32 52, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/infiniband/hw/cxgb4/mem.c", i32 438, i32 2}
!14 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @c4iw_get_dma_mr.__UNIQUE_ID_ddebug682, !13, !"__UNIQUE_ID_ddebug682", i1 false, i1 false}
!18 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/infiniband/hw/cxgb4/mem.c", i32 502, i32 2}
!21 = !{ptr @c4iw_reg_user_mr.__UNIQUE_ID_ddebug683, !20, !"__UNIQUE_ID_ddebug683", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/infiniband/hw/cxgb4/mem.c", i32 659, i32 2}
!24 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @c4iw_alloc_mr.__UNIQUE_ID_ddebug684, !23, !"__UNIQUE_ID_ddebug684", i1 false, i1 false}
!26 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/infiniband/hw/cxgb4/mem.c", i32 706, i32 2}
!29 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @c4iw_dereg_mr.__UNIQUE_ID_ddebug685, !28, !"__UNIQUE_ID_ddebug685", i1 false, i1 false}
!31 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/infiniband/hw/cxgb4/mem.c", i32 723, i32 2}
!34 = !{ptr @c4iw_dereg_mr.__UNIQUE_ID_ddebug686, !33, !"__UNIQUE_ID_ddebug686", i1 false, i1 false}
!35 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @__param_str_use_dsgl, !3, !"__param_str_use_dsgl", i1 false, i1 false}
!37 = !{ptr @__param_str_inline_threshold, !8, !"__param_str_inline_threshold", i1 false, i1 false}
!38 = !{ptr @inline_threshold, !39, !"inline_threshold", i1 false, i1 false}
!39 = !{!"../drivers/infiniband/hw/cxgb4/mem.c", i32 50, i32 12}
!40 = !{ptr @init_completion.__key, !41, !"__key", i1 false, i1 false}
!41 = !{!"../include/linux/completion.h", i32 87, i32 2}
!42 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @write_tpt_entry.key, !44, !"key", i1 false, i1 false}
!44 = !{!"../drivers/infiniband/hw/cxgb4/mem.c", i32 280, i32 18}
!45 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/infiniband/hw/cxgb4/mem.c", i32 308, i32 2}
!47 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @write_tpt_entry.__UNIQUE_ID_ddebug679, !46, !"__UNIQUE_ID_ddebug679", i1 false, i1 false}
!49 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/infiniband/hw/cxgb4/mem.c", i32 254, i32 3}
!52 = !{ptr @write_adapter_mem._rs, !51, !"_rs", i1 false, i1 false}
!53 = !{ptr @__func__.write_adapter_mem, !51, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @write_adapter_mem._entry, !51, !"_entry", i1 false, i1 false}
!56 = !{ptr @write_adapter_mem._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.20, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/infiniband/hw/cxgb4/mem.c", i32 126, i32 2}
!59 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @_c4iw_write_mem_inline.__UNIQUE_ID_ddebug678, !58, !"__UNIQUE_ID_ddebug678", i1 false, i1 false}
!61 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.23, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/infiniband/hw/cxgb4/iw_cxgb4.h", i32 296, i32 2}
!64 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @c4iw_ref_send_wait.__UNIQUE_ID_ddebug669, !63, !"__UNIQUE_ID_ddebug669", i1 false, i1 false}
!67 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/infiniband/hw/cxgb4/iw_cxgb4.h", i32 228, i32 2}
!70 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @c4iw_get_wr_wait.__UNIQUE_ID_ddebug667, !69, !"__UNIQUE_ID_ddebug667", i1 false, i1 false}
!72 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.30, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/infiniband/hw/cxgb4/iw_cxgb4.h", i32 273, i32 3}
!75 = !{ptr @.str.31, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @c4iw_wait_for_reply._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @c4iw_wait_for_reply._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.32, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/infiniband/hw/cxgb4/iw_cxgb4.h", i32 280, i32 3}
!80 = !{ptr @c4iw_wait_for_reply.__UNIQUE_ID_ddebug668, !79, !"__UNIQUE_ID_ddebug668", i1 false, i1 false}
!81 = !{ptr @.str.33, !79, !"<string literal>", i1 false, i1 false}
!82 = distinct !{null, !83, !"__already_done", i1 false, i1 false}
!83 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!84 = !{ptr @.str.34, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.35, !83, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @__func__._c4iw_write_mem_dma_aligned, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/infiniband/hw/cxgb4/mem.c", i32 104, i32 55}
!88 = !{ptr @.str.36, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/infiniband/hw/cxgb4/mem.c", i32 387, i32 2}
!90 = !{ptr @.str.37, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @finish_mem_reg.__UNIQUE_ID_ddebug681, !89, !"__UNIQUE_ID_ddebug681", i1 false, i1 false}
!92 = !{ptr @.str.38, !89, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.39, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/infiniband/hw/cxgb4/iw_cxgb4.h", i32 220, i32 2}
!95 = !{ptr @.str.40, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @c4iw_put_wr_wait.__UNIQUE_ID_ddebug666, !94, !"__UNIQUE_ID_ddebug666", i1 false, i1 false}
!97 = !{ptr @.str.41, !94, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.42, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/infiniband/hw/cxgb4/mem.c", i32 351, i32 2}
!100 = !{ptr @.str.43, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @write_pbl.__UNIQUE_ID_ddebug680, !99, !"__UNIQUE_ID_ddebug680", i1 false, i1 false}
!102 = !{ptr @.str.44, !99, !"<string literal>", i1 false, i1 false}
!103 = !{i32 1, !"wchar_size", i32 2}
!104 = !{i32 1, !"min_enum_size", i32 4}
!105 = !{i32 8, !"branch-target-enforcement", i32 0}
!106 = !{i32 8, !"sign-return-address", i32 0}
!107 = !{i32 8, !"sign-return-address-all", i32 0}
!108 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!109 = !{i32 7, !"uwtable", i32 1}
!110 = !{i32 7, !"frame-pointer", i32 2}
!111 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!112 = !{i64 2148971379, i64 2148971384, i64 2148971397, i64 2148971441, i64 2148971475, i64 2148971496}
!113 = !{i64 2148443437}
!114 = !{i64 2148358722, i64 2148358754, i64 2148358783, i64 2148358817, i64 2148358848, i64 2148358871}
!115 = !{i64 2148443666}
!116 = !{!"branch_weights", i32 1, i32 2000}
!117 = !{i64 2148447557}
!118 = !{i64 2148361997, i64 2148362029, i64 2148362058, i64 2148362092, i64 2148362123, i64 2148362146}
!119 = !{!"branch_weights", i32 2000, i32 1}
!120 = !{i64 2149323671}
!121 = !{i8 0, i8 2}
!122 = !{i64 2154823549, i64 2154824037, i64 2154823586, i64 2154823642, i64 2154823676, i64 2154823700, i64 2154823741, i64 2154823762, i64 2154823790, i64 2154823824}
!123 = !{i64 2148359532, i64 2148359564, i64 2148359593, i64 2148359627, i64 2148359658, i64 2148359681}
