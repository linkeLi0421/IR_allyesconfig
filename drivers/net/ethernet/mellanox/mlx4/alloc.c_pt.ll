; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx4/alloc.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx4/alloc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mlx4_buf_alloc\22, \22a\22\09"
module asm "\09.weak\09__crc_mlx4_buf_alloc\09\09\09\09"
module asm "\09.long\09__crc_mlx4_buf_alloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mlx4_buf_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22mlx4_buf_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_mlx4_buf_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mlx4_buf_free\22, \22a\22\09"
module asm "\09.weak\09__crc_mlx4_buf_free\09\09\09\09"
module asm "\09.long\09__crc_mlx4_buf_free\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mlx4_buf_free:\09\09\09\09\09"
module asm "\09.asciz \09\22mlx4_buf_free\22\09\09\09\09\09"
module asm "__kstrtabns_mlx4_buf_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mlx4_db_alloc\22, \22a\22\09"
module asm "\09.weak\09__crc_mlx4_db_alloc\09\09\09\09"
module asm "\09.long\09__crc_mlx4_db_alloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mlx4_db_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22mlx4_db_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_mlx4_db_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mlx4_db_free\22, \22a\22\09"
module asm "\09.weak\09__crc_mlx4_db_free\09\09\09\09"
module asm "\09.long\09__crc_mlx4_db_free\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mlx4_db_free:\09\09\09\09\09"
module asm "\09.asciz \09\22mlx4_db_free\22\09\09\09\09\09"
module asm "__kstrtabns_mlx4_db_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mlx4_alloc_hwq_res\22, \22a\22\09"
module asm "\09.weak\09__crc_mlx4_alloc_hwq_res\09\09\09\09"
module asm "\09.long\09__crc_mlx4_alloc_hwq_res\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mlx4_alloc_hwq_res:\09\09\09\09\09"
module asm "\09.asciz \09\22mlx4_alloc_hwq_res\22\09\09\09\09\09"
module asm "__kstrtabns_mlx4_alloc_hwq_res:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mlx4_free_hwq_res\22, \22a\22\09"
module asm "\09.weak\09__crc_mlx4_free_hwq_res\09\09\09\09"
module asm "\09.long\09__crc_mlx4_free_hwq_res\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mlx4_free_hwq_res:\09\09\09\09\09"
module asm "\09.asciz \09\22mlx4_free_hwq_res\22\09\09\09\09\09"
module asm "__kstrtabns_mlx4_free_hwq_res:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mlx4_bitmap = type { i32, i32, i32, i32, i32, i32, i32, %struct.spinlock, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.mlx4_zone_allocator = type { %struct.list_head, %struct.list_head, i32, i32, %struct.spinlock, i32 }
%struct.mlx4_zone_entry = type { %struct.list_head, %struct.list_head, i32, ptr, ptr, i32, i32, i32, i32 }
%struct.mlx4_buf = type { %struct.mlx4_buf_list, ptr, i32, i32, i32 }
%struct.mlx4_buf_list = type { ptr, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.99, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.99 = type { ptr }
%struct.mlx4_priv = type { %struct.mlx4_dev, %struct.list_head, %struct.list_head, %struct.spinlock, i32, i32, %struct.list_head, %struct.mutex, %struct.mlx4_fw, %struct.mlx4_cmd, %struct.mlx4_mfunc, %struct.mlx4_bitmap, %struct.mlx4_bitmap, %struct.mlx4_uar_table, %struct.mlx4_mr_table, %struct.mlx4_cq_table, %struct.mlx4_eq_table, %struct.mlx4_srq_table, %struct.mlx4_qp_table, %struct.mlx4_mcg_table, %struct.mlx4_bitmap, [2 x i32], %struct.mlx4_catas_err, ptr, %struct.mlx4_uar, ptr, [3 x %struct.mlx4_port_info], %struct.mlx4_sense, %struct.mutex, %struct.mlx4_msix_ctl, ptr, %struct.list_head, %struct.mutex, ptr, ptr, i32, i32, [128 x [2 x [128 x i8]]], %struct.mlx4_port_map, %struct.mutex, [128 x i64], %struct.atomic_t, %struct.work_struct }
%struct.mlx4_dev = type { ptr, i32, i32, %struct.mlx4_caps, %struct.mlx4_phys_caps, %struct.mlx4_quotas, %struct.xarray, i8, i8, [64 x i8], i32, i32, [3 x i64], [3 x i64], ptr, i8 }
%struct.mlx4_caps = type { i64, i32, i32, [3 x i32], [3 x i32], [3 x i32], [3 x i64], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i64], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i16, [3 x i8], i32, i32, [5 x i32], i32, [5 x i32], i32, i32, [3 x i32], [3 x i8], [3 x i8], [3 x i8], [3 x i32], [3 x i32], i32, [3 x i8], i16, i32, i32, i8, i32, i32, i16, [3 x i64], i32, [3 x i8], [3 x i8], i8, i32, i32, i32, [3 x i8], %struct.mlx4_rate_limit_caps, i32, i8 }
%struct.mlx4_rate_limit_caps = type { i16, i8, i16, i8, i16 }
%struct.mlx4_phys_caps = type { [3 x i32], [3 x i32], i32, i32, i32, i32 }
%struct.mlx4_quotas = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mlx4_fw = type { i64, i64, i64, i64, ptr, ptr, i32, i16, i8, i8, i8, i8 }
%struct.mlx4_cmd = type { ptr, ptr, %struct.mutex, %struct.semaphore, %struct.semaphore, %struct.rw_semaphore, i32, %struct.spinlock, i32, ptr, i16, i8, i8, i8, i8 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mlx4_mfunc = type { ptr, ptr, i32, %struct.mlx4_mfunc_master_ctx }
%struct.mlx4_mfunc_master_ctx = type { ptr, ptr, ptr, [3 x %struct.mlx4_master_qp0_state], [3 x i32], [3 x i16], [3 x i16], i8, i8, [3 x i32], %struct.mlx4_resource_tracker, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.spinlock, [4 x i32], %struct.mlx4_eqe, %struct.mlx4_slave_event_eq, [128 x %struct.mutex], [3 x %struct.mlx4_qos_manager], i32 }
%struct.mlx4_master_qp0_state = type { i32, i32, i32 }
%struct.mlx4_resource_tracker = type { %struct.spinlock, [12 x %struct.rb_root], ptr, [12 x %struct.resource_allocator] }
%struct.rb_root = type { ptr }
%struct.resource_allocator = type { %struct.spinlock, %union.anon.124, %union.anon.125, ptr, ptr, ptr }
%union.anon.124 = type { [2 x i32] }
%union.anon.125 = type { [2 x i32] }
%struct.mlx4_eqe = type { i8, i8, i8, i8, %union.anon.126, i8, [2 x i8], i8 }
%union.anon.126 = type { [6 x i32] }
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
%struct.mlx4_catas_err = type { ptr, %struct.timer_list, %struct.list_head }
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
%struct.mlx4_sense = type { ptr, [3 x i8], [3 x i8], %struct.delayed_work }
%struct.mlx4_msix_ctl = type { [4 x i32], %struct.mutex }
%struct.mlx4_port_map = type { i8, i8 }
%struct.mlx4_db_pgdir = type { %struct.list_head, [32 x i32], [16 x i32], [2 x ptr], ptr, i32 }
%struct.mlx4_db = type { ptr, %union.anon.123, i32, i32, i32 }
%union.anon.123 = type { ptr }
%struct.mlx4_hwq_resources = type { %struct.mlx4_db, %struct.mlx4_mtt, %struct.mlx4_buf }
%struct.mlx4_mtt = type { i32, i32, i32 }

@mlx4_bitmap_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&bitmap->lock\00", [18 x i8] zeroinitializer }, align 32
@mlx4_zone_allocator_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&zones->lock\00", [19 x i8] zeroinitializer }, align 32
@__kstrtab_mlx4_buf_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_mlx4_buf_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_mlx4_buf_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mlx4_buf_alloc to i32), ptr @__kstrtab_mlx4_buf_alloc, ptr @__kstrtabns_mlx4_buf_alloc }, section "___ksymtab_gpl+mlx4_buf_alloc", align 4
@__kstrtab_mlx4_buf_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_mlx4_buf_free = external dso_local constant [0 x i8], align 1
@__ksymtab_mlx4_buf_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mlx4_buf_free to i32), ptr @__kstrtab_mlx4_buf_free, ptr @__kstrtabns_mlx4_buf_free }, section "___ksymtab_gpl+mlx4_buf_free", align 4
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/ethernet/mellanox/mlx4/alloc.c\00", [53 x i8] zeroinitializer }, align 32
@__kstrtab_mlx4_db_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_mlx4_db_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_mlx4_db_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mlx4_db_alloc to i32), ptr @__kstrtab_mlx4_db_alloc, ptr @__kstrtabns_mlx4_db_alloc }, section "___ksymtab_gpl+mlx4_db_alloc", align 4
@__kstrtab_mlx4_db_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_mlx4_db_free = external dso_local constant [0 x i8], align 1
@__ksymtab_mlx4_db_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mlx4_db_free to i32), ptr @__kstrtab_mlx4_db_free, ptr @__kstrtabns_mlx4_db_free }, section "___ksymtab_gpl+mlx4_db_free", align 4
@__kstrtab_mlx4_alloc_hwq_res = external dso_local constant [0 x i8], align 1
@__kstrtabns_mlx4_alloc_hwq_res = external dso_local constant [0 x i8], align 1
@__ksymtab_mlx4_alloc_hwq_res = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mlx4_alloc_hwq_res to i32), ptr @__kstrtab_mlx4_alloc_hwq_res, ptr @__kstrtabns_mlx4_alloc_hwq_res }, section "___ksymtab_gpl+mlx4_alloc_hwq_res", align 4
@__kstrtab_mlx4_free_hwq_res = external dso_local constant [0 x i8], align 1
@__kstrtabns_mlx4_free_hwq_res = external dso_local constant [0 x i8], align 1
@__ksymtab_mlx4_free_hwq_res = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mlx4_free_hwq_res to i32), ptr @__kstrtab_mlx4_free_hwq_res, ptr @__kstrtabns_mlx4_free_hwq_res }, section "___ksymtab_gpl+mlx4_free_hwq_res", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 187, i32 2 }
@___asan_gen_.9 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 233, i32 2 }
@___asan_gen_.15 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.16 = private constant [46 x i8] c"../drivers/net/ethernet/mellanox/mlx4/alloc.c\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 736, i32 2 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @__ksymtab_mlx4_alloc_hwq_res, ptr @__ksymtab_mlx4_buf_alloc, ptr @__ksymtab_mlx4_buf_free, ptr @__ksymtab_mlx4_db_alloc, ptr @__ksymtab_mlx4_db_free, ptr @__ksymtab_mlx4_free_hwq_res, ptr @mlx4_bitmap_init.__key, ptr @.str, ptr @mlx4_zone_allocator_create.__key, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_bitmap_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_zone_allocator_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx4_bitmap_alloc(ptr noundef %bitmap) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.mlx4_bitmap, ptr %bitmap, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %lock) #8
  %table = getelementptr inbounds %struct.mlx4_bitmap, ptr %bitmap, i32 0, i32 8
  %0 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %table, align 4
  %max = getelementptr inbounds %struct.mlx4_bitmap, ptr %bitmap, i32 0, i32 2
  %2 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max, align 4
  %4 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bitmap, align 4
  %call = tail call i32 @_find_next_zero_bit_be(ptr noundef %1, i32 noundef %3, i32 noundef %5) #8
  %6 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %7)
  %cmp.not = icmp ult i32 %call, %7
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %top = getelementptr inbounds %struct.mlx4_bitmap, ptr %bitmap, i32 0, i32 1
  %8 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %top, align 4
  %add = add i32 %9, %7
  %reserved_top = getelementptr inbounds %struct.mlx4_bitmap, ptr %bitmap, i32 0, i32 3
  %10 = ptrtoint ptr %reserved_top to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %reserved_top, align 4
  %add3 = add i32 %add, %11
  %mask = getelementptr inbounds %struct.mlx4_bitmap, ptr %bitmap, i32 0, i32 4
  %12 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mask, align 4
  %and = and i32 %add3, %13
  store i32 %and, ptr %top, align 4
  %14 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %table, align 4
  %call7 = tail call i32 @_find_first_zero_bit_be(ptr noundef %15, i32 noundef %7) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %obj.0 = phi i32 [ %call7, %if.then ], [ %call, %entry.if.end_crit_edge ]
  %16 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %obj.0, i32 %17)
  %cmp9 = icmp ult i32 %obj.0, %17
  br i1 %cmp9, label %if.end21, label %if.end.if.end24_crit_edge

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.end21:                                         ; preds = %if.end
  %18 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %table, align 4
  tail call void @_set_bit(i32 noundef %obj.0, ptr noundef %19) #8
  %add12 = add nuw i32 %obj.0, 1
  %20 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add12, i32 %21)
  %cmp16 = icmp eq i32 %add12, %21
  %spec.store.select = select i1 %cmp16, i32 0, i32 %add12
  %22 = ptrtoint ptr %bitmap to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %spec.store.select, ptr %bitmap, align 4
  %top20 = getelementptr inbounds %struct.mlx4_bitmap, ptr %bitmap, i32 0, i32 1
  %23 = ptrtoint ptr %top20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %top20, align 4
  %or = or i32 %24, %obj.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %or)
  %cmp22.not = icmp eq i32 %or, -1
  br i1 %cmp22.not, label %if.end21.if.end24_crit_edge, label %if.then23

