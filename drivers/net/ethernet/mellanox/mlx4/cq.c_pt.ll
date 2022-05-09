; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx4/cq.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx4/cq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mlx4_cq_modify\22, \22a\22\09"
module asm "\09.weak\09__crc_mlx4_cq_modify\09\09\09\09"
module asm "\09.long\09__crc_mlx4_cq_modify\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mlx4_cq_modify:\09\09\09\09\09"
module asm "\09.asciz \09\22mlx4_cq_modify\22\09\09\09\09\09"
module asm "__kstrtabns_mlx4_cq_modify:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mlx4_cq_resize\22, \22a\22\09"
module asm "\09.weak\09__crc_mlx4_cq_resize\09\09\09\09"
module asm "\09.long\09__crc_mlx4_cq_resize\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mlx4_cq_resize:\09\09\09\09\09"
module asm "\09.asciz \09\22mlx4_cq_resize\22\09\09\09\09\09"
module asm "__kstrtabns_mlx4_cq_resize:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mlx4_cq_alloc\22, \22a\22\09"
module asm "\09.weak\09__crc_mlx4_cq_alloc\09\09\09\09"
module asm "\09.long\09__crc_mlx4_cq_alloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mlx4_cq_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22mlx4_cq_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_mlx4_cq_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mlx4_cq_free\22, \22a\22\09"
module asm "\09.weak\09__crc_mlx4_cq_free\09\09\09\09"
module asm "\09.long\09__crc_mlx4_cq_free\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mlx4_cq_free:\09\09\09\09\09"
module asm "\09.asciz \09\22mlx4_cq_free\22\09\09\09\09\09"
module asm "__kstrtabns_mlx4_cq_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.2 }
%union.anon.2 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon, i32 }
%struct.atomic_t = type { i32 }
%union.anon = type { ptr }
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
%struct.resource_allocator = type { %struct.spinlock, %union.anon.125, %union.anon.126, ptr, ptr, ptr }
%union.anon.125 = type { [2 x i32] }
%union.anon.126 = type { [2 x i32] }
%struct.mlx4_eqe = type { i8, i8, i8, i8, %union.anon.127, i8, [2 x i8], i8 }
%union.anon.127 = type { [6 x i32] }
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
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.115 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.115 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mlx4_sense = type { ptr, [3 x i8], [3 x i8], %struct.delayed_work }
%struct.mlx4_msix_ctl = type { [4 x i32], %struct.mutex }
%struct.mlx4_port_map = type { i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.101, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.101 = type { ptr }
%struct.mlx4_cq = type { ptr, ptr, ptr, i32, i16, ptr, ptr, i32, i32, i32, %struct.refcount_struct, %struct.completion, %struct.anon.3, i32, %struct.list_head, i8 }
%struct.anon.3 = type { %struct.list_head, ptr, ptr }
%struct.mlx4_cq_context = type { i32, [3 x i16], i16, i32, i16, i16, [3 x i8], i8, i8, [2 x i8], i8, i32, i32, i32, i32, i32, [2 x i32], i64 }
%struct.mlx4_cmd_mailbox = type { ptr, i32 }
%struct.mlx4_mtt = type { i32, i32, i32 }
%struct.mlx4_eq = type { ptr, ptr, i32, i32, i16, i16, i32, ptr, %struct.mlx4_mtt, %struct.mlx4_eq_tasklet, %struct.mlx4_active_ports, i32, ptr }
%struct.mlx4_eq_tasklet = type { %struct.list_head, %struct.list_head, %struct.tasklet_struct, %struct.spinlock }
%struct.mlx4_active_ports = type { [1 x i32] }
%struct.mlx4_buf = type { %struct.mlx4_buf_list, ptr, i32, i32, i32 }
%struct.mlx4_buf_list = type { ptr, i32 }

@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@mlx4_debug_level = external dso_local local_unnamed_addr global i32, align 4
@mlx4_cq_completion._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 114, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Completion event for bogus CQ %08x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mlx4_cq_completion\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/net/ethernet/mellanox/mlx4/cq.c\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlx4_cq_completion._entry_ptr = internal global ptr @mlx4_cq_completion._entry, section ".printk_index", align 4
@mlx4_cq_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 136, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Async event for bogus CQ %08x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mlx4_cq_event\00", [18 x i8] zeroinitializer }, align 32
@mlx4_cq_event._entry_ptr = internal global ptr @mlx4_cq_event._entry, section ".printk_index", align 4
@__kstrtab_mlx4_cq_modify = external dso_local constant [0 x i8], align 1
@__kstrtabns_mlx4_cq_modify = external dso_local constant [0 x i8], align 1
@__ksymtab_mlx4_cq_modify = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mlx4_cq_modify to i32), ptr @__kstrtab_mlx4_cq_modify, ptr @__kstrtabns_mlx4_cq_modify }, section "___ksymtab_gpl+mlx4_cq_modify", align 4
@__kstrtab_mlx4_cq_resize = external dso_local constant [0 x i8], align 1
@__kstrtabns_mlx4_cq_resize = external dso_local constant [0 x i8], align 1
@__ksymtab_mlx4_cq_resize = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mlx4_cq_resize to i32), ptr @__kstrtab_mlx4_cq_resize, ptr @__kstrtabns_mlx4_cq_resize }, section "___ksymtab_gpl+mlx4_cq_resize", align 4
@__kstrtab_mlx4_cq_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_mlx4_cq_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_mlx4_cq_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mlx4_cq_alloc to i32), ptr @__kstrtab_mlx4_cq_alloc, ptr @__kstrtabns_mlx4_cq_alloc }, section "___ksymtab_gpl+mlx4_cq_alloc", align 4
@mlx4_cq_free._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 444, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"HW2SW_CQ failed (%d) for CQN %06x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mlx4_cq_free\00", [19 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@mlx4_cq_free._entry_ptr = internal global ptr @mlx4_cq_free._entry, section ".printk_index", align 4
@__kstrtab_mlx4_cq_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_mlx4_cq_free = external dso_local constant [0 x i8], align 1
@__ksymtab_mlx4_cq_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mlx4_cq_free to i32), ptr @__kstrtab_mlx4_cq_free, ptr @__kstrtabns_mlx4_cq_free }, section "___ksymtab_gpl+mlx4_cq_free", align 4
@mlx4_init_cq_table.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&cq_table->lock\00", [16 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@mlx4_cq_free_icm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 285, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Failed freeing cq:%d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mlx4_cq_free_icm\00", [47 x i8] zeroinitializer }, align 32
@mlx4_cq_free_icm._entry_ptr = internal global ptr @mlx4_cq_free_icm._entry, section ".printk_index", align 4
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 114, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 136, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 444, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 467, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 695, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 723, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 230, i32 6 }
@___asan_gen_.79 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 214, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 174, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 87, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.97 = private constant [43 x i8] c"../drivers/net/ethernet/mellanox/mlx4/cq.c\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 285, i32 4 }
@___asan_gen_.99 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.102 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.103 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 378, i32 2 }
@llvm.compiler.used = appending global [36 x ptr] [ptr @__ksymtab_mlx4_cq_alloc, ptr @__ksymtab_mlx4_cq_free, ptr @__ksymtab_mlx4_cq_modify, ptr @__ksymtab_mlx4_cq_resize, ptr @mlx4_cq_completion._entry, ptr @mlx4_cq_completion._entry_ptr, ptr @mlx4_cq_event._entry, ptr @mlx4_cq_event._entry_ptr, ptr @mlx4_cq_free._entry, ptr @mlx4_cq_free._entry_ptr, ptr @mlx4_cq_free_icm._entry, ptr @mlx4_cq_free_icm._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @mlx4_init_cq_table.__key, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @init_completion.__key, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @xa_init_flags.__key, ptr @.str.20], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_cq_completion._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_cq_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_cq_free._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_init_cq_table.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_cq_free_icm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx4_cq_tasklet_cb(ptr noundef %t) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %0, 1
  %add.ptr = getelementptr i8, ptr %t, i32 -16
  %lock = getelementptr i8, ptr %t, i32 24
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %process_list = getelementptr i8, ptr %t, i32 -8
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %add.ptr, align 4
  %cmp.i.not.i = icmp eq ptr %2, %add.ptr
  br i1 %cmp.i.not.i, label %entry.list_splice_tail_init.exit_crit_edge, label %if.then.i

