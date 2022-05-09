; ModuleID = '/llk/IR_all_yes/drivers/infiniband/hw/mthca/mthca_catas.c_pt.bc'
source_filename = "../drivers/infiniband/hw/mthca/mthca_catas.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.125 }
%union.anon.125 = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mthca_dev = type { %struct.ib_device, ptr, i32, i32, i32, i32, [64 x i8], i64, %union.anon.173, i64, i64, %struct.spinlock, %struct.mutex, ptr, ptr, ptr, %union.anon.176, %struct.mthca_cmd, %struct.mthca_limits, %struct.mthca_uar_table, %struct.mthca_pd_table, %struct.mthca_mr_table, %struct.mthca_eq_table, %struct.mthca_cq_table, %struct.mthca_srq_table, %struct.mthca_qp_table, %struct.mthca_av_table, %struct.mthca_mcg_table, %struct.mthca_catas_err, %struct.mthca_uar, ptr, %struct.mthca_pd, %struct.mthca_mr, [2 x [2 x ptr]], [2 x ptr], %struct.spinlock, [2 x i8], i8 }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.171, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.173 = type { %struct.anon.175 }
%struct.anon.175 = type { i64, i64, i64, ptr, ptr, i16 }
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
%struct.ib_mr = type { ptr, ptr, i32, i32, i64, i64, i32, i32, i8, %union.anon.149, ptr, ptr, %struct.rdma_restrack_entry }
%union.anon.149 = type { %struct.list_head }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.172, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.172 = type { ptr }
%struct.ib_event = type { ptr, %union.anon.151, i32 }
%union.anon.151 = type { ptr }

