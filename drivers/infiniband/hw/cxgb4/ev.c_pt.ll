; ModuleID = '/llk/IR_all_yes/drivers/infiniband/hw/cxgb4/ev.c_pt.bc'
source_filename = "../drivers/infiniband/hw/cxgb4/ev.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.c4iw_dev = type { %struct.ib_device, %struct.c4iw_rdev, i32, %struct.xarray, %struct.xarray, %struct.xarray, %struct.mutex, ptr, i32, %struct.xarray, %struct.xarray, %struct.xarray, %struct.list_head, i32, %struct.wait_queue_head }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.219, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
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
%union.anon.219 = type { %struct.ib_core_device }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type { ptr }
%struct.ib_device_attr = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i32, i32, %struct.ib_odp_caps, i64, i64, %struct.ib_rss_caps, i32, i32, %struct.ib_tm_caps, %struct.ib_cq_caps, i64, i32 }
%struct.ib_odp_caps = type { i64, %struct.anon.206 }
%struct.anon.206 = type { i32, i32, i32, i32 }
%struct.ib_rss_caps = type { i32, i32, i32 }
%struct.ib_tm_caps = type { i32, i32, i32, i32, i32 }
%struct.ib_cq_caps = type { i16, i16 }
%struct.rdmacg_device = type { %struct.list_head, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
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
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.t4_cqe = type { i32, i32, %union.anon.221, [3 x i64], i64 }
%union.anon.221 = type { [3 x i64] }
%struct.anon.224 = type { i32, i32 }
%struct.c4iw_qp = type { %struct.ib_qp, %struct.list_head, ptr, ptr, %struct.c4iw_qp_attributes, %struct.t4_wq, %struct.spinlock, %struct.mutex, %struct.wait_queue_head, i32, ptr, ptr, ptr, %struct.completion, %struct.refcount_struct }
%struct.ib_qp = type { ptr, ptr, ptr, ptr, %struct.spinlock, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, %struct.atomic_t, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i8, %struct.rdma_restrack_entry, ptr }
%struct.rdma_restrack_entry = type { i8, i8, %struct.kref, %struct.completion, ptr, ptr, i32, i8, i32 }
%struct.c4iw_qp_attributes = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, i32, [52 x i8], i32, i8, %struct.c4iw_mpa_attributes, ptr, i8, i8, i16, i16, i8 }
%struct.c4iw_mpa_attributes = type { i8, i8, i8, i8, i8, i8, i8 }
%struct.t4_wq = type { %struct.t4_sq, %struct.t4_rq, ptr, ptr, i32, ptr, ptr }
%struct.t4_sq = type { ptr, i32, i32, i32, ptr, ptr, ptr, i64, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.t4_rq = type { ptr, i32, i32, ptr, ptr, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16 }
%struct.c4iw_cq = type { %struct.ib_cq, ptr, ptr, %struct.t4_cq, %struct.spinlock, %struct.spinlock, %struct.refcount_struct, %struct.completion, ptr }
%struct.ib_cq = type { ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.atomic_t, i32, ptr, %struct.list_head, %union.anon.178, ptr, ptr, i64, i8, i32, %struct.rdma_restrack_entry }
%union.anon.178 = type { %struct.work_struct }
%struct.t4_cq = type { ptr, i32, i32, ptr, ptr, ptr, i64, i32, ptr, i32, i64, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i8, ptr, i32 }
%struct.ib_event = type { ptr, %union.anon.168, i32 }
%union.anon.168 = type { ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.220, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.220 = type { ptr }
%struct.fw_ri_tpte = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@c4iw_ev_dispatch._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 133, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"\013iw_cxgb4: BAD AE qpid 0x%x opcode %d status 0x%x type %d wrid.hi 0x%x wrid.lo 0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"c4iw_ev_dispatch\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/infiniband/hw/cxgb4/ev.c\00", [63 x i8] zeroinitializer }, align 32
@c4iw_ev_dispatch._entry_ptr = internal global ptr @c4iw_ev_dispatch._entry, section ".printk_index", align 4
@c4iw_ev_dispatch._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 148, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"\013iw_cxgb4: BAD AE cqid 0x%x qpid 0x%x opcode %d status 0x%x type %d wrid.hi 0x%x wrid.lo 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@c4iw_ev_dispatch._entry_ptr.5 = internal global ptr @c4iw_ev_dispatch._entry.3, section ".printk_index", align 4
@c4iw_ev_dispatch._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 168, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013iw_cxgb4: AE with status 0!\0A\00", [33 x i8] zeroinitializer }, align 32
@c4iw_ev_dispatch._entry_ptr.8 = internal global ptr @c4iw_ev_dispatch._entry.6, section ".printk_index", align 4
@c4iw_ev_dispatch._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 211, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013iw_cxgb4: Unknown T4 status 0x%x QPID 0x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@c4iw_ev_dispatch._entry_ptr.11 = internal global ptr @c4iw_ev_dispatch._entry.9, section ".printk_index", align 4
@c4iw_ev_handler.__UNIQUE_ID_ddebug676 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.13, ptr @.str.2, ptr @.str.14, i8 0, i8 59, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"iw_cxgb4\00", [23 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"c4iw_ev_handler\00", [16 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"unknown cqid 0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"iw_cxgb4: unknown cqid 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@dump_err_cqe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 71, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"AE qpid %d opcode %d status 0x%x type %d len 0x%x wrid.hi 0x%x wrid.lo 0x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dump_err_cqe\00", [19 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dump_err_cqe._entry_ptr = internal global ptr @dump_err_cqe._entry, section ".printk_index", align 4
@dump_err_cqe.__UNIQUE_ID_ddebug675 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.17, ptr @.str.2, ptr @.str.20, i8 0, i8 19, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"%016llx %016llx %016llx %016llx - %016llx %016llx %016llx %016llx\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"iw_cxgb4: %016llx %016llx %016llx %016llx - %016llx %016llx %016llx %016llx\0A\00", [51 x i8] zeroinitializer }, align 32
@print_tpte._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 47, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s cxgb4_read_tpte err %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"print_tpte\00", [21 x i8] zeroinitializer }, align 32
@print_tpte._entry_ptr = internal global ptr @print_tpte._entry, section ".printk_index", align 4
@print_tpte.__UNIQUE_ID_ddebug674 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.23, ptr @.str.2, ptr @.str.24, i8 0, i8 14, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"stag idx 0x%x valid %d key 0x%x state %d pdid %d perm 0x%x ps %d len 0x%llx va 0x%llx\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [97 x i8], [63 x i8] } { [97 x i8] c"iw_cxgb4: stag idx 0x%x valid %d key 0x%x state %d pdid %d perm 0x%x ps %d len 0x%llx va 0x%llx\0A\00", [63 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [30 x i64] [i64 28, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 129, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 144, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 168, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 210, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 238, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 66, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 73, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 46, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.103 = private constant [36 x i8] c"../drivers/infiniband/hw/cxgb4/ev.c\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 50, i32 2 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @c4iw_ev_dispatch._entry, ptr @c4iw_ev_dispatch._entry.3, ptr @c4iw_ev_dispatch._entry.6, ptr @c4iw_ev_dispatch._entry.9, ptr @c4iw_ev_dispatch._entry_ptr, ptr @c4iw_ev_dispatch._entry_ptr.11, ptr @c4iw_ev_dispatch._entry_ptr.5, ptr @c4iw_ev_dispatch._entry_ptr.8, ptr @dump_err_cqe._entry, ptr @dump_err_cqe._entry_ptr, ptr @print_tpte._entry, ptr @print_tpte._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c4iw_ev_dispatch._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c4iw_ev_dispatch._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c4iw_ev_dispatch._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c4iw_ev_dispatch._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_err_cqe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_tpte._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 97, i32 160, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @c4iw_ev_dispatch(ptr noundef %dev, ptr nocapture noundef readonly %err_cqe) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %qps = getelementptr inbounds %struct.c4iw_dev, ptr %dev, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %qps) #5
  %0 = ptrtoint ptr %err_cqe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %err_cqe, align 8
  %shr = lshr i32 %1, 12
  %call = tail call ptr @xa_load(ptr noundef %qps, i32 noundef %shr) #5
  %tobool.not = icmp eq ptr %call, null
  %2 = ptrtoint ptr %err_cqe to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %err_cqe, align 8
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %shr3 = lshr i32 %3, 12
  %and7 = and i32 %3, 15
  %shr9 = lshr i32 %3, 5
  %and10 = and i32 %shr9, 31
  %shr12 = lshr i32 %3, 4
  %and13 = and i32 %shr12, 1
  %u = getelementptr inbounds %struct.t4_cqe, ptr %err_cqe, i32 0, i32 2
  %4 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %u, align 8
  %wrid_low = getelementptr inbounds %struct.anon.224, ptr %u, i32 0, i32 1
  %6 = ptrtoint ptr %wrid_low to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wrid_low, align 4
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %shr3, i32 noundef %and7, i32 noundef %and10, i32 noundef %and13, i32 noundef %5, i32 noundef %7) #8
  tail call void @_raw_spin_unlock_irq(ptr noundef %qps) #5
  br label %out

if.end:                                           ; preds = %entry
  %8 = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool21.not = icmp eq i32 %8, 0
  %attr = getelementptr inbounds %struct.c4iw_qp, ptr %call, i32 0, i32 4
  %rcq = getelementptr inbounds %struct.c4iw_qp, ptr %call, i32 0, i32 4, i32 1
  %cqid.0.in = select i1 %tobool21.not, ptr %rcq, ptr %attr
  %9 = ptrtoint ptr %cqid.0.in to i32
  call void @__asan_load4_noabort(i32 %9)
  %cqid.0 = load i32, ptr %cqid.0.in, align 4
  %cqs.i = getelementptr inbounds %struct.c4iw_dev, ptr %dev, i32 0, i32 3
  %call.i = tail call ptr @xa_load(ptr noundef %cqs.i, i32 noundef %cqid.0) #5
  %tobool26.not = icmp eq ptr %call.i, null
  br i1 %tobool26.not, label %do.end30, label %if.end51

do.end30:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %err_cqe to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %err_cqe, align 8
  %shr33 = lshr i32 %11, 12
  %and37 = and i32 %11, 15
  %shr39 = lshr i32 %11, 5
  %and40 = and i32 %shr39, 31
  %shr42 = lshr i32 %11, 4
  %and43 = and i32 %shr42, 1
  %u44 = getelementptr inbounds %struct.t4_cqe, ptr %err_cqe, i32 0, i32 2
  %12 = ptrtoint ptr %u44 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %u44, align 8
  %wrid_low47 = getelementptr inbounds %struct.anon.224, ptr %u44, i32 0, i32 1
  %14 = ptrtoint ptr %wrid_low47 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %wrid_low47, align 4
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %cqid.0, i32 noundef %shr33, i32 noundef %and37, i32 noundef %and40, i32 noundef %and43, i32 noundef %13, i32 noundef %15) #8
  tail call void @_raw_spin_unlock_irq(ptr noundef %qps) #5
  br label %out

if.end51:                                         ; preds = %if.end
  tail call void @c4iw_qp_add_ref(ptr noundef nonnull %call) #5
  %refcnt = getelementptr inbounds %struct.c4iw_cq, ptr %call.i, i32 0, i32 6
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #5
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #5
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #5, !srcloc !53
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.end51.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !54

if.end51.if.end15.sink.split.i.i.i_crit_edge:     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.end51
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %17 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %.not.i.i.i = icmp sgt i32 %17, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !55

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.end51.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.end51.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef %.sink.i.i.i) #5
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %qps) #5
  %18 = ptrtoint ptr %err_cqe to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %err_cqe, align 8
  %20 = and i32 %19, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %if.then61, label %if.end62

