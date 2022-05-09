; ModuleID = '/llk/IR_all_yes/drivers/infiniband/hw/mthca/mthca_eq.c_pt.bc'
source_filename = "../drivers/infiniband/hw/mthca/mthca_eq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.172, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.172 = type { ptr }
%struct.mthca_buf_list = type { ptr, i32 }
%struct.mthca_mailbox = type { i32, ptr }
%struct.mthca_eqe = type { i8, i8, i8, i8, %union.anon.181, [3 x i8], i8 }
%union.anon.181 = type { [6 x i32] }
%struct.mthca_eq_context = type <{ i32, i64, i32, i32, [3 x i8], i8, i32, i32, [2 x i32], i32, i32, [4 x i32] }>
%struct.ib_event = type { ptr, %union.anon.129, i32 }
%union.anon.129 = type { ptr }
%struct.anon.183 = type <{ i16, i16, i32, [3 x i8], i8, i64 }>
%struct.anon.186 = type { i32, i32, [3 x i8], i8 }

@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ib_mthca-cmd\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ib_mthca-async\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ib_mthca-comp\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s@pci:%s\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ib_mthca@pci:%s\00", [16 x i8] zeroinitializer }, align 32
@mthca_init_eq_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 855, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"MAP_EQ for async EQ %d failed (%d)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mthca_init_eq_table\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/infiniband/hw/mthca/mthca_eq.c\00", [57 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mthca_init_eq_table._entry_ptr = internal global ptr @mthca_init_eq_table._entry, section ".printk_index", align 4
@mthca_init_eq_table._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.7, i32 861, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"MAP_EQ for cmd EQ %d failed (%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@mthca_init_eq_table._entry_ptr.12 = internal global ptr @mthca_init_eq_table._entry.10, section ".printk_index", align 4
@mthca_map_eq_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.7, i32 669, ptr @.str.16, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Couldn't map interrupt clear register, aborting.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mthca_map_eq_regs\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@mthca_map_eq_regs._entry_ptr = internal global ptr @mthca_map_eq_regs._entry, section ".printk_index", align 4
@mthca_map_eq_regs._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.15, ptr @.str.7, i32 680, ptr @.str.16, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Couldn't map EQ arm register, aborting.\0A\00", [55 x i8] zeroinitializer }, align 32
@mthca_map_eq_regs._entry_ptr.19 = internal global ptr @mthca_map_eq_regs._entry.17, section ".printk_index", align 4
@mthca_map_eq_regs._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.15, ptr @.str.7, i32 689, ptr @.str.16, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Couldn't map EQ CI register, aborting.\0A\00", [56 x i8] zeroinitializer }, align 32
@mthca_map_eq_regs._entry_ptr.22 = internal global ptr @mthca_map_eq_regs._entry.20, section ".printk_index", align 4
@mthca_map_eq_regs._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.7, i32 698, ptr @.str.16, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@mthca_map_eq_regs._entry_ptr.24 = internal global ptr @mthca_map_eq_regs._entry.23, section ".printk_index", align 4
@mthca_map_eq_regs._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.15, ptr @.str.7, i32 706, ptr @.str.16, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Couldn't map ecr register, aborting.\0A\00", [58 x i8] zeroinitializer }, align 32
@mthca_map_eq_regs._entry_ptr.27 = internal global ptr @mthca_map_eq_regs._entry.25, section ".printk_index", align 4
@mthca_create_eq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.7, i32 547, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SW2HW_EQ returned %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mthca_create_eq\00", [16 x i8] zeroinitializer }, align 32
@mthca_create_eq._entry_ptr = internal global ptr @mthca_create_eq._entry, section ".printk_index", align 4
@mthca_debug_level = external dso_local local_unnamed_addr global i32, align 4
@mthca_create_eq._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.7, i32 560, ptr @.str.32, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Allocated EQ %d with %d entries\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@mthca_create_eq._entry_ptr.33 = internal global ptr @mthca_create_eq._entry.30, section ".printk_index", align 4
@mthca_eq_int._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.7, i32 343, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"CQ %s on CQN %06x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mthca_eq_int\00", [19 x i8] zeroinitializer }, align 32
@mthca_eq_int._entry_ptr = internal global ptr @mthca_eq_int._entry, section ".printk_index", align 4
@.str.36 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"overrun\00", [24 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"access violation\00", [47 x i8] zeroinitializer }, align 32
@mthca_eq_int._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.35, ptr @.str.7, i32 349, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"EQ overrun on EQN %d\0A\00", [42 x i8] zeroinitializer }, align 32
@mthca_eq_int._entry_ptr.40 = internal global ptr @mthca_eq_int._entry.38, section ".printk_index", align 4
@mthca_eq_int._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.35, ptr @.str.7, i32 358, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Unhandled event %02x(%02x) on EQ %d\0A\00", [59 x i8] zeroinitializer }, align 32
@mthca_eq_int._entry_ptr.43 = internal global ptr @mthca_eq_int._entry.41, section ".printk_index", align 4
@port_change._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.7, i32 251, ptr @.str.32, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Port change to %s for port %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"port_change\00", [20 x i8] zeroinitializer }, align 32
@port_change._entry_ptr = internal global ptr @port_change._entry, section ".printk_index", align 4
@.str.46 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"active\00", [25 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"down\00", [27 x i8] zeroinitializer }, align 32
@mthca_free_eq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.7, i32 603, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"HW2SW_EQ returned %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mthca_free_eq\00", [18 x i8] zeroinitializer }, align 32
@mthca_free_eq._entry_ptr = internal global ptr @mthca_free_eq._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [16 x i64] [i64 14, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 7, i64 9, i64 10, i64 15, i64 16, i64 17, i64 19, i64 20]
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 820, i32 23 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 819, i32 23 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 818, i32 23 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 826, i32 6 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 840, i32 5 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 854, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 860, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 668, i32 4 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 680, i32 4 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 689, i32 4 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 697, i32 4 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 705, i32 4 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 547, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 559, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 340, i32 4 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 349, i32 4 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 357, i32 4 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 250, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.188 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.189 = private constant [42 x i8] c"../drivers/infiniband/hw/mthca/mthca_eq.c\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 603, i32 3 }
@llvm.compiler.used = appending global [61 x ptr] [ptr @mthca_create_eq._entry, ptr @mthca_create_eq._entry.30, ptr @mthca_create_eq._entry_ptr, ptr @mthca_create_eq._entry_ptr.33, ptr @mthca_eq_int._entry, ptr @mthca_eq_int._entry.38, ptr @mthca_eq_int._entry.41, ptr @mthca_eq_int._entry_ptr, ptr @mthca_eq_int._entry_ptr.40, ptr @mthca_eq_int._entry_ptr.43, ptr @mthca_free_eq._entry, ptr @mthca_free_eq._entry_ptr, ptr @mthca_init_eq_table._entry, ptr @mthca_init_eq_table._entry.10, ptr @mthca_init_eq_table._entry_ptr, ptr @mthca_init_eq_table._entry_ptr.12, ptr @mthca_map_eq_regs._entry, ptr @mthca_map_eq_regs._entry.17, ptr @mthca_map_eq_regs._entry.20, ptr @mthca_map_eq_regs._entry.23, ptr @mthca_map_eq_regs._entry.25, ptr @mthca_map_eq_regs._entry_ptr, ptr @mthca_map_eq_regs._entry_ptr.19, ptr @mthca_map_eq_regs._entry_ptr.22, ptr @mthca_map_eq_regs._entry_ptr.24, ptr @mthca_map_eq_regs._entry_ptr.27, ptr @port_change._entry, ptr @port_change._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49], section "llvm.metadata"
@0 = internal global [47 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_init_eq_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_init_eq_table._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_map_eq_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_map_eq_regs._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_map_eq_regs._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_map_eq_regs._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_map_eq_regs._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_create_eq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_create_eq._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_eq_int._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_eq_int._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_eq_int._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port_change._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_free_eq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mthca_map_eq_icm(ptr noundef %dev, i64 noundef %icm_virt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %icm_virt1 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 22, i32 5
  %0 = ptrtoint ptr %icm_virt1 to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %icm_virt, ptr %icm_virt1, align 8
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef 1051842, i32 noundef 0, i32 noundef 0, ptr noundef null) #8
  %icm_page = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 22, i32 6
  %1 = ptrtoint ptr %icm_page to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call38.i.i.i, ptr %icm_page, align 8
  %tobool.not = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %pdev = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 8
  %dev5 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %call8 = tail call i32 @dma_map_page_attrs(ptr noundef %dev5, ptr noundef nonnull %call38.i.i.i, i32 noundef 0, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #8
  %icm_dma = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 22, i32 7
  %4 = ptrtoint ptr %icm_dma to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call8, ptr %icm_dma, align 4
  %5 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev, align 8
  %dev11 = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev11, i32 noundef %call8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call8)
  %cmp.i.not = icmp eq i32 %call8, -1
  br i1 %cmp.i.not, label %if.end.cleanup.sink.split_crit_edge, label %if.end19

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end19:                                         ; preds = %if.end
  %7 = ptrtoint ptr %icm_dma to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %icm_dma, align 4
  %conv = zext i32 %8 to i64
  %call22 = tail call i32 @mthca_MAP_ICM_page(ptr noundef %dev, i64 noundef %conv, i64 noundef %icm_virt) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end19.cleanup_crit_edge, label %if.then24

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then24:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev, align 8
  %dev26 = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  %11 = ptrtoint ptr %icm_dma to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %icm_dma, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev26, i32 noundef %12, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then24, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call22, %if.then24 ], [ -12, %if.end.cleanup.sink.split_crit_edge ]
  %13 = ptrtoint ptr %icm_page to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %icm_page, align 8
  tail call void @__free_pages(ptr noundef %14, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end19.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end19.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_MAP_ICM_page(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mthca_unmap_eq_icm(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %icm_virt = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 22, i32 5
  %0 = ptrtoint ptr %icm_virt to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %icm_virt, align 8
  %call = tail call i32 @mthca_UNMAP_ICM(ptr noundef %dev, i64 noundef %1, i32 noundef 1) #8
  %pdev = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 8
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %icm_dma = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 22, i32 7
  %4 = ptrtoint ptr %icm_dma to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %icm_dma, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev1, i32 noundef %5, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #8
  %icm_page = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 22, i32 6
  %6 = ptrtoint ptr %icm_page to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %icm_page, align 8
  tail call void @__free_pages(ptr noundef %7, i32 noundef 0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_UNMAP_ICM(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mthca_init_eq_table(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %eq_table = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 22
  %num_eqs = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 18, i32 22
  %0 = ptrtoint ptr %num_eqs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_eqs, align 8
  %sub = add i32 %1, -1
  %reserved_eqs = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 18, i32 23
  %2 = ptrtoint ptr %reserved_eqs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reserved_eqs, align 4
  %call = tail call i32 @mthca_alloc_init(ptr noundef %eq_table, i32 noundef %1, i32 noundef %sub, i32 noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %mthca_flags.i.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 3
  %4 = ptrtoint ptr %mthca_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mthca_flags.i.i, align 8
  %and.i.i = and i32 %5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  %pdev.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  %6 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev.i, align 8
  %end.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 47, i32 0, i32 1
  %8 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %end.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i = icmp eq i32 %9, 0
  br i1 %cmp.i, label %if.then.i.cond.end.i_crit_edge, label %cond.false.i

if.then.i.cond.end.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %resource.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 47
  %10 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %resource.i, align 8
  %sub.i = sub i32 %9, %11
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.then.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %sub.i, %cond.false.i ], [ -1, %if.then.i.cond.end.i_crit_edge ]
  %fw.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 8
  %12 = ptrtoint ptr %fw.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %fw.i, align 8
  %14 = trunc i64 %13 to i32
  %conv9.i = and i32 %cond.i, %14
  %clr_base.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 15
  %resource.i.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 47
  %15 = ptrtoint ptr %resource.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %resource.i.i, align 8
  %add.i.i = add i32 %conv9.i, %16
  %call.i.i = tail call ptr @ioremap(i32 noundef %add.i.i, i32 noundef 8) #8
  %17 = ptrtoint ptr %clr_base.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i.i, ptr %clr_base.i, align 4
  %tobool.not.i.not.i = icmp eq ptr %call.i.i, null
  %18 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev.i, align 8
  br i1 %tobool.not.i.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev14.i = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev14.i, ptr noundef nonnull @.str.14) #11
  br label %err_out_free

if.end.i:                                         ; preds = %cond.end.i
  %end18.i = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 47, i32 0, i32 1
  %20 = ptrtoint ptr %end18.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %end18.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp19.i = icmp eq i32 %21, 0
  br i1 %cmp19.i, label %if.end.i.cond.end33.i_crit_edge, label %cond.false22.i

if.end.i.cond.end33.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end33.i

cond.false22.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %resource16.i = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 47
  %22 = ptrtoint ptr %resource16.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %resource16.i, align 8
  %sub31.i = sub i32 %21, %23
  br label %cond.end33.i

cond.end33.i:                                     ; preds = %cond.false22.i, %if.end.i.cond.end33.i_crit_edge
  %cond34.i = phi i32 [ %sub31.i, %cond.false22.i ], [ -1, %if.end.i.cond.end33.i_crit_edge ]
  %eq_arm_base.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 8, i32 0, i32 1
  %24 = ptrtoint ptr %eq_arm_base.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %eq_arm_base.i, align 8
  %26 = trunc i64 %25 to i32
  %27 = and i32 %cond34.i, %26
  %eq_regs.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 16
  %resource.i142.i = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 47
  %28 = ptrtoint ptr %resource.i142.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %resource.i142.i, align 8
  %conv40.i = add i32 %29, 4
  %add.i143.i = add i32 %conv40.i, %27
  %call.i144.i = tail call ptr @ioremap(i32 noundef %add.i143.i, i32 noundef 4) #8
  %30 = ptrtoint ptr %eq_regs.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i144.i, ptr %eq_regs.i, align 4
  %tobool.not.i145.not.i = icmp eq ptr %call.i144.i, null
  %31 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pdev.i, align 8
  br i1 %tobool.not.i145.not.i, label %do.end45.i, label %if.end49.i

do.end45.i:                                       ; preds = %cond.end33.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev47.i = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev47.i, ptr noundef nonnull @.str.18) #11
  %33 = ptrtoint ptr %clr_base.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %clr_base.i, align 8
  tail call void @iounmap(ptr noundef %34) #8
  br label %err_out_free

if.end49.i:                                       ; preds = %cond.end33.i
  %end53.i = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 47, i32 0, i32 1
  %35 = ptrtoint ptr %end53.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %end53.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp54.i = icmp eq i32 %36, 0
  br i1 %cmp54.i, label %if.end49.i.cond.end68.i_crit_edge, label %cond.false57.i

if.end49.i.cond.end68.i_crit_edge:                ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end68.i

cond.false57.i:                                   ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #10
  %resource51.i = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 47
  %37 = ptrtoint ptr %resource51.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %resource51.i, align 8
  %sub66.i = sub i32 %36, %38
  br label %cond.end68.i

cond.end68.i:                                     ; preds = %cond.false57.i, %if.end49.i.cond.end68.i_crit_edge
  %cond69.i = phi i32 [ %sub66.i, %cond.false57.i ], [ -1, %if.end49.i.cond.end68.i_crit_edge ]
  %eq_set_ci_base.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 8, i32 0, i32 2
  %39 = ptrtoint ptr %eq_set_ci_base.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %eq_set_ci_base.i, align 8
  %41 = trunc i64 %40 to i32
  %conv74.i = and i32 %cond69.i, %41
  %eq_set_ci_base76.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 16, i32 0, i32 1
  %resource.i148.i = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 47
  %42 = ptrtoint ptr %resource.i148.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %resource.i148.i, align 8
  %add.i149.i = add i32 %conv74.i, %43
  %call.i150.i = tail call ptr @ioremap(i32 noundef %add.i149.i, i32 noundef 256) #8
  %44 = ptrtoint ptr %eq_set_ci_base76.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call.i150.i, ptr %eq_set_ci_base76.i, align 4
  %tobool.not.i151.not.i = icmp eq ptr %call.i150.i, null
  br i1 %tobool.not.i151.not.i, label %do.end81.i, label %cond.end68.i.if.end7_crit_edge

cond.end68.i.if.end7_crit_edge:                   ; preds = %cond.end68.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

do.end81.i:                                       ; preds = %cond.end68.i
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pdev.i, align 8
  %dev83.i = getelementptr inbounds %struct.pci_dev, ptr %46, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev83.i, ptr noundef nonnull @.str.21) #11
  %47 = ptrtoint ptr %eq_regs.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %eq_regs.i, align 4
  tail call void @iounmap(ptr noundef %48) #8
  %49 = ptrtoint ptr %clr_base.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %clr_base.i, align 8
  tail call void @iounmap(ptr noundef %50) #8
  br label %err_out_free

if.else.i:                                        ; preds = %if.end
  %clr_base88.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 15
  %pdev.i153.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  %51 = ptrtoint ptr %pdev.i153.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pdev.i153.i, align 8
  %resource.i154.i = getelementptr inbounds %struct.pci_dev, ptr %52, i32 0, i32 47
  %53 = ptrtoint ptr %resource.i154.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %resource.i154.i, align 8
  %add.i155.i = add i32 %54, 983256
  %call.i156.i = tail call ptr @ioremap(i32 noundef %add.i155.i, i32 noundef 8) #8
  %55 = ptrtoint ptr %clr_base88.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call.i156.i, ptr %clr_base88.i, align 4
  %tobool.not.i157.not.i = icmp eq ptr %call.i156.i, null
  br i1 %tobool.not.i157.not.i, label %do.end93.i, label %if.end96.i

do.end93.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %56 = ptrtoint ptr %pdev.i153.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pdev.i153.i, align 8
  %dev95.i = getelementptr inbounds %struct.pci_dev, ptr %57, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev95.i, ptr noundef nonnull @.str.14) #11
  br label %err_out_free

if.end96.i:                                       ; preds = %if.else.i
  %eq_regs97.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 16
  %58 = ptrtoint ptr %pdev.i153.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pdev.i153.i, align 8
  %resource.i160.i = getelementptr inbounds %struct.pci_dev, ptr %59, i32 0, i32 47
  %60 = ptrtoint ptr %resource.i160.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %resource.i160.i, align 8
  %add.i161.i = add i32 %61, 526080
  %call.i162.i = tail call ptr @ioremap(i32 noundef %add.i161.i, i32 noundef 16) #8
  %62 = ptrtoint ptr %eq_regs97.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call.i162.i, ptr %eq_regs97.i, align 4
  %tobool.not.i163.not.i = icmp eq ptr %call.i162.i, null
  br i1 %tobool.not.i163.not.i, label %do.end102.i, label %if.end96.i.if.end7_crit_edge

if.end96.i.if.end7_crit_edge:                     ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

do.end102.i:                                      ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #10
  %63 = ptrtoint ptr %pdev.i153.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %pdev.i153.i, align 8
  %dev104.i = getelementptr inbounds %struct.pci_dev, ptr %64, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev104.i, ptr noundef nonnull @.str.26) #11
  %65 = ptrtoint ptr %clr_base88.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %clr_base88.i, align 8
  tail call void @iounmap(ptr noundef %66) #8
  br label %err_out_free

if.end7:                                          ; preds = %if.end96.i.if.end7_crit_edge, %cond.end68.i.if.end7_crit_edge
  %67 = ptrtoint ptr %mthca_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %mthca_flags.i.i, align 8
  %and = and i32 %68, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %if.else, label %if.end7.if.end20_crit_edge

if.end7.if.end20_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.else:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %inta_pin = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 22, i32 9
  %69 = ptrtoint ptr %inta_pin to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %inta_pin, align 4
  %71 = and i8 %70, 31
  %and12 = zext i8 %71 to i32
  %shl = shl nuw i32 1, %and12
  %72 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %clr_base = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 15
  %73 = ptrtoint ptr %clr_base to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %clr_base, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %70)
  %cmp = icmp ult i8 %70, 32
  %cond = select i1 %cmp, i32 4, i32 0
  %add.ptr = getelementptr i8, ptr %74, i32 %cond
  %clr_int = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 22, i32 1
  %75 = ptrtoint ptr %clr_int to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %add.ptr, ptr %clr_int, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.end7.if.end20_crit_edge
  %.sink = phi i32 [ %72, %if.else ], [ 0, %if.end7.if.end20_crit_edge ]
  %76 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 22, i32 2
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %.sink, ptr %76, align 4
  %arm_mask = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 22, i32 3
  %78 = ptrtoint ptr %arm_mask to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %arm_mask, align 8
  %inta_pin23 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 22, i32 9
  %79 = ptrtoint ptr %inta_pin23 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %inta_pin23, align 4
  %num_cqs = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 18, i32 19
  %81 = ptrtoint ptr %num_cqs to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %num_cqs, align 4
  %add = add i32 %82, 128
  %spec.select = select i1 %tobool8.not, i8 %80, i8 -128
  %eq = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 22, i32 4
  %arrayidx = getelementptr %struct.mthca_dev, ptr %dev, i32 0, i32 22, i32 4, i32 2
  %call32 = tail call fastcc i32 @mthca_create_eq(ptr noundef %dev, i32 noundef %add, i8 noundef zeroext %spec.select, ptr noundef %arrayidx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %if.end20.err_out_unmap_crit_edge

if.end20.err_out_unmap_crit_edge:                 ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_out_unmap

if.end35:                                         ; preds = %if.end20
  %83 = ptrtoint ptr %mthca_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %mthca_flags.i.i, align 8
  %and37 = and i32 %84, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  %spec.select277 = select i1 %tobool38.not, i8 %80, i8 -127
  %arrayidx47 = getelementptr %struct.mthca_dev, ptr %dev, i32 0, i32 22, i32 4, i32 1
  %call48 = tail call fastcc i32 @mthca_create_eq(ptr noundef %dev, i32 noundef 256, i8 noundef zeroext %spec.select277, ptr noundef %arrayidx47)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end51, label %if.end35.err_out_comp_crit_edge

if.end35.err_out_comp_crit_edge:                  ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_out_comp

if.end51:                                         ; preds = %if.end35
  %85 = ptrtoint ptr %mthca_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %mthca_flags.i.i, align 8
  %and53 = and i32 %86, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  %spec.select278 = select i1 %tobool54.not, i8 %80, i8 -126
  %call64 = tail call fastcc i32 @mthca_create_eq(ptr noundef %dev, i32 noundef 256, i8 noundef zeroext %spec.select278, ptr noundef %eq)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end67, label %if.end51.err_out_async_crit_edge

if.end51.err_out_async_crit_edge:                 ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_out_async

if.end67:                                         ; preds = %if.end51
  %87 = ptrtoint ptr %mthca_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %mthca_flags.i.i, align 8
  %and69 = and i32 %88, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %if.else103, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end67
  %pdev = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  %irq_name = getelementptr %struct.mthca_dev, ptr %dev, i32 0, i32 22, i32 4, i32 0, i32 10
  %89 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %pdev, align 8
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %90, i32 0, i32 44, i32 3
  %91 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %92, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %for.cond.preheader.pci_name.exit_crit_edge

for.cond.preheader.pci_name.exit_crit_edge:       ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %90, i32 0, i32 44
  %93 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %for.cond.preheader.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %94, %if.end.i.i ], [ %92, %for.cond.preheader.pci_name.exit_crit_edge ]
  %call79 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %irq_name, i32 noundef 64, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str, ptr noundef %retval.0.i.i)
  %msi_x_vector = getelementptr %struct.mthca_dev, ptr %dev, i32 0, i32 22, i32 4, i32 0, i32 4
  %95 = ptrtoint ptr %msi_x_vector to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %msi_x_vector, align 8
  %conv83 = zext i16 %96 to i32
  %97 = ptrtoint ptr %mthca_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %mthca_flags.i.i, align 8
  %and.i = and i32 %98, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool85.not = icmp eq i32 %and.i, 0
  %cond86 = select i1 %tobool85.not, ptr @mthca_tavor_msi_x_interrupt, ptr @mthca_arbel_msi_x_interrupt
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %conv83, ptr noundef nonnull %cond86, ptr noundef null, i32 noundef 0, ptr noundef %irq_name, ptr noundef %eq) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool97.not = icmp eq i32 %call.i, 0
  br i1 %tobool97.not, label %if.end99, label %pci_name.exit.err_out_cmd_crit_edge

