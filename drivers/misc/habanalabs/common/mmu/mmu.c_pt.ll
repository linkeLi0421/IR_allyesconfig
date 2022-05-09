; ModuleID = '/llk/IR_all_yes/drivers/misc/habanalabs/common/mmu/mmu.c_pt.bc'
source_filename = "../drivers/misc/habanalabs/common/mmu/mmu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hl_device = type { ptr, [6 x i64], [6 x ptr], ptr, %struct.cdev, %struct.cdev, ptr, ptr, %struct.delayed_work, %struct.hl_device_reset_work, [32 x i8], [5 x [32 x i8]], i32, ptr, ptr, %struct.hl_user_interrupt, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.hl_cb_mgr, %struct.hl_eq, ptr, ptr, i32, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.asic_fixed_properties, ptr, ptr, %struct.hl_vm, ptr, ptr, %struct.hl_dbg_device_entry, %struct.list_head, %struct.spinlock, ptr, i32, ptr, i64, %struct.list_head, %struct.list_head, %struct.mutex, %struct.mutex, %struct.hl_cs_counters_atomic, %struct.hl_mmu_priv, [2 x %struct.hl_mmu_funcs], %struct.fw_load_mgr, [4 x %struct.pci_mem_region], %struct.hl_state_dump_specs, [2 x %struct.multi_cs_completion], %struct.hl_clk_throttle, %struct.last_error_session_info, %struct.hl_reset_info, ptr, %struct.atomic64_t, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hl_device_reset_work = type { ptr, %struct.delayed_work, ptr, i32 }
%struct.hl_user_interrupt = type { ptr, %struct.list_head, %struct.spinlock, i32 }
%struct.hl_cb_mgr = type { %struct.spinlock, %struct.idr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.hl_eq = type { ptr, ptr, i32, i32, i32, i8 }
%struct.asic_fixed_properties = type { ptr, %struct.cpucp_info, [128 x i8], [128 x i8], %struct.hl_mmu_properties, %struct.hl_mmu_properties, %struct.hl_mmu_properties, %struct.hl_hints_range, %struct.hl_hints_range, %struct.hl_hints_range, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [4 x i16], [4 x i16], i16, [4 x i16], i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.cpucp_info = type { [128 x %struct.cpucp_sensor], [128 x i8], i32, i32, i32, i32, i32, [128 x i8], [128 x i8], [128 x i8], i32, i64, [16 x i8], i64, i64, i8, i8, i8, i8, i8, [3 x i8], %struct.cpucp_security_info, i32, [16 x i8], i64 }
%struct.cpucp_sensor = type { i32, i32 }
%struct.cpucp_security_info = type { i8, i8, i8, i8 }
%struct.hl_mmu_properties = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i8 }
%struct.hl_hints_range = type { i64, i64 }
%struct.hl_vm = type { ptr, %struct.kref, %struct.spinlock, %struct.idr, i8 }
%struct.hl_dbg_device_entry = type { ptr, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.debugfs_blob_wrapper, [5 x ptr], %struct.rw_semaphore, i64, i64, i64, i32, i32, i8, i8, i8, i8 }
%struct.debugfs_blob_wrapper = type { ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hl_cs_counters_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.hl_mmu_priv = type { %struct.hl_mmu_dr_priv, %struct.hl_mmu_hr_priv }
%struct.hl_mmu_dr_priv = type { ptr, ptr }
%struct.hl_mmu_hr_priv = type { ptr, ptr }
%struct.hl_mmu_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fw_load_mgr = type { %union.anon.76, %struct.fw_image_props, %struct.fw_image_props, i32, i32, i8, i8, i8, i8 }
%union.anon.76 = type { %struct.dynamic_fw_load_mgr }
%struct.dynamic_fw_load_mgr = type { %struct.fw_response, %struct.lkd_fw_comms_desc, ptr, i32, i32, i8 }
%struct.fw_response = type { i32, i8, i8 }
%struct.lkd_fw_comms_desc = type { %struct.comms_desc_header, %struct.cpu_dyn_regs, [128 x i8], [128 x i8], [128 x i8], i64 }
%struct.comms_desc_header = type { i32, i32, i16, i8, [5 x i8] }
%struct.cpu_dyn_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [22 x i32] }
%struct.fw_image_props = type { ptr, i32, i32 }
%struct.pci_mem_region = type { i64, i64, i64, i64, i8, i8 }
%struct.hl_state_dump_specs = type { [128 x %struct.hlist_head], [128 x %struct.hlist_head], %struct.hl_state_dump_specs_funcs, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.hl_state_dump_specs_funcs = type { ptr, ptr, ptr, ptr }
%struct.multi_cs_completion = type { %struct.completion, %struct.spinlock, i64, i32, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hl_clk_throttle = type { [2 x %struct.hl_clk_throttle_timestamp], %struct.mutex, i32, i32 }
%struct.hl_clk_throttle_timestamp = type { i64, i64 }
%struct.last_error_session_info = type { i64, i64, i64, %struct.atomic_t, %struct.atomic_t, i64, i64, i16, i16, i8, i8 }
%struct.hl_reset_info = type { %struct.spinlock, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.atomic64_t = type { i64 }
%struct.hl_ctx = type { [128 x %struct.hlist_head], [128 x %struct.hlist_head], ptr, ptr, %struct.kref, ptr, [3 x ptr], %struct.mutex, %struct.mutex, %struct.mutex, %struct.list_head, %struct.list_head, %struct.hl_cs_counters_atomic, ptr, %struct.hl_encaps_signals_mgr, i64, ptr, %struct.spinlock, %struct.atomic64_t, %struct.atomic_t, i32, i32, i32 }
%struct.hl_encaps_signals_mgr = type { %struct.spinlock, %struct.idr }
%struct.hl_asic_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hl_mmu_hop_info = type { i64, i64, [5 x %struct.hl_mmu_per_hop_info], i32, i32 }
%struct.hl_mmu_per_hop_info = type { i64, i64, i64 }

@hl_mmu_ctx_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&ctx->mmu_lock\00", [17 x i8] zeroinitializer }, align 32
@hl_mmu_unmap_page._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 187, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"page size of %u is not %uKB aligned, can't unmap\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hl_mmu_unmap_page\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/misc/habanalabs/common/mmu/mmu.c\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hl_mmu_unmap_page._entry_ptr = internal global ptr @hl_mmu_unmap_page._entry, section ".printk_index", align 4
@hl_mmu_map_page._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 279, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"page size of %u is not %uKB aligned, can't map\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hl_mmu_map_page\00", [16 x i8] zeroinitializer }, align 32
@hl_mmu_map_page._entry_ptr = internal global ptr @hl_mmu_map_page._entry, section ".printk_index", align 4
@hl_mmu_map_page._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.3, i32 298, ptr @.str.10, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [128 x i8], [32 x i8] } { [128 x i8] c"Mapping address 0x%llx with virtual address 0x%llx and page size of 0x%x is erroneous! Addresses must be divisible by page size\00", [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\012\00", [29 x i8] zeroinitializer }, align 32
@hl_mmu_map_page._entry_ptr.11 = internal global ptr @hl_mmu_map_page._entry.8, section ".printk_index", align 4
@hl_mmu_map_page._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.12, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@hl_mmu_map_page._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.7, ptr @.str.3, i32 327, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to unmap va: 0x%llx\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@hl_mmu_map_page._entry_ptr.16 = internal global ptr @hl_mmu_map_page._entry.13, section ".printk_index", align 4
@hl_mmu_map_contiguous._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 378, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Map failed for va 0x%llx to pa 0x%llx\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hl_mmu_map_contiguous\00", [42 x i8] zeroinitializer }, align 32
@hl_mmu_map_contiguous._entry_ptr = internal global ptr @hl_mmu_map_contiguous._entry, section ".printk_index", align 4
@hl_mmu_map_contiguous._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.12, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@hl_mmu_map_contiguous._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.3, i32 391, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to unmap va 0x%llx\0A\00", [37 x i8] zeroinitializer }, align 32
@hl_mmu_map_contiguous._entry_ptr.21 = internal global ptr @hl_mmu_map_contiguous._entry.19, section ".printk_index", align 4
@hl_mmu_unmap_contiguous._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.12, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.hl_mmu_unmap_contiguous = private unnamed_addr constant [24 x i8] c"hl_mmu_unmap_contiguous\00", align 1
@hl_mmu_unmap_contiguous._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @__func__.hl_mmu_unmap_contiguous, ptr @.str.3, i32 433, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unmap failed for va 0x%llx\0A\00", [36 x i8] zeroinitializer }, align 32
@hl_mmu_unmap_contiguous._entry_ptr = internal global ptr @hl_mmu_unmap_contiguous._entry, section ".printk_index", align 4
@hl_mmu_if_set_funcs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.3, i32 609, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Unrecognized ASIC type %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hl_mmu_if_set_funcs\00", [44 x i8] zeroinitializer }, align 32
@hl_mmu_if_set_funcs._entry_ptr = internal global ptr @hl_mmu_if_set_funcs._entry, section ".printk_index", align 4
@hl_mmu_invalidate_cache._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.12, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.hl_mmu_invalidate_cache = private unnamed_addr constant [24 x i8] c"hl_mmu_invalidate_cache\00", align 1
@hl_mmu_invalidate_cache._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @__func__.hl_mmu_invalidate_cache, ptr @.str.3, i32 647, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"MMU cache invalidation failed\0A\00", [33 x i8] zeroinitializer }, align 32
@hl_mmu_invalidate_cache._entry_ptr = internal global ptr @hl_mmu_invalidate_cache._entry, section ".printk_index", align 4
@hl_mmu_invalidate_cache_range._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.12, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.hl_mmu_invalidate_cache_range = private unnamed_addr constant [30 x i8] c"hl_mmu_invalidate_cache_range\00", align 1
@hl_mmu_invalidate_cache_range._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @__func__.hl_mmu_invalidate_cache_range, ptr @.str.3, i32 660, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"MMU cache range invalidation failed\0A\00", [59 x i8] zeroinitializer }, align 32
@hl_mmu_invalidate_cache_range._entry_ptr = internal global ptr @hl_mmu_invalidate_cache_range._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.28 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 84, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 185, i32 4 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 277, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 296, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 326, i32 4 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 376, i32 4 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 390, i32 4 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 432, i32 4 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 608, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 647, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.133 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.136 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.137 = private constant [44 x i8] c"../drivers/misc/habanalabs/common/mmu/mmu.c\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 660, i32 3 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @hl_mmu_if_set_funcs._entry, ptr @hl_mmu_if_set_funcs._entry_ptr, ptr @hl_mmu_invalidate_cache._entry, ptr @hl_mmu_invalidate_cache._entry_ptr, ptr @hl_mmu_invalidate_cache_range._entry, ptr @hl_mmu_invalidate_cache_range._entry_ptr, ptr @hl_mmu_map_contiguous._entry, ptr @hl_mmu_map_contiguous._entry.19, ptr @hl_mmu_map_contiguous._entry_ptr, ptr @hl_mmu_map_contiguous._entry_ptr.21, ptr @hl_mmu_map_page._entry, ptr @hl_mmu_map_page._entry.13, ptr @hl_mmu_map_page._entry.8, ptr @hl_mmu_map_page._entry_ptr, ptr @hl_mmu_map_page._entry_ptr.11, ptr @hl_mmu_map_page._entry_ptr.16, ptr @hl_mmu_unmap_contiguous._entry, ptr @hl_mmu_unmap_contiguous._entry_ptr, ptr @hl_mmu_unmap_page._entry, ptr @hl_mmu_unmap_page._entry_ptr, ptr @hl_mmu_ctx_init.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @hl_mmu_map_page._rs, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @hl_mmu_map_contiguous._rs, ptr @.str.20, ptr @hl_mmu_unmap_contiguous._rs, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @hl_mmu_invalidate_cache._rs, ptr @.str.25, ptr @hl_mmu_invalidate_cache_range._rs, ptr @.str.26], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_mmu_ctx_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_mmu_unmap_page._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_mmu_map_page._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_mmu_map_page._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_mmu_map_page._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_mmu_map_page._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_mmu_map_contiguous._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_mmu_map_contiguous._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_mmu_map_contiguous._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_mmu_unmap_contiguous._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_mmu_unmap_contiguous._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_mmu_if_set_funcs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_mmu_invalidate_cache._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_mmu_invalidate_cache._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_mmu_invalidate_cache_range._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_mmu_invalidate_cache_range._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @hl_is_dram_va(ptr nocapture noundef readonly %hdev, i64 noundef %virt_addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dmmu = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 4
  %page_size = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 4, i32 15
  %0 = ptrtoint ptr %page_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %page_size, align 8
  %conv = zext i32 %1 to i64
  %2 = ptrtoint ptr %dmmu to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %dmmu, align 8
  %end_addr = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 4, i32 1
  %4 = ptrtoint ptr %end_addr to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %end_addr, align 8
  %add.i = add i64 %conv, %virt_addr
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %virt_addr)
  %cmp.not.i = icmp ule i64 %3, %virt_addr
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %5)
  %cmp1.not.i = icmp ule i64 %add.i, %5
  %or.cond.not.i = and i1 %cmp.not.i, %cmp1.not.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %virt_addr)
  %cmp3.i = icmp ugt i64 %add.i, %virt_addr
  %or.cond7.i = and i1 %cmp3.i, %or.cond.not.i
  ret i1 %or.cond7.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hl_mmu_init(ptr noundef %hdev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mmu_enable = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 107
  %0 = ptrtoint ptr %mmu_enable to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mmu_enable, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %mmu_func = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 52
  %2 = ptrtoint ptr %mmu_func to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmu_func, align 8
  %cmp.not = icmp eq ptr %3, null
  br i1 %cmp.not, label %if.end.if.end8_crit_edge, label %if.then1

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then1:                                         ; preds = %if.end
  %call = tail call i32 %3(ptr noundef %hdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %if.then1.if.end8_crit_edge, label %if.then1.cleanup_crit_edge

if.then1.cleanup_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then1.if.end8_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.end8:                                          ; preds = %if.then1.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %rc.0 = phi i32 [ 0, %if.then1.if.end8_crit_edge ], [ -95, %if.end.if.end8_crit_edge ]
  %arrayidx10 = getelementptr %struct.hl_device, ptr %hdev, i32 0, i32 52, i32 1
  %4 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx10, align 8
  %cmp12.not = icmp eq ptr %5, null
  br i1 %cmp12.not, label %if.end8.cleanup_crit_edge, label %if.then13

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then13:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %call17 = tail call i32 %5(ptr noundef %hdev) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %if.end8.cleanup_crit_edge, %if.then1.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call, %if.then1.cleanup_crit_edge ], [ %call17, %if.then13 ], [ %rc.0, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hl_mmu_fini(ptr noundef %hdev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mmu_enable = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 107
  %0 = ptrtoint ptr %mmu_enable to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mmu_enable, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end14_crit_edge, label %if.end

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.end:                                           ; preds = %entry
  %fini = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 52, i32 0, i32 1
  %2 = ptrtoint ptr %fini to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fini, align 4
  %cmp.not = icmp eq ptr %3, null
  br i1 %cmp.not, label %if.end.if.end5_crit_edge, label %if.then1

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %3(ptr noundef %hdev) #7
  br label %if.end5

if.end5:                                          ; preds = %if.then1, %if.end.if.end5_crit_edge
  %fini8 = getelementptr %struct.hl_device, ptr %hdev, i32 0, i32 52, i32 1, i32 1
  %4 = ptrtoint ptr %fini8 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fini8, align 4
  %cmp9.not = icmp eq ptr %5, null
  br i1 %cmp9.not, label %if.end5.if.end14_crit_edge, label %if.then10

if.end5.if.end14_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then10:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %5(ptr noundef %hdev) #7
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.end5.if.end14_crit_edge, %entry.if.end14_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hl_mmu_ctx_init(ptr noundef %ctx) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hdev1 = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 3
  %0 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev1, align 4
  %mmu_enable = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 107
  %2 = ptrtoint ptr %mmu_enable to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mmu_enable, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  %mmu_lock = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 8
  tail call void @__mutex_init(ptr noundef %mmu_lock, ptr noundef nonnull @.str, ptr noundef nonnull @hl_mmu_ctx_init.__key) #7
  %ctx_init = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 52, i32 0, i32 2
  %4 = ptrtoint ptr %ctx_init to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx_init, align 8
  %cmp.not = icmp eq ptr %5, null
  br i1 %cmp.not, label %do.body.if.end9_crit_edge, label %if.then2

do.body.if.end9_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then2:                                         ; preds = %do.body
  %call = tail call i32 %5(ptr noundef %ctx) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %if.then2.if.end9_crit_edge, label %if.then2.cleanup_crit_edge

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then2.if.end9_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.end9:                                          ; preds = %if.then2.if.end9_crit_edge, %do.body.if.end9_crit_edge
  %rc.0 = phi i32 [ 0, %if.then2.if.end9_crit_edge ], [ -95, %do.body.if.end9_crit_edge ]
  %ctx_init12 = getelementptr %struct.hl_device, ptr %1, i32 0, i32 52, i32 1, i32 2
  %6 = ptrtoint ptr %ctx_init12 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctx_init12, align 8
  %cmp13.not = icmp eq ptr %7, null
  br i1 %cmp13.not, label %if.end9.cleanup_crit_edge, label %if.then14

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %call18 = tail call i32 %7(ptr noundef %ctx) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %if.end9.cleanup_crit_edge, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call, %if.then2.cleanup_crit_edge ], [ %call18, %if.then14 ], [ %rc.0, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hl_mmu_ctx_fini(ptr noundef %ctx) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hdev1 = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 3
  %0 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev1, align 4
  %mmu_enable = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 107
  %2 = ptrtoint ptr %mmu_enable to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mmu_enable, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %ctx_fini = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 52, i32 0, i32 3
  %4 = ptrtoint ptr %ctx_fini to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx_fini, align 4
  %cmp.not = icmp eq ptr %5, null
  br i1 %cmp.not, label %if.end.if.end6_crit_edge, label %if.then2

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %5(ptr noundef %ctx) #7
  br label %if.end6

if.end6:                                          ; preds = %if.then2, %if.end.if.end6_crit_edge
  %ctx_fini9 = getelementptr %struct.hl_device, ptr %1, i32 0, i32 52, i32 1, i32 3
  %6 = ptrtoint ptr %ctx_fini9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctx_fini9, align 4
  %cmp10.not = icmp eq ptr %7, null
  br i1 %cmp10.not, label %if.end6.if.end15_crit_edge, label %if.then11

if.end6.if.end15_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then11:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %7(ptr noundef %ctx) #7
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.end6.if.end15_crit_edge
  %mmu_lock = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 8
  tail call void @mutex_destroy(ptr noundef %mmu_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hl_mmu_unmap_page(ptr noundef %ctx, i64 noundef %virt_addr, i32 noundef %page_size, i1 noundef zeroext %flush_pte) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hdev1 = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 3
  %0 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev1, align 4
  %mmu_enable = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 107
  %2 = ptrtoint ptr %mmu_enable to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mmu_enable, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %dmmu.i = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 4
  %page_size.i = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 4, i32 15
  %4 = ptrtoint ptr %page_size.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %page_size.i, align 8
  %conv.i = zext i32 %5 to i64
  %6 = ptrtoint ptr %dmmu.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %dmmu.i, align 8
  %end_addr.i = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 4, i32 1
  %8 = ptrtoint ptr %end_addr.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %end_addr.i, align 8
  %add.i.i = add i64 %conv.i, %virt_addr
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %virt_addr)
  %cmp.not.i.i = icmp ule i64 %7, %virt_addr
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i, i64 %9)
  %cmp1.not.i.i = icmp ule i64 %add.i.i, %9
  %or.cond.not.i.i = and i1 %cmp.not.i.i, %cmp1.not.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i, i64 %virt_addr)
  %cmp3.i.i = icmp ugt i64 %add.i.i, %virt_addr
  %or.cond7.i.i = and i1 %cmp3.i.i, %or.cond.not.i.i
  br i1 %or.cond7.i.i, label %if.end10.thread, label %if.else

if.else:                                          ; preds = %if.end
  %page_size5 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 6, i32 15
  %10 = ptrtoint ptr %page_size5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %page_size5, align 8
  %rem = urem i32 %page_size, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp = icmp eq i32 %rem, 0
  %pmmu_huge = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 6
  %pmmu = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 5
  %mmu_prop.0 = select i1 %cmp, ptr %pmmu_huge, ptr %pmmu
  %host_resident = getelementptr inbounds %struct.hl_mmu_properties, ptr %mmu_prop.0, i32 0, i32 17
  %12 = ptrtoint ptr %host_resident to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %host_resident, align 8
  %page_size12 = getelementptr inbounds %struct.hl_mmu_properties, ptr %mmu_prop.0, i32 0, i32 15
  %14 = ptrtoint ptr %page_size12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %page_size12, align 8
  %rem13 = urem i32 %page_size, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem13)
  %cmp14 = icmp eq i32 %rem13, 0
  br i1 %cmp14, label %if.else.if.end29_crit_edge, label %if.else.do.end_crit_edge