entry.list_splice_tail_init.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_splice_tail_init.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i = getelementptr i8, ptr %t, i32 -4
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i, align 4
  %prev2.i.i = getelementptr i8, ptr %t, i32 -12
  %5 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %7 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev3.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %2, ptr %4, align 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %process_list, ptr %6, align 4
  store ptr %6, ptr %prev.i, align 4
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %add.ptr, ptr %add.ptr, align 4
  store ptr %add.ptr, ptr %prev2.i.i, align 4
  br label %list_splice_tail_init.exit

list_splice_tail_init.exit:                       ; preds = %if.then.i, %entry.list_splice_tail_init.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #10
  %11 = ptrtoint ptr %process_list to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %process_list, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end.for.cond_crit_edge, %list_splice_tail_init.exit
  %.pn.in = phi ptr [ %12, %list_splice_tail_init.exit ], [ %.pn, %if.end.for.cond_crit_edge ]
  %13 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp20.not = icmp eq ptr %.pn.in, %process_list
  br i1 %cmp20.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.cond
  %mcq.0 = getelementptr i8, ptr %.pn.in, i32 -100
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in) #10
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del_init.exit_crit_edge

for.body.list_del_init.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i, align 4
  %16 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %.pn.in, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %for.body.list_del_init.exit_crit_edge
  %20 = ptrtoint ptr %.pn.in to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %.pn.in, ptr %.pn.in, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %.pn.in, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %.pn.in, ptr %prev.i3.i, align 4
  %comp = getelementptr i8, ptr %.pn.in, i32 8
  %22 = ptrtoint ptr %comp to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %comp, align 4
  tail call void %23(ptr noundef %mcq.0) #10
  %refcount = getelementptr i8, ptr %.pn.in, i32 -60
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !65
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #10
  %24 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #10, !srcloc !66
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end_crit_edge, label %if.then10.i.i.i, !prof !67

if.end5.i.i.i.if.end_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #10
  br label %if.end

if.then:                                          ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !68
  %free = getelementptr i8, ptr %.pn.in, i32 -56
  tail call void @complete(ptr noundef %free) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then10.i.i.i, %if.end5.i.i.i.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %25 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %25
  %cmp26 = icmp slt i32 %sub, 0
  br i1 %cmp26, label %if.end.for.end_crit_edge, label %if.end.for.cond_crit_edge

if.end.for.cond_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %for.cond.for.end_crit_edge
  %26 = ptrtoint ptr %process_list to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %process_list, align 4
  %cmp.i.not = icmp eq ptr %27, %process_list
  br i1 %cmp.i.not, label %for.end.if.end39_crit_edge, label %if.then38

for.end.if.end39_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

if.then38:                                        ; preds = %for.end
  %state.i = getelementptr inbounds %struct.tasklet_struct, ptr %t, i32 0, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i55, label %if.then38.if.end39_crit_edge

if.then38.if.end39_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

if.then.i55:                                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__tasklet_schedule(ptr noundef %t) #10
  br label %if.end39

if.end39:                                         ; preds = %if.then.i55, %if.then38.if.end39_crit_edge, %for.end.if.end39_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx4_cq_completion(ptr noundef %dev, i32 noundef %cqn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !55) #10
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !69
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 696, ptr noundef nonnull @.str.12) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %tree = getelementptr inbounds %struct.mlx4_priv, ptr %dev, i32 0, i32 15, i32 2
  %num_cqs = getelementptr inbounds %struct.mlx4_dev, ptr %dev, i32 0, i32 3, i32 33
  %4 = ptrtoint ptr %num_cqs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_cqs, align 4
  %sub = add i32 %5, -1
  %and = and i32 %sub, %cqn
  %call1 = tail call ptr @radix_tree_lookup(ptr noundef %tree, i32 noundef %and) #10
  %call.i15 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i15, label %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i18

rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i18:                                ; preds = %rcu_read_lock.exit
  %call1.i16 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i16)
  %tobool.not.i17 = icmp eq i32 %call1.i16, 0
  br i1 %tobool.not.i17, label %land.lhs.true.i18.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i20

land.lhs.true.i18.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i18
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i20:                               ; preds = %land.lhs.true.i18
  %.b4.i19 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i19, label %land.lhs.true2.i20.rcu_read_unlock.exit_crit_edge, label %if.then.i21

land.lhs.true2.i20.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i20
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i21:                                      ; preds = %land.lhs.true2.i20
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 724, ptr noundef nonnull @.str.13) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i21, %land.lhs.true2.i20.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i18.rcu_read_unlock.exit_crit_edge, %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !70
  %6 = tail call i32 @llvm.read_register.i32(metadata !55) #10
  %and.i.i.i.i.i22 = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i22 to ptr
  %preempt_count.i.i.i.i23 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i23 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i23, align 4
  %sub.i.i.i = add i32 %9, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i23, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %do.body, label %if.end8

do.body:                                          ; preds = %rcu_read_unlock.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mlx4_debug_level to i32))
  %10 = load i32, ptr @mlx4_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool2.not = icmp eq i32 %10, 0
  br i1 %tobool2.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %dev5 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev5, ptr noundef nonnull @.str, i32 noundef %cqn) #13
  br label %cleanup

if.end8:                                          ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #12
  %arm_sn = getelementptr inbounds %struct.mlx4_cq, ptr %call1, i32 0, i32 7
  %15 = ptrtoint ptr %arm_sn to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arm_sn, align 4
  %inc = add i32 %16, 1
  store i32 %inc, ptr %arm_sn, align 4
  %17 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call1, align 4
  tail call void %18(ptr noundef nonnull %call1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %do.end, %do.body.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radix_tree_lookup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx4_cq_event(ptr noundef %dev, i32 noundef %cqn, i32 noundef %event_type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !55) #10
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !69
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 696, ptr noundef nonnull @.str.12) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %tree = getelementptr inbounds %struct.mlx4_priv, ptr %dev, i32 0, i32 15, i32 2
  %num_cqs = getelementptr inbounds %struct.mlx4_dev, ptr %dev, i32 0, i32 3, i32 33
  %4 = ptrtoint ptr %num_cqs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_cqs, align 4
  %sub = add i32 %5, -1
  %and = and i32 %sub, %cqn
  %call2 = tail call ptr @radix_tree_lookup(ptr noundef %tree, i32 noundef %and) #10
  %call.i16 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i16, label %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i19

rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i19:                                ; preds = %rcu_read_lock.exit
  %call1.i17 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i17)
  %tobool.not.i18 = icmp eq i32 %call1.i17, 0
  br i1 %tobool.not.i18, label %land.lhs.true.i19.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i21