pci_name.exit.err_out_cmd_crit_edge:              ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_out_cmd

if.end99:                                         ; preds = %pci_name.exit
  %have_irq = getelementptr %struct.mthca_dev, ptr %dev, i32 0, i32 22, i32 4, i32 0, i32 6
  %99 = ptrtoint ptr %have_irq to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 1, ptr %have_irq, align 4
  %irq_name.1 = getelementptr %struct.mthca_dev, ptr %dev, i32 0, i32 22, i32 4, i32 1, i32 10
  %100 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %pdev, align 8
  %init_name.i.i.1 = getelementptr inbounds %struct.pci_dev, ptr %101, i32 0, i32 44, i32 3
  %102 = ptrtoint ptr %init_name.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %init_name.i.i.1, align 8
  %tobool.not.i.i.1 = icmp eq ptr %103, null
  br i1 %tobool.not.i.i.1, label %if.end.i.i.1, label %if.end99.pci_name.exit.1_crit_edge

if.end99.pci_name.exit.1_crit_edge:               ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #10
  br label %pci_name.exit.1

if.end.i.i.1:                                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.1 = getelementptr inbounds %struct.pci_dev, ptr %101, i32 0, i32 44
  %104 = ptrtoint ptr %dev.i.1 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %dev.i.1, align 4
  br label %pci_name.exit.1