if.else.do.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.else.if.end29_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.end10.thread:                                  ; preds = %if.end
  %host_resident80 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 4, i32 17
  %16 = ptrtoint ptr %host_resident80 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %host_resident80, align 8
  %18 = ptrtoint ptr %page_size.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %page_size.i, align 8
  %rem1384 = urem i32 %page_size, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem1384)
  %cmp1485 = icmp eq i32 %rem1384, 0
  br i1 %cmp1485, label %if.end10.thread.if.end29_crit_edge, label %land.lhs.true

if.end10.thread.if.end29_crit_edge:               ; preds = %if.end10.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

land.lhs.true:                                    ; preds = %if.end10.thread
  %dram_page_size = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 35
  %20 = ptrtoint ptr %dram_page_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dram_page_size, align 4
  %rem21 = urem i32 %page_size, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem21)
  %cmp22 = icmp eq i32 %rem21, 0
  br i1 %cmp22, label %land.lhs.true.if.end29_crit_edge, label %land.lhs.true.do.end_crit_edge

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.lhs.true.if.end29_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

do.end:                                           ; preds = %land.lhs.true.do.end_crit_edge, %if.else.do.end_crit_edge
  %22 = phi i32 [ %19, %land.lhs.true.do.end_crit_edge ], [ %15, %if.else.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 4
  %shr = lshr i32 %22, 10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.1, i32 noundef %page_size, i32 noundef %shr) #10
  br label %cleanup