if.end21.if.end24_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %avail = getelementptr inbounds %struct.mlx4_bitmap, ptr %bitmap, i32 0, i32 5
  %25 = ptrtoint ptr %avail to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %avail, align 4
  %dec = add i32 %26, -1
  store i32 %dec, ptr %avail, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end21.if.end24_crit_edge, %if.end.if.end24_crit_edge
  %obj.154 = phi i32 [ %or, %if.then23 ], [ -1, %if.end21.if.end24_crit_edge ], [ -1, %if.end.if.end24_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #8
  ret i32 %obj.154
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx4_bitmap_free(ptr noundef %bitmap, i32 noundef %obj, i32 noundef %use_rr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %max.i = getelementptr inbounds %struct.mlx4_bitmap, ptr %bitmap, i32 0, i32 2
  %0 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max.i, align 4
  %reserved_top.i = getelementptr inbounds %struct.mlx4_bitmap, ptr %bitmap, i32 0, i32 3
  %2 = ptrtoint ptr %reserved_top.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reserved_top.i, align 4
  %add.i = add i32 %1, -1
  %sub.i = add i32 %add.i, %3
  %and.i = and i32 %sub.i, %obj
  %lock.i = getelementptr inbounds %struct.mlx4_bitmap, ptr %bitmap, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %use_rr)
  %tobool.not.i = icmp eq i32 %use_rr, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.mlx4_bitmap_free_range.exit_crit_edge

entry.mlx4_bitmap_free_range.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %mlx4_bitmap_free_range.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bitmap, align 4
  %6 = tail call i32 @llvm.umin.i32(i32 %5, i32 %and.i) #8
  %7 = ptrtoint ptr %bitmap to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %bitmap, align 4
  %top.i = getelementptr inbounds %struct.mlx4_bitmap, ptr %bitmap, i32 0, i32 1
  %8 = ptrtoint ptr %top.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %top.i, align 4
  %10 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max.i, align 4
  %add3.i = add i32 %11, %9
  %12 = ptrtoint ptr %reserved_top.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reserved_top.i, align 4
  %add5.i = add i32 %add3.i, %13
  %mask.i = getelementptr inbounds %struct.mlx4_bitmap, ptr %bitmap, i32 0, i32 4
  %14 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mask.i, align 4
  %and6.i = and i32 %add5.i, %15
  store i32 %and6.i, ptr %top.i, align 4
  br label %mlx4_bitmap_free_range.exit

mlx4_bitmap_free_range.exit:                      ; preds = %if.then.i, %entry.mlx4_bitmap_free_range.exit_crit_edge
  %table.i = getelementptr inbounds %struct.mlx4_bitmap, ptr %bitmap, i32 0, i32 8
  %16 = ptrtoint ptr %table.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %table.i, align 4
  %rem.i.i.i = and i32 %and.i, 31
  %shl.i.i.i = shl nuw i32 1, %rem.i.i.i
  %div2.i.i.i = lshr i32 %and.i, 5
  %add.ptr.i.i.i = getelementptr i32, ptr %17, i32 %div2.i.i.i
  %neg.i.i.i = xor i32 %shl.i.i.i, -1
  %18 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr.i.i.i, align 4
  %and.i.i.i = and i32 %19, %neg.i.i.i
  store i32 %and.i.i.i, ptr %add.ptr.i.i.i, align 4
  %avail.i = getelementptr inbounds %struct.mlx4_bitmap, ptr %bitmap, i32 0, i32 5
  %20 = ptrtoint ptr %avail.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %avail.i, align 4
  %add8.i = add i32 %21, 1
  store i32 %add8.i, ptr %avail.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx4_bitmap_free_range(ptr noundef %bitmap, i32 noundef %obj, i32 noundef %cnt, i32 noundef %use_rr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %max = getelementptr inbounds %struct.mlx4_bitmap, ptr %bitmap, i32 0, i32 2
  %0 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max, align 4
  %reserved_top = getelementptr inbounds %struct.mlx4_bitmap, ptr %bitmap, i32 0, i32 3
  %2 = ptrtoint ptr %reserved_top to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reserved_top, align 4
  %add = add i32 %1, -1
  %sub = add i32 %add, %3
  %and = and i32 %sub, %obj
  %lock = getelementptr inbounds %struct.mlx4_bitmap, ptr %bitmap, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %use_rr)
  %tobool.not = icmp eq i32 %use_rr, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bitmap, align 4
  %6 = tail call i32 @llvm.umin.i32(i32 %5, i32 %and)
  %7 = ptrtoint ptr %bitmap to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %bitmap, align 4
  %top = getelementptr inbounds %struct.mlx4_bitmap, ptr %bitmap, i32 0, i32 1
  %8 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %top, align 4
  %10 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max, align 4
  %add3 = add i32 %11, %9
  %12 = ptrtoint ptr %reserved_top to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reserved_top, align 4
  %add5 = add i32 %add3, %13
  %mask = getelementptr inbounds %struct.mlx4_bitmap, ptr %bitmap, i32 0, i32 4
  %14 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mask, align 4
  %and6 = and i32 %add5, %15
  store i32 %and6, ptr %top, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %table = getelementptr inbounds %struct.mlx4_bitmap, ptr %bitmap, i32 0, i32 8
  %16 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %table, align 4
  tail call void @__bitmap_clear(ptr noundef %17, i32 noundef %and, i32 noundef %cnt) #8
  %avail = getelementptr inbounds %struct.mlx4_bitmap, ptr %bitmap, i32 0, i32 5
  %18 = ptrtoint ptr %avail to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %avail, align 4
  %add8 = add i32 %19, %cnt
  store i32 %add8, ptr %avail, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx4_bitmap_alloc_range(ptr noundef %bitmap, i32 noundef %cnt, i32 noundef %align, i32 noundef %skip_mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cnt)
  %cmp = icmp eq i32 %cnt, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %align)
  %cmp1 = icmp eq i32 %align, 1
  %or.cond = and i1 %cmp, %cmp1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %skip_mask)
  %tobool.not = icmp eq i32 %skip_mask, 0
  %or.cond76 = and i1 %or.cond, %tobool.not
  br i1 %or.cond76, label %if.then, label %if.end, !prof !29

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @mlx4_bitmap_alloc(ptr noundef %bitmap)
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.mlx4_bitmap, ptr %bitmap, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %lock) #8
  %table = getelementptr inbounds %struct.mlx4_bitmap, ptr %bitmap, i32 0, i32 8
  %0 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %table, align 4
  %2 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bitmap, align 4
  %max = getelementptr inbounds %struct.mlx4_bitmap, ptr %bitmap, i32 0, i32 2
  %4 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max, align 4
  %call5 = tail call fastcc i32 @find_aligned_range(ptr noundef %1, i32 noundef %3, i32 noundef %5, i32 noundef %cnt, i32 noundef %align, i32 noundef %skip_mask)
  %6 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call5, i32 %7)
  %cmp7.not = icmp ult i32 %call5, %7
  br i1 %cmp7.not, label %if.end.if.end15_crit_edge, label %if.then8

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %top = getelementptr inbounds %struct.mlx4_bitmap, ptr %bitmap, i32 0, i32 1
  %8 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %top, align 4
  %add = add i32 %9, %7
  %reserved_top = getelementptr inbounds %struct.mlx4_bitmap, ptr %bitmap, i32 0, i32 3
  %10 = ptrtoint ptr %reserved_top to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %reserved_top, align 4
  %add10 = add i32 %add, %11
  %mask = getelementptr inbounds %struct.mlx4_bitmap, ptr %bitmap, i32 0, i32 4
  %12 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mask, align 4
  %and = and i32 %add10, %13
  store i32 %and, ptr %top, align 4
  %14 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %table, align 4
  %call14 = tail call fastcc i32 @find_aligned_range(ptr noundef %15, i32 noundef 0, i32 noundef %7, i32 noundef %cnt, i32 noundef %align, i32 noundef %skip_mask)
  br label %if.end15

if.end15:                                         ; preds = %if.then8, %if.end.if.end15_crit_edge
  %obj.0 = phi i32 [ %call14, %if.then8 ], [ %call5, %if.end.if.end15_crit_edge ]
  %16 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %obj.0, i32 %17)
  %cmp17 = icmp ult i32 %obj.0, %17
  br i1 %cmp17, label %if.then18, label %if.end15.if.end36_crit_edge

if.end15.if.end36_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then18:                                        ; preds = %if.end15
  %18 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %table, align 4
  tail call void @__bitmap_set(ptr noundef %19, i32 noundef %obj.0, i32 noundef %cnt) #8
  %20 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bitmap, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %obj.0, i32 %21)
  %cmp21 = icmp eq i32 %obj.0, %21
  br i1 %cmp21, label %if.then22, label %if.then18.if.end33_crit_edge

if.then18.if.end33_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.then22:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  %add23 = add i32 %obj.0, %cnt
  %22 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add23, i32 %23)
  %cmp27.not = icmp ult i32 %add23, %23
  %spec.store.select = select i1 %cmp27.not, i32 %add23, i32 0
  %24 = ptrtoint ptr %bitmap to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %spec.store.select, ptr %bitmap, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then22, %if.then18.if.end33_crit_edge
  %top32 = getelementptr inbounds %struct.mlx4_bitmap, ptr %bitmap, i32 0, i32 1
  %25 = ptrtoint ptr %top32 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %top32, align 4
  %or = or i32 %26, %obj.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %or)
  %cmp34.not = icmp eq i32 %or, -1
  br i1 %cmp34.not, label %if.end33.if.end36_crit_edge, label %if.then35

if.end33.if.end36_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then35:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  %avail = getelementptr inbounds %struct.mlx4_bitmap, ptr %bitmap, i32 0, i32 5
  %27 = ptrtoint ptr %avail to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %avail, align 4
  %sub = sub i32 %28, %cnt
  store i32 %sub, ptr %avail, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %if.end33.if.end36_crit_edge, %if.end15.if.end36_crit_edge
  %obj.179 = phi i32 [ %or, %if.then35 ], [ -1, %if.end33.if.end36_crit_edge ], [ -1, %if.end15.if.end36_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %obj.179, %if.end36 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @find_aligned_range(ptr noundef %bitmap, i32 noundef %start, i32 noundef %nbits, i32 noundef %len, i32 noundef %align, i32 noundef %skip_mask) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %align, -1
  %neg = sub i32 0, %align
  %add52 = add i32 %sub, %start
  %and53 = and i32 %add52, %neg
  call void @__sanitizer_cov_trace_cmp4(i32 %and53, i32 %nbits)
  %cmp5054 = icmp ult i32 %and53, %nbits
  br i1 %cmp5054, label %entry.land.rhs_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.backedge, %entry.land.rhs_crit_edge
  %start.addr.151 = phi i32 [ %start.addr.151.be, %land.rhs.backedge ], [ %and53, %entry.land.rhs_crit_edge ]
  %div3.i = lshr i32 %start.addr.151, 5
  %arrayidx.i = getelementptr i32, ptr %bitmap, i32 %div3.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %start.addr.151, 31
  %2 = shl nuw i32 1, %and.i
  %3 = and i32 %1, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %and2 = and i32 %start.addr.151, %skip_mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  %or.cond = select i1 %tobool.not, i1 %tobool3.not, i1 false
  br i1 %or.cond, label %if.end, label %while.body

while.body:                                       ; preds = %land.rhs
  %add4 = add i32 %start.addr.151, %align
  call void @__sanitizer_cov_trace_cmp4(i32 %add4, i32 %nbits)
  %cmp = icmp ult i32 %add4, %nbits
  br i1 %cmp, label %while.body.land.rhs.backedge_crit_edge, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body.land.rhs.backedge_crit_edge:           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.backedge

land.rhs.backedge:                                ; preds = %if.then16.land.rhs.backedge_crit_edge, %while.body.land.rhs.backedge_crit_edge
  %start.addr.151.be = phi i32 [ %add4, %while.body.land.rhs.backedge_crit_edge ], [ %and, %if.then16.land.rhs.backedge_crit_edge ]
  br label %land.rhs

if.end:                                           ; preds = %land.rhs
  %add6 = add i32 %start.addr.151, %len
  call void @__sanitizer_cov_trace_cmp4(i32 %add6, i32 %nbits)
  %cmp7 = icmp ugt i32 %add6, %nbits
  br i1 %cmp7, label %if.end.cleanup_crit_edge, label %if.end.for.cond_crit_edge

if.end.for.cond_crit_edge:                        ; preds = %if.end
  br label %for.cond

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end.for.cond_crit_edge
  %i.0.in = phi i32 [ %i.0, %for.body.for.cond_crit_edge ], [ %start.addr.151, %if.end.for.cond_crit_edge ]
  %i.0 = add nuw i32 %i.0.in, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0, i32 %add6)
  %cmp11 = icmp ult i32 %i.0, %add6
  br i1 %cmp11, label %for.body, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %div3.i40 = lshr i32 %i.0, 5
  %arrayidx.i41 = getelementptr i32, ptr %bitmap, i32 %div3.i40
  %4 = ptrtoint ptr %arrayidx.i41 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %arrayidx.i41, align 4
  %and.i42 = and i32 %i.0, 31
  %6 = shl nuw i32 1, %and.i42
  %7 = and i32 %5, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool13.not = icmp eq i32 %7, 0
  %and14 = and i32 %i.0, %skip_mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  %or.cond39 = select i1 %tobool13.not, i1 %tobool15.not, i1 false
  br i1 %or.cond39, label %for.body.for.cond_crit_edge, label %if.then16

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

if.then16:                                        ; preds = %for.body
  %add17 = add nuw i32 %i.0.in, 2
  %add = add i32 %sub, %add17
  %and = and i32 %add, %neg
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %nbits)
  %cmp50 = icmp ult i32 %and, %nbits
  br i1 %cmp50, label %if.then16.land.rhs.backedge_crit_edge, label %if.then16.cleanup_crit_edge

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then16.land.rhs.backedge_crit_edge:            ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.backedge

cleanup:                                          ; preds = %if.then16.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %if.end.cleanup_crit_edge, %while.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ %start.addr.151, %for.cond.cleanup_crit_edge ], [ -1, %while.body.cleanup_crit_edge ], [ -1, %if.then16.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mlx4_bitmap_avail(ptr nocapture noundef readonly %bitmap) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %avail = getelementptr inbounds %struct.mlx4_bitmap, ptr %bitmap, i32 0, i32 5
  %0 = ptrtoint ptr %avail to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %avail, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx4_bitmap_init(ptr noundef %bitmap, i32 noundef %num, i32 noundef %mask, i32 noundef %reserved_bot, i32 noundef %reserved_top) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sub.i58 = add i32 %num, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i58)
  %tobool.not.i.i.i = icmp eq i32 %sub.i58, 0
  %0 = tail call i32 @llvm.ctlz.i32(i32 %sub.i58, i1 true) #8, !range !30
  %sub.i.i.i = sub nuw nsw i32 32, %0
  %sub.i.i.op.i = shl nuw i32 1, %sub.i.i.i
  %shl.i = select i1 %tobool.not.i.i.i, i32 1, i32 %sub.i.i.op.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %num)
  %cmp19.not = icmp eq i32 %shl.i, %num
  br i1 %cmp19.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %bitmap to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %bitmap, align 4
  %top = getelementptr inbounds %struct.mlx4_bitmap, ptr %bitmap, i32 0, i32 1
  %2 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %top, align 4
  %sub21 = sub i32 %num, %reserved_top
  %max = getelementptr inbounds %struct.mlx4_bitmap, ptr %bitmap, i32 0, i32 2
  %3 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %sub21, ptr %max, align 4
  %mask22 = getelementptr inbounds %struct.mlx4_bitmap, ptr %bitmap, i32 0, i32 4
  %4 = ptrtoint ptr %mask22 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %mask, ptr %mask22, align 4
  %reserved_top23 = getelementptr inbounds %struct.mlx4_bitmap, ptr %bitmap, i32 0, i32 3
  %5 = ptrtoint ptr %reserved_top23 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %reserved_top, ptr %reserved_top23, align 4
  %sub25 = sub i32 %sub21, %reserved_bot
  %avail = getelementptr inbounds %struct.mlx4_bitmap, ptr %bitmap, i32 0, i32 5
  %6 = ptrtoint ptr %avail to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %sub25, ptr %avail, align 4
  %effective_len = getelementptr inbounds %struct.mlx4_bitmap, ptr %bitmap, i32 0, i32 6
  %7 = ptrtoint ptr %effective_len to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %sub25, ptr %effective_len, align 4
  %lock = getelementptr inbounds %struct.mlx4_bitmap, ptr %bitmap, i32 0, i32 7
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @mlx4_bitmap_init.__key, i16 noundef signext 3) #8
  %8 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max, align 4
  %call29 = tail call ptr @bitmap_zalloc(i32 noundef %9, i32 noundef 3264) #8
  %table = getelementptr inbounds %struct.mlx4_bitmap, ptr %bitmap, i32 0, i32 8
  %10 = ptrtoint ptr %table to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call29, ptr %table, align 4
  %tobool.not = icmp eq ptr %call29, null
  br i1 %tobool.not, label %if.end.return_crit_edge, label %if.else11.i

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.else11.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__bitmap_set(ptr noundef nonnull %call29, i32 noundef 0, i32 noundef %reserved_bot) #8
  br label %return