pci_name.exit.1:                                  ; preds = %if.end.i.i.1, %if.end99.pci_name.exit.1_crit_edge
  %retval.0.i.i.1 = phi ptr [ %105, %if.end.i.i.1 ], [ %103, %if.end99.pci_name.exit.1_crit_edge ]
  %call79.1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %irq_name.1, i32 noundef 64, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, ptr noundef %retval.0.i.i.1)
  %msi_x_vector.1 = getelementptr %struct.mthca_dev, ptr %dev, i32 0, i32 22, i32 4, i32 1, i32 4
  %106 = ptrtoint ptr %msi_x_vector.1 to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %msi_x_vector.1, align 8
  %conv83.1 = zext i16 %107 to i32
  %108 = ptrtoint ptr %mthca_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %mthca_flags.i.i, align 8
  %and.i.1 = and i32 %109, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.1)
  %tobool85.not.1 = icmp eq i32 %and.i.1, 0
  %cond86.1 = select i1 %tobool85.not.1, ptr @mthca_tavor_msi_x_interrupt, ptr @mthca_arbel_msi_x_interrupt
  %add.ptr95.1 = getelementptr %struct.mthca_dev, ptr %dev, i32 0, i32 22, i32 4, i32 1
  %call.i.1 = tail call i32 @request_threaded_irq(i32 noundef %conv83.1, ptr noundef nonnull %cond86.1, ptr noundef null, i32 noundef 0, ptr noundef %irq_name.1, ptr noundef %add.ptr95.1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %tobool97.not.1 = icmp eq i32 %call.i.1, 0
  br i1 %tobool97.not.1, label %if.end99.1, label %pci_name.exit.1.err_out_cmd_crit_edge

pci_name.exit.1.err_out_cmd_crit_edge:            ; preds = %pci_name.exit.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_out_cmd

if.end99.1:                                       ; preds = %pci_name.exit.1
  %have_irq.1 = getelementptr %struct.mthca_dev, ptr %dev, i32 0, i32 22, i32 4, i32 1, i32 6
  %110 = ptrtoint ptr %have_irq.1 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 1, ptr %have_irq.1, align 4
  %irq_name.2 = getelementptr %struct.mthca_dev, ptr %dev, i32 0, i32 22, i32 4, i32 2, i32 10
  %111 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %pdev, align 8
  %init_name.i.i.2 = getelementptr inbounds %struct.pci_dev, ptr %112, i32 0, i32 44, i32 3
  %113 = ptrtoint ptr %init_name.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %init_name.i.i.2, align 8
  %tobool.not.i.i.2 = icmp eq ptr %114, null
  br i1 %tobool.not.i.i.2, label %if.end.i.i.2, label %if.end99.1.pci_name.exit.2_crit_edge

if.end99.1.pci_name.exit.2_crit_edge:             ; preds = %if.end99.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %pci_name.exit.2

if.end.i.i.2:                                     ; preds = %if.end99.1
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.2 = getelementptr inbounds %struct.pci_dev, ptr %112, i32 0, i32 44
  %115 = ptrtoint ptr %dev.i.2 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %dev.i.2, align 4
  br label %pci_name.exit.2

pci_name.exit.2:                                  ; preds = %if.end.i.i.2, %if.end99.1.pci_name.exit.2_crit_edge
  %retval.0.i.i.2 = phi ptr [ %116, %if.end.i.i.2 ], [ %114, %if.end99.1.pci_name.exit.2_crit_edge ]
  %call79.2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %irq_name.2, i32 noundef 64, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, ptr noundef %retval.0.i.i.2)
  %msi_x_vector.2 = getelementptr %struct.mthca_dev, ptr %dev, i32 0, i32 22, i32 4, i32 2, i32 4
  %117 = ptrtoint ptr %msi_x_vector.2 to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %msi_x_vector.2, align 8
  %conv83.2 = zext i16 %118 to i32
  %119 = ptrtoint ptr %mthca_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %mthca_flags.i.i, align 8
  %and.i.2 = and i32 %120, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.2)
  %tobool85.not.2 = icmp eq i32 %and.i.2, 0
  %cond86.2 = select i1 %tobool85.not.2, ptr @mthca_tavor_msi_x_interrupt, ptr @mthca_arbel_msi_x_interrupt
  %add.ptr95.2 = getelementptr %struct.mthca_dev, ptr %dev, i32 0, i32 22, i32 4, i32 2
  %call.i.2 = tail call i32 @request_threaded_irq(i32 noundef %conv83.2, ptr noundef nonnull %cond86.2, ptr noundef null, i32 noundef 0, ptr noundef %irq_name.2, ptr noundef %add.ptr95.2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2)
  %tobool97.not.2 = icmp eq i32 %call.i.2, 0
  br i1 %tobool97.not.2, label %if.end99.2, label %pci_name.exit.2.err_out_cmd_crit_edge

pci_name.exit.2.err_out_cmd_crit_edge:            ; preds = %pci_name.exit.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_out_cmd

if.end99.2:                                       ; preds = %pci_name.exit.2
  call void @__sanitizer_cov_trace_pc() #10
  %have_irq.2 = getelementptr %struct.mthca_dev, ptr %dev, i32 0, i32 22, i32 4, i32 2, i32 6
  %121 = ptrtoint ptr %have_irq.2 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 1, ptr %have_irq.2, align 4
  br label %if.end127

if.else103:                                       ; preds = %if.end67
  %irq_name107 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 22, i32 4, i32 0, i32 10
  %pdev109 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  %122 = ptrtoint ptr %pdev109 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %pdev109, align 8
  %init_name.i.i279 = getelementptr inbounds %struct.pci_dev, ptr %123, i32 0, i32 44, i32 3
  %124 = ptrtoint ptr %init_name.i.i279 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %init_name.i.i279, align 8
  %tobool.not.i.i280 = icmp eq ptr %125, null
  br i1 %tobool.not.i.i280, label %if.end.i.i282, label %if.else103.pci_name.exit284_crit_edge

if.else103.pci_name.exit284_crit_edge:            ; preds = %if.else103
  call void @__sanitizer_cov_trace_pc() #10
  br label %pci_name.exit284

if.end.i.i282:                                    ; preds = %if.else103
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i281 = getelementptr inbounds %struct.pci_dev, ptr %123, i32 0, i32 44
  %126 = ptrtoint ptr %dev.i281 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %dev.i281, align 4
  br label %pci_name.exit284

pci_name.exit284:                                 ; preds = %if.end.i.i282, %if.else103.pci_name.exit284_crit_edge
  %retval.0.i.i283 = phi ptr [ %127, %if.end.i.i282 ], [ %125, %if.else103.pci_name.exit284_crit_edge ]
  %call111 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %irq_name107, i32 noundef 64, ptr noundef nonnull @.str.4, ptr noundef %retval.0.i.i283)
  %128 = ptrtoint ptr %pdev109 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %pdev109, align 8
  %irq = getelementptr inbounds %struct.pci_dev, ptr %129, i32 0, i32 46
  %130 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %irq, align 4
  %132 = ptrtoint ptr %mthca_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %mthca_flags.i.i, align 8
  %and.i286 = and i32 %133, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i286)
  %tobool114.not = icmp eq i32 %and.i286, 0
  %cond115 = select i1 %tobool114.not, ptr @mthca_tavor_interrupt, ptr @mthca_arbel_interrupt
  %call.i287 = tail call i32 @request_threaded_irq(i32 noundef %131, ptr noundef nonnull %cond115, ptr noundef null, i32 noundef 128, ptr noundef %irq_name107, ptr noundef %dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i287)
  %tobool122.not = icmp eq i32 %call.i287, 0
  br i1 %tobool122.not, label %if.end124, label %pci_name.exit284.err_out_cmd_crit_edge

pci_name.exit284.err_out_cmd_crit_edge:           ; preds = %pci_name.exit284
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_out_cmd

if.end124:                                        ; preds = %pci_name.exit284
  call void @__sanitizer_cov_trace_pc() #10
  %have_irq126 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 22, i32 8
  %134 = ptrtoint ptr %have_irq126 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 1, ptr %have_irq126, align 8
  br label %if.end127

if.end127:                                        ; preds = %if.end124, %if.end99.2
  %135 = ptrtoint ptr %mthca_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %mthca_flags.i.i, align 8
  %and.i289 = and i32 %136, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i289)
  %tobool.not.i290 = icmp eq i32 %and.i289, 0
  %cond.i291 = select i1 %tobool.not.i290, i64 214014, i64 2049022
  %eqn = getelementptr %struct.mthca_dev, ptr %dev, i32 0, i32 22, i32 4, i32 1, i32 1
  %137 = ptrtoint ptr %eqn to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %eqn, align 4
  %call132 = tail call i32 @mthca_MAP_EQ(ptr noundef %dev, i64 noundef %cond.i291, i32 noundef 0, i32 noundef %138) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call132)
  %tobool133.not = icmp eq i32 %call132, 0
  br i1 %tobool133.not, label %if.end127.if.end141_crit_edge, label %do.end

if.end127.if.end141_crit_edge:                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end141

do.end:                                           ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #10
  %pdev135 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  %139 = ptrtoint ptr %pdev135 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %pdev135, align 8
  %dev136 = getelementptr inbounds %struct.pci_dev, ptr %140, i32 0, i32 44
  %141 = ptrtoint ptr %eqn to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %eqn, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev136, ptr noundef nonnull @.str.5, i32 noundef %142, i32 noundef %call132) #11
  br label %if.end141

if.end141:                                        ; preds = %do.end, %if.end127.if.end141_crit_edge
  %eqn145 = getelementptr %struct.mthca_dev, ptr %dev, i32 0, i32 22, i32 4, i32 0, i32 1
  %143 = ptrtoint ptr %eqn145 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %eqn145, align 4
  %call146 = tail call i32 @mthca_MAP_EQ(ptr noundef %dev, i64 noundef 1024, i32 noundef 0, i32 noundef %144) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146)
  %tobool147.not = icmp eq i32 %call146, 0
  br i1 %tobool147.not, label %if.end141.if.end158_crit_edge, label %do.end151

if.end141.if.end158_crit_edge:                    ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end158

do.end151:                                        ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #10
  %pdev152 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  %145 = ptrtoint ptr %pdev152 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %pdev152, align 8
  %dev153 = getelementptr inbounds %struct.pci_dev, ptr %146, i32 0, i32 44
  %147 = ptrtoint ptr %eqn145 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %eqn145, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev153, ptr noundef nonnull @.str.11, i32 noundef %148, i32 noundef %call146) #11
  br label %if.end158

if.end158:                                        ; preds = %do.end151, %if.end141.if.end158_crit_edge
  %eq_regs.i294 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 16
  %kar.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 14
  %doorbell_lock.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 11
  %149 = ptrtoint ptr %mthca_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %mthca_flags.i.i, align 8
  %and.i293 = and i32 %150, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i293)
  %tobool164.not = icmp eq i32 %and.i293, 0
  br i1 %tobool164.not, label %if.else169, label %if.then165

if.then165:                                       ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #10
  %eqn_mask = getelementptr %struct.mthca_dev, ptr %dev, i32 0, i32 22, i32 4, i32 0, i32 2
  %151 = ptrtoint ptr %eqn_mask to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %eqn_mask, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !94
  tail call void @arm_heavy_mb() #8
  %153 = tail call i32 @llvm.bswap.i32(i32 %152) #8
  %154 = ptrtoint ptr %eq_regs.i294 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %eq_regs.i294, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %155, i32 %153) #8, !srcloc !95
  br label %for.inc175

if.else169:                                       ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #10
  %156 = ptrtoint ptr %eqn145 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %eqn145, align 4
  %or.i = or i32 %157, 33554432
  %158 = ptrtoint ptr %kar.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %kar.i, align 4
  %add.ptr.i = getelementptr i8, ptr %159, i32 40
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %doorbell_lock.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %or.i) #8, !srcloc !95
  %add.ptr.i.i = getelementptr i8, ptr %159, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #8, !srcloc !95
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %doorbell_lock.i, i32 noundef %call2.i.i) #8
  br label %for.inc175

for.inc175:                                       ; preds = %if.else169, %if.then165
  %160 = ptrtoint ptr %mthca_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %mthca_flags.i.i, align 8
  %and.i293.1 = and i32 %161, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i293.1)
  %tobool164.not.1 = icmp eq i32 %and.i293.1, 0
  br i1 %tobool164.not.1, label %if.else169.1, label %if.then165.1

if.then165.1:                                     ; preds = %for.inc175
  call void @__sanitizer_cov_trace_pc() #10
  %eqn_mask.1 = getelementptr %struct.mthca_dev, ptr %dev, i32 0, i32 22, i32 4, i32 1, i32 2
  %162 = ptrtoint ptr %eqn_mask.1 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %eqn_mask.1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !94
  tail call void @arm_heavy_mb() #8
  %164 = tail call i32 @llvm.bswap.i32(i32 %163) #8
  %165 = ptrtoint ptr %eq_regs.i294 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %eq_regs.i294, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %166, i32 %164) #8, !srcloc !95
  br label %for.inc175.1

if.else169.1:                                     ; preds = %for.inc175
  call void @__sanitizer_cov_trace_pc() #10
  %167 = ptrtoint ptr %eqn to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %eqn, align 4
  %or.i.1 = or i32 %168, 33554432
  %169 = ptrtoint ptr %kar.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %kar.i, align 4
  %add.ptr.i.1 = getelementptr i8, ptr %170, i32 40
  %call2.i.i.1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %doorbell_lock.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.1, i32 %or.i.1) #8, !srcloc !95
  %add.ptr.i.i.1 = getelementptr i8, ptr %170, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.1, i32 0) #8, !srcloc !95
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %doorbell_lock.i, i32 noundef %call2.i.i.1) #8
  br label %for.inc175.1

for.inc175.1:                                     ; preds = %if.else169.1, %if.then165.1
  %171 = ptrtoint ptr %mthca_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %mthca_flags.i.i, align 8
  %and.i293.2 = and i32 %172, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i293.2)
  %tobool164.not.2 = icmp eq i32 %and.i293.2, 0
  br i1 %tobool164.not.2, label %if.else169.2, label %if.then165.2

if.then165.2:                                     ; preds = %for.inc175.1
  call void @__sanitizer_cov_trace_pc() #10
  %eqn_mask.2 = getelementptr %struct.mthca_dev, ptr %dev, i32 0, i32 22, i32 4, i32 2, i32 2
  %173 = ptrtoint ptr %eqn_mask.2 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %eqn_mask.2, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !94
  tail call void @arm_heavy_mb() #8
  %175 = tail call i32 @llvm.bswap.i32(i32 %174) #8
  %176 = ptrtoint ptr %eq_regs.i294 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %eq_regs.i294, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %177, i32 %175) #8, !srcloc !95
  br label %cleanup

if.else169.2:                                     ; preds = %for.inc175.1
  call void @__sanitizer_cov_trace_pc() #10
  %eqn173.2 = getelementptr %struct.mthca_dev, ptr %dev, i32 0, i32 22, i32 4, i32 2, i32 1
  %178 = ptrtoint ptr %eqn173.2 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %eqn173.2, align 4
  %or.i.2 = or i32 %179, 33554432
  %180 = ptrtoint ptr %kar.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %kar.i, align 4
  %add.ptr.i.2 = getelementptr i8, ptr %181, i32 40
  %call2.i.i.2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %doorbell_lock.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.2, i32 %or.i.2) #8, !srcloc !95
  %add.ptr.i.i.2 = getelementptr i8, ptr %181, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.2, i32 0) #8, !srcloc !95
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %doorbell_lock.i, i32 noundef %call2.i.i.2) #8
  br label %cleanup

err_out_cmd:                                      ; preds = %pci_name.exit284.err_out_cmd_crit_edge, %pci_name.exit.2.err_out_cmd_crit_edge, %pci_name.exit.1.err_out_cmd_crit_edge, %pci_name.exit.err_out_cmd_crit_edge
  %err.0 = phi i32 [ %call.i287, %pci_name.exit284.err_out_cmd_crit_edge ], [ %call.i, %pci_name.exit.err_out_cmd_crit_edge ], [ %call.i.1, %pci_name.exit.1.err_out_cmd_crit_edge ], [ %call.i.2, %pci_name.exit.2.err_out_cmd_crit_edge ]
  tail call fastcc void @mthca_free_irqs(ptr noundef %dev)
  tail call fastcc void @mthca_free_eq(ptr noundef %dev, ptr noundef %eq)
  br label %err_out_async