if.end29:                                         ; preds = %land.lhs.true.if.end29_crit_edge, %if.end10.thread.if.end29_crit_edge, %if.else.if.end29_crit_edge
  %cond87.in.in = phi i8 [ %13, %if.else.if.end29_crit_edge ], [ %17, %land.lhs.true.if.end29_crit_edge ], [ %17, %if.end10.thread.if.end29_crit_edge ]
  %real_page_size.0 = phi i32 [ %15, %if.else.if.end29_crit_edge ], [ %21, %land.lhs.true.if.end29_crit_edge ], [ %19, %if.end10.thread.if.end29_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %cond87.in.in)
  %cond87.in = icmp ne i8 %cond87.in.in, 0
  %cond87 = zext i1 %cond87.in to i32
  %unmap = getelementptr %struct.hl_device, ptr %1, i32 0, i32 52, i32 %cond87, i32 5
  call void @__sanitizer_cov_trace_cmp4(i32 %real_page_size.0, i32 %page_size)
  %cmp3090.not = icmp ugt i32 %real_page_size.0, %page_size
  br i1 %cmp3090.not, label %if.end29.for.end_crit_edge, label %for.body.lr.ph

if.end29.for.end_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end29
  %div = udiv i32 %page_size, %real_page_size.0
  %conv37 = zext i32 %real_page_size.0 to i64
  %umax = call i32 @llvm.umax.i32(i32 %div, i32 1)
  br label %for.body

for.body:                                         ; preds = %if.end36.for.body_crit_edge, %for.body.lr.ph
  %i.092 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end36.for.body_crit_edge ]
  %real_virt_addr.091 = phi i64 [ %virt_addr, %for.body.lr.ph ], [ %add, %if.end36.for.body_crit_edge ]
  %25 = ptrtoint ptr %unmap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %unmap, align 4
  %call33 = tail call i32 %26(ptr noundef %ctx, i64 noundef %real_virt_addr.091, i1 noundef zeroext %or.cond7.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end36:                                         ; preds = %for.body
  %add = add i64 %real_virt_addr.091, %conv37
  %inc = add nuw i32 %i.092, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %if.end36.for.end_crit_edge, label %if.end36.for.body_crit_edge

if.end36.for.body_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end36.for.end_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %if.end36.for.end_crit_edge, %for.body.for.end_crit_edge, %if.end29.for.end_crit_edge
  %rc.1 = phi i32 [ 0, %if.end29.for.end_crit_edge ], [ %call33, %for.body.for.end_crit_edge ], [ 0, %if.end36.for.end_crit_edge ]
  br i1 %flush_pte, label %if.then39, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then39:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %flush = getelementptr %struct.hl_device, ptr %1, i32 0, i32 52, i32 %cond87, i32 6
  %27 = ptrtoint ptr %flush to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %flush, align 8
  tail call void %28(ptr noundef %ctx) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then39, %for.end.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -14, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ %rc.1, %if.then39 ], [ %rc.1, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hl_mmu_map_page(ptr noundef %ctx, i64 noundef %virt_addr, i64 noundef %phys_addr, i32 noundef %page_size, i1 noundef zeroext %flush_pte) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hdev1 = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 3
  %0 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev1, align 4
  %mmu_enable = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 107
  %2 = ptrtoint ptr %mmu_enable to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mmu_enable, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %dmmu.i = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 4
  %page_size.i = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 4, i32 15
  %4 = ptrtoint ptr %page_size.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %page_size.i, align 8
  %conv.i = zext i32 %5 to i64
  %6 = ptrtoint ptr %dmmu.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %dmmu.i, align 8
  %end_addr.i = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 4, i32 1
  %8 = ptrtoint ptr %end_addr.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %end_addr.i, align 8
  %add.i.i = add i64 %conv.i, %virt_addr
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %virt_addr)
  %cmp.not.i.i = icmp ule i64 %7, %virt_addr
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i, i64 %9)
  %cmp1.not.i.i = icmp ule i64 %add.i.i, %9
  %or.cond.not.i.i = and i1 %cmp.not.i.i, %cmp1.not.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i, i64 %virt_addr)
  %cmp3.i.i = icmp ugt i64 %add.i.i, %virt_addr
  %or.cond7.i.i = and i1 %cmp3.i.i, %or.cond.not.i.i
  br i1 %or.cond7.i.i, label %if.end10.thread, label %if.else

if.else:                                          ; preds = %if.end
  %page_size5 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 6, i32 15
  %10 = ptrtoint ptr %page_size5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %page_size5, align 8
  %rem = urem i32 %page_size, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp = icmp eq i32 %rem, 0
  %pmmu_huge = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 6
  %pmmu = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 5
  %mmu_prop.0 = select i1 %cmp, ptr %pmmu_huge, ptr %pmmu
  %page_size12 = getelementptr inbounds %struct.hl_mmu_properties, ptr %mmu_prop.0, i32 0, i32 15
  %12 = ptrtoint ptr %page_size12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %page_size12, align 8
  %rem13 = urem i32 %page_size, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem13)
  %cmp14 = icmp eq i32 %rem13, 0
  br i1 %cmp14, label %land.lhs.true52.critedge, label %if.else.do.end_crit_edge

if.else.do.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end10.thread:                                  ; preds = %if.end
  %host_resident193 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 4, i32 17
  %14 = ptrtoint ptr %host_resident193 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %host_resident193, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool11.not194 = icmp ne i8 %15, 0
  %cond195 = zext i1 %tobool11.not194 to i32
  %16 = ptrtoint ptr %page_size.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %page_size.i, align 8
  %rem13197 = urem i32 %page_size, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem13197)
  %cmp14198 = icmp eq i32 %rem13197, 0
  br i1 %cmp14198, label %if.end10.thread.land.lhs.true37_crit_edge, label %land.lhs.true