return:                                           ; preds = %if.else11.i, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ -12, %if.end.return_crit_edge ], [ 0, %if.else11.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bitmap_zalloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx4_bitmap_cleanup(ptr nocapture noundef readonly %bitmap) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %table = getelementptr inbounds %struct.mlx4_bitmap, ptr %bitmap, i32 0, i32 8
  %0 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %table, align 4
  tail call void @bitmap_free(ptr noundef %1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlx4_zone_allocator_create(i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 72) #11
  %cmp = icmp eq ptr %call7.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %call7.i, ptr %call7.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i, ptr %prev.i, align 4
  %prios = getelementptr inbounds %struct.mlx4_zone_allocator, ptr %call7.i, i32 0, i32 1
  %3 = ptrtoint ptr %prios to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %prios, ptr %prios, align 8
  %prev.i10 = getelementptr inbounds %struct.mlx4_zone_allocator, ptr %call7.i, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i10 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %prios, ptr %prev.i10, align 4
  %lock = getelementptr inbounds %struct.mlx4_zone_allocator, ptr %call7.i, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @mlx4_zone_allocator_create.__key, i16 noundef signext 3) #8
  %last_uid = getelementptr inbounds %struct.mlx4_zone_allocator, ptr %call7.i, i32 0, i32 2
  %5 = ptrtoint ptr %last_uid to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %last_uid, align 8
  %mask = getelementptr inbounds %struct.mlx4_zone_allocator, ptr %call7.i, i32 0, i32 3
  %6 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %mask, align 4
  %flags2 = getelementptr inbounds %struct.mlx4_zone_allocator, ptr %call7.i, i32 0, i32 5
  %7 = ptrtoint ptr %flags2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %flags, ptr %flags2, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call7.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx4_zone_add_one(ptr noundef %zone_alloc, ptr noundef %bitmap, i32 noundef %flags, i32 noundef %priority, i32 noundef %offset, ptr nocapture noundef writeonly %puid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %max.i = getelementptr inbounds %struct.mlx4_bitmap, ptr %bitmap, i32 0, i32 2
  %0 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max.i, align 4
  %reserved_top.i = getelementptr inbounds %struct.mlx4_bitmap, ptr %bitmap, i32 0, i32 3
  %2 = ptrtoint ptr %reserved_top.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reserved_top.i, align 4
  %add.i = add i32 %1, -1
  %sub.i = add i32 %add.i, %3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 44) #11
  %cmp = icmp eq ptr %call7.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags2 = getelementptr inbounds %struct.mlx4_zone_entry, ptr %call7.i, i32 0, i32 8
  %5 = ptrtoint ptr %flags2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %flags, ptr %flags2, align 8
  %bitmap3 = getelementptr inbounds %struct.mlx4_zone_entry, ptr %call7.i, i32 0, i32 4
  %6 = ptrtoint ptr %bitmap3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %bitmap, ptr %bitmap3, align 8
  %and = lshr i32 %flags, 3
  %and.lobit = and i32 %and, 1
  %use_rr = getelementptr inbounds %struct.mlx4_zone_entry, ptr %call7.i, i32 0, i32 5
  %7 = ptrtoint ptr %use_rr to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and.lobit, ptr %use_rr, align 4
  %priority4 = getelementptr inbounds %struct.mlx4_zone_entry, ptr %call7.i, i32 0, i32 6
  %8 = ptrtoint ptr %priority4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %priority, ptr %priority4, align 8
  %offset5 = getelementptr inbounds %struct.mlx4_zone_entry, ptr %call7.i, i32 0, i32 7
  %9 = ptrtoint ptr %offset5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %offset, ptr %offset5, align 4
  %lock = getelementptr inbounds %struct.mlx4_zone_allocator, ptr %zone_alloc, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %lock) #8
  %last_uid = getelementptr inbounds %struct.mlx4_zone_allocator, ptr %zone_alloc, i32 0, i32 2
  %10 = ptrtoint ptr %last_uid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %last_uid, align 4
  %inc = add i32 %11, 1
  store i32 %inc, ptr %last_uid, align 4
  %uid = getelementptr inbounds %struct.mlx4_zone_entry, ptr %call7.i, i32 0, i32 2
  %12 = ptrtoint ptr %uid to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %uid, align 8
  %allocator = getelementptr inbounds %struct.mlx4_zone_entry, ptr %call7.i, i32 0, i32 3
  %13 = ptrtoint ptr %allocator to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %zone_alloc, ptr %allocator, align 4
  %mask6 = getelementptr inbounds %struct.mlx4_zone_allocator, ptr %zone_alloc, i32 0, i32 3
  %14 = ptrtoint ptr %mask6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mask6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %sub.i)
  %cmp7 = icmp ult i32 %15, %sub.i
  br i1 %cmp7, label %if.then8, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %mask6 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %sub.i, ptr %mask6, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end.if.end10_crit_edge
  %prios = getelementptr inbounds %struct.mlx4_zone_allocator, ptr %zone_alloc, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end10
  %.pn.in = phi ptr [ %prios, %if.end10 ], [ %.pn, %for.body.for.cond_crit_edge ]
  %17 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp12 = icmp eq ptr %.pn, %prios
  br i1 %cmp12, label %for.cond.if.then27_crit_edge, label %for.body

for.cond.if.then27_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then27

for.body:                                         ; preds = %for.cond
  %priority13 = getelementptr i8, ptr %.pn, i32 24
  %18 = ptrtoint ptr %priority13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %priority13, align 4
  %cmp14.not = icmp slt i32 %19, %priority
  br i1 %cmp14.not, label %for.body.for.cond_crit_edge, label %lor.lhs.false.critedge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

lor.lhs.false.critedge:                           ; preds = %for.body
  %it.0.le = getelementptr i8, ptr %.pn, i32 -8
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %priority)
  %cmp26 = icmp sgt i32 %19, %priority
  br i1 %cmp26, label %lor.lhs.false.critedge.if.then27_crit_edge, label %lor.lhs.false.critedge.if.end30_crit_edge

lor.lhs.false.critedge.if.end30_crit_edge:        ; preds = %lor.lhs.false.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

lor.lhs.false.critedge.if.then27_crit_edge:       ; preds = %lor.lhs.false.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then27

if.then27:                                        ; preds = %lor.lhs.false.critedge.if.then27_crit_edge, %for.cond.if.then27_crit_edge
  %.pn80 = phi ptr [ %.pn, %lor.lhs.false.critedge.if.then27_crit_edge ], [ %prios, %for.cond.if.then27_crit_edge ]
  %it.072 = phi ptr [ %it.0.le, %lor.lhs.false.critedge.if.then27_crit_edge ], [ %zone_alloc, %for.cond.if.then27_crit_edge ]
  %prio_list28 = getelementptr inbounds %struct.mlx4_zone_entry, ptr %call7.i, i32 0, i32 1
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn80, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %prio_list28, ptr noundef %21, ptr noundef %.pn80) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.then27.if.end30_crit_edge

if.then27.if.end30_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.end.i.i:                                       ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %prio_list28, ptr %prev.i, align 4
  %23 = ptrtoint ptr %prio_list28 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %.pn80, ptr %prio_list28, align 8
  %prev3.i.i = getelementptr inbounds %struct.mlx4_zone_entry, ptr %call7.i, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev3.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %prio_list28, ptr %21, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.end.i.i, %if.then27.if.end30_crit_edge, %lor.lhs.false.critedge.if.end30_crit_edge
  %.pn81 = phi ptr [ %.pn80, %if.end.i.i ], [ %.pn80, %if.then27.if.end30_crit_edge ], [ %.pn, %lor.lhs.false.critedge.if.end30_crit_edge ]
  %it.071 = phi ptr [ %it.072, %if.end.i.i ], [ %it.072, %if.then27.if.end30_crit_edge ], [ %it.0.le, %lor.lhs.false.critedge.if.end30_crit_edge ]
  %prev.i65 = getelementptr i8, ptr %.pn81, i32 -4
  %26 = ptrtoint ptr %prev.i65 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i65, align 4
  %call.i.i66 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i, ptr noundef %27, ptr noundef %it.071) #8
  br i1 %call.i.i66, label %if.end.i.i68, label %if.end30.list_add_tail.exit69_crit_edge

if.end30.list_add_tail.exit69_crit_edge:          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit69

if.end.i.i68:                                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %prev.i65 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call7.i, ptr %prev.i65, align 4
  %29 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %it.071, ptr %call7.i, align 8
  %prev3.i.i67 = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %30 = ptrtoint ptr %prev3.i.i67 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev3.i.i67, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %call7.i, ptr %27, align 4
  br label %list_add_tail.exit69

list_add_tail.exit69:                             ; preds = %if.end.i.i68, %if.end30.list_add_tail.exit69_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #8
  %32 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %uid, align 8
  %34 = ptrtoint ptr %puid to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %puid, align 4
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit69, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_add_tail.exit69 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx4_zone_allocator_destroy(ptr noundef %zone_alloc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.mlx4_zone_allocator, ptr %zone_alloc, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %lock) #8
  %0 = ptrtoint ptr %zone_alloc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %zone_alloc, align 4
  %cmp.not30 = icmp eq ptr %1, %zone_alloc
  br i1 %cmp.not30, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %list_del.exit29.for.body_crit_edge, %entry.for.body_crit_edge
  %zone.031 = phi ptr [ %tmp.0, %list_del.exit29.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %zone.031 to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp.0 = load ptr, ptr %zone.031, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %zone.031) #8
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %zone.031, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %zone.031 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %zone.031, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %zone.031 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %zone.031, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %zone.031, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %prio_list = getelementptr inbounds %struct.mlx4_zone_entry, ptr %zone.031, i32 0, i32 1
  %call.i.i24 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %prio_list) #8
  br i1 %call.i.i24, label %if.end.i.i27, label %list_del.exit.list_del.exit29_crit_edge

list_del.exit.list_del.exit29_crit_edge:          ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit29

if.end.i.i27:                                     ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i25 = getelementptr inbounds %struct.mlx4_zone_entry, ptr %zone.031, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %prev.i.i25 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i25, align 4
  %13 = ptrtoint ptr %prio_list to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prio_list, align 4
  %prev1.i.i.i26 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i26 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i26, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %list_del.exit29

list_del.exit29:                                  ; preds = %if.end.i.i27, %list_del.exit.list_del.exit29_crit_edge
  %17 = ptrtoint ptr %prio_list to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 256 to ptr), ptr %prio_list, align 4
  %prev.i28 = getelementptr inbounds %struct.mlx4_zone_entry, ptr %zone.031, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %prev.i28 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i28, align 4
  tail call void @kfree(ptr noundef %zone.031) #8
  %cmp.not = icmp eq ptr %tmp.0, %zone_alloc
  br i1 %cmp.not, label %list_del.exit29.for.end_crit_edge, label %list_del.exit29.for.body_crit_edge

list_del.exit29.for.body_crit_edge:               ; preds = %list_del.exit29
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

list_del.exit29.for.end_crit_edge:                ; preds = %list_del.exit29
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %list_del.exit29.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #8
  tail call void @kfree(ptr noundef %zone_alloc) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlx4_zone_get_bitmap(ptr noundef %zones, i32 noundef %uid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.mlx4_zone_allocator, ptr %zones, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %lock) #8
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %zone.0.in.i = phi ptr [ %zones, %entry ], [ %zone.0.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %zone.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %zone.0.i = load ptr, ptr %zone.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %zone.0.i, %zones
  br i1 %cmp.not.i, label %for.cond.i.cond.end_crit_edge, label %for.body.i

for.cond.i.cond.end_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

for.body.i:                                       ; preds = %for.cond.i
  %uid2.i = getelementptr inbounds %struct.mlx4_zone_entry, ptr %zone.0.i, i32 0, i32 2
  %1 = ptrtoint ptr %uid2.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %uid2.i, align 4
  %cmp3.i = icmp eq i32 %2, %uid
  br i1 %cmp3.i, label %__mlx4_find_zone_by_uid.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

__mlx4_find_zone_by_uid.exit:                     ; preds = %for.body.i
  %cmp = icmp eq ptr %zone.0.i, null
  br i1 %cmp, label %__mlx4_find_zone_by_uid.exit.cond.end_crit_edge, label %cond.false

__mlx4_find_zone_by_uid.exit.cond.end_crit_edge:  ; preds = %__mlx4_find_zone_by_uid.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %__mlx4_find_zone_by_uid.exit
  call void @__sanitizer_cov_trace_pc() #10
  %bitmap1 = getelementptr inbounds %struct.mlx4_zone_entry, ptr %zone.0.i, i32 0, i32 4
  %3 = ptrtoint ptr %bitmap1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bitmap1, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %__mlx4_find_zone_by_uid.exit.cond.end_crit_edge, %for.cond.i.cond.end_crit_edge
  %cond = phi ptr [ %4, %cond.false ], [ null, %__mlx4_find_zone_by_uid.exit.cond.end_crit_edge ], [ null, %for.cond.i.cond.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #8
  ret ptr %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx4_zone_remove_one(ptr noundef %zones, i32 noundef %uid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.mlx4_zone_allocator, ptr %zones, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %lock) #8
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %zone.0.in.i = phi ptr [ %zones, %entry ], [ %zone.0.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %zone.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %zone.0.i = load ptr, ptr %zone.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %zone.0.i, %zones
  br i1 %cmp.not.i, label %for.cond.i.out_crit_edge, label %for.body.i

for.cond.i.out_crit_edge:                         ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

for.body.i:                                       ; preds = %for.cond.i
  %uid2.i = getelementptr inbounds %struct.mlx4_zone_entry, ptr %zone.0.i, i32 0, i32 2
  %1 = ptrtoint ptr %uid2.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %uid2.i, align 4
  %cmp3.i = icmp eq i32 %2, %uid
  br i1 %cmp3.i, label %__mlx4_find_zone_by_uid.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

__mlx4_find_zone_by_uid.exit:                     ; preds = %for.body.i
  %cmp = icmp eq ptr %zone.0.i, null
  br i1 %cmp, label %__mlx4_find_zone_by_uid.exit.out_crit_edge, label %if.end

__mlx4_find_zone_by_uid.exit.out_crit_edge:       ; preds = %__mlx4_find_zone_by_uid.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %__mlx4_find_zone_by_uid.exit
  %allocator.i = getelementptr inbounds %struct.mlx4_zone_entry, ptr %zone.0.i, i32 0, i32 3
  %3 = ptrtoint ptr %allocator.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %allocator.i, align 4
  %prio_list.i = getelementptr inbounds %struct.mlx4_zone_entry, ptr %zone.0.i, i32 0, i32 1
  %5 = ptrtoint ptr %prio_list.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %prio_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %6, %prio_list.i
  br i1 %cmp.i.not.i, label %if.end.if.end13.i_crit_edge, label %if.then.i

if.end.if.end13.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.i

if.then.i:                                        ; preds = %if.end
  %7 = ptrtoint ptr %zone.0.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %zone.0.i, align 4
  %cmp.i51.not.i = icmp eq ptr %8, %4
  br i1 %cmp.i51.not.i, label %if.then.i.if.end11.i_crit_edge, label %if.then4.i

if.then.i.if.end11.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i

if.then4.i:                                       ; preds = %if.then.i
  %priority.i = getelementptr inbounds %struct.mlx4_zone_entry, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %priority.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %priority.i, align 4
  %priority7.i = getelementptr inbounds %struct.mlx4_zone_entry, ptr %zone.0.i, i32 0, i32 6
  %11 = ptrtoint ptr %priority7.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %priority7.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp.i = icmp eq i32 %10, %12
  br i1 %cmp.i, label %if.then8.i, label %if.then4.i.if.end11.i_crit_edge

if.then4.i.if.end11.i_crit_edge:                  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i

if.then8.i:                                       ; preds = %if.then4.i
  %prio_list9.i = getelementptr inbounds %struct.mlx4_zone_entry, ptr %8, i32 0, i32 1
  %prev.i.i = getelementptr inbounds %struct.mlx4_zone_entry, ptr %zone.0.i, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %prio_list9.i, ptr noundef %14, ptr noundef %prio_list.i) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then8.i.if.end11.i_crit_edge

if.then8.i.if.end11.i_crit_edge:                  ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i

if.end.i.i.i:                                     ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %prio_list9.i, ptr %prev.i.i, align 4
  %16 = ptrtoint ptr %prio_list9.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %prio_list.i, ptr %prio_list9.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.mlx4_zone_entry, ptr %8, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev3.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %prio_list9.i, ptr %14, align 4
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.end.i.i.i, %if.then8.i.if.end11.i_crit_edge, %if.then4.i.if.end11.i_crit_edge, %if.then.i.if.end11.i_crit_edge
  %call.i.i53.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %prio_list.i) #8
  br i1 %call.i.i53.i, label %if.end.i.i54.i, label %if.end11.i.list_del.exit.i_crit_edge

if.end11.i.list_del.exit.i_crit_edge:             ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit.i

if.end.i.i54.i:                                   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.mlx4_zone_entry, ptr %zone.0.i, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i.i, align 4
  %21 = ptrtoint ptr %prio_list.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prio_list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev1.i.i.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %20, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i54.i, %if.end11.i.list_del.exit.i_crit_edge
  %25 = ptrtoint ptr %prio_list.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 256 to ptr), ptr %prio_list.i, align 4
  %prev.i55.i = getelementptr inbounds %struct.mlx4_zone_entry, ptr %zone.0.i, i32 0, i32 1, i32 1
  %26 = ptrtoint ptr %prev.i55.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i55.i, align 4
  br label %if.end13.i