err_out_async:                                    ; preds = %err_out_cmd, %if.end51.err_out_async_crit_edge
  %err.1 = phi i32 [ %call64, %if.end51.err_out_async_crit_edge ], [ %err.0, %err_out_cmd ]
  tail call fastcc void @mthca_free_eq(ptr noundef %dev, ptr noundef %arrayidx47)
  br label %err_out_comp

err_out_comp:                                     ; preds = %err_out_async, %if.end35.err_out_comp_crit_edge
  %err.2 = phi i32 [ %call48, %if.end35.err_out_comp_crit_edge ], [ %err.1, %err_out_async ]
  tail call fastcc void @mthca_free_eq(ptr noundef %dev, ptr noundef %arrayidx)
  br label %err_out_unmap

err_out_unmap:                                    ; preds = %err_out_comp, %if.end20.err_out_unmap_crit_edge
  %err.3 = phi i32 [ %call32, %if.end20.err_out_unmap_crit_edge ], [ %err.2, %err_out_comp ]
  %182 = ptrtoint ptr %mthca_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %mthca_flags.i.i, align 8
  %and.i.i296 = and i32 %183, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i296)
  %tobool.not.i297 = icmp eq i32 %and.i.i296, 0
  br i1 %tobool.not.i297, label %err_out_unmap.mthca_unmap_eq_regs.exit_crit_edge, label %if.then.i299

err_out_unmap.mthca_unmap_eq_regs.exit_crit_edge: ; preds = %err_out_unmap
  call void @__sanitizer_cov_trace_pc() #10
  br label %mthca_unmap_eq_regs.exit

if.then.i299:                                     ; preds = %err_out_unmap
  call void @__sanitizer_cov_trace_pc() #10
  %eq_set_ci_base.i298 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 16, i32 0, i32 1
  %184 = ptrtoint ptr %eq_set_ci_base.i298 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %eq_set_ci_base.i298, align 4
  tail call void @iounmap(ptr noundef %185) #8
  br label %mthca_unmap_eq_regs.exit

mthca_unmap_eq_regs.exit:                         ; preds = %if.then.i299, %err_out_unmap.mthca_unmap_eq_regs.exit_crit_edge
  %eq_regs2.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 16
  %186 = ptrtoint ptr %eq_regs2.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %eq_regs2.i, align 4
  tail call void @iounmap(ptr noundef %187) #8
  %clr_base3.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 15
  %188 = ptrtoint ptr %clr_base3.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %clr_base3.i, align 8
  tail call void @iounmap(ptr noundef %189) #8
  br label %err_out_free

err_out_free:                                     ; preds = %mthca_unmap_eq_regs.exit, %do.end102.i, %do.end93.i, %do.end81.i, %do.end45.i, %do.end.i
  %err.4 = phi i32 [ %err.3, %mthca_unmap_eq_regs.exit ], [ -12, %do.end.i ], [ -12, %do.end45.i ], [ -12, %do.end81.i ], [ -12, %do.end93.i ], [ -12, %do.end102.i ]
  tail call void @mthca_alloc_cleanup(ptr noundef %eq_table) #8
  br label %cleanup

cleanup:                                          ; preds = %err_out_free, %if.else169.2, %if.then165.2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.4, %err_out_free ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.else169.2 ], [ 0, %if.then165.2 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_alloc_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mthca_create_eq(ptr noundef %dev, i32 noundef %nent, i8 noundef zeroext %intr, ptr noundef %eq) unnamed_addr #0 align 64 {
entry:
  %t = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t) #8
  %0 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %t, align 4, !annotation !96
  %1 = ptrtoint ptr %eq to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %eq, align 8
  %2 = tail call i32 @llvm.smax.i32(i32 %nent, i32 2)
  %sub = add nsw i32 %2, -1
  %3 = tail call i32 @llvm.ctlz.i32(i32 %sub, i1 true) #8, !range !97
  %sub.i.i.i = sub nuw nsw i32 32, %3
  %cond74 = shl nuw i32 1, %sub.i.i.i
  %nent75 = getelementptr inbounds %struct.mthca_eq, ptr %eq, i32 0, i32 7
  %4 = ptrtoint ptr %nent75 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %cond74, ptr %nent75, align 8
  %mul = shl i32 %cond74, 5
  %add77 = add i32 %mul, 4095
  %div327 = lshr i32 %add77, 12
  %5 = shl nuw nsw i32 %div327, 3
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %5, i32 noundef 3264) #12
  %page_list = getelementptr inbounds %struct.mthca_eq, ptr %eq, i32 0, i32 8
  %6 = ptrtoint ptr %page_list to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call8.i, ptr %page_list, align 4
  %tobool.not = icmp eq ptr %call8.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add77)
  %cmp80384.not = icmp ult i32 %add77, 4096
  br i1 %cmp80384.not, label %for.cond.preheader.if.end7.i365_crit_edge, label %for.body.preheader

for.cond.preheader.if.end7.i365_crit_edge:        ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i365

for.body.preheader:                               ; preds = %for.cond.preheader
  %umax = call i32 @llvm.umax.i32(i32 %div327, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.0385 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %7 = ptrtoint ptr %page_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %page_list, align 4
  %arrayidx = getelementptr %struct.mthca_buf_list, ptr %8, i32 %i.0385
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.0385, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.body.if.end7.i365_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.if.end7.i365_crit_edge:                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i365

if.end7.i365:                                     ; preds = %for.body.if.end7.i365_crit_edge, %for.cond.preheader.if.end7.i365_crit_edge
  %cmp80384.not409 = phi i1 [ true, %for.cond.preheader.if.end7.i365_crit_edge ], [ %cmp80384.not, %for.body.if.end7.i365_crit_edge ]
  %call8.i364 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %5, i32 noundef 3264) #12
  %tobool84.not = icmp eq ptr %call8.i364, null
  br i1 %tobool84.not, label %if.end7.i365.err_out_free_crit_edge, label %if.end86

if.end7.i365.err_out_free_crit_edge:              ; preds = %if.end7.i365
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_out_free

if.end86:                                         ; preds = %if.end7.i365
  %call87 = tail call ptr @mthca_alloc_mailbox(ptr noundef %dev, i32 noundef 3264) #8
  %cmp.i = icmp ugt ptr %call87, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end86.err_out_free_crit_edge, label %if.end90

if.end86.err_out_free_crit_edge:                  ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_out_free

if.end90:                                         ; preds = %if.end86
  %buf91 = getelementptr inbounds %struct.mthca_mailbox, ptr %call87, i32 0, i32 1
  %10 = ptrtoint ptr %buf91 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %buf91, align 4
  br i1 %cmp80384.not409, label %if.end90.for.cond117.preheader_crit_edge, label %for.body95.lr.ph

if.end90.for.cond117.preheader_crit_edge:         ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond117.preheader

for.body95.lr.ph:                                 ; preds = %if.end90
  %pdev = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  %umax393 = call i32 @llvm.umax.i32(i32 %div327, i32 1)
  br label %for.body95

for.cond117.preheader:                            ; preds = %if.end106.for.cond117.preheader_crit_edge, %if.end90.for.cond117.preheader_crit_edge
  %12 = ptrtoint ptr %nent75 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nent75, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp119388 = icmp sgt i32 %13, 0
  br i1 %cmp119388, label %for.cond117.preheader.for.body121_crit_edge, label %for.cond117.preheader.for.end125_crit_edge

for.cond117.preheader.for.end125_crit_edge:       ; preds = %for.cond117.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end125

for.cond117.preheader.for.body121_crit_edge:      ; preds = %for.cond117.preheader
  br label %for.body121

for.body95:                                       ; preds = %if.end106.for.body95_crit_edge, %for.body95.lr.ph
  %i.1387 = phi i32 [ 0, %for.body95.lr.ph ], [ %inc115, %if.end106.for.body95_crit_edge ]
  %14 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev, align 8
  %dev96 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %dev96, i32 noundef 4096, ptr noundef nonnull %t, i32 noundef 3264, i32 noundef 0) #8
  %16 = ptrtoint ptr %page_list to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %page_list, align 4
  %arrayidx99 = getelementptr %struct.mthca_buf_list, ptr %17, i32 %i.1387
  %18 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i, ptr %arrayidx99, align 4
  %19 = load ptr, ptr %page_list, align 4
  %arrayidx102 = getelementptr %struct.mthca_buf_list, ptr %19, i32 %i.1387
  %20 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx102, align 4
  %tobool104.not = icmp eq ptr %21, null
  br i1 %tobool104.not, label %for.body95.err_out_free_pages_crit_edge, label %if.end106

for.body95.err_out_free_pages_crit_edge:          ; preds = %for.body95
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_out_free_pages

if.end106:                                        ; preds = %for.body95
  %22 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %t, align 4
  %conv107 = zext i32 %23 to i64
  %arrayidx108 = getelementptr i64, ptr %call8.i364, i32 %i.1387
  %24 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %conv107, ptr %arrayidx108, align 8
  %25 = ptrtoint ptr %page_list to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %page_list, align 4
  %mapping = getelementptr %struct.mthca_buf_list, ptr %26, i32 %i.1387, i32 1
  %27 = ptrtoint ptr %mapping to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %23, ptr %mapping, align 4
  %28 = load ptr, ptr %page_list, align 4
  %arrayidx112 = getelementptr %struct.mthca_buf_list, ptr %28, i32 %i.1387
  %29 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx112, align 4
  %31 = call ptr @memset(ptr %30, i32 0, i32 4096)
  %inc115 = add nuw nsw i32 %i.1387, 1
  %exitcond394.not = icmp eq i32 %inc115, %umax393
  br i1 %exitcond394.not, label %if.end106.for.cond117.preheader_crit_edge, label %if.end106.for.body95_crit_edge

if.end106.for.body95_crit_edge:                   ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body95

if.end106.for.cond117.preheader_crit_edge:        ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond117.preheader

for.body121:                                      ; preds = %for.body121.for.body121_crit_edge, %for.cond117.preheader.for.body121_crit_edge
  %32 = phi i32 [ %39, %for.body121.for.body121_crit_edge ], [ %13, %for.cond117.preheader.for.body121_crit_edge ]
  %i.2389 = phi i32 [ %inc124, %for.body121.for.body121_crit_edge ], [ 0, %for.cond117.preheader.for.body121_crit_edge ]
  %sub.i368 = add i32 %32, 134217727
  %and.i = and i32 %sub.i368, %i.2389
  %mul.i = shl i32 %and.i, 5
  %33 = ptrtoint ptr %page_list to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %page_list, align 4
  %div4.i = lshr i32 %mul.i, 12
  %arrayidx.i = getelementptr %struct.mthca_buf_list, ptr %34, i32 %div4.i
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx.i, align 4
  %rem.i = and i32 %mul.i, 4064
  %add.ptr.i = getelementptr i8, ptr %36, i32 %rem.i
  %owner.i = getelementptr inbounds %struct.mthca_eqe, ptr %add.ptr.i, i32 0, i32 6
  %37 = ptrtoint ptr %owner.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 -128, ptr %owner.i, align 1
  %inc124 = add nuw nsw i32 %i.2389, 1
  %38 = ptrtoint ptr %nent75 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %nent75, align 8
  %cmp119 = icmp slt i32 %inc124, %39
  br i1 %cmp119, label %for.body121.for.body121_crit_edge, label %for.body121.for.end125_crit_edge

for.body121.for.end125_crit_edge:                 ; preds = %for.body121
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end125

for.body121.for.body121_crit_edge:                ; preds = %for.body121
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body121

for.end125:                                       ; preds = %for.body121.for.end125_crit_edge, %for.cond117.preheader.for.end125_crit_edge
  %eq_table = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 22
  %call126 = call i32 @mthca_alloc(ptr noundef %eq_table) #8
  %eqn = getelementptr inbounds %struct.mthca_eq, ptr %eq, i32 0, i32 1
  %40 = ptrtoint ptr %eqn to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %call126, ptr %eqn, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call126)
  %cmp128 = icmp eq i32 %call126, -1
  br i1 %cmp128, label %for.end125.err_out_free_pages_crit_edge, label %if.end131

for.end125.err_out_free_pages_crit_edge:          ; preds = %for.end125
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_out_free_pages

if.end131:                                        ; preds = %for.end125
  %pd_num = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 31, i32 1
  %41 = ptrtoint ptr %pd_num to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %pd_num, align 8
  %mul132 = and i32 %add77, -4096
  %conv133 = zext i32 %mul132 to i64
  %mr = getelementptr inbounds %struct.mthca_eq, ptr %eq, i32 0, i32 9
  %call134 = call i32 @mthca_mr_alloc_phys(ptr noundef %dev, i32 noundef %42, ptr noundef nonnull %call8.i364, i32 noundef 12, i32 noundef %div327, i64 noundef 0, i64 noundef %conv133, i32 noundef 3072, ptr noundef %mr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134)
  %tobool135.not = icmp eq i32 %call134, 0
  br i1 %tobool135.not, label %if.end137, label %if.end131.err_out_free_eq_crit_edge

if.end131.err_out_free_eq_crit_edge:              ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_out_free_eq