if.then61:                                        ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @post_qp_event(ptr noundef %dev, ptr noundef nonnull %call.i, ptr noundef nonnull %call, ptr noundef %err_cqe, i32 noundef 2)
  br label %done

if.end62:                                         ; preds = %refcount_inc.exit
  %shr64 = lshr i32 %19, 5
  %and65 = and i32 %shr64, 31
  %22 = zext i32 %and65 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and65, label %do.end76 [
    i32 0, label %do.end68
    i32 1, label %if.end62.sw.bb71_crit_edge
    i32 2, label %if.end62.sw.bb71_crit_edge133
    i32 3, label %if.end62.sw.bb71_crit_edge134
    i32 4, label %if.end62.sw.bb71_crit_edge135
    i32 5, label %if.end62.sw.bb71_crit_edge136
    i32 6, label %if.end62.sw.bb71_crit_edge137
    i32 7, label %if.end62.sw.bb71_crit_edge138
    i32 8, label %if.end62.sw.bb71_crit_edge139
    i32 9, label %if.end62.sw.bb72_crit_edge
    i32 10, label %if.end62.sw.bb72_crit_edge140
    i32 31, label %if.end62.sw.bb72_crit_edge141
    i32 19, label %if.end62.sw.bb73_crit_edge
    i32 11, label %if.end62.sw.bb73_crit_edge142
    i32 16, label %if.end62.sw.bb73_crit_edge143
    i32 17, label %if.end62.sw.bb73_crit_edge144
    i32 18, label %if.end62.sw.bb73_crit_edge145
    i32 20, label %if.end62.sw.bb73_crit_edge146
    i32 21, label %if.end62.sw.bb73_crit_edge147
    i32 22, label %if.end62.sw.bb73_crit_edge148
    i32 23, label %if.end62.sw.bb73_crit_edge149
    i32 24, label %if.end62.sw.bb73_crit_edge150
    i32 25, label %if.end62.sw.bb73_crit_edge151
    i32 26, label %if.end62.sw.bb73_crit_edge152
    i32 27, label %if.end62.sw.bb73_crit_edge153
    i32 28, label %if.end62.sw.bb73_crit_edge154
    i32 30, label %if.end62.sw.bb73_crit_edge155
    i32 29, label %if.end62.sw.bb73_crit_edge156
  ]