if.end10.thread.land.lhs.true37_crit_edge:        ; preds = %if.end10.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true37

land.lhs.true:                                    ; preds = %if.end10.thread
  %dram_page_size = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 35
  %18 = ptrtoint ptr %dram_page_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dram_page_size, align 4
  %rem21 = urem i32 %page_size, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem21)
  %cmp22 = icmp eq i32 %rem21, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %17)
  %cmp27 = icmp ult i32 %19, %17
  %or.cond = select i1 %cmp22, i1 %cmp27, i1 false
  br i1 %or.cond, label %land.lhs.true.land.lhs.true37_crit_edge, label %land.lhs.true.do.end_crit_edge

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.lhs.true.land.lhs.true37_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true37

do.end:                                           ; preds = %land.lhs.true.do.end_crit_edge, %if.else.do.end_crit_edge
  %20 = phi i32 [ %17, %land.lhs.true.do.end_crit_edge ], [ %13, %if.else.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  %shr = lshr i32 %20, 10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.6, i32 noundef %page_size, i32 noundef %shr) #10
  br label %cleanup

land.lhs.true37:                                  ; preds = %land.lhs.true.land.lhs.true37_crit_edge, %if.end10.thread.land.lhs.true37_crit_edge
  %real_page_size.0215 = phi i32 [ %17, %if.end10.thread.land.lhs.true37_crit_edge ], [ %19, %land.lhs.true.land.lhs.true37_crit_edge ]
  %asic_funcs = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 34
  %23 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %asic_funcs, align 8
  %scramble_addr = getelementptr inbounds %struct.hl_asic_funcs, ptr %24, i32 0, i32 76
  %25 = ptrtoint ptr %scramble_addr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %scramble_addr, align 4
  %call38 = tail call i64 %26(ptr noundef %1, i64 noundef %phys_addr) #7
  %27 = ptrtoint ptr %page_size.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %page_size.i, align 8
  %sub = add i32 %28, -1
  %conv40 = zext i32 %sub to i64
  %and = and i64 %call38, %conv40
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool41.not = icmp eq i64 %and, 0
  br i1 %tobool41.not, label %lor.lhs.false, label %land.lhs.true37.do.end65_crit_edge

land.lhs.true37.do.end65_crit_edge:               ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end65

lor.lhs.false:                                    ; preds = %land.lhs.true37
  %29 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %asic_funcs, align 8
  %scramble_addr43 = getelementptr inbounds %struct.hl_asic_funcs, ptr %30, i32 0, i32 76
  %31 = ptrtoint ptr %scramble_addr43 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %scramble_addr43, align 4
  %call44 = tail call i64 %32(ptr noundef %1, i64 noundef %virt_addr) #7
  %33 = ptrtoint ptr %page_size.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %page_size.i, align 8
  %sub46 = add i32 %34, -1
  %conv47 = zext i32 %sub46 to i64
  %and48 = and i64 %call44, %conv47
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and48)
  %tobool49.not = icmp eq i64 %and48, 0
  br i1 %tobool49.not, label %lor.lhs.false.if.end67_crit_edge, label %lor.lhs.false.do.end65_crit_edge

lor.lhs.false.do.end65_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end65

lor.lhs.false.if.end67_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end67

land.lhs.true52.critedge:                         ; preds = %if.else
  %host_resident = getelementptr inbounds %struct.hl_mmu_properties, ptr %mmu_prop.0, i32 0, i32 17
  %35 = ptrtoint ptr %host_resident to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %host_resident, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool11.not = icmp ne i8 %36, 0
  %cond = zext i1 %tobool11.not to i32
  %sub53 = add i32 %13, -1
  %conv54 = zext i32 %sub53 to i64
  %37 = or i64 %phys_addr, %virt_addr
  %38 = and i64 %37, %conv54
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %38)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %land.lhs.true52.critedge.if.end67_crit_edge, label %land.lhs.true52.critedge.do.end65_crit_edge

land.lhs.true52.critedge.do.end65_crit_edge:      ; preds = %land.lhs.true52.critedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end65

land.lhs.true52.critedge.if.end67_crit_edge:      ; preds = %land.lhs.true52.critedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end67

do.end65:                                         ; preds = %land.lhs.true52.critedge.do.end65_crit_edge, %lor.lhs.false.do.end65_crit_edge, %land.lhs.true37.do.end65_crit_edge
  %real_page_size.0214 = phi i32 [ %real_page_size.0215, %land.lhs.true37.do.end65_crit_edge ], [ %real_page_size.0215, %lor.lhs.false.do.end65_crit_edge ], [ %13, %land.lhs.true52.critedge.do.end65_crit_edge ]
  %cond200212 = phi i32 [ %cond195, %land.lhs.true37.do.end65_crit_edge ], [ %cond195, %lor.lhs.false.do.end65_crit_edge ], [ %cond, %land.lhs.true52.critedge.do.end65_crit_edge ]
  %dev66 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %40 = ptrtoint ptr %dev66 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev66, align 4
  tail call void (ptr, ptr, ...) @_dev_crit(ptr noundef %41, ptr noundef nonnull @.str.9, i64 noundef %phys_addr, i64 noundef %virt_addr, i32 noundef %real_page_size.0214) #10
  br label %if.end67

if.end67:                                         ; preds = %do.end65, %land.lhs.true52.critedge.if.end67_crit_edge, %lor.lhs.false.if.end67_crit_edge
  %real_page_size.0216 = phi i32 [ %real_page_size.0215, %lor.lhs.false.if.end67_crit_edge ], [ %13, %land.lhs.true52.critedge.if.end67_crit_edge ], [ %real_page_size.0214, %do.end65 ]
  %cond200211 = phi i32 [ %cond195, %lor.lhs.false.if.end67_crit_edge ], [ %cond, %land.lhs.true52.critedge.if.end67_crit_edge ], [ %cond200212, %do.end65 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %real_page_size.0216, i32 %page_size)
  %cmp68218.not = icmp ugt i32 %real_page_size.0216, %page_size
  br i1 %cmp68218.not, label %if.end67.for.end_crit_edge, label %for.body.lr.ph

if.end67.for.end_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end67
  %div = udiv i32 %page_size, %real_page_size.0216
  %map = getelementptr %struct.hl_device, ptr %1, i32 0, i32 52, i32 %cond200211, i32 4
  %conv75 = zext i32 %real_page_size.0216 to i64
  %umax = call i32 @llvm.umax.i32(i32 %div, i32 1)
  br label %for.body

for.body:                                         ; preds = %if.end74.for.body_crit_edge, %for.body.lr.ph
  %mapped_cnt.0222 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end74.for.body_crit_edge ]
  %real_phys_addr.0220 = phi i64 [ %phys_addr, %for.body.lr.ph ], [ %add77, %if.end74.for.body_crit_edge ]
  %real_virt_addr.0219 = phi i64 [ %virt_addr, %for.body.lr.ph ], [ %add, %if.end74.for.body_crit_edge ]
  %42 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %map, align 8
  %call71 = tail call i32 %43(ptr noundef %ctx, i64 noundef %real_virt_addr.0219, i64 noundef %real_phys_addr.0220, i32 noundef %real_page_size.0216, i1 noundef zeroext %or.cond7.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.end74, label %for.cond84.preheader

for.cond84.preheader:                             ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mapped_cnt.0222)
  %cmp85223 = icmp sgt i32 %mapped_cnt.0222, 0
  br i1 %cmp85223, label %for.body87.lr.ph, label %for.cond84.preheader.for.end110_crit_edge

for.cond84.preheader.for.end110_crit_edge:        ; preds = %for.cond84.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end110

for.body87.lr.ph:                                 ; preds = %for.cond84.preheader
  %unmap = getelementptr %struct.hl_device, ptr %1, i32 0, i32 52, i32 %cond200211, i32 5
  %dev101 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  br label %for.body87

if.end74:                                         ; preds = %for.body
  %add = add i64 %real_virt_addr.0219, %conv75
  %add77 = add i64 %real_phys_addr.0220, %conv75
  %inc = add nuw i32 %mapped_cnt.0222, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %if.end74.for.end_crit_edge, label %if.end74.for.body_crit_edge

if.end74.for.body_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end74.for.end_crit_edge:                       ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %if.end74.for.end_crit_edge, %if.end67.for.end_crit_edge
  br i1 %flush_pte, label %if.then80, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then80:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %flush = getelementptr %struct.hl_device, ptr %1, i32 0, i32 52, i32 %cond200211, i32 6
  %44 = ptrtoint ptr %flush to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %flush, align 8
  tail call void %45(ptr noundef %ctx) #7
  br label %cleanup