@__param_str_catas_reset_disable = internal constant [29 x i8] c"ib_mthca.catas_reset_disable\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@catas_reset_disable = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_catas_reset_disable = internal constant %struct.kernel_param { ptr @__param_str_catas_reset_disable, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.125 { ptr @catas_reset_disable } }, section "__param", align 4
@__UNIQUE_ID_catas_reset_disabletype496 = internal constant [42 x i8] c"ib_mthca.parmtype=catas_reset_disable:int\00", section ".modinfo", align 1
@__UNIQUE_ID_catas_reset_disable497 = internal constant [81 x i8] c"ib_mthca.parm=catas_reset_disable:disable reset on catastrophic event if nonzero\00", section ".modinfo", align 1
@mthca_start_catas_poll.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"(&dev->catas_err.timer)\00", [40 x i8] zeroinitializer }, align 32
@mthca_start_catas_poll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 163, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"couldn't map catastrophic error region at 0x%llx/0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mthca_start_catas_poll\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/infiniband/hw/mthca/mthca_catas.c\00", [54 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mthca_start_catas_poll._entry_ptr = internal global ptr @mthca_start_catas_poll._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@catas_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.19, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@mthca_catas_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@catas_work = internal global { %struct.work_struct, [52 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"(work_completion)(&catas_work)\00", [33 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mthca_catas\00", [20 x i8] zeroinitializer }, align 32
@catas_wq = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"internal error\00", [17 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"uplink bus error\00", [47 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DDR data error\00", [17 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"internal parity error\00", [42 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"unknown error\00", [18 x i8] zeroinitializer }, align 32
@handle_catas._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 119, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Catastrophic error detected: %s\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"handle_catas\00", [19 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@handle_catas._entry_ptr = internal global ptr @handle_catas._entry, section ".printk_index", align 4
@handle_catas._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.14, ptr @.str.3, i32 122, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"  buf[%02x]: %08x\0A\00", [45 x i8] zeroinitializer }, align 32
@handle_catas._entry_ptr.18 = internal global ptr @handle_catas._entry.16, section ".printk_index", align 4
@catas_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @catas_list, ptr @catas_list }, [24 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"catas_lock\00", [21 x i8] zeroinitializer }, align 32
@mthca_device_mutex = external dso_local global %struct.mutex, align 4
@catas_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 77, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013mthca %s: Reset failed (%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"catas_reset\00", [20 x i8] zeroinitializer }, align 32
@catas_reset._entry_ptr = internal global ptr @catas_reset._entry, section ".printk_index", align 4
@mthca_debug_level = external dso_local local_unnamed_addr global i32, align 4
@catas_reset._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.3, i32 80, ptr @.str.24, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Reset succeeded\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@catas_reset._entry_ptr.25 = internal global ptr @catas_reset._entry.22, section ".printk_index", align 4
@switch.table.poll_catas = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.8, ptr @.str.12, ptr @.str.12, ptr @.str.9, ptr @.str.10, ptr @.str.11], [40 x i8] zeroinitializer }, align 32
@___asan_gen_.26 = private unnamed_addr constant [20 x i8] c"catas_reset_disable\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 55, i32 12 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 152, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 161, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant [11 x i8] c"catas_lock\00", align 1
@___asan_gen_.56 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.59 = private unnamed_addr constant [11 x i8] c"catas_work\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 53, i32 27 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 186, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 188, i32 13 }
@___asan_gen_.68 = private unnamed_addr constant [9 x i8] c"catas_wq\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 52, i32 33 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 103, i32 10 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 106, i32 10 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 109, i32 10 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 112, i32 10 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 115, i32 10 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 119, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 121, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant [11 x i8] c"catas_list\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 51, i32 8 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 49, i32 8 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 76, i32 4 }
@___asan_gen_.119 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.125 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.126 = private constant [45 x i8] c"../drivers/infiniband/hw/mthca/mthca_catas.c\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 80, i32 4 }
@___asan_gen_.128 = private unnamed_addr constant [24 x i8] c"switch.table.poll_catas\00", align 1
@llvm.compiler.used = appending global [43 x ptr] [ptr @__UNIQUE_ID_catas_reset_disable497, ptr @__UNIQUE_ID_catas_reset_disabletype496, ptr @__param_catas_reset_disable, ptr @catas_reset._entry, ptr @catas_reset._entry.22, ptr @catas_reset._entry_ptr, ptr @catas_reset._entry_ptr.25, ptr @handle_catas._entry, ptr @handle_catas._entry.16, ptr @handle_catas._entry_ptr, ptr @handle_catas._entry_ptr.18, ptr @mthca_start_catas_poll._entry, ptr @mthca_start_catas_poll._entry_ptr, ptr @catas_reset_disable, ptr @mthca_start_catas_poll.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @catas_lock, ptr @mthca_catas_init.__key, ptr @catas_work, ptr @.str.6, ptr @.str.7, ptr @catas_wq, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @catas_list, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @switch.table.poll_catas], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @catas_reset_disable to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_start_catas_poll.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_start_catas_poll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @catas_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_catas_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @catas_work to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @catas_wq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_catas._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_catas._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @catas_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @catas_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @catas_reset._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.poll_catas to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mthca_start_catas_poll(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %catas_err = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 28
  %timer = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 28, i32 3
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @poll_catas, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @mthca_start_catas_poll.__key) #5
  %map = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 28, i32 1
  %0 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %map, align 8
  %pdev = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  %1 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pdev, align 8
  %resource = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 47
  %3 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %resource, align 8
  %end = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 47, i32 0, i32 1
  %5 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  %sub = sub i32 %6, %4
  %spec.select = select i1 %cmp, i32 -1, i32 %sub
  %7 = ptrtoint ptr %catas_err to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %catas_err, align 8
  %9 = trunc i64 %8 to i32
  %10 = and i32 %spec.select, %9
  %conv19 = add i32 %10, %4
  %size = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 28, i32 2
  %11 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %size, align 4
  %mul = shl i32 %12, 2
  %call = tail call ptr @ioremap(i32 noundef %conv19, i32 noundef %mul) #5
  %13 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call, ptr %map, align 8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end27, label %if.end

do.end27:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev, align 8
  %dev29 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  %conv30 = zext i32 %conv19 to i64
  %16 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %size, align 4
  %mul33 = shl i32 %17, 2
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev29, ptr noundef nonnull @.str.1, i64 noundef %conv30, i32 noundef %mul33) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %add34 = add i32 %18, 500
  %expires = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 28, i32 3, i32 1
  %19 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %add34, ptr %expires, align 8
  %list = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 28, i32 4
  %20 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 28, i32 4, i32 1
  %21 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %list, ptr %prev.i, align 4
  tail call void @add_timer(ptr noundef %timer) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end27
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @poll_catas(ptr noundef %t) #0 align 64 {
entry:
  %event.i = alloca %struct.ib_event, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -5384
  %size = getelementptr i8, ptr %t, i32 -4
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp14.not = icmp eq i32 %1, 0
  br i1 %cmp14.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %map = getelementptr i8, ptr %t, i32 -8
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.015, 1
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 4
  %cmp = icmp ult i32 %inc, %3
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.015 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %4 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map, align 8
  %add.ptr2 = getelementptr i32, ptr %5, i32 %i.015
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #5, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %for.cond, label %if.then

if.then:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %event.i) #5
  %7 = getelementptr inbounds %struct.ib_event, ptr %event.i, i32 0, i32 1
  %8 = getelementptr inbounds %struct.ib_event, ptr %event.i, i32 0, i32 2
  %9 = ptrtoint ptr %event.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %add.ptr, ptr %event.i, align 4
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 8, ptr %8, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %7, align 4
  %active.i = getelementptr i8, ptr %t, i32 574
  %12 = ptrtoint ptr %active.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %active.i, align 2
  call void @ib_dispatch_event(ptr noundef nonnull %event.i) #5
  %13 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %map, align 8
  %15 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #5, !srcloc !72
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !74
  %shr.i = lshr i32 %15, 24
  %trunc.i = trunc i32 %shr.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %trunc.i)
  %16 = icmp ult i8 %trunc.i, 6
  br i1 %16, label %switch.lookup, label %if.then.do.end.i_crit_edge