if.end62.sw.bb73_crit_edge156:                    ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb73

if.end62.sw.bb73_crit_edge155:                    ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb73

if.end62.sw.bb73_crit_edge154:                    ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb73

if.end62.sw.bb73_crit_edge153:                    ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb73

if.end62.sw.bb73_crit_edge152:                    ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb73

if.end62.sw.bb73_crit_edge151:                    ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb73

if.end62.sw.bb73_crit_edge150:                    ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb73

if.end62.sw.bb73_crit_edge149:                    ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb73

if.end62.sw.bb73_crit_edge148:                    ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb73

if.end62.sw.bb73_crit_edge147:                    ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb73

if.end62.sw.bb73_crit_edge146:                    ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb73

if.end62.sw.bb73_crit_edge145:                    ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb73

if.end62.sw.bb73_crit_edge144:                    ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb73

if.end62.sw.bb73_crit_edge143:                    ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb73

if.end62.sw.bb73_crit_edge142:                    ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb73

if.end62.sw.bb73_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb73

if.end62.sw.bb72_crit_edge141:                    ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb72

if.end62.sw.bb72_crit_edge140:                    ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb72

if.end62.sw.bb72_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb72

if.end62.sw.bb71_crit_edge139:                    ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb71

if.end62.sw.bb71_crit_edge138:                    ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb71

if.end62.sw.bb71_crit_edge137:                    ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb71