if.end137:                                        ; preds = %if.end131
  %43 = getelementptr inbounds i8, ptr %11, i32 4
  %44 = call ptr @memset(ptr %43, i32 0, i32 60)
  %45 = ptrtoint ptr %11 to i32
  call void @__asan_storeN_noabort(i32 %45, i32 4)
  store i32 17039616, ptr %11, align 1
  %mthca_flags.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 3
  %46 = ptrtoint ptr %mthca_flags.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %mthca_flags.i, align 8
  %and.i369 = and i32 %47, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i369)
  %tobool139.not = icmp eq i32 %and.i369, 0
  %spec.store.select = select i1 %tobool139.not, i32 17039616, i32 17041664
  %48 = ptrtoint ptr %11 to i32
  call void @__asan_storeN_noabort(i32 %48, i32 4)
  store i32 %spec.store.select, ptr %11, align 1
  %49 = ptrtoint ptr %nent75 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %nent75, align 8
  %51 = call i32 @llvm.cttz.i32(i32 %50, i1 true), !range !97
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %iszero = icmp eq i32 %50, 0
  %.op = shl nuw nsw i32 %51, 24
  %shl145 = select i1 %iszero, i32 -16777216, i32 %.op
  %logsize_usrpage = getelementptr inbounds %struct.mthca_eq_context, ptr %11, i32 0, i32 2
  %52 = ptrtoint ptr %logsize_usrpage to i32
  call void @__asan_storeN_noabort(i32 %52, i32 4)
  store i32 %shl145, ptr %logsize_usrpage, align 1
  %53 = ptrtoint ptr %mthca_flags.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %mthca_flags.i, align 8
  %and.i371 = and i32 %54, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i371)
  %tobool147.not = icmp eq i32 %and.i371, 0
  br i1 %tobool147.not, label %if.else, label %if.then148

if.then148:                                       ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #10
  %55 = ptrtoint ptr %pd_num to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %pd_num, align 8
  %arbel_pd = getelementptr inbounds %struct.mthca_eq_context, ptr %11, i32 0, i32 6
  %57 = ptrtoint ptr %arbel_pd to i32
  call void @__asan_storeN_noabort(i32 %57, i32 4)
  store i32 %56, ptr %arbel_pd, align 1
  br label %if.end155

if.else:                                          ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #10
  %index = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 29, i32 1
  %58 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %index, align 4
  %or152 = or i32 %59, %shl145
  %60 = ptrtoint ptr %logsize_usrpage to i32
  call void @__asan_storeN_noabort(i32 %60, i32 4)
  store i32 %or152, ptr %logsize_usrpage, align 1
  %61 = ptrtoint ptr %pd_num to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %pd_num, align 8
  %tavor_pd = getelementptr inbounds %struct.mthca_eq_context, ptr %11, i32 0, i32 3
  %63 = ptrtoint ptr %tavor_pd to i32
  call void @__asan_storeN_noabort(i32 %63, i32 4)
  store i32 %62, ptr %tavor_pd, align 1
  br label %if.end155

if.end155:                                        ; preds = %if.else, %if.then148
  %intr156 = getelementptr inbounds %struct.mthca_eq_context, ptr %11, i32 0, i32 5
  %64 = ptrtoint ptr %intr156 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %intr, ptr %intr156, align 1
  %lkey = getelementptr inbounds %struct.mthca_eq, ptr %eq, i32 0, i32 9, i32 0, i32 2
  %65 = ptrtoint ptr %lkey to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %lkey, align 8
  %lkey158 = getelementptr inbounds %struct.mthca_eq_context, ptr %11, i32 0, i32 7
  %67 = ptrtoint ptr %lkey158 to i32
  call void @__asan_storeN_noabort(i32 %67, i32 4)
  store i32 %66, ptr %lkey158, align 1
  %68 = ptrtoint ptr %eqn to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %eqn, align 4
  %call160 = call i32 @mthca_SW2HW_EQ(ptr noundef %dev, ptr noundef %call87, i32 noundef %69) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call160)
  %tobool161.not = icmp eq i32 %call160, 0
  br i1 %tobool161.not, label %if.end165, label %do.end

do.end:                                           ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #10
  %pdev163 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  %70 = ptrtoint ptr %pdev163 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pdev163, align 8
  %dev164 = getelementptr inbounds %struct.pci_dev, ptr %71, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev164, ptr noundef nonnull @.str.28, i32 noundef %call160) #11
  call void @mthca_free_mr(ptr noundef %dev, ptr noundef %mr) #8
  br label %err_out_free_eq

if.end165:                                        ; preds = %if.end155
  call void @kfree(ptr noundef nonnull %call8.i364) #8
  call void @mthca_free_mailbox(ptr noundef %dev, ptr noundef %call87) #8
  %72 = ptrtoint ptr %eqn to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %eqn, align 4
  %shl167 = shl nuw i32 1, %73
  %74 = call i32 @llvm.bswap.i32(i32 %shl167)
  %eqn_mask = getelementptr inbounds %struct.mthca_eq, ptr %eq, i32 0, i32 2
  %75 = ptrtoint ptr %eqn_mask to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %eqn_mask, align 8
  %cons_index = getelementptr inbounds %struct.mthca_eq, ptr %eq, i32 0, i32 3
  %76 = ptrtoint ptr %cons_index to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %cons_index, align 4
  %arm_mask = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 22, i32 3
  %77 = ptrtoint ptr %arm_mask to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arm_mask, align 8
  %or170 = or i32 %78, %74
  store i32 %or170, ptr %arm_mask, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mthca_debug_level to i32))
  %79 = load i32, ptr @mthca_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool172.not = icmp eq i32 %79, 0
  br i1 %tobool172.not, label %if.end165.cleanup_crit_edge, label %do.end176

if.end165.cleanup_crit_edge:                      ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end176:                                        ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #10
  %pdev177 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  %80 = ptrtoint ptr %pdev177 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %pdev177, align 8
  %dev178 = getelementptr inbounds %struct.pci_dev, ptr %81, i32 0, i32 44
  %82 = ptrtoint ptr %eqn to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %eqn, align 4
  %84 = ptrtoint ptr %nent75 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %nent75, align 8
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.32, ptr noundef %dev178, ptr noundef nonnull @.str.31, i32 noundef %83, i32 noundef %85) #11
  br label %cleanup

err_out_free_eq:                                  ; preds = %do.end, %if.end131.err_out_free_eq_crit_edge
  %err.0 = phi i32 [ %call134, %if.end131.err_out_free_eq_crit_edge ], [ %call160, %do.end ]
  %86 = ptrtoint ptr %eqn to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %eqn, align 4
  call void @mthca_free(ptr noundef %eq_table, i32 noundef %87) #8
  br label %err_out_free_pages

err_out_free_pages:                               ; preds = %err_out_free_eq, %for.end125.err_out_free_pages_crit_edge, %for.body95.err_out_free_pages_crit_edge
  %err.1 = phi i32 [ -12, %for.end125.err_out_free_pages_crit_edge ], [ %err.0, %err_out_free_eq ], [ -12, %for.body95.err_out_free_pages_crit_edge ]
  br i1 %cmp80384.not409, label %err_out_free_pages.for.end208_crit_edge, label %for.body191.lr.ph

err_out_free_pages.for.end208_crit_edge:          ; preds = %err_out_free_pages
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end208

for.body191.lr.ph:                                ; preds = %err_out_free_pages
  %pdev197 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  %umax395 = call i32 @llvm.umax.i32(i32 %div327, i32 1)
  br label %for.body191

for.body191:                                      ; preds = %for.inc206.for.body191_crit_edge, %for.body191.lr.ph
  %i.3391 = phi i32 [ 0, %for.body191.lr.ph ], [ %inc207, %for.inc206.for.body191_crit_edge ]
  %88 = ptrtoint ptr %page_list to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %page_list, align 4
  %arrayidx193 = getelementptr %struct.mthca_buf_list, ptr %89, i32 %i.3391
  %90 = ptrtoint ptr %arrayidx193 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %arrayidx193, align 4
  %tobool195.not = icmp eq ptr %91, null
  br i1 %tobool195.not, label %for.body191.for.inc206_crit_edge, label %if.then196

for.body191.for.inc206_crit_edge:                 ; preds = %for.body191
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc206

if.then196:                                       ; preds = %for.body191
  call void @__sanitizer_cov_trace_pc() #10
  %92 = ptrtoint ptr %pdev197 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %pdev197, align 8
  %dev198 = getelementptr inbounds %struct.pci_dev, ptr %93, i32 0, i32 44
  %mapping204 = getelementptr %struct.mthca_buf_list, ptr %89, i32 %i.3391, i32 1
  %94 = ptrtoint ptr %mapping204 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %mapping204, align 4
  call void @dma_free_attrs(ptr noundef %dev198, i32 noundef 4096, ptr noundef nonnull %91, i32 noundef %95, i32 noundef 0) #8
  br label %for.inc206

for.inc206:                                       ; preds = %if.then196, %for.body191.for.inc206_crit_edge
  %inc207 = add nuw nsw i32 %i.3391, 1
  %exitcond396.not = icmp eq i32 %inc207, %umax395
  br i1 %exitcond396.not, label %for.inc206.for.end208_crit_edge, label %for.inc206.for.body191_crit_edge

for.inc206.for.body191_crit_edge:                 ; preds = %for.inc206
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body191

for.inc206.for.end208_crit_edge:                  ; preds = %for.inc206
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end208

for.end208:                                       ; preds = %for.inc206.for.end208_crit_edge, %err_out_free_pages.for.end208_crit_edge
  call void @mthca_free_mailbox(ptr noundef %dev, ptr noundef %call87) #8
  br label %err_out_free

err_out_free:                                     ; preds = %for.end208, %if.end86.err_out_free_crit_edge, %if.end7.i365.err_out_free_crit_edge
  %retval.0.i366379 = phi ptr [ %call8.i364, %if.end86.err_out_free_crit_edge ], [ %call8.i364, %for.end208 ], [ null, %if.end7.i365.err_out_free_crit_edge ]
  %err.2 = phi i32 [ -12, %if.end86.err_out_free_crit_edge ], [ %err.1, %for.end208 ], [ -12, %if.end7.i365.err_out_free_crit_edge ]
  %96 = ptrtoint ptr %page_list to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %page_list, align 4
  call void @kfree(ptr noundef %97) #8
  call void @kfree(ptr noundef %retval.0.i366379) #8
  br label %cleanup

cleanup:                                          ; preds = %err_out_free, %do.end176, %if.end165.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end176 ], [ 0, %if.end165.cleanup_crit_edge ], [ %err.2, %err_out_free ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t) #8
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mthca_arbel_msi_x_interrupt(i32 noundef %irq, ptr nocapture noundef %eq_ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %eq_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %eq_ptr, align 8
  %call = tail call fastcc i32 @mthca_eq_int(ptr noundef %1, ptr noundef %eq_ptr)
  %cons_index = getelementptr inbounds %struct.mthca_eq, ptr %eq_ptr, i32 0, i32 3
  %2 = ptrtoint ptr %cons_index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cons_index, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  tail call void @arm_heavy_mb() #8
  %eq_set_ci_base.i = getelementptr inbounds %struct.mthca_dev, ptr %1, i32 0, i32 16, i32 0, i32 1
  %4 = ptrtoint ptr %eq_set_ci_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %eq_set_ci_base.i, align 4
  %eqn.i = getelementptr inbounds %struct.mthca_eq, ptr %eq_ptr, i32 0, i32 1
  %6 = ptrtoint ptr %eqn.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %eqn.i, align 4
  %mul.i = shl i32 %7, 3
  %add.ptr.i = getelementptr i8, ptr %5, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %3) #8, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !99
  tail call void @arm_heavy_mb() #8
  %eqn_mask = getelementptr inbounds %struct.mthca_eq, ptr %eq_ptr, i32 0, i32 2
  %8 = ptrtoint ptr %eqn_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %eqn_mask, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !94
  tail call void @arm_heavy_mb() #8
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #8
  %eq_regs.i = getelementptr inbounds %struct.mthca_dev, ptr %1, i32 0, i32 16
  %11 = ptrtoint ptr %eq_regs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %eq_regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #8, !srcloc !95
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mthca_tavor_msi_x_interrupt(i32 noundef %irq, ptr nocapture noundef %eq_ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %eq_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %eq_ptr, align 8
  %call = tail call fastcc i32 @mthca_eq_int(ptr noundef %1, ptr noundef %eq_ptr)
  %cons_index = getelementptr inbounds %struct.mthca_eq, ptr %eq_ptr, i32 0, i32 3
  %2 = ptrtoint ptr %cons_index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cons_index, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !100
  tail call void @arm_heavy_mb() #8
  %eqn.i = getelementptr inbounds %struct.mthca_eq, ptr %eq_ptr, i32 0, i32 1
  %4 = ptrtoint ptr %eqn.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %eqn.i, align 4
  %or.i = or i32 %5, 67108864
  %nent.i = getelementptr inbounds %struct.mthca_eq, ptr %eq_ptr, i32 0, i32 7
  %6 = ptrtoint ptr %nent.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nent.i, align 8
  %sub.i = add i32 %7, -1
  %and.i = and i32 %sub.i, %3
  %kar.i = getelementptr inbounds %struct.mthca_dev, ptr %1, i32 0, i32 14
  %8 = ptrtoint ptr %kar.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %kar.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 40
  %doorbell_lock.i = getelementptr inbounds %struct.mthca_dev, ptr %1, i32 0, i32 11
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %doorbell_lock.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %or.i) #8, !srcloc !95
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %and.i) #8, !srcloc !95
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %doorbell_lock.i, i32 noundef %call2.i.i) #8
  %10 = ptrtoint ptr %eqn.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %eqn.i, align 4
  %or.i8 = or i32 %11, 33554432
  %12 = ptrtoint ptr %kar.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %kar.i, align 4
  %add.ptr.i10 = getelementptr i8, ptr %13, i32 40
  %call2.i.i12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %doorbell_lock.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10, i32 %or.i8) #8, !srcloc !95
  %add.ptr.i.i13 = getelementptr i8, ptr %13, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i13, i32 0) #8, !srcloc !95
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %doorbell_lock.i, i32 noundef %call2.i.i12) #8
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mthca_arbel_interrupt(i32 noundef %irq, ptr noundef %dev_ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %clr_mask = getelementptr inbounds %struct.mthca_dev, ptr %dev_ptr, i32 0, i32 22, i32 2
  %0 = ptrtoint ptr %clr_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %clr_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !101
  tail call void @arm_heavy_mb() #8
  %2 = ptrtoint ptr %clr_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %clr_mask, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %clr_int = getelementptr inbounds %struct.mthca_dev, ptr %dev_ptr, i32 0, i32 22, i32 1
  %5 = ptrtoint ptr %clr_int to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clr_int, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %4) #8, !srcloc !95
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  %eq_set_ci_base.i = getelementptr inbounds %struct.mthca_dev, ptr %dev_ptr, i32 0, i32 16, i32 0, i32 1
  %arrayidx = getelementptr %struct.mthca_dev, ptr %dev_ptr, i32 0, i32 22, i32 4, i32 0
  %call = tail call fastcc i32 @mthca_eq_int(ptr noundef %dev_ptr, ptr noundef %arrayidx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %if.end.for.inc_crit_edge, label %if.then6

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %cons_index = getelementptr %struct.mthca_dev, ptr %dev_ptr, i32 0, i32 22, i32 4, i32 0, i32 3
  %7 = ptrtoint ptr %cons_index to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cons_index, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  tail call void @arm_heavy_mb() #8
  %9 = ptrtoint ptr %eq_set_ci_base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %eq_set_ci_base.i, align 4
  %eqn.i = getelementptr %struct.mthca_dev, ptr %dev_ptr, i32 0, i32 22, i32 4, i32 0, i32 1
  %11 = ptrtoint ptr %eqn.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %eqn.i, align 4
  %mul.i = shl i32 %12, 3
  %add.ptr.i = getelementptr i8, ptr %10, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %8) #8, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !99
  tail call void @arm_heavy_mb() #8
  br label %for.inc