if.then.do.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

switch.lookup:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ashr i32 %15, 24
  %switch.gep = getelementptr inbounds [6 x ptr], ptr @switch.table.poll_catas, i32 0, i32 %17
  %18 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %18)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %do.end.i

do.end.i:                                         ; preds = %switch.lookup, %if.then.do.end.i_crit_edge
  %type.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.12, %if.then.do.end.i_crit_edge ]
  %pdev.i = getelementptr i8, ptr %t, i32 -2600
  %19 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdev.i, align 8
  %dev6.i = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev6.i, ptr noundef nonnull @.str.13, ptr noundef nonnull %type.0.i) #8
  %21 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp45.not.i = icmp eq i32 %22, 0
  br i1 %cmp45.not.i, label %do.end.i.for.end.i_crit_edge, label %do.end.i.do.end10.i_crit_edge

do.end.i.do.end10.i_crit_edge:                    ; preds = %do.end.i
  br label %do.end10.i

do.end.i.for.end.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

do.end10.i:                                       ; preds = %do.end10.i.do.end10.i_crit_edge, %do.end.i.do.end10.i_crit_edge
  %i.046.i = phi i32 [ %inc.i, %do.end10.i.do.end10.i_crit_edge ], [ 0, %do.end.i.do.end10.i_crit_edge ]
  %23 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdev.i, align 8
  %dev12.i = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  %25 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %map, align 8
  %add.ptr.i = getelementptr i32, ptr %26, i32 %i.046.i
  %27 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !72
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !75
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12.i, ptr noundef nonnull @.str.17, i32 noundef %i.046.i, i32 noundef %27) #8
  %inc.i = add nuw i32 %i.046.i, 1
  %28 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %size, align 4
  %cmp.i = icmp ult i32 %inc.i, %29
  br i1 %cmp.i, label %do.end10.i.do.end10.i_crit_edge, label %do.end10.i.for.end.i_crit_edge

do.end10.i.for.end.i_crit_edge:                   ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

do.end10.i.do.end10.i_crit_edge:                  ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end10.i