if.end62.sw.bb71_crit_edge136:                    ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb71

if.end62.sw.bb71_crit_edge135:                    ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb71

if.end62.sw.bb71_crit_edge134:                    ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb71

if.end62.sw.bb71_crit_edge133:                    ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb71

if.end62.sw.bb71_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb71

do.end68:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  %call70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #8
  br label %done

sw.bb71:                                          ; preds = %if.end62.sw.bb71_crit_edge, %if.end62.sw.bb71_crit_edge133, %if.end62.sw.bb71_crit_edge134, %if.end62.sw.bb71_crit_edge135, %if.end62.sw.bb71_crit_edge136, %if.end62.sw.bb71_crit_edge137, %if.end62.sw.bb71_crit_edge138, %if.end62.sw.bb71_crit_edge139
  tail call fastcc void @post_qp_event(ptr noundef %dev, ptr noundef nonnull %call.i, ptr noundef nonnull %call, ptr noundef %err_cqe, i32 noundef 3)
  br label %done

sw.bb72:                                          ; preds = %if.end62.sw.bb72_crit_edge, %if.end62.sw.bb72_crit_edge140, %if.end62.sw.bb72_crit_edge141
  tail call fastcc void @post_qp_event(ptr noundef %dev, ptr noundef nonnull %call.i, ptr noundef nonnull %call, ptr noundef %err_cqe, i32 noundef 8)
  br label %done

