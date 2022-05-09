; ModuleID = '/llk/IR_all_yes/drivers/infiniband/hw/cxgb4/resource.c_pt.bc'
source_filename = "../drivers/infiniband/hw/cxgb4/resource.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.c4iw_resource = type { %struct.c4iw_id_table, %struct.c4iw_id_table, %struct.c4iw_id_table, %struct.c4iw_id_table }
%struct.c4iw_id_table = type { i32, i32, i32, i32, %struct.spinlock, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.c4iw_rdev = type { %struct.c4iw_resource, i32, i32, %struct.c4iw_dev_ucontext, ptr, ptr, ptr, i32, %struct.cxgb4_lld_info, i32, ptr, i32, ptr, %struct.c4iw_stats, %struct.c4iw_hw_queue, ptr, %struct.atomic_t, ptr, i32, ptr, %struct.completion, %struct.completion, %struct.kref, %struct.kref }
%struct.c4iw_dev_ucontext = type { %struct.list_head, %struct.list_head, %struct.mutex, %struct.kref }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.cxgb4_lld_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i16, i8, i8, i8, i8, i8, i32, i32, i32, i16, i16, i32, i16, [4 x i16], ptr, ptr, i32, i32, i32, i32, i32, i8, i32, i32, i8, i32, i32, i32, i32, ptr, i32, i8, i8, i8 }
%struct.c4iw_stats = type { %struct.mutex, %struct.c4iw_stat, %struct.c4iw_stat, %struct.c4iw_stat, %struct.c4iw_stat, %struct.c4iw_stat, %struct.c4iw_stat, %struct.c4iw_stat, %struct.c4iw_stat, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.c4iw_stat = type { i64, i64, i64, i64 }
%struct.c4iw_hw_queue = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.cxgb4_virt_res = type { %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, i32, %struct.cxgb4_range }
%struct.cxgb4_range = type { i32, i32 }
%struct.c4iw_qid_list = type { %struct.list_head, i32 }
%struct.gen_pool = type { %struct.spinlock, %struct.list_head, i32, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.166, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.166 = type { ptr }

@c4iw_put_resource.__UNIQUE_ID_ddebug674 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 26, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"iw_cxgb4\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"c4iw_put_resource\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/infiniband/hw/cxgb4/resource.c\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"entry 0x%x\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"iw_cxgb4: entry 0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@c4iw_get_cqid.__UNIQUE_ID_ddebug675 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.6, i8 0, i8 38, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"c4iw_get_cqid\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"qid 0x%x\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"iw_cxgb4: qid 0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@c4iw_put_cqid.__UNIQUE_ID_ddebug676 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.6, i8 0, i8 42, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"c4iw_put_cqid\00", [18 x i8] zeroinitializer }, align 32
@c4iw_get_qpid.__UNIQUE_ID_ddebug677 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.6, i8 0, i8 57, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"c4iw_get_qpid\00", [18 x i8] zeroinitializer }, align 32
@c4iw_put_qpid.__UNIQUE_ID_ddebug678 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.6, i8 0, i8 61, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"c4iw_put_qpid\00", [18 x i8] zeroinitializer }, align 32
@c4iw_pblpool_alloc.__UNIQUE_ID_ddebug679 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 0, i8 67, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"c4iw_pblpool_alloc\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"addr 0x%x size %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"iw_cxgb4: addr 0x%x size %d\0A\00", [35 x i8] zeroinitializer }, align 32
@c4iw_pblpool_free.__UNIQUE_ID_ddebug680 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.12, i8 0, i8 73, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"c4iw_pblpool_free\00", [46 x i8] zeroinitializer }, align 32
@c4iw_pblpool_create.__UNIQUE_ID_ddebug683 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.16, i8 0, i8 79, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"c4iw_pblpool_create\00", [44 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to add PBL chunk (%x/%x)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"iw_cxgb4: failed to add PBL chunk (%x/%x)\0A\00", [53 x i8] zeroinitializer }, align 32
@c4iw_pblpool_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.15, ptr @.str.2, i32 319, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014iw_cxgb4: Failed to add all PBL chunks (%x/%x)\0A\00", [46 x i8] zeroinitializer }, align 32
@c4iw_pblpool_create._entry_ptr = internal global ptr @c4iw_pblpool_create._entry, section ".printk_index", align 4
@c4iw_pblpool_create.__UNIQUE_ID_ddebug684 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.19, i8 0, i8 81, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"added PBL chunk (%x/%x)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"iw_cxgb4: added PBL chunk (%x/%x)\0A\00", [61 x i8] zeroinitializer }, align 32
@c4iw_rqtpool_alloc.__UNIQUE_ID_ddebug685 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.12, i8 0, i8 86, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"c4iw_rqtpool_alloc\00", [45 x i8] zeroinitializer }, align 32
@c4iw_rqtpool_alloc._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.22, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@c4iw_rqtpool_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.2, i32 350, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014iw_cxgb4: %s: Out of RQT memory\0A\00", [61 x i8] zeroinitializer }, align 32
@c4iw_rqtpool_alloc._entry_ptr = internal global ptr @c4iw_rqtpool_alloc._entry, section ".printk_index", align 4
@c4iw_rqtpool_free.__UNIQUE_ID_ddebug686 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.12, i8 0, i8 93, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"c4iw_rqtpool_free\00", [46 x i8] zeroinitializer }, align 32
@c4iw_rqtpool_create.__UNIQUE_ID_ddebug689 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.26, i8 0, i8 101, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"c4iw_rqtpool_create\00", [44 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to add RQT chunk (%x/%x)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"iw_cxgb4: failed to add RQT chunk (%x/%x)\0A\00", [53 x i8] zeroinitializer }, align 32
@c4iw_rqtpool_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.25, ptr @.str.2, i32 409, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014iw_cxgb4: Failed to add all RQT chunks (%x/%x)\0A\00", [46 x i8] zeroinitializer }, align 32
@c4iw_rqtpool_create._entry_ptr = internal global ptr @c4iw_rqtpool_create._entry, section ".printk_index", align 4
@c4iw_rqtpool_create.__UNIQUE_ID_ddebug690 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.29, i8 0, i8 103, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"added RQT chunk (%x/%x)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"iw_cxgb4: added RQT chunk (%x/%x)\0A\00", [61 x i8] zeroinitializer }, align 32
@c4iw_ocqp_pool_alloc.__UNIQUE_ID_ddebug691 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.2, ptr @.str.12, i8 0, i8 115, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"c4iw_ocqp_pool_alloc\00", [43 x i8] zeroinitializer }, align 32
@c4iw_ocqp_pool_free.__UNIQUE_ID_ddebug692 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.2, ptr @.str.12, i8 0, i8 118, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"c4iw_ocqp_pool_free\00", [44 x i8] zeroinitializer }, align 32
@c4iw_ocqp_pool_create.__UNIQUE_ID_ddebug695 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.2, ptr @.str.34, i8 0, i8 124, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"c4iw_ocqp_pool_create\00", [42 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to add OCQP chunk (%x/%x)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"iw_cxgb4: failed to add OCQP chunk (%x/%x)\0A\00", [52 x i8] zeroinitializer }, align 32
@c4iw_ocqp_pool_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.33, ptr @.str.2, i32 500, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014iw_cxgb4: Failed to add all OCQP chunks (%x/%x)\0A\00", [45 x i8] zeroinitializer }, align 32
@c4iw_ocqp_pool_create._entry_ptr = internal global ptr @c4iw_ocqp_pool_create._entry, section ".printk_index", align 4
@c4iw_ocqp_pool_create.__UNIQUE_ID_ddebug696 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.2, ptr @.str.37, i8 0, i8 126, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"added OCQP chunk (%x/%x)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"iw_cxgb4: added OCQP chunk (%x/%x)\0A\00", [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 104, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 155, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 171, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 229, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 245, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 268, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 292, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 315, i32 4 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 318, i32 5 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 324, i32 4 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 347, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 349, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 374, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 405, i32 4 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 408, i32 5 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 414, i32 4 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 461, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 474, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 496, i32 4 }
@___asan_gen_.159 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 499, i32 5 }
@___asan_gen_.168 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.169 = private constant [42 x i8] c"../drivers/infiniband/hw/cxgb4/resource.c\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 505, i32 4 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @c4iw_ocqp_pool_create._entry, ptr @c4iw_ocqp_pool_create._entry_ptr, ptr @c4iw_pblpool_create._entry, ptr @c4iw_pblpool_create._entry_ptr, ptr @c4iw_rqtpool_alloc._entry, ptr @c4iw_rqtpool_alloc._entry_ptr, ptr @c4iw_rqtpool_create._entry, ptr @c4iw_rqtpool_create._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @c4iw_rqtpool_alloc._rs, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c4iw_pblpool_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c4iw_rqtpool_alloc._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c4iw_rqtpool_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c4iw_rqtpool_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c4iw_ocqp_pool_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @c4iw_init_resource(ptr noundef %rdev, i32 noundef %nr_tpt, i32 noundef %nr_pdid, i32 noundef %nr_srqt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @c4iw_id_table_alloc(ptr noundef %rdev, i32 noundef 0, i32 noundef %nr_tpt, i32 noundef 1, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %qid_table.i = getelementptr inbounds %struct.c4iw_resource, ptr %rdev, i32 0, i32 1
  %vr.i = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 8, i32 4
  %0 = ptrtoint ptr %vr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vr.i, align 8
  %qp.i = getelementptr inbounds %struct.cxgb4_virt_res, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %qp.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %qp.i, align 4
  %size.i = getelementptr inbounds %struct.cxgb4_virt_res, ptr %1, i32 0, i32 6, i32 1
  %4 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size.i, align 4
  %call.i = tail call i32 @c4iw_id_table_alloc(ptr noundef %qid_table.i, i32 noundef %3, i32 noundef %5, i32 noundef %5, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.qid_err_crit_edge

if.end.qid_err_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %qid_err

if.end.i:                                         ; preds = %if.end
  %6 = ptrtoint ptr %vr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vr.i, align 8
  %qp10.i = getelementptr inbounds %struct.cxgb4_virt_res, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %qp10.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %qp10.i, align 4
  %size1937.i = getelementptr inbounds %struct.cxgb4_virt_res, ptr %7, i32 0, i32 6, i32 1
  %10 = ptrtoint ptr %size1937.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size1937.i, align 4
  %add38.i = add i32 %11, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %add38.i)
  %cmp39.i = icmp ult i32 %9, %add38.i
  br i1 %cmp39.i, label %for.body.lr.ph.i, label %if.end.i.if.end4_crit_edge