for.end.i:                                        ; preds = %do.end10.i.for.end.i_crit_edge, %do.end.i.for.end.i_crit_edge
  %30 = load i32, ptr @catas_reset_disable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i = icmp eq i32 %30, 0
  br i1 %tobool.not.i, label %do.body21.i, label %for.end.i.handle_catas.exit_crit_edge

for.end.i.handle_catas.exit_crit_edge:            ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %handle_catas.exit

do.body21.i:                                      ; preds = %for.end.i
  %call25.i = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @catas_lock) #5
  %list.i = getelementptr i8, ptr %t, i32 48
  %31 = load ptr, ptr @catas_list, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef nonnull @catas_list, ptr noundef %31) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.body21.i.list_add.exit.i_crit_edge

do.body21.i.list_add.exit.i_crit_edge:            ; preds = %do.body21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add.exit.i

if.end.i.i.i:                                     ; preds = %do.body21.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %list.i, ptr %prev1.i.i.i, align 4
  %33 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %31, ptr %list.i, align 4
  %prev3.i.i.i = getelementptr i8, ptr %t, i32 52
  %34 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @catas_list, ptr %prev3.i.i.i, align 4
  store volatile ptr %list.i, ptr @catas_list, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i.i, %do.body21.i.list_add.exit.i_crit_edge
  %35 = load ptr, ptr @catas_wq, align 4
  %call.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %35, ptr noundef nonnull @catas_work) #5
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @catas_lock, i32 noundef %call25.i) #5
  br label %handle_catas.exit

handle_catas.exit:                                ; preds = %list_add.exit.i, %for.end.i.handle_catas.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %event.i) #5
  br label %cleanup

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %36 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %36, 500
  %call6 = tail call i32 @round_jiffies(i32 noundef %add) #5
  %call7 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %call6) #5
  br label %cleanup

cleanup:                                          ; preds = %for.end, %handle_catas.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mthca_stop_catas_poll(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %timer = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 28, i32 3
  %call = tail call i32 @del_timer_sync(ptr noundef %timer) #5
  %map = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 28, i32 1
  %0 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %map, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @iounmap(ptr noundef nonnull %1) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @catas_lock) #5
  %list = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 28, i32 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 28, i32 4, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %8 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 28, i32 4, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @catas_lock) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mthca_catas_init() local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__init_work(ptr noundef nonnull @catas_work, i32 noundef 0) #5
  store i32 -64, ptr @catas_work, align 4
  tail call void @lockdep_init_map_type(ptr noundef getelementptr inbounds (%struct.work_struct, ptr @catas_work, i32 0, i32 3), ptr noundef nonnull @.str.6, ptr noundef nonnull @mthca_catas_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  store volatile ptr getelementptr inbounds (%struct.work_struct, ptr @catas_work, i32 0, i32 1), ptr getelementptr inbounds (%struct.work_struct, ptr @catas_work, i32 0, i32 1), align 4
  store ptr getelementptr inbounds (%struct.work_struct, ptr @catas_work, i32 0, i32 1), ptr getelementptr inbounds (%struct.work_struct, ptr @catas_work, i32 0, i32 1, i32 1), align 4
  store ptr @catas_reset, ptr getelementptr inbounds (%struct.work_struct, ptr @catas_work, i32 0, i32 2), align 4
  %call = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.7, i32 noundef 655370, i32 noundef 1) #5
  store ptr %call, ptr @catas_wq, align 4
  %tobool.not = icmp eq ptr %call, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @catas_reset(ptr nocapture noundef readnone %work) #0 align 64 {
entry:
  %tlist = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tlist) #5
  %0 = getelementptr inbounds %struct.list_head, ptr %tlist, i32 0, i32 1
  %1 = ptrtoint ptr %tlist to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %tlist, ptr %tlist, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %tlist, ptr %0, align 4
  call void @mutex_lock_nested(ptr noundef nonnull @mthca_device_mutex, i32 noundef 0) #5
  call void @_raw_spin_lock_irq(ptr noundef nonnull @catas_lock) #5
  %3 = load volatile ptr, ptr @catas_list, align 4
  %cmp.i.not.i = icmp eq ptr %3, @catas_list
  br i1 %cmp.i.not.i, label %entry.list_splice_init.exit_crit_edge, label %if.then.i