sw.bb73:                                          ; preds = %if.end62.sw.bb73_crit_edge, %if.end62.sw.bb73_crit_edge142, %if.end62.sw.bb73_crit_edge143, %if.end62.sw.bb73_crit_edge144, %if.end62.sw.bb73_crit_edge145, %if.end62.sw.bb73_crit_edge146, %if.end62.sw.bb73_crit_edge147, %if.end62.sw.bb73_crit_edge148, %if.end62.sw.bb73_crit_edge149, %if.end62.sw.bb73_crit_edge150, %if.end62.sw.bb73_crit_edge151, %if.end62.sw.bb73_crit_edge152, %if.end62.sw.bb73_crit_edge153, %if.end62.sw.bb73_crit_edge154, %if.end62.sw.bb73_crit_edge155, %if.end62.sw.bb73_crit_edge156
  tail call fastcc void @post_qp_event(ptr noundef %dev, ptr noundef nonnull %call.i, ptr noundef nonnull %call, ptr noundef %err_cqe, i32 noundef 1)
  br label %done

do.end76:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  %qid = getelementptr inbounds %struct.c4iw_qp, ptr %call, i32 0, i32 5, i32 0, i32 10
  %23 = ptrtoint ptr %qid to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %qid, align 8
  %call81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %and65, i32 noundef %24) #8
  tail call fastcc void @post_qp_event(ptr noundef %dev, ptr noundef nonnull %call.i, ptr noundef nonnull %call, ptr noundef %err_cqe, i32 noundef 1)
  br label %done

done:                                             ; preds = %do.end76, %sw.bb73, %sw.bb72, %sw.bb71, %do.end68, %if.then61
  tail call void @c4iw_cq_rem_ref(ptr noundef nonnull %call.i) #5
  tail call void @c4iw_qp_rem_ref(ptr noundef nonnull %call) #5
  br label %out

out:                                              ; preds = %done, %do.end30, %do.end
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_load(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @c4iw_qp_add_ref(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @post_qp_event(ptr nocapture noundef readonly %dev, ptr noundef %chp, ptr noundef %qhp, ptr nocapture noundef readonly %err_cqe, i32 noundef %ib_event) unnamed_addr #0 align 64 {
entry:
  %event = alloca %struct.ib_event, align 4
  %attrs = alloca %struct.c4iw_qp_attributes, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %event) #5
  %0 = getelementptr inbounds %struct.ib_event, ptr %event, i32 0, i32 1
  %1 = getelementptr inbounds %struct.ib_event, ptr %event, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %attrs) #5
  %2 = call ptr @memset(ptr %attrs, i32 255, i32 128)
  tail call fastcc void @dump_err_cqe(ptr noundef %dev, ptr noundef %err_cqe)
  %state = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 4, i32 7
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %next_state = getelementptr inbounds %struct.c4iw_qp_attributes, ptr %attrs, i32 0, i32 15
  %5 = ptrtoint ptr %next_state to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 3, ptr %next_state, align 4
  %rhp = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 2
  %6 = ptrtoint ptr %rhp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rhp, align 4
  %call = call i32 @c4iw_modify_qp(ptr noundef %7, ptr noundef %qhp, i32 noundef 1, ptr noundef nonnull %attrs, i32 noundef 0) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %ib_event, ptr %1, align 4
  %9 = ptrtoint ptr %chp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %chp, align 8
  %11 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %event, align 4
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %qhp, ptr %0, align 4
  %event_handler = getelementptr inbounds %struct.ib_qp, ptr %qhp, i32 0, i32 15
  %13 = ptrtoint ptr %event_handler to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %event_handler, align 4
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %if.end.if.end13_crit_edge, label %if.then9

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %qp_context = getelementptr inbounds %struct.ib_qp, ptr %qhp, i32 0, i32 16
  %15 = ptrtoint ptr %qp_context to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %qp_context, align 8
  call void %14(ptr noundef nonnull %event, ptr noundef %16) #5
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.end.if.end13_crit_edge
  %flags.i = getelementptr inbounds %struct.c4iw_cq, ptr %chp, i32 0, i32 3, i32 23
  %call.i = call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %flags.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool15.not = icmp eq i32 %call.i, 0
  br i1 %tobool15.not, label %if.end13.if.end27_crit_edge, label %do.body17

if.end13.if.end27_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27