land.lhs.true.i19.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i19
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i21:                               ; preds = %land.lhs.true.i19
  %.b4.i20 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i20, label %land.lhs.true2.i21.rcu_read_unlock.exit_crit_edge, label %if.then.i22

land.lhs.true2.i21.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i21
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i22:                                      ; preds = %land.lhs.true2.i21
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 724, ptr noundef nonnull @.str.13) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i22, %land.lhs.true2.i21.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i19.rcu_read_unlock.exit_crit_edge, %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !70
  %6 = tail call i32 @llvm.read_register.i32(metadata !55) #10
  %and.i.i.i.i.i23 = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i23 to ptr
  %preempt_count.i.i.i.i24 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i24 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i24, align 4
  %sub.i.i.i = add i32 %9, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i24, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %do.body, label %if.end9

do.body:                                          ; preds = %rcu_read_unlock.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mlx4_debug_level to i32))
  %10 = load i32, ptr @mlx4_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool3.not = icmp eq i32 %10, 0
  br i1 %tobool3.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %dev6 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev6, ptr noundef nonnull @.str.5, i32 noundef %cqn) #13
  br label %cleanup

if.end9:                                          ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #12
  %event = getelementptr inbounds %struct.mlx4_cq, ptr %call2, i32 0, i32 1
  %15 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %event, align 4
  tail call void %16(ptr noundef nonnull %call2, i32 noundef %event_type) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %do.end, %do.body.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx4_cq_modify(ptr noundef %dev, ptr nocapture noundef readonly %cq, i16 noundef zeroext %count, i16 noundef zeroext %period) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mlx4_alloc_cmd_mailbox(ptr noundef %dev) #10
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %call, align 4
  %cq_max_count = getelementptr inbounds %struct.mlx4_cq_context, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %cq_max_count to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %count, ptr %cq_max_count, align 2
  %cq_period = getelementptr inbounds %struct.mlx4_cq_context, ptr %2, i32 0, i32 4
  %4 = ptrtoint ptr %cq_period to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %period, ptr %cq_period, align 8
  %cqn = getelementptr inbounds %struct.mlx4_cq, ptr %cq, i32 0, i32 8
  %5 = ptrtoint ptr %cqn to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cqn, align 4
  %dma.i = getelementptr inbounds %struct.mlx4_cmd_mailbox, ptr %call, i32 0, i32 1
  %7 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dma.i, align 4
  %conv.i = zext i32 %8 to i64
  %call.i.i = tail call i32 @__mlx4_cmd(ptr noundef %dev, i64 noundef %conv.i, ptr noundef null, i32 noundef 0, i32 noundef %6, i8 noundef zeroext 1, i16 noundef zeroext 44, i32 noundef 60000, i32 noundef 0) #10
  tail call void @mlx4_free_cmd_mailbox(ptr noundef %dev, ptr noundef %call) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call.i.i, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx4_alloc_cmd_mailbox(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_free_cmd_mailbox(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx4_cq_resize(ptr noundef %dev, ptr nocapture noundef readonly %cq, i32 noundef %entries, ptr noundef %mtt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mlx4_alloc_cmd_mailbox(ptr noundef %dev) #10
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %call, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %entries)
  %tobool.not.i.i = icmp eq i32 %entries, 0
  %3 = tail call i32 @llvm.ctlz.i32(i32 %entries, i1 true) #10, !range !71
  %sub.i.op.i = shl nuw nsw i32 %3, 24
  %sub.i.op.i.op = xor i32 %sub.i.op.i, 520093696
  %shl = select i1 %tobool.not.i.i, i32 -16777216, i32 %sub.i.op.i.op
  %logsize_usrpage = getelementptr inbounds %struct.mlx4_cq_context, ptr %2, i32 0, i32 3
  %4 = ptrtoint ptr %logsize_usrpage to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %shl, ptr %logsize_usrpage, align 4
  %page_shift = getelementptr inbounds %struct.mlx4_mtt, ptr %mtt, i32 0, i32 2
  %5 = ptrtoint ptr %page_shift to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %page_shift, align 4
  %7 = trunc i32 %6 to i8
  %conv9 = add i8 %7, -12
  %log_page_size = getelementptr inbounds %struct.mlx4_cq_context, ptr %2, i32 0, i32 8
  %8 = ptrtoint ptr %log_page_size to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv9, ptr %log_page_size, align 8
  %call10 = tail call i64 @mlx4_mtt_addr(ptr noundef %dev, ptr noundef %mtt) #10
  %shr = lshr i64 %call10, 32
  %conv11 = trunc i64 %shr to i8
  %mtt_base_addr_h = getelementptr inbounds %struct.mlx4_cq_context, ptr %2, i32 0, i32 10
  %9 = ptrtoint ptr %mtt_base_addr_h to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv11, ptr %mtt_base_addr_h, align 1
  %conv12 = trunc i64 %call10 to i32
  %mtt_base_addr_l = getelementptr inbounds %struct.mlx4_cq_context, ptr %2, i32 0, i32 11
  %10 = ptrtoint ptr %mtt_base_addr_l to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv12, ptr %mtt_base_addr_l, align 4
  %cqn = getelementptr inbounds %struct.mlx4_cq, ptr %cq, i32 0, i32 8
  %11 = ptrtoint ptr %cqn to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cqn, align 4
  %dma.i = getelementptr inbounds %struct.mlx4_cmd_mailbox, ptr %call, i32 0, i32 1
  %13 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dma.i, align 4
  %conv.i = zext i32 %14 to i64
  %call.i.i = tail call i32 @__mlx4_cmd(ptr noundef %dev, i64 noundef %conv.i, ptr noundef null, i32 noundef 0, i32 noundef %12, i8 noundef zeroext 0, i16 noundef zeroext 44, i32 noundef 60000, i32 noundef 0) #10
  tail call void @mlx4_free_cmd_mailbox(ptr noundef %dev, ptr noundef %call) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call.i.i, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @mlx4_mtt_addr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__mlx4_cq_alloc_icm(ptr noundef %dev, ptr nocapture noundef %cqn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cq_table1 = getelementptr inbounds %struct.mlx4_priv, ptr %dev, i32 0, i32 15
  %call2 = tail call i32 @mlx4_bitmap_alloc(ptr noundef %cq_table1) #10
  %0 = ptrtoint ptr %cqn to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call2, ptr %cqn, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2)
  %cmp = icmp eq i32 %call2, -1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %table = getelementptr inbounds %struct.mlx4_priv, ptr %dev, i32 0, i32 15, i32 3
  %call3 = tail call i32 @mlx4_table_get(ptr noundef %dev, ptr noundef %table, i32 noundef %call2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end5, label %if.end.err_out_crit_edge

if.end.err_out_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_out

if.end5:                                          ; preds = %if.end
  %cmpt_table = getelementptr inbounds %struct.mlx4_priv, ptr %dev, i32 0, i32 15, i32 4
  %1 = ptrtoint ptr %cqn to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %cqn, align 4
  %call6 = tail call i32 @mlx4_table_get(ptr noundef %dev, ptr noundef %cmpt_table, i32 noundef %2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %err_put

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

err_put:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %cqn to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cqn, align 4
  tail call void @mlx4_table_put(ptr noundef %dev, ptr noundef %table, i32 noundef %4) #10
  br label %err_out

err_out:                                          ; preds = %err_put, %if.end.err_out_crit_edge
  %err.0 = phi i32 [ %call3, %if.end.err_out_crit_edge ], [ %call6, %err_put ]
  %5 = ptrtoint ptr %cqn to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cqn, align 4
  tail call void @mlx4_bitmap_free(ptr noundef %cq_table1, i32 noundef %6, i32 noundef 0) #10
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
define dso_local void @__mlx4_cq_free_icm(ptr noundef %dev, i32 noundef %cqn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cq_table1 = getelementptr inbounds %struct.mlx4_priv, ptr %dev, i32 0, i32 15
  %cmpt_table = getelementptr inbounds %struct.mlx4_priv, ptr %dev, i32 0, i32 15, i32 4
  tail call void @mlx4_table_put(ptr noundef %dev, ptr noundef %cmpt_table, i32 noundef %cqn) #10
  %table = getelementptr inbounds %struct.mlx4_priv, ptr %dev, i32 0, i32 15, i32 3
  tail call void @mlx4_table_put(ptr noundef %dev, ptr noundef %table, i32 noundef %cqn) #10
  tail call void @mlx4_bitmap_free(ptr noundef %cq_table1, i32 noundef %cqn, i32 noundef 0) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx4_cq_alloc(ptr noundef %dev, i32 noundef %nent, ptr noundef %mtt, ptr noundef %uar, i64 noundef %db_rec, ptr noundef %cq, i32 noundef %vector, i32 noundef %collapsed, i32 noundef %timestamp_en, ptr noundef %buf_addr, i1 noundef zeroext %user_cq) #0 align 64 {
entry:
  %out_param.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags2 = getelementptr inbounds %struct.mlx4_dev, ptr %dev, i32 0, i32 3, i32 61
  %0 = ptrtoint ptr %flags2 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %flags2, align 8
  %and = and i64 %1, 1099511627776
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  %num_comp_vectors = getelementptr inbounds %struct.mlx4_dev, ptr %dev, i32 0, i32 3, i32 39
  %2 = ptrtoint ptr %num_comp_vectors to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_comp_vectors, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %vector)
  %cmp.not = icmp ugt i32 %3, %vector
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %vector4 = getelementptr inbounds %struct.mlx4_cq, ptr %cq, i32 0, i32 9
  %4 = ptrtoint ptr %vector4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %vector, ptr %vector4, align 4
  %cqn = getelementptr inbounds %struct.mlx4_cq, ptr %cq, i32 0, i32 8
  %usage = getelementptr inbounds %struct.mlx4_cq, ptr %cq, i32 0, i32 15
  %5 = ptrtoint ptr %usage to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %usage, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %out_param.i) #10
  %7 = ptrtoint ptr %out_param.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 -1, ptr %out_param.i, align 8, !annotation !72
  %flags.i.i = getelementptr inbounds %struct.mlx4_dev, ptr %dev, i32 0, i32 1
  %8 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %9, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %mlx4_cq_alloc_icm.exit, label %if.then.i

if.then.i:                                        ; preds = %if.end
  %and.i = zext i8 %6 to i32
  %shl.i = shl i32 %and.i, 30
  %or.i = or i32 %shl.i, 1
  %call.i.i = call i32 @__mlx4_cmd(ptr noundef %dev, i64 noundef 0, ptr noundef nonnull %out_param.i, i32 noundef 1, i32 noundef %or.i, i8 noundef zeroext 1, i16 noundef zeroext 3840, i32 noundef 60000, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i, label %mlx4_cq_alloc_icm.exit.thread, label %mlx4_cq_alloc_icm.exit.thread182

mlx4_cq_alloc_icm.exit.thread182:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %out_param.i) #10
  br label %cleanup

mlx4_cq_alloc_icm.exit.thread:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %out_param.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %out_param.i, align 8
  %conv.i.i = trunc i64 %11 to i32
  %12 = ptrtoint ptr %cqn to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv.i.i, ptr %cqn, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %out_param.i) #10
  br label %if.end8

mlx4_cq_alloc_icm.exit:                           ; preds = %if.end
  %call5.i = tail call i32 @__mlx4_cq_alloc_icm(ptr noundef %dev, ptr noundef %cqn) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %out_param.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not, label %mlx4_cq_alloc_icm.exit.if.end8_crit_edge, label %mlx4_cq_alloc_icm.exit.cleanup_crit_edge

mlx4_cq_alloc_icm.exit.cleanup_crit_edge:         ; preds = %mlx4_cq_alloc_icm.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

mlx4_cq_alloc_icm.exit.if.end8_crit_edge:         ; preds = %mlx4_cq_alloc_icm.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.end8:                                          ; preds = %mlx4_cq_alloc_icm.exit.if.end8_crit_edge, %mlx4_cq_alloc_icm.exit.thread
  %lock = getelementptr inbounds %struct.mlx4_priv, ptr %dev, i32 0, i32 15, i32 1
  call void @_raw_spin_lock(ptr noundef %lock) #10
  %tree = getelementptr inbounds %struct.mlx4_priv, ptr %dev, i32 0, i32 15, i32 2
  %13 = ptrtoint ptr %cqn to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cqn, align 4
  %call10 = call i32 @radix_tree_insert(ptr noundef %tree, i32 noundef %14, ptr noundef %cq) #10
  call void @_raw_spin_unlock(ptr noundef %lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool12.not = icmp eq i32 %call10, 0
  br i1 %tobool12.not, label %if.end14, label %if.end8.err_icm_crit_edge

if.end8.err_icm_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_icm

if.end14:                                         ; preds = %if.end8
  %call15 = call ptr @mlx4_alloc_cmd_mailbox(ptr noundef %dev) #10
  %cmp.i = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %call15 to i32
  br label %err_radix

if.end19:                                         ; preds = %if.end14
  %16 = ptrtoint ptr %call15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %collapsed)
  %tobool20.not = icmp eq i32 %collapsed, 0
  %shl = select i1 %tobool20.not, i32 0, i32 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timestamp_en)
  %tobool22.not = icmp eq i32 %timestamp_en, 0
  %or = or i32 %shl, 524288
  %spec.select = select i1 %tobool22.not, i32 %shl, i32 %or
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %spec.select, ptr %17, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nent)
  %tobool.not.i.i = icmp eq i32 %nent, 0
  %19 = call i32 @llvm.ctlz.i32(i32 %nent, i1 true) #10, !range !71
  %sub.i.op.i = shl nuw nsw i32 %19, 24
  %sub.i.op.i.op = xor i32 %sub.i.op.i, 520093696
  %shl32 = select i1 %tobool.not.i.i, i32 -16777216, i32 %sub.i.op.i.op
  %index = getelementptr inbounds %struct.mlx4_uar, ptr %uar, i32 0, i32 1
  %20 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %index, align 4
  %uar_page_shift.i = getelementptr inbounds %struct.mlx4_dev, ptr %dev, i32 0, i32 15
  %22 = ptrtoint ptr %uar_page_shift.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %uar_page_shift.i, align 4
  %conv.i = zext i8 %23 to i32
  %sub.i176 = sub nsw i32 12, %conv.i
  %shl.i177 = shl i32 %21, %sub.i176
  %or34 = or i32 %shl.i177, %shl32
  %logsize_usrpage = getelementptr inbounds %struct.mlx4_cq_context, ptr %17, i32 0, i32 3
  %24 = ptrtoint ptr %logsize_usrpage to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or34, ptr %logsize_usrpage, align 4
  %eq = getelementptr inbounds %struct.mlx4_priv, ptr %dev, i32 0, i32 16, i32 5
  %25 = ptrtoint ptr %eq to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %eq, align 4
  %27 = xor i32 %vector, -1
  %vector.lobit.not = lshr i32 %27, 31
  %add = add nuw i32 %vector.lobit.not, %vector
  %eqn = getelementptr %struct.mlx4_eq, ptr %26, i32 %add, i32 2
  %28 = ptrtoint ptr %eqn to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %eqn, align 4
  %conv41 = trunc i32 %29 to i8
  %comp_eqn = getelementptr inbounds %struct.mlx4_cq_context, ptr %17, i32 0, i32 7
  %30 = ptrtoint ptr %comp_eqn to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv41, ptr %comp_eqn, align 1
  %page_shift = getelementptr inbounds %struct.mlx4_mtt, ptr %mtt, i32 0, i32 2
  %31 = ptrtoint ptr %page_shift to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %page_shift, align 4
  %33 = trunc i32 %32 to i8
  %conv43 = add i8 %33, -12
  %log_page_size = getelementptr inbounds %struct.mlx4_cq_context, ptr %17, i32 0, i32 8
  %34 = ptrtoint ptr %log_page_size to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv43, ptr %log_page_size, align 8
  %call44 = call i64 @mlx4_mtt_addr(ptr noundef %dev, ptr noundef %mtt) #10
  %shr = lshr i64 %call44, 32
  %conv45 = trunc i64 %shr to i8
  %mtt_base_addr_h = getelementptr inbounds %struct.mlx4_cq_context, ptr %17, i32 0, i32 10
  %35 = ptrtoint ptr %mtt_base_addr_h to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv45, ptr %mtt_base_addr_h, align 1
  %conv47 = trunc i64 %call44 to i32
  %mtt_base_addr_l = getelementptr inbounds %struct.mlx4_cq_context, ptr %17, i32 0, i32 11
  %36 = ptrtoint ptr %mtt_base_addr_l to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %conv47, ptr %mtt_base_addr_l, align 4
  %db_rec_addr = getelementptr inbounds %struct.mlx4_cq_context, ptr %17, i32 0, i32 17
  %37 = ptrtoint ptr %db_rec_addr to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %db_rec, ptr %db_rec_addr, align 8
  br i1 %tobool.not, label %if.end19.if.end60_crit_edge, label %if.then49