for.body87:                                       ; preds = %if.end105.for.body87_crit_edge, %for.body87.lr.ph
  %i.1225 = phi i32 [ 0, %for.body87.lr.ph ], [ %inc109, %if.end105.for.body87_crit_edge ]
  %real_virt_addr.1224 = phi i64 [ %virt_addr, %for.body87.lr.ph ], [ %add107, %if.end105.for.body87_crit_edge ]
  %46 = ptrtoint ptr %unmap to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %unmap, align 4
  %call91 = tail call i32 %47(ptr noundef %ctx, i64 noundef %real_virt_addr.1224, i1 noundef zeroext %or.cond7.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %for.body87.if.end105_crit_edge, label %do.body94

for.body87.if.end105_crit_edge:                   ; preds = %for.body87
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end105

do.body94:                                        ; preds = %for.body87
  %call95 = tail call i32 @___ratelimit(ptr noundef nonnull @hl_mmu_map_page._rs, ptr noundef nonnull @.str.7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %do.body94.if.end105_crit_edge, label %do.end100

do.body94.if.end105_crit_edge:                    ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end105

do.end100:                                        ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %dev101 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev101, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %49, ptr noundef nonnull @.str.14, i64 noundef %real_virt_addr.1224) #10
  br label %if.end105

if.end105:                                        ; preds = %do.end100, %do.body94.if.end105_crit_edge, %for.body87.if.end105_crit_edge
  %add107 = add i64 %real_virt_addr.1224, %conv75
  %inc109 = add nuw nsw i32 %i.1225, 1
  %exitcond228.not = icmp eq i32 %inc109, %mapped_cnt.0222
  br i1 %exitcond228.not, label %if.end105.for.end110_crit_edge, label %if.end105.for.body87_crit_edge

if.end105.for.body87_crit_edge:                   ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body87

if.end105.for.end110_crit_edge:                   ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end110

for.end110:                                       ; preds = %if.end105.for.end110_crit_edge, %for.cond84.preheader.for.end110_crit_edge
  %flush113 = getelementptr %struct.hl_device, ptr %1, i32 0, i32 52, i32 %cond200211, i32 6
  %50 = ptrtoint ptr %flush113 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %flush113, align 8
  tail call void %51(ptr noundef %ctx) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end110, %if.then80, %for.end.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call71, %for.end110 ], [ -14, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then80 ], [ 0, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_crit(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hl_mmu_map_contiguous(ptr noundef %ctx, i64 noundef %virt_addr, i64 noundef %phys_addr, i32 noundef %size) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hdev1 = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 3
  %0 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev1, align 4
  %conv = zext i32 %size to i64
  %dmmu = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 4
  %2 = ptrtoint ptr %dmmu to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %dmmu, align 8
  %end_addr = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 4, i32 1
  %4 = ptrtoint ptr %end_addr to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %end_addr, align 8
  %add.i = add i64 %conv, %virt_addr
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %virt_addr)
  %cmp.not.i = icmp ule i64 %3, %virt_addr
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %5)
  %cmp1.not.i = icmp ule i64 %add.i, %5
  %or.cond.not.i = and i1 %cmp.not.i, %cmp1.not.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %virt_addr)
  %cmp3.i = icmp ugt i64 %add.i, %virt_addr
  %or.cond7.i = and i1 %cmp3.i, %or.cond.not.i
  br i1 %or.cond7.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %page_size4 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 4, i32 15
  br label %if.end24

if.else:                                          ; preds = %entry
  %pmmu = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 5
  %6 = ptrtoint ptr %pmmu to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %pmmu, align 8
  %end_addr8 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 5, i32 1
  %8 = ptrtoint ptr %end_addr8 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %end_addr8, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %virt_addr)
  %cmp.not.i113 = icmp ule i64 %7, %virt_addr
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %9)
  %cmp1.not.i114 = icmp ule i64 %add.i, %9
  %or.cond.not.i115 = and i1 %cmp.not.i113, %cmp1.not.i114
  %or.cond7.i117 = and i1 %cmp3.i, %or.cond.not.i115
  br i1 %or.cond7.i117, label %if.then10, label %if.else13

if.then10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %page_size12 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 5, i32 15
  br label %if.end24

if.else13:                                        ; preds = %if.else
  %pmmu_huge = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 6
  %10 = ptrtoint ptr %pmmu_huge to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %pmmu_huge, align 8
  %end_addr17 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 6, i32 1
  %12 = ptrtoint ptr %end_addr17 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %end_addr17, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %virt_addr)
  %cmp.not.i119 = icmp ule i64 %11, %virt_addr
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %13)
  %cmp1.not.i120 = icmp ule i64 %add.i, %13
  %or.cond.not.i121 = and i1 %cmp.not.i119, %cmp1.not.i120
  %or.cond7.i123 = and i1 %cmp3.i, %or.cond.not.i121
  br i1 %or.cond7.i123, label %if.then19, label %if.else13.cleanup_crit_edge

if.else13.cleanup_crit_edge:                      ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then19:                                        ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #9
  %page_size21 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 6, i32 15
  br label %if.end24

if.end24:                                         ; preds = %if.then19, %if.then10, %if.then
  %page_size.0.in = phi ptr [ %page_size4, %if.then ], [ %page_size12, %if.then10 ], [ %page_size21, %if.then19 ]
  %14 = ptrtoint ptr %page_size.0.in to i32
  call void @__asan_load4_noabort(i32 %14)
  %page_size.0 = load i32, ptr %page_size.0.in, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end24
  %off.0 = phi i32 [ 0, %if.end24 ], [ %add29, %for.body.for.cond_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %off.0, i32 %size)
  %cmp = icmp ult i32 %off.0, %size
  br i1 %cmp, label %for.body, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %conv26 = sext i32 %off.0 to i64
  %add = add i64 %conv26, %virt_addr
  %add28 = add i64 %conv26, %phys_addr
  %add29 = add i32 %off.0, %page_size.0
  call void @__sanitizer_cov_trace_cmp4(i32 %add29, i32 %size)
  %cmp30 = icmp uge i32 %add29, %size
  %call32 = tail call i32 @hl_mmu_map_page(ptr noundef %ctx, i64 noundef %add, i64 noundef %add28, i32 noundef %page_size.0, i1 noundef zeroext %cmp30)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %for.body.for.cond_crit_edge, label %do.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

do.end:                                           ; preds = %for.body
  %dev = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.17, i64 noundef %add, i64 noundef %add28) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %off.0)
  %cmp38127 = icmp sgt i32 %off.0, -1
  br i1 %cmp38127, label %do.end.for.body40_crit_edge, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end.for.body40_crit_edge:                      ; preds = %do.end
  br label %for.body40

for.body40:                                       ; preds = %for.inc62.for.body40_crit_edge, %do.end.for.body40_crit_edge
  %off.1128 = phi i32 [ %sub, %for.inc62.for.body40_crit_edge ], [ %off.0, %do.end.for.body40_crit_edge ]
  %conv41124 = zext i32 %off.1128 to i64
  %add42 = add i64 %conv41124, %virt_addr
  %sub = sub i32 %off.1128, %page_size.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp43 = icmp slt i32 %sub, 0
  %call47 = tail call i32 @hl_mmu_unmap_page(ptr noundef %ctx, i64 noundef %add42, i32 noundef %page_size.0, i1 noundef zeroext %cmp43)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %for.body40.for.inc62_crit_edge, label %do.body50

for.body40.for.inc62_crit_edge:                   ; preds = %for.body40
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc62

do.body50:                                        ; preds = %for.body40
  %call51 = tail call i32 @___ratelimit(ptr noundef nonnull @hl_mmu_map_contiguous._rs, ptr noundef nonnull @.str.18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %do.body50.for.inc62_crit_edge, label %do.end56

do.body50.for.inc62_crit_edge:                    ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc62

do.end56:                                         ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %18, ptr noundef nonnull @.str.20, i64 noundef %add42) #10
  br label %for.inc62

for.inc62:                                        ; preds = %do.end56, %do.body50.for.inc62_crit_edge, %for.body40.for.inc62_crit_edge
  %cmp38 = icmp sgt i32 %sub, -1
  br i1 %cmp38, label %for.inc62.for.body40_crit_edge, label %for.inc62.cleanup_crit_edge

for.inc62.cleanup_crit_edge:                      ; preds = %for.inc62
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc62.for.body40_crit_edge:                   ; preds = %for.inc62
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body40

cleanup:                                          ; preds = %for.inc62.cleanup_crit_edge, %do.end.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %if.else13.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.else13.cleanup_crit_edge ], [ %call32, %do.end.cleanup_crit_edge ], [ %call32, %for.inc62.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hl_mmu_unmap_contiguous(ptr noundef %ctx, i64 noundef %virt_addr, i32 noundef %size) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hdev1 = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 3
  %0 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev1, align 4
  %conv = zext i32 %size to i64
  %dmmu = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 4
  %2 = ptrtoint ptr %dmmu to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %dmmu, align 8
  %end_addr = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 4, i32 1
  %4 = ptrtoint ptr %end_addr to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %end_addr, align 8
  %add.i = add i64 %conv, %virt_addr
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %virt_addr)
  %cmp.not.i = icmp ule i64 %3, %virt_addr
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %5)
  %cmp1.not.i = icmp ule i64 %add.i, %5
  %or.cond.not.i = and i1 %cmp.not.i, %cmp1.not.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %virt_addr)
  %cmp3.i = icmp ugt i64 %add.i, %virt_addr
  %or.cond7.i = and i1 %cmp3.i, %or.cond.not.i
  br i1 %or.cond7.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %page_size4 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 4, i32 15
  br label %if.end24

if.else:                                          ; preds = %entry
  %pmmu = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 5
  %6 = ptrtoint ptr %pmmu to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %pmmu, align 8
  %end_addr8 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 5, i32 1
  %8 = ptrtoint ptr %end_addr8 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %end_addr8, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %virt_addr)
  %cmp.not.i73 = icmp ule i64 %7, %virt_addr
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %9)
  %cmp1.not.i74 = icmp ule i64 %add.i, %9
  %or.cond.not.i75 = and i1 %cmp.not.i73, %cmp1.not.i74
  %or.cond7.i77 = and i1 %cmp3.i, %or.cond.not.i75
  br i1 %or.cond7.i77, label %if.then10, label %if.else13

if.then10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %page_size12 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 5, i32 15
  br label %if.end24