do.body17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %comp_handler_lock = getelementptr inbounds %struct.c4iw_cq, ptr %chp, i32 0, i32 5
  %call20 = call i32 @_raw_spin_lock_irqsave(ptr noundef %comp_handler_lock) #5
  %comp_handler = getelementptr inbounds %struct.ib_cq, ptr %chp, i32 0, i32 2
  %17 = ptrtoint ptr %comp_handler to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %comp_handler, align 8
  %cq_context = getelementptr inbounds %struct.ib_cq, ptr %chp, i32 0, i32 4
  %19 = ptrtoint ptr %cq_context to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cq_context, align 8
  call void %18(ptr noundef %chp, ptr noundef %20) #5
  call void @_raw_spin_unlock_irqrestore(ptr noundef %comp_handler_lock, i32 noundef %call20) #5
  br label %if.end27

if.end27:                                         ; preds = %do.body17, %if.end13.if.end27_crit_edge
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %attrs) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %event) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @c4iw_cq_rem_ref(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @c4iw_qp_rem_ref(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @c4iw_ev_handler(ptr noundef %dev, i32 noundef %qid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cqs = getelementptr inbounds %struct.c4iw_dev, ptr %dev, i32 0, i32 3
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cqs) #5
  %call6 = tail call ptr @xa_load(ptr noundef %cqs, i32 noundef %qid) #5
  %tobool.not = icmp eq ptr %call6, null
  br i1 %tobool.not, label %do.body26, label %if.then

if.then:                                          ; preds = %entry
  %refcnt = getelementptr inbounds %struct.c4iw_cq, ptr %call6, i32 0, i32 6
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #5
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #5
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #5, !srcloc !53
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.then.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !54

if.then.if.end15.sink.split.i.i.i_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.then
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !55

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef %.sink.i.i.i) #5
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cqs, i32 noundef %call2) #5
  %flags.i = getelementptr inbounds %struct.c4iw_cq, ptr %call6, i32 0, i32 3, i32 23
  %call.i = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %flags.i) #5
  %comp_handler_lock = getelementptr inbounds %struct.c4iw_cq, ptr %call6, i32 0, i32 5
  %call18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %comp_handler_lock) #5
  %comp_handler = getelementptr inbounds %struct.ib_cq, ptr %call6, i32 0, i32 2
  %2 = ptrtoint ptr %comp_handler to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %comp_handler, align 8
  %cq_context = getelementptr inbounds %struct.ib_cq, ptr %call6, i32 0, i32 4
  %4 = ptrtoint ptr %cq_context to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cq_context, align 8
  tail call void %3(ptr noundef nonnull %call6, ptr noundef %5) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %comp_handler_lock, i32 noundef %call18) #5
  tail call void @c4iw_cq_rem_ref(ptr noundef nonnull %call6) #5
  br label %if.end37

do.body26:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c4iw_ev_handler.__UNIQUE_ID_ddebug676, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c4iw_ev_handler, %if.then32)) #5
          to label %do.end34 [label %if.then32], !srcloc !56

if.then32:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @c4iw_ev_handler.__UNIQUE_ID_ddebug676, ptr noundef nonnull @.str.15, i32 noundef %qid) #5
  br label %do.end34

do.end34:                                         ; preds = %if.then32, %do.body26
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cqs, i32 noundef %call2) #5
  br label %if.end37

if.end37:                                         ; preds = %do.end34, %refcount_inc.exit
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dump_err_cqe(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %err_cqe) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lldi = getelementptr inbounds %struct.c4iw_dev, ptr %dev, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %lldi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lldi, align 8
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %err_cqe to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %err_cqe, align 8
  %shr = lshr i32 %3, 12
  %and4 = and i32 %3, 15
  %shr6 = lshr i32 %3, 5
  %and7 = and i32 %shr6, 31
  %shr9 = lshr i32 %3, 4
  %and10 = and i32 %shr9, 1
  %len = getelementptr inbounds %struct.t4_cqe, ptr %err_cqe, i32 0, i32 1
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  %u = getelementptr %struct.t4_cqe, ptr %err_cqe, i32 0, i32 2
  %6 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %u, align 8
  %wrid_low = getelementptr inbounds %struct.anon.224, ptr %u, i32 0, i32 1
  %8 = ptrtoint ptr %wrid_low to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %wrid_low, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16, i32 noundef %shr, i32 noundef %and4, i32 noundef %and7, i32 noundef %and10, i32 noundef %5, i32 noundef %7, i32 noundef %9) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dump_err_cqe.__UNIQUE_ID_ddebug675, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dump_err_cqe, %if.then)) #5
          to label %do.end23 [label %if.then], !srcloc !56

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %err_cqe to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %err_cqe, align 8
  %12 = ptrtoint ptr %u to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %u, align 8
  %arrayidx16 = getelementptr i64, ptr %err_cqe, i32 2
  %14 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %arrayidx16, align 8
  %arrayidx17 = getelementptr i64, ptr %err_cqe, i32 3
  %16 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %arrayidx17, align 8
  %arrayidx18 = getelementptr i64, ptr %err_cqe, i32 4
  %18 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %arrayidx18, align 8
  %arrayidx19 = getelementptr i64, ptr %err_cqe, i32 5
  %20 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %arrayidx19, align 8
  %arrayidx20 = getelementptr i64, ptr %err_cqe, i32 6
  %22 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %arrayidx20, align 8
  %arrayidx21 = getelementptr i64, ptr %err_cqe, i32 7
  %24 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %arrayidx21, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dump_err_cqe.__UNIQUE_ID_ddebug675, ptr noundef nonnull @.str.21, i64 noundef %11, i64 noundef %13, i64 noundef %15, i64 noundef %17, i64 noundef %19, i64 noundef %21, i64 noundef %23, i64 noundef %25) #5
  br label %do.end23