if.end19.if.end60_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

if.then49:                                        ; preds = %if.end19
  %cqe_size = getelementptr inbounds %struct.mlx4_dev, ptr %dev, i32 0, i32 3, i32 83
  %38 = ptrtoint ptr %cqe_size to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cqe_size, align 4
  br i1 %user_cq, label %if.then51, label %if.else

if.then51:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #12
  %call53 = call fastcc i32 @mlx4_init_user_cqes(ptr noundef %buf_addr, i32 noundef %nent, i32 noundef %39)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br label %if.end60

if.else:                                          ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @mlx4_init_kernel_cqes(ptr noundef %buf_addr, i32 noundef %nent, i32 noundef %39)
  br label %if.end60

if.end60:                                         ; preds = %if.else, %if.then51, %if.end19.if.end60_crit_edge
  %sw_cq_init.0.off0 = phi i1 [ true, %if.else ], [ false, %if.end19.if.end60_crit_edge ], [ %tobool54.not, %if.then51 ]
  %40 = ptrtoint ptr %cqn to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cqn, align 4
  %conv63 = zext i1 %sw_cq_init.0.off0 to i8
  %dma.i = getelementptr inbounds %struct.mlx4_cmd_mailbox, ptr %call15, i32 0, i32 1
  %42 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dma.i, align 4
  %conv.i178 = zext i32 %43 to i64
  %call.i.i179 = call i32 @__mlx4_cmd(ptr noundef %dev, i64 noundef %conv.i178, ptr noundef null, i32 noundef 0, i32 noundef %41, i8 noundef zeroext %conv63, i16 noundef zeroext 22, i32 noundef 60000, i32 noundef 0) #10
  call void @mlx4_free_cmd_mailbox(ptr noundef %dev, ptr noundef %call15) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i179)
  %tobool65.not = icmp eq i32 %call.i.i179, 0
  br i1 %tobool65.not, label %if.end67, label %if.end60.err_radix_crit_edge

