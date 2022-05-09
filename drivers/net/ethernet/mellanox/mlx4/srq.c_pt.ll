; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx4/srq.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx4/srq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mlx4_srq_alloc\22, \22a\22\09"
module asm "\09.weak\09__crc_mlx4_srq_alloc\09\09\09\09"
module asm "\09.long\09__crc_mlx4_srq_alloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mlx4_srq_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22mlx4_srq_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_mlx4_srq_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mlx4_srq_free\22, \22a\22\09"
module asm "\09.weak\09__crc_mlx4_srq_free\09\09\09\09"
module asm "\09.long\09__crc_mlx4_srq_free\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mlx4_srq_free:\09\09\09\09\09"
module asm "\09.asciz \09\22mlx4_srq_free\22\09\09\09\09\09"
module asm "__kstrtabns_mlx4_srq_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mlx4_srq_arm\22, \22a\22\09"
module asm "\09.weak\09__crc_mlx4_srq_arm\09\09\09\09"
module asm "\09.long\09__crc_mlx4_srq_arm\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mlx4_srq_arm:\09\09\09\09\09"
module asm "\09.asciz \09\22mlx4_srq_arm\22\09\09\09\09\09"
module asm "__kstrtabns_mlx4_srq_arm:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mlx4_srq_query\22, \22a\22\09"
module asm "\09.weak\09__crc_mlx4_srq_query\09\09\09\09"
module asm "\09.long\09__crc_mlx4_srq_query\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mlx4_srq_query:\09\09\09\09\09"
module asm "\09.asciz \09\22mlx4_srq_query\22\09\09\09\09\09"
module asm "__kstrtabns_mlx4_srq_query:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mlx4_srq_lookup\22, \22a\22\09"
module asm "\09.weak\09__crc_mlx4_srq_lookup\09\09\09\09"
module asm "\09.long\09__crc_mlx4_srq_lookup\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mlx4_srq_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22mlx4_srq_lookup\22\09\09\09\09\09"
module asm "__kstrtabns_mlx4_srq_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.mlx4_priv = type { %struct.mlx4_dev, %struct.list_head, %struct.list_head, %struct.spinlock, i32, i32, %struct.list_head, %struct.mutex, %struct.mlx4_fw, %struct.mlx4_cmd, %struct.mlx4_mfunc, %struct.mlx4_bitmap, %struct.mlx4_bitmap, %struct.mlx4_uar_table, %struct.mlx4_mr_table, %struct.mlx4_cq_table, %struct.mlx4_eq_table, %struct.mlx4_srq_table, %struct.mlx4_qp_table, %struct.mlx4_mcg_table, %struct.mlx4_bitmap, [2 x i32], %struct.mlx4_catas_err, ptr, %struct.mlx4_uar, ptr, [3 x %struct.mlx4_port_info], %struct.mlx4_sense, %struct.mutex, %struct.mlx4_msix_ctl, ptr, %struct.list_head, %struct.mutex, ptr, ptr, i32, i32, [128 x [2 x [128 x i8]]], %struct.mlx4_port_map, %struct.mutex, [128 x i64], %struct.atomic_t, %struct.work_struct }
%struct.mlx4_dev = type { ptr, i32, i32, %struct.mlx4_caps, %struct.mlx4_phys_caps, %struct.mlx4_quotas, %struct.xarray, i8, i8, [64 x i8], i32, i32, [3 x i64], [3 x i64], ptr, i8 }
%struct.mlx4_caps = type { i64, i32, i32, [3 x i32], [3 x i32], [3 x i32], [3 x i64], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i64], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i16, [3 x i8], i32, i32, [5 x i32], i32, [5 x i32], i32, i32, [3 x i32], [3 x i8], [3 x i8], [3 x i8], [3 x i32], [3 x i32], i32, [3 x i8], i16, i32, i32, i8, i32, i32, i16, [3 x i64], i32, [3 x i8], [3 x i8], i8, i32, i32, i32, [3 x i8], %struct.mlx4_rate_limit_caps, i32, i8 }
%struct.mlx4_rate_limit_caps = type { i16, i8, i16, i8, i16 }
%struct.mlx4_phys_caps = type { [3 x i32], [3 x i32], i32, i32, i32, i32 }
%struct.mlx4_quotas = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.mlx4_fw = type { i64, i64, i64, i64, ptr, ptr, i32, i16, i8, i8, i8, i8 }
%struct.mlx4_cmd = type { ptr, ptr, %struct.mutex, %struct.semaphore, %struct.semaphore, %struct.rw_semaphore, i32, %struct.spinlock, i32, ptr, i16, i8, i8, i8, i8 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mlx4_mfunc = type { ptr, ptr, i32, %struct.mlx4_mfunc_master_ctx }
%struct.mlx4_mfunc_master_ctx = type { ptr, ptr, ptr, [3 x %struct.mlx4_master_qp0_state], [3 x i32], [3 x i16], [3 x i16], i8, i8, [3 x i32], %struct.mlx4_resource_tracker, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.spinlock, [4 x i32], %struct.mlx4_eqe, %struct.mlx4_slave_event_eq, [128 x %struct.mutex], [3 x %struct.mlx4_qos_manager], i32 }
%struct.mlx4_master_qp0_state = type { i32, i32, i32 }
%struct.mlx4_resource_tracker = type { %struct.spinlock, [12 x %struct.rb_root], ptr, [12 x %struct.resource_allocator] }
%struct.rb_root = type { ptr }
%struct.resource_allocator = type { %struct.spinlock, %union.anon.123, %union.anon.124, ptr, ptr, ptr }
%union.anon.123 = type { [2 x i32] }
%union.anon.124 = type { [2 x i32] }
%struct.mlx4_eqe = type { i8, i8, i8, i8, %union.anon.125, i8, [2 x i8], i8 }
%union.anon.125 = type { [6 x i32] }
%struct.mlx4_slave_event_eq = type { i32, i32, i32, %struct.spinlock, [128 x %struct.mlx4_eqe] }
%struct.mlx4_qos_manager = type { i32, [1 x i32] }
%struct.mlx4_uar_table = type { %struct.mlx4_bitmap }
%struct.mlx4_mr_table = type { %struct.mlx4_bitmap, %struct.mlx4_buddy, i64, i64, %struct.mlx4_icm_table, %struct.mlx4_icm_table }
%struct.mlx4_buddy = type { ptr, ptr, i32, %struct.spinlock }
%struct.mlx4_icm_table = type { i64, i32, i32, i32, i32, i32, %struct.mutex, ptr }
%struct.mlx4_cq_table = type { %struct.mlx4_bitmap, %struct.spinlock, %struct.xarray, %struct.mlx4_icm_table, %struct.mlx4_icm_table }
%struct.mlx4_eq_table = type { %struct.mlx4_bitmap, ptr, ptr, ptr, i32, ptr, %struct.mlx4_icm_table, %struct.mlx4_icm_table, i32, i8 }
%struct.mlx4_srq_table = type { %struct.mlx4_bitmap, %struct.spinlock, %struct.xarray, %struct.mlx4_icm_table, %struct.mlx4_icm_table }
%struct.mlx4_qp_table = type { ptr, ptr, [3 x i32], i32, i32, %struct.spinlock, %struct.mlx4_icm_table, %struct.mlx4_icm_table, %struct.mlx4_icm_table, %struct.mlx4_icm_table, %struct.mlx4_icm_table }
%struct.mlx4_mcg_table = type { %struct.mutex, %struct.mlx4_bitmap, %struct.mlx4_icm_table }
%struct.mlx4_bitmap = type { i32, i32, i32, i32, i32, i32, i32, %struct.spinlock, ptr }
%struct.mlx4_catas_err = type { ptr, %struct.timer_list, %struct.list_head }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mlx4_uar = type { i32, i32, %struct.list_head, i32, ptr, ptr }
%struct.mlx4_port_info = type { ptr, i32, [16 x i8], %struct.device_attribute, i32, [16 x i8], %struct.device_attribute, %struct.mlx4_mac_table, %struct.mlx4_vlan_table, %struct.mlx4_roce_gid_table, i32, ptr, %struct.devlink_port }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.mlx4_mac_table = type { [128 x i64], [128 x i32], [128 x i8], %struct.mutex, i32, i32 }
%struct.mlx4_vlan_table = type { [128 x i32], [128 x i32], [128 x i32], %struct.mutex, i32, i32 }
%struct.mlx4_roce_gid_table = type { [128 x %struct.mlx4_roce_gid_entry], %struct.mutex }
%struct.mlx4_roce_gid_entry = type { [16 x i8] }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.113 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.113 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mlx4_sense = type { ptr, [3 x i8], [3 x i8], %struct.delayed_work }
%struct.mlx4_msix_ctl = type { [4 x i32], %struct.mutex }
%struct.list_head = type { ptr, ptr }
%struct.mlx4_port_map = type { i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mlx4_srq = type { ptr, i32, i32, i32, i32, %struct.refcount_struct, %struct.completion }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.99, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%union.anon.99 = type { ptr }
%struct.mlx4_srq_context = type { i32, i8, i8, i16, i32, i32, i8, [2 x i8], i8, i32, i32, i16, i16, i16, i16, i32, i64 }
%struct.mlx4_mtt = type { i32, i32, i32 }
%struct.mlx4_cmd_mailbox = type { ptr, i32 }

@mlx4_srq_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 54, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Async event for bogus SRQ %08x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mlx4_srq_event\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/net/ethernet/mellanox/mlx4/srq.c\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlx4_srq_event._entry_ptr = internal global ptr @mlx4_srq_event._entry, section ".printk_index", align 4
@__kstrtab_mlx4_srq_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_mlx4_srq_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_mlx4_srq_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mlx4_srq_alloc to i32), ptr @__kstrtab_mlx4_srq_alloc, ptr @__kstrtabns_mlx4_srq_alloc }, section "___ksymtab_gpl+mlx4_srq_alloc", align 4
@mlx4_srq_free._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 229, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"HW2SW_SRQ failed (%d) for SRQN %06x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mlx4_srq_free\00", [18 x i8] zeroinitializer }, align 32
@mlx4_srq_free._entry_ptr = internal global ptr @mlx4_srq_free._entry, section ".printk_index", align 4
@__kstrtab_mlx4_srq_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_mlx4_srq_free = external dso_local constant [0 x i8], align 1
@__ksymtab_mlx4_srq_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mlx4_srq_free to i32), ptr @__kstrtab_mlx4_srq_free, ptr @__kstrtabns_mlx4_srq_free }, section "___ksymtab_gpl+mlx4_srq_free", align 4
@__kstrtab_mlx4_srq_arm = external dso_local constant [0 x i8], align 1
@__kstrtabns_mlx4_srq_arm = external dso_local constant [0 x i8], align 1
@__ksymtab_mlx4_srq_arm = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mlx4_srq_arm to i32), ptr @__kstrtab_mlx4_srq_arm, ptr @__kstrtabns_mlx4_srq_arm }, section "___ksymtab_gpl+mlx4_srq_arm", align 4
@__kstrtab_mlx4_srq_query = external dso_local constant [0 x i8], align 1
@__kstrtabns_mlx4_srq_query = external dso_local constant [0 x i8], align 1
@__ksymtab_mlx4_srq_query = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mlx4_srq_query to i32), ptr @__kstrtab_mlx4_srq_query, ptr @__kstrtabns_mlx4_srq_query }, section "___ksymtab_gpl+mlx4_srq_query", align 4
@mlx4_init_srq_table.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&srq_table->lock\00", [47 x i8] zeroinitializer }, align 32
@__kstrtab_mlx4_srq_lookup = external dso_local constant [0 x i8], align 1
@__kstrtabns_mlx4_srq_lookup = external dso_local constant [0 x i8], align 1
@__ksymtab_mlx4_srq_lookup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mlx4_srq_lookup to i32), ptr @__kstrtab_mlx4_srq_lookup, ptr @__kstrtabns_mlx4_srq_lookup }, section "___ksymtab_gpl+mlx4_srq_lookup", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@mlx4_srq_free_icm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 156, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Failed freeing cq:%d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mlx4_srq_free_icm\00", [46 x i8] zeroinitializer }, align 32
@mlx4_srq_free_icm._entry_ptr = internal global ptr @mlx4_srq_free_icm._entry, section ".printk_index", align 4
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 54, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 229, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 276, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 695, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 723, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 87, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.70 = private constant [44 x i8] c"../drivers/net/ethernet/mellanox/mlx4/srq.c\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 156, i32 4 }
@___asan_gen_.72 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.75 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.76 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 378, i32 2 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @__ksymtab_mlx4_srq_alloc, ptr @__ksymtab_mlx4_srq_arm, ptr @__ksymtab_mlx4_srq_free, ptr @__ksymtab_mlx4_srq_lookup, ptr @__ksymtab_mlx4_srq_query, ptr @mlx4_srq_event._entry, ptr @mlx4_srq_event._entry_ptr, ptr @mlx4_srq_free._entry, ptr @mlx4_srq_free._entry_ptr, ptr @mlx4_srq_free_icm._entry, ptr @mlx4_srq_free_icm._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @mlx4_init_srq_table.__key, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @init_completion.__key, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @xa_init_flags.__key, ptr @.str.14], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_srq_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_srq_free._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_init_srq_table.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_srq_free_icm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx4_srq_event(ptr noundef %dev, i32 noundef %srqn, i32 noundef %event_type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !44) #8
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !54
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 696, ptr noundef nonnull @.str.9) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %tree = getelementptr inbounds %struct.mlx4_priv, ptr %dev, i32 0, i32 17, i32 2
  %num_srqs = getelementptr inbounds %struct.mlx4_dev, ptr %dev, i32 0, i32 3, i32 29
  %4 = ptrtoint ptr %num_srqs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_srqs, align 4
  %sub = add i32 %5, -1
  %and = and i32 %sub, %srqn
  %call2 = tail call ptr @radix_tree_lookup(ptr noundef %tree, i32 noundef %and) #8
  %call.i17 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i17, label %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i20

rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i20:                                ; preds = %rcu_read_lock.exit
  %call1.i18 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i18)
  %tobool.not.i19 = icmp eq i32 %call1.i18, 0
  br i1 %tobool.not.i19, label %land.lhs.true.i20.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i22

land.lhs.true.i20.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i20
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i22:                               ; preds = %land.lhs.true.i20
  %.b4.i21 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i21, label %land.lhs.true2.i22.rcu_read_unlock.exit_crit_edge, label %if.then.i23

land.lhs.true2.i22.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i22
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i23:                                      ; preds = %land.lhs.true2.i22
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.10) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i23, %land.lhs.true2.i22.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i20.rcu_read_unlock.exit_crit_edge, %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !55
  %6 = tail call i32 @llvm.read_register.i32(metadata !44) #8
  %and.i.i.i.i.i24 = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i24 to ptr
  %preempt_count.i.i.i.i25 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i25 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i25, align 4
  %sub.i.i.i = add i32 %9, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i25, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %do.end, label %if.then

if.then:                                          ; preds = %rcu_read_unlock.exit
  %refcount = getelementptr inbounds %struct.mlx4_srq, ptr %call2, i32 0, i32 5
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #8
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #8, !srcloc !56
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.then.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !57

if.then.if.end15.sink.split.i.i.i_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.then
  %add.i.i.i26 = add i32 %asmresult.i.i.i.i.i, 1
  %11 = or i32 %add.i.i.i26, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %.not.i.i.i = icmp sgt i32 %11, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !58

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i) #8
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  %12 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call2, align 4
  tail call void %13(ptr noundef nonnull %call2, i32 noundef %event_type) #8
  %call.i.i.i.i.i27 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !59
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #8
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #8, !srcloc !60
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then6, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i28 = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i28, label %if.end5.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i, !prof !58