for.inc:                                          ; preds = %if.then6, %if.end.for.inc_crit_edge
  %work.1 = phi i32 [ 1, %if.then6 ], [ 0, %if.end.for.inc_crit_edge ]
  %arrayidx.1 = getelementptr %struct.mthca_dev, ptr %dev_ptr, i32 0, i32 22, i32 4, i32 1
  %call.1 = tail call fastcc i32 @mthca_eq_int(ptr noundef %dev_ptr, ptr noundef %arrayidx.1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool5.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool5.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then6.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

if.then6.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  %cons_index.1 = getelementptr %struct.mthca_dev, ptr %dev_ptr, i32 0, i32 22, i32 4, i32 1, i32 3
  %13 = ptrtoint ptr %cons_index.1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cons_index.1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  tail call void @arm_heavy_mb() #8
  %15 = ptrtoint ptr %eq_set_ci_base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %eq_set_ci_base.i, align 4
  %eqn.i.1 = getelementptr %struct.mthca_dev, ptr %dev_ptr, i32 0, i32 22, i32 4, i32 1, i32 1
  %17 = ptrtoint ptr %eqn.i.1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %eqn.i.1, align 4
  %mul.i.1 = shl i32 %18, 3
  %add.ptr.i.1 = getelementptr i8, ptr %16, i32 %mul.i.1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.1, i32 %14) #8, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !99
  tail call void @arm_heavy_mb() #8
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then6.1, %for.inc.for.inc.1_crit_edge
  %work.1.1 = phi i32 [ 1, %if.then6.1 ], [ %work.1, %for.inc.for.inc.1_crit_edge ]
  %arrayidx.2 = getelementptr %struct.mthca_dev, ptr %dev_ptr, i32 0, i32 22, i32 4, i32 2
  %call.2 = tail call fastcc i32 @mthca_eq_int(ptr noundef %dev_ptr, ptr noundef %arrayidx.2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %tobool5.not.2 = icmp eq i32 %call.2, 0
  br i1 %tobool5.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then6.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2

if.then6.2:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  %cons_index.2 = getelementptr %struct.mthca_dev, ptr %dev_ptr, i32 0, i32 22, i32 4, i32 2, i32 3
  %19 = ptrtoint ptr %cons_index.2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cons_index.2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  tail call void @arm_heavy_mb() #8
  %21 = ptrtoint ptr %eq_set_ci_base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %eq_set_ci_base.i, align 4
  %eqn.i.2 = getelementptr %struct.mthca_dev, ptr %dev_ptr, i32 0, i32 22, i32 4, i32 2, i32 1
  %23 = ptrtoint ptr %eqn.i.2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %eqn.i.2, align 4
  %mul.i.2 = shl i32 %24, 3
  %add.ptr.i.2 = getelementptr i8, ptr %22, i32 %mul.i.2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.2, i32 %20) #8, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !99
  tail call void @arm_heavy_mb() #8
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then6.2, %for.inc.1.for.inc.2_crit_edge
  %work.1.2 = phi i32 [ 1, %if.then6.2 ], [ %work.1.1, %for.inc.1.for.inc.2_crit_edge ]
  %arm_mask = getelementptr inbounds %struct.mthca_dev, ptr %dev_ptr, i32 0, i32 22, i32 3
  %25 = ptrtoint ptr %arm_mask to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arm_mask, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !94
  tail call void @arm_heavy_mb() #8
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #8
  %eq_regs.i = getelementptr inbounds %struct.mthca_dev, ptr %dev_ptr, i32 0, i32 16
  %28 = ptrtoint ptr %eq_regs.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %eq_regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %27) #8, !srcloc !95
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %work.1.2)
  %tobool15.not = icmp ne i32 %work.1.2, 0
  %cond = zext i1 %tobool15.not to i32
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mthca_tavor_interrupt(i32 noundef %irq, ptr noundef %dev_ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %clr_mask = getelementptr inbounds %struct.mthca_dev, ptr %dev_ptr, i32 0, i32 22, i32 2
  %0 = ptrtoint ptr %clr_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %clr_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !102
  tail call void @arm_heavy_mb() #8
  %2 = ptrtoint ptr %clr_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %clr_mask, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %clr_int = getelementptr inbounds %struct.mthca_dev, ptr %dev_ptr, i32 0, i32 22, i32 1
  %5 = ptrtoint ptr %clr_int to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clr_int, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %4) #8, !srcloc !95
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  %eq_regs = getelementptr inbounds %struct.mthca_dev, ptr %dev_ptr, i32 0, i32 16
  %7 = ptrtoint ptr %eq_regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %eq_regs, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !103
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !104
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool5.not = icmp eq i32 %9, 0
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %do.body8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body8:                                         ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !105
  tail call void @arm_heavy_mb() #8
  %11 = ptrtoint ptr %eq_regs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %eq_regs, align 4
  %add.ptr15 = getelementptr i8, ptr %12, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %9) #8, !srcloc !95
  %kar.i = getelementptr inbounds %struct.mthca_dev, ptr %dev_ptr, i32 0, i32 14
  %doorbell_lock.i = getelementptr inbounds %struct.mthca_dev, ptr %dev_ptr, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.body8
  %i.064 = phi i32 [ 0, %do.body8 ], [ %inc, %for.inc.for.body_crit_edge ]
  %eqn_mask = getelementptr %struct.mthca_dev, ptr %dev_ptr, i32 0, i32 22, i32 4, i32 %i.064, i32 2
  %13 = ptrtoint ptr %eqn_mask to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %eqn_mask, align 8
  %and = and i32 %14, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool17.not = icmp eq i32 %and, 0
  br i1 %tobool17.not, label %for.body.for.inc_crit_edge, label %if.then18

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then18:                                        ; preds = %for.body
  %arrayidx = getelementptr %struct.mthca_dev, ptr %dev_ptr, i32 0, i32 22, i32 4, i32 %i.064
  %call22 = tail call fastcc i32 @mthca_eq_int(ptr noundef %dev_ptr, ptr noundef %arrayidx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then18.if.end31_crit_edge, label %if.then24

if.then18.if.end31_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then24:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  %cons_index = getelementptr %struct.mthca_dev, ptr %dev_ptr, i32 0, i32 22, i32 4, i32 %i.064, i32 3
  %15 = ptrtoint ptr %cons_index to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cons_index, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !100
  tail call void @arm_heavy_mb() #8
  %eqn.i = getelementptr %struct.mthca_dev, ptr %dev_ptr, i32 0, i32 22, i32 4, i32 %i.064, i32 1
  %17 = ptrtoint ptr %eqn.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %eqn.i, align 4
  %or.i = or i32 %18, 67108864
  %nent.i = getelementptr %struct.mthca_dev, ptr %dev_ptr, i32 0, i32 22, i32 4, i32 %i.064, i32 7
  %19 = ptrtoint ptr %nent.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nent.i, align 8
  %sub.i = add i32 %20, -1
  %and.i = and i32 %sub.i, %16
  %21 = ptrtoint ptr %kar.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %kar.i, align 4
  %add.ptr.i = getelementptr i8, ptr %22, i32 40
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %doorbell_lock.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %or.i) #8, !srcloc !95
  %add.ptr.i.i = getelementptr i8, ptr %22, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %and.i) #8, !srcloc !95
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %doorbell_lock.i, i32 noundef %call2.i.i) #8
  br label %if.end31

if.end31:                                         ; preds = %if.then24, %if.then18.if.end31_crit_edge
  %eqn = getelementptr %struct.mthca_dev, ptr %dev_ptr, i32 0, i32 22, i32 4, i32 %i.064, i32 1
  %23 = ptrtoint ptr %eqn to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %eqn, align 4
  %or.i58 = or i32 %24, 33554432
  %25 = ptrtoint ptr %kar.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %kar.i, align 4
  %add.ptr.i60 = getelementptr i8, ptr %26, i32 40
  %call2.i.i62 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %doorbell_lock.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i60, i32 %or.i58) #8, !srcloc !95
  %add.ptr.i.i63 = getelementptr i8, ptr %26, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i63, i32 0) #8, !srcloc !95
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %doorbell_lock.i, i32 noundef %call2.i.i62) #8
  br label %for.inc