if.end60.err_radix_crit_edge:                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_radix

if.end67:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  %cons_index = getelementptr inbounds %struct.mlx4_cq, ptr %cq, i32 0, i32 3
  %44 = ptrtoint ptr %cons_index to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %cons_index, align 4
  %arm_sn = getelementptr inbounds %struct.mlx4_cq, ptr %cq, i32 0, i32 7
  %45 = ptrtoint ptr %arm_sn to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %arm_sn, align 4
  %uar68 = getelementptr inbounds %struct.mlx4_cq, ptr %cq, i32 0, i32 2
  %46 = ptrtoint ptr %uar68 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %uar, ptr %uar68, align 4
  %refcount = getelementptr inbounds %struct.mlx4_cq, ptr %cq, i32 0, i32 10
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #10
  %47 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile i32 1, ptr %refcount, align 4
  %free = getelementptr inbounds %struct.mlx4_cq, ptr %cq, i32 0, i32 11
  %48 = ptrtoint ptr %free to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %free, align 4
  %wait.i = getelementptr inbounds %struct.mlx4_cq, ptr %cq, i32 0, i32 11, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @init_completion.__key) #10
  %49 = ptrtoint ptr %cq to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @mlx4_add_cq_to_tasklet, ptr %cq, align 4
  %50 = ptrtoint ptr %eq to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %eq, align 4
  %tasklet_ctx = getelementptr %struct.mlx4_eq, ptr %51, i32 %add, i32 9
  %tasklet_ctx79 = getelementptr inbounds %struct.mlx4_cq, ptr %cq, i32 0, i32 12
  %priv80 = getelementptr inbounds %struct.mlx4_cq, ptr %cq, i32 0, i32 12, i32 2
  %52 = ptrtoint ptr %priv80 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %tasklet_ctx, ptr %priv80, align 4
  %53 = ptrtoint ptr %tasklet_ctx79 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %tasklet_ctx79, ptr %tasklet_ctx79, align 4
  %prev.i = getelementptr inbounds %struct.mlx4_cq, ptr %cq, i32 0, i32 12, i32 0, i32 1
  %54 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %tasklet_ctx79, ptr %prev.i, align 4
  %55 = load ptr, ptr %eq, align 4
  %irq = getelementptr %struct.mlx4_eq, ptr %55, i32 %add, i32 4
  %56 = ptrtoint ptr %irq to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %irq, align 4
  %irq92 = getelementptr inbounds %struct.mlx4_cq, ptr %cq, i32 0, i32 4
  %58 = ptrtoint ptr %irq92 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %57, ptr %irq92, align 4
  br label %cleanup

err_radix:                                        ; preds = %if.end60.err_radix_crit_edge, %if.then17
  %err.0 = phi i32 [ %15, %if.then17 ], [ %call.i.i179, %if.end60.err_radix_crit_edge ]
  call void @_raw_spin_lock(ptr noundef %lock) #10
  %59 = ptrtoint ptr %cqn to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %cqn, align 4
  %call96 = call ptr @radix_tree_delete(ptr noundef %tree, i32 noundef %60) #10
  call void @_raw_spin_unlock(ptr noundef %lock) #10
  br label %err_icm