if.end.i.if.end4_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %qpmask.i = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.040.i = phi i32 [ %9, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %12 = ptrtoint ptr %qpmask.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %qpmask.i, align 8
  %and.i = and i32 %13, %i.040.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool20.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool20.not.i, label %if.then21.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then21.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @c4iw_id_free(ptr noundef %qid_table.i, i32 noundef %i.040.i) #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then21.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.040.i, 1
  %14 = ptrtoint ptr %vr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vr.i, align 8
  %qp14.i = getelementptr inbounds %struct.cxgb4_virt_res, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %qp14.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %qp14.i, align 4
  %size19.i = getelementptr inbounds %struct.cxgb4_virt_res, ptr %15, i32 0, i32 6, i32 1
  %18 = ptrtoint ptr %size19.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %size19.i, align 4
  %add.i = add i32 %19, %17
  %cmp.i = icmp ult i32 %inc.i, %add.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end4_crit_edge

for.inc.i.if.end4_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

if.end4:                                          ; preds = %for.inc.i.if.end4_crit_edge, %if.end.i.if.end4_crit_edge
  %pdid_table = getelementptr inbounds %struct.c4iw_resource, ptr %rdev, i32 0, i32 2
  %call6 = tail call i32 @c4iw_id_table_alloc(ptr noundef %pdid_table, i32 noundef 0, i32 noundef %nr_pdid, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end4.pdid_err_crit_edge

if.end4.pdid_err_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %pdid_err

if.end9:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_srqt)
  %tobool10.not = icmp eq i32 %nr_srqt, 0
  %srq_table = getelementptr inbounds %struct.c4iw_resource, ptr %rdev, i32 0, i32 3
  br i1 %tobool10.not, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %call13 = tail call i32 @c4iw_id_table_alloc(ptr noundef %srq_table, i32 noundef 0, i32 noundef 1, i32 noundef 1, i32 noundef 0) #6
  br label %if.end17

if.else:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %call16 = tail call i32 @c4iw_id_table_alloc(ptr noundef %srq_table, i32 noundef 0, i32 noundef %nr_srqt, i32 noundef 0, i32 noundef 0) #6
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then11
  %err.0 = phi i32 [ %call16, %if.else ], [ %call13, %if.then11 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool18.not = icmp eq i32 %err.0, 0
  br i1 %tobool18.not, label %if.end17.cleanup_crit_edge, label %srq_err

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

srq_err:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @c4iw_id_table_free(ptr noundef %pdid_table) #6
  br label %pdid_err

pdid_err:                                         ; preds = %srq_err, %if.end4.pdid_err_crit_edge
  tail call void @c4iw_id_table_free(ptr noundef %qid_table.i) #6
  br label %qid_err

qid_err:                                          ; preds = %pdid_err, %if.end.qid_err_crit_edge
  tail call void @c4iw_id_table_free(ptr noundef %rdev) #6
  br label %cleanup

cleanup:                                          ; preds = %qid_err, %if.end17.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end17.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ], [ -12, %qid_err ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @c4iw_id_table_alloc(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @c4iw_id_table_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @c4iw_get_resource(ptr noundef %id_table) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @c4iw_id_alloc(ptr noundef %id_table) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp = icmp eq i32 %call, -1
  %.call = select i1 %cmp, i32 0, i32 %call
  ret i32 %.call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @c4iw_id_alloc(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @c4iw_put_resource(ptr noundef %id_table, i32 noundef %entry1) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c4iw_put_resource.__UNIQUE_ID_ddebug674, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c4iw_put_resource, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !95

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @c4iw_put_resource.__UNIQUE_ID_ddebug674, ptr noundef nonnull @.str.4, i32 noundef %entry1) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @c4iw_id_free(ptr noundef %id_table, i32 noundef %entry1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @c4iw_id_free(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @c4iw_get_cqid(ptr noundef %rdev, ptr noundef %uctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.c4iw_dev_ucontext, ptr %uctx, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %cqids = getelementptr inbounds %struct.c4iw_dev_ucontext, ptr %uctx, i32 0, i32 1
  %0 = ptrtoint ptr %cqids to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %cqids, align 4
  %cmp.i.not = icmp eq ptr %1, %cqids
  br i1 %cmp.i.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %qid4 = getelementptr inbounds %struct.c4iw_qid_list, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %qid4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %qid4, align 4
  tail call void @kfree(ptr noundef %1) #6
  br label %out

if.else:                                          ; preds = %entry
  %qid_table = getelementptr inbounds %struct.c4iw_resource, ptr %rdev, i32 0, i32 1
  %call.i = tail call i32 @c4iw_id_alloc(ptr noundef %qid_table) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.i114 = icmp eq i32 %call.i, -1
  %.call.i = select i1 %cmp.i114, i32 0, i32 %call.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.call.i)
  %tobool6.not = icmp eq i32 %.call.i, 0
  br i1 %tobool6.not, label %if.else.out_crit_edge, label %if.end

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end:                                           ; preds = %if.else
  %stats = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %stats, i32 noundef 0) #6
  %qpmask = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 1
  %12 = ptrtoint ptr %qpmask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %qpmask, align 8
  %add = add i32 %13, 1
  %conv = zext i32 %add to i64
  %cur = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 13, i32 1, i32 1
  %14 = ptrtoint ptr %cur to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %cur, align 8
  %add11 = add i64 %15, %conv
  store i64 %add11, ptr %cur, align 8
  tail call void @mutex_unlock(ptr noundef %stats) #6
  %add14 = add nuw i32 %.call.i, 1
  %16 = ptrtoint ptr %qpmask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %qpmask, align 8
  %and130 = and i32 %17, %add14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and130)
  %tobool16.not131 = icmp eq i32 %and130, 0
  br i1 %tobool16.not131, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %prev.i115 = getelementptr inbounds %struct.c4iw_dev_ucontext, ptr %uctx, i32 0, i32 1, i32 1
  br label %for.body

for.body:                                         ; preds = %list_add_tail.exit.for.body_crit_edge, %for.body.lr.ph
  %i.0132 = phi i32 [ %add14, %for.body.lr.ph ], [ %inc, %list_add_tail.exit.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3264, i32 noundef 12) #9
  %tobool18.not = icmp eq ptr %call7.i, null
  br i1 %tobool18.not, label %for.body.out_crit_edge, label %if.end20

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end20:                                         ; preds = %for.body
  %qid21 = getelementptr inbounds %struct.c4iw_qid_list, ptr %call7.i, i32 0, i32 1
  %19 = ptrtoint ptr %qid21 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %i.0132, ptr %qid21, align 8
  %20 = ptrtoint ptr %prev.i115 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i115, align 4
  %call.i.i116 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i, ptr noundef %21, ptr noundef %cqids) #6
  br i1 %call.i.i116, label %if.end.i.i117, label %if.end20.list_add_tail.exit_crit_edge

if.end20.list_add_tail.exit_crit_edge:            ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit

if.end.i.i117:                                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %prev.i115 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call7.i, ptr %prev.i115, align 4
  %23 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %cqids, ptr %call7.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %24 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev3.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %call7.i, ptr %21, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i117, %if.end20.list_add_tail.exit_crit_edge
  %inc = add i32 %i.0132, 1
  %26 = ptrtoint ptr %qpmask to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %qpmask, align 8
  %and = and i32 %27, %inc
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %list_add_tail.exit.for.end_crit_edge, label %list_add_tail.exit.for.body_crit_edge

list_add_tail.exit.for.body_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

list_add_tail.exit.for.end_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %list_add_tail.exit.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %28 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i112 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %28, i32 noundef 3264, i32 noundef 12) #9
  %tobool25.not = icmp eq ptr %call7.i112, null
  br i1 %tobool25.not, label %for.end.out_crit_edge, label %if.end27

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end27:                                         ; preds = %for.end
  %qid28 = getelementptr inbounds %struct.c4iw_qid_list, ptr %call7.i112, i32 0, i32 1
  %29 = ptrtoint ptr %qid28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %.call.i, ptr %qid28, align 8
  %prev.i118 = getelementptr inbounds %struct.list_head, ptr %uctx, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i118 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i118, align 4
  %call.i.i119 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i112, ptr noundef %31, ptr noundef %uctx) #6
  br i1 %call.i.i119, label %if.end.i.i121, label %if.end27.list_add_tail.exit122_crit_edge