entry.list_splice_init.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_splice_init.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %tlist to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tlist, align 4
  %6 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @catas_list, i32 0, i32 1), align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %tlist, ptr %prev3.i.i, align 4
  store ptr %3, ptr %tlist, align 4
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %6, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %9 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev6.i.i, align 4
  store volatile ptr @catas_list, ptr @catas_list, align 4
  store ptr @catas_list, ptr getelementptr inbounds (%struct.list_head, ptr @catas_list, i32 0, i32 1), align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i, %entry.list_splice_init.exit_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef nonnull @catas_lock) #5
  %10 = ptrtoint ptr %tlist to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tlist, align 4
  %cmp.not39 = icmp eq ptr %11, %tlist
  br i1 %cmp.not39, label %list_splice_init.exit.for.end_crit_edge, label %list_splice_init.exit.for.body_crit_edge

list_splice_init.exit.for.body_crit_edge:         ; preds = %list_splice_init.exit
  br label %for.body

list_splice_init.exit.for.end_crit_edge:          ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %if.end24.for.body_crit_edge, %list_splice_init.exit.for.body_crit_edge
  %.pn.in40 = phi ptr [ %.pn41, %if.end24.for.body_crit_edge ], [ %11, %list_splice_init.exit.for.body_crit_edge ]
  %12 = ptrtoint ptr %.pn.in40 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn41 = load ptr, ptr %.pn.in40, align 8
  %pdev8 = getelementptr i8, ptr %.pn.in40, i32 -2648
  %13 = ptrtoint ptr %pdev8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev8, align 8
  %call = call i32 @__mthca_restart_one(ptr noundef %14) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else, label %do.end

do.end:                                           ; preds = %for.body
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44, i32 3
  %15 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %16, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.pci_name.exit_crit_edge

do.end.pci_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %do.end.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %18, %if.end.i.i ], [ %16, %do.end.pci_name.exit_crit_edge ]
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %retval.0.i.i, i32 noundef %call) #8
  br label %if.end24

if.else:                                          ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mthca_debug_level to i32))
  %19 = load i32, ptr @mthca_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool15.not = icmp eq i32 %19, 0
  br i1 %tobool15.not, label %if.else.if.end24_crit_edge, label %do.end19

if.else.if.end24_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

do.end19:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44, i32 8
  %20 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %driver_data.i.i, align 4
  %pdev20 = getelementptr inbounds %struct.mthca_dev, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %pdev20 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdev20, align 8
  %dev21 = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.24, ptr noundef %dev21, ptr noundef nonnull @.str.23) #8
  br label %if.end24

if.end24:                                         ; preds = %do.end19, %if.else.if.end24_crit_edge, %pci_name.exit
  %cmp.not = icmp eq ptr %.pn41, %tlist
  br i1 %cmp.not, label %if.end24.for.end_crit_edge, label %if.end24.for.body_crit_edge