err_icm:                                          ; preds = %err_radix, %if.end8.err_icm_crit_edge
  %err.1 = phi i32 [ %call10, %if.end8.err_icm_crit_edge ], [ %err.0, %err_radix ]
  %61 = ptrtoint ptr %cqn to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %cqn, align 4
  call fastcc void @mlx4_cq_free_icm(ptr noundef %dev, i32 noundef %62)
  br label %cleanup

cleanup:                                          ; preds = %err_icm, %if.end67, %mlx4_cq_alloc_icm.exit.cleanup_crit_edge, %mlx4_cq_alloc_icm.exit.thread182, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %err_icm ], [ 0, %if.end67 ], [ -22, %entry.cleanup_crit_edge ], [ %call5.i, %mlx4_cq_alloc_icm.exit.cleanup_crit_edge ], [ %call.i.i, %mlx4_cq_alloc_icm.exit.thread182 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radix_tree_insert(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx4_init_user_cqes(ptr noundef %buf, i32 noundef %entries, i32 noundef %cqe_size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %div = udiv i32 4096, %cqe_size
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 4096) #14
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = call ptr @memset(ptr %call7.i, i32 204, i32 4096)
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %entries)
  %cmp = icmp slt i32 %div, %entries
  br i1 %cmp, label %for.cond.preheader, label %if.else

for.cond.preheader:                               ; preds = %if.end
  %div2 = sdiv i32 %entries, %div
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div2)
  %cmp345 = icmp sgt i32 %div2, 0
  br i1 %cmp345, label %for.cond.preheader.if.end8.i.i_crit_edge, label %for.cond.preheader.out_crit_edge

for.cond.preheader.out_crit_edge:                 ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

for.cond.preheader.if.end8.i.i_crit_edge:         ; preds = %for.cond.preheader
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.end8.if.end8.i.i_crit_edge, %for.cond.preheader.if.end8.i.i_crit_edge
  %i.047 = phi i32 [ %inc, %if.end8.if.end8.i.i_crit_edge ], [ 0, %for.cond.preheader.if.end8.i.i_crit_edge ]
  %buf.addr.046 = phi ptr [ %add.ptr, %if.end8.if.end8.i.i_crit_edge ], [ %buf, %for.cond.preheader.if.end8.i.i_crit_edge ]
  tail call void @__might_fault(ptr noundef nonnull @.str.16, i32 noundef 174) #10
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %if.end8.i.i.out_crit_edge, label %if.end.i.i

if.end8.i.i.out_crit_edge:                        ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end.i.i:                                       ; preds = %if.end8.i.i
  %2 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf.addr.046, i32 4096, i32 -1226833920) #15, !srcloc !73
  %asmresult.i.i = extractvalue { i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.out_crit_edge

if.end.i.i.out_crit_edge:                         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call7.i, i32 noundef 4096) #10
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %buf.addr.046, ptr noundef nonnull %call7.i, i32 noundef 4096) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool5.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool5.not, label %if.end8, label %copy_to_user.exit.out_crit_edge

copy_to_user.exit.out_crit_edge:                  ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end8:                                          ; preds = %copy_to_user.exit
  %add.ptr = getelementptr i8, ptr %buf.addr.046, i32 4096
  %inc = add nuw nsw i32 %i.047, 1
  %exitcond.not = icmp eq i32 %inc, %div2
  br i1 %exitcond.not, label %if.end8.out_crit_edge, label %if.end8.if.end8.i.i_crit_edge

if.end8.if.end8.i.i_crit_edge:                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i.i

if.end8.out_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.else:                                          ; preds = %if.end
  %3 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %entries, i32 %cqe_size) #10
  %4 = extractvalue { i32, i1 } %3, 1
  %5 = extractvalue { i32, i1 } %3, 0
  %retval.0.i = select i1 %4, i32 -1, i32 %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %retval.0.i)
  %cmp1.i.i30 = icmp ugt i32 %retval.0.i, 4096
  br i1 %cmp1.i.i30, label %if.then3.i.i, label %if.then.i.i.i, !prof !74

if.then3.i.i:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 214, i32 noundef 9, ptr noundef nonnull @.str.15, i32 noundef 4096, i32 noundef %retval.0.i) #10
  br label %out

if.then.i.i.i:                                    ; preds = %if.else
  tail call void @__check_object_size(ptr noundef nonnull %call7.i, i32 noundef %retval.0.i, i1 noundef zeroext true) #10
  tail call void @__might_fault(ptr noundef nonnull @.str.16, i32 noundef 174) #10
  %call.i.i33 = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i33, label %if.then.i.i.i.copy_to_user.exit41_crit_edge, label %if.end.i.i36

if.then.i.i.i.copy_to_user.exit41_crit_edge:      ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit41

if.end.i.i36:                                     ; preds = %if.then.i.i.i
  %6 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %retval.0.i, i32 -1226833920) #15, !srcloc !73
  %asmresult.i.i34 = extractvalue { i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i34)
  %cmp.i6.i35 = icmp eq i32 %asmresult.i.i34, 0
  br i1 %cmp.i6.i35, label %if.then2.i.i39, label %if.end.i.i36.copy_to_user.exit41_crit_edge

if.end.i.i36.copy_to_user.exit41_crit_edge:       ; preds = %if.end.i.i36
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit41

if.then2.i.i39:                                   ; preds = %if.end.i.i36
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i37 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call7.i, i32 noundef %retval.0.i) #10
  %call.i12.i.i38 = tail call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef nonnull %call7.i, i32 noundef %retval.0.i) #10
  br label %copy_to_user.exit41

copy_to_user.exit41:                              ; preds = %if.then2.i.i39, %if.end.i.i36.copy_to_user.exit41_crit_edge, %if.then.i.i.i.copy_to_user.exit41_crit_edge
  %n.addr.0.i40 = phi i32 [ %5, %if.then.i.i.i.copy_to_user.exit41_crit_edge ], [ %call.i12.i.i38, %if.then2.i.i39 ], [ %5, %if.end.i.i36.copy_to_user.exit41_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i40)
  %tobool11.not = icmp eq i32 %n.addr.0.i40, 0
  %spec.select = select i1 %tobool11.not, i32 0, i32 -14
  br label %out