if.end5.i.i.i.cleanup_crit_edge:                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #8
  br label %cleanup

do.end:                                           ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %dev3 = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev3, ptr noundef nonnull @.str, i32 noundef %srqn) #11
  br label %cleanup

if.then6:                                         ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !61
  %free = getelementptr inbounds %struct.mlx4_srq, ptr %call2, i32 0, i32 6
  tail call void @complete(ptr noundef %free) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %do.end, %if.then10.i.i.i, %if.end5.i.i.i.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radix_tree_lookup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__mlx4_srq_alloc_icm(ptr noundef %dev, ptr nocapture noundef %srqn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %srq_table1 = getelementptr inbounds %struct.mlx4_priv, ptr %dev, i32 0, i32 17
  %call2 = tail call i32 @mlx4_bitmap_alloc(ptr noundef %srq_table1) #8
  %0 = ptrtoint ptr %srqn to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call2, ptr %srqn, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2)
  %cmp = icmp eq i32 %call2, -1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %table = getelementptr inbounds %struct.mlx4_priv, ptr %dev, i32 0, i32 17, i32 3
  %call3 = tail call i32 @mlx4_table_get(ptr noundef %dev, ptr noundef %table, i32 noundef %call2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end5, label %if.end.err_out_crit_edge

if.end.err_out_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_out

if.end5:                                          ; preds = %if.end
  %cmpt_table = getelementptr inbounds %struct.mlx4_priv, ptr %dev, i32 0, i32 17, i32 4
  %1 = ptrtoint ptr %srqn to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %srqn, align 4
  %call6 = tail call i32 @mlx4_table_get(ptr noundef %dev, ptr noundef %cmpt_table, i32 noundef %2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %err_put

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

err_put:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %srqn to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %srqn, align 4
  tail call void @mlx4_table_put(ptr noundef %dev, ptr noundef %table, i32 noundef %4) #8
  br label %err_out

err_out:                                          ; preds = %err_put, %if.end.err_out_crit_edge
  %err.0 = phi i32 [ %call3, %if.end.err_out_crit_edge ], [ %call6, %err_put ]
  %5 = ptrtoint ptr %srqn to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %srqn, align 4
  tail call void @mlx4_bitmap_free(ptr noundef %srq_table1, i32 noundef %6, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %err_out, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %err_out ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_bitmap_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_table_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_table_put(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_bitmap_free(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__mlx4_srq_free_icm(ptr noundef %dev, i32 noundef %srqn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %srq_table1 = getelementptr inbounds %struct.mlx4_priv, ptr %dev, i32 0, i32 17
  %cmpt_table = getelementptr inbounds %struct.mlx4_priv, ptr %dev, i32 0, i32 17, i32 4
  tail call void @mlx4_table_put(ptr noundef %dev, ptr noundef %cmpt_table, i32 noundef %srqn) #8
  %table = getelementptr inbounds %struct.mlx4_priv, ptr %dev, i32 0, i32 17, i32 3
  tail call void @mlx4_table_put(ptr noundef %dev, ptr noundef %table, i32 noundef %srqn) #8
  tail call void @mlx4_bitmap_free(ptr noundef %srq_table1, i32 noundef %srqn, i32 noundef 0) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx4_srq_alloc(ptr noundef %dev, i32 noundef %pdn, i32 noundef %cqn, i16 noundef zeroext %xrcd, ptr noundef %mtt, i64 noundef %db_rec, ptr noundef %srq) #0 align 64 {
entry:
  %out_param.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %srqn = getelementptr inbounds %struct.mlx4_srq, ptr %srq, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %out_param.i) #8
  %0 = ptrtoint ptr %out_param.i to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %out_param.i, align 8, !annotation !62
  %flags.i.i = getelementptr inbounds %struct.mlx4_dev, ptr %dev, i32 0, i32 1
  %1 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %2, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %mlx4_srq_alloc_icm.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  %call.i.i = call i32 @__mlx4_cmd(ptr noundef %dev, i64 noundef 0, ptr noundef nonnull %out_param.i, i32 noundef 1, i32 noundef 2, i8 noundef zeroext 1, i16 noundef zeroext 3840, i32 noundef 60000, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i, label %mlx4_srq_alloc_icm.exit.thread, label %mlx4_srq_alloc_icm.exit.thread92

mlx4_srq_alloc_icm.exit.thread92:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %out_param.i) #8
  br label %cleanup

mlx4_srq_alloc_icm.exit.thread:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %out_param.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %out_param.i, align 8
  %conv.i.i = trunc i64 %4 to i32
  %5 = ptrtoint ptr %srqn to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv.i.i, ptr %srqn, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %out_param.i) #8
  br label %if.end

mlx4_srq_alloc_icm.exit:                          ; preds = %entry
  %call6.i = tail call i32 @__mlx4_srq_alloc_icm(ptr noundef %dev, ptr noundef %srqn) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %out_param.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool.not = icmp eq i32 %call6.i, 0
  br i1 %tobool.not, label %mlx4_srq_alloc_icm.exit.if.end_crit_edge, label %mlx4_srq_alloc_icm.exit.cleanup_crit_edge

mlx4_srq_alloc_icm.exit.cleanup_crit_edge:        ; preds = %mlx4_srq_alloc_icm.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

mlx4_srq_alloc_icm.exit.if.end_crit_edge:         ; preds = %mlx4_srq_alloc_icm.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %mlx4_srq_alloc_icm.exit.if.end_crit_edge, %mlx4_srq_alloc_icm.exit.thread
  %lock = getelementptr inbounds %struct.mlx4_priv, ptr %dev, i32 0, i32 17, i32 1
  call void @_raw_spin_lock_irq(ptr noundef %lock) #8
  %tree = getelementptr inbounds %struct.mlx4_priv, ptr %dev, i32 0, i32 17, i32 2
  %6 = ptrtoint ptr %srqn to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %srqn, align 4
  %call4 = call i32 @radix_tree_insert(ptr noundef %tree, i32 noundef %7, ptr noundef %srq) #8
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool6.not = icmp eq i32 %call4, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.err_icm_crit_edge

if.end.err_icm_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_icm

if.end8:                                          ; preds = %if.end
  %call9 = call ptr @mlx4_alloc_cmd_mailbox(ptr noundef %dev) #8
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %call9 to i32
  br label %err_radix

if.end13:                                         ; preds = %if.end8
  %9 = ptrtoint ptr %call9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call9, align 4
  %max = getelementptr inbounds %struct.mlx4_srq, ptr %srq, i32 0, i32 2
  %11 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i.i = icmp eq i32 %12, 0
  %13 = call i32 @llvm.ctlz.i32(i32 %12, i1 true) #8, !range !63
  %sub.i.op.i = shl nuw nsw i32 %13, 24
  %sub.i.op.i.op = xor i32 %sub.i.op.i, 520093696
  %shl = select i1 %tobool.not.i.i, i32 -16777216, i32 %sub.i.op.i.op
  %14 = ptrtoint ptr %srqn to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %srqn, align 4
  %or = or i32 %shl, %15
  %16 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or, ptr %10, align 8
  %wqe_shift = getelementptr inbounds %struct.mlx4_srq, ptr %srq, i32 0, i32 4
  %17 = ptrtoint ptr %wqe_shift to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %wqe_shift, align 4
  %19 = trunc i32 %18 to i8
  %conv24 = add i8 %19, -4
  %logstride = getelementptr inbounds %struct.mlx4_srq_context, ptr %10, i32 0, i32 1
  %20 = ptrtoint ptr %logstride to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv24, ptr %logstride, align 4
  %xrcd25 = getelementptr inbounds %struct.mlx4_srq_context, ptr %10, i32 0, i32 3
  %21 = ptrtoint ptr %xrcd25 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %xrcd, ptr %xrcd25, align 2
  %and = and i32 %cqn, 16777215
  %pg_offset_cqn = getelementptr inbounds %struct.mlx4_srq_context, ptr %10, i32 0, i32 4
  %22 = ptrtoint ptr %pg_offset_cqn to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %and, ptr %pg_offset_cqn, align 8
  %page_shift = getelementptr inbounds %struct.mlx4_mtt, ptr %mtt, i32 0, i32 2
  %23 = ptrtoint ptr %page_shift to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %page_shift, align 4
  %25 = trunc i32 %24 to i8
  %conv27 = add i8 %25, -12
  %log_page_size = getelementptr inbounds %struct.mlx4_srq_context, ptr %10, i32 0, i32 6
  %26 = ptrtoint ptr %log_page_size to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv27, ptr %log_page_size, align 8
  %call28 = call i64 @mlx4_mtt_addr(ptr noundef %dev, ptr noundef %mtt) #8
  %shr = lshr i64 %call28, 32
  %conv29 = trunc i64 %shr to i8
  %mtt_base_addr_h = getelementptr inbounds %struct.mlx4_srq_context, ptr %10, i32 0, i32 8
  %27 = ptrtoint ptr %mtt_base_addr_h to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv29, ptr %mtt_base_addr_h, align 1
  %conv31 = trunc i64 %call28 to i32
  %mtt_base_addr_l = getelementptr inbounds %struct.mlx4_srq_context, ptr %10, i32 0, i32 9
  %28 = ptrtoint ptr %mtt_base_addr_l to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv31, ptr %mtt_base_addr_l, align 4
  %pd = getelementptr inbounds %struct.mlx4_srq_context, ptr %10, i32 0, i32 10
  %29 = ptrtoint ptr %pd to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %pdn, ptr %pd, align 8
  %db_rec_addr = getelementptr inbounds %struct.mlx4_srq_context, ptr %10, i32 0, i32 16
  %30 = ptrtoint ptr %db_rec_addr to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %db_rec, ptr %db_rec_addr, align 8
  %31 = ptrtoint ptr %srqn to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %srqn, align 4
  %dma.i = getelementptr inbounds %struct.mlx4_cmd_mailbox, ptr %call9, i32 0, i32 1
  %33 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dma.i, align 4
  %conv.i = zext i32 %34 to i64
  %call.i.i89 = call i32 @__mlx4_cmd(ptr noundef %dev, i64 noundef %conv.i, ptr noundef null, i32 noundef 0, i32 noundef %32, i8 noundef zeroext 0, i16 noundef zeroext 53, i32 noundef 60000, i32 noundef 0) #8
  call void @mlx4_free_cmd_mailbox(ptr noundef %dev, ptr noundef %call9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i89)
  %tobool34.not = icmp eq i32 %call.i.i89, 0
  br i1 %tobool34.not, label %if.end36, label %if.end13.err_radix_crit_edge

if.end13.err_radix_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_radix

if.end36:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %refcount = getelementptr inbounds %struct.mlx4_srq, ptr %srq, i32 0, i32 5
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #8
  %35 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile i32 1, ptr %refcount, align 4
  %free = getelementptr inbounds %struct.mlx4_srq, ptr %srq, i32 0, i32 6
  %36 = ptrtoint ptr %free to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %free, align 4
  %wait.i = getelementptr inbounds %struct.mlx4_srq, ptr %srq, i32 0, i32 6, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @init_completion.__key) #8
  br label %cleanup

err_radix:                                        ; preds = %if.end13.err_radix_crit_edge, %if.then11
  %err.0 = phi i32 [ %8, %if.then11 ], [ %call.i.i89, %if.end13.err_radix_crit_edge ]
  call void @_raw_spin_lock_irq(ptr noundef %lock) #8
  %37 = ptrtoint ptr %srqn to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %srqn, align 4
  %call40 = call ptr @radix_tree_delete(ptr noundef %tree, i32 noundef %38) #8
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #8
  br label %err_icm

err_icm:                                          ; preds = %err_radix, %if.end.err_icm_crit_edge
  %err.1 = phi i32 [ %call4, %if.end.err_icm_crit_edge ], [ %err.0, %err_radix ]
  %39 = ptrtoint ptr %srqn to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %srqn, align 4
  call fastcc void @mlx4_srq_free_icm(ptr noundef %dev, i32 noundef %40)
  br label %cleanup

cleanup:                                          ; preds = %err_icm, %if.end36, %mlx4_srq_alloc_icm.exit.cleanup_crit_edge, %mlx4_srq_alloc_icm.exit.thread92
  %retval.0 = phi i32 [ %err.1, %err_icm ], [ 0, %if.end36 ], [ %call6.i, %mlx4_srq_alloc_icm.exit.cleanup_crit_edge ], [ %call.i.i, %mlx4_srq_alloc_icm.exit.thread92 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radix_tree_insert(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx4_alloc_cmd_mailbox(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @mlx4_mtt_addr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_free_cmd_mailbox(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radix_tree_delete(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx4_srq_free_icm(ptr noundef %dev, i32 noundef %srqn) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr inbounds %struct.mlx4_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %1, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.end5, label %if.then

if.then:                                          ; preds = %entry
  %conv.i = zext i32 %srqn to i64
  %call.i = tail call i32 @__mlx4_cmd(ptr noundef %dev, i64 noundef %conv.i, ptr noundef null, i32 noundef 0, i32 noundef 2, i8 noundef zeroext 1, i16 noundef zeroext 3841, i32 noundef 60000, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dev4 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev4, ptr noundef nonnull @.str.12, i32 noundef %srqn) #11
  br label %cleanup

if.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %srq_table1.i = getelementptr inbounds %struct.mlx4_priv, ptr %dev, i32 0, i32 17
  %cmpt_table.i = getelementptr inbounds %struct.mlx4_priv, ptr %dev, i32 0, i32 17, i32 4
  tail call void @mlx4_table_put(ptr noundef %dev, ptr noundef %cmpt_table.i, i32 noundef %srqn) #8
  %table.i = getelementptr inbounds %struct.mlx4_priv, ptr %dev, i32 0, i32 17, i32 3
  tail call void @mlx4_table_put(ptr noundef %dev, ptr noundef %table.i, i32 noundef %srqn) #8
  tail call void @mlx4_bitmap_free(ptr noundef %srq_table1.i, i32 noundef %srqn, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %do.end, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx4_srq_free(ptr noundef %dev, ptr noundef %srq) #0 align 64 {
entry:
  %out_param.addr.i.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %srqn = getelementptr inbounds %struct.mlx4_srq, ptr %srq, i32 0, i32 1
  %0 = ptrtoint ptr %srqn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %srqn, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %out_param.addr.i.i) #8
  %2 = ptrtoint ptr %out_param.addr.i.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %out_param.addr.i.i, align 8
  %call.i.i = call i32 @__mlx4_cmd(ptr noundef %dev, i64 noundef 0, ptr noundef nonnull %out_param.addr.i.i, i32 noundef 0, i32 noundef %1, i8 noundef zeroext 1, i16 noundef zeroext 54, i32 noundef 60000, i32 noundef 0) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %out_param.addr.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %dev3 = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  %7 = ptrtoint ptr %srqn to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %srqn, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev3, ptr noundef nonnull @.str.5, i32 noundef %call.i.i, i32 noundef %8) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %lock = getelementptr inbounds %struct.mlx4_priv, ptr %dev, i32 0, i32 17, i32 1
  call void @_raw_spin_lock_irq(ptr noundef %lock) #8
  %tree = getelementptr inbounds %struct.mlx4_priv, ptr %dev, i32 0, i32 17, i32 2
  %9 = ptrtoint ptr %srqn to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %srqn, align 4
  %call6 = call ptr @radix_tree_delete(ptr noundef %tree, i32 noundef %10) #8
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #8
  %refcount = getelementptr inbounds %struct.mlx4_srq, ptr %srq, i32 0, i32 5
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !59
  call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #8
  %11 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #8, !srcloc !60
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then9, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end10_crit_edge, label %if.then10.i.i.i, !prof !58

if.end5.i.i.i.if.end10_crit_edge:                 ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #8
  br label %if.end10

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !61
  %free = getelementptr inbounds %struct.mlx4_srq, ptr %srq, i32 0, i32 6
  call void @complete(ptr noundef %free) #8
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.then10.i.i.i, %if.end5.i.i.i.if.end10_crit_edge
  %free11 = getelementptr inbounds %struct.mlx4_srq, ptr %srq, i32 0, i32 6
  call void @wait_for_completion(ptr noundef %free11) #8
  %12 = ptrtoint ptr %srqn to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %srqn, align 4
  call fastcc void @mlx4_srq_free_icm(ptr noundef %dev, i32 noundef %13)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx4_srq_arm(ptr noundef %dev, ptr nocapture noundef readonly %srq, i32 noundef %limit_watermark) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %srqn = getelementptr inbounds %struct.mlx4_srq, ptr %srq, i32 0, i32 1
  %0 = ptrtoint ptr %srqn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %srqn, align 4
  %conv.i = sext i32 %limit_watermark to i64
  %call.i.i = tail call i32 @__mlx4_cmd(ptr noundef %dev, i64 noundef %conv.i, ptr noundef null, i32 noundef 0, i32 noundef %1, i8 noundef zeroext 0, i16 noundef zeroext 64, i32 noundef 60000, i32 noundef 0) #8
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx4_srq_query(ptr noundef %dev, ptr nocapture noundef readonly %srq, ptr nocapture noundef writeonly %limit_watermark) #0 align 64 {
entry:
  %out_param.addr.i.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mlx4_alloc_cmd_mailbox(ptr noundef %dev) #8
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %call, align 4
  %srqn = getelementptr inbounds %struct.mlx4_srq, ptr %srq, i32 0, i32 1
  %3 = ptrtoint ptr %srqn to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %srqn, align 4
  %dma.i = getelementptr inbounds %struct.mlx4_cmd_mailbox, ptr %call, i32 0, i32 1
  %5 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dma.i, align 4
  %conv.i = zext i32 %6 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %out_param.addr.i.i) #8
  %7 = ptrtoint ptr %out_param.addr.i.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %conv.i, ptr %out_param.addr.i.i, align 8
  %call.i.i = call i32 @__mlx4_cmd(ptr noundef %dev, i64 noundef 0, ptr noundef nonnull %out_param.addr.i.i, i32 noundef 0, i32 noundef %4, i8 noundef zeroext 0, i16 noundef zeroext 55, i32 noundef 60000, i32 noundef 0) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %out_param.addr.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %if.end5, label %if.end.err_out_crit_edge

if.end.err_out_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_out

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %limit_watermark6 = getelementptr inbounds %struct.mlx4_srq_context, ptr %2, i32 0, i32 11
  %8 = ptrtoint ptr %limit_watermark6 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %limit_watermark6, align 4
  %conv = zext i16 %9 to i32
  %10 = ptrtoint ptr %limit_watermark to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv, ptr %limit_watermark, align 4
  br label %err_out

err_out:                                          ; preds = %if.end5, %if.end.err_out_crit_edge
  call void @mlx4_free_cmd_mailbox(ptr noundef %dev, ptr noundef %call) #8
  br label %cleanup

cleanup:                                          ; preds = %err_out, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call.i.i, %err_out ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx4_init_srq_table(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.mlx4_priv, ptr %dev, i32 0, i32 17, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @mlx4_init_srq_table.__key, i16 noundef signext 3) #8
  %tree = getelementptr inbounds %struct.mlx4_priv, ptr %dev, i32 0, i32 17, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %tree, ptr noundef nonnull @.str.14, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #8
  %xa_flags.i = getelementptr inbounds %struct.mlx4_priv, ptr %dev, i32 0, i32 17, i32 2, i32 1
  %0 = ptrtoint ptr %xa_flags.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2592, ptr %xa_flags.i, align 4
  %xa_head.i = getelementptr inbounds %struct.mlx4_priv, ptr %dev, i32 0, i32 17, i32 2, i32 2
  %1 = ptrtoint ptr %xa_head.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %xa_head.i, align 4
  %flags.i = getelementptr inbounds %struct.mlx4_dev, ptr %dev, i32 0, i32 1
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %srq_table1 = getelementptr inbounds %struct.mlx4_priv, ptr %dev, i32 0, i32 17
  %num_srqs = getelementptr inbounds %struct.mlx4_dev, ptr %dev, i32 0, i32 3, i32 29
  %4 = ptrtoint ptr %num_srqs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_srqs, align 4
  %sub = add i32 %5, -1
  %reserved_srqs = getelementptr inbounds %struct.mlx4_dev, ptr %dev, i32 0, i32 3, i32 32
  %6 = ptrtoint ptr %reserved_srqs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reserved_srqs, align 8
  %call7 = tail call i32 @mlx4_bitmap_init(ptr noundef %srq_table1, i32 noundef %5, i32 noundef %sub, i32 noundef %7, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_bitmap_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx4_cleanup_srq_table(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr inbounds %struct.mlx4_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %srq_table = getelementptr inbounds %struct.mlx4_priv, ptr %dev, i32 0, i32 17
  tail call void @mlx4_bitmap_cleanup(ptr noundef %srq_table) #8
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_bitmap_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlx4_srq_lookup(ptr noundef %dev, i32 noundef %srqn) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !44) #8
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !54
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 696, ptr noundef nonnull @.str.9) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %tree = getelementptr inbounds %struct.mlx4_priv, ptr %dev, i32 0, i32 17, i32 2
  %num_srqs = getelementptr inbounds %struct.mlx4_dev, ptr %dev, i32 0, i32 3, i32 29
  %4 = ptrtoint ptr %num_srqs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_srqs, align 4
  %sub = add i32 %5, -1
  %and = and i32 %sub, %srqn
  %call2 = tail call ptr @radix_tree_lookup(ptr noundef %tree, i32 noundef %and) #8
  %call.i4 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i4, label %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i7

rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i7:                                 ; preds = %rcu_read_lock.exit
  %call1.i5 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i5)
  %tobool.not.i6 = icmp eq i32 %call1.i5, 0
  br i1 %tobool.not.i6, label %land.lhs.true.i7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i9

land.lhs.true.i7.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i7
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i9:                                ; preds = %land.lhs.true.i7
  %.b4.i8 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i8, label %land.lhs.true2.i9.rcu_read_unlock.exit_crit_edge, label %if.then.i10

land.lhs.true2.i9.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i9
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i10:                                      ; preds = %land.lhs.true2.i9
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.10) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i10, %land.lhs.true2.i9.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i7.rcu_read_unlock.exit_crit_edge, %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !55
  %6 = tail call i32 @llvm.read_register.i32(metadata !44) #8
  %and.i.i.i.i.i11 = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i11 to ptr
  %preempt_count.i.i.i.i12 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i12, align 4
  %sub.i.i.i = add i32 %9, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i12, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  ret ptr %call2
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mlx4_cmd(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !13, !14, !15, !17, !19, !21, !23, !24, !26, !28, !29, !30, !32, !33, !35, !36, !38, !39, !40, !41, !43}
!llvm.named.register.sp = !{!44}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx4/srq.c", i32 54, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mlx4_srq_event._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @mlx4_srq_event._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @__ksymtab_mlx4_srq_alloc, !9, !"__ksymtab_mlx4_srq_alloc", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mellanox/mlx4/srq.c", i32 220, i32 1}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/mellanox/mlx4/srq.c", i32 229, i32 3}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @mlx4_srq_free._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @mlx4_srq_free._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @__ksymtab_mlx4_srq_free, !16, !"__ksymtab_mlx4_srq_free", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/mellanox/mlx4/srq.c", i32 241, i32 1}
!17 = !{ptr @__ksymtab_mlx4_srq_arm, !18, !"__ksymtab_mlx4_srq_arm", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/mellanox/mlx4/srq.c", i32 247, i32 1}
!19 = !{ptr @__ksymtab_mlx4_srq_query, !20, !"__ksymtab_mlx4_srq_query", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/mellanox/mlx4/srq.c", i32 270, i32 1}
!21 = !{ptr @mlx4_init_srq_table.__key, !22, !"__key", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/mellanox/mlx4/srq.c", i32 276, i32 2}
!23 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @__ksymtab_mlx4_srq_lookup, !25, !"__ksymtab_mlx4_srq_lookup", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/mellanox/mlx4/srq.c", i32 304, i32 1}
!26 = distinct !{null, !27, !"__warned", i1 false, i1 false}
!27 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!28 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!30 = distinct !{null, !31, !"__warned", i1 false, i1 false}
!31 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!32 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @init_completion.__key, !34, !"__key", i1 false, i1 false}
!34 = !{!"../include/linux/completion.h", i32 87, i32 2}
!35 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/mellanox/mlx4/srq.c", i32 156, i32 4}
!38 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @mlx4_srq_free_icm._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @mlx4_srq_free_icm._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @xa_init_flags.__key, !42, !"__key", i1 false, i1 false}
!42 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!43 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!44 = !{!"sp"}
!45 = !{i32 1, !"wchar_size", i32 2}
!46 = !{i32 1, !"min_enum_size", i32 4}
!47 = !{i32 8, !"branch-target-enforcement", i32 0}
!48 = !{i32 8, !"sign-return-address", i32 0}
!49 = !{i32 8, !"sign-return-address-all", i32 0}
!50 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!51 = !{i32 7, !"uwtable", i32 1}
!52 = !{i32 7, !"frame-pointer", i32 2}
!53 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!54 = !{i64 2149328451}
!55 = !{i64 2149328717}
!56 = !{i64 2148526384, i64 2148526416, i64 2148526445, i64 2148526479, i64 2148526510, i64 2148526533}
!57 = !{!"branch_weights", i32 1, i32 2000}
!58 = !{!"branch_weights", i32 2000, i32 1}
!59 = !{i64 2148614385}
!60 = !{i64 2148528849, i64 2148528881, i64 2148528910, i64 2148528944, i64 2148528975, i64 2148528998}
!61 = !{i64 2149636438}
!62 = !{!"auto-init"}
!63 = !{i32 0, i32 33}