if.end13.i:                                       ; preds = %list_del.exit.i, %if.end.if.end13.i_crit_edge
  %call.i.i56.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %zone.0.i) #8
  br i1 %call.i.i56.i, label %if.end.i.i59.i, label %if.end13.i.list_del.exit61.i_crit_edge

if.end13.i.list_del.exit61.i_crit_edge:           ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit61.i

if.end.i.i59.i:                                   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i57.i = getelementptr inbounds %struct.list_head, ptr %zone.0.i, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i.i57.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i.i57.i, align 4
  %29 = ptrtoint ptr %zone.0.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %zone.0.i, align 4
  %prev1.i.i.i58.i = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %prev1.i.i.i58.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev1.i.i.i58.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %30, ptr %28, align 4
  br label %list_del.exit61.i

list_del.exit61.i:                                ; preds = %if.end.i.i59.i, %if.end13.i.list_del.exit61.i_crit_edge
  %33 = ptrtoint ptr %zone.0.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 256 to ptr), ptr %zone.0.i, align 4
  %prev.i60.i = getelementptr inbounds %struct.list_head, ptr %zone.0.i, i32 0, i32 1
  %34 = ptrtoint ptr %prev.i60.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i60.i, align 4
  %flags.i = getelementptr inbounds %struct.mlx4_zone_allocator, ptr %4, i32 0, i32 5
  %35 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool15.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool15.not.i, label %list_del.exit61.i.out_crit_edge, label %if.then16.i

list_del.exit61.i.out_crit_edge:                  ; preds = %list_del.exit61.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then16.i:                                      ; preds = %list_del.exit61.i
  %prios.i = getelementptr inbounds %struct.mlx4_zone_allocator, ptr %4, i32 0, i32 1
  %37 = ptrtoint ptr %prios.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pn62.i = load ptr, ptr %prios.i, align 4
  %cmp23.not63.i = icmp eq ptr %.pn62.i, %prios.i
  br i1 %cmp23.not63.i, label %if.then16.i.for.end.i_crit_edge, label %if.then16.i.for.body.i6_crit_edge

if.then16.i.for.body.i6_crit_edge:                ; preds = %if.then16.i
  br label %for.body.i6

if.then16.i.for.end.i_crit_edge:                  ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.i6:                                      ; preds = %for.body.i6.for.body.i6_crit_edge, %if.then16.i.for.body.i6_crit_edge
  %.pn65.i = phi ptr [ %.pn.i, %for.body.i6.for.body.i6_crit_edge ], [ %.pn62.i, %if.then16.i.for.body.i6_crit_edge ]
  %mask.064.i = phi i32 [ %44, %for.body.i6.for.body.i6_crit_edge ], [ 0, %if.then16.i.for.body.i6_crit_edge ]
  %bitmap.i = getelementptr i8, ptr %.pn65.i, i32 16
  %38 = ptrtoint ptr %bitmap.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bitmap.i, align 4
  %max.i.i = getelementptr inbounds %struct.mlx4_bitmap, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %max.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %max.i.i, align 4
  %reserved_top.i.i = getelementptr inbounds %struct.mlx4_bitmap, ptr %39, i32 0, i32 3
  %42 = ptrtoint ptr %reserved_top.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %reserved_top.i.i, align 4
  %add.i.i = add i32 %41, -1
  %sub.i.i = add i32 %add.i.i, %43
  %44 = tail call i32 @llvm.umax.i32(i32 %mask.064.i, i32 %sub.i.i) #8
  %45 = ptrtoint ptr %.pn65.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %.pn.i = load ptr, ptr %.pn65.i, align 4
  %cmp23.not.i = icmp eq ptr %.pn.i, %prios.i
  br i1 %cmp23.not.i, label %for.body.i6.for.end.i_crit_edge, label %for.body.i6.for.body.i6_crit_edge

for.body.i6.for.body.i6_crit_edge:                ; preds = %for.body.i6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i6

for.body.i6.for.end.i_crit_edge:                  ; preds = %for.body.i6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i6.for.end.i_crit_edge, %if.then16.i.for.end.i_crit_edge
  %mask.0.lcssa.i = phi i32 [ 0, %if.then16.i.for.end.i_crit_edge ], [ %44, %for.body.i6.for.end.i_crit_edge ]
  %mask33.i = getelementptr inbounds %struct.mlx4_zone_allocator, ptr %4, i32 0, i32 3
  %46 = ptrtoint ptr %mask33.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %mask.0.lcssa.i, ptr %mask33.i, align 4
  br label %out

out:                                              ; preds = %for.end.i, %list_del.exit61.i.out_crit_edge, %__mlx4_find_zone_by_uid.exit.out_crit_edge, %for.cond.i.out_crit_edge
  %retval.0.i9 = phi ptr [ null, %__mlx4_find_zone_by_uid.exit.out_crit_edge ], [ %zone.0.i, %list_del.exit61.i.out_crit_edge ], [ %zone.0.i, %for.end.i ], [ null, %for.cond.i.out_crit_edge ]
  %res.0 = phi i32 [ -1, %__mlx4_find_zone_by_uid.exit.out_crit_edge ], [ 0, %list_del.exit61.i.out_crit_edge ], [ 0, %for.end.i ], [ -1, %for.cond.i.out_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #8
  tail call void @kfree(ptr noundef %retval.0.i9) #8
  ret i32 %res.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx4_zone_alloc_entries(ptr noundef %zones, i32 noundef %uid, i32 noundef %count, i32 noundef %align, i32 noundef %skip_mask, ptr noundef writeonly %puid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.mlx4_zone_allocator, ptr %zones, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %lock) #8
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %zone.0.in.i = phi ptr [ %zones, %entry ], [ %zone.0.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %zone.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %zone.0.i = load ptr, ptr %zone.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %zone.0.i, %zones
  br i1 %cmp.not.i, label %for.cond.i.out_crit_edge, label %for.body.i

for.cond.i.out_crit_edge:                         ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

for.body.i:                                       ; preds = %for.cond.i
  %uid2.i = getelementptr inbounds %struct.mlx4_zone_entry, ptr %zone.0.i, i32 0, i32 2
  %1 = ptrtoint ptr %uid2.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %uid2.i, align 4
  %cmp3.i = icmp eq i32 %2, %uid
  br i1 %cmp3.i, label %__mlx4_find_zone_by_uid.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

__mlx4_find_zone_by_uid.exit:                     ; preds = %for.body.i
  %cmp = icmp eq ptr %zone.0.i, null
  br i1 %cmp, label %__mlx4_find_zone_by_uid.exit.out_crit_edge, label %if.end

__mlx4_find_zone_by_uid.exit.out_crit_edge:       ; preds = %__mlx4_find_zone_by_uid.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %__mlx4_find_zone_by_uid.exit
  %allocator.i = getelementptr inbounds %struct.mlx4_zone_entry, ptr %zone.0.i, i32 0, i32 3
  %3 = ptrtoint ptr %allocator.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %allocator.i, align 4
  %bitmap.i = getelementptr inbounds %struct.mlx4_zone_entry, ptr %zone.0.i, i32 0, i32 4
  %5 = ptrtoint ptr %bitmap.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bitmap.i, align 4
  %call.i = tail call i32 @mlx4_bitmap_alloc_range(ptr noundef %6, i32 noundef %count, i32 noundef %align, i32 noundef %skip_mask) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.not.i6 = icmp eq i32 %call.i, -1
  br i1 %cmp.not.i6, label %if.end.i, label %if.end.out.i_crit_edge

if.end.out.i_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.i

if.end.i:                                         ; preds = %if.end
  %prios.i = getelementptr inbounds %struct.mlx4_zone_allocator, ptr %4, i32 0, i32 1
  %priority4.i = getelementptr inbounds %struct.mlx4_zone_entry, ptr %zone.0.i, i32 0, i32 6
  br label %for.cond.i7

for.cond.i7:                                      ; preds = %for.body.i8.for.cond.i7_crit_edge, %if.end.i
  %.pn.in.i = phi ptr [ %prios.i, %if.end.i ], [ %.pn.i, %for.body.i8.for.cond.i7_crit_edge ]
  %7 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp3.not.i = icmp eq ptr %.pn.i, %prios.i
  br i1 %cmp3.not.i, label %for.cond.i7.for.end.i_crit_edge, label %for.body.i8

for.cond.i7.for.end.i_crit_edge:                  ; preds = %for.cond.i7
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.i8:                                      ; preds = %for.cond.i7
  %priority.i = getelementptr i8, ptr %.pn.i, i32 24
  %8 = ptrtoint ptr %priority.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %priority.i, align 4
  %10 = ptrtoint ptr %priority4.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %priority4.i, align 4
  %cmp5.i = icmp eq i32 %9, %11
  br i1 %cmp5.i, label %for.body.i8.for.end.i_crit_edge, label %for.body.i8.for.cond.i7_crit_edge, !prof !31

for.body.i8.for.cond.i7_crit_edge:                ; preds = %for.body.i8
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i7

for.body.i8.for.end.i_crit_edge:                  ; preds = %for.body.i8
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i8.for.end.i_crit_edge, %for.cond.i7.for.end.i_crit_edge
  %.pn.lcssa.i = phi ptr [ %.pn.i, %for.body.i8.for.end.i_crit_edge ], [ %prios.i, %for.cond.i7.for.end.i_crit_edge ]
  %curr_node.0.le.i = getelementptr i8, ptr %.pn.lcssa.i, i32 -8
  %flags.i = getelementptr inbounds %struct.mlx4_zone_entry, ptr %zone.0.i, i32 0, i32 8
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool15.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool15.not.i, label %for.end.i.if.end41.i_crit_edge, label %if.then16.i

for.end.i.if.end41.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41.i

if.then16.i:                                      ; preds = %for.end.i
  %prev.i = getelementptr i8, ptr %.pn.lcssa.i, i32 -4
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %it.0210.i = load ptr, ptr %prev.i, align 4
  %cmp22.not211.i = icmp eq ptr %it.0210.i, %4
  br i1 %cmp22.not211.i, label %if.then16.i.if.end41.i_crit_edge, label %if.then16.i.for.body25.i_crit_edge

if.then16.i.for.body25.i_crit_edge:               ; preds = %if.then16.i
  br label %for.body25.i

if.then16.i.if.end41.i_crit_edge:                 ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41.i

for.body25.i:                                     ; preds = %for.inc34.i.for.body25.i_crit_edge, %if.then16.i.for.body25.i_crit_edge
  %it.0212.i = phi ptr [ %it.0.i, %for.inc34.i.for.body25.i_crit_edge ], [ %it.0210.i, %if.then16.i.for.body25.i_crit_edge ]
  %bitmap26.i = getelementptr inbounds %struct.mlx4_zone_entry, ptr %it.0212.i, i32 0, i32 4
  %15 = ptrtoint ptr %bitmap26.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bitmap26.i, align 4
  %call27.i = tail call i32 @mlx4_bitmap_alloc_range(ptr noundef %16, i32 noundef %count, i32 noundef %align, i32 noundef %skip_mask) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call27.i)
  %cmp28.not.i = icmp eq i32 %call27.i, -1
  br i1 %cmp28.not.i, label %for.inc34.i, label %for.body25.i.out.i_crit_edge

for.body25.i.out.i_crit_edge:                     ; preds = %for.body25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.i

for.inc34.i:                                      ; preds = %for.body25.i
  %prev37.i = getelementptr inbounds %struct.list_head, ptr %it.0212.i, i32 0, i32 1
  %17 = ptrtoint ptr %prev37.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %it.0.i = load ptr, ptr %prev37.i, align 4
  %cmp22.not.i = icmp eq ptr %it.0.i, %4
  br i1 %cmp22.not.i, label %for.inc34.i.if.end41.i_crit_edge, label %for.inc34.i.for.body25.i_crit_edge

for.inc34.i.for.body25.i_crit_edge:               ; preds = %for.inc34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body25.i

for.inc34.i.if.end41.i_crit_edge:                 ; preds = %for.inc34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41.i

if.end41.i:                                       ; preds = %for.inc34.i.if.end41.i_crit_edge, %if.then16.i.if.end41.i_crit_edge, %for.end.i.if.end41.i_crit_edge
  %18 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags.i, align 4
  %and43.i = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.i)
  %tobool44.not.i = icmp eq i32 %and43.i, 0
  %cmp50.not213.i = icmp eq ptr %curr_node.0.le.i, %4
  %or.cond218.i = select i1 %tobool44.not.i, i1 true, i1 %cmp50.not213.i
  br i1 %or.cond218.i, label %if.end41.i.if.end92.i_crit_edge, label %for.body53.lr.ph.i