out:                                              ; preds = %copy_to_user.exit41, %if.then3.i.i, %if.end8.out_crit_edge, %copy_to_user.exit.out_crit_edge, %if.end.i.i.out_crit_edge, %if.end8.i.i.out_crit_edge, %for.cond.preheader.out_crit_edge
  %err.1 = phi i32 [ 0, %for.cond.preheader.out_crit_edge ], [ -14, %if.then3.i.i ], [ %spec.select, %copy_to_user.exit41 ], [ -14, %copy_to_user.exit.out_crit_edge ], [ 0, %if.end8.out_crit_edge ], [ -14, %if.end8.i.i.out_crit_edge ], [ -14, %if.end.i.i.out_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx4_init_kernel_cqes(ptr nocapture noundef readonly %buf, i32 noundef %entries, i32 noundef %cqe_size) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %nbufs = getelementptr inbounds %struct.mlx4_buf, ptr %buf, i32 0, i32 2
  %0 = ptrtoint ptr %nbufs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nbufs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %npages = getelementptr inbounds %struct.mlx4_buf, ptr %buf, i32 0, i32 3
  %2 = ptrtoint ptr %npages to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %npages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp210 = icmp sgt i32 %3, 0
  br i1 %cmp210, label %for.body.lr.ph, label %for.cond.preheader.if.end_crit_edge

for.cond.preheader.if.end_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %page_list = getelementptr inbounds %struct.mlx4_buf, ptr %buf, i32 0, i32 1
  %page_shift = getelementptr inbounds %struct.mlx4_buf, ptr %buf, i32 0, i32 4
  br label %for.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buf, align 4
  %mul = mul i32 %cqe_size, %entries
  %6 = call ptr @memset(ptr %5, i32 204, i32 %mul)
  br label %if.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.011 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %7 = ptrtoint ptr %page_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %page_list, align 4
  %arrayidx = getelementptr %struct.mlx4_buf_list, ptr %8, i32 %i.011
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %11 = ptrtoint ptr %page_shift to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %page_shift, align 4
  %shl = shl nuw i32 1, %12
  %13 = call ptr @memset(ptr %10, i32 204, i32 %shl)
  %inc = add nuw nsw i32 %i.011, 1
  %14 = ptrtoint ptr %npages to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %npages, align 4
  %cmp2 = icmp slt i32 %inc, %15
  br i1 %cmp2, label %for.body.for.body_crit_edge, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.end:                                           ; preds = %for.body.if.end_crit_edge, %if.then, %for.cond.preheader.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx4_add_cq_to_tasklet(ptr noundef %cq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tasklet_ctx1 = getelementptr inbounds %struct.mlx4_cq, ptr %cq, i32 0, i32 12
  %priv = getelementptr inbounds %struct.mlx4_cq, ptr %cq, i32 0, i32 12, i32 2
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %lock = getelementptr inbounds %struct.mlx4_eq_tasklet, ptr %1, i32 0, i32 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %2 = ptrtoint ptr %tasklet_ctx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %tasklet_ctx1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !75
  %cmp.i.not.i = icmp eq ptr %3, %tasklet_ctx1
  br i1 %cmp.i.not.i, label %list_empty_careful.exit, label %entry.if.end16_crit_edge

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

list_empty_careful.exit:                          ; preds = %entry
  %prev.i = getelementptr inbounds %struct.mlx4_cq, ptr %cq, i32 0, i32 12, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i, align 4
  %cmp.i.not = icmp eq ptr %5, %tasklet_ctx1
  br i1 %cmp.i.not, label %if.then, label %list_empty_careful.exit.if.end16_crit_edge

list_empty_careful.exit.if.end16_crit_edge:       ; preds = %list_empty_careful.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then:                                          ; preds = %list_empty_careful.exit
  %refcount = getelementptr inbounds %struct.mlx4_cq, ptr %cq, i32 0, i32 10
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #10
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #10, !srcloc !76
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.then.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !74

if.then.if.end15.sink.split.i.i.i_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.then
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %7 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %.not.i.i.i = icmp sgt i32 %7, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !67

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i) #10
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %1, align 4
  %cmp.i25.not = icmp eq ptr %9, %1
  %prev.i26 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i26 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i26, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %tasklet_ctx1, ptr noundef %11, ptr noundef %1) #10
  br i1 %call.i.i, label %if.end.i.i, label %refcount_inc.exit.list_add_tail.exit_crit_edge

refcount_inc.exit.list_add_tail.exit_crit_edge:   ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %prev.i26 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %tasklet_ctx1, ptr %prev.i26, align 4
  %13 = ptrtoint ptr %tasklet_ctx1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %1, ptr %tasklet_ctx1, align 4
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %tasklet_ctx1, ptr %11, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %refcount_inc.exit.list_add_tail.exit_crit_edge
  br i1 %cmp.i25.not, label %if.then15, label %list_add_tail.exit.if.end16_crit_edge

list_add_tail.exit.if.end16_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then15:                                        ; preds = %list_add_tail.exit
  %state.i = getelementptr inbounds %struct.mlx4_eq_tasklet, ptr %1, i32 0, i32 2, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then15.if.end16_crit_edge

if.then15.if.end16_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then.i:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  %task = getelementptr inbounds %struct.mlx4_eq_tasklet, ptr %1, i32 0, i32 2
  tail call void @__tasklet_schedule(ptr noundef %task) #10
  br label %if.end16

if.end16:                                         ; preds = %if.then.i, %if.then15.if.end16_crit_edge, %list_add_tail.exit.if.end16_crit_edge, %list_empty_careful.exit.if.end16_crit_edge, %entry.if.end16_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radix_tree_delete(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx4_cq_free_icm(ptr noundef %dev, i32 noundef %cqn) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr inbounds %struct.mlx4_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %1, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %conv.i = zext i32 %cqn to i64
  %call.i = tail call i32 @__mlx4_cmd(ptr noundef %dev, i64 noundef %conv.i, ptr noundef null, i32 noundef 0, i32 noundef 1, i8 noundef zeroext 1, i16 noundef zeroext 3841, i32 noundef 60000, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.then.if.end5_crit_edge, label %do.end

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dev4 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev4, ptr noundef nonnull @.str.18, i32 noundef %cqn) #13
  br label %if.end5

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %cq_table1.i = getelementptr inbounds %struct.mlx4_priv, ptr %dev, i32 0, i32 15
  %cmpt_table.i = getelementptr inbounds %struct.mlx4_priv, ptr %dev, i32 0, i32 15, i32 4
  tail call void @mlx4_table_put(ptr noundef %dev, ptr noundef %cmpt_table.i, i32 noundef %cqn) #10
  %table.i = getelementptr inbounds %struct.mlx4_priv, ptr %dev, i32 0, i32 15, i32 3
  tail call void @mlx4_table_put(ptr noundef %dev, ptr noundef %table.i, i32 noundef %cqn) #10
  tail call void @mlx4_bitmap_free(ptr noundef %cq_table1.i, i32 noundef %cqn, i32 noundef 0) #10
  br label %if.end5

if.end5:                                          ; preds = %if.else, %do.end, %if.then.if.end5_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx4_cq_free(ptr noundef %dev, ptr noundef %cq) #0 align 64 {
entry:
  %out_param.addr.i.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cqn = getelementptr inbounds %struct.mlx4_cq, ptr %cq, i32 0, i32 8
  %0 = ptrtoint ptr %cqn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cqn, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %out_param.addr.i.i) #10
  %2 = ptrtoint ptr %out_param.addr.i.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %out_param.addr.i.i, align 8
  %call.i.i = call i32 @__mlx4_cmd(ptr noundef %dev, i64 noundef 0, ptr noundef nonnull %out_param.addr.i.i, i32 noundef 0, i32 noundef %1, i8 noundef zeroext 1, i16 noundef zeroext 23, i32 noundef 60000, i32 noundef 0) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %out_param.addr.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %dev3 = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  %7 = ptrtoint ptr %cqn to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cqn, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev3, ptr noundef nonnull @.str.7, i32 noundef %call.i.i, i32 noundef %8) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %lock = getelementptr inbounds %struct.mlx4_priv, ptr %dev, i32 0, i32 15, i32 1
  call void @_raw_spin_lock(ptr noundef %lock) #10
  %tree = getelementptr inbounds %struct.mlx4_priv, ptr %dev, i32 0, i32 15, i32 2
  %9 = ptrtoint ptr %cqn to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cqn, align 4
  %call6 = call ptr @radix_tree_delete(ptr noundef %tree, i32 noundef %10) #10
  call void @_raw_spin_unlock(ptr noundef %lock) #10
  %eq = getelementptr inbounds %struct.mlx4_priv, ptr %dev, i32 0, i32 16, i32 5
  %11 = ptrtoint ptr %eq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %eq, align 4
  %vector = getelementptr inbounds %struct.mlx4_cq, ptr %cq, i32 0, i32 9
  %13 = ptrtoint ptr %vector to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %vector, align 4
  %15 = xor i32 %14, -1
  %.lobit.not = lshr i32 %15, 31
  %add = add i32 %.lobit.not, %14
  %irq = getelementptr %struct.mlx4_eq, ptr %12, i32 %add, i32 4
  %16 = ptrtoint ptr %irq to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %irq, align 4
  %conv = zext i16 %17 to i32
  call void @synchronize_irq(i32 noundef %conv) #10
  %18 = ptrtoint ptr %eq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %eq, align 4
  %20 = ptrtoint ptr %vector to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %vector, align 4
  %22 = xor i32 %21, -1
  %.lobit.not63 = lshr i32 %22, 31
  %add20 = add i32 %.lobit.not63, %21
  %irq22 = getelementptr %struct.mlx4_eq, ptr %19, i32 %add20, i32 4
  %23 = ptrtoint ptr %irq22 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %irq22, align 4
  %irq27 = getelementptr inbounds %struct.mlx4_eq, ptr %19, i32 0, i32 4
  %25 = ptrtoint ptr %irq27 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %irq27, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %24, i16 %26)
  %cmp29.not = icmp eq i16 %24, %26
  br i1 %cmp29.not, label %if.end.if.end37_crit_edge, label %if.then31