if.else13:                                        ; preds = %if.else
  %pmmu_huge = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 6
  %10 = ptrtoint ptr %pmmu_huge to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %pmmu_huge, align 8
  %end_addr17 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 6, i32 1
  %12 = ptrtoint ptr %end_addr17 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %end_addr17, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %virt_addr)
  %cmp.not.i79 = icmp ule i64 %11, %virt_addr
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %13)
  %cmp1.not.i80 = icmp ule i64 %add.i, %13
  %or.cond.not.i81 = and i1 %cmp.not.i79, %cmp1.not.i80
  %or.cond7.i83 = and i1 %cmp3.i, %or.cond.not.i81
  br i1 %or.cond7.i83, label %if.then19, label %if.else13.cleanup_crit_edge

if.else13.cleanup_crit_edge:                      ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then19:                                        ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #9
  %page_size21 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 6, i32 15
  br label %if.end24

if.end24:                                         ; preds = %if.then19, %if.then10, %if.then
  %page_size.0.in = phi ptr [ %page_size4, %if.then ], [ %page_size12, %if.then10 ], [ %page_size21, %if.then19 ]
  %14 = ptrtoint ptr %page_size.0.in to i32
  call void @__asan_load4_noabort(i32 %14)
  %page_size.0 = load i32, ptr %page_size.0.in, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp84.not = icmp eq i32 %size, 0
  br i1 %cmp84.not, label %if.end24.cleanup_crit_edge, label %for.body.lr.ph

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end24
  %dev = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %off.085 = phi i32 [ 0, %for.body.lr.ph ], [ %add27, %for.inc.for.body_crit_edge ]
  %conv26 = sext i32 %off.085 to i64
  %add = add i64 %conv26, %virt_addr
  %add27 = add i32 %off.085, %page_size.0
  call void @__sanitizer_cov_trace_cmp4(i32 %add27, i32 %size)
  %cmp28 = icmp uge i32 %add27, %size
  %call30 = tail call i32 @hl_mmu_unmap_page(ptr noundef %ctx, i64 noundef %add, i32 noundef %page_size.0, i1 noundef zeroext %cmp28)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %for.body.for.inc_crit_edge, label %do.body

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.body:                                          ; preds = %for.body
  %call33 = tail call i32 @___ratelimit(ptr noundef nonnull @hl_mmu_unmap_contiguous._rs, ptr noundef nonnull @__func__.hl_mmu_unmap_contiguous) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %do.body.for.inc_crit_edge, label %do.end

do.body.for.inc_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %16, ptr noundef nonnull @.str.22, i64 noundef %add) #10
  br label %for.inc

for.inc:                                          ; preds = %do.end, %do.body.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %cmp = icmp ult i32 %add27, %size
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %if.else13.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.else13.cleanup_crit_edge ], [ 0, %if.end24.cleanup_crit_edge ], [ %call30, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hl_mmu_swap_out(ptr noundef %ctx) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hdev1 = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 3
  %0 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev1, align 4
  %mmu_enable = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 107
  %2 = ptrtoint ptr %mmu_enable to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mmu_enable, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %swap_out = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 52, i32 0, i32 7
  %4 = ptrtoint ptr %swap_out to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %swap_out, align 4
  %cmp.not = icmp eq ptr %5, null
  br i1 %cmp.not, label %if.end.if.end6_crit_edge, label %if.then2

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %5(ptr noundef %ctx) #7
  br label %if.end6

if.end6:                                          ; preds = %if.then2, %if.end.if.end6_crit_edge
  %swap_out9 = getelementptr %struct.hl_device, ptr %1, i32 0, i32 52, i32 1, i32 7
  %6 = ptrtoint ptr %swap_out9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %swap_out9, align 4
  %cmp10.not = icmp eq ptr %7, null
  br i1 %cmp10.not, label %if.end6.cleanup_crit_edge, label %if.then11

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then11:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %7(ptr noundef %ctx) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end6.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hl_mmu_swap_in(ptr noundef %ctx) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hdev1 = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 3
  %0 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev1, align 4
  %mmu_enable = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 107
  %2 = ptrtoint ptr %mmu_enable to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mmu_enable, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %swap_in = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 52, i32 0, i32 8
  %4 = ptrtoint ptr %swap_in to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %swap_in, align 8
  %cmp.not = icmp eq ptr %5, null
  br i1 %cmp.not, label %if.end.if.end6_crit_edge, label %if.then2

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %5(ptr noundef %ctx) #7
  br label %if.end6

if.end6:                                          ; preds = %if.then2, %if.end.if.end6_crit_edge
  %swap_in9 = getelementptr %struct.hl_device, ptr %1, i32 0, i32 52, i32 1, i32 8
  %6 = ptrtoint ptr %swap_in9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %swap_in9, align 8
  %cmp10.not = icmp eq ptr %7, null
  br i1 %cmp10.not, label %if.end6.cleanup_crit_edge, label %if.then11

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then11:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %7(ptr noundef %ctx) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end6.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hl_mmu_va_to_pa(ptr noundef %ctx, i64 noundef %virt_addr, ptr nocapture noundef writeonly %phys_addr) local_unnamed_addr #2 align 64 {
entry:
  %hops = alloca %struct.hl_mmu_hop_info, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %hops) #7
  %0 = call ptr @memset(ptr %hops, i32 0, i32 144)
  %call = call i32 @hl_mmu_get_tlb_info(ptr noundef %ctx, i64 noundef %virt_addr, ptr noundef nonnull %hops)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %hdev1.i = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 3
  %1 = ptrtoint ptr %hdev1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hdev1.i, align 4
  %unscrambled_paddr.i = getelementptr inbounds %struct.hl_mmu_hop_info, ptr %hops, i32 0, i32 1
  %3 = ptrtoint ptr %unscrambled_paddr.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %unscrambled_paddr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %tobool.not.i = icmp eq i64 %4, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.end.if.end.i_crit_edge

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %used_hops.i = getelementptr inbounds %struct.hl_mmu_hop_info, ptr %hops, i32 0, i32 3
  %5 = ptrtoint ptr %used_hops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %used_hops.i, align 8
  %sub.i = add i32 %6, -1
  %hop_pte_val.i = getelementptr %struct.hl_mmu_hop_info, ptr %hops, i32 0, i32 2, i32 %sub.i, i32 2
  %7 = ptrtoint ptr %hop_pte_val.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %hop_pte_val.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.end.if.end.i_crit_edge
  %tmp_phys_addr.0.i = phi i64 [ %8, %if.else.i ], [ %4, %if.end.if.end.i_crit_edge ]
  %range_type.i = getelementptr inbounds %struct.hl_mmu_hop_info, ptr %hops, i32 0, i32 4
  %9 = ptrtoint ptr %range_type.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %range_type.i, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %10, label %if.end10.i [
    i32 1, label %if.then3.i
    i32 0, label %if.then7.i
  ]

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %pmmu_huge.i = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 33, i32 6
  br label %if.else215.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %pmmu.i = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 33, i32 5
  br label %if.else215.i

if.end10.i:                                       ; preds = %if.end.i
  %dmmu.i = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 33, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp12.i = icmp eq i32 %10, 2
  br i1 %cmp12.i, label %land.lhs.true.i, label %if.end10.i.if.else215.i_crit_edge

if.end10.i.if.else215.i_crit_edge:                ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else215.i

land.lhs.true.i:                                  ; preds = %if.end10.i
  %dram_page_size.i = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 33, i32 35
  %12 = ptrtoint ptr %dram_page_size.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dram_page_size.i, align 4
  %14 = call i32 @llvm.ctpop.i32(i32 %13) #7, !range !70
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %.not363.i = icmp eq i32 %14, 1
  br i1 %.not363.i, label %land.lhs.true.i.if.else215.i_crit_edge, label %if.then13.i

land.lhs.true.i.if.else215.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else215.i

if.then13.i:                                      ; preds = %land.lhs.true.i
  %conv.i = zext i32 %13 to i64
  %dram_base_address.i = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 33, i32 13
  %15 = ptrtoint ptr %dram_base_address.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %dram_base_address.i, align 8
  %sub16.i = sub i64 %tmp_phys_addr.0.i, %16
  %sub17.i = sub i64 %virt_addr, %16
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub16.i)
  %cmp192.i = icmp ult i64 %sub16.i, 4294967296
  br i1 %cmp192.i, label %if.then196.i, label %if.else202.i, !prof !71

if.then196.i:                                     ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv197.i = trunc i64 %sub16.i to i32
  %div200.i = udiv i32 %conv197.i, %13
  %conv201.i = zext i32 %div200.i to i64
  br label %if.end206.i

if.else202.i:                                     ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #9
  %17 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %13, i64 %sub16.i) #11, !srcloc !72
  %asmresult1.i.i = extractvalue { i64, i64 } %17, 1
  br label %if.end206.i

if.end206.i:                                      ; preds = %if.else202.i, %if.then196.i
  %_tmp.0.i = phi i64 [ %conv201.i, %if.then196.i ], [ %asmresult1.i.i, %if.else202.i ]
  %mul209.i = mul i64 %_tmp.0.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub17.i)
  %cmp164.i.i = icmp ult i64 %sub17.i, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !71

if.then168.i.i:                                   ; preds = %if.end206.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv169.i.i = trunc i64 %sub17.i to i32
  %rem170.i.i = urem i32 %conv169.i.i, %13
  br label %div_u64_rem.exit.i

if.else174.i.i:                                   ; preds = %if.end206.i
  call void @__sanitizer_cov_trace_pc() #9
  %18 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %13, i64 %sub17.i) #11, !srcloc !72
  %asmresult.i3.i.i = extractvalue { i64, i64 } %18, 0
  %shr.i.i.i = lshr i64 %asmresult.i3.i.i, 32
  %conv.i.i.i = trunc i64 %shr.i.i.i to i32
  br label %div_u64_rem.exit.i