for.inc:                                          ; preds = %if.end31, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.064, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ 1, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_MAP_EQ(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mthca_free_irqs(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %have_irq = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 22, i32 8
  %0 = ptrtoint ptr %have_irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %have_irq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pdev = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 8
  %irq = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 46
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  %call = tail call ptr @free_irq(i32 noundef %5, ptr noundef %dev) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %have_irq2 = getelementptr %struct.mthca_dev, ptr %dev, i32 0, i32 22, i32 4, i32 0, i32 6
  %6 = ptrtoint ptr %have_irq2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %have_irq2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not = icmp eq i32 %7, 0
  br i1 %tobool3.not, label %if.end.for.inc_crit_edge, label %if.then4

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %eq = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 22, i32 4
  %msi_x_vector = getelementptr %struct.mthca_dev, ptr %dev, i32 0, i32 22, i32 4, i32 0, i32 4
  %8 = ptrtoint ptr %msi_x_vector to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %msi_x_vector, align 8
  %conv = zext i16 %9 to i32
  %call10 = tail call ptr @free_irq(i32 noundef %conv, ptr noundef %eq) #8
  %10 = ptrtoint ptr %have_irq2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %have_irq2, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then4, %if.end.for.inc_crit_edge
  %have_irq2.1 = getelementptr %struct.mthca_dev, ptr %dev, i32 0, i32 22, i32 4, i32 1, i32 6
  %11 = ptrtoint ptr %have_irq2.1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %have_irq2.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool3.not.1 = icmp eq i32 %12, 0
  br i1 %tobool3.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then4.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

if.then4.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  %msi_x_vector.1 = getelementptr %struct.mthca_dev, ptr %dev, i32 0, i32 22, i32 4, i32 1, i32 4
  %13 = ptrtoint ptr %msi_x_vector.1 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %msi_x_vector.1, align 8
  %conv.1 = zext i16 %14 to i32
  %add.ptr.1 = getelementptr %struct.mthca_dev, ptr %dev, i32 0, i32 22, i32 4, i32 1
  %call10.1 = tail call ptr @free_irq(i32 noundef %conv.1, ptr noundef %add.ptr.1) #8
  %15 = ptrtoint ptr %have_irq2.1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %have_irq2.1, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then4.1, %for.inc.for.inc.1_crit_edge
  %have_irq2.2 = getelementptr %struct.mthca_dev, ptr %dev, i32 0, i32 22, i32 4, i32 2, i32 6
  %16 = ptrtoint ptr %have_irq2.2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %have_irq2.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool3.not.2 = icmp eq i32 %17, 0
  br i1 %tobool3.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then4.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2

if.then4.2:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  %msi_x_vector.2 = getelementptr %struct.mthca_dev, ptr %dev, i32 0, i32 22, i32 4, i32 2, i32 4
  %18 = ptrtoint ptr %msi_x_vector.2 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %msi_x_vector.2, align 8
  %conv.2 = zext i16 %19 to i32
  %add.ptr.2 = getelementptr %struct.mthca_dev, ptr %dev, i32 0, i32 22, i32 4, i32 2
  %call10.2 = tail call ptr @free_irq(i32 noundef %conv.2, ptr noundef %add.ptr.2) #8
  %20 = ptrtoint ptr %have_irq2.2 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %have_irq2.2, align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then4.2, %for.inc.1.for.inc.2_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mthca_free_eq(ptr noundef %dev, ptr noundef %eq) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %nent = getelementptr inbounds %struct.mthca_eq, ptr %eq, i32 0, i32 7
  %0 = ptrtoint ptr %nent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nent, align 8
  %mul = shl i32 %1, 5
  %sub = add i32 %mul, 4095
  %div32 = lshr i32 %sub, 12
  %call = tail call ptr @mthca_alloc_mailbox(ptr noundef %dev, i32 noundef 3264) #8
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %eqn = getelementptr inbounds %struct.mthca_eq, ptr %eq, i32 0, i32 1
  %2 = ptrtoint ptr %eqn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %eqn, align 4
  %call2 = tail call i32 @mthca_HW2SW_EQ(ptr noundef %dev, ptr noundef %call, i32 noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end.if.end5_crit_edge, label %do.end

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %pdev = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 8
  %dev4 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev4, ptr noundef nonnull @.str.48, i32 noundef %call2) #11
  br label %if.end5

if.end5:                                          ; preds = %do.end, %if.end.if.end5_crit_edge
  %eqn_mask = getelementptr inbounds %struct.mthca_eq, ptr %eq, i32 0, i32 2
  %6 = ptrtoint ptr %eqn_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %eqn_mask, align 8
  %neg = xor i32 %7, -1
  %arm_mask = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 22, i32 3
  %8 = ptrtoint ptr %arm_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arm_mask, align 8
  %and = and i32 %9, %neg
  store i32 %and, ptr %arm_mask, align 8
  %mr = getelementptr inbounds %struct.mthca_eq, ptr %eq, i32 0, i32 9
  tail call void @mthca_free_mr(ptr noundef %dev, ptr noundef %mr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %sub)
  %cmp33.not = icmp ult i32 %sub, 4096
  br i1 %cmp33.not, label %if.end5.for.end_crit_edge, label %for.body.lr.ph

if.end5.for.end_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end5
  %pdev6 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  %page_list = getelementptr inbounds %struct.mthca_eq, ptr %eq, i32 0, i32 8
  %umax = call i32 @llvm.umax.i32(i32 %div32, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.034 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %10 = ptrtoint ptr %pdev6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev6, align 8
  %dev7 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %12 = ptrtoint ptr %page_list to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %page_list, align 4
  %arrayidx = getelementptr %struct.mthca_buf_list, ptr %13, i32 %i.034
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %mapping = getelementptr %struct.mthca_buf_list, ptr %13, i32 %i.034, i32 1
  %16 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mapping, align 4
  tail call void @dma_free_attrs(ptr noundef %dev7, i32 noundef 4096, ptr noundef %15, i32 noundef %17, i32 noundef 0) #8
  %inc = add nuw nsw i32 %i.034, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end5.for.end_crit_edge
  %page_list10 = getelementptr inbounds %struct.mthca_eq, ptr %eq, i32 0, i32 8
  %18 = ptrtoint ptr %page_list10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %page_list10, align 4
  tail call void @kfree(ptr noundef %19) #8
  tail call void @mthca_free_mailbox(ptr noundef %dev, ptr noundef %call) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mthca_alloc_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mthca_cleanup_eq_table(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @mthca_free_irqs(ptr noundef %dev)
  %mthca_flags.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %mthca_flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mthca_flags.i, align 8
  %and.i = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool.not.i, i64 214014, i64 2049022
  %eqn = getelementptr %struct.mthca_dev, ptr %dev, i32 0, i32 22, i32 4, i32 1, i32 1
  %2 = ptrtoint ptr %eqn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %eqn, align 4
  %call1 = tail call i32 @mthca_MAP_EQ(ptr noundef %dev, i64 noundef %cond.i, i32 noundef 1, i32 noundef %3) #8
  %eqn5 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 22, i32 4, i32 0, i32 1
  %4 = ptrtoint ptr %eqn5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %eqn5, align 4
  %call6 = tail call i32 @mthca_MAP_EQ(ptr noundef %dev, i64 noundef 1024, i32 noundef 1, i32 noundef %5) #8
  %arrayidx9 = getelementptr %struct.mthca_dev, ptr %dev, i32 0, i32 22, i32 4, i32 0
  tail call fastcc void @mthca_free_eq(ptr noundef %dev, ptr noundef %arrayidx9)
  %arrayidx9.1 = getelementptr %struct.mthca_dev, ptr %dev, i32 0, i32 22, i32 4, i32 1
  tail call fastcc void @mthca_free_eq(ptr noundef %dev, ptr noundef %arrayidx9.1)
  %arrayidx9.2 = getelementptr %struct.mthca_dev, ptr %dev, i32 0, i32 22, i32 4, i32 2
  tail call fastcc void @mthca_free_eq(ptr noundef %dev, ptr noundef %arrayidx9.2)
  %6 = ptrtoint ptr %mthca_flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mthca_flags.i, align 8
  %and.i.i = and i32 %7, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i22 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i22, label %entry.mthca_unmap_eq_regs.exit_crit_edge, label %if.then.i

entry.mthca_unmap_eq_regs.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %mthca_unmap_eq_regs.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %eq_set_ci_base.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 16, i32 0, i32 1
  %8 = ptrtoint ptr %eq_set_ci_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %eq_set_ci_base.i, align 4
  tail call void @iounmap(ptr noundef %9) #8
  br label %mthca_unmap_eq_regs.exit

mthca_unmap_eq_regs.exit:                         ; preds = %if.then.i, %entry.mthca_unmap_eq_regs.exit_crit_edge
  %eq_table = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 22
  %eq_regs2.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 16
  %10 = ptrtoint ptr %eq_regs2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %eq_regs2.i, align 4
  tail call void @iounmap(ptr noundef %11) #8
  %clr_base3.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 15
  %12 = ptrtoint ptr %clr_base3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clr_base3.i, align 8
  tail call void @iounmap(ptr noundef %13) #8
  tail call void @mthca_alloc_cleanup(ptr noundef %eq_table) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mthca_alloc_mailbox(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_mr_alloc_phys(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_SW2HW_EQ(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mthca_free_mailbox(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mthca_free_mr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mthca_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mthca_eq_int(ptr noundef %dev, ptr nocapture noundef %eq) unnamed_addr #0 align 64 {
entry:
  %record.i = alloca %struct.ib_event, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cons_index.i = getelementptr inbounds %struct.mthca_eq, ptr %eq, i32 0, i32 3
  %nent.i.i = getelementptr inbounds %struct.mthca_eq, ptr %eq, i32 0, i32 7
  %page_list.i.i = getelementptr inbounds %struct.mthca_eq, ptr %eq, i32 0, i32 8
  %0 = ptrtoint ptr %cons_index.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cons_index.i, align 4
  %2 = ptrtoint ptr %nent.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nent.i.i, align 8
  %sub.i.i131 = add i32 %3, 134217727
  %and.i.i132 = and i32 %sub.i.i131, %1
  %mul.i.i133 = shl i32 %and.i.i132, 5
  %4 = ptrtoint ptr %page_list.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %page_list.i.i, align 4
  %div4.i.i134 = lshr i32 %mul.i.i133, 12
  %arrayidx.i.i135 = getelementptr %struct.mthca_buf_list, ptr %5, i32 %div4.i.i134
  %6 = ptrtoint ptr %arrayidx.i.i135 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i.i135, align 4
  %rem.i.i136 = and i32 %mul.i.i133, 4064
  %add.ptr.i.i137 = getelementptr i8, ptr %7, i32 %rem.i.i136
  %owner.i138 = getelementptr inbounds %struct.mthca_eqe, ptr %add.ptr.i.i137, i32 0, i32 6
  %8 = ptrtoint ptr %owner.i138 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %owner.i138, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i139 = icmp slt i8 %9, 0
  %tobool.not130140 = icmp eq ptr %add.ptr.i.i137, null
  %tobool.not141 = select i1 %tobool.not.i139, i1 true, i1 %tobool.not130140
  br i1 %tobool.not141, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %pdev59 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  %eqn61 = getelementptr inbounds %struct.mthca_eq, ptr %eq, i32 0, i32 1
  %10 = getelementptr inbounds %struct.ib_event, ptr %record.i, i32 0, i32 2
  %11 = getelementptr inbounds %struct.ib_event, ptr %record.i, i32 0, i32 1
  %mthca_flags.i.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 3
  %kar.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 14
  %doorbell_lock.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 11
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %add.ptr.i.i143 = phi ptr [ %add.ptr.i.i137, %while.body.lr.ph ], [ %add.ptr.i.i, %if.end.while.body_crit_edge ]
  %set_ci.0142 = phi i32 [ 0, %while.body.lr.ph ], [ %set_ci.1, %if.end.while.body_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !106
  %type = getelementptr inbounds %struct.mthca_eqe, ptr %add.ptr.i.i143, i32 0, i32 1
  %12 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %type, align 1
  %14 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i8 %13, label %do.end65 [
    i8 0, label %sw.bb
    i8 1, label %sw.bb1
    i8 2, label %sw.bb4
    i8 3, label %sw.bb8
    i8 19, label %sw.bb12
    i8 20, label %sw.bb16
    i8 5, label %sw.bb19
    i8 7, label %sw.bb23
    i8 16, label %sw.bb27
    i8 17, label %sw.bb31
    i8 10, label %sw.bb35
    i8 9, label %sw.bb39
    i8 4, label %do.end
    i8 15, label %do.end58
  ]

sw.bb:                                            ; preds = %while.body
  %event = getelementptr inbounds %struct.mthca_eqe, ptr %add.ptr.i.i143, i32 0, i32 4
  %15 = ptrtoint ptr %event to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %event, align 1
  %and = and i32 %16, 16777215
  %17 = ptrtoint ptr %mthca_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mthca_flags.i.i, align 8
  %and.i.i125 = and i32 %18, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i125)
  %tobool.not.i126 = icmp eq i32 %and.i.i125, 0
  br i1 %tobool.not.i126, label %if.then.i, label %sw.bb.disarm_cq.exit_crit_edge

sw.bb.disarm_cq.exit_crit_edge:                   ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %disarm_cq.exit

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %eqn61 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %eqn61, align 4
  %or.i = or i32 %20, 50331648
  %21 = ptrtoint ptr %kar.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %kar.i, align 4
  %add.ptr.i = getelementptr i8, ptr %22, i32 40
  %call2.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %doorbell_lock.i) #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %or.i) #8, !srcloc !95
  %add.ptr.i.i127 = getelementptr i8, ptr %22, i32 44
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i127, i32 %and) #8, !srcloc !95
  call void @_raw_spin_unlock_irqrestore(ptr noundef %doorbell_lock.i, i32 noundef %call2.i.i) #8
  br label %disarm_cq.exit

disarm_cq.exit:                                   ; preds = %if.then.i, %sw.bb.disarm_cq.exit_crit_edge
  call void @mthca_cq_completion(ptr noundef %dev, i32 noundef %and) #8
  br label %sw.epilog

sw.bb1:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %event2 = getelementptr inbounds %struct.mthca_eqe, ptr %add.ptr.i.i143, i32 0, i32 4
  %23 = ptrtoint ptr %event2 to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %event2, align 1
  %and3 = and i32 %24, 16777215
  call void @mthca_qp_event(ptr noundef %dev, i32 noundef %and3, i32 noundef 6) #8
  br label %sw.epilog

sw.bb4:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %event5 = getelementptr inbounds %struct.mthca_eqe, ptr %add.ptr.i.i143, i32 0, i32 4
  %25 = ptrtoint ptr %event5 to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %event5, align 1
  %and7 = and i32 %26, 16777215
  call void @mthca_qp_event(ptr noundef %dev, i32 noundef %and7, i32 noundef 4) #8
  br label %sw.epilog

sw.bb8:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %event9 = getelementptr inbounds %struct.mthca_eqe, ptr %add.ptr.i.i143, i32 0, i32 4
  %27 = ptrtoint ptr %event9 to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %event9, align 1
  %and11 = and i32 %28, 16777215
  call void @mthca_qp_event(ptr noundef %dev, i32 noundef %and11, i32 noundef 5) #8
  br label %sw.epilog

sw.bb12:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %event13 = getelementptr inbounds %struct.mthca_eqe, ptr %add.ptr.i.i143, i32 0, i32 4
  %29 = ptrtoint ptr %event13 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %event13, align 1
  %and15 = and i32 %30, 16777215
  call void @mthca_qp_event(ptr noundef %dev, i32 noundef %and15, i32 noundef 16) #8
  br label %sw.epilog

sw.bb16:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %event17 = getelementptr inbounds %struct.mthca_eqe, ptr %add.ptr.i.i143, i32 0, i32 4
  %31 = ptrtoint ptr %event17 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %event17, align 1
  %and18 = and i32 %32, 16777215
  call void @mthca_srq_event(ptr noundef %dev, i32 noundef %and18, i32 noundef 15) #8
  br label %sw.epilog

sw.bb19:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %event20 = getelementptr inbounds %struct.mthca_eqe, ptr %add.ptr.i.i143, i32 0, i32 4
  %33 = ptrtoint ptr %event20 to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %event20, align 1
  %and22 = and i32 %34, 16777215
  call void @mthca_qp_event(ptr noundef %dev, i32 noundef %and22, i32 noundef 1) #8
  br label %sw.epilog

sw.bb23:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %event24 = getelementptr inbounds %struct.mthca_eqe, ptr %add.ptr.i.i143, i32 0, i32 4
  %35 = ptrtoint ptr %event24 to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %event24, align 1
  %and26 = and i32 %36, 16777215
  call void @mthca_qp_event(ptr noundef %dev, i32 noundef %and26, i32 noundef 7) #8
  br label %sw.epilog

sw.bb27:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %event28 = getelementptr inbounds %struct.mthca_eqe, ptr %add.ptr.i.i143, i32 0, i32 4
  %37 = ptrtoint ptr %event28 to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load i32, ptr %event28, align 1
  %and30 = and i32 %38, 16777215
  call void @mthca_qp_event(ptr noundef %dev, i32 noundef %and30, i32 noundef 2) #8
  br label %sw.epilog

sw.bb31:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %event32 = getelementptr inbounds %struct.mthca_eqe, ptr %add.ptr.i.i143, i32 0, i32 4
  %39 = ptrtoint ptr %event32 to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %40 = load i32, ptr %event32, align 1
  %and34 = and i32 %40, 16777215
  call void @mthca_qp_event(ptr noundef %dev, i32 noundef %and34, i32 noundef 3) #8
  br label %sw.epilog

sw.bb35:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %event36 = getelementptr inbounds %struct.mthca_eqe, ptr %add.ptr.i.i143, i32 0, i32 4
  %token = getelementptr inbounds %struct.anon.183, ptr %event36, i32 0, i32 1
  %41 = ptrtoint ptr %token to i32
  call void @__asan_loadN_noabort(i32 %41, i32 2)
  %42 = load i16, ptr %token, align 1
  %status = getelementptr inbounds %struct.anon.183, ptr %event36, i32 0, i32 4
  %43 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %status, align 1
  %out_param = getelementptr inbounds %struct.mthca_eqe, ptr %add.ptr.i.i143, i32 0, i32 4, i32 0, i32 3
  %45 = ptrtoint ptr %out_param to i32
  call void @__asan_loadN_noabort(i32 %45, i32 8)
  %46 = load i64, ptr %out_param, align 1
  call void @mthca_cmd_event(ptr noundef %dev, i16 noundef zeroext %42, i8 noundef zeroext %44, i64 noundef %46) #8
  br label %sw.epilog

sw.bb39:                                          ; preds = %while.body
  %port = getelementptr inbounds %struct.mthca_eqe, ptr %add.ptr.i.i143, i32 0, i32 4, i32 0, i32 2
  %47 = ptrtoint ptr %port to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %port, align 1
  %shr = lshr i32 %48, 28
  %and41 = and i32 %shr, 3
  %subtype = getelementptr inbounds %struct.mthca_eqe, ptr %add.ptr.i.i143, i32 0, i32 3
  %49 = ptrtoint ptr %subtype to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %subtype, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %50)
  %cmp = icmp eq i8 %50, 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %record.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mthca_debug_level to i32))
  %51 = load i32, ptr @mthca_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not.i128 = icmp eq i32 %51, 0
  br i1 %tobool.not.i128, label %sw.bb39.port_change.exit_crit_edge, label %do.end.i

sw.bb39.port_change.exit_crit_edge:               ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #10
  br label %port_change.exit

do.end.i:                                         ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #10
  %52 = ptrtoint ptr %pdev59 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pdev59, align 8
  %dev2.i = getelementptr inbounds %struct.pci_dev, ptr %53, i32 0, i32 44
  %cond.i = select i1 %cmp, ptr @.str.46, ptr @.str.47
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.32, ptr noundef %dev2.i, ptr noundef nonnull @.str.44, ptr noundef nonnull %cond.i, i32 noundef %and41) #11
  br label %port_change.exit

port_change.exit:                                 ; preds = %do.end.i, %sw.bb39.port_change.exit_crit_edge
  %54 = ptrtoint ptr %record.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %dev, ptr %record.i, align 4
  %cond7.i = select i1 %cmp, i32 9, i32 10
  %55 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %cond7.i, ptr %10, align 4
  %56 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %and41, ptr %11, align 4
  call void @ib_dispatch_event(ptr noundef nonnull %record.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %record.i) #8
  br label %sw.epilog

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %pdev59 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pdev59, align 8
  %dev45 = getelementptr inbounds %struct.pci_dev, ptr %58, i32 0, i32 44
  %event46 = getelementptr inbounds %struct.mthca_eqe, ptr %add.ptr.i.i143, i32 0, i32 4
  %syndrome = getelementptr inbounds %struct.anon.186, ptr %event46, i32 0, i32 3
  %59 = ptrtoint ptr %syndrome to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %syndrome, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %60)
  %cmp48 = icmp eq i8 %60, 1
  %cond = select i1 %cmp48, ptr @.str.36, ptr @.str.37
  %61 = ptrtoint ptr %event46 to i32
  call void @__asan_loadN_noabort(i32 %61, i32 4)
  %62 = load i32, ptr %event46, align 1
  %and52 = and i32 %62, 16777215
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev45, ptr noundef nonnull @.str.34, ptr noundef nonnull %cond, i32 noundef %and52) #11
  %63 = ptrtoint ptr %event46 to i32
  call void @__asan_loadN_noabort(i32 %63, i32 4)
  %64 = load i32, ptr %event46, align 1
  call void @mthca_cq_event(ptr noundef %dev, i32 noundef %64, i32 noundef 0) #8
  br label %sw.epilog