if.end.if.end37_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

if.then31:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %conv28 = zext i16 %26 to i32
  call void @synchronize_irq(i32 noundef %conv28) #10
  br label %if.end37

if.end37:                                         ; preds = %if.then31, %if.end.if.end37_crit_edge
  %refcount = getelementptr inbounds %struct.mlx4_cq, ptr %cq, i32 0, i32 10
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !65
  call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #10
  %27 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #10, !srcloc !66
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then39, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %if.end37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end40_crit_edge, label %if.then10.i.i.i, !prof !67

if.end5.i.i.i.if.end40_crit_edge:                 ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #10
  br label %if.end40

if.then39:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !68
  %free = getelementptr inbounds %struct.mlx4_cq, ptr %cq, i32 0, i32 11
  call void @complete(ptr noundef %free) #10
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %if.then10.i.i.i, %if.end5.i.i.i.if.end40_crit_edge
  %free41 = getelementptr inbounds %struct.mlx4_cq, ptr %cq, i32 0, i32 11
  call void @wait_for_completion(ptr noundef %free41) #10
  %28 = ptrtoint ptr %cqn to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cqn, align 4
  call fastcc void @mlx4_cq_free_icm(ptr noundef %dev, i32 noundef %29)
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx4_init_cq_table(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.mlx4_priv, ptr %dev, i32 0, i32 15, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @mlx4_init_cq_table.__key, i16 noundef signext 3) #10
  %tree = getelementptr inbounds %struct.mlx4_priv, ptr %dev, i32 0, i32 15, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %tree, ptr noundef nonnull @.str.20, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #10
  %xa_flags.i = getelementptr inbounds %struct.mlx4_priv, ptr %dev, i32 0, i32 15, i32 2, i32 1
  %0 = ptrtoint ptr %xa_flags.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2592, ptr %xa_flags.i, align 4
  %xa_head.i = getelementptr inbounds %struct.mlx4_priv, ptr %dev, i32 0, i32 15, i32 2, i32 2
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %cq_table1 = getelementptr inbounds %struct.mlx4_priv, ptr %dev, i32 0, i32 15
  %num_cqs = getelementptr inbounds %struct.mlx4_dev, ptr %dev, i32 0, i32 3, i32 33
  %4 = ptrtoint ptr %num_cqs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_cqs, align 4
  %sub = add i32 %5, -1
  %reserved_cqs = getelementptr inbounds %struct.mlx4_dev, ptr %dev, i32 0, i32 3, i32 35
  %6 = ptrtoint ptr %reserved_cqs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reserved_cqs, align 4
  %call7 = tail call i32 @mlx4_bitmap_init(ptr noundef %cq_table1, i32 noundef %5, i32 noundef %sub, i32 noundef %7, i32 noundef 0) #10
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
define dso_local void @mlx4_cleanup_cq_table(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %cq_table = getelementptr inbounds %struct.mlx4_priv, ptr %dev, i32 0, i32 15
  tail call void @mlx4_bitmap_cleanup(ptr noundef %cq_table) #10
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_bitmap_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mlx4_cmd(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !17, !19, !21, !22, !23, !24, !25, !27, !29, !30, !32, !33, !34, !36, !37, !39, !40, !42, !44, !46, !47, !49, !50, !51, !52, !54}
!llvm.named.register.sp = !{!55}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx4/cq.c", i32 114, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mlx4_cq_completion._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @mlx4_cq_completion._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mellanox/mlx4/cq.c", i32 136, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @mlx4_cq_event._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @mlx4_cq_event._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @__ksymtab_mlx4_cq_modify, !14, !"__ksymtab_mlx4_cq_modify", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/mellanox/mlx4/cq.c", i32 189, i32 1}
!15 = !{ptr @__ksymtab_mlx4_cq_resize, !16, !"__ksymtab_mlx4_cq_resize", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/mellanox/mlx4/cq.c", i32 215, i32 1}
!17 = !{ptr @__ksymtab_mlx4_cq_alloc, !18, !"__ksymtab_mlx4_cq_alloc", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/mellanox/mlx4/cq.c", i32 434, i32 1}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/mellanox/mlx4/cq.c", i32 444, i32 3}
!21 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @mlx4_cq_free._entry, !20, !"_entry", i1 false, i1 false}
!24 = !{ptr @mlx4_cq_free._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @__ksymtab_mlx4_cq_free, !26, !"__ksymtab_mlx4_cq_free", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/mellanox/mlx4/cq.c", i32 461, i32 1}
!27 = !{ptr @mlx4_init_cq_table.__key, !28, !"__key", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/mellanox/mlx4/cq.c", i32 467, i32 2}
!29 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!30 = distinct !{null, !31, !"__warned", i1 false, i1 false}
!31 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!32 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!34 = distinct !{null, !35, !"__warned", i1 false, i1 false}
!35 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!36 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!37 = distinct !{null, !38, !"__already_done", i1 false, i1 false}
!38 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!39 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!44 = !{ptr @init_completion.__key, !45, !"__key", i1 false, i1 false}
!45 = !{!"../include/linux/completion.h", i32 87, i32 2}
!46 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/mellanox/mlx4/cq.c", i32 285, i32 4}
!49 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @mlx4_cq_free_icm._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @mlx4_cq_free_icm._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @xa_init_flags.__key, !53, !"__key", i1 false, i1 false}
!53 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!54 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!55 = !{!"sp"}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!65 = !{i64 2148576970}
!66 = !{i64 2148491410, i64 2148491442, i64 2148491471, i64 2148491505, i64 2148491536, i64 2148491559}
!67 = !{!"branch_weights", i32 2000, i32 1}
!68 = !{i64 2149581917}
!69 = !{i64 2149273930}
!70 = !{i64 2149274196}
!71 = !{i32 0, i32 33}
!72 = !{!"auto-init"}
!73 = !{i64 2153476705, i64 2153476730}
!74 = !{!"branch_weights", i32 1, i32 2000}
!75 = !{i64 2148264630}
!76 = !{i64 2148488945, i64 2148488977, i64 2148489006, i64 2148489040, i64 2148489071, i64 2148489094}