div_u64_rem.exit.i:                               ; preds = %if.else174.i.i, %if.then168.i.i
  %__rem.0.i.i = phi i32 [ %rem170.i.i, %if.then168.i.i ], [ %conv.i.i.i, %if.else174.i.i ]
  %conv212.i = zext i32 %__rem.0.i.i to i64
  %add213.i = add i64 %mul209.i, %16
  %add214.i = add i64 %add213.i, %conv212.i
  br label %hl_mmu_pa_page_with_offset.exit

if.else215.i:                                     ; preds = %land.lhs.true.i.if.else215.i_crit_edge, %if.end10.i.if.else215.i_crit_edge, %if.then7.i, %if.then3.i
  %p.0344.i = phi ptr [ %dmmu.i, %if.end10.i.if.else215.i_crit_edge ], [ %pmmu.i, %if.then7.i ], [ %pmmu_huge.i, %if.then3.i ], [ %dmmu.i, %land.lhs.true.i.if.else215.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %p.0344.i, i32 16
  %used_hops216.i = getelementptr inbounds %struct.hl_mmu_hop_info, ptr %hops, i32 0, i32 3
  %19 = ptrtoint ptr %used_hops216.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %used_hops216.i, align 8
  %sub217.i = shl i32 %20, 3
  %mul218.i = add i32 %sub217.i, -8
  %add.ptr219.i = getelementptr i8, ptr %add.ptr.i, i32 %mul218.i
  %21 = ptrtoint ptr %add.ptr219.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %add.ptr219.i, align 8
  %notmask.i = shl nsw i64 -1, %22
  %sub221.i = xor i64 %notmask.i, -1
  %and223.i = and i64 %notmask.i, %tmp_phys_addr.0.i
  %and224.i = and i64 %sub221.i, %virt_addr
  %or225.i = or i64 %and223.i, %and224.i
  br label %hl_mmu_pa_page_with_offset.exit

hl_mmu_pa_page_with_offset.exit:                  ; preds = %if.else215.i, %div_u64_rem.exit.i
  %storemerge.i = phi i64 [ %or225.i, %if.else215.i ], [ %add214.i, %div_u64_rem.exit.i ]
  %23 = ptrtoint ptr %phys_addr to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %storemerge.i, ptr %phys_addr, align 8
  br label %cleanup

cleanup:                                          ; preds = %hl_mmu_pa_page_with_offset.exit, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %hops) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hl_mmu_get_tlb_info(ptr noundef %ctx, i64 noundef %virt_addr, ptr noundef %hops) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hdev1 = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 3
  %0 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev1, align 4
  %mmu_enable = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 107
  %2 = ptrtoint ptr %mmu_enable to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mmu_enable, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %hops to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %virt_addr, ptr %hops, align 8
  %dmmu = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 4
  %page_size = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 4, i32 15
  %5 = ptrtoint ptr %page_size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %page_size, align 8
  %conv = zext i32 %6 to i64
  %7 = ptrtoint ptr %dmmu to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %dmmu, align 8
  %end_addr = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 4, i32 1
  %9 = ptrtoint ptr %end_addr to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %end_addr, align 8
  %add.i = add i64 %conv, %virt_addr
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %virt_addr)
  %cmp.not.i = icmp ule i64 %8, %virt_addr
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %10)
  %cmp1.not.i = icmp ule i64 %add.i, %10
  %or.cond.not.i = and i1 %cmp.not.i, %cmp1.not.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %virt_addr)
  %cmp3.i = icmp ugt i64 %add.i, %virt_addr
  %or.cond7.i = and i1 %cmp3.i, %or.cond.not.i
  %pmmu = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 5
  %cond = select i1 %or.cond7.i, ptr %dmmu, ptr %pmmu
  %mmu_lock = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mmu_lock, i32 noundef 0) #7
  %host_resident = getelementptr inbounds %struct.hl_mmu_properties, ptr %cond, i32 0, i32 17
  %11 = ptrtoint ptr %host_resident to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %host_resident, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool7.not = icmp eq i8 %12, 0
  %get_tlb_info12 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 52, i32 0, i32 9
  %get_tlb_info = getelementptr %struct.hl_device, ptr %1, i32 0, i32 52, i32 1, i32 9
  %get_tlb_info12.sink = select i1 %tobool7.not, ptr %get_tlb_info12, ptr %get_tlb_info
  %13 = ptrtoint ptr %get_tlb_info12.sink to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %get_tlb_info12.sink, align 4
  %call13 = tail call i32 %14(ptr noundef %ctx, i64 noundef %virt_addr, ptr noundef %hops) #7
  tail call void @mutex_unlock(ptr noundef %mmu_lock) #7
  %unscrambled_paddr = getelementptr inbounds %struct.hl_mmu_hop_info, ptr %hops, i32 0, i32 1
  %15 = ptrtoint ptr %unscrambled_paddr to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %unscrambled_paddr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %16)
  %tobool16.not = icmp eq i64 %16, 0
  br i1 %tobool16.not, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %17 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hdev1, align 4
  %range_type.i = getelementptr inbounds %struct.hl_mmu_hop_info, ptr %hops, i32 0, i32 4
  %19 = ptrtoint ptr %range_type.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %range_type.i, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %20, label %if.end10.i [
    i32 1, label %if.then3.i
    i32 0, label %if.then7.i
  ]

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %pmmu_huge.i = getelementptr inbounds %struct.hl_device, ptr %18, i32 0, i32 33, i32 6
  br label %if.else215.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %pmmu.i = getelementptr inbounds %struct.hl_device, ptr %18, i32 0, i32 33, i32 5
  br label %if.else215.i

if.end10.i:                                       ; preds = %if.end.i
  %dmmu.i = getelementptr inbounds %struct.hl_device, ptr %18, i32 0, i32 33, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %cmp12.i = icmp eq i32 %20, 2
  br i1 %cmp12.i, label %land.lhs.true.i, label %if.end10.i.if.else215.i_crit_edge

if.end10.i.if.else215.i_crit_edge:                ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else215.i

land.lhs.true.i:                                  ; preds = %if.end10.i
  %dram_page_size.i = getelementptr inbounds %struct.hl_device, ptr %18, i32 0, i32 33, i32 35
  %22 = ptrtoint ptr %dram_page_size.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dram_page_size.i, align 4
  %24 = tail call i32 @llvm.ctpop.i32(i32 %23) #7, !range !70
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %.not363.i = icmp eq i32 %24, 1
  br i1 %.not363.i, label %land.lhs.true.i.if.else215.i_crit_edge, label %if.then13.i

land.lhs.true.i.if.else215.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else215.i

if.then13.i:                                      ; preds = %land.lhs.true.i
  %conv.i = zext i32 %23 to i64
  %dram_base_address.i = getelementptr inbounds %struct.hl_device, ptr %18, i32 0, i32 33, i32 13
  %25 = ptrtoint ptr %dram_base_address.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %dram_base_address.i, align 8
  %sub16.i = sub i64 %16, %26
  %sub17.i = sub i64 %virt_addr, %26
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub16.i)
  %cmp192.i = icmp ult i64 %sub16.i, 4294967296
  br i1 %cmp192.i, label %if.then196.i, label %if.else202.i, !prof !71

if.then196.i:                                     ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv197.i = trunc i64 %sub16.i to i32
  %div200.i = udiv i32 %conv197.i, %23
  %conv201.i = zext i32 %div200.i to i64
  br label %if.end206.i

if.else202.i:                                     ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #9
  %27 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %23, i64 %sub16.i) #11, !srcloc !72
  %asmresult1.i.i = extractvalue { i64, i64 } %27, 1
  br label %if.end206.i

if.end206.i:                                      ; preds = %if.else202.i, %if.then196.i
  %_tmp.0.i = phi i64 [ %conv201.i, %if.then196.i ], [ %asmresult1.i.i, %if.else202.i ]
  %mul209.i = mul i64 %_tmp.0.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub17.i)
  %cmp164.i.i = icmp ult i64 %sub17.i, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !71

if.then168.i.i:                                   ; preds = %if.end206.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv169.i.i = trunc i64 %sub17.i to i32
  %rem170.i.i = urem i32 %conv169.i.i, %23
  br label %div_u64_rem.exit.i

if.else174.i.i:                                   ; preds = %if.end206.i
  call void @__sanitizer_cov_trace_pc() #9
  %28 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %23, i64 %sub17.i) #11, !srcloc !72
  %asmresult.i3.i.i = extractvalue { i64, i64 } %28, 0
  %shr.i.i.i = lshr i64 %asmresult.i3.i.i, 32
  %conv.i.i.i = trunc i64 %shr.i.i.i to i32
  br label %div_u64_rem.exit.i

div_u64_rem.exit.i:                               ; preds = %if.else174.i.i, %if.then168.i.i
  %__rem.0.i.i = phi i32 [ %rem170.i.i, %if.then168.i.i ], [ %conv.i.i.i, %if.else174.i.i ]
  %conv212.i = zext i32 %__rem.0.i.i to i64
  %add213.i = add i64 %mul209.i, %26
  %add214.i = add i64 %add213.i, %conv212.i
  br label %hl_mmu_pa_page_with_offset.exit