if.end41.i.if.end92.i_crit_edge:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92.i

for.body53.lr.ph.i:                               ; preds = %if.end41.i
  %priority64.i = getelementptr i8, ptr %.pn.lcssa.i, i32 24
  br label %for.body53.i

for.body53.i:                                     ; preds = %for.inc82.i.for.body53.i_crit_edge, %for.body53.lr.ph.i
  %it46.0214.i = phi ptr [ %curr_node.0.le.i, %for.body53.lr.ph.i ], [ %27, %for.inc82.i.for.body53.i_crit_edge ]
  %cmp54.i = icmp eq ptr %it46.0214.i, %zone.0.i
  br i1 %cmp54.i, label %for.body53.i.for.inc82.i_crit_edge, label %if.end62.i, !prof !31

for.body53.i.for.inc82.i_crit_edge:               ; preds = %for.body53.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc82.i

if.end62.i:                                       ; preds = %for.body53.i
  %priority63.i = getelementptr inbounds %struct.mlx4_zone_entry, ptr %it46.0214.i, i32 0, i32 6
  %20 = ptrtoint ptr %priority63.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %priority63.i, align 4
  %22 = ptrtoint ptr %priority64.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %priority64.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp65.not.i = icmp eq i32 %21, %23
  br i1 %cmp65.not.i, label %if.end73.i, label %if.end62.i.if.end92.i_crit_edge, !prof !32

if.end62.i.if.end92.i_crit_edge:                  ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92.i

if.end73.i:                                       ; preds = %if.end62.i
  %bitmap74.i = getelementptr inbounds %struct.mlx4_zone_entry, ptr %it46.0214.i, i32 0, i32 4
  %24 = ptrtoint ptr %bitmap74.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bitmap74.i, align 4
  %call75.i = tail call i32 @mlx4_bitmap_alloc_range(ptr noundef %25, i32 noundef %count, i32 noundef %align, i32 noundef %skip_mask) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call75.i)
  %cmp76.not.i = icmp eq i32 %call75.i, -1
  br i1 %cmp76.not.i, label %if.end73.i.for.inc82.i_crit_edge, label %if.end73.i.out.i_crit_edge

if.end73.i.out.i_crit_edge:                       ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.i

if.end73.i.for.inc82.i_crit_edge:                 ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc82.i

for.inc82.i:                                      ; preds = %if.end73.i.for.inc82.i_crit_edge, %for.body53.i.for.inc82.i_crit_edge
  %26 = ptrtoint ptr %it46.0214.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %it46.0214.i, align 4
  %cmp50.not.i = icmp eq ptr %27, %4
  br i1 %cmp50.not.i, label %for.inc82.i.if.end92.i_crit_edge, label %for.inc82.i.for.body53.i_crit_edge

for.inc82.i.for.body53.i_crit_edge:               ; preds = %for.inc82.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body53.i

for.inc82.i.if.end92.i_crit_edge:                 ; preds = %for.inc82.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92.i

if.end92.i:                                       ; preds = %for.inc82.i.if.end92.i_crit_edge, %if.end62.i.if.end92.i_crit_edge, %if.end41.i.if.end92.i_crit_edge
  %28 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags.i, align 4
  %and94.i = and i32 %29, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94.i)
  %tobool95.not.i = icmp eq i32 %and94.i, 0
  br i1 %tobool95.not.i, label %if.end92.i.out_crit_edge, label %if.then96.i

if.end92.i.out_crit_edge:                         ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then96.i:                                      ; preds = %if.end92.i
  %30 = ptrtoint ptr %.pn.lcssa.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %.pn.lcssa.i, align 4
  %cmp.i.not.i = icmp eq ptr %31, %prios.i
  %add.ptr107.i = getelementptr i8, ptr %31, i32 -8
  %cmp111.not216.i = icmp eq ptr %add.ptr107.i, %4
  %or.cond219.i = or i1 %cmp.i.not.i, %cmp111.not216.i
  br i1 %or.cond219.i, label %if.then96.i.out_crit_edge, label %if.then96.i.for.body114.i_crit_edge

if.then96.i.for.body114.i_crit_edge:              ; preds = %if.then96.i
  br label %for.body114.i

if.then96.i.out_crit_edge:                        ; preds = %if.then96.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

for.body114.i:                                    ; preds = %for.inc123.i.for.body114.i_crit_edge, %if.then96.i.for.body114.i_crit_edge
  %curr_node.1217.i = phi ptr [ %35, %for.inc123.i.for.body114.i_crit_edge ], [ %add.ptr107.i, %if.then96.i.for.body114.i_crit_edge ]
  %bitmap115.i = getelementptr inbounds %struct.mlx4_zone_entry, ptr %curr_node.1217.i, i32 0, i32 4
  %32 = ptrtoint ptr %bitmap115.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bitmap115.i, align 4
  %call116.i = tail call i32 @mlx4_bitmap_alloc_range(ptr noundef %33, i32 noundef %count, i32 noundef %align, i32 noundef %skip_mask) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call116.i)
  %cmp117.not.i = icmp eq i32 %call116.i, -1
  br i1 %cmp117.not.i, label %for.inc123.i, label %for.body114.i.out.i_crit_edge

for.body114.i.out.i_crit_edge:                    ; preds = %for.body114.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.i

for.inc123.i:                                     ; preds = %for.body114.i
  %34 = ptrtoint ptr %curr_node.1217.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %curr_node.1217.i, align 4
  %cmp111.not.i = icmp eq ptr %35, %4
  br i1 %cmp111.not.i, label %for.inc123.i.out_crit_edge, label %for.inc123.i.for.body114.i_crit_edge

for.inc123.i.for.body114.i_crit_edge:             ; preds = %for.inc123.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body114.i

for.inc123.i.out_crit_edge:                       ; preds = %for.inc123.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

out.i:                                            ; preds = %for.body114.i.out.i_crit_edge, %if.end73.i.out.i_crit_edge, %for.body25.i.out.i_crit_edge, %if.end.out.i_crit_edge
  %it46.0214.lcssa233.sink236.i = phi ptr [ %zone.0.i, %if.end.out.i_crit_edge ], [ %curr_node.1217.i, %for.body114.i.out.i_crit_edge ], [ %it46.0214.i, %if.end73.i.out.i_crit_edge ], [ %it.0212.i, %for.body25.i.out.i_crit_edge ]
  %call75.lcssa.sink.i = phi i32 [ %call.i, %if.end.out.i_crit_edge ], [ %call116.i, %for.body114.i.out.i_crit_edge ], [ %call75.i, %if.end73.i.out.i_crit_edge ], [ %call27.i, %for.body25.i.out.i_crit_edge ]
  %offset78.i = getelementptr inbounds %struct.mlx4_zone_entry, ptr %it46.0214.lcssa233.sink236.i, i32 0, i32 7
  %36 = ptrtoint ptr %offset78.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %offset78.i, align 4
  %add79.i = add i32 %37, %call75.lcssa.sink.i
  %cmp131.not.i = icmp eq ptr %puid, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %add79.i)
  %cmp132.not.i = icmp eq i32 %add79.i, -1
  %or.cond.i = select i1 %cmp131.not.i, i1 true, i1 %cmp132.not.i
  br i1 %or.cond.i, label %out.i.out_crit_edge, label %if.then133.i

out.i.out_crit_edge:                              ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then133.i:                                     ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #10
  %uid80.i = getelementptr inbounds %struct.mlx4_zone_entry, ptr %it46.0214.lcssa233.sink236.i, i32 0, i32 2
  %38 = ptrtoint ptr %uid80.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %uid80.i, align 4
  %40 = ptrtoint ptr %puid to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %puid, align 4
  br label %out

out:                                              ; preds = %if.then133.i, %out.i.out_crit_edge, %for.inc123.i.out_crit_edge, %if.then96.i.out_crit_edge, %if.end92.i.out_crit_edge, %__mlx4_find_zone_by_uid.exit.out_crit_edge, %for.cond.i.out_crit_edge
  %res.0 = phi i32 [ -1, %__mlx4_find_zone_by_uid.exit.out_crit_edge ], [ %add79.i, %out.i.out_crit_edge ], [ %add79.i, %if.then133.i ], [ -1, %if.then96.i.out_crit_edge ], [ -1, %if.end92.i.out_crit_edge ], [ -1, %for.inc123.i.out_crit_edge ], [ -1, %for.cond.i.out_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #8
  ret i32 %res.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx4_zone_free_entries(ptr noundef %zones, i32 noundef %uid, i32 noundef %obj, i32 noundef %count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.mlx4_zone_allocator, ptr %zones, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %lock) #8
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %zone.0.in.i = phi ptr [ %zones, %entry ], [ %zone.0.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %zone.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %zone.0.i = load ptr, ptr %zone.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %zone.0.i, %zones
  br i1 %cmp.not.i, label %for.cond.i.out_crit_edge, label %for.body.i

for.cond.i.out_crit_edge:                         ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

for.body.i:                                       ; preds = %for.cond.i
  %uid2.i = getelementptr inbounds %struct.mlx4_zone_entry, ptr %zone.0.i, i32 0, i32 2
  %1 = ptrtoint ptr %uid2.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %uid2.i, align 4
  %cmp3.i = icmp eq i32 %2, %uid
  br i1 %cmp3.i, label %__mlx4_find_zone_by_uid.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

__mlx4_find_zone_by_uid.exit:                     ; preds = %for.body.i
  %cmp = icmp eq ptr %zone.0.i, null
  br i1 %cmp, label %__mlx4_find_zone_by_uid.exit.out_crit_edge, label %if.end

__mlx4_find_zone_by_uid.exit.out_crit_edge:       ; preds = %__mlx4_find_zone_by_uid.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %__mlx4_find_zone_by_uid.exit
  %bitmap.i = getelementptr inbounds %struct.mlx4_zone_entry, ptr %zone.0.i, i32 0, i32 4
  %3 = ptrtoint ptr %bitmap.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bitmap.i, align 4
  %offset.i = getelementptr inbounds %struct.mlx4_zone_entry, ptr %zone.0.i, i32 0, i32 7
  %5 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %offset.i, align 4
  %sub.i = sub i32 %obj, %6
  %use_rr.i = getelementptr inbounds %struct.mlx4_zone_entry, ptr %zone.0.i, i32 0, i32 5
  %7 = ptrtoint ptr %use_rr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %use_rr.i, align 4
  %max.i.i = getelementptr inbounds %struct.mlx4_bitmap, ptr %4, i32 0, i32 2
  %9 = ptrtoint ptr %max.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max.i.i, align 4
  %reserved_top.i.i = getelementptr inbounds %struct.mlx4_bitmap, ptr %4, i32 0, i32 3
  %11 = ptrtoint ptr %reserved_top.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %reserved_top.i.i, align 4
  %add.i.i = add i32 %10, -1
  %sub.i.i = add i32 %add.i.i, %12
  %and.i.i = and i32 %sub.i.i, %sub.i
  %lock.i.i = getelementptr inbounds %struct.mlx4_bitmap, ptr %4, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %lock.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.if.end.i.i_crit_edge

if.end.if.end.i.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %4, align 4
  %15 = tail call i32 @llvm.umin.i32(i32 %14, i32 %and.i.i) #8
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %4, align 4
  %top.i.i = getelementptr inbounds %struct.mlx4_bitmap, ptr %4, i32 0, i32 1
  %17 = ptrtoint ptr %top.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %top.i.i, align 4
  %19 = ptrtoint ptr %max.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %max.i.i, align 4
  %add3.i.i = add i32 %20, %18
  %21 = ptrtoint ptr %reserved_top.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %reserved_top.i.i, align 4
  %add5.i.i = add i32 %add3.i.i, %22
  %mask.i.i = getelementptr inbounds %struct.mlx4_bitmap, ptr %4, i32 0, i32 4
  %23 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mask.i.i, align 4
  %and6.i.i = and i32 %add5.i.i, %24
  store i32 %and6.i.i, ptr %top.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.end.if.end.i.i_crit_edge
  %table.i.i = getelementptr inbounds %struct.mlx4_bitmap, ptr %4, i32 0, i32 8
  %25 = ptrtoint ptr %table.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %table.i.i, align 4
  tail call void @__bitmap_clear(ptr noundef %26, i32 noundef %and.i.i, i32 noundef %count) #8
  %avail.i.i = getelementptr inbounds %struct.mlx4_bitmap, ptr %4, i32 0, i32 5
  %27 = ptrtoint ptr %avail.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %avail.i.i, align 4
  %add8.i.i = add i32 %28, %count
  store i32 %add8.i.i, ptr %avail.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i.i) #8
  br label %out

out:                                              ; preds = %if.end.i.i, %__mlx4_find_zone_by_uid.exit.out_crit_edge, %for.cond.i.out_crit_edge
  %res.0 = phi i32 [ 0, %if.end.i.i ], [ -1, %__mlx4_find_zone_by_uid.exit.out_crit_edge ], [ -1, %for.cond.i.out_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #8
  ret i32 %res.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx4_zone_free_entries_unique(ptr noundef %zones, i32 noundef %obj, i32 noundef %count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.mlx4_zone_allocator, ptr %zones, i32 0, i32 5
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.mlx4_zone_allocator, ptr %zones, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %lock) #8
  %2 = ptrtoint ptr %zones to i32
  call void @__asan_load4_noabort(i32 %2)
  %zone.028.i = load ptr, ptr %zones, align 4
  %cmp.not29.i = icmp eq ptr %zone.028.i, %zones
  br i1 %cmp.not29.i, label %if.end.out_crit_edge, label %for.body.lr.ph.i

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

for.body.lr.ph.i:                                 ; preds = %if.end
  %mask.i = getelementptr inbounds %struct.mlx4_zone_allocator, ptr %zones, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %zone.032.i = phi ptr [ %zone.028.i, %for.body.lr.ph.i ], [ %zone.0.i, %for.inc.i.for.body.i_crit_edge ]
  %zone_candidate.031.i = phi ptr [ null, %for.body.lr.ph.i ], [ %zone_candidate.3.i, %for.inc.i.for.body.i_crit_edge ]
  %dist.030.i = phi i32 [ -1, %for.body.lr.ph.i ], [ %dist.3.i, %for.inc.i.for.body.i_crit_edge ]
  %offset.i = getelementptr inbounds %struct.mlx4_zone_entry, ptr %zone.032.i, i32 0, i32 7
  %3 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %offset.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %obj)
  %cmp2.not.i = icmp ugt i32 %4, %obj
  br i1 %cmp2.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %sub.i = sub i32 %obj, %4
  %5 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mask.i, align 4
  %and.i = and i32 %6, %sub.i
  %bitmap.i = getelementptr inbounds %struct.mlx4_zone_entry, ptr %zone.032.i, i32 0, i32 4
  %7 = ptrtoint ptr %bitmap.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bitmap.i, align 4
  %max.i = getelementptr inbounds %struct.mlx4_bitmap, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %10)
  %cmp4.i = icmp ult i32 %and.i, %10
  br i1 %cmp4.i, label %if.then5.i, label %if.then.i.for.inc.i_crit_edge

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %effective_len.i = getelementptr inbounds %struct.mlx4_bitmap, ptr %8, i32 0, i32 6
  %11 = ptrtoint ptr %effective_len.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %effective_len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %dist.030.i)
  %cmp7.i = icmp ult i32 %12, %dist.030.i
  %13 = tail call i32 @llvm.umin.i32(i32 %12, i32 %dist.030.i) #8
  %spec.select27.i = select i1 %cmp7.i, ptr %zone.032.i, ptr %zone_candidate.031.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then5.i, %if.then.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %dist.3.i = phi i32 [ %dist.030.i, %for.body.i.for.inc.i_crit_edge ], [ %13, %if.then5.i ], [ %dist.030.i, %if.then.i.for.inc.i_crit_edge ]
  %zone_candidate.3.i = phi ptr [ %zone_candidate.031.i, %for.body.i.for.inc.i_crit_edge ], [ %spec.select27.i, %if.then5.i ], [ %zone_candidate.031.i, %if.then.i.for.inc.i_crit_edge ]
  %14 = ptrtoint ptr %zone.032.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %zone.0.i = load ptr, ptr %zone.032.i, align 4
  %cmp.not.i = icmp eq ptr %zone.0.i, %zones
  br i1 %cmp.not.i, label %__mlx4_find_zone_by_uid_unique.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