if.end27.list_add_tail.exit122_crit_edge:         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit122

if.end.i.i121:                                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %prev.i118 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call7.i112, ptr %prev.i118, align 4
  %33 = ptrtoint ptr %call7.i112 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %uctx, ptr %call7.i112, align 8
  %prev3.i.i120 = getelementptr inbounds %struct.list_head, ptr %call7.i112, i32 0, i32 1
  %34 = ptrtoint ptr %prev3.i.i120 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev3.i.i120, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %call7.i112, ptr %31, align 4
  br label %list_add_tail.exit122

list_add_tail.exit122:                            ; preds = %if.end.i.i121, %if.end27.list_add_tail.exit122_crit_edge
  %36 = ptrtoint ptr %qpmask to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %qpmask, align 8
  %and33133 = and i32 %37, %add14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33133)
  %tobool34.not134 = icmp eq i32 %and33133, 0
  br i1 %tobool34.not134, label %list_add_tail.exit122.out_crit_edge, label %list_add_tail.exit122.for.body35_crit_edge

list_add_tail.exit122.for.body35_crit_edge:       ; preds = %list_add_tail.exit122
  br label %for.body35

list_add_tail.exit122.out_crit_edge:              ; preds = %list_add_tail.exit122
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

for.body35:                                       ; preds = %list_add_tail.exit127.for.body35_crit_edge, %list_add_tail.exit122.for.body35_crit_edge
  %i.1135 = phi i32 [ %inc44, %list_add_tail.exit127.for.body35_crit_edge ], [ %add14, %list_add_tail.exit122.for.body35_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %38 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i113 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %38, i32 noundef 3264, i32 noundef 12) #9
  %tobool37.not = icmp eq ptr %call7.i113, null
  br i1 %tobool37.not, label %for.body35.out_crit_edge, label %if.end39

for.body35.out_crit_edge:                         ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end39:                                         ; preds = %for.body35
  %qid40 = getelementptr inbounds %struct.c4iw_qid_list, ptr %call7.i113, i32 0, i32 1
  %39 = ptrtoint ptr %qid40 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %i.1135, ptr %qid40, align 8
  %40 = ptrtoint ptr %prev.i118 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prev.i118, align 4
  %call.i.i124 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i113, ptr noundef %41, ptr noundef %uctx) #6
  br i1 %call.i.i124, label %if.end.i.i126, label %if.end39.list_add_tail.exit127_crit_edge

if.end39.list_add_tail.exit127_crit_edge:         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit127

if.end.i.i126:                                    ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %prev.i118 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call7.i113, ptr %prev.i118, align 4
  %43 = ptrtoint ptr %call7.i113 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %uctx, ptr %call7.i113, align 8
  %prev3.i.i125 = getelementptr inbounds %struct.list_head, ptr %call7.i113, i32 0, i32 1
  %44 = ptrtoint ptr %prev3.i.i125 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %prev3.i.i125, align 4
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %call7.i113, ptr %41, align 4
  br label %list_add_tail.exit127

list_add_tail.exit127:                            ; preds = %if.end.i.i126, %if.end39.list_add_tail.exit127_crit_edge
  %inc44 = add i32 %i.1135, 1
  %46 = ptrtoint ptr %qpmask to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %qpmask, align 8
  %and33 = and i32 %47, %inc44
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %list_add_tail.exit127.out_crit_edge, label %list_add_tail.exit127.for.body35_crit_edge

list_add_tail.exit127.for.body35_crit_edge:       ; preds = %list_add_tail.exit127
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body35

list_add_tail.exit127.out_crit_edge:              ; preds = %list_add_tail.exit127
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

out:                                              ; preds = %list_add_tail.exit127.out_crit_edge, %for.body35.out_crit_edge, %list_add_tail.exit122.out_crit_edge, %for.end.out_crit_edge, %for.body.out_crit_edge, %if.else.out_crit_edge, %list_del.exit
  %qid.0 = phi i32 [ %.call.i, %for.end.out_crit_edge ], [ 0, %if.else.out_crit_edge ], [ %11, %list_del.exit ], [ %.call.i, %list_add_tail.exit122.out_crit_edge ], [ %.call.i, %list_add_tail.exit127.out_crit_edge ], [ %.call.i, %for.body35.out_crit_edge ], [ %.call.i, %for.body.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c4iw_get_cqid.__UNIQUE_ID_ddebug675, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c4iw_get_cqid, %if.then53)) #6
          to label %do.end [label %if.then53], !srcloc !95

if.then53:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @c4iw_get_cqid.__UNIQUE_ID_ddebug675, ptr noundef nonnull @.str.7, i32 noundef %qid.0) #6
  br label %do.end

do.end:                                           ; preds = %if.then53, %out
  %stats55 = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %stats55, i32 noundef 0) #6
  %cur59 = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 13, i32 1, i32 1
  %48 = ptrtoint ptr %cur59 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %cur59, align 8
  %max = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 13, i32 1, i32 2
  %50 = ptrtoint ptr %max to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %max, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %49, i64 %51)
  %cmp = icmp ugt i64 %49, %51
  br i1 %cmp, label %if.then63, label %do.end.if.end70_crit_edge

do.end.if.end70_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end70

if.then63:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %52 = ptrtoint ptr %max to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %49, ptr %max, align 8
  br label %if.end70

if.end70:                                         ; preds = %if.then63, %do.end.if.end70_crit_edge
  tail call void @mutex_unlock(ptr noundef %stats55) #6
  ret i32 %qid.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @c4iw_put_cqid(ptr nocapture noundef readnone %rdev, i32 noundef %qid, ptr noundef %uctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 12) #9
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c4iw_put_cqid.__UNIQUE_ID_ddebug676, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c4iw_put_cqid, %if.then6)) #6
          to label %do.end [label %if.then6], !srcloc !95

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @c4iw_put_cqid.__UNIQUE_ID_ddebug676, ptr noundef nonnull @.str.7, i32 noundef %qid) #6
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  %qid8 = getelementptr inbounds %struct.c4iw_qid_list, ptr %call7.i, i32 0, i32 1
  %1 = ptrtoint ptr %qid8 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %qid, ptr %qid8, align 8
  %lock = getelementptr inbounds %struct.c4iw_dev_ucontext, ptr %uctx, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %cqids = getelementptr inbounds %struct.c4iw_dev_ucontext, ptr %uctx, i32 0, i32 1
  %prev.i = getelementptr inbounds %struct.c4iw_dev_ucontext, ptr %uctx, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i, ptr noundef %3, ptr noundef %cqids) #6
  br i1 %call.i.i, label %if.end.i.i, label %do.end.list_add_tail.exit_crit_edge

do.end.list_add_tail.exit_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i, ptr %prev.i, align 4
  %5 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %cqids, ptr %call7.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %6 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev3.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %call7.i, ptr %3, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.end.list_add_tail.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #6
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @c4iw_get_qpid(ptr noundef %rdev, ptr noundef %uctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.c4iw_dev_ucontext, ptr %uctx, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %0 = ptrtoint ptr %uctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %uctx, align 4
  %cmp.i.not = icmp eq ptr %1, %uctx
  br i1 %cmp.i.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %qid4 = getelementptr inbounds %struct.c4iw_qid_list, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %qid4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %qid4, align 4
  tail call void @kfree(ptr noundef %1) #6
  br label %out

if.else:                                          ; preds = %entry
  %qid_table = getelementptr inbounds %struct.c4iw_resource, ptr %rdev, i32 0, i32 1
  %call.i = tail call i32 @c4iw_id_alloc(ptr noundef %qid_table) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.i124 = icmp eq i32 %call.i, -1
  %.call.i = select i1 %cmp.i124, i32 0, i32 %call.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.call.i)
  %tobool6.not = icmp eq i32 %.call.i, 0
  %stats = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %stats, i32 noundef 0) #6
  br i1 %tobool6.not, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %fail = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 13, i32 1, i32 3
  %12 = ptrtoint ptr %fail to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %fail, align 8
  %inc = add i64 %13, 1
  store i64 %inc, ptr %fail, align 8
  tail call void @mutex_unlock(ptr noundef %stats) #6
  br label %out