do.end58:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %65 = ptrtoint ptr %pdev59 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pdev59, align 8
  %dev60 = getelementptr inbounds %struct.pci_dev, ptr %66, i32 0, i32 44
  %67 = ptrtoint ptr %eqn61 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %eqn61, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev60, ptr noundef nonnull @.str.39, i32 noundef %68) #11
  br label %sw.epilog

do.end65:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i8 %13 to i32
  %69 = ptrtoint ptr %pdev59 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pdev59, align 8
  %dev67 = getelementptr inbounds %struct.pci_dev, ptr %70, i32 0, i32 44
  %subtype70 = getelementptr inbounds %struct.mthca_eqe, ptr %add.ptr.i.i143, i32 0, i32 3
  %71 = ptrtoint ptr %subtype70 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %subtype70, align 1
  %conv71 = zext i8 %72 to i32
  %73 = ptrtoint ptr %eqn61 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %eqn61, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev67, ptr noundef nonnull @.str.42, i32 noundef %conv, i32 noundef %conv71, i32 noundef %74) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end65, %do.end58, %do.end, %port_change.exit, %sw.bb35, %sw.bb31, %sw.bb27, %sw.bb23, %sw.bb19, %sw.bb16, %sw.bb12, %sw.bb8, %sw.bb4, %sw.bb1, %disarm_cq.exit
  %owner.i129 = getelementptr inbounds %struct.mthca_eqe, ptr %add.ptr.i.i143, i32 0, i32 6
  %75 = ptrtoint ptr %owner.i129 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 -128, ptr %owner.i129, align 1
  %76 = ptrtoint ptr %cons_index.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %cons_index.i, align 4
  %inc = add i32 %77, 1
  store i32 %inc, ptr %cons_index.i, align 4
  %inc73 = add i32 %set_ci.0142, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %inc73)
  %cmp74 = icmp sgt i32 %inc73, 127
  br i1 %cmp74, label %if.then, label %sw.epilog.if.end_crit_edge, !prof !107

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @set_eq_ci(ptr noundef %dev, ptr noundef %eq, i32 noundef %inc)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog.if.end_crit_edge
  %set_ci.1 = phi i32 [ 0, %if.then ], [ %inc73, %sw.epilog.if.end_crit_edge ]
  %78 = ptrtoint ptr %cons_index.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %cons_index.i, align 4
  %80 = ptrtoint ptr %nent.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %nent.i.i, align 8
  %sub.i.i = add i32 %81, 134217727
  %and.i.i = and i32 %sub.i.i, %79
  %mul.i.i = shl i32 %and.i.i, 5
  %82 = ptrtoint ptr %page_list.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %page_list.i.i, align 4
  %div4.i.i = lshr i32 %mul.i.i, 12
  %arrayidx.i.i = getelementptr %struct.mthca_buf_list, ptr %83, i32 %div4.i.i
  %84 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx.i.i, align 4
  %rem.i.i = and i32 %mul.i.i, 4064
  %add.ptr.i.i = getelementptr i8, ptr %85, i32 %rem.i.i
  %owner.i = getelementptr inbounds %struct.mthca_eqe, ptr %add.ptr.i.i, i32 0, i32 6
  %86 = ptrtoint ptr %owner.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %owner.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool.not.i = icmp slt i8 %87, 0
  %tobool.not130 = icmp eq ptr %add.ptr.i.i, null
  %tobool.not = select i1 %tobool.not.i, i1 true, i1 %tobool.not130
  br i1 %tobool.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  %eqes_found.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ 1, %if.end.while.end_crit_edge ]
  ret i32 %eqes_found.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mthca_cq_completion(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mthca_qp_event(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mthca_srq_event(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mthca_cmd_event(ptr noundef, i16 noundef zeroext, i8 noundef zeroext, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mthca_cq_event(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_eq_ci(ptr noundef %dev, ptr nocapture noundef readonly %eq, i32 noundef %ci) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %mthca_flags.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %mthca_flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mthca_flags.i, align 8
  %and.i = and i32 %1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %eq_set_ci_base.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 16, i32 0, i32 1
  %2 = ptrtoint ptr %eq_set_ci_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %eq_set_ci_base.i, align 4
  %eqn.i = getelementptr inbounds %struct.mthca_eq, ptr %eq, i32 0, i32 1
  %4 = ptrtoint ptr %eqn.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %eqn.i, align 4
  %mul.i = shl i32 %5, 3
  %add.ptr.i = getelementptr i8, ptr %3, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %ci) #8, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !99
  tail call void @arm_heavy_mb() #8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %eqn.i5 = getelementptr inbounds %struct.mthca_eq, ptr %eq, i32 0, i32 1
  %6 = ptrtoint ptr %eqn.i5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %eqn.i5, align 4
  %or.i = or i32 %7, 67108864
  %nent.i = getelementptr inbounds %struct.mthca_eq, ptr %eq, i32 0, i32 7
  %8 = ptrtoint ptr %nent.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nent.i, align 8
  %sub.i = add i32 %9, -1
  %and.i6 = and i32 %sub.i, %ci
  %kar.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 14
  %10 = ptrtoint ptr %kar.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %kar.i, align 4
  %add.ptr.i7 = getelementptr i8, ptr %11, i32 40
  %doorbell_lock.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 11
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %doorbell_lock.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7, i32 %or.i) #8, !srcloc !95
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %and.i6) #8, !srcloc !95
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %doorbell_lock.i, i32 noundef %call2.i.i) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_dispatch_event(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_HW2SW_EQ(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !16, !17, !18, !19, !20, !22, !23, !24, !26, !28, !29, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !45, !46, !47, !49, !50, !51, !52, !54, !55, !56, !57, !59, !60, !61, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !77, !78, !79, !81, !82, !83}
!llvm.named.register.sp = !{!84}
!llvm.module.flags = !{!85, !86, !87, !88, !89, !90, !91, !92}
!llvm.ident = !{!93}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/hw/mthca/mthca_eq.c", i32 820, i32 23}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/infiniband/hw/mthca/mthca_eq.c", i32 819, i32 23}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/infiniband/hw/mthca/mthca_eq.c", i32 818, i32 23}
!6 = distinct !{null, !7, !"eq_name", i1 false, i1 false}
!7 = !{!"../drivers/infiniband/hw/mthca/mthca_eq.c", i32 817, i32 22}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/infiniband/hw/mthca/mthca_eq.c", i32 826, i32 6}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/infiniband/hw/mthca/mthca_eq.c", i32 840, i32 5}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/infiniband/hw/mthca/mthca_eq.c", i32 854, i32 3}
!14 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @mthca_init_eq_table._entry, !13, !"_entry", i1 false, i1 false}
!19 = !{ptr @mthca_init_eq_table._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/infiniband/hw/mthca/mthca_eq.c", i32 860, i32 3}
!22 = !{ptr @mthca_init_eq_table._entry.10, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @mthca_init_eq_table._entry_ptr.12, !21, !"_entry_ptr", i1 false, i1 false}
!24 = distinct !{null, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/infiniband/hw/mthca/mthca_eq.c", i32 668, i32 4}
!28 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @mthca_map_eq_regs._entry, !27, !"_entry", i1 false, i1 false}
!31 = !{ptr @mthca_map_eq_regs._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/infiniband/hw/mthca/mthca_eq.c", i32 680, i32 4}
!34 = !{ptr @mthca_map_eq_regs._entry.17, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @mthca_map_eq_regs._entry_ptr.19, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.21, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/infiniband/hw/mthca/mthca_eq.c", i32 689, i32 4}
!38 = !{ptr @mthca_map_eq_regs._entry.20, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @mthca_map_eq_regs._entry_ptr.22, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @mthca_map_eq_regs._entry.23, !41, !"_entry", i1 false, i1 false}
!41 = !{!"../drivers/infiniband/hw/mthca/mthca_eq.c", i32 697, i32 4}
!42 = !{ptr @mthca_map_eq_regs._entry_ptr.24, !41, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.26, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/infiniband/hw/mthca/mthca_eq.c", i32 705, i32 4}
!45 = !{ptr @mthca_map_eq_regs._entry.25, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @mthca_map_eq_regs._entry_ptr.27, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.28, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/infiniband/hw/mthca/mthca_eq.c", i32 547, i32 3}
!49 = !{ptr @.str.29, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @mthca_create_eq._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @mthca_create_eq._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.31, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/infiniband/hw/mthca/mthca_eq.c", i32 559, i32 2}
!54 = !{ptr @.str.32, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @mthca_create_eq._entry.30, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @mthca_create_eq._entry_ptr.33, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.34, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/infiniband/hw/mthca/mthca_eq.c", i32 340, i32 4}
!59 = !{ptr @.str.35, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @mthca_eq_int._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @mthca_eq_int._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.36, !58, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.37, !58, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.39, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/infiniband/hw/mthca/mthca_eq.c", i32 349, i32 4}
!66 = !{ptr @mthca_eq_int._entry.38, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @mthca_eq_int._entry_ptr.40, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.42, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/infiniband/hw/mthca/mthca_eq.c", i32 357, i32 4}
!70 = !{ptr @mthca_eq_int._entry.41, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @mthca_eq_int._entry_ptr.43, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.44, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/infiniband/hw/mthca/mthca_eq.c", i32 250, i32 2}
!74 = !{ptr @.str.45, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @port_change._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @port_change._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.46, !73, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.47, !73, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.48, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/infiniband/hw/mthca/mthca_eq.c", i32 603, i32 3}
!81 = !{ptr @.str.49, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @mthca_free_eq._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @mthca_free_eq._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{!"sp"}
!85 = !{i32 1, !"wchar_size", i32 2}
!86 = !{i32 1, !"min_enum_size", i32 4}
!87 = !{i32 8, !"branch-target-enforcement", i32 0}
!88 = !{i32 8, !"sign-return-address", i32 0}
!89 = !{i32 8, !"sign-return-address-all", i32 0}
!90 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!91 = !{i32 7, !"uwtable", i32 1}
!92 = !{i32 7, !"frame-pointer", i32 2}
!93 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!94 = !{i64 2158147510}
!95 = !{i64 4220980}
!96 = !{!"auto-init"}
!97 = !{i32 0, i32 33}
!98 = !{i64 2158146533}
!99 = !{i64 2158146735}
!100 = !{i64 2158146175}
!101 = !{i64 2158158810}
!102 = !{i64 2158157322}
!103 = !{i64 4221398}
!104 = !{i64 2158158100}
!105 = !{i64 2158158364}
!106 = !{i64 2158150420}
!107 = !{!"branch_weights", i32 1, i32 2000}