__mlx4_find_zone_by_uid_unique.exit:              ; preds = %for.inc.i
  %cmp = icmp eq ptr %zone_candidate.3.i, null
  br i1 %cmp, label %__mlx4_find_zone_by_uid_unique.exit.out_crit_edge, label %if.end2

__mlx4_find_zone_by_uid_unique.exit.out_crit_edge: ; preds = %__mlx4_find_zone_by_uid_unique.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end2:                                          ; preds = %__mlx4_find_zone_by_uid_unique.exit
  %bitmap.i10 = getelementptr inbounds %struct.mlx4_zone_entry, ptr %zone_candidate.3.i, i32 0, i32 4
  %15 = ptrtoint ptr %bitmap.i10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bitmap.i10, align 4
  %offset.i11 = getelementptr inbounds %struct.mlx4_zone_entry, ptr %zone_candidate.3.i, i32 0, i32 7
  %17 = ptrtoint ptr %offset.i11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %offset.i11, align 4
  %sub.i12 = sub i32 %obj, %18
  %use_rr.i = getelementptr inbounds %struct.mlx4_zone_entry, ptr %zone_candidate.3.i, i32 0, i32 5
  %19 = ptrtoint ptr %use_rr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %use_rr.i, align 4
  %max.i.i = getelementptr inbounds %struct.mlx4_bitmap, ptr %16, i32 0, i32 2
  %21 = ptrtoint ptr %max.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %max.i.i, align 4
  %reserved_top.i.i = getelementptr inbounds %struct.mlx4_bitmap, ptr %16, i32 0, i32 3
  %23 = ptrtoint ptr %reserved_top.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %reserved_top.i.i, align 4
  %add.i.i = add i32 %22, -1
  %sub.i.i = add i32 %add.i.i, %24
  %and.i.i = and i32 %sub.i.i, %sub.i12
  %lock.i.i = getelementptr inbounds %struct.mlx4_bitmap, ptr %16, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %lock.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end2.if.end.i.i_crit_edge

if.end2.if.end.i.i_crit_edge:                     ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %16, align 4
  %27 = tail call i32 @llvm.umin.i32(i32 %26, i32 %and.i.i) #8
  %28 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %16, align 4
  %top.i.i = getelementptr inbounds %struct.mlx4_bitmap, ptr %16, i32 0, i32 1
  %29 = ptrtoint ptr %top.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %top.i.i, align 4
  %31 = ptrtoint ptr %max.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %max.i.i, align 4
  %add3.i.i = add i32 %32, %30
  %33 = ptrtoint ptr %reserved_top.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %reserved_top.i.i, align 4
  %add5.i.i = add i32 %add3.i.i, %34
  %mask.i.i = getelementptr inbounds %struct.mlx4_bitmap, ptr %16, i32 0, i32 4
  %35 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mask.i.i, align 4
  %and6.i.i = and i32 %add5.i.i, %36
  store i32 %and6.i.i, ptr %top.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.end2.if.end.i.i_crit_edge
  %table.i.i = getelementptr inbounds %struct.mlx4_bitmap, ptr %16, i32 0, i32 8
  %37 = ptrtoint ptr %table.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %table.i.i, align 4
  tail call void @__bitmap_clear(ptr noundef %38, i32 noundef %and.i.i, i32 noundef %count) #8
  %avail.i.i = getelementptr inbounds %struct.mlx4_bitmap, ptr %16, i32 0, i32 5
  %39 = ptrtoint ptr %avail.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %avail.i.i, align 4
  %add8.i.i = add i32 %40, %count
  store i32 %add8.i.i, ptr %avail.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i.i) #8
  br label %out

out:                                              ; preds = %if.end.i.i, %__mlx4_find_zone_by_uid_unique.exit.out_crit_edge, %if.end.out_crit_edge
  %res.0 = phi i32 [ 0, %if.end.i.i ], [ -1, %__mlx4_find_zone_by_uid_unique.exit.out_crit_edge ], [ -1, %if.end.out_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %res.0, %out ], [ -14, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx4_buf_alloc(ptr nocapture noundef readonly %dev, i32 noundef %size, i32 noundef %max_direct, ptr nocapture noundef %buf) #0 align 64 {
entry:
  %t.i = alloca i32, align 4
  %t = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_cmp4(i32 %size, i32 %max_direct)
  %cmp.not = icmp sgt i32 %size, %max_direct
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i) #8
  %0 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %t.i, align 4, !annotation !33
  %nbufs.i = getelementptr inbounds %struct.mlx4_buf, ptr %buf, i32 0, i32 2
  %1 = ptrtoint ptr %nbufs.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %nbufs.i, align 4
  %npages.i = getelementptr inbounds %struct.mlx4_buf, ptr %buf, i32 0, i32 3
  %2 = ptrtoint ptr %npages.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %npages.i, align 4
  %dec.i.i = add i32 %size, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %dec.i.i)
  %tobool.not.i.i.i = icmp ult i32 %dec.i.i, 4096
  %shr.i.i = lshr i32 %dec.i.i, 12
  %3 = tail call i32 @llvm.ctlz.i32(i32 %shr.i.i, i1 true) #8, !range !30
  %sub.i.i.i.op = sub nuw nsw i32 44, %3
  %add.i = select i1 %tobool.not.i.i.i, i32 12, i32 %sub.i.i.i.op
  %page_shift.i = getelementptr inbounds %struct.mlx4_buf, ptr %buf, i32 0, i32 4
  %4 = ptrtoint ptr %page_shift.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add.i, ptr %page_shift.i, align 4
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  %call.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev1.i, i32 noundef %size, ptr noundef nonnull %t.i, i32 noundef 3264, i32 noundef 0) #8
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i.i, ptr %buf, align 4
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then.mlx4_buf_direct_alloc.exit_crit_edge, label %if.end.i

if.then.mlx4_buf_direct_alloc.exit_crit_edge:     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %mlx4_buf_direct_alloc.exit

if.end.i:                                         ; preds = %if.then
  %10 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %t.i, align 4
  %map.i = getelementptr inbounds %struct.mlx4_buf_list, ptr %buf, i32 0, i32 1
  %12 = ptrtoint ptr %map.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %map.i, align 4
  %13 = ptrtoint ptr %page_shift.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %page_shift.promoted.i = load i32, ptr %page_shift.i, align 4
  %notmask21.i = shl nsw i32 -1, %page_shift.promoted.i
  %sub22.i = xor i32 %notmask21.i, -1
  %and23.i = and i32 %11, %sub22.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool8.not24.i = icmp eq i32 %and23.i, 0
  br i1 %tobool8.not24.i, label %if.end.i.mlx4_buf_direct_alloc.exit_crit_edge, label %while.body.lr.ph.i

if.end.i.mlx4_buf_direct_alloc.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mlx4_buf_direct_alloc.exit

while.body.lr.ph.i:                               ; preds = %if.end.i
  %14 = ptrtoint ptr %npages.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %npages.promoted.i = load i32, ptr %npages.i, align 4
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %15 = phi i32 [ %npages.promoted.i, %while.body.lr.ph.i ], [ %mul.i, %while.body.i.while.body.i_crit_edge ]
  %dec2025.i = phi i32 [ %page_shift.promoted.i, %while.body.lr.ph.i ], [ %dec.i, %while.body.i.while.body.i_crit_edge ]
  %dec.i = add i32 %dec2025.i, -1
  %mul.i = shl i32 %15, 1
  %notmask.i = shl nsw i32 -1, %dec.i
  %sub.i = xor i32 %notmask.i, -1
  %and.i = and i32 %11, %sub.i
  %tobool8.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool8.not.i, label %while.cond.cleanup.loopexit_crit_edge.i, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.cond.cleanup.loopexit_crit_edge.i:          ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %page_shift.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %dec.i, ptr %page_shift.i, align 4
  %17 = ptrtoint ptr %npages.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %mul.i, ptr %npages.i, align 4
  br label %mlx4_buf_direct_alloc.exit

mlx4_buf_direct_alloc.exit:                       ; preds = %while.cond.cleanup.loopexit_crit_edge.i, %if.end.i.mlx4_buf_direct_alloc.exit_crit_edge, %if.then.mlx4_buf_direct_alloc.exit_crit_edge
  %retval.0.i = phi i32 [ -12, %if.then.mlx4_buf_direct_alloc.exit_crit_edge ], [ 0, %while.cond.cleanup.loopexit_crit_edge.i ], [ 0, %if.end.i.mlx4_buf_direct_alloc.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i) #8
  br label %return

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t) #8
  %18 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %t, align 4, !annotation !33
  %19 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %buf, align 4
  %sub = add i32 %size, 4095
  %div45 = lshr i32 %sub, 12
  %nbufs = getelementptr inbounds %struct.mlx4_buf, ptr %buf, i32 0, i32 2
  %20 = ptrtoint ptr %nbufs to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %div45, ptr %nbufs, align 4
  %npages = getelementptr inbounds %struct.mlx4_buf, ptr %buf, i32 0, i32 3
  %21 = ptrtoint ptr %npages to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %div45, ptr %npages, align 4
  %page_shift = getelementptr inbounds %struct.mlx4_buf, ptr %buf, i32 0, i32 4
  %22 = ptrtoint ptr %page_shift to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 12, ptr %page_shift, align 4
  %23 = shl nuw nsw i32 %div45, 3
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %23, i32 noundef 3520) #12
  %page_list = getelementptr inbounds %struct.mlx4_buf, ptr %buf, i32 0, i32 1
  %24 = ptrtoint ptr %page_list to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call8.i.i, ptr %page_list, align 4
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %cleanup.thread, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.else
  %25 = ptrtoint ptr %nbufs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nbufs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp862 = icmp sgt i32 %26, 0
  br i1 %cmp862, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.if.end22_crit_edge

for.cond.preheader.if.end22_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %if.end18.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.063 = phi i32 [ %inc, %if.end18.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %dev9 = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %dev9, i32 noundef 4096, ptr noundef nonnull %t, i32 noundef 3264, i32 noundef 0) #8
  %31 = ptrtoint ptr %page_list to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %page_list, align 4
  %arrayidx = getelementptr %struct.mlx4_buf_list, ptr %32, i32 %i.063
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call.i, ptr %arrayidx, align 4
  %34 = load ptr, ptr %page_list, align 4
  %arrayidx14 = getelementptr %struct.mlx4_buf_list, ptr %34, i32 %i.063
  %35 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx14, align 4
  %tobool16.not = icmp eq ptr %36, null
  br i1 %tobool16.not, label %err_free, label %if.end18

if.end18:                                         ; preds = %for.body
  %37 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %t, align 4
  %map = getelementptr %struct.mlx4_buf_list, ptr %34, i32 %i.063, i32 1
  %39 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %map, align 4
  %inc = add nuw nsw i32 %i.063, 1
  %40 = ptrtoint ptr %nbufs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %nbufs, align 4
  %cmp8 = icmp slt i32 %inc, %41
  br i1 %cmp8, label %if.end18.for.body_crit_edge, label %if.end18.if.end22_crit_edge

if.end18.if.end22_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.end18.for.body_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup.thread:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t) #8
  br label %return

if.end22:                                         ; preds = %if.end18.if.end22_crit_edge, %for.cond.preheader.if.end22_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t) #8
  br label %return

err_free:                                         ; preds = %for.body
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t) #8
  %42 = ptrtoint ptr %nbufs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %nbufs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %43)
  %cmp.i = icmp eq i32 %43, 1
  br i1 %cmp.i, label %if.then.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %err_free
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp531.i = icmp sgt i32 %43, 0
  br i1 %cmp531.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

if.then.i:                                        ; preds = %err_free
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev, align 8
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  %dev1.i49 = getelementptr inbounds %struct.pci_dev, ptr %47, i32 0, i32 44
  %48 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %buf, align 4
  %map.i50 = getelementptr inbounds %struct.mlx4_buf_list, ptr %buf, i32 0, i32 1
  %50 = ptrtoint ptr %map.i50 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %map.i50, align 4
  call void @dma_free_attrs(ptr noundef %dev1.i49, i32 noundef %size, ptr noundef %49, i32 noundef %51, i32 noundef 0) #8
  br label %return

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.032.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %52 = ptrtoint ptr %page_list to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %page_list, align 4
  %arrayidx.i = getelementptr %struct.mlx4_buf_list, ptr %53, i32 %i.032.i
  %54 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i51 = icmp eq ptr %55, null
  br i1 %tobool.not.i51, label %for.body.i.for.inc.i_crit_edge, label %if.then7.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then7.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %56 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev, align 8
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 4
  %dev10.i = getelementptr inbounds %struct.pci_dev, ptr %59, i32 0, i32 44
  %map16.i = getelementptr %struct.mlx4_buf_list, ptr %53, i32 %i.032.i, i32 1
  %60 = ptrtoint ptr %map16.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %map16.i, align 4
  call void @dma_free_attrs(ptr noundef %dev10.i, i32 noundef 4096, ptr noundef nonnull %55, i32 noundef %61, i32 noundef 0) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then7.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.032.i, 1
  %62 = ptrtoint ptr %nbufs to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %nbufs, align 4
  %cmp5.i = icmp slt i32 %inc.i, %63
  br i1 %cmp5.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %64 = ptrtoint ptr %page_list to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %page_list, align 4
  call void @kfree(ptr noundef %65) #8
  br label %return