if.end:                                           ; preds = %if.else
  %qpmask = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 1
  %14 = ptrtoint ptr %qpmask to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %qpmask, align 8
  %add = add i32 %15, 1
  %conv = zext i32 %add to i64
  %cur = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 13, i32 1, i32 1
  %16 = ptrtoint ptr %cur to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %cur, align 8
  %add17 = add i64 %17, %conv
  store i64 %add17, ptr %cur, align 8
  tail call void @mutex_unlock(ptr noundef %stats) #6
  %add20 = add nuw i32 %.call.i, 1
  %18 = ptrtoint ptr %qpmask to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %qpmask, align 8
  %and140 = and i32 %19, %add20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and140)
  %tobool22.not141 = icmp eq i32 %and140, 0
  br i1 %tobool22.not141, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %prev.i125 = getelementptr inbounds %struct.list_head, ptr %uctx, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %list_add_tail.exit.for.body_crit_edge, %for.body.lr.ph
  %i.0142 = phi i32 [ %add20, %for.body.lr.ph ], [ %inc30, %list_add_tail.exit.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %20 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3264, i32 noundef 12) #9
  %tobool24.not = icmp eq ptr %call7.i, null
  br i1 %tobool24.not, label %for.body.out_crit_edge, label %if.end26

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end26:                                         ; preds = %for.body
  %qid27 = getelementptr inbounds %struct.c4iw_qid_list, ptr %call7.i, i32 0, i32 1
  %21 = ptrtoint ptr %qid27 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %i.0142, ptr %qid27, align 8
  %22 = ptrtoint ptr %prev.i125 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i125, align 4
  %call.i.i126 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i, ptr noundef %23, ptr noundef %uctx) #6
  br i1 %call.i.i126, label %if.end.i.i127, label %if.end26.list_add_tail.exit_crit_edge

if.end26.list_add_tail.exit_crit_edge:            ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit

if.end.i.i127:                                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %prev.i125 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call7.i, ptr %prev.i125, align 4
  %25 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %uctx, ptr %call7.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %26 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev3.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %call7.i, ptr %23, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i127, %if.end26.list_add_tail.exit_crit_edge
  %inc30 = add i32 %i.0142, 1
  %28 = ptrtoint ptr %qpmask to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %qpmask, align 8
  %and = and i32 %29, %inc30
  %tobool22.not = icmp eq i32 %and, 0
  br i1 %tobool22.not, label %list_add_tail.exit.for.end_crit_edge, label %list_add_tail.exit.for.body_crit_edge

list_add_tail.exit.for.body_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

list_add_tail.exit.for.end_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %list_add_tail.exit.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %30 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i122 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %30, i32 noundef 3264, i32 noundef 12) #9
  %tobool32.not = icmp eq ptr %call7.i122, null
  br i1 %tobool32.not, label %for.end.out_crit_edge, label %if.end34

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end34:                                         ; preds = %for.end
  %qid35 = getelementptr inbounds %struct.c4iw_qid_list, ptr %call7.i122, i32 0, i32 1
  %31 = ptrtoint ptr %qid35 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %.call.i, ptr %qid35, align 8
  %cqids = getelementptr inbounds %struct.c4iw_dev_ucontext, ptr %uctx, i32 0, i32 1
  %prev.i128 = getelementptr inbounds %struct.c4iw_dev_ucontext, ptr %uctx, i32 0, i32 1, i32 1
  %32 = ptrtoint ptr %prev.i128 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i128, align 4
  %call.i.i129 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i122, ptr noundef %33, ptr noundef %cqids) #6
  br i1 %call.i.i129, label %if.end.i.i131, label %if.end34.list_add_tail.exit132_crit_edge

if.end34.list_add_tail.exit132_crit_edge:         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit132

if.end.i.i131:                                    ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %prev.i128 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call7.i122, ptr %prev.i128, align 4
  %35 = ptrtoint ptr %call7.i122 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %cqids, ptr %call7.i122, align 8
  %prev3.i.i130 = getelementptr inbounds %struct.list_head, ptr %call7.i122, i32 0, i32 1
  %36 = ptrtoint ptr %prev3.i.i130 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev3.i.i130, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %call7.i122, ptr %33, align 4
  br label %list_add_tail.exit132

list_add_tail.exit132:                            ; preds = %if.end.i.i131, %if.end34.list_add_tail.exit132_crit_edge
  %38 = ptrtoint ptr %qpmask to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %qpmask, align 8
  %and40143 = and i32 %39, %add20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40143)
  %tobool41.not144 = icmp eq i32 %and40143, 0
  br i1 %tobool41.not144, label %list_add_tail.exit132.out_crit_edge, label %list_add_tail.exit132.for.body42_crit_edge

list_add_tail.exit132.for.body42_crit_edge:       ; preds = %list_add_tail.exit132
  br label %for.body42

list_add_tail.exit132.out_crit_edge:              ; preds = %list_add_tail.exit132
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

for.body42:                                       ; preds = %list_add_tail.exit137.for.body42_crit_edge, %list_add_tail.exit132.for.body42_crit_edge
  %i.1145 = phi i32 [ %inc51, %list_add_tail.exit137.for.body42_crit_edge ], [ %add20, %list_add_tail.exit132.for.body42_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %40 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i123 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %40, i32 noundef 3264, i32 noundef 12) #9
  %tobool44.not = icmp eq ptr %call7.i123, null
  br i1 %tobool44.not, label %for.body42.out_crit_edge, label %if.end46

for.body42.out_crit_edge:                         ; preds = %for.body42
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end46:                                         ; preds = %for.body42
  %qid47 = getelementptr inbounds %struct.c4iw_qid_list, ptr %call7.i123, i32 0, i32 1
  %41 = ptrtoint ptr %qid47 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %i.1145, ptr %qid47, align 8
  %42 = ptrtoint ptr %prev.i128 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %prev.i128, align 4
  %call.i.i134 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i123, ptr noundef %43, ptr noundef %cqids) #6
  br i1 %call.i.i134, label %if.end.i.i136, label %if.end46.list_add_tail.exit137_crit_edge

if.end46.list_add_tail.exit137_crit_edge:         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit137

if.end.i.i136:                                    ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %prev.i128 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call7.i123, ptr %prev.i128, align 4
  %45 = ptrtoint ptr %call7.i123 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %cqids, ptr %call7.i123, align 8
  %prev3.i.i135 = getelementptr inbounds %struct.list_head, ptr %call7.i123, i32 0, i32 1
  %46 = ptrtoint ptr %prev3.i.i135 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %43, ptr %prev3.i.i135, align 4
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %call7.i123, ptr %43, align 4
  br label %list_add_tail.exit137

list_add_tail.exit137:                            ; preds = %if.end.i.i136, %if.end46.list_add_tail.exit137_crit_edge
  %inc51 = add i32 %i.1145, 1
  %48 = ptrtoint ptr %qpmask to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %qpmask, align 8
  %and40 = and i32 %49, %inc51
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %list_add_tail.exit137.out_crit_edge, label %list_add_tail.exit137.for.body42_crit_edge

list_add_tail.exit137.for.body42_crit_edge:       ; preds = %list_add_tail.exit137
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body42

list_add_tail.exit137.out_crit_edge:              ; preds = %list_add_tail.exit137
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

out:                                              ; preds = %list_add_tail.exit137.out_crit_edge, %for.body42.out_crit_edge, %list_add_tail.exit132.out_crit_edge, %for.end.out_crit_edge, %for.body.out_crit_edge, %if.then7, %list_del.exit
  %qid.0 = phi i32 [ %.call.i, %for.end.out_crit_edge ], [ 0, %if.then7 ], [ %11, %list_del.exit ], [ %.call.i, %list_add_tail.exit132.out_crit_edge ], [ %.call.i, %list_add_tail.exit137.out_crit_edge ], [ %.call.i, %for.body42.out_crit_edge ], [ %.call.i, %for.body.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c4iw_get_qpid.__UNIQUE_ID_ddebug677, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c4iw_get_qpid, %if.then60)) #6
          to label %do.end [label %if.then60], !srcloc !95

if.then60:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @c4iw_get_qpid.__UNIQUE_ID_ddebug677, ptr noundef nonnull @.str.7, i32 noundef %qid.0) #6
  br label %do.end

do.end:                                           ; preds = %if.then60, %out
  %stats62 = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %stats62, i32 noundef 0) #6
  %cur66 = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 13, i32 1, i32 1
  %50 = ptrtoint ptr %cur66 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %cur66, align 8
  %max = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 13, i32 1, i32 2
  %52 = ptrtoint ptr %max to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %max, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %51, i64 %53)
  %cmp = icmp ugt i64 %51, %53
  br i1 %cmp, label %if.then70, label %do.end.if.end77_crit_edge

do.end.if.end77_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end77

if.then70:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %54 = ptrtoint ptr %max to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %51, ptr %max, align 8
  br label %if.end77

if.end77:                                         ; preds = %if.then70, %do.end.if.end77_crit_edge
  tail call void @mutex_unlock(ptr noundef %stats62) #6
  ret i32 %qid.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @c4iw_put_qpid(ptr nocapture noundef readnone %rdev, i32 noundef %qid, ptr noundef %uctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 12) #9
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c4iw_put_qpid.__UNIQUE_ID_ddebug678, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c4iw_put_qpid, %if.then6)) #6
          to label %do.end [label %if.then6], !srcloc !95

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @c4iw_put_qpid.__UNIQUE_ID_ddebug678, ptr noundef nonnull @.str.7, i32 noundef %qid) #6
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  %qid8 = getelementptr inbounds %struct.c4iw_qid_list, ptr %call7.i, i32 0, i32 1
  %1 = ptrtoint ptr %qid8 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %qid, ptr %qid8, align 8
  %lock = getelementptr inbounds %struct.c4iw_dev_ucontext, ptr %uctx, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %prev.i = getelementptr inbounds %struct.list_head, ptr %uctx, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i, ptr noundef %3, ptr noundef %uctx) #6
  br i1 %call.i.i, label %if.end.i.i, label %do.end.list_add_tail.exit_crit_edge