do.end23:                                         ; preds = %if.then, %entry
  %26 = ptrtoint ptr %err_cqe to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %err_cqe, align 8
  %28 = and i32 %27, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool27.not = icmp eq i32 %28, 0
  br i1 %tobool27.not, label %land.lhs.true, label %do.end23.if.end37_crit_edge

do.end23.if.end37_crit_edge:                      ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

land.lhs.true:                                    ; preds = %do.end23
  %and30 = and i32 %27, 15
  %29 = zext i32 %and30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %and30, label %land.lhs.true.if.end37_crit_edge [
    i32 0, label %land.lhs.true.if.then35_crit_edge
    i32 2, label %land.lhs.true.if.then35_crit_edge58
  ]

land.lhs.true.if.then35_crit_edge58:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then35

land.lhs.true.if.then35_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then35

land.lhs.true.if.end37_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

if.then35:                                        ; preds = %land.lhs.true.if.then35_crit_edge, %land.lhs.true.if.then35_crit_edge58
  %30 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %u, align 8
  tail call fastcc void @print_tpte(ptr noundef %dev, i32 noundef %31)
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %land.lhs.true.if.end37_crit_edge, %do.end23.if.end37_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @c4iw_modify_qp(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @print_tpte(ptr nocapture noundef readonly %dev, i32 noundef %stag) unnamed_addr #0 align 64 {
entry:
  %tpte = alloca %struct.fw_ri_tpte, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tpte) #5
  %0 = getelementptr inbounds %struct.fw_ri_tpte, ptr %tpte, i32 0, i32 1
  %1 = getelementptr inbounds %struct.fw_ri_tpte, ptr %tpte, i32 0, i32 3
  %2 = getelementptr inbounds %struct.fw_ri_tpte, ptr %tpte, i32 0, i32 4
  %3 = getelementptr inbounds %struct.fw_ri_tpte, ptr %tpte, i32 0, i32 5
  %4 = getelementptr inbounds %struct.fw_ri_tpte, ptr %tpte, i32 0, i32 7
  %ports = getelementptr inbounds %struct.c4iw_dev, ptr %dev, i32 0, i32 1, i32 8, i32 3
  %5 = call ptr @memset(ptr %tpte, i32 255, i32 32)
  %6 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ports, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %call = call i32 @cxgb4_read_tpte(ptr noundef %9, i32 noundef %stag, ptr noundef nonnull %tpte) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body4, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %lldi = getelementptr inbounds %struct.c4iw_dev, ptr %dev, i32 0, i32 1, i32 8
  %10 = ptrtoint ptr %lldi to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lldi, align 8
  %dev3 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef %call) #8
  br label %cleanup

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @print_tpte.__UNIQUE_ID_ddebug674, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@print_tpte, %if.then9)) #5
          to label %cleanup [label %if.then9], !srcloc !56