return:                                           ; preds = %for.end.i, %if.then.i, %if.end22, %cleanup.thread, %mlx4_buf_direct_alloc.exit
  %retval.1 = phi i32 [ %retval.0.i, %mlx4_buf_direct_alloc.exit ], [ 0, %if.end22 ], [ -12, %cleanup.thread ], [ -12, %if.then.i ], [ -12, %for.end.i ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx4_buf_free(ptr nocapture noundef readonly %dev, i32 noundef %size, ptr nocapture noundef readonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %nbufs = getelementptr inbounds %struct.mlx4_buf, ptr %buf, i32 0, i32 2
  %0 = ptrtoint ptr %nbufs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nbufs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %2 = ptrtoint ptr %nbufs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nbufs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp531 = icmp sgt i32 %3, 0
  br i1 %cmp531, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %page_list = getelementptr inbounds %struct.mlx4_buf, ptr %buf, i32 0, i32 1
  br label %for.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buf, align 4
  %map = getelementptr inbounds %struct.mlx4_buf_list, ptr %buf, i32 0, i32 1
  %10 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %map, align 4
  tail call void @dma_free_attrs(ptr noundef %dev1, i32 noundef %size, ptr noundef %9, i32 noundef %11, i32 noundef 0) #8
  br label %if.end18

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.032 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %12 = ptrtoint ptr %page_list to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %page_list, align 4
  %arrayidx = getelementptr %struct.mlx4_buf_list, ptr %13, i32 %i.032
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then7

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then7:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %dev10 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %map16 = getelementptr %struct.mlx4_buf_list, ptr %13, i32 %i.032, i32 1
  %20 = ptrtoint ptr %map16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %map16, align 4
  tail call void @dma_free_attrs(ptr noundef %dev10, i32 noundef 4096, ptr noundef nonnull %15, i32 noundef %21, i32 noundef 0) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then7, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.032, 1
  %22 = ptrtoint ptr %nbufs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nbufs, align 4
  %cmp5 = icmp slt i32 %inc, %23
  br i1 %cmp5, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %page_list17 = getelementptr inbounds %struct.mlx4_buf, ptr %buf, i32 0, i32 1
  %24 = ptrtoint ptr %page_list17 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %page_list17, align 4
  tail call void @kfree(ptr noundef %25) #8
  br label %if.end18

if.end18:                                         ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx4_db_alloc(ptr noundef %dev, ptr nocapture noundef writeonly %db, i32 noundef %order) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pgdir_mutex = getelementptr inbounds %struct.mlx4_priv, ptr %dev, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %pgdir_mutex, i32 noundef 0) #8
  %pgdir_list = getelementptr inbounds %struct.mlx4_priv, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %pgdir_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %pgdir.0101 = load ptr, ptr %pgdir_list, align 4
  %cmp.not102 = icmp eq ptr %pgdir.0101, %pgdir_list
  br i1 %cmp.not102, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %order)
  %cmp41.i = icmp slt i32 %order, 2
  br label %for.body

for.body:                                         ; preds = %mlx4_alloc_db_from_pgdir.exit.for.body_crit_edge, %for.body.lr.ph
  %pgdir.0103 = phi ptr [ %pgdir.0101, %for.body.lr.ph ], [ %pgdir.0, %mlx4_alloc_db_from_pgdir.exit.for.body_crit_edge ]
  br i1 %cmp41.i, label %for.body.for.body.i_crit_edge, label %for.body.mlx4_alloc_db_from_pgdir.exit_crit_edge

for.body.mlx4_alloc_db_from_pgdir.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %mlx4_alloc_db_from_pgdir.exit

for.body.for.body.i_crit_edge:                    ; preds = %for.body
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.for.body.i_crit_edge
  %o.042.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ %order, %for.body.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mlx4_db_pgdir, ptr %pgdir.0103, i32 0, i32 3, i32 %o.042.i
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx.i, align 4
  %shr.i = lshr i32 1024, %o.042.i
  %call.i = tail call i32 @_find_first_bit_be(ptr noundef %2, i32 noundef %shr.i) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %shr.i)
  %cmp2.i = icmp slt i32 %call.i, %shr.i
  br i1 %cmp2.i, label %found.i, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add i32 %o.042.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 2
  br i1 %exitcond.not.i, label %for.inc.i.mlx4_alloc_db_from_pgdir.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.mlx4_alloc_db_from_pgdir.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mlx4_alloc_db_from_pgdir.exit

found.i:                                          ; preds = %for.body.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i, align 4
  tail call void @_clear_bit(i32 noundef %call.i, ptr noundef %4) #8
  %shl.i = shl i32 %call.i, %o.042.i
  call void @__sanitizer_cov_trace_cmp4(i32 %o.042.i, i32 %order)
  %cmp5.i = icmp sgt i32 %o.042.i, %order
  br i1 %cmp5.i, label %if.then6.i, label %found.i.mlx4_alloc_db_from_pgdir.exit.thread_crit_edge

found.i.mlx4_alloc_db_from_pgdir.exit.thread_crit_edge: ; preds = %found.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mlx4_alloc_db_from_pgdir.exit.thread

if.then6.i:                                       ; preds = %found.i
  call void @__sanitizer_cov_trace_pc() #10
  %xor.i = xor i32 %shl.i, 1
  %arrayidx8.i = getelementptr %struct.mlx4_db_pgdir, ptr %pgdir.0103, i32 0, i32 3, i32 %order
  %5 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx8.i, align 4
  tail call void @_set_bit(i32 noundef %xor.i, ptr noundef %6) #8
  br label %mlx4_alloc_db_from_pgdir.exit.thread

mlx4_alloc_db_from_pgdir.exit.thread:             ; preds = %if.then6.i, %found.i.mlx4_alloc_db_from_pgdir.exit.thread_crit_edge
  %u.i = getelementptr inbounds %struct.mlx4_db, ptr %db, i32 0, i32 1
  %7 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %pgdir.0103, ptr %u.i, align 4
  %index.i = getelementptr inbounds %struct.mlx4_db, ptr %db, i32 0, i32 3
  %8 = ptrtoint ptr %index.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %shl.i, ptr %index.i, align 4
  %db_page.i = getelementptr inbounds %struct.mlx4_db_pgdir, ptr %pgdir.0103, i32 0, i32 4
  %9 = ptrtoint ptr %db_page.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %db_page.i, align 4
  %add.ptr.i = getelementptr i32, ptr %10, i32 %shl.i
  %11 = ptrtoint ptr %db to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %add.ptr.i, ptr %db, align 4
  %db_dma.i = getelementptr inbounds %struct.mlx4_db_pgdir, ptr %pgdir.0103, i32 0, i32 5
  %12 = ptrtoint ptr %db_dma.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %db_dma.i, align 4
  %mul.i = shl i32 %shl.i, 2
  %add.i = add i32 %13, %mul.i
  %dma.i = getelementptr inbounds %struct.mlx4_db, ptr %db, i32 0, i32 2
  %14 = ptrtoint ptr %dma.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add.i, ptr %dma.i, align 4
  %order13.i = getelementptr inbounds %struct.mlx4_db, ptr %db, i32 0, i32 4
  %15 = ptrtoint ptr %order13.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %order, ptr %order13.i, align 4
  br label %out

mlx4_alloc_db_from_pgdir.exit:                    ; preds = %for.inc.i.mlx4_alloc_db_from_pgdir.exit_crit_edge, %for.body.mlx4_alloc_db_from_pgdir.exit_crit_edge
  %16 = ptrtoint ptr %pgdir.0103 to i32
  call void @__asan_load4_noabort(i32 %16)
  %pgdir.0 = load ptr, ptr %pgdir.0103, align 4
  %cmp.not = icmp eq ptr %pgdir.0, %pgdir_list
  br i1 %cmp.not, label %mlx4_alloc_db_from_pgdir.exit.for.end_crit_edge, label %mlx4_alloc_db_from_pgdir.exit.for.body_crit_edge

mlx4_alloc_db_from_pgdir.exit.for.body_crit_edge: ; preds = %mlx4_alloc_db_from_pgdir.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

mlx4_alloc_db_from_pgdir.exit.for.end_crit_edge:  ; preds = %mlx4_alloc_db_from_pgdir.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %mlx4_alloc_db_from_pgdir.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %21 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3520, i32 noundef 216) #11
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %for.end.out_crit_edge, label %if.end.i

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end.i:                                         ; preds = %for.end
  %dev8 = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  %order1.i = getelementptr inbounds %struct.mlx4_db_pgdir, ptr %call7.i.i.i, i32 0, i32 2
  %22 = call ptr @memset(ptr %order1.i, i32 255, i32 64)
  %order0.i = getelementptr inbounds %struct.mlx4_db_pgdir, ptr %call7.i.i.i, i32 0, i32 1
  %bits.i = getelementptr inbounds %struct.mlx4_db_pgdir, ptr %call7.i.i.i, i32 0, i32 3
  %23 = ptrtoint ptr %bits.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %order0.i, ptr %bits.i, align 8
  %arrayidx5.i = getelementptr %struct.mlx4_db_pgdir, ptr %call7.i.i.i, i32 0, i32 3, i32 1
  %24 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %order1.i, ptr %arrayidx5.i, align 4
  %db_dma.i54 = getelementptr inbounds %struct.mlx4_db_pgdir, ptr %call7.i.i.i, i32 0, i32 5
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev8, i32 noundef 4096, ptr noundef %db_dma.i54, i32 noundef 3264, i32 noundef 0) #8
  %db_page.i55 = getelementptr inbounds %struct.mlx4_db_pgdir, ptr %call7.i.i.i, i32 0, i32 4
  %25 = ptrtoint ptr %db_page.i55 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i.i, ptr %db_page.i55, align 8
  %tobool8.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool8.not.i, label %if.then9.i, label %if.end12

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  br label %out

if.end12:                                         ; preds = %if.end.i
  %26 = ptrtoint ptr %pgdir_list to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pgdir_list, align 4
  %call.i.i57 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %pgdir_list, ptr noundef %27) #8
  br i1 %call.i.i57, label %if.end.i.i, label %if.end12.list_add.exit_crit_edge

if.end12.list_add.exit_crit_edge:                 ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call7.i.i.i, ptr %prev1.i.i, align 4
  %29 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %27, ptr %call7.i.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %30 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %pgdir_list, ptr %prev3.i.i, align 4
  %31 = ptrtoint ptr %pgdir_list to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %call7.i.i.i, ptr %pgdir_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end12.list_add.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %order)
  %cmp41.i58 = icmp slt i32 %order, 2
  br i1 %cmp41.i58, label %list_add.exit.for.body.i64_crit_edge, label %list_add.exit.do.end_crit_edge

list_add.exit.do.end_crit_edge:                   ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

list_add.exit.for.body.i64_crit_edge:             ; preds = %list_add.exit
  br label %for.body.i64

for.body.i64:                                     ; preds = %for.inc.i67.for.body.i64_crit_edge, %list_add.exit.for.body.i64_crit_edge
  %o.042.i59 = phi i32 [ %inc.i65, %for.inc.i67.for.body.i64_crit_edge ], [ %order, %list_add.exit.for.body.i64_crit_edge ]
  %arrayidx.i60 = getelementptr %struct.mlx4_db_pgdir, ptr %call7.i.i.i, i32 0, i32 3, i32 %o.042.i59
  %32 = ptrtoint ptr %arrayidx.i60 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.i60, align 4
  %shr.i61 = lshr i32 1024, %o.042.i59
  %call.i62 = tail call i32 @_find_first_bit_be(ptr noundef %33, i32 noundef %shr.i61) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i62, i32 %shr.i61)
  %cmp2.i63 = icmp slt i32 %call.i62, %shr.i61
  br i1 %cmp2.i63, label %found.i70, label %for.inc.i67

for.inc.i67:                                      ; preds = %for.body.i64
  %inc.i65 = add i32 %o.042.i59, 1
  %exitcond.not.i66 = icmp eq i32 %inc.i65, 2
  br i1 %exitcond.not.i66, label %for.inc.i67.do.end_crit_edge, label %for.inc.i67.for.body.i64_crit_edge

for.inc.i67.for.body.i64_crit_edge:               ; preds = %for.inc.i67
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i64

for.inc.i67.do.end_crit_edge:                     ; preds = %for.inc.i67
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

found.i70:                                        ; preds = %for.body.i64
  %34 = ptrtoint ptr %arrayidx.i60 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i60, align 4
  tail call void @_clear_bit(i32 noundef %call.i62, ptr noundef %35) #8
  %shl.i68 = shl i32 %call.i62, %o.042.i59
  call void @__sanitizer_cov_trace_cmp4(i32 %o.042.i59, i32 %order)
  %cmp5.i69 = icmp sgt i32 %o.042.i59, %order
  br i1 %cmp5.i69, label %if.then6.i73, label %found.i70.mlx4_alloc_db_from_pgdir.exit85_crit_edge

found.i70.mlx4_alloc_db_from_pgdir.exit85_crit_edge: ; preds = %found.i70
  call void @__sanitizer_cov_trace_pc() #10
  br label %mlx4_alloc_db_from_pgdir.exit85

if.then6.i73:                                     ; preds = %found.i70
  call void @__sanitizer_cov_trace_pc() #10
  %xor.i71 = xor i32 %shl.i68, 1
  %arrayidx8.i72 = getelementptr %struct.mlx4_db_pgdir, ptr %call7.i.i.i, i32 0, i32 3, i32 %order
  %36 = ptrtoint ptr %arrayidx8.i72 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx8.i72, align 4
  tail call void @_set_bit(i32 noundef %xor.i71, ptr noundef %37) #8
  br label %mlx4_alloc_db_from_pgdir.exit85

mlx4_alloc_db_from_pgdir.exit85:                  ; preds = %if.then6.i73, %found.i70.mlx4_alloc_db_from_pgdir.exit85_crit_edge
  %u.i74 = getelementptr inbounds %struct.mlx4_db, ptr %db, i32 0, i32 1
  %38 = ptrtoint ptr %u.i74 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call7.i.i.i, ptr %u.i74, align 4
  %index.i75 = getelementptr inbounds %struct.mlx4_db, ptr %db, i32 0, i32 3
  %39 = ptrtoint ptr %index.i75 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %shl.i68, ptr %index.i75, align 4
  %40 = ptrtoint ptr %db_page.i55 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %db_page.i55, align 8
  %add.ptr.i77 = getelementptr i32, ptr %41, i32 %shl.i68
  %42 = ptrtoint ptr %db to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %add.ptr.i77, ptr %db, align 4
  %43 = ptrtoint ptr %db_dma.i54 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %db_dma.i54, align 4
  %mul.i79 = shl i32 %shl.i68, 2
  %add.i80 = add i32 %44, %mul.i79
  %dma.i81 = getelementptr inbounds %struct.mlx4_db, ptr %db, i32 0, i32 2
  %45 = ptrtoint ptr %dma.i81 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %add.i80, ptr %dma.i81, align 4
  %order13.i82 = getelementptr inbounds %struct.mlx4_db, ptr %db, i32 0, i32 4
  %46 = ptrtoint ptr %order13.i82 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %order, ptr %order13.i82, align 4
  br label %out

do.end:                                           ; preds = %for.inc.i67.do.end_crit_edge, %list_add.exit.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 736, i32 noundef 9, ptr noundef null) #8
  br label %out