do.end.list_add_tail.exit_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i, ptr %prev.i, align 4
  %5 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %uctx, ptr %call7.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %6 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev3.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %call7.i, ptr %3, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.end.list_add_tail.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #6
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @c4iw_destroy_resource(ptr noundef %rscp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @c4iw_id_table_free(ptr noundef %rscp) #6
  %qid_table = getelementptr inbounds %struct.c4iw_resource, ptr %rscp, i32 0, i32 1
  tail call void @c4iw_id_table_free(ptr noundef %qid_table) #6
  %pdid_table = getelementptr inbounds %struct.c4iw_resource, ptr %rscp, i32 0, i32 2
  tail call void @c4iw_id_table_free(ptr noundef %pdid_table) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @c4iw_pblpool_alloc(ptr noundef %rdev, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pbl_pool = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 4
  %0 = ptrtoint ptr %pbl_pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pbl_pool, align 8
  %algo.i = getelementptr inbounds %struct.gen_pool, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %algo.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %algo.i, align 4
  %data.i = getelementptr inbounds %struct.gen_pool, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  %call.i.i = tail call i32 @gen_pool_alloc_algo_owner(ptr noundef %1, i32 noundef %size, ptr noundef %3, ptr noundef %5, ptr noundef null) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c4iw_pblpool_alloc.__UNIQUE_ID_ddebug679, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c4iw_pblpool_alloc, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !95

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @c4iw_pblpool_alloc.__UNIQUE_ID_ddebug679, ptr noundef nonnull @.str.13, i32 noundef %call.i.i, i32 noundef %size) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %stats = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %stats, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool4.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %do.end
  %add = add i32 %size, 255
  %div = sdiv i32 %add, 256
  %mul = shl nsw i32 %div, 8
  %conv = sext i32 %mul to i64
  %cur = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 13, i32 4, i32 1
  %6 = ptrtoint ptr %cur to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %cur, align 8
  %add8 = add i64 %7, %conv
  store i64 %add8, ptr %cur, align 8
  %max = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 13, i32 4, i32 2
  %8 = ptrtoint ptr %max to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %max, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add8, i64 %9)
  %cmp = icmp ugt i64 %add8, %9
  br i1 %cmp, label %if.then15, label %if.then5.if.end22_crit_edge

if.then5.if.end22_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then15:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %max to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %add8, ptr %max, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.then15, %if.then5.if.end22_crit_edge
  %pbl_kref = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 23
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pbl_kref, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %pbl_kref, i32 1, i32 3, i32 1) #6
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pbl_kref, ptr %pbl_kref, i32 1, ptr elementtype(i32) %pbl_kref) #6, !srcloc !96
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end22.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !97

if.end22.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end22
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %12 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %.not.i.i.i.i = icmp sgt i32 %12, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.end25_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !98

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.end25_crit_edge:               ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end22.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end22.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %pbl_kref, i32 noundef %.sink.i.i.i.i) #6
  br label %if.end25

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %fail = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 13, i32 4, i32 3
  %13 = ptrtoint ptr %fail to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %fail, align 8
  %inc = add i64 %14, 1
  store i64 %inc, ptr %fail, align 8
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.end25_crit_edge
  tail call void @mutex_unlock(ptr noundef %stats) #6
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @c4iw_pblpool_free(ptr noundef %rdev, i32 noundef %addr, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c4iw_pblpool_free.__UNIQUE_ID_ddebug680, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c4iw_pblpool_free, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !95

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @c4iw_pblpool_free.__UNIQUE_ID_ddebug680, ptr noundef nonnull @.str.13, i32 noundef %addr, i32 noundef %size) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %stats = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %stats, i32 noundef 0) #6
  %add = add i32 %size, 255
  %div = sdiv i32 %add, 256
  %mul = shl nsw i32 %div, 8
  %conv = sext i32 %mul to i64
  %cur = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 13, i32 4, i32 1
  %0 = ptrtoint ptr %cur to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %cur, align 8
  %sub5 = sub i64 %1, %conv
  store i64 %sub5, ptr %cur, align 8
  tail call void @mutex_unlock(ptr noundef %stats) #6
  %pbl_pool = getelementptr %struct.c4iw_rdev, ptr %rdev, i32 0, i32 4
  %2 = ptrtoint ptr %pbl_pool to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pbl_pool, align 8
  tail call void @gen_pool_free_owner(ptr noundef %3, i32 noundef %addr, i32 noundef %size, ptr noundef null) #6
  %pbl_kref = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 23
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pbl_kref, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !99
  tail call void @llvm.prefetch.p0(ptr %pbl_kref, i32 1, i32 3, i32 1) #6
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pbl_kref, ptr %pbl_kref, i32 1, ptr elementtype(i32) %pbl_kref) #6, !srcloc !100
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !98

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef %pbl_kref, i32 noundef 3) #6
  br label %kref_put.exit

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !101
  %5 = ptrtoint ptr %pbl_pool to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pbl_pool, align 8
  tail call void @gen_pool_destroy(ptr noundef %6) #6
  %pbl_compl.i = getelementptr %struct.c4iw_rdev, ptr %rdev, i32 0, i32 21
  tail call void @complete(ptr noundef %pbl_compl.i) #6
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @c4iw_pblpool_create(ptr nocapture noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gen_pool_create(i32 noundef 8, i32 noundef -1) #6
  %pbl_pool = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 4
  %0 = ptrtoint ptr %pbl_pool to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %pbl_pool, align 8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %vr = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 8, i32 4
  %1 = ptrtoint ptr %vr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vr, align 8
  %pbl = getelementptr inbounds %struct.cxgb4_virt_res, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %pbl to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pbl, align 4
  %size = getelementptr inbounds %struct.cxgb4_virt_res, ptr %2, i32 0, i32 5, i32 1
  %5 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %size, align 4
  %add = add i32 %6, %4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %4)
  %cmp76 = icmp ugt i32 %add, %4
  br i1 %cmp76, label %if.end.while.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

while.body:                                       ; preds = %if.end44.while.body_crit_edge, %if.end.while.body_crit_edge
  %pbl_start.078 = phi i32 [ %pbl_start.1, %if.end44.while.body_crit_edge ], [ %4, %if.end.while.body_crit_edge ]
  %pbl_chunk.077 = phi i32 [ %pbl_chunk.1, %if.end44.while.body_crit_edge ], [ %6, %if.end.while.body_crit_edge ]
  %sub = sub i32 %add, %pbl_start.078
  %add5 = add i32 %sub, 1
  %7 = tail call i32 @llvm.umin.i32(i32 %add5, i32 %pbl_chunk.077)
  %8 = ptrtoint ptr %pbl_pool to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pbl_pool, align 8
  %call.i.i = tail call i32 @gen_pool_add_owner(ptr noundef %9, i32 noundef %pbl_start.078, i32 noundef -1, i32 noundef %7, i32 noundef -1, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool9.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool9.not, label %do.body27, label %do.body

do.body:                                          ; preds = %while.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c4iw_pblpool_create.__UNIQUE_ID_ddebug683, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c4iw_pblpool_create, %if.then16)) #6
          to label %do.end [label %if.then16], !srcloc !95

if.then16:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @c4iw_pblpool_create.__UNIQUE_ID_ddebug683, ptr noundef nonnull @.str.17, i32 noundef %pbl_start.078, i32 noundef %7) #6
  br label %do.end

do.end:                                           ; preds = %if.then16, %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 262145, i32 %7)
  %cmp18 = icmp ult i32 %7, 262145
  br i1 %cmp18, label %do.end22, label %if.end26

do.end22:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %pbl_start.078, i32 noundef %sub) #10
  br label %cleanup

if.end26:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %shr = lshr i32 %7, 1
  br label %if.end44

do.body27:                                        ; preds = %while.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c4iw_pblpool_create.__UNIQUE_ID_ddebug684, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c4iw_pblpool_create, %if.then39)) #6
          to label %do.end42 [label %if.then39], !srcloc !95

if.then39:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @c4iw_pblpool_create.__UNIQUE_ID_ddebug684, ptr noundef nonnull @.str.20, i32 noundef %pbl_start.078, i32 noundef %7) #6
  br label %do.end42

do.end42:                                         ; preds = %if.then39, %do.body27
  %add43 = add i32 %7, %pbl_start.078
  br label %if.end44

if.end44:                                         ; preds = %do.end42, %if.end26
  %pbl_chunk.1 = phi i32 [ %shr, %if.end26 ], [ %7, %do.end42 ]
  %pbl_start.1 = phi i32 [ %pbl_start.078, %if.end26 ], [ %add43, %do.end42 ]
  %cmp = icmp ugt i32 %add, %pbl_start.1
  br i1 %cmp, label %if.end44.while.body_crit_edge, label %if.end44.cleanup_crit_edge

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end44.while.body_crit_edge:                    ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