if.end24.for.body_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.end24.for.end_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %if.end24.for.end_crit_edge, %list_splice_init.exit.for.end_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @mthca_device_mutex) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tlist) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mthca_catas_cleanup() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @catas_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %0) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @round_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_dispatch_event(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mthca_restart_one(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !11, !12, !13, !14, !15, !16, !18, !19, !21, !23, !25, !27, !28, !30, !32, !34, !36, !38, !40, !41, !42, !43, !44, !46, !47, !48, !50, !52, !53, !55, !56, !57, !58, !60, !61, !62}
!llvm.module.flags = !{!63, !64, !65, !66, !67, !68, !69, !70}
!llvm.ident = !{!71}

!0 = !{ptr @__param_catas_reset_disable, !1, !"__param_catas_reset_disable", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/hw/mthca/mthca_catas.c", i32 56, i32 1}
!2 = !{ptr @__UNIQUE_ID_catas_reset_disabletype496, !1, !"__UNIQUE_ID_catas_reset_disabletype496", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_catas_reset_disable497, !4, !"__UNIQUE_ID_catas_reset_disable497", i1 false, i1 false}
!4 = !{!"../drivers/infiniband/hw/mthca/mthca_catas.c", i32 57, i32 1}
!5 = !{ptr @mthca_start_catas_poll.__key, !6, !"__key", i1 false, i1 false}
!6 = !{!"../drivers/infiniband/hw/mthca/mthca_catas.c", i32 152, i32 2}
!7 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/infiniband/hw/mthca/mthca_catas.c", i32 161, i32 3}
!10 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @mthca_start_catas_poll._entry, !9, !"_entry", i1 false, i1 false}
!15 = !{ptr @mthca_start_catas_poll._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @mthca_catas_init.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/infiniband/hw/mthca/mthca_catas.c", i32 186, i32 2}
!18 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/infiniband/hw/mthca/mthca_catas.c", i32 188, i32 13}
!21 = !{ptr @catas_wq, !22, !"catas_wq", i1 false, i1 false}
!22 = !{!"../drivers/infiniband/hw/mthca/mthca_catas.c", i32 52, i32 33}
!23 = !{ptr @catas_work, !24, !"catas_work", i1 false, i1 false}
!24 = !{!"../drivers/infiniband/hw/mthca/mthca_catas.c", i32 53, i32 27}
!25 = !{ptr @catas_reset_disable, !26, !"catas_reset_disable", i1 false, i1 false}
!26 = !{!"../drivers/infiniband/hw/mthca/mthca_catas.c", i32 55, i32 12}
!27 = !{ptr @__param_str_catas_reset_disable, !1, !"__param_str_catas_reset_disable", i1 false, i1 false}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/infiniband/hw/mthca/mthca_catas.c", i32 103, i32 10}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/infiniband/hw/mthca/mthca_catas.c", i32 106, i32 10}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/infiniband/hw/mthca/mthca_catas.c", i32 109, i32 10}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/infiniband/hw/mthca/mthca_catas.c", i32 112, i32 10}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/infiniband/hw/mthca/mthca_catas.c", i32 115, i32 10}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/infiniband/hw/mthca/mthca_catas.c", i32 119, i32 2}
!40 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @handle_catas._entry, !39, !"_entry", i1 false, i1 false}
!43 = !{ptr @handle_catas._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/infiniband/hw/mthca/mthca_catas.c", i32 121, i32 3}
!46 = !{ptr @handle_catas._entry.16, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @handle_catas._entry_ptr.18, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @catas_list, !49, !"catas_list", i1 false, i1 false}
!49 = !{!"../drivers/infiniband/hw/mthca/mthca_catas.c", i32 51, i32 8}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/infiniband/hw/mthca/mthca_catas.c", i32 49, i32 8}
!52 = !{ptr @catas_lock, !51, !"catas_lock", i1 false, i1 false}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/infiniband/hw/mthca/mthca_catas.c", i32 76, i32 4}
!55 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @catas_reset._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @catas_reset._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/infiniband/hw/mthca/mthca_catas.c", i32 80, i32 4}
!60 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @catas_reset._entry.22, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @catas_reset._entry_ptr.25, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{i32 1, !"wchar_size", i32 2}
!64 = !{i32 1, !"min_enum_size", i32 4}
!65 = !{i32 8, !"branch-target-enforcement", i32 0}
!66 = !{i32 8, !"sign-return-address", i32 0}
!67 = !{i32 8, !"sign-return-address-all", i32 0}
!68 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!69 = !{i32 7, !"uwtable", i32 1}
!70 = !{i32 7, !"frame-pointer", i32 2}
!71 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!72 = !{i64 5002264}
!73 = !{i64 2158132873}
!74 = !{i64 2158126363}
!75 = !{i64 2158130738}