out:                                              ; preds = %do.end, %mlx4_alloc_db_from_pgdir.exit85, %if.then9.i, %for.end.out_crit_edge, %mlx4_alloc_db_from_pgdir.exit.thread
  %ret.0 = phi i32 [ 0, %do.end ], [ 0, %mlx4_alloc_db_from_pgdir.exit85 ], [ 0, %mlx4_alloc_db_from_pgdir.exit.thread ], [ -12, %if.then9.i ], [ -12, %for.end.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %pgdir_mutex) #8
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx4_db_free(ptr noundef %dev, ptr nocapture noundef readonly %db) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pgdir_mutex = getelementptr inbounds %struct.mlx4_priv, ptr %dev, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %pgdir_mutex, i32 noundef 0) #8
  %order = getelementptr inbounds %struct.mlx4_db, ptr %db, i32 0, i32 4
  %0 = ptrtoint ptr %order to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %order, align 4
  %index = getelementptr inbounds %struct.mlx4_db, ptr %db, i32 0, i32 3
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %xor = xor i32 %3, 1
  %u = getelementptr inbounds %struct.mlx4_db, ptr %db, i32 0, i32 1
  %4 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %u, align 4
  %order0 = getelementptr inbounds %struct.mlx4_db_pgdir, ptr %5, i32 0, i32 1
  %div3.i = lshr i32 %3, 5
  %arrayidx.i = getelementptr i32, ptr %order0, i32 %div3.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %xor, 31
  %8 = shl nuw i32 1, %and.i
  %9 = and i32 %7, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_clear_bit(i32 noundef %xor, ptr noundef %order0) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %o.0 = phi i32 [ 1, %if.then ], [ 0, %land.lhs.true.if.end_crit_edge ], [ %1, %entry.if.end_crit_edge ]
  %shr = ashr i32 %3, %o.0
  %u7 = getelementptr inbounds %struct.mlx4_db, ptr %db, i32 0, i32 1
  %10 = ptrtoint ptr %u7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %u7, align 4
  %arrayidx = getelementptr %struct.mlx4_db_pgdir, ptr %11, i32 0, i32 3, i32 %o.0
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  tail call void @_set_bit(i32 noundef %shr, ptr noundef %13) #8
  %14 = ptrtoint ptr %u7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %u7, align 4
  %order19 = getelementptr inbounds %struct.mlx4_db_pgdir, ptr %15, i32 0, i32 2
  %call.i = tail call i32 @_find_first_zero_bit_be(ptr noundef %order19, i32 noundef 512) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %call.i)
  %cmp4.i = icmp eq i32 %call.i, 512
  br i1 %cmp4.i, label %if.then12, label %if.end.if.end18_crit_edge

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then12:                                        ; preds = %if.end
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %dev13 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %20 = ptrtoint ptr %u7 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %u7, align 4
  %db_page = getelementptr inbounds %struct.mlx4_db_pgdir, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %db_page to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %db_page, align 4
  %db_dma = getelementptr inbounds %struct.mlx4_db_pgdir, ptr %21, i32 0, i32 5
  %24 = ptrtoint ptr %db_dma to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %db_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev13, i32 noundef 4096, ptr noundef %23, i32 noundef %25, i32 noundef 0) #8
  %26 = ptrtoint ptr %u7 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %u7, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %27) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.then12.list_del.exit_crit_edge

if.then12.list_del.exit_crit_edge:                ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i.i, align 4
  %30 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %27, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev1.i.i.i, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %31, ptr %29, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then12.list_del.exit_crit_edge
  %34 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr inttoptr (i32 256 to ptr), ptr %27, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %35 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %36 = ptrtoint ptr %u7 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %u7, align 4
  tail call void @kfree(ptr noundef %37) #8
  br label %if.end18

if.end18:                                         ; preds = %list_del.exit, %if.end.if.end18_crit_edge
  tail call void @mutex_unlock(ptr noundef %pgdir_mutex) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx4_alloc_hwq_res(ptr noundef %dev, ptr noundef %wqres, i32 noundef %size) #0 align 64 {
entry:
  %t.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mlx4_db_alloc(ptr noundef %dev, ptr noundef %wqres, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %wqres to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wqres, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %1, align 4
  %buf = getelementptr inbounds %struct.mlx4_hwq_resources, ptr %wqres, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i) #8
  %3 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %t.i, align 4, !annotation !33
  %nbufs.i = getelementptr inbounds %struct.mlx4_hwq_resources, ptr %wqres, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %nbufs.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %nbufs.i, align 4
  %npages.i = getelementptr inbounds %struct.mlx4_hwq_resources, ptr %wqres, i32 0, i32 2, i32 3
  %5 = ptrtoint ptr %npages.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %npages.i, align 4
  %dec.i.i = add i32 %size, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %dec.i.i)
  %tobool.not.i.i.i = icmp ult i32 %dec.i.i, 4096
  %shr.i.i = lshr i32 %dec.i.i, 12
  %6 = tail call i32 @llvm.ctlz.i32(i32 %shr.i.i, i1 true) #8, !range !30
  %sub.i.i.i.op = sub nuw nsw i32 44, %6
  %add.i = select i1 %tobool.not.i.i.i, i32 12, i32 %sub.i.i.i.op
  %page_shift.i = getelementptr inbounds %struct.mlx4_hwq_resources, ptr %wqres, i32 0, i32 2, i32 4
  %7 = ptrtoint ptr %page_shift.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %add.i, ptr %page_shift.i, align 4
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %call.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev1.i, i32 noundef %size, ptr noundef nonnull %t.i, i32 noundef 3264, i32 noundef 0) #8
  %12 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i.i, ptr %buf, align 4
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %mlx4_buf_direct_alloc.exit, label %if.end.i

if.end.i:                                         ; preds = %if.end
  %13 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %t.i, align 4
  %map.i = getelementptr inbounds %struct.mlx4_hwq_resources, ptr %wqres, i32 0, i32 2, i32 0, i32 1
  %15 = ptrtoint ptr %map.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %map.i, align 4
  %16 = ptrtoint ptr %page_shift.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %page_shift.promoted.i = load i32, ptr %page_shift.i, align 4
  %notmask21.i = shl nsw i32 -1, %page_shift.promoted.i
  %sub22.i = xor i32 %notmask21.i, -1
  %and23.i = and i32 %14, %sub22.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool8.not24.i = icmp eq i32 %and23.i, 0
  br i1 %tobool8.not24.i, label %if.end.i.if.end6_crit_edge, label %while.body.lr.ph.i

if.end.i.if.end6_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

while.body.lr.ph.i:                               ; preds = %if.end.i
  %17 = ptrtoint ptr %npages.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %npages.promoted.i = load i32, ptr %npages.i, align 4
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %18 = phi i32 [ %npages.promoted.i, %while.body.lr.ph.i ], [ %mul.i, %while.body.i.while.body.i_crit_edge ]
  %dec2025.i = phi i32 [ %page_shift.promoted.i, %while.body.lr.ph.i ], [ %dec.i, %while.body.i.while.body.i_crit_edge ]
  %dec.i = add i32 %dec2025.i, -1
  %mul.i = shl i32 %18, 1
  %notmask.i = shl nsw i32 -1, %dec.i
  %sub.i = xor i32 %notmask.i, -1
  %and.i = and i32 %14, %sub.i
  %tobool8.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool8.not.i, label %while.cond.cleanup.loopexit_crit_edge.i, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.cond.cleanup.loopexit_crit_edge.i:          ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %page_shift.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %dec.i, ptr %page_shift.i, align 4
  %20 = ptrtoint ptr %npages.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %mul.i, ptr %npages.i, align 4
  br label %if.end6

mlx4_buf_direct_alloc.exit:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i) #8
  br label %err_db

if.end6:                                          ; preds = %while.cond.cleanup.loopexit_crit_edge.i, %if.end.i.if.end6_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i) #8
  %21 = ptrtoint ptr %npages.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %npages.i, align 4
  %23 = ptrtoint ptr %page_shift.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %page_shift.i, align 4
  %mtt = getelementptr inbounds %struct.mlx4_hwq_resources, ptr %wqres, i32 0, i32 1
  %call9 = call i32 @mlx4_mtt_init(ptr noundef %dev, i32 noundef %22, i32 noundef %24, ptr noundef %mtt) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end6.err_buf_crit_edge

if.end6.err_buf_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_buf

if.end12:                                         ; preds = %if.end6
  %call15 = call i32 @mlx4_buf_write_mtt(ptr noundef %dev, ptr noundef %mtt, ptr noundef %buf) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end12.cleanup_crit_edge, label %err_mtt

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

err_mtt:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  call void @mlx4_mtt_cleanup(ptr noundef %dev, ptr noundef %mtt) #8
  br label %err_buf

err_buf:                                          ; preds = %err_mtt, %if.end6.err_buf_crit_edge
  %err.0 = phi i32 [ %call9, %if.end6.err_buf_crit_edge ], [ %call15, %err_mtt ]
  %25 = ptrtoint ptr %nbufs.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nbufs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp.i = icmp eq i32 %26, 1
  br i1 %cmp.i, label %if.then.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %err_buf
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp531.i = icmp sgt i32 %26, 0
  br i1 %cmp531.i, label %for.body.lr.ph.i, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %page_list.i = getelementptr inbounds %struct.mlx4_hwq_resources, ptr %wqres, i32 0, i32 2, i32 1
  br label %for.body.i

if.then.i:                                        ; preds = %err_buf
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %dev1.i45 = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44
  %31 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %buf, align 4
  %33 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %map.i, align 4
  call void @dma_free_attrs(ptr noundef %dev1.i45, i32 noundef %size, ptr noundef %32, i32 noundef %34, i32 noundef 0) #8
  br label %err_db

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.032.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %35 = ptrtoint ptr %page_list.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %page_list.i, align 4
  %arrayidx.i = getelementptr %struct.mlx4_buf_list, ptr %36, i32 %i.032.i
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i47 = icmp eq ptr %38, null
  br i1 %tobool.not.i47, label %for.body.i.for.inc.i_crit_edge, label %if.then7.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then7.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev, align 8
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %dev10.i = getelementptr inbounds %struct.pci_dev, ptr %42, i32 0, i32 44
  %map16.i = getelementptr %struct.mlx4_buf_list, ptr %36, i32 %i.032.i, i32 1
  %43 = ptrtoint ptr %map16.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %map16.i, align 4
  call void @dma_free_attrs(ptr noundef %dev10.i, i32 noundef 4096, ptr noundef nonnull %38, i32 noundef %44, i32 noundef 0) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then7.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.032.i, 1
  %45 = ptrtoint ptr %nbufs.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %nbufs.i, align 4
  %cmp5.i = icmp slt i32 %inc.i, %46
  br i1 %cmp5.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %page_list17.i = getelementptr inbounds %struct.mlx4_hwq_resources, ptr %wqres, i32 0, i32 2, i32 1
  %47 = ptrtoint ptr %page_list17.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %page_list17.i, align 4
  call void @kfree(ptr noundef %48) #8
  br label %err_db

err_db:                                           ; preds = %for.end.i, %if.then.i, %mlx4_buf_direct_alloc.exit
  %err.1 = phi i32 [ -12, %mlx4_buf_direct_alloc.exit ], [ %err.0, %if.then.i ], [ %err.0, %for.end.i ]
  call void @mlx4_db_free(ptr noundef %dev, ptr noundef %wqres)
  br label %cleanup

cleanup:                                          ; preds = %err_db, %if.end12.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %err_db ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_mtt_init(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_buf_write_mtt(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_mtt_cleanup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx4_free_hwq_res(ptr noundef %dev, ptr noundef %wqres, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mtt = getelementptr inbounds %struct.mlx4_hwq_resources, ptr %wqres, i32 0, i32 1
  tail call void @mlx4_mtt_cleanup(ptr noundef %dev, ptr noundef %mtt) #8
  %nbufs.i = getelementptr inbounds %struct.mlx4_hwq_resources, ptr %wqres, i32 0, i32 2, i32 2
  %0 = ptrtoint ptr %nbufs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nbufs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i = icmp eq i32 %1, 1
  br i1 %cmp.i, label %if.then.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp531.i = icmp sgt i32 %1, 0
  br i1 %cmp531.i, label %for.body.lr.ph.i, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %page_list.i = getelementptr inbounds %struct.mlx4_hwq_resources, ptr %wqres, i32 0, i32 2, i32 1
  br label %for.body.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %buf = getelementptr inbounds %struct.mlx4_hwq_resources, ptr %wqres, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buf, align 4
  %map.i = getelementptr inbounds %struct.mlx4_hwq_resources, ptr %wqres, i32 0, i32 2, i32 0, i32 1
  %8 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %map.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev1.i, i32 noundef %size, ptr noundef %7, i32 noundef %9, i32 noundef 0) #8
  br label %mlx4_buf_free.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.032.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %10 = ptrtoint ptr %page_list.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %page_list.i, align 4
  %arrayidx.i = getelementptr %struct.mlx4_buf_list, ptr %11, i32 %i.032.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then7.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then7.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %dev10.i = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  %map16.i = getelementptr %struct.mlx4_buf_list, ptr %11, i32 %i.032.i, i32 1
  %18 = ptrtoint ptr %map16.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %map16.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev10.i, i32 noundef 4096, ptr noundef nonnull %13, i32 noundef %19, i32 noundef 0) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then7.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.032.i, 1
  %20 = ptrtoint ptr %nbufs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nbufs.i, align 4
  %cmp5.i = icmp slt i32 %inc.i, %21
  br i1 %cmp5.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %page_list17.i = getelementptr inbounds %struct.mlx4_hwq_resources, ptr %wqres, i32 0, i32 2, i32 1
  %22 = ptrtoint ptr %page_list17.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %page_list17.i, align 4
  tail call void @kfree(ptr noundef %23) #8
  br label %mlx4_buf_free.exit

mlx4_buf_free.exit:                               ; preds = %for.end.i, %if.then.i
  tail call void @mlx4_db_free(ptr noundef %dev, ptr noundef %wqres)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_clear(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @mlx4_bitmap_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx4/alloc.c", i32 187, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @mlx4_zone_allocator_create.__key, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/mellanox/mlx4/alloc.c", i32 233, i32 2}
!5 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @__ksymtab_mlx4_buf_alloc, !7, !"__ksymtab_mlx4_buf_alloc", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/mellanox/mlx4/alloc.c", i32 642, i32 1}
!8 = !{ptr @__ksymtab_mlx4_buf_free, !9, !"__ksymtab_mlx4_buf_free", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mellanox/mlx4/alloc.c", i32 661, i32 1}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/mellanox/mlx4/alloc.c", i32 736, i32 2}
!12 = !{ptr @__ksymtab_mlx4_db_alloc, !13, !"__ksymtab_mlx4_db_alloc", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/mellanox/mlx4/alloc.c", i32 743, i32 1}
!14 = !{ptr @__ksymtab_mlx4_db_free, !15, !"__ksymtab_mlx4_db_free", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/mellanox/mlx4/alloc.c", i32 772, i32 1}
!16 = !{ptr @__ksymtab_mlx4_alloc_hwq_res, !17, !"__ksymtab_mlx4_alloc_hwq_res", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/mellanox/mlx4/alloc.c", i32 809, i32 1}
!18 = !{ptr @__ksymtab_mlx4_free_hwq_res, !19, !"__ksymtab_mlx4_free_hwq_res", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/mellanox/mlx4/alloc.c", i32 818, i32 1}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{!"branch_weights", i32 -294967296, i32 6003000}
!30 = !{i32 0, i32 33}
!31 = !{!"branch_weights", i32 1, i32 2000}
!32 = !{!"branch_weights", i32 2000, i32 1}
!33 = !{!"auto-init"}