cleanup:                                          ; preds = %if.end44.cleanup_crit_edge, %do.end22, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end22 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end44.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gen_pool_create(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @c4iw_pblpool_destroy(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pbl_kref = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 23
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pbl_kref, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !99
  tail call void @llvm.prefetch.p0(ptr %pbl_kref, i32 1, i32 3, i32 1) #6
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pbl_kref, ptr %pbl_kref, i32 1, ptr elementtype(i32) %pbl_kref) #6, !srcloc !100
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !98

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef %pbl_kref, i32 noundef 3) #6
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !101
  %pbl_pool.i = getelementptr %struct.c4iw_rdev, ptr %rdev, i32 0, i32 4
  %1 = ptrtoint ptr %pbl_pool.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pbl_pool.i, align 8
  tail call void @gen_pool_destroy(ptr noundef %2) #6
  %pbl_compl.i = getelementptr %struct.c4iw_rdev, ptr %rdev, i32 0, i32 21
  tail call void @complete(ptr noundef %pbl_compl.i) #6
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @c4iw_rqtpool_alloc(ptr noundef %rdev, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rqt_pool = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 5
  %0 = ptrtoint ptr %rqt_pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rqt_pool, align 4
  %shl = shl i32 %size, 6
  %algo.i = getelementptr inbounds %struct.gen_pool, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %algo.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %algo.i, align 4
  %data.i = getelementptr inbounds %struct.gen_pool, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  %call.i.i = tail call i32 @gen_pool_alloc_algo_owner(ptr noundef %1, i32 noundef %shl, ptr noundef %3, ptr noundef %5, ptr noundef null) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c4iw_rqtpool_alloc.__UNIQUE_ID_ddebug685, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c4iw_rqtpool_alloc, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !95

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @c4iw_rqtpool_alloc.__UNIQUE_ID_ddebug685, ptr noundef nonnull @.str.13, i32 noundef %call.i.i, i32 noundef %shl) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool5.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool5.not, label %if.then6, label %if.then19

if.then6:                                         ; preds = %do.end
  %call7 = tail call i32 @___ratelimit(ptr noundef nonnull @c4iw_rqtpool_alloc._rs, ptr noundef nonnull @.str.21) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then6.if.else_crit_edge, label %do.end12

if.then6.if.else_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

do.end12:                                         ; preds = %if.then6
  %lldi = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 8
  %6 = ptrtoint ptr %lldi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lldi, align 8
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44, i32 3
  %8 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end12.pci_name.exit_crit_edge

do.end12.pci_name.exit_crit_edge:                 ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %do.end12.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %11, %if.end.i.i ], [ %9, %do.end12.pci_name.exit_crit_edge ]
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %retval.0.i.i) #10
  br label %if.else

if.then19:                                        ; preds = %do.end
  %stats = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %stats, i32 noundef 0) #6
  %add = add i32 %shl, 1023
  %div = sdiv i32 %add, 1024
  %mul = shl nsw i32 %div, 10
  %conv = sext i32 %mul to i64
  %cur = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 13, i32 5, i32 1
  %12 = ptrtoint ptr %cur to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %cur, align 8
  %add23 = add i64 %13, %conv
  store i64 %add23, ptr %cur, align 8
  %max = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 13, i32 5, i32 2
  %14 = ptrtoint ptr %max to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %max, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add23, i64 %15)
  %cmp = icmp ugt i64 %add23, %15
  br i1 %cmp, label %if.then30, label %if.then19.if.end37_crit_edge

if.then19.if.end37_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.then30:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %max to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %add23, ptr %max, align 8
  br label %if.end37

if.end37:                                         ; preds = %if.then30, %if.then19.if.end37_crit_edge
  %rqt_kref = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 22
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rqt_kref, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %rqt_kref, i32 1, i32 3, i32 1) #6
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rqt_kref, ptr %rqt_kref, i32 1, ptr elementtype(i32) %rqt_kref) #6, !srcloc !96
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end37.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !97

if.end37.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end37
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %18 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %.not.i.i.i.i = icmp sgt i32 %18, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.end40_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !98

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.end40_crit_edge:               ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end37.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end37.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %rqt_kref, i32 noundef %.sink.i.i.i.i) #6
  br label %if.end40

if.else:                                          ; preds = %pci_name.exit, %if.then6.if.else_crit_edge
  %stats61 = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %stats61, i32 noundef 0) #6
  %fail = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 13, i32 5, i32 3
  %19 = ptrtoint ptr %fail to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %fail, align 8
  %inc = add i64 %20, 1
  store i64 %inc, ptr %fail, align 8
  br label %if.end40

if.end40:                                         ; preds = %if.else, %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.end40_crit_edge
  %stats62 = phi ptr [ %stats61, %if.else ], [ %stats, %if.else.i.i.i.i.if.end40_crit_edge ], [ %stats, %if.end15.sink.split.i.i.i.i ]
  tail call void @mutex_unlock(ptr noundef %stats62) #6
  ret i32 %call.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @c4iw_rqtpool_free(ptr noundef %rdev, i32 noundef %addr, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c4iw_rqtpool_free.__UNIQUE_ID_ddebug686, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c4iw_rqtpool_free, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !95

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %shl = shl i32 %size, 6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @c4iw_rqtpool_free.__UNIQUE_ID_ddebug686, ptr noundef nonnull @.str.13, i32 noundef %addr, i32 noundef %shl) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %stats = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %stats, i32 noundef 0) #6
  %shl4 = shl i32 %size, 6
  %add = add i32 %shl4, 1023
  %div = sdiv i32 %add, 1024
  %mul = shl nsw i32 %div, 10
  %conv = sext i32 %mul to i64
  %cur = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 13, i32 5, i32 1
  %0 = ptrtoint ptr %cur to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %cur, align 8
  %sub6 = sub i64 %1, %conv
  store i64 %sub6, ptr %cur, align 8
  tail call void @mutex_unlock(ptr noundef %stats) #6
  %rqt_pool = getelementptr %struct.c4iw_rdev, ptr %rdev, i32 0, i32 5
  %2 = ptrtoint ptr %rqt_pool to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rqt_pool, align 4
  tail call void @gen_pool_free_owner(ptr noundef %3, i32 noundef %addr, i32 noundef %shl4, ptr noundef null) #6
  %rqt_kref = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 22
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rqt_kref, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !99
  tail call void @llvm.prefetch.p0(ptr %rqt_kref, i32 1, i32 3, i32 1) #6
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rqt_kref, ptr %rqt_kref, i32 1, ptr elementtype(i32) %rqt_kref) #6, !srcloc !100
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !98

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef %rqt_kref, i32 noundef 3) #6
  br label %kref_put.exit

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !101
  %5 = ptrtoint ptr %rqt_pool to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rqt_pool, align 4
  tail call void @gen_pool_destroy(ptr noundef %6) #6
  %rqt_compl.i = getelementptr %struct.c4iw_rdev, ptr %rdev, i32 0, i32 20
  tail call void @complete(ptr noundef %rqt_compl.i) #6
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @c4iw_rqtpool_create(ptr nocapture noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gen_pool_create(i32 noundef 10, i32 noundef -1) #6
  %rqt_pool = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 5
  %0 = ptrtoint ptr %rqt_pool to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %rqt_pool, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %vr = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 8, i32 4
  %1 = ptrtoint ptr %vr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vr, align 8
  %size = getelementptr inbounds %struct.cxgb4_virt_res, ptr %2, i32 0, i32 4, i32 1
  %3 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool2.not = icmp eq i32 %4, 0
  %spec.select = select i1 %tobool2.not, i32 0, i32 64
  %rq = getelementptr inbounds %struct.cxgb4_virt_res, ptr %2, i32 0, i32 3
  %5 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rq, align 4
  %add = add i32 %spec.select, %6
  %size10 = getelementptr inbounds %struct.cxgb4_virt_res, ptr %2, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %size10 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %size10, align 4
  %add11 = add i32 %8, %6
  call void @__sanitizer_cov_trace_cmp4(i32 %add11, i32 %add)
  %cmp87 = icmp ugt i32 %add11, %add
  br i1 %cmp87, label %while.body.preheader, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body.preheader:                             ; preds = %if.end
  %sub = sub i32 %8, %spec.select
  br label %while.body

while.body:                                       ; preds = %if.end52.while.body_crit_edge, %while.body.preheader
  %rqt_start.089 = phi i32 [ %rqt_start.1, %if.end52.while.body_crit_edge ], [ %add, %while.body.preheader ]
  %rqt_chunk.088 = phi i32 [ %rqt_chunk.1, %if.end52.while.body_crit_edge ], [ %sub, %while.body.preheader ]
  %sub12 = sub i32 %add11, %rqt_start.089
  %add13 = add i32 %sub12, 1
  %9 = tail call i32 @llvm.umin.i32(i32 %add13, i32 %rqt_chunk.088)
  %10 = ptrtoint ptr %rqt_pool to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rqt_pool, align 4
  %call.i.i = tail call i32 @gen_pool_add_owner(ptr noundef %11, i32 noundef %rqt_start.089, i32 noundef -1, i32 noundef %9, i32 noundef -1, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool17.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool17.not, label %do.body35, label %do.body

do.body:                                          ; preds = %while.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c4iw_rqtpool_create.__UNIQUE_ID_ddebug689, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c4iw_rqtpool_create, %if.then24)) #6
          to label %do.end [label %if.then24], !srcloc !95