if.then9:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #7
  %and = and i32 %stag, -256
  %12 = ptrtoint ptr %tpte to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tpte, align 4
  %shr = lshr i32 %13, 31
  %shr12 = lshr i32 %13, 23
  %and13 = and i32 %shr12, 255
  %shr15 = lshr i32 %13, 22
  %and16 = and i32 %shr15, 1
  %and19 = and i32 %13, 1048575
  %14 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %0, align 4
  %shr20 = lshr i32 %15, 28
  %shr23 = lshr i32 %15, 20
  %and24 = and i32 %shr23, 31
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %4, align 4
  %conv = zext i32 %17 to i64
  %shl = shl nuw i64 %conv, 32
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %1, align 4
  %conv25 = zext i32 %19 to i64
  %or = or i64 %shl, %conv25
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %2, align 4
  %conv26 = zext i32 %21 to i64
  %shl27 = shl nuw i64 %conv26, 32
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %3, align 4
  %conv28 = zext i32 %23 to i64
  %or29 = or i64 %shl27, %conv28
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @print_tpte.__UNIQUE_ID_ddebug674, ptr noundef nonnull @.str.25, i32 noundef %and, i32 noundef %shr, i32 noundef %and13, i32 noundef %and16, i32 noundef %and19, i32 noundef %shr20, i32 noundef %and24, i64 noundef %or, i64 noundef %or29) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %do.body4, %do.end
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tpte) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgb4_read_tpte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !23, !24, !26, !27, !28, !29, !30, !31, !33, !34, !35, !37, !38, !39, !40, !42, !43}
!llvm.module.flags = !{!44, !45, !46, !47, !48, !49, !50, !51}
!llvm.ident = !{!52}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/hw/cxgb4/ev.c", i32 129, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @c4iw_ev_dispatch._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @c4iw_ev_dispatch._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/infiniband/hw/cxgb4/ev.c", i32 144, i32 3}
!8 = !{ptr @c4iw_ev_dispatch._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @c4iw_ev_dispatch._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/infiniband/hw/cxgb4/ev.c", i32 168, i32 3}
!12 = !{ptr @c4iw_ev_dispatch._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @c4iw_ev_dispatch._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/infiniband/hw/cxgb4/ev.c", i32 210, i32 3}
!16 = !{ptr @c4iw_ev_dispatch._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @c4iw_ev_dispatch._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/infiniband/hw/cxgb4/ev.c", i32 238, i32 3}
!20 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.14, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @c4iw_ev_handler.__UNIQUE_ID_ddebug676, !19, !"__UNIQUE_ID_ddebug676", i1 false, i1 false}
!23 = !{ptr @.str.15, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.16, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/infiniband/hw/cxgb4/ev.c", i32 66, i32 2}
!26 = !{ptr @.str.17, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.18, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.19, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @dump_err_cqe._entry, !25, !"_entry", i1 false, i1 false}
!30 = !{ptr @dump_err_cqe._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.20, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/infiniband/hw/cxgb4/ev.c", i32 73, i32 2}
!33 = !{ptr @dump_err_cqe.__UNIQUE_ID_ddebug675, !32, !"__UNIQUE_ID_ddebug675", i1 false, i1 false}
!34 = !{ptr @.str.21, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.22, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/infiniband/hw/cxgb4/ev.c", i32 46, i32 3}
!37 = !{ptr @.str.23, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @print_tpte._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @print_tpte._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.24, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/infiniband/hw/cxgb4/ev.c", i32 50, i32 2}
!42 = !{ptr @print_tpte.__UNIQUE_ID_ddebug674, !41, !"__UNIQUE_ID_ddebug674", i1 false, i1 false}
!43 = !{ptr @.str.25, !41, !"<string literal>", i1 false, i1 false}
!44 = !{i32 1, !"wchar_size", i32 2}
!45 = !{i32 1, !"min_enum_size", i32 4}
!46 = !{i32 8, !"branch-target-enforcement", i32 0}
!47 = !{i32 8, !"sign-return-address", i32 0}
!48 = !{i32 8, !"sign-return-address-all", i32 0}
!49 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!50 = !{i32 7, !"uwtable", i32 1}
!51 = !{i32 7, !"frame-pointer", i32 2}
!52 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!53 = !{i64 2148587325, i64 2148587357, i64 2148587386, i64 2148587420, i64 2148587451, i64 2148587474}
!54 = !{!"branch_weights", i32 1, i32 2000}
!55 = !{!"branch_weights", i32 2000, i32 1}
!56 = !{i64 2148206521, i64 2148206526, i64 2148206539, i64 2148206583, i64 2148206617, i64 2148206638}