if.else215.i:                                     ; preds = %land.lhs.true.i.if.else215.i_crit_edge, %if.end10.i.if.else215.i_crit_edge, %if.then7.i, %if.then3.i
  %p.0344.i = phi ptr [ %dmmu.i, %if.end10.i.if.else215.i_crit_edge ], [ %pmmu.i, %if.then7.i ], [ %pmmu_huge.i, %if.then3.i ], [ %dmmu.i, %land.lhs.true.i.if.else215.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %p.0344.i, i32 16
  %used_hops216.i = getelementptr inbounds %struct.hl_mmu_hop_info, ptr %hops, i32 0, i32 3
  %29 = ptrtoint ptr %used_hops216.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %used_hops216.i, align 8
  %sub217.i = shl i32 %30, 3
  %mul218.i = add i32 %sub217.i, -8
  %add.ptr219.i = getelementptr i8, ptr %add.ptr.i, i32 %mul218.i
  %31 = ptrtoint ptr %add.ptr219.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %add.ptr219.i, align 8
  %notmask.i = shl nsw i64 -1, %32
  %sub221.i = xor i64 %notmask.i, -1
  %and223.i = and i64 %notmask.i, %16
  %and224.i = and i64 %sub221.i, %virt_addr
  %or225.i = or i64 %and223.i, %and224.i
  br label %hl_mmu_pa_page_with_offset.exit

hl_mmu_pa_page_with_offset.exit:                  ; preds = %if.else215.i, %div_u64_rem.exit.i
  %storemerge.i = phi i64 [ %or225.i, %if.else215.i ], [ %add214.i, %div_u64_rem.exit.i ]
  %33 = ptrtoint ptr %unscrambled_paddr to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %storemerge.i, ptr %unscrambled_paddr, align 8
  br label %cleanup

cleanup:                                          ; preds = %hl_mmu_pa_page_with_offset.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ %call13, %hl_mmu_pa_page_with_offset.exit ], [ %call13, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hl_mmu_if_set_funcs(ptr noundef %hdev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mmu_enable = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 107
  %0 = ptrtoint ptr %mmu_enable to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mmu_enable, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %asic_type = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 12
  %2 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %asic_type, align 8
  %.off = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %sw.bb, label %do.end

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %mmu_func = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 52
  tail call void @hl_mmu_v1_set_funcs(ptr noundef %hdev, ptr noundef %mmu_func) #7
  br label %return

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.23, i32 noundef %3) #10
  br label %return

return:                                           ; preds = %do.end, %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ -95, %do.end ], [ 0, %sw.bb ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hl_mmu_v1_set_funcs(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i64 @hl_mmu_scramble_addr(ptr nocapture noundef readnone %hdev, i64 noundef returned %addr) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i64 %addr
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i64 @hl_mmu_descramble_addr(ptr nocapture noundef readnone %hdev, i64 noundef returned %addr) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i64 %addr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hl_mmu_invalidate_cache(ptr noundef %hdev, i1 noundef zeroext %is_hard, i32 noundef %flags) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %asic_funcs = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %0 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %asic_funcs, align 8
  %mmu_invalidate_cache = getelementptr inbounds %struct.hl_asic_funcs, ptr %1, i32 0, i32 42
  %2 = ptrtoint ptr %mmu_invalidate_cache to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmu_invalidate_cache, align 4
  %call = tail call i32 %3(ptr noundef %hdev, i1 noundef zeroext %is_hard, i32 noundef %flags) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %entry.if.end8_crit_edge, label %do.body

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

do.body:                                          ; preds = %entry
  %call2 = tail call i32 @___ratelimit(ptr noundef nonnull @hl_mmu_invalidate_cache._rs, ptr noundef nonnull @__func__.hl_mmu_invalidate_cache) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %do.body.if.end8_crit_edge, label %do.end

do.body.if.end8_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.25) #10
  br label %if.end8

if.end8:                                          ; preds = %do.end, %do.body.if.end8_crit_edge, %entry.if.end8_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hl_mmu_invalidate_cache_range(ptr noundef %hdev, i1 noundef zeroext %is_hard, i32 noundef %flags, i32 noundef %asid, i64 noundef %va, i64 noundef %size) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %asic_funcs = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %0 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %asic_funcs, align 8
  %mmu_invalidate_cache_range = getelementptr inbounds %struct.hl_asic_funcs, ptr %1, i32 0, i32 43
  %2 = ptrtoint ptr %mmu_invalidate_cache_range to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmu_invalidate_cache_range, align 4
  %call = tail call i32 %3(ptr noundef %hdev, i1 noundef zeroext %is_hard, i32 noundef %flags, i32 noundef %asid, i64 noundef %va, i64 noundef %size) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %entry.if.end8_crit_edge, label %do.body

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

do.body:                                          ; preds = %entry
  %call2 = tail call i32 @___ratelimit(ptr noundef nonnull @hl_mmu_invalidate_cache_range._rs, ptr noundef nonnull @__func__.hl_mmu_invalidate_cache_range) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %do.body.if.end8_crit_edge, label %do.end

do.body.if.end8_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.26) #10
  br label %if.end8

if.end8:                                          ; preds = %do.end, %do.body.if.end8_crit_edge, %entry.if.end8_crit_edge
  ret i32 %call
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !10, !11, !13, !14, !15, !16, !18, !19, !20, !21, !23, !24, !25, !26, !27, !28, !30, !31, !32, !33, !35, !36, !37, !38, !40, !41, !42, !43, !44, !46, !47, !48, !49, !51, !52, !53, !54, !55, !57, !58, !59, !60}
!llvm.module.flags = !{!61, !62, !63, !64, !65, !66, !67, !68}
!llvm.ident = !{!69}

!0 = !{ptr @hl_mmu_ctx_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/misc/habanalabs/common/mmu/mmu.c", i32 84, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/misc/habanalabs/common/mmu/mmu.c", i32 185, i32 4}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !4, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !4, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @hl_mmu_unmap_page._entry, !4, !"_entry", i1 false, i1 false}
!10 = !{ptr @hl_mmu_unmap_page._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/misc/habanalabs/common/mmu/mmu.c", i32 277, i32 3}
!13 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @hl_mmu_map_page._entry, !12, !"_entry", i1 false, i1 false}
!15 = !{ptr @hl_mmu_map_page._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/misc/habanalabs/common/mmu/mmu.c", i32 296, i32 3}
!18 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @hl_mmu_map_page._entry.8, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @hl_mmu_map_page._entry_ptr.11, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/misc/habanalabs/common/mmu/mmu.c", i32 326, i32 4}
!23 = !{ptr @hl_mmu_map_page._rs, !22, !"_rs", i1 false, i1 false}
!24 = !{ptr @.str.14, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.15, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @hl_mmu_map_page._entry.13, !22, !"_entry", i1 false, i1 false}
!27 = !{ptr @hl_mmu_map_page._entry_ptr.16, !22, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/misc/habanalabs/common/mmu/mmu.c", i32 376, i32 4}
!30 = !{ptr @.str.18, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @hl_mmu_map_contiguous._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @hl_mmu_map_contiguous._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @hl_mmu_map_contiguous._rs, !34, !"_rs", i1 false, i1 false}
!34 = !{!"../drivers/misc/habanalabs/common/mmu/mmu.c", i32 390, i32 4}
!35 = !{ptr @.str.20, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @hl_mmu_map_contiguous._entry.19, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @hl_mmu_map_contiguous._entry_ptr.21, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @hl_mmu_unmap_contiguous._rs, !39, !"_rs", i1 false, i1 false}
!39 = !{!"../drivers/misc/habanalabs/common/mmu/mmu.c", i32 432, i32 4}
!40 = !{ptr @__func__.hl_mmu_unmap_contiguous, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.22, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @hl_mmu_unmap_contiguous._entry, !39, !"_entry", i1 false, i1 false}
!43 = !{ptr @hl_mmu_unmap_contiguous._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/misc/habanalabs/common/mmu/mmu.c", i32 608, i32 3}
!46 = !{ptr @.str.24, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @hl_mmu_if_set_funcs._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @hl_mmu_if_set_funcs._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @hl_mmu_invalidate_cache._rs, !50, !"_rs", i1 false, i1 false}
!50 = !{!"../drivers/misc/habanalabs/common/mmu/mmu.c", i32 647, i32 3}
!51 = !{ptr @__func__.hl_mmu_invalidate_cache, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @hl_mmu_invalidate_cache._entry, !50, !"_entry", i1 false, i1 false}
!54 = !{ptr @hl_mmu_invalidate_cache._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @hl_mmu_invalidate_cache_range._rs, !56, !"_rs", i1 false, i1 false}
!56 = !{!"../drivers/misc/habanalabs/common/mmu/mmu.c", i32 660, i32 3}
!57 = !{ptr @__func__.hl_mmu_invalidate_cache_range, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @hl_mmu_invalidate_cache_range._entry, !56, !"_entry", i1 false, i1 false}
!60 = !{ptr @hl_mmu_invalidate_cache_range._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!61 = !{i32 1, !"wchar_size", i32 2}
!62 = !{i32 1, !"min_enum_size", i32 4}
!63 = !{i32 8, !"branch-target-enforcement", i32 0}
!64 = !{i32 8, !"sign-return-address", i32 0}
!65 = !{i32 8, !"sign-return-address-all", i32 0}
!66 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!67 = !{i32 7, !"uwtable", i32 1}
!68 = !{i32 7, !"frame-pointer", i32 2}
!69 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!70 = !{i32 0, i32 33}
!71 = !{!"branch_weights", i32 2000, i32 1}
!72 = !{i64 2148446032, i64 2148446312, i64 2148446646, i64 2148446980}