if.then24:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @c4iw_rqtpool_create.__UNIQUE_ID_ddebug689, ptr noundef nonnull @.str.27, i32 noundef %rqt_start.089, i32 noundef %9) #6
  br label %do.end

do.end:                                           ; preds = %if.then24, %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048577, i32 %9)
  %cmp26 = icmp ult i32 %9, 1048577
  br i1 %cmp26, label %do.end30, label %if.end34

do.end30:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %rqt_start.089, i32 noundef %sub12) #10
  br label %cleanup

if.end34:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %shr = lshr i32 %9, 1
  br label %if.end52

do.body35:                                        ; preds = %while.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c4iw_rqtpool_create.__UNIQUE_ID_ddebug690, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c4iw_rqtpool_create, %if.then47)) #6
          to label %do.end50 [label %if.then47], !srcloc !95

if.then47:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @c4iw_rqtpool_create.__UNIQUE_ID_ddebug690, ptr noundef nonnull @.str.30, i32 noundef %rqt_start.089, i32 noundef %9) #6
  br label %do.end50

do.end50:                                         ; preds = %if.then47, %do.body35
  %add51 = add i32 %9, %rqt_start.089
  br label %if.end52

if.end52:                                         ; preds = %do.end50, %if.end34
  %rqt_chunk.1 = phi i32 [ %shr, %if.end34 ], [ %9, %do.end50 ]
  %rqt_start.1 = phi i32 [ %rqt_start.089, %if.end34 ], [ %add51, %do.end50 ]
  %cmp = icmp ugt i32 %add11, %rqt_start.1
  br i1 %cmp, label %if.end52.while.body_crit_edge, label %if.end52.cleanup_crit_edge

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end52.while.body_crit_edge:                    ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

cleanup:                                          ; preds = %if.end52.cleanup_crit_edge, %do.end30, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end30 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end52.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @c4iw_rqtpool_destroy(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rqt_kref = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 22
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rqt_kref, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !99
  tail call void @llvm.prefetch.p0(ptr %rqt_kref, i32 1, i32 3, i32 1) #6
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rqt_kref, ptr %rqt_kref, i32 1, ptr elementtype(i32) %rqt_kref) #6, !srcloc !100
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !98

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef %rqt_kref, i32 noundef 3) #6
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !101
  %rqt_pool.i = getelementptr %struct.c4iw_rdev, ptr %rdev, i32 0, i32 5
  %1 = ptrtoint ptr %rqt_pool.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rqt_pool.i, align 4
  tail call void @gen_pool_destroy(ptr noundef %2) #6
  %rqt_compl.i = getelementptr %struct.c4iw_rdev, ptr %rdev, i32 0, i32 20
  tail call void @complete(ptr noundef %rqt_compl.i) #6
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @c4iw_alloc_srq_idx(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %srq_table = getelementptr inbounds %struct.c4iw_resource, ptr %rdev, i32 0, i32 3
  %call = tail call i32 @c4iw_id_alloc(ptr noundef %srq_table) #6
  %stats = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %stats, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %fail = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 13, i32 6, i32 3
  %0 = ptrtoint ptr %fail to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %fail, align 8
  %inc = add i64 %1, 1
  store i64 %inc, ptr %fail, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  %cur = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 13, i32 6, i32 1
  %2 = ptrtoint ptr %cur to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %cur, align 8
  %inc6 = add i64 %3, 1
  store i64 %inc6, ptr %cur, align 8
  %max = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 13, i32 6, i32 2
  %4 = ptrtoint ptr %max to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %max, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %inc6, i64 %5)
  %cmp12 = icmp ugt i64 %inc6, %5
  br i1 %cmp12, label %if.then13, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %max to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %inc6, ptr %max, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -12, %if.then ], [ %call, %if.then13 ], [ %call, %if.end.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %stats) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @c4iw_free_srq_idx(ptr noundef %rdev, i32 noundef %idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %srq_table = getelementptr inbounds %struct.c4iw_resource, ptr %rdev, i32 0, i32 3
  tail call void @c4iw_id_free(ptr noundef %srq_table, i32 noundef %idx) #6
  %stats = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %stats, i32 noundef 0) #6
  %cur = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 13, i32 6, i32 1
  %0 = ptrtoint ptr %cur to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %cur, align 8
  %dec = add i64 %1, -1
  store i64 %dec, ptr %cur, align 8
  tail call void @mutex_unlock(ptr noundef %stats) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @c4iw_ocqp_pool_alloc(ptr noundef %rdev, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ocqp_pool = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 6
  %0 = ptrtoint ptr %ocqp_pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ocqp_pool, align 8
  %algo.i = getelementptr inbounds %struct.gen_pool, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %algo.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %algo.i, align 4
  %data.i = getelementptr inbounds %struct.gen_pool, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  %call.i.i = tail call i32 @gen_pool_alloc_algo_owner(ptr noundef %1, i32 noundef %size, ptr noundef %3, ptr noundef %5, ptr noundef null) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c4iw_ocqp_pool_alloc.__UNIQUE_ID_ddebug691, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c4iw_ocqp_pool_alloc, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !95

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @c4iw_ocqp_pool_alloc.__UNIQUE_ID_ddebug691, ptr noundef nonnull @.str.13, i32 noundef %call.i.i, i32 noundef %size) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool4.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool4.not, label %do.end.if.end25_crit_edge, label %if.then5

do.end.if.end25_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.then5:                                         ; preds = %do.end
  %stats = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %stats, i32 noundef 0) #6
  %add = add i32 %size, 4095
  %div = sdiv i32 %add, 4096
  %mul = shl nsw i32 %div, 12
  %conv = sext i32 %mul to i64
  %cur = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 13, i32 8, i32 1
  %6 = ptrtoint ptr %cur to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %cur, align 8
  %add8 = add i64 %7, %conv
  store i64 %add8, ptr %cur, align 8
  %max = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 13, i32 8, i32 2
  %8 = ptrtoint ptr %max to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %max, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add8, i64 %9)
  %cmp = icmp ugt i64 %add8, %9
  br i1 %cmp, label %if.then15, label %if.then5.if.end22_crit_edge

if.then5.if.end22_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then15:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %max to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %add8, ptr %max, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.then15, %if.then5.if.end22_crit_edge
  tail call void @mutex_unlock(ptr noundef %stats) #6
  br label %if.end25

if.end25:                                         ; preds = %if.end22, %do.end.if.end25_crit_edge
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @c4iw_ocqp_pool_free(ptr noundef %rdev, i32 noundef %addr, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c4iw_ocqp_pool_free.__UNIQUE_ID_ddebug692, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c4iw_ocqp_pool_free, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !95

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @c4iw_ocqp_pool_free.__UNIQUE_ID_ddebug692, ptr noundef nonnull @.str.13, i32 noundef %addr, i32 noundef %size) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %stats = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %stats, i32 noundef 0) #6
  %add = add i32 %size, 4095
  %div = sdiv i32 %add, 4096
  %mul = shl nsw i32 %div, 12
  %conv = sext i32 %mul to i64
  %cur = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 13, i32 8, i32 1
  %0 = ptrtoint ptr %cur to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %cur, align 8
  %sub5 = sub i64 %1, %conv
  store i64 %sub5, ptr %cur, align 8
  tail call void @mutex_unlock(ptr noundef %stats) #6
  %ocqp_pool = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 6
  %2 = ptrtoint ptr %ocqp_pool to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ocqp_pool, align 8
  tail call void @gen_pool_free_owner(ptr noundef %3, i32 noundef %addr, i32 noundef %size, ptr noundef null) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @c4iw_ocqp_pool_create(ptr nocapture noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gen_pool_create(i32 noundef 12, i32 noundef -1) #6
  %ocqp_pool = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 6
  %0 = ptrtoint ptr %ocqp_pool to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %ocqp_pool, align 8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %vr = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 8, i32 4
  %1 = ptrtoint ptr %vr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vr, align 8
  %ocq = getelementptr inbounds %struct.cxgb4_virt_res, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %ocq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ocq, align 4
  %size = getelementptr inbounds %struct.cxgb4_virt_res, ptr %2, i32 0, i32 8, i32 1
  %5 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %size, align 4
  %add = add i32 %6, %4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %4)
  %cmp77 = icmp ugt i32 %add, %4
  br i1 %cmp77, label %if.end.while.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

while.body:                                       ; preds = %if.end45.while.body_crit_edge, %if.end.while.body_crit_edge
  %start.079 = phi i32 [ %start.1, %if.end45.while.body_crit_edge ], [ %4, %if.end.while.body_crit_edge ]
  %chunk.078 = phi i32 [ %chunk.1, %if.end45.while.body_crit_edge ], [ %6, %if.end.while.body_crit_edge ]
  %sub = sub i32 %add, %start.079
  %add6 = add i32 %sub, 1
  %7 = tail call i32 @llvm.umin.i32(i32 %add6, i32 %chunk.078)
  %8 = ptrtoint ptr %ocqp_pool to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ocqp_pool, align 8
  %call.i.i = tail call i32 @gen_pool_add_owner(ptr noundef %9, i32 noundef %start.079, i32 noundef -1, i32 noundef %7, i32 noundef -1, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool10.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool10.not, label %do.body28, label %do.body

do.body:                                          ; preds = %while.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c4iw_ocqp_pool_create.__UNIQUE_ID_ddebug695, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c4iw_ocqp_pool_create, %if.then17)) #6
          to label %do.end [label %if.then17], !srcloc !95

if.then17:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @c4iw_ocqp_pool_create.__UNIQUE_ID_ddebug695, ptr noundef nonnull @.str.35, i32 noundef %start.079, i32 noundef %7) #6
  br label %do.end

do.end:                                           ; preds = %if.then17, %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194305, i32 %7)
  %cmp19 = icmp ult i32 %7, 4194305
  br i1 %cmp19, label %do.end23, label %if.end27

do.end23:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %start.079, i32 noundef %sub) #10
  br label %cleanup

if.end27:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %shr = lshr i32 %7, 1
  br label %if.end45

do.body28:                                        ; preds = %while.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c4iw_ocqp_pool_create.__UNIQUE_ID_ddebug696, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c4iw_ocqp_pool_create, %if.then40)) #6
          to label %do.end43 [label %if.then40], !srcloc !95

if.then40:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @c4iw_ocqp_pool_create.__UNIQUE_ID_ddebug696, ptr noundef nonnull @.str.38, i32 noundef %start.079, i32 noundef %7) #6
  br label %do.end43

do.end43:                                         ; preds = %if.then40, %do.body28
  %add44 = add i32 %7, %start.079
  br label %if.end45

if.end45:                                         ; preds = %do.end43, %if.end27
  %chunk.1 = phi i32 [ %shr, %if.end27 ], [ %7, %do.end43 ]
  %start.1 = phi i32 [ %start.079, %if.end27 ], [ %add44, %do.end43 ]
  %cmp = icmp ugt i32 %add, %start.1
  br i1 %cmp, label %if.end45.while.body_crit_edge, label %if.end45.cleanup_crit_edge

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end45.while.body_crit_edge:                    ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

cleanup:                                          ; preds = %if.end45.cleanup_crit_edge, %do.end23, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end23 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end45.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @c4iw_ocqp_pool_destroy(ptr nocapture noundef readonly %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ocqp_pool = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 6
  %0 = ptrtoint ptr %ocqp_pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ocqp_pool, align 8
  tail call void @gen_pool_destroy(ptr noundef %1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gen_pool_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gen_pool_alloc_algo_owner(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @gen_pool_free_owner(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gen_pool_add_owner(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !10, !11, !12, !14, !15, !17, !18, !20, !21, !23, !24, !25, !26, !28, !29, !31, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !47, !48, !49, !50, !51, !53, !54, !56, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !72, !73, !75, !76, !77, !78, !80, !81, !82, !84, !85}
!llvm.module.flags = !{!86, !87, !88, !89, !90, !91, !92, !93}
!llvm.ident = !{!94}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/hw/cxgb4/resource.c", i32 104, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @c4iw_put_resource.__UNIQUE_ID_ddebug674, !1, !"__UNIQUE_ID_ddebug674", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/infiniband/hw/cxgb4/resource.c", i32 155, i32 2}
!9 = !{ptr @.str.6, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @c4iw_get_cqid.__UNIQUE_ID_ddebug675, !8, !"__UNIQUE_ID_ddebug675", i1 false, i1 false}
!11 = !{ptr @.str.7, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/infiniband/hw/cxgb4/resource.c", i32 171, i32 2}
!14 = !{ptr @c4iw_put_cqid.__UNIQUE_ID_ddebug676, !13, !"__UNIQUE_ID_ddebug676", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/infiniband/hw/cxgb4/resource.c", i32 229, i32 2}
!17 = !{ptr @c4iw_get_qpid.__UNIQUE_ID_ddebug677, !16, !"__UNIQUE_ID_ddebug677", i1 false, i1 false}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/infiniband/hw/cxgb4/resource.c", i32 245, i32 2}
!20 = !{ptr @c4iw_put_qpid.__UNIQUE_ID_ddebug678, !19, !"__UNIQUE_ID_ddebug678", i1 false, i1 false}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/infiniband/hw/cxgb4/resource.c", i32 268, i32 2}
!23 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @c4iw_pblpool_alloc.__UNIQUE_ID_ddebug679, !22, !"__UNIQUE_ID_ddebug679", i1 false, i1 false}
!25 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/infiniband/hw/cxgb4/resource.c", i32 292, i32 2}
!28 = !{ptr @c4iw_pblpool_free.__UNIQUE_ID_ddebug680, !27, !"__UNIQUE_ID_ddebug680", i1 false, i1 false}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/infiniband/hw/cxgb4/resource.c", i32 315, i32 4}
!31 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @c4iw_pblpool_create.__UNIQUE_ID_ddebug683, !30, !"__UNIQUE_ID_ddebug683", i1 false, i1 false}
!33 = !{ptr @.str.17, !30, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/infiniband/hw/cxgb4/resource.c", i32 318, i32 5}
!36 = !{ptr @c4iw_pblpool_create._entry, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @c4iw_pblpool_create._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/infiniband/hw/cxgb4/resource.c", i32 324, i32 4}
!40 = !{ptr @c4iw_pblpool_create.__UNIQUE_ID_ddebug684, !39, !"__UNIQUE_ID_ddebug684", i1 false, i1 false}
!41 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/infiniband/hw/cxgb4/resource.c", i32 347, i32 2}
!44 = !{ptr @c4iw_rqtpool_alloc.__UNIQUE_ID_ddebug685, !43, !"__UNIQUE_ID_ddebug685", i1 false, i1 false}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/infiniband/hw/cxgb4/resource.c", i32 349, i32 3}
!47 = !{ptr @c4iw_rqtpool_alloc._rs, !46, !"_rs", i1 false, i1 false}
!48 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @c4iw_rqtpool_alloc._entry, !46, !"_entry", i1 false, i1 false}
!50 = !{ptr @c4iw_rqtpool_alloc._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/infiniband/hw/cxgb4/resource.c", i32 374, i32 2}
!53 = !{ptr @c4iw_rqtpool_free.__UNIQUE_ID_ddebug686, !52, !"__UNIQUE_ID_ddebug686", i1 false, i1 false}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/infiniband/hw/cxgb4/resource.c", i32 405, i32 4}
!56 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @c4iw_rqtpool_create.__UNIQUE_ID_ddebug689, !55, !"__UNIQUE_ID_ddebug689", i1 false, i1 false}
!58 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/infiniband/hw/cxgb4/resource.c", i32 408, i32 5}
!61 = !{ptr @c4iw_rqtpool_create._entry, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @c4iw_rqtpool_create._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/infiniband/hw/cxgb4/resource.c", i32 414, i32 4}
!65 = !{ptr @c4iw_rqtpool_create.__UNIQUE_ID_ddebug690, !64, !"__UNIQUE_ID_ddebug690", i1 false, i1 false}
!66 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.31, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/infiniband/hw/cxgb4/resource.c", i32 461, i32 2}
!69 = !{ptr @c4iw_ocqp_pool_alloc.__UNIQUE_ID_ddebug691, !68, !"__UNIQUE_ID_ddebug691", i1 false, i1 false}
!70 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/infiniband/hw/cxgb4/resource.c", i32 474, i32 2}
!72 = !{ptr @c4iw_ocqp_pool_free.__UNIQUE_ID_ddebug692, !71, !"__UNIQUE_ID_ddebug692", i1 false, i1 false}
!73 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/infiniband/hw/cxgb4/resource.c", i32 496, i32 4}
!75 = !{ptr @.str.34, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @c4iw_ocqp_pool_create.__UNIQUE_ID_ddebug695, !74, !"__UNIQUE_ID_ddebug695", i1 false, i1 false}
!77 = !{ptr @.str.35, !74, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.36, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/infiniband/hw/cxgb4/resource.c", i32 499, i32 5}
!80 = !{ptr @c4iw_ocqp_pool_create._entry, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @c4iw_ocqp_pool_create._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.37, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/infiniband/hw/cxgb4/resource.c", i32 505, i32 4}
!84 = !{ptr @c4iw_ocqp_pool_create.__UNIQUE_ID_ddebug696, !83, !"__UNIQUE_ID_ddebug696", i1 false, i1 false}
!85 = !{ptr @.str.38, !83, !"<string literal>", i1 false, i1 false}
!86 = !{i32 1, !"wchar_size", i32 2}
!87 = !{i32 1, !"min_enum_size", i32 4}
!88 = !{i32 8, !"branch-target-enforcement", i32 0}
!89 = !{i32 8, !"sign-return-address", i32 0}
!90 = !{i32 8, !"sign-return-address-all", i32 0}
!91 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!92 = !{i32 7, !"uwtable", i32 1}
!93 = !{i32 7, !"frame-pointer", i32 2}
!94 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!95 = !{i64 2148313731, i64 2148313736, i64 2148313749, i64 2148313793, i64 2148313827, i64 2148313848}
!96 = !{i64 2148490663, i64 2148490695, i64 2148490724, i64 2148490758, i64 2148490789, i64 2148490812}
!97 = !{!"branch_weights", i32 1, i32 2000}
!98 = !{!"branch_weights", i32 2000, i32 1}
!99 = !{i64 2148578688}
!100 = !{i64 2148493128, i64 2148493160, i64 2148493189, i64 2148493223, i64 2148493254, i64 2148493277}
!101 = !{i64 2149577220}
