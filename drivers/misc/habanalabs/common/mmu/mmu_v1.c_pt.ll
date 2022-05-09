; ModuleID = '/llk/IR_all_yes/drivers/misc/habanalabs/common/mmu/mmu_v1.c_pt.bc'
source_filename = "../drivers/misc/habanalabs/common/mmu/mmu_v1.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.hl_mmu_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hl_device = type { ptr, [6 x i64], [6 x ptr], ptr, %struct.cdev, %struct.cdev, ptr, ptr, %struct.delayed_work, %struct.hl_device_reset_work, [32 x i8], [5 x [32 x i8]], i32, ptr, ptr, %struct.hl_user_interrupt, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.hl_cb_mgr, %struct.hl_eq, ptr, ptr, i32, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.asic_fixed_properties, ptr, ptr, %struct.hl_vm, ptr, ptr, %struct.hl_dbg_device_entry, %struct.list_head, %struct.spinlock, ptr, i32, ptr, i64, %struct.list_head, %struct.list_head, %struct.mutex, %struct.mutex, %struct.hl_cs_counters_atomic, %struct.hl_mmu_priv, [2 x %struct.hl_mmu_funcs], %struct.fw_load_mgr, [4 x %struct.pci_mem_region], %struct.hl_state_dump_specs, [2 x %struct.multi_cs_completion], %struct.hl_clk_throttle, %struct.last_error_session_info, %struct.hl_reset_info, ptr, %struct.atomic64_t, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.pgt_info = type { %struct.hlist_node, i64, i64, ptr, i32 }
%struct.hl_asic_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hl_mmu_hop_info = type { i64, i64, [5 x %struct.hl_mmu_per_hop_info], i32, i32 }
%struct.hl_mmu_per_hop_info = type { i64, i64, i64 }
%struct.gen_pool = type { %struct.spinlock, %struct.list_head, i32, ptr, ptr, ptr }

@hl_mmu_v1_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 425, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to create page gen pool\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hl_mmu_v1_init\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/misc/habanalabs/common/mmu/mmu_v1.c\00", [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hl_mmu_v1_init._entry_ptr = internal global ptr @hl_mmu_v1_init._entry, section ".printk_index", align 4
@hl_mmu_v1_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 434, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to add memory to page gen pool\0A\00", [57 x i8] zeroinitializer }, align 32
@hl_mmu_v1_init._entry_ptr.7 = internal global ptr @hl_mmu_v1_init._entry.5, section ".printk_index", align 4
@dram_default_mapping_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 285, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to alloc hop 1\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dram_default_mapping_init\00", [38 x i8] zeroinitializer }, align 32
@dram_default_mapping_init._entry_ptr = internal global ptr @dram_default_mapping_init._entry, section ".printk_index", align 4
@dram_default_mapping_init._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.2, i32 294, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to alloc hop 2\0A\00", [41 x i8] zeroinitializer }, align 32
@dram_default_mapping_init._entry_ptr.12 = internal global ptr @dram_default_mapping_init._entry.10, section ".printk_index", align 4
@dram_default_mapping_init._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.9, ptr @.str.2, i32 304, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to alloc hop 3, i: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@dram_default_mapping_init._entry_ptr.15 = internal global ptr @dram_default_mapping_init._entry.13, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@alloc_hop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 59, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to allocate page\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"alloc_hop\00", [22 x i8] zeroinitializer }, align 32
@alloc_hop._entry_ptr = internal global ptr @alloc_hop._entry, section ".printk_index", align 4
@hl_mmu_v1_ctx_fini._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 517, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"ctx %d is freed while it has pgts in use\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hl_mmu_v1_ctx_fini\00", [45 x i8] zeroinitializer }, align 32
@hl_mmu_v1_ctx_fini._entry_ptr = internal global ptr @hl_mmu_v1_ctx_fini._entry, section ".printk_index", align 4
@hl_mmu_v1_ctx_fini._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.20, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@hl_mmu_v1_ctx_fini._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.19, ptr @.str.2, i32 522, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"pgt_info of addr 0x%llx of asid %d was not destroyed, num_ptes: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@hl_mmu_v1_ctx_fini._entry_ptr.23 = internal global ptr @hl_mmu_v1_ctx_fini._entry.21, section ".printk_index", align 4
@_hl_mmu_v1_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 738, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"DRAM: mapping already exists for virt_addr 0x%llx\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"_hl_mmu_v1_map\00", [17 x i8] zeroinitializer }, align 32
@_hl_mmu_v1_map._entry_ptr = internal global ptr @_hl_mmu_v1_map._entry, section ".printk_index", align 4
@_hl_mmu_v1_map._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.2, i32 745, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"DRAM mapping should not allocate more hops\0A\00", [52 x i8] zeroinitializer }, align 32
@_hl_mmu_v1_map._entry_ptr.28 = internal global ptr @_hl_mmu_v1_map._entry.26, section ".printk_index", align 4
@_hl_mmu_v1_map._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.25, ptr @.str.2, i32 752, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"mapping already exists for virt_addr 0x%llx\0A\00", [51 x i8] zeroinitializer }, align 32
@_hl_mmu_v1_map._entry_ptr.31 = internal global ptr @_hl_mmu_v1_map._entry.29, section ".printk_index", align 4
@_hl_mmu_v1_map.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.25, ptr @.str.2, ptr @.str.33, i8 0, i8 -68, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"habanalabs\00", [21 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"hop0 pte: 0x%llx (0x%llx)\0A\00", [37 x i8] zeroinitializer }, align 32
@_hl_mmu_v1_map.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.25, ptr @.str.2, ptr @.str.34, i8 0, i8 -67, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"hop1 pte: 0x%llx (0x%llx)\0A\00", [37 x i8] zeroinitializer }, align 32
@_hl_mmu_v1_map.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.25, ptr @.str.2, ptr @.str.35, i8 0, i8 -67, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"hop2 pte: 0x%llx (0x%llx)\0A\00", [37 x i8] zeroinitializer }, align 32
@_hl_mmu_v1_map.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.25, ptr @.str.2, ptr @.str.36, i8 0, i8 -66, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"hop3 pte: 0x%llx (0x%llx)\0A\00", [37 x i8] zeroinitializer }, align 32
@_hl_mmu_v1_map.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.25, ptr @.str.2, ptr @.str.37, i8 0, i8 -65, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"hop4 pte: 0x%llx (0x%llx)\0A\00", [37 x i8] zeroinitializer }, align 32
@_hl_mmu_v1_unmap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 580, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"DRAM unmapping should use huge pages only\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"_hl_mmu_v1_unmap\00", [47 x i8] zeroinitializer }, align 32
@_hl_mmu_v1_unmap._entry_ptr = internal global ptr @_hl_mmu_v1_unmap._entry, section ".printk_index", align 4
@_hl_mmu_v1_unmap._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.2, i32 605, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"DRAM: hop3 PTE points to zero page, can't unmap, va: 0x%llx\0A\00", [35 x i8] zeroinitializer }, align 32
@_hl_mmu_v1_unmap._entry_ptr.42 = internal global ptr @_hl_mmu_v1_unmap._entry.40, section ".printk_index", align 4
@_hl_mmu_v1_unmap._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.39, ptr @.str.2, i32 612, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"DRAM: hop3 PTE is cleared! can't unmap, va: 0x%llx\0A\00", [44 x i8] zeroinitializer }, align 32
@_hl_mmu_v1_unmap._entry_ptr.45 = internal global ptr @_hl_mmu_v1_unmap._entry.43, section ".printk_index", align 4
@_hl_mmu_v1_unmap._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.39, ptr @.str.2, i32 656, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"virt addr 0x%llx is not mapped to phys addr\0A\00", [51 x i8] zeroinitializer }, align 32
@_hl_mmu_v1_unmap._entry_ptr.48 = internal global ptr @_hl_mmu_v1_unmap._entry.46, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 425, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 434, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 285, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 294, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 304, i32 4 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 59, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 516, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 520, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 736, i32 4 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 744, i32 4 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 750, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 754, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 756, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 758, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 760, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 764, i32 4 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 579, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 603, i32 4 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 610, i32 4 }
@___asan_gen_.184 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.187 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.188 = private constant [47 x i8] c"../drivers/misc/habanalabs/common/mmu/mmu_v1.c\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 655, i32 2 }
@llvm.compiler.used = appending global [62 x ptr] [ptr @_hl_mmu_v1_map._entry, ptr @_hl_mmu_v1_map._entry.26, ptr @_hl_mmu_v1_map._entry.29, ptr @_hl_mmu_v1_map._entry_ptr, ptr @_hl_mmu_v1_map._entry_ptr.28, ptr @_hl_mmu_v1_map._entry_ptr.31, ptr @_hl_mmu_v1_unmap._entry, ptr @_hl_mmu_v1_unmap._entry.40, ptr @_hl_mmu_v1_unmap._entry.43, ptr @_hl_mmu_v1_unmap._entry.46, ptr @_hl_mmu_v1_unmap._entry_ptr, ptr @_hl_mmu_v1_unmap._entry_ptr.42, ptr @_hl_mmu_v1_unmap._entry_ptr.45, ptr @_hl_mmu_v1_unmap._entry_ptr.48, ptr @alloc_hop._entry, ptr @alloc_hop._entry_ptr, ptr @dram_default_mapping_init._entry, ptr @dram_default_mapping_init._entry.10, ptr @dram_default_mapping_init._entry.13, ptr @dram_default_mapping_init._entry_ptr, ptr @dram_default_mapping_init._entry_ptr.12, ptr @dram_default_mapping_init._entry_ptr.15, ptr @hl_mmu_v1_ctx_fini._entry, ptr @hl_mmu_v1_ctx_fini._entry.21, ptr @hl_mmu_v1_ctx_fini._entry_ptr, ptr @hl_mmu_v1_ctx_fini._entry_ptr.23, ptr @hl_mmu_v1_init._entry, ptr @hl_mmu_v1_init._entry.5, ptr @hl_mmu_v1_init._entry_ptr, ptr @hl_mmu_v1_init._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @hl_mmu_v1_ctx_fini._rs, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.44, ptr @.str.47], section "llvm.metadata"
@0 = internal global [47 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_mmu_v1_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_mmu_v1_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dram_default_mapping_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dram_default_mapping_init._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dram_default_mapping_init._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_hop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_mmu_v1_ctx_fini._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_mmu_v1_ctx_fini._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_mmu_v1_ctx_fini._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_hl_mmu_v1_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_hl_mmu_v1_map._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_hl_mmu_v1_map._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_hl_mmu_v1_unmap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_hl_mmu_v1_unmap._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_hl_mmu_v1_unmap._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_hl_mmu_v1_unmap._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @hl_mmu_v1_set_funcs(ptr nocapture noundef readnone %hdev, ptr nocapture noundef writeonly %mmu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mmu to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @hl_mmu_v1_init, ptr %mmu, align 4
  %fini = getelementptr inbounds %struct.hl_mmu_funcs, ptr %mmu, i32 0, i32 1
  %1 = ptrtoint ptr %fini to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @hl_mmu_v1_fini, ptr %fini, align 4
  %ctx_init = getelementptr inbounds %struct.hl_mmu_funcs, ptr %mmu, i32 0, i32 2
  %2 = ptrtoint ptr %ctx_init to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @hl_mmu_v1_ctx_init, ptr %ctx_init, align 4
  %ctx_fini = getelementptr inbounds %struct.hl_mmu_funcs, ptr %mmu, i32 0, i32 3
  %3 = ptrtoint ptr %ctx_fini to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @hl_mmu_v1_ctx_fini, ptr %ctx_fini, align 4
  %map = getelementptr inbounds %struct.hl_mmu_funcs, ptr %mmu, i32 0, i32 4
  %4 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @_hl_mmu_v1_map, ptr %map, align 4
  %unmap = getelementptr inbounds %struct.hl_mmu_funcs, ptr %mmu, i32 0, i32 5
  %5 = ptrtoint ptr %unmap to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @_hl_mmu_v1_unmap, ptr %unmap, align 4
  %flush = getelementptr inbounds %struct.hl_mmu_funcs, ptr %mmu, i32 0, i32 6
  %6 = ptrtoint ptr %flush to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @flush, ptr %flush, align 4
  %swap_out = getelementptr inbounds %struct.hl_mmu_funcs, ptr %mmu, i32 0, i32 7
  %7 = ptrtoint ptr %swap_out to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @hl_mmu_v1_swap_out, ptr %swap_out, align 4
  %swap_in = getelementptr inbounds %struct.hl_mmu_funcs, ptr %mmu, i32 0, i32 8
  %8 = ptrtoint ptr %swap_in to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @hl_mmu_v1_swap_in, ptr %swap_in, align 4
  %get_tlb_info = getelementptr inbounds %struct.hl_mmu_funcs, ptr %mmu, i32 0, i32 9
  %9 = ptrtoint ptr %get_tlb_info to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @hl_mmu_v1_get_tlb_info, ptr %get_tlb_info, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hl_mmu_v1_init(ptr nocapture noundef %hdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mmu_hop_table_size = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 33
  %0 = ptrtoint ptr %mmu_hop_table_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mmu_hop_table_size, align 4
  %2 = tail call i32 @llvm.cttz.i32(i32 %1, i1 false) #9, !range !96
  %call1 = tail call ptr @gen_pool_create(i32 noundef %2, i32 noundef -1) #9
  %mmu_priv = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 51
  %3 = ptrtoint ptr %mmu_priv to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call1, ptr %mmu_priv, align 8
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %mmu_pgt_addr = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 23
  %6 = ptrtoint ptr %mmu_pgt_addr to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %mmu_pgt_addr, align 8
  %mmu_hop0_tables_total_size = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 34
  %8 = ptrtoint ptr %mmu_hop0_tables_total_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mmu_hop0_tables_total_size, align 8
  %10 = trunc i64 %7 to i32
  %conv8 = add i32 %9, %10
  %mmu_pgt_size = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 31
  %11 = ptrtoint ptr %mmu_pgt_size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mmu_pgt_size, align 4
  %sub = sub i32 %12, %9
  %call.i.i = tail call i32 @gen_pool_add_owner(ptr noundef nonnull %call1, i32 noundef %conv8, i32 noundef -1, i32 noundef %sub, i32 noundef -1, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool11.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool11.not, label %if.end17, label %do.end15

do.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev16 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %13 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev16, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.6) #12
  br label %err_pool_add

if.end17:                                         ; preds = %if.end
  %max_asid = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 38
  %15 = ptrtoint ptr %max_asid to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %max_asid, align 8
  %17 = ptrtoint ptr %mmu_hop_table_size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mmu_hop_table_size, align 4
  %19 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %16, i32 %18) #9
  %20 = extractvalue { i32, i1 } %19, 1
  br i1 %20, label %kvmalloc_array.exit.thread, label %kvmalloc_array.exit, !prof !97

kvmalloc_array.exit.thread:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %mmu_shadow_hop049 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 51, i32 0, i32 1
  %21 = ptrtoint ptr %mmu_shadow_hop049 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %mmu_shadow_hop049, align 4
  br label %err_pool_add

kvmalloc_array.exit:                              ; preds = %if.end17
  %22 = extractvalue { i32, i1 } %19, 0
  %call.i.i47 = tail call noalias ptr @kvmalloc_node(i32 noundef %22, i32 noundef 3520, i32 noundef -1) #13
  %mmu_shadow_hop0 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 51, i32 0, i32 1
  %23 = ptrtoint ptr %mmu_shadow_hop0 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i.i47, ptr %mmu_shadow_hop0, align 4
  %cmp = icmp ult ptr %call.i.i47, inttoptr (i32 17 to ptr)
  br i1 %cmp, label %kvmalloc_array.exit.err_pool_add_crit_edge, label %kvmalloc_array.exit.cleanup_crit_edge

kvmalloc_array.exit.cleanup_crit_edge:            ; preds = %kvmalloc_array.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

kvmalloc_array.exit.err_pool_add_crit_edge:       ; preds = %kvmalloc_array.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_pool_add

err_pool_add:                                     ; preds = %kvmalloc_array.exit.err_pool_add_crit_edge, %kvmalloc_array.exit.thread, %do.end15
  %rc.0 = phi i32 [ %call.i.i, %do.end15 ], [ -12, %kvmalloc_array.exit.err_pool_add_crit_edge ], [ -12, %kvmalloc_array.exit.thread ]
  %24 = ptrtoint ptr %mmu_priv to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mmu_priv, align 8
  tail call void @gen_pool_destroy(ptr noundef %25) #9
  br label %cleanup

cleanup:                                          ; preds = %err_pool_add, %kvmalloc_array.exit.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %rc.0, %err_pool_add ], [ -12, %do.end ], [ 0, %kvmalloc_array.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hl_mmu_v1_fini(ptr nocapture noundef %hdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mmu_shadow_hop0 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 51, i32 1, i32 1
  %0 = ptrtoint ptr %mmu_shadow_hop0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmu_shadow_hop0, align 4
  %cmp = icmp ult ptr %1, inttoptr (i32 17 to ptr)
  br i1 %cmp, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %mmu_priv = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 51
  %mmu_shadow_hop02 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 51, i32 0, i32 1
  %2 = ptrtoint ptr %mmu_shadow_hop02 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmu_shadow_hop02, align 4
  tail call void @kvfree(ptr noundef %3) #9
  %4 = ptrtoint ptr %mmu_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmu_priv, align 8
  tail call void @gen_pool_destroy(ptr noundef %5) #9
  %6 = ptrtoint ptr %mmu_shadow_hop02 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %mmu_shadow_hop02, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hl_mmu_v1_ctx_init(ptr noundef %ctx) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mmu_shadow_hash = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 1
  %0 = call ptr @memset(ptr %mmu_shadow_hash, i32 0, i32 512)
  %hdev1.i = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 3
  %1 = ptrtoint ptr %hdev1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hdev1.i, align 4
  %dram_supports_virtual_memory.i = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 33, i32 71
  %3 = ptrtoint ptr %dram_supports_virtual_memory.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %dram_supports_virtual_memory.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %entry.dram_default_mapping_init.exit_crit_edge, label %lor.lhs.false.i

entry.dram_default_mapping_init.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %dram_default_mapping_init.exit

lor.lhs.false.i:                                  ; preds = %entry
  %dram_default_page_mapping.i = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 83
  %5 = ptrtoint ptr %dram_default_page_mapping.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %dram_default_page_mapping.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool2.not.i = icmp eq i8 %6, 0
  br i1 %tobool2.not.i, label %lor.lhs.false.i.dram_default_mapping_init.exit_crit_edge, label %lor.lhs.false3.i

lor.lhs.false.i.dram_default_mapping_init.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dram_default_mapping_init.exit

lor.lhs.false3.i:                                 ; preds = %lor.lhs.false.i
  %asid.i = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 21
  %7 = ptrtoint ptr %asid.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %asid.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i = icmp eq i32 %8, 0
  br i1 %cmp.i, label %lor.lhs.false3.i.dram_default_mapping_init.exit_crit_edge, label %if.end.i

lor.lhs.false3.i.dram_default_mapping_init.exit_crit_edge: ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dram_default_mapping_init.exit

if.end.i:                                         ; preds = %lor.lhs.false3.i
  %dram_size_for_default_page_mapping.i = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 33, i32 20
  %9 = ptrtoint ptr %dram_size_for_default_page_mapping.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %dram_size_for_default_page_mapping.i, align 8
  %dram_page_size.i = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 33, i32 35
  %11 = ptrtoint ptr %dram_page_size.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dram_page_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %10)
  %cmp171.i = icmp ult i64 %10, 4294967296
  br i1 %cmp171.i, label %if.then175.i, label %if.else181.i, !prof !98

if.then175.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv176.i = trunc i64 %10 to i32
  %div179.i = udiv i32 %conv176.i, %12
  %conv180.i = zext i32 %div179.i to i64
  br label %if.end406.i

if.else181.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %13 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %12, i64 %10) #14, !srcloc !99
  %asmresult1.i.i = extractvalue { i64, i64 } %13, 1
  br label %if.end406.i

if.end406.i:                                      ; preds = %if.else181.i, %if.then175.i
  %num_of_hop3.0.i = phi i64 [ %conv180.i, %if.then175.i ], [ %asmresult1.i.i, %if.else181.i ]
  %shr212.i = lshr i64 %num_of_hop3.0.i, 9
  %14 = trunc i64 %shr212.i to i32
  %add408.tr.i = shl i32 %14, 3
  %conv410.i = add i32 %add408.tr.i, 16
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %conv410.i, i32 noundef 3520) #13
  %dram_default_hops.i = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 16
  %15 = ptrtoint ptr %dram_default_hops.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call9.i.i.i, ptr %dram_default_hops.i, align 8
  %tobool413.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool413.not.i, label %if.end406.i.dram_default_mapping_init.exit_crit_edge, label %if.end415.i

if.end406.i.dram_default_mapping_init.exit_crit_edge: ; preds = %if.end406.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dram_default_mapping_init.exit

if.end415.i:                                      ; preds = %if.end406.i
  %16 = ptrtoint ptr %hdev1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hdev1.i, align 4
  %mmu_shadow_hop0.i.i = getelementptr inbounds %struct.hl_device, ptr %17, i32 0, i32 51, i32 0, i32 1
  %18 = ptrtoint ptr %mmu_shadow_hop0.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mmu_shadow_hop0.i.i, align 4
  %20 = ptrtoint ptr %19 to i32
  %conv.i.i = zext i32 %20 to i64
  %21 = ptrtoint ptr %asid.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %asid.i, align 8
  %mmu_hop_table_size.i.i = getelementptr inbounds %struct.hl_device, ptr %17, i32 0, i32 33, i32 33
  %23 = ptrtoint ptr %mmu_hop_table_size.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mmu_hop_table_size.i.i, align 4
  %mul.i.i = mul i32 %24, %22
  %conv2.i.i = zext i32 %mul.i.i to i64
  %add.i.i = add nuw nsw i64 %conv2.i.i, %conv.i.i
  %call417.i = tail call fastcc i64 @alloc_hop(ptr noundef %ctx) #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %call417.i)
  %cmp418.i = icmp eq i64 %call417.i, -1
  br i1 %cmp418.i, label %do.end.i, label %if.end421.i

do.end.i:                                         ; preds = %if.end415.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 6
  %25 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.8) #12
  br label %hop1_err.i

if.end421.i:                                      ; preds = %if.end415.i
  %27 = ptrtoint ptr %dram_default_hops.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dram_default_hops.i, align 8
  %idxprom.i = add i32 %14, 1
  %arrayidx.i = getelementptr i64, ptr %28, i32 %idxprom.i
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %call417.i, ptr %arrayidx.i, align 8
  %call424.i = tail call fastcc i64 @alloc_hop(ptr noundef %ctx) #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %call424.i)
  %cmp425.i = icmp eq i64 %call424.i, -1
  br i1 %cmp425.i, label %do.end430.i, label %if.end432.i

do.end430.i:                                      ; preds = %if.end421.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev431.i = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 6
  %30 = ptrtoint ptr %dev431.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev431.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.11) #12
  br label %hop2_err.i

if.end432.i:                                      ; preds = %if.end421.i
  %32 = ptrtoint ptr %dram_default_hops.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dram_default_hops.i, align 8
  %arrayidx436.i = getelementptr i64, ptr %33, i32 %14
  %34 = ptrtoint ptr %arrayidx436.i to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %call424.i, ptr %arrayidx436.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 512, i64 %num_of_hop3.0.i)
  %cmp438997.not.i = icmp ult i64 %num_of_hop3.0.i, 512
  br i1 %cmp438997.not.i, label %if.end432.i.for.end.i_crit_edge, label %if.end432.i.for.body.i_crit_edge

if.end432.i.for.body.i_crit_edge:                 ; preds = %if.end432.i
  br label %for.body.i

if.end432.i.for.end.i_crit_edge:                  ; preds = %if.end432.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i:                                       ; preds = %if.end452.i.for.body.i_crit_edge, %if.end432.i.for.body.i_crit_edge
  %hop3_allocated.0999.i = phi i32 [ %inc.i, %if.end452.i.for.body.i_crit_edge ], [ 0, %if.end432.i.for.body.i_crit_edge ]
  %call440.i = tail call fastcc i64 @alloc_hop(ptr noundef %ctx) #9
  %35 = ptrtoint ptr %dram_default_hops.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dram_default_hops.i, align 8
  %arrayidx442.i = getelementptr i64, ptr %36, i32 %hop3_allocated.0999.i
  %37 = ptrtoint ptr %arrayidx442.i to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %call440.i, ptr %arrayidx442.i, align 8
  %38 = load ptr, ptr %dram_default_hops.i, align 8
  %arrayidx444.i = getelementptr i64, ptr %38, i32 %hop3_allocated.0999.i
  %39 = ptrtoint ptr %arrayidx444.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %arrayidx444.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %40)
  %cmp445.i = icmp eq i64 %40, -1
  br i1 %cmp445.i, label %do.end450.i, label %if.end452.i

do.end450.i:                                      ; preds = %for.body.i
  %dev451.i = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 6
  %41 = ptrtoint ptr %dev451.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev451.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.14, i32 noundef %hop3_allocated.0999.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hop3_allocated.0999.i)
  %cmp4951007.i = icmp sgt i32 %hop3_allocated.0999.i, 0
  br i1 %cmp4951007.i, label %do.end450.i.for.body497.i_crit_edge, label %do.end450.i.for.end502.i_crit_edge

do.end450.i.for.end502.i_crit_edge:               ; preds = %do.end450.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end502.i

do.end450.i.for.body497.i_crit_edge:              ; preds = %do.end450.i
  br label %for.body497.i

if.end452.i:                                      ; preds = %for.body.i
  %inc.i = add i32 %hop3_allocated.0999.i, 1
  %conv437.i = sext i32 %inc.i to i64
  %cmp438.i = icmp ugt i64 %shr212.i, %conv437.i
  br i1 %cmp438.i, label %if.end452.i.for.body.i_crit_edge, label %if.end452.i.for.end.i_crit_edge

if.end452.i.for.end.i_crit_edge:                  ; preds = %if.end452.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

if.end452.i.for.body.i_crit_edge:                 ; preds = %if.end452.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %if.end452.i.for.end.i_crit_edge, %if.end432.i.for.end.i_crit_edge
  %and454.i = and i64 %call417.i, -4096
  %or455.i = or i64 %and454.i, 1
  %43 = ptrtoint ptr %hdev1.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hdev1.i, align 4
  %mmu_hop_table_size.i.i.i = getelementptr inbounds %struct.hl_device, ptr %44, i32 0, i32 33, i32 33
  %45 = ptrtoint ptr %mmu_hop_table_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %mmu_hop_table_size.i.i.i, align 4
  %sub.i.i.i = add i32 %46, -1
  %conv.i.i.i = zext i32 %sub.i.i.i to i64
  %neg.i.i.i = xor i64 %conv.i.i.i, -1
  %and.i.i.i = and i64 %and454.i, %neg.i.i.i
  %mmu_shadow_hop0.i.i.i.i = getelementptr inbounds %struct.hl_device, ptr %44, i32 0, i32 51, i32 0, i32 1
  %47 = ptrtoint ptr %mmu_shadow_hop0.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %mmu_shadow_hop0.i.i.i.i, align 4
  %49 = ptrtoint ptr %48 to i32
  %conv.i.i.i.i = zext i32 %49 to i64
  %50 = ptrtoint ptr %asid.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %asid.i, align 8
  %mul.i.i.i.i = mul i32 %51, %46
  %conv2.i.i.i.i = zext i32 %mul.i.i.i.i to i64
  %add.i.i.i.i = add nuw nsw i64 %conv2.i.i.i.i, %conv.i.i.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i.i, i64 %add.i.i.i.i)
  %cmp.not.i.i.i = icmp eq i64 %and.i.i.i, %add.i.i.i.i
  br i1 %cmp.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i755.i

if.then.i.i755.i:                                 ; preds = %for.end.i
  %conv.i11.i.i.i = trunc i64 %and.i.i.i to i32
  %mul.i.i.i.i.i.i = mul i32 %conv.i11.i.i.i, 1640531527
  %shr.i.i.i.i.i = lshr i32 %mul.i.i.i.i.i.i, 25
  %arrayidx.i.i.i.i = getelementptr %struct.hl_ctx, ptr %ctx, i32 0, i32 1, i32 %shr.i.i.i.i.i
  br label %for.cond.i.i.i.i

for.cond.i.i.i.i:                                 ; preds = %for.body.i.i.i.i.for.cond.i.i.i.i_crit_edge, %if.then.i.i755.i
  %pgt_info.0.in.i.i.i.i = phi ptr [ %arrayidx.i.i.i.i, %if.then.i.i755.i ], [ %pgt_info.0.i.i.i.i, %for.body.i.i.i.i.for.cond.i.i.i.i_crit_edge ]
  %52 = ptrtoint ptr %pgt_info.0.in.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %pgt_info.0.i.i.i.i = load ptr, ptr %pgt_info.0.in.i.i.i.i, align 4
  %tobool2.not.i.i.i.i = icmp eq ptr %pgt_info.0.i.i.i.i, null
  br i1 %tobool2.not.i.i.i.i, label %for.cond.i.i.i.i.get_pgt_info.exit.i.i.i_crit_edge, label %for.body.i.i.i.i

for.cond.i.i.i.i.get_pgt_info.exit.i.i.i_crit_edge: ; preds = %for.cond.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pgt_info.exit.i.i.i

for.body.i.i.i.i:                                 ; preds = %for.cond.i.i.i.i
  %shadow_addr.i.i.i.i = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i.i.i, i32 0, i32 2
  %53 = ptrtoint ptr %shadow_addr.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %shadow_addr.i.i.i.i, align 8
  %cmp.i.i.i756.i = icmp eq i64 %54, %and.i.i.i
  br i1 %cmp.i.i.i756.i, label %for.body.i.i.i.i.get_pgt_info.exit.i.i.i_crit_edge, label %for.body.i.i.i.i.for.cond.i.i.i.i_crit_edge

for.body.i.i.i.i.for.cond.i.i.i.i_crit_edge:      ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i.i.i

for.body.i.i.i.i.get_pgt_info.exit.i.i.i_crit_edge: ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pgt_info.exit.i.i.i

get_pgt_info.exit.i.i.i:                          ; preds = %for.body.i.i.i.i.get_pgt_info.exit.i.i.i_crit_edge, %for.cond.i.i.i.i.get_pgt_info.exit.i.i.i_crit_edge
  %phys_addr.i.i.i = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i.i.i, i32 0, i32 1
  %55 = ptrtoint ptr %phys_addr.i.i.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %phys_addr.i.i.i, align 8
  br label %get_phys_addr.exit.i.i

if.else.i.i.i:                                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %mmu_pgt_addr.i.i.i.i = getelementptr inbounds %struct.hl_device, ptr %44, i32 0, i32 33, i32 23
  %57 = ptrtoint ptr %mmu_pgt_addr.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %mmu_pgt_addr.i.i.i.i, align 8
  %add.i17.i.i.i = add i64 %58, %conv2.i.i.i.i
  br label %get_phys_addr.exit.i.i

get_phys_addr.exit.i.i:                           ; preds = %if.else.i.i.i, %get_pgt_info.exit.i.i.i
  %phys_hop_addr.0.i.i.i = phi i64 [ %56, %get_pgt_info.exit.i.i.i ], [ %add.i17.i.i.i, %if.else.i.i.i ]
  %asic_funcs.i.i = getelementptr inbounds %struct.hl_device, ptr %44, i32 0, i32 34
  %59 = ptrtoint ptr %asic_funcs.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %asic_funcs.i.i, align 8
  %write_pte.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %60, i32 0, i32 41
  %61 = ptrtoint ptr %write_pte.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %write_pte.i.i, align 4
  %and.i15.i.i = and i64 %add.i.i, %neg.i.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i15.i.i, i64 %add.i.i.i.i)
  %cmp.not.i22.i.i = icmp eq i64 %and.i15.i.i, %add.i.i.i.i
  br i1 %cmp.not.i22.i.i, label %if.else.i39.i.i, label %if.then.i27.i.i

if.then.i27.i.i:                                  ; preds = %get_phys_addr.exit.i.i
  %conv.i11.i23.i.i = trunc i64 %and.i15.i.i to i32
  %mul.i.i.i.i24.i.i = mul i32 %conv.i11.i23.i.i, 1640531527
  %shr.i.i.i25.i.i = lshr i32 %mul.i.i.i.i24.i.i, 25
  %arrayidx.i.i26.i.i = getelementptr %struct.hl_ctx, ptr %ctx, i32 0, i32 1, i32 %shr.i.i.i25.i.i
  br label %for.cond.i.i31.i.i

for.cond.i.i31.i.i:                               ; preds = %for.body.i.i34.i.i.for.cond.i.i31.i.i_crit_edge, %if.then.i27.i.i
  %pgt_info.0.in.i.i28.i.i = phi ptr [ %arrayidx.i.i26.i.i, %if.then.i27.i.i ], [ %pgt_info.0.i.i29.i.i, %for.body.i.i34.i.i.for.cond.i.i31.i.i_crit_edge ]
  %63 = ptrtoint ptr %pgt_info.0.in.i.i28.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %pgt_info.0.i.i29.i.i = load ptr, ptr %pgt_info.0.in.i.i28.i.i, align 4
  %tobool2.not.i.i30.i.i = icmp eq ptr %pgt_info.0.i.i29.i.i, null
  br i1 %tobool2.not.i.i30.i.i, label %for.cond.i.i31.i.i.get_pgt_info.exit.i36.i.i_crit_edge, label %for.body.i.i34.i.i

for.cond.i.i31.i.i.get_pgt_info.exit.i36.i.i_crit_edge: ; preds = %for.cond.i.i31.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pgt_info.exit.i36.i.i

for.body.i.i34.i.i:                               ; preds = %for.cond.i.i31.i.i
  %shadow_addr.i.i32.i.i = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i29.i.i, i32 0, i32 2
  %64 = ptrtoint ptr %shadow_addr.i.i32.i.i to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %shadow_addr.i.i32.i.i, align 8
  %cmp.i.i33.i.i = icmp eq i64 %65, %and.i15.i.i
  br i1 %cmp.i.i33.i.i, label %for.body.i.i34.i.i.get_pgt_info.exit.i36.i.i_crit_edge, label %for.body.i.i34.i.i.for.cond.i.i31.i.i_crit_edge

for.body.i.i34.i.i.for.cond.i.i31.i.i_crit_edge:  ; preds = %for.body.i.i34.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i31.i.i

for.body.i.i34.i.i.get_pgt_info.exit.i36.i.i_crit_edge: ; preds = %for.body.i.i34.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pgt_info.exit.i36.i.i

get_pgt_info.exit.i36.i.i:                        ; preds = %for.body.i.i34.i.i.get_pgt_info.exit.i36.i.i_crit_edge, %for.cond.i.i31.i.i.get_pgt_info.exit.i36.i.i_crit_edge
  %phys_addr.i35.i.i = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i29.i.i, i32 0, i32 1
  %66 = ptrtoint ptr %phys_addr.i35.i.i to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %phys_addr.i35.i.i, align 8
  br label %write_pte.exit.i

if.else.i39.i.i:                                  ; preds = %get_phys_addr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %mmu_pgt_addr.i.i37.i.i = getelementptr inbounds %struct.hl_device, ptr %44, i32 0, i32 33, i32 23
  %68 = ptrtoint ptr %mmu_pgt_addr.i.i37.i.i to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %mmu_pgt_addr.i.i37.i.i, align 8
  %add.i17.i38.i.i = add i64 %69, %conv2.i.i.i.i
  br label %write_pte.exit.i

write_pte.exit.i:                                 ; preds = %if.else.i39.i.i, %get_pgt_info.exit.i36.i.i
  %phys_hop_addr.0.i40.i.i = phi i64 [ %67, %get_pgt_info.exit.i36.i.i ], [ %add.i17.i38.i.i, %if.else.i39.i.i ]
  %and1.i.i.i = and i64 %and454.i, %conv.i.i.i
  %add.i.i.i = add i64 %phys_hop_addr.0.i.i.i, %and1.i.i.i
  %or.i.i = or i64 %add.i.i.i, 1
  %and1.i41.i.i = and i64 %add.i.i, %conv.i.i.i
  %add.i42.i.i = add i64 %phys_hop_addr.0.i40.i.i, %and1.i41.i.i
  tail call void %62(ptr noundef %44, i64 noundef %add.i42.i.i, i64 noundef %or.i.i) #9
  %conv.i757.i = trunc i64 %add.i.i to i32
  %70 = inttoptr i32 %conv.i757.i to ptr
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %or455.i, ptr %70, align 8
  %and456.i = and i64 %call424.i, -4096
  %or457.i = or i64 %and456.i, 1
  %72 = ptrtoint ptr %hdev1.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %hdev1.i, align 4
  %mmu_hop_table_size.i.i759.i = getelementptr inbounds %struct.hl_device, ptr %73, i32 0, i32 33, i32 33
  %74 = ptrtoint ptr %mmu_hop_table_size.i.i759.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %mmu_hop_table_size.i.i759.i, align 4
  %sub.i.i760.i = add i32 %75, -1
  %conv.i.i761.i = zext i32 %sub.i.i760.i to i64
  %neg.i.i762.i = xor i64 %conv.i.i761.i, -1
  %and.i.i763.i = and i64 %and456.i, %neg.i.i762.i
  %mmu_shadow_hop0.i.i.i764.i = getelementptr inbounds %struct.hl_device, ptr %73, i32 0, i32 51, i32 0, i32 1
  %76 = ptrtoint ptr %mmu_shadow_hop0.i.i.i764.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %mmu_shadow_hop0.i.i.i764.i, align 4
  %78 = ptrtoint ptr %77 to i32
  %conv.i.i.i765.i = zext i32 %78 to i64
  %79 = ptrtoint ptr %asid.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %asid.i, align 8
  %mul.i.i.i767.i = mul i32 %80, %75
  %conv2.i.i.i768.i = zext i32 %mul.i.i.i767.i to i64
  %add.i.i.i769.i = add nuw nsw i64 %conv2.i.i.i768.i, %conv.i.i.i765.i
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i763.i, i64 %add.i.i.i769.i)
  %cmp.not.i.i770.i = icmp eq i64 %and.i.i763.i, %add.i.i.i769.i
  br i1 %cmp.not.i.i770.i, label %if.else.i.i787.i, label %if.then.i.i775.i

if.then.i.i775.i:                                 ; preds = %write_pte.exit.i
  %conv.i11.i.i771.i = trunc i64 %and.i.i763.i to i32
  %mul.i.i.i.i.i772.i = mul i32 %conv.i11.i.i771.i, 1640531527
  %shr.i.i.i.i773.i = lshr i32 %mul.i.i.i.i.i772.i, 25
  %arrayidx.i.i.i774.i = getelementptr %struct.hl_ctx, ptr %ctx, i32 0, i32 1, i32 %shr.i.i.i.i773.i
  br label %for.cond.i.i.i779.i

for.cond.i.i.i779.i:                              ; preds = %for.body.i.i.i782.i.for.cond.i.i.i779.i_crit_edge, %if.then.i.i775.i
  %pgt_info.0.in.i.i.i776.i = phi ptr [ %arrayidx.i.i.i774.i, %if.then.i.i775.i ], [ %pgt_info.0.i.i.i777.i, %for.body.i.i.i782.i.for.cond.i.i.i779.i_crit_edge ]
  %81 = ptrtoint ptr %pgt_info.0.in.i.i.i776.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %pgt_info.0.i.i.i777.i = load ptr, ptr %pgt_info.0.in.i.i.i776.i, align 4
  %tobool2.not.i.i.i778.i = icmp eq ptr %pgt_info.0.i.i.i777.i, null
  br i1 %tobool2.not.i.i.i778.i, label %for.cond.i.i.i779.i.get_pgt_info.exit.i.i784.i_crit_edge, label %for.body.i.i.i782.i

for.cond.i.i.i779.i.get_pgt_info.exit.i.i784.i_crit_edge: ; preds = %for.cond.i.i.i779.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pgt_info.exit.i.i784.i

for.body.i.i.i782.i:                              ; preds = %for.cond.i.i.i779.i
  %shadow_addr.i.i.i780.i = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i.i777.i, i32 0, i32 2
  %82 = ptrtoint ptr %shadow_addr.i.i.i780.i to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %shadow_addr.i.i.i780.i, align 8
  %cmp.i.i.i781.i = icmp eq i64 %83, %and.i.i763.i
  br i1 %cmp.i.i.i781.i, label %for.body.i.i.i782.i.get_pgt_info.exit.i.i784.i_crit_edge, label %for.body.i.i.i782.i.for.cond.i.i.i779.i_crit_edge

for.body.i.i.i782.i.for.cond.i.i.i779.i_crit_edge: ; preds = %for.body.i.i.i782.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i.i779.i

for.body.i.i.i782.i.get_pgt_info.exit.i.i784.i_crit_edge: ; preds = %for.body.i.i.i782.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pgt_info.exit.i.i784.i

get_pgt_info.exit.i.i784.i:                       ; preds = %for.body.i.i.i782.i.get_pgt_info.exit.i.i784.i_crit_edge, %for.cond.i.i.i779.i.get_pgt_info.exit.i.i784.i_crit_edge
  %phys_addr.i.i783.i = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i.i777.i, i32 0, i32 1
  %84 = ptrtoint ptr %phys_addr.i.i783.i to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %phys_addr.i.i783.i, align 8
  br label %get_phys_addr.exit.i793.i

if.else.i.i787.i:                                 ; preds = %write_pte.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %mmu_pgt_addr.i.i.i785.i = getelementptr inbounds %struct.hl_device, ptr %73, i32 0, i32 33, i32 23
  %86 = ptrtoint ptr %mmu_pgt_addr.i.i.i785.i to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %mmu_pgt_addr.i.i.i785.i, align 8
  %add.i17.i.i786.i = add i64 %87, %conv2.i.i.i768.i
  br label %get_phys_addr.exit.i793.i

get_phys_addr.exit.i793.i:                        ; preds = %if.else.i.i787.i, %get_pgt_info.exit.i.i784.i
  %phys_hop_addr.0.i.i788.i = phi i64 [ %85, %get_pgt_info.exit.i.i784.i ], [ %add.i17.i.i786.i, %if.else.i.i787.i ]
  %asic_funcs.i789.i = getelementptr inbounds %struct.hl_device, ptr %73, i32 0, i32 34
  %88 = ptrtoint ptr %asic_funcs.i789.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %asic_funcs.i789.i, align 8
  %write_pte.i790.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %89, i32 0, i32 41
  %90 = ptrtoint ptr %write_pte.i790.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %write_pte.i790.i, align 4
  %and.i15.i791.i = and i64 %call417.i, %neg.i.i762.i
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i15.i791.i, i64 %add.i.i.i769.i)
  %cmp.not.i22.i792.i = icmp eq i64 %and.i15.i791.i, %add.i.i.i769.i
  br i1 %cmp.not.i22.i792.i, label %if.else.i39.i810.i, label %if.then.i27.i798.i

if.then.i27.i798.i:                               ; preds = %get_phys_addr.exit.i793.i
  %conv.i11.i23.i794.i = trunc i64 %and.i15.i791.i to i32
  %mul.i.i.i.i24.i795.i = mul i32 %conv.i11.i23.i794.i, 1640531527
  %shr.i.i.i25.i796.i = lshr i32 %mul.i.i.i.i24.i795.i, 25
  %arrayidx.i.i26.i797.i = getelementptr %struct.hl_ctx, ptr %ctx, i32 0, i32 1, i32 %shr.i.i.i25.i796.i
  br label %for.cond.i.i31.i802.i

for.cond.i.i31.i802.i:                            ; preds = %for.body.i.i34.i805.i.for.cond.i.i31.i802.i_crit_edge, %if.then.i27.i798.i
  %pgt_info.0.in.i.i28.i799.i = phi ptr [ %arrayidx.i.i26.i797.i, %if.then.i27.i798.i ], [ %pgt_info.0.i.i29.i800.i, %for.body.i.i34.i805.i.for.cond.i.i31.i802.i_crit_edge ]
  %92 = ptrtoint ptr %pgt_info.0.in.i.i28.i799.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %pgt_info.0.i.i29.i800.i = load ptr, ptr %pgt_info.0.in.i.i28.i799.i, align 4
  %tobool2.not.i.i30.i801.i = icmp eq ptr %pgt_info.0.i.i29.i800.i, null
  br i1 %tobool2.not.i.i30.i801.i, label %for.cond.i.i31.i802.i.get_pgt_info.exit.i36.i807.i_crit_edge, label %for.body.i.i34.i805.i

for.cond.i.i31.i802.i.get_pgt_info.exit.i36.i807.i_crit_edge: ; preds = %for.cond.i.i31.i802.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pgt_info.exit.i36.i807.i

for.body.i.i34.i805.i:                            ; preds = %for.cond.i.i31.i802.i
  %shadow_addr.i.i32.i803.i = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i29.i800.i, i32 0, i32 2
  %93 = ptrtoint ptr %shadow_addr.i.i32.i803.i to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %shadow_addr.i.i32.i803.i, align 8
  %cmp.i.i33.i804.i = icmp eq i64 %94, %and.i15.i791.i
  br i1 %cmp.i.i33.i804.i, label %for.body.i.i34.i805.i.get_pgt_info.exit.i36.i807.i_crit_edge, label %for.body.i.i34.i805.i.for.cond.i.i31.i802.i_crit_edge

for.body.i.i34.i805.i.for.cond.i.i31.i802.i_crit_edge: ; preds = %for.body.i.i34.i805.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i31.i802.i

for.body.i.i34.i805.i.get_pgt_info.exit.i36.i807.i_crit_edge: ; preds = %for.body.i.i34.i805.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pgt_info.exit.i36.i807.i

get_pgt_info.exit.i36.i807.i:                     ; preds = %for.body.i.i34.i805.i.get_pgt_info.exit.i36.i807.i_crit_edge, %for.cond.i.i31.i802.i.get_pgt_info.exit.i36.i807.i_crit_edge
  %phys_addr.i35.i806.i = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i29.i800.i, i32 0, i32 1
  %95 = ptrtoint ptr %phys_addr.i35.i806.i to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %phys_addr.i35.i806.i, align 8
  br label %write_pte.exit818.i

if.else.i39.i810.i:                               ; preds = %get_phys_addr.exit.i793.i
  call void @__sanitizer_cov_trace_pc() #11
  %mmu_pgt_addr.i.i37.i808.i = getelementptr inbounds %struct.hl_device, ptr %73, i32 0, i32 33, i32 23
  %97 = ptrtoint ptr %mmu_pgt_addr.i.i37.i808.i to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %mmu_pgt_addr.i.i37.i808.i, align 8
  %add.i17.i38.i809.i = add i64 %98, %conv2.i.i.i768.i
  br label %write_pte.exit818.i

write_pte.exit818.i:                              ; preds = %if.else.i39.i810.i, %get_pgt_info.exit.i36.i807.i
  %phys_hop_addr.0.i40.i811.i = phi i64 [ %96, %get_pgt_info.exit.i36.i807.i ], [ %add.i17.i38.i809.i, %if.else.i39.i810.i ]
  %and1.i.i812.i = and i64 %and456.i, %conv.i.i761.i
  %add.i.i813.i = add i64 %phys_hop_addr.0.i.i788.i, %and1.i.i812.i
  %or.i814.i = or i64 %add.i.i813.i, 1
  %and1.i41.i815.i = and i64 %call417.i, %conv.i.i761.i
  %add.i42.i816.i = add i64 %phys_hop_addr.0.i40.i811.i, %and1.i41.i815.i
  tail call void %91(ptr noundef %73, i64 noundef %add.i42.i816.i, i64 noundef %or.i814.i) #9
  %conv.i817.i = trunc i64 %call417.i to i32
  %99 = inttoptr i32 %conv.i817.i to ptr
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_store8_noabort(i32 %100)
  store i64 %or457.i, ptr %99, align 8
  %mul.i.i.i.i.i = mul i32 %conv.i817.i, 1640531527
  %shr.i.i.i.i = lshr i32 %mul.i.i.i.i.i, 25
  %arrayidx.i.i.i = getelementptr %struct.hl_ctx, ptr %ctx, i32 0, i32 1, i32 %shr.i.i.i.i
  br label %for.cond.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i.for.cond.i.i.i_crit_edge, %write_pte.exit818.i
  %pgt_info.0.in.i.i.i = phi ptr [ %arrayidx.i.i.i, %write_pte.exit818.i ], [ %pgt_info.0.i.i.i, %for.body.i.i.i.for.cond.i.i.i_crit_edge ]
  %101 = ptrtoint ptr %pgt_info.0.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %pgt_info.0.i.i.i = load ptr, ptr %pgt_info.0.in.i.i.i, align 4
  %tobool2.not.i.i.i = icmp eq ptr %pgt_info.0.i.i.i, null
  br i1 %tobool2.not.i.i.i, label %for.cond.i.i.i.get_pte.exit.i_crit_edge, label %for.body.i.i.i

for.cond.i.i.i.get_pte.exit.i_crit_edge:          ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pte.exit.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i
  %shadow_addr.i.i.i = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i.i, i32 0, i32 2
  %102 = ptrtoint ptr %shadow_addr.i.i.i to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %shadow_addr.i.i.i, align 8
  %cmp.i.i820.i = icmp eq i64 %103, %call417.i
  br i1 %cmp.i.i820.i, label %for.body.i.i.i.get_pte.exit.i_crit_edge, label %for.body.i.i.i.for.cond.i.i.i_crit_edge

for.body.i.i.i.for.cond.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i.i

for.body.i.i.i.get_pte.exit.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pte.exit.i

get_pte.exit.i:                                   ; preds = %for.body.i.i.i.get_pte.exit.i_crit_edge, %for.cond.i.i.i.get_pte.exit.i_crit_edge
  %num_of_ptes.i.i = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i.i, i32 0, i32 4
  %104 = ptrtoint ptr %num_of_ptes.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %num_of_ptes.i.i, align 4
  %inc.i.i = add i32 %105, 1
  store i32 %inc.i.i, ptr %num_of_ptes.i.i, align 4
  br i1 %cmp438997.not.i, label %get_pte.exit.i.for.end493.i_crit_edge, label %for.body462.lr.ph.i

get_pte.exit.i.for.end493.i_crit_edge:            ; preds = %get_pte.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end493.i

for.body462.lr.ph.i:                              ; preds = %get_pte.exit.i
  %conv.i.i882.i = trunc i64 %call424.i to i32
  %mul.i.i.i.i883.i = mul i32 %conv.i.i882.i, 1640531527
  %shr.i.i.i884.i = lshr i32 %mul.i.i.i.i883.i, 25
  %arrayidx.i.i885.i = getelementptr %struct.hl_ctx, ptr %ctx, i32 0, i32 1, i32 %shr.i.i.i884.i
  br label %for.body462.i

for.body462.i:                                    ; preds = %get_pte.exit895.i.for.body462.i_crit_edge, %for.body462.lr.ph.i
  %i.11002.i = phi i32 [ 0, %for.body462.lr.ph.i ], [ %inc469.i, %get_pte.exit895.i.for.body462.i_crit_edge ]
  %hop2_pte_addr.01001.i = phi i64 [ %call424.i, %for.body462.lr.ph.i ], [ %add467.i, %get_pte.exit895.i.for.body462.i_crit_edge ]
  %106 = ptrtoint ptr %dram_default_hops.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dram_default_hops.i, align 8
  %arrayidx464.i = getelementptr i64, ptr %107, i32 %i.11002.i
  %108 = ptrtoint ptr %arrayidx464.i to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %arrayidx464.i, align 8
  %and465.i = and i64 %109, -4096
  %or466.i = or i64 %and465.i, 1
  %110 = ptrtoint ptr %hdev1.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %hdev1.i, align 4
  %mmu_hop_table_size.i.i822.i = getelementptr inbounds %struct.hl_device, ptr %111, i32 0, i32 33, i32 33
  %112 = ptrtoint ptr %mmu_hop_table_size.i.i822.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %mmu_hop_table_size.i.i822.i, align 4
  %sub.i.i823.i = add i32 %113, -1
  %conv.i.i824.i = zext i32 %sub.i.i823.i to i64
  %neg.i.i825.i = xor i64 %conv.i.i824.i, -1
  %and.i.i826.i = and i64 %and465.i, %neg.i.i825.i
  %mmu_shadow_hop0.i.i.i827.i = getelementptr inbounds %struct.hl_device, ptr %111, i32 0, i32 51, i32 0, i32 1
  %114 = ptrtoint ptr %mmu_shadow_hop0.i.i.i827.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %mmu_shadow_hop0.i.i.i827.i, align 4
  %116 = ptrtoint ptr %115 to i32
  %conv.i.i.i828.i = zext i32 %116 to i64
  %117 = ptrtoint ptr %asid.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %asid.i, align 8
  %mul.i.i.i830.i = mul i32 %118, %113
  %conv2.i.i.i831.i = zext i32 %mul.i.i.i830.i to i64
  %add.i.i.i832.i = add nuw nsw i64 %conv2.i.i.i831.i, %conv.i.i.i828.i
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i826.i, i64 %add.i.i.i832.i)
  %cmp.not.i.i833.i = icmp eq i64 %and.i.i826.i, %add.i.i.i832.i
  br i1 %cmp.not.i.i833.i, label %if.else.i.i850.i, label %if.then.i.i838.i

if.then.i.i838.i:                                 ; preds = %for.body462.i
  %conv.i11.i.i834.i = trunc i64 %and.i.i826.i to i32
  %mul.i.i.i.i.i835.i = mul i32 %conv.i11.i.i834.i, 1640531527
  %shr.i.i.i.i836.i = lshr i32 %mul.i.i.i.i.i835.i, 25
  %arrayidx.i.i.i837.i = getelementptr %struct.hl_ctx, ptr %ctx, i32 0, i32 1, i32 %shr.i.i.i.i836.i
  br label %for.cond.i.i.i842.i

for.cond.i.i.i842.i:                              ; preds = %for.body.i.i.i845.i.for.cond.i.i.i842.i_crit_edge, %if.then.i.i838.i
  %pgt_info.0.in.i.i.i839.i = phi ptr [ %arrayidx.i.i.i837.i, %if.then.i.i838.i ], [ %pgt_info.0.i.i.i840.i, %for.body.i.i.i845.i.for.cond.i.i.i842.i_crit_edge ]
  %119 = ptrtoint ptr %pgt_info.0.in.i.i.i839.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %pgt_info.0.i.i.i840.i = load ptr, ptr %pgt_info.0.in.i.i.i839.i, align 4
  %tobool2.not.i.i.i841.i = icmp eq ptr %pgt_info.0.i.i.i840.i, null
  br i1 %tobool2.not.i.i.i841.i, label %for.cond.i.i.i842.i.get_pgt_info.exit.i.i847.i_crit_edge, label %for.body.i.i.i845.i

for.cond.i.i.i842.i.get_pgt_info.exit.i.i847.i_crit_edge: ; preds = %for.cond.i.i.i842.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pgt_info.exit.i.i847.i

for.body.i.i.i845.i:                              ; preds = %for.cond.i.i.i842.i
  %shadow_addr.i.i.i843.i = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i.i840.i, i32 0, i32 2
  %120 = ptrtoint ptr %shadow_addr.i.i.i843.i to i32
  call void @__asan_load8_noabort(i32 %120)
  %121 = load i64, ptr %shadow_addr.i.i.i843.i, align 8
  %cmp.i.i.i844.i = icmp eq i64 %121, %and.i.i826.i
  br i1 %cmp.i.i.i844.i, label %for.body.i.i.i845.i.get_pgt_info.exit.i.i847.i_crit_edge, label %for.body.i.i.i845.i.for.cond.i.i.i842.i_crit_edge

for.body.i.i.i845.i.for.cond.i.i.i842.i_crit_edge: ; preds = %for.body.i.i.i845.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i.i842.i

for.body.i.i.i845.i.get_pgt_info.exit.i.i847.i_crit_edge: ; preds = %for.body.i.i.i845.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pgt_info.exit.i.i847.i

get_pgt_info.exit.i.i847.i:                       ; preds = %for.body.i.i.i845.i.get_pgt_info.exit.i.i847.i_crit_edge, %for.cond.i.i.i842.i.get_pgt_info.exit.i.i847.i_crit_edge
  %phys_addr.i.i846.i = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i.i840.i, i32 0, i32 1
  %122 = ptrtoint ptr %phys_addr.i.i846.i to i32
  call void @__asan_load8_noabort(i32 %122)
  %123 = load i64, ptr %phys_addr.i.i846.i, align 8
  br label %get_phys_addr.exit.i856.i

if.else.i.i850.i:                                 ; preds = %for.body462.i
  call void @__sanitizer_cov_trace_pc() #11
  %mmu_pgt_addr.i.i.i848.i = getelementptr inbounds %struct.hl_device, ptr %111, i32 0, i32 33, i32 23
  %124 = ptrtoint ptr %mmu_pgt_addr.i.i.i848.i to i32
  call void @__asan_load8_noabort(i32 %124)
  %125 = load i64, ptr %mmu_pgt_addr.i.i.i848.i, align 8
  %add.i17.i.i849.i = add i64 %125, %conv2.i.i.i831.i
  br label %get_phys_addr.exit.i856.i

get_phys_addr.exit.i856.i:                        ; preds = %if.else.i.i850.i, %get_pgt_info.exit.i.i847.i
  %phys_hop_addr.0.i.i851.i = phi i64 [ %123, %get_pgt_info.exit.i.i847.i ], [ %add.i17.i.i849.i, %if.else.i.i850.i ]
  %asic_funcs.i852.i = getelementptr inbounds %struct.hl_device, ptr %111, i32 0, i32 34
  %126 = ptrtoint ptr %asic_funcs.i852.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %asic_funcs.i852.i, align 8
  %write_pte.i853.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %127, i32 0, i32 41
  %128 = ptrtoint ptr %write_pte.i853.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %write_pte.i853.i, align 4
  %and.i15.i854.i = and i64 %hop2_pte_addr.01001.i, %neg.i.i825.i
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i15.i854.i, i64 %add.i.i.i832.i)
  %cmp.not.i22.i855.i = icmp eq i64 %and.i15.i854.i, %add.i.i.i832.i
  br i1 %cmp.not.i22.i855.i, label %if.else.i39.i873.i, label %if.then.i27.i861.i

if.then.i27.i861.i:                               ; preds = %get_phys_addr.exit.i856.i
  %conv.i11.i23.i857.i = trunc i64 %and.i15.i854.i to i32
  %mul.i.i.i.i24.i858.i = mul i32 %conv.i11.i23.i857.i, 1640531527
  %shr.i.i.i25.i859.i = lshr i32 %mul.i.i.i.i24.i858.i, 25
  %arrayidx.i.i26.i860.i = getelementptr %struct.hl_ctx, ptr %ctx, i32 0, i32 1, i32 %shr.i.i.i25.i859.i
  br label %for.cond.i.i31.i865.i

for.cond.i.i31.i865.i:                            ; preds = %for.body.i.i34.i868.i.for.cond.i.i31.i865.i_crit_edge, %if.then.i27.i861.i
  %pgt_info.0.in.i.i28.i862.i = phi ptr [ %arrayidx.i.i26.i860.i, %if.then.i27.i861.i ], [ %pgt_info.0.i.i29.i863.i, %for.body.i.i34.i868.i.for.cond.i.i31.i865.i_crit_edge ]
  %130 = ptrtoint ptr %pgt_info.0.in.i.i28.i862.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %pgt_info.0.i.i29.i863.i = load ptr, ptr %pgt_info.0.in.i.i28.i862.i, align 4
  %tobool2.not.i.i30.i864.i = icmp eq ptr %pgt_info.0.i.i29.i863.i, null
  br i1 %tobool2.not.i.i30.i864.i, label %for.cond.i.i31.i865.i.get_pgt_info.exit.i36.i870.i_crit_edge, label %for.body.i.i34.i868.i

for.cond.i.i31.i865.i.get_pgt_info.exit.i36.i870.i_crit_edge: ; preds = %for.cond.i.i31.i865.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pgt_info.exit.i36.i870.i

for.body.i.i34.i868.i:                            ; preds = %for.cond.i.i31.i865.i
  %shadow_addr.i.i32.i866.i = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i29.i863.i, i32 0, i32 2
  %131 = ptrtoint ptr %shadow_addr.i.i32.i866.i to i32
  call void @__asan_load8_noabort(i32 %131)
  %132 = load i64, ptr %shadow_addr.i.i32.i866.i, align 8
  %cmp.i.i33.i867.i = icmp eq i64 %132, %and.i15.i854.i
  br i1 %cmp.i.i33.i867.i, label %for.body.i.i34.i868.i.get_pgt_info.exit.i36.i870.i_crit_edge, label %for.body.i.i34.i868.i.for.cond.i.i31.i865.i_crit_edge

for.body.i.i34.i868.i.for.cond.i.i31.i865.i_crit_edge: ; preds = %for.body.i.i34.i868.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i31.i865.i

for.body.i.i34.i868.i.get_pgt_info.exit.i36.i870.i_crit_edge: ; preds = %for.body.i.i34.i868.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pgt_info.exit.i36.i870.i

get_pgt_info.exit.i36.i870.i:                     ; preds = %for.body.i.i34.i868.i.get_pgt_info.exit.i36.i870.i_crit_edge, %for.cond.i.i31.i865.i.get_pgt_info.exit.i36.i870.i_crit_edge
  %phys_addr.i35.i869.i = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i29.i863.i, i32 0, i32 1
  %133 = ptrtoint ptr %phys_addr.i35.i869.i to i32
  call void @__asan_load8_noabort(i32 %133)
  %134 = load i64, ptr %phys_addr.i35.i869.i, align 8
  br label %write_pte.exit881.i

if.else.i39.i873.i:                               ; preds = %get_phys_addr.exit.i856.i
  call void @__sanitizer_cov_trace_pc() #11
  %mmu_pgt_addr.i.i37.i871.i = getelementptr inbounds %struct.hl_device, ptr %111, i32 0, i32 33, i32 23
  %135 = ptrtoint ptr %mmu_pgt_addr.i.i37.i871.i to i32
  call void @__asan_load8_noabort(i32 %135)
  %136 = load i64, ptr %mmu_pgt_addr.i.i37.i871.i, align 8
  %add.i17.i38.i872.i = add i64 %136, %conv2.i.i.i831.i
  br label %write_pte.exit881.i

write_pte.exit881.i:                              ; preds = %if.else.i39.i873.i, %get_pgt_info.exit.i36.i870.i
  %phys_hop_addr.0.i40.i874.i = phi i64 [ %134, %get_pgt_info.exit.i36.i870.i ], [ %add.i17.i38.i872.i, %if.else.i39.i873.i ]
  %and1.i.i875.i = and i64 %and465.i, %conv.i.i824.i
  %add.i.i876.i = add i64 %phys_hop_addr.0.i.i851.i, %and1.i.i875.i
  %or.i877.i = or i64 %add.i.i876.i, 1
  %and1.i41.i878.i = and i64 %hop2_pte_addr.01001.i, %conv.i.i824.i
  %add.i42.i879.i = add i64 %phys_hop_addr.0.i40.i874.i, %and1.i41.i878.i
  tail call void %129(ptr noundef %111, i64 noundef %add.i42.i879.i, i64 noundef %or.i877.i) #9
  %conv.i880.i = trunc i64 %hop2_pte_addr.01001.i to i32
  %137 = inttoptr i32 %conv.i880.i to ptr
  %138 = ptrtoint ptr %137 to i32
  call void @__asan_store8_noabort(i32 %138)
  store i64 %or466.i, ptr %137, align 8
  br label %for.cond.i.i889.i

for.cond.i.i889.i:                                ; preds = %for.body.i.i892.i.for.cond.i.i889.i_crit_edge, %write_pte.exit881.i
  %pgt_info.0.in.i.i886.i = phi ptr [ %arrayidx.i.i885.i, %write_pte.exit881.i ], [ %pgt_info.0.i.i887.i, %for.body.i.i892.i.for.cond.i.i889.i_crit_edge ]
  %139 = ptrtoint ptr %pgt_info.0.in.i.i886.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %pgt_info.0.i.i887.i = load ptr, ptr %pgt_info.0.in.i.i886.i, align 4
  %tobool2.not.i.i888.i = icmp eq ptr %pgt_info.0.i.i887.i, null
  br i1 %tobool2.not.i.i888.i, label %for.cond.i.i889.i.get_pte.exit895.i_crit_edge, label %for.body.i.i892.i

for.cond.i.i889.i.get_pte.exit895.i_crit_edge:    ; preds = %for.cond.i.i889.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pte.exit895.i

for.body.i.i892.i:                                ; preds = %for.cond.i.i889.i
  %shadow_addr.i.i890.i = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i887.i, i32 0, i32 2
  %140 = ptrtoint ptr %shadow_addr.i.i890.i to i32
  call void @__asan_load8_noabort(i32 %140)
  %141 = load i64, ptr %shadow_addr.i.i890.i, align 8
  %cmp.i.i891.i = icmp eq i64 %141, %call424.i
  br i1 %cmp.i.i891.i, label %for.body.i.i892.i.get_pte.exit895.i_crit_edge, label %for.body.i.i892.i.for.cond.i.i889.i_crit_edge

for.body.i.i892.i.for.cond.i.i889.i_crit_edge:    ; preds = %for.body.i.i892.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i889.i

for.body.i.i892.i.get_pte.exit895.i_crit_edge:    ; preds = %for.body.i.i892.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pte.exit895.i

get_pte.exit895.i:                                ; preds = %for.body.i.i892.i.get_pte.exit895.i_crit_edge, %for.cond.i.i889.i.get_pte.exit895.i_crit_edge
  %num_of_ptes.i893.i = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i887.i, i32 0, i32 4
  %142 = ptrtoint ptr %num_of_ptes.i893.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %num_of_ptes.i893.i, align 4
  %inc.i894.i = add i32 %143, 1
  store i32 %inc.i894.i, ptr %num_of_ptes.i893.i, align 4
  %add467.i = add i64 %hop2_pte_addr.01001.i, 8
  %inc469.i = add i32 %i.11002.i, 1
  %conv459.i = sext i32 %inc469.i to i64
  %cmp460.i = icmp ugt i64 %shr212.i, %conv459.i
  br i1 %cmp460.i, label %get_pte.exit895.i.for.body462.i_crit_edge, label %for.end470.i

get_pte.exit895.i.for.body462.i_crit_edge:        ; preds = %get_pte.exit895.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body462.i

for.end470.i:                                     ; preds = %get_pte.exit895.i
  %mmu_dram_default_page_addr.i = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 33, i32 24
  %144 = ptrtoint ptr %mmu_dram_default_page_addr.i to i32
  call void @__asan_load8_noabort(i32 %144)
  %145 = load i64, ptr %mmu_dram_default_page_addr.i, align 8
  %and471.i = and i64 %145, -4096
  %or473.i = or i64 %and471.i, 2049
  br label %for.body478.i

for.body478.i:                                    ; preds = %for.inc491.i.for.body478.i_crit_edge, %for.end470.i
  %i.21006.i = phi i32 [ %inc492.i, %for.inc491.i.for.body478.i_crit_edge ], [ 0, %for.end470.i ]
  %146 = ptrtoint ptr %dram_default_hops.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %dram_default_hops.i, align 8
  %arrayidx480.i = getelementptr i64, ptr %147, i32 %i.21006.i
  %148 = ptrtoint ptr %arrayidx480.i to i32
  call void @__asan_load8_noabort(i32 %148)
  %149 = load i64, ptr %arrayidx480.i, align 8
  br label %for.body484.i

for.body484.i:                                    ; preds = %get_pte.exit946.i.for.body484.i_crit_edge, %for.body478.i
  %j.01004.i = phi i32 [ 0, %for.body478.i ], [ %inc489.i, %get_pte.exit946.i.for.body484.i_crit_edge ]
  %hop3_pte_addr.01003.i = phi i64 [ %149, %for.body478.i ], [ %add487.i, %get_pte.exit946.i.for.body484.i_crit_edge ]
  %150 = ptrtoint ptr %hdev1.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %hdev1.i, align 4
  %asic_funcs.i897.i = getelementptr inbounds %struct.hl_device, ptr %151, i32 0, i32 34
  %152 = ptrtoint ptr %asic_funcs.i897.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %asic_funcs.i897.i, align 8
  %write_pte.i898.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %153, i32 0, i32 41
  %154 = ptrtoint ptr %write_pte.i898.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %write_pte.i898.i, align 4
  %mmu_hop_table_size.i.i899.i = getelementptr inbounds %struct.hl_device, ptr %151, i32 0, i32 33, i32 33
  %156 = ptrtoint ptr %mmu_hop_table_size.i.i899.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %mmu_hop_table_size.i.i899.i, align 4
  %sub.i.i900.i = add i32 %157, -1
  %conv.i.i901.i = zext i32 %sub.i.i900.i to i64
  %neg.i.i902.i = xor i64 %conv.i.i901.i, -1
  %and.i.i903.i = and i64 %hop3_pte_addr.01003.i, %neg.i.i902.i
  %mmu_shadow_hop0.i.i.i904.i = getelementptr inbounds %struct.hl_device, ptr %151, i32 0, i32 51, i32 0, i32 1
  %158 = ptrtoint ptr %mmu_shadow_hop0.i.i.i904.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %mmu_shadow_hop0.i.i.i904.i, align 4
  %160 = ptrtoint ptr %159 to i32
  %conv.i.i.i905.i = zext i32 %160 to i64
  %161 = ptrtoint ptr %asid.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %asid.i, align 8
  %mul.i.i.i907.i = mul i32 %162, %157
  %conv2.i.i.i908.i = zext i32 %mul.i.i.i907.i to i64
  %add.i.i.i909.i = add nuw nsw i64 %conv2.i.i.i908.i, %conv.i.i.i905.i
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i903.i, i64 %add.i.i.i909.i)
  %cmp.not.i.i910.i = icmp eq i64 %and.i.i903.i, %add.i.i.i909.i
  br i1 %cmp.not.i.i910.i, label %if.else.i.i927.i, label %if.then.i.i915.i

if.then.i.i915.i:                                 ; preds = %for.body484.i
  %conv.i11.i.i911.i = trunc i64 %and.i.i903.i to i32
  %mul.i.i.i.i.i912.i = mul i32 %conv.i11.i.i911.i, 1640531527
  %shr.i.i.i.i913.i = lshr i32 %mul.i.i.i.i.i912.i, 25
  %arrayidx.i.i.i914.i = getelementptr %struct.hl_ctx, ptr %ctx, i32 0, i32 1, i32 %shr.i.i.i.i913.i
  br label %for.cond.i.i.i919.i

for.cond.i.i.i919.i:                              ; preds = %for.body.i.i.i922.i.for.cond.i.i.i919.i_crit_edge, %if.then.i.i915.i
  %pgt_info.0.in.i.i.i916.i = phi ptr [ %arrayidx.i.i.i914.i, %if.then.i.i915.i ], [ %pgt_info.0.i.i.i917.i, %for.body.i.i.i922.i.for.cond.i.i.i919.i_crit_edge ]
  %163 = ptrtoint ptr %pgt_info.0.in.i.i.i916.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %pgt_info.0.i.i.i917.i = load ptr, ptr %pgt_info.0.in.i.i.i916.i, align 4
  %tobool2.not.i.i.i918.i = icmp eq ptr %pgt_info.0.i.i.i917.i, null
  br i1 %tobool2.not.i.i.i918.i, label %for.cond.i.i.i919.i.get_pgt_info.exit.i.i924.i_crit_edge, label %for.body.i.i.i922.i

for.cond.i.i.i919.i.get_pgt_info.exit.i.i924.i_crit_edge: ; preds = %for.cond.i.i.i919.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pgt_info.exit.i.i924.i

for.body.i.i.i922.i:                              ; preds = %for.cond.i.i.i919.i
  %shadow_addr.i.i.i920.i = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i.i917.i, i32 0, i32 2
  %164 = ptrtoint ptr %shadow_addr.i.i.i920.i to i32
  call void @__asan_load8_noabort(i32 %164)
  %165 = load i64, ptr %shadow_addr.i.i.i920.i, align 8
  %cmp.i.i.i921.i = icmp eq i64 %165, %and.i.i903.i
  br i1 %cmp.i.i.i921.i, label %for.body.i.i.i922.i.get_pgt_info.exit.i.i924.i_crit_edge, label %for.body.i.i.i922.i.for.cond.i.i.i919.i_crit_edge

for.body.i.i.i922.i.for.cond.i.i.i919.i_crit_edge: ; preds = %for.body.i.i.i922.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i.i919.i

for.body.i.i.i922.i.get_pgt_info.exit.i.i924.i_crit_edge: ; preds = %for.body.i.i.i922.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pgt_info.exit.i.i924.i

get_pgt_info.exit.i.i924.i:                       ; preds = %for.body.i.i.i922.i.get_pgt_info.exit.i.i924.i_crit_edge, %for.cond.i.i.i919.i.get_pgt_info.exit.i.i924.i_crit_edge
  %phys_addr.i.i923.i = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i.i917.i, i32 0, i32 1
  %166 = ptrtoint ptr %phys_addr.i.i923.i to i32
  call void @__asan_load8_noabort(i32 %166)
  %167 = load i64, ptr %phys_addr.i.i923.i, align 8
  br label %write_final_pte.exit.i

if.else.i.i927.i:                                 ; preds = %for.body484.i
  call void @__sanitizer_cov_trace_pc() #11
  %mmu_pgt_addr.i.i.i925.i = getelementptr inbounds %struct.hl_device, ptr %151, i32 0, i32 33, i32 23
  %168 = ptrtoint ptr %mmu_pgt_addr.i.i.i925.i to i32
  call void @__asan_load8_noabort(i32 %168)
  %169 = load i64, ptr %mmu_pgt_addr.i.i.i925.i, align 8
  %add.i17.i.i926.i = add i64 %169, %conv2.i.i.i908.i
  br label %write_final_pte.exit.i

write_final_pte.exit.i:                           ; preds = %if.else.i.i927.i, %get_pgt_info.exit.i.i924.i
  %phys_hop_addr.0.i.i928.i = phi i64 [ %167, %get_pgt_info.exit.i.i924.i ], [ %add.i17.i.i926.i, %if.else.i.i927.i ]
  %and1.i.i929.i = and i64 %hop3_pte_addr.01003.i, %conv.i.i901.i
  %add.i.i930.i = add i64 %phys_hop_addr.0.i.i928.i, %and1.i.i929.i
  tail call void %155(ptr noundef %151, i64 noundef %add.i.i930.i, i64 noundef %or473.i) #9
  %conv.i931.i = trunc i64 %hop3_pte_addr.01003.i to i32
  %170 = inttoptr i32 %conv.i931.i to ptr
  %171 = ptrtoint ptr %170 to i32
  call void @__asan_store8_noabort(i32 %171)
  store i64 %or473.i, ptr %170, align 8
  %172 = ptrtoint ptr %dram_default_hops.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %dram_default_hops.i, align 8
  %arrayidx486.i = getelementptr i64, ptr %173, i32 %i.21006.i
  %174 = ptrtoint ptr %arrayidx486.i to i32
  call void @__asan_load8_noabort(i32 %174)
  %175 = load i64, ptr %arrayidx486.i, align 8
  %conv.i.i933.i = trunc i64 %175 to i32
  %mul.i.i.i.i934.i = mul i32 %conv.i.i933.i, 1640531527
  %shr.i.i.i935.i = lshr i32 %mul.i.i.i.i934.i, 25
  %arrayidx.i.i936.i = getelementptr %struct.hl_ctx, ptr %ctx, i32 0, i32 1, i32 %shr.i.i.i935.i
  br label %for.cond.i.i940.i

for.cond.i.i940.i:                                ; preds = %for.body.i.i943.i.for.cond.i.i940.i_crit_edge, %write_final_pte.exit.i
  %pgt_info.0.in.i.i937.i = phi ptr [ %arrayidx.i.i936.i, %write_final_pte.exit.i ], [ %pgt_info.0.i.i938.i, %for.body.i.i943.i.for.cond.i.i940.i_crit_edge ]
  %176 = ptrtoint ptr %pgt_info.0.in.i.i937.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %pgt_info.0.i.i938.i = load ptr, ptr %pgt_info.0.in.i.i937.i, align 4
  %tobool2.not.i.i939.i = icmp eq ptr %pgt_info.0.i.i938.i, null
  br i1 %tobool2.not.i.i939.i, label %for.cond.i.i940.i.get_pte.exit946.i_crit_edge, label %for.body.i.i943.i

for.cond.i.i940.i.get_pte.exit946.i_crit_edge:    ; preds = %for.cond.i.i940.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pte.exit946.i

for.body.i.i943.i:                                ; preds = %for.cond.i.i940.i
  %shadow_addr.i.i941.i = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i938.i, i32 0, i32 2
  %177 = ptrtoint ptr %shadow_addr.i.i941.i to i32
  call void @__asan_load8_noabort(i32 %177)
  %178 = load i64, ptr %shadow_addr.i.i941.i, align 8
  %cmp.i.i942.i = icmp eq i64 %178, %175
  br i1 %cmp.i.i942.i, label %for.body.i.i943.i.get_pte.exit946.i_crit_edge, label %for.body.i.i943.i.for.cond.i.i940.i_crit_edge

for.body.i.i943.i.for.cond.i.i940.i_crit_edge:    ; preds = %for.body.i.i943.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i940.i

for.body.i.i943.i.get_pte.exit946.i_crit_edge:    ; preds = %for.body.i.i943.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pte.exit946.i

get_pte.exit946.i:                                ; preds = %for.body.i.i943.i.get_pte.exit946.i_crit_edge, %for.cond.i.i940.i.get_pte.exit946.i_crit_edge
  %num_of_ptes.i944.i = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i938.i, i32 0, i32 4
  %179 = ptrtoint ptr %num_of_ptes.i944.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %num_of_ptes.i944.i, align 4
  %inc.i945.i = add i32 %180, 1
  store i32 %inc.i945.i, ptr %num_of_ptes.i944.i, align 4
  %add487.i = add i64 %hop3_pte_addr.01003.i, 8
  %inc489.i = add nuw nsw i32 %j.01004.i, 1
  %exitcond1011.not.i = icmp eq i32 %inc489.i, 512
  br i1 %exitcond1011.not.i, label %for.inc491.i, label %get_pte.exit946.i.for.body484.i_crit_edge

get_pte.exit946.i.for.body484.i_crit_edge:        ; preds = %get_pte.exit946.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body484.i

for.inc491.i:                                     ; preds = %get_pte.exit946.i
  %inc492.i = add i32 %i.21006.i, 1
  %conv475.i = sext i32 %inc492.i to i64
  %cmp476.i = icmp ugt i64 %shr212.i, %conv475.i
  br i1 %cmp476.i, label %for.inc491.i.for.body478.i_crit_edge, label %for.inc491.i.for.end493.i_crit_edge

for.inc491.i.for.end493.i_crit_edge:              ; preds = %for.inc491.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end493.i

for.inc491.i.for.body478.i_crit_edge:             ; preds = %for.inc491.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body478.i

for.end493.i:                                     ; preds = %for.inc491.i.for.end493.i_crit_edge, %get_pte.exit.i.for.end493.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %181 = ptrtoint ptr %hdev1.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %hdev1.i, align 4
  %asic_funcs.i948.i = getelementptr inbounds %struct.hl_device, ptr %182, i32 0, i32 34
  %183 = ptrtoint ptr %asic_funcs.i948.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %asic_funcs.i948.i, align 8
  %read_pte.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %184, i32 0, i32 40
  %185 = ptrtoint ptr %read_pte.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %read_pte.i.i, align 4
  %mmu_pgt_addr.i.i.i = getelementptr inbounds %struct.hl_device, ptr %182, i32 0, i32 33, i32 23
  %187 = ptrtoint ptr %mmu_pgt_addr.i.i.i to i32
  call void @__asan_load8_noabort(i32 %187)
  %188 = load i64, ptr %mmu_pgt_addr.i.i.i, align 8
  %189 = ptrtoint ptr %asid.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %asid.i, align 8
  %mmu_hop_table_size.i.i949.i = getelementptr inbounds %struct.hl_device, ptr %182, i32 0, i32 33, i32 33
  %191 = ptrtoint ptr %mmu_hop_table_size.i.i949.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %mmu_hop_table_size.i.i949.i, align 4
  %mul.i.i.i = mul i32 %192, %190
  %conv.i.i950.i = zext i32 %mul.i.i.i to i64
  %add.i.i951.i = add i64 %188, %conv.i.i950.i
  %call2.i.i = tail call i64 %186(ptr noundef %182, i64 noundef %add.i.i951.i) #9
  br label %dram_default_mapping_init.exit

for.body497.i:                                    ; preds = %free_hop.exit.i.for.body497.i_crit_edge, %do.end450.i.for.body497.i_crit_edge
  %i.31008.i = phi i32 [ %inc501.i, %free_hop.exit.i.for.body497.i_crit_edge ], [ 0, %do.end450.i.for.body497.i_crit_edge ]
  %193 = ptrtoint ptr %dram_default_hops.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %dram_default_hops.i, align 8
  %arrayidx499.i = getelementptr i64, ptr %194, i32 %i.31008.i
  %195 = ptrtoint ptr %arrayidx499.i to i32
  call void @__asan_load8_noabort(i32 %195)
  %196 = load i64, ptr %arrayidx499.i, align 8
  %conv.i.i952.i = trunc i64 %196 to i32
  %mul.i.i.i.i953.i = mul i32 %conv.i.i952.i, 1640531527
  %shr.i.i.i954.i = lshr i32 %mul.i.i.i.i953.i, 25
  %arrayidx.i.i955.i = getelementptr %struct.hl_ctx, ptr %ctx, i32 0, i32 1, i32 %shr.i.i.i954.i
  br label %for.cond.i.i959.i

for.cond.i.i959.i:                                ; preds = %for.body.i.i962.i.for.cond.i.i959.i_crit_edge, %for.body497.i
  %pgt_info.0.in.i.i956.i = phi ptr [ %arrayidx.i.i955.i, %for.body497.i ], [ %pgt_info.0.i.i957.i, %for.body.i.i962.i.for.cond.i.i959.i_crit_edge ]
  %197 = ptrtoint ptr %pgt_info.0.in.i.i956.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %pgt_info.0.i.i957.i = load ptr, ptr %pgt_info.0.in.i.i956.i, align 4
  %tobool2.not.i.i958.i = icmp eq ptr %pgt_info.0.i.i957.i, null
  br i1 %tobool2.not.i.i958.i, label %for.cond.i.i959.i.get_pgt_info.exit.i.i_crit_edge, label %for.body.i.i962.i

for.cond.i.i959.i.get_pgt_info.exit.i.i_crit_edge: ; preds = %for.cond.i.i959.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pgt_info.exit.i.i

for.body.i.i962.i:                                ; preds = %for.cond.i.i959.i
  %shadow_addr.i.i960.i = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i957.i, i32 0, i32 2
  %198 = ptrtoint ptr %shadow_addr.i.i960.i to i32
  call void @__asan_load8_noabort(i32 %198)
  %199 = load i64, ptr %shadow_addr.i.i960.i, align 8
  %cmp.i.i961.i = icmp eq i64 %199, %196
  br i1 %cmp.i.i961.i, label %for.body.i.i962.i.get_pgt_info.exit.i.i_crit_edge, label %for.body.i.i962.i.for.cond.i.i959.i_crit_edge

for.body.i.i962.i.for.cond.i.i959.i_crit_edge:    ; preds = %for.body.i.i962.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i959.i

for.body.i.i962.i.get_pgt_info.exit.i.i_crit_edge: ; preds = %for.body.i.i962.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pgt_info.exit.i.i

get_pgt_info.exit.i.i:                            ; preds = %for.body.i.i962.i.get_pgt_info.exit.i.i_crit_edge, %for.cond.i.i959.i.get_pgt_info.exit.i.i_crit_edge
  %200 = ptrtoint ptr %hdev1.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %hdev1.i, align 4
  %mmu_priv.i.i.i = getelementptr inbounds %struct.hl_device, ptr %201, i32 0, i32 51
  %202 = ptrtoint ptr %mmu_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %mmu_priv.i.i.i, align 8
  %phys_addr.i.i963.i = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i957.i, i32 0, i32 1
  %204 = ptrtoint ptr %phys_addr.i.i963.i to i32
  call void @__asan_load8_noabort(i32 %204)
  %205 = load i64, ptr %phys_addr.i.i963.i, align 8
  %conv.i2.i.i = trunc i64 %205 to i32
  %mmu_hop_table_size.i.i964.i = getelementptr inbounds %struct.hl_device, ptr %201, i32 0, i32 33, i32 33
  %206 = ptrtoint ptr %mmu_hop_table_size.i.i964.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %mmu_hop_table_size.i.i964.i, align 4
  tail call void @gen_pool_free_owner(ptr noundef %203, i32 noundef %conv.i2.i.i, i32 noundef %207, ptr noundef null) #9
  %pprev.i.i.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %pgt_info.0.i.i957.i, i32 0, i32 1
  %208 = ptrtoint ptr %pprev.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %pprev.i.i.i.i.i.i, align 4
  %tobool.not.i.not.i.i.i.i.i = icmp eq ptr %209, null
  br i1 %tobool.not.i.not.i.i.i.i.i, label %get_pgt_info.exit.i.i.free_hop.exit.i_crit_edge, label %if.then.i.i.i.i.i

get_pgt_info.exit.i.i.free_hop.exit.i_crit_edge:  ; preds = %get_pgt_info.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_hop.exit.i

if.then.i.i.i.i.i:                                ; preds = %get_pgt_info.exit.i.i
  %210 = ptrtoint ptr %pgt_info.0.i.i957.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %pgt_info.0.i.i957.i, align 4
  %212 = ptrtoint ptr %209 to i32
  call void @__asan_store4_noabort(i32 %212)
  store volatile ptr %211, ptr %209, align 4
  %tobool.not.i3.i.i.i.i.i = icmp eq ptr %211, null
  br i1 %tobool.not.i3.i.i.i.i.i, label %if.then.i.i.i.i.i.__hlist_del.exit.i.i.i.i.i_crit_edge, label %do.body13.i.i.i.i.i.i

if.then.i.i.i.i.i.__hlist_del.exit.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__hlist_del.exit.i.i.i.i.i

do.body13.i.i.i.i.i.i:                            ; preds = %if.then.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %pprev14.i.i.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %211, i32 0, i32 1
  %213 = ptrtoint ptr %pprev14.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %213)
  store volatile ptr %209, ptr %pprev14.i.i.i.i.i.i, align 4
  br label %__hlist_del.exit.i.i.i.i.i

__hlist_del.exit.i.i.i.i.i:                       ; preds = %do.body13.i.i.i.i.i.i, %if.then.i.i.i.i.i.__hlist_del.exit.i.i.i.i.i_crit_edge
  %214 = ptrtoint ptr %pgt_info.0.i.i957.i to i32
  call void @__asan_store4_noabort(i32 %214)
  store ptr null, ptr %pgt_info.0.i.i957.i, align 4
  %215 = ptrtoint ptr %pprev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %215)
  store ptr null, ptr %pprev.i.i.i.i.i.i, align 4
  br label %free_hop.exit.i

free_hop.exit.i:                                  ; preds = %__hlist_del.exit.i.i.i.i.i, %get_pgt_info.exit.i.i.free_hop.exit.i_crit_edge
  %shadow_addr.i3.i.i = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i957.i, i32 0, i32 2
  %216 = ptrtoint ptr %shadow_addr.i3.i.i to i32
  call void @__asan_load8_noabort(i32 %216)
  %217 = load i64, ptr %shadow_addr.i3.i.i, align 8
  %conv2.i.i.i = trunc i64 %217 to i32
  %218 = inttoptr i32 %conv2.i.i.i to ptr
  tail call void @kfree(ptr noundef %218) #9
  tail call void @kfree(ptr noundef %pgt_info.0.i.i957.i) #9
  %inc501.i = add nuw nsw i32 %i.31008.i, 1
  %exitcond.not.i = icmp eq i32 %inc501.i, %hop3_allocated.0999.i
  br i1 %exitcond.not.i, label %free_hop.exit.i.for.end502.i_crit_edge, label %free_hop.exit.i.for.body497.i_crit_edge

free_hop.exit.i.for.body497.i_crit_edge:          ; preds = %free_hop.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body497.i

free_hop.exit.i.for.end502.i_crit_edge:           ; preds = %free_hop.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end502.i

for.end502.i:                                     ; preds = %free_hop.exit.i.for.end502.i_crit_edge, %do.end450.i.for.end502.i_crit_edge
  %conv.i.i6 = trunc i64 %call424.i to i32
  %mul.i.i.i.i7 = mul i32 %conv.i.i6, 1640531527
  %shr.i.i.i8 = lshr i32 %mul.i.i.i.i7, 25
  %arrayidx.i.i9 = getelementptr %struct.hl_ctx, ptr %ctx, i32 0, i32 1, i32 %shr.i.i.i8
  br label %for.cond.i.i13

for.cond.i.i13:                                   ; preds = %for.body.i.i16.for.cond.i.i13_crit_edge, %for.end502.i
  %pgt_info.0.in.i.i10 = phi ptr [ %arrayidx.i.i9, %for.end502.i ], [ %pgt_info.0.i.i11, %for.body.i.i16.for.cond.i.i13_crit_edge ]
  %219 = ptrtoint ptr %pgt_info.0.in.i.i10 to i32
  call void @__asan_load4_noabort(i32 %219)
  %pgt_info.0.i.i11 = load ptr, ptr %pgt_info.0.in.i.i10, align 4
  %tobool2.not.i.i12 = icmp eq ptr %pgt_info.0.i.i11, null
  br i1 %tobool2.not.i.i12, label %for.cond.i.i13.get_pgt_info.exit.i24_crit_edge, label %for.body.i.i16

for.cond.i.i13.get_pgt_info.exit.i24_crit_edge:   ; preds = %for.cond.i.i13
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pgt_info.exit.i24

for.body.i.i16:                                   ; preds = %for.cond.i.i13
  %shadow_addr.i.i14 = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i11, i32 0, i32 2
  %220 = ptrtoint ptr %shadow_addr.i.i14 to i32
  call void @__asan_load8_noabort(i32 %220)
  %221 = load i64, ptr %shadow_addr.i.i14, align 8
  %cmp.i.i15 = icmp eq i64 %221, %call424.i
  br i1 %cmp.i.i15, label %for.body.i.i16.get_pgt_info.exit.i24_crit_edge, label %for.body.i.i16.for.cond.i.i13_crit_edge

for.body.i.i16.for.cond.i.i13_crit_edge:          ; preds = %for.body.i.i16
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i13

for.body.i.i16.get_pgt_info.exit.i24_crit_edge:   ; preds = %for.body.i.i16
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pgt_info.exit.i24

get_pgt_info.exit.i24:                            ; preds = %for.body.i.i16.get_pgt_info.exit.i24_crit_edge, %for.cond.i.i13.get_pgt_info.exit.i24_crit_edge
  %222 = ptrtoint ptr %hdev1.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %hdev1.i, align 4
  %mmu_priv.i.i18 = getelementptr inbounds %struct.hl_device, ptr %223, i32 0, i32 51
  %224 = ptrtoint ptr %mmu_priv.i.i18 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %mmu_priv.i.i18, align 8
  %phys_addr.i.i19 = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i11, i32 0, i32 1
  %226 = ptrtoint ptr %phys_addr.i.i19 to i32
  call void @__asan_load8_noabort(i32 %226)
  %227 = load i64, ptr %phys_addr.i.i19, align 8
  %conv.i2.i20 = trunc i64 %227 to i32
  %mmu_hop_table_size.i.i21 = getelementptr inbounds %struct.hl_device, ptr %223, i32 0, i32 33, i32 33
  %228 = ptrtoint ptr %mmu_hop_table_size.i.i21 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %mmu_hop_table_size.i.i21, align 4
  tail call void @gen_pool_free_owner(ptr noundef %225, i32 noundef %conv.i2.i20, i32 noundef %229, ptr noundef null) #9
  %pprev.i.i.i.i.i22 = getelementptr inbounds %struct.hlist_node, ptr %pgt_info.0.i.i11, i32 0, i32 1
  %230 = ptrtoint ptr %pprev.i.i.i.i.i22 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %pprev.i.i.i.i.i22, align 4
  %tobool.not.i.not.i.i.i.i23 = icmp eq ptr %231, null
  br i1 %tobool.not.i.not.i.i.i.i23, label %get_pgt_info.exit.i24.free_hop.exit32_crit_edge, label %if.then.i.i.i.i26

get_pgt_info.exit.i24.free_hop.exit32_crit_edge:  ; preds = %get_pgt_info.exit.i24
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_hop.exit32

if.then.i.i.i.i26:                                ; preds = %get_pgt_info.exit.i24
  %232 = ptrtoint ptr %pgt_info.0.i.i11 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %pgt_info.0.i.i11, align 4
  %234 = ptrtoint ptr %231 to i32
  call void @__asan_store4_noabort(i32 %234)
  store volatile ptr %233, ptr %231, align 4
  %tobool.not.i3.i.i.i.i25 = icmp eq ptr %233, null
  br i1 %tobool.not.i3.i.i.i.i25, label %if.then.i.i.i.i26.__hlist_del.exit.i.i.i.i29_crit_edge, label %do.body13.i.i.i.i.i28

if.then.i.i.i.i26.__hlist_del.exit.i.i.i.i29_crit_edge: ; preds = %if.then.i.i.i.i26
  call void @__sanitizer_cov_trace_pc() #11
  br label %__hlist_del.exit.i.i.i.i29

do.body13.i.i.i.i.i28:                            ; preds = %if.then.i.i.i.i26
  call void @__sanitizer_cov_trace_pc() #11
  %pprev14.i.i.i.i.i27 = getelementptr inbounds %struct.hlist_node, ptr %233, i32 0, i32 1
  %235 = ptrtoint ptr %pprev14.i.i.i.i.i27 to i32
  call void @__asan_store4_noabort(i32 %235)
  store volatile ptr %231, ptr %pprev14.i.i.i.i.i27, align 4
  br label %__hlist_del.exit.i.i.i.i29

__hlist_del.exit.i.i.i.i29:                       ; preds = %do.body13.i.i.i.i.i28, %if.then.i.i.i.i26.__hlist_del.exit.i.i.i.i29_crit_edge
  %236 = ptrtoint ptr %pgt_info.0.i.i11 to i32
  call void @__asan_store4_noabort(i32 %236)
  store ptr null, ptr %pgt_info.0.i.i11, align 4
  %237 = ptrtoint ptr %pprev.i.i.i.i.i22 to i32
  call void @__asan_store4_noabort(i32 %237)
  store ptr null, ptr %pprev.i.i.i.i.i22, align 4
  br label %free_hop.exit32

free_hop.exit32:                                  ; preds = %__hlist_del.exit.i.i.i.i29, %get_pgt_info.exit.i24.free_hop.exit32_crit_edge
  %shadow_addr.i3.i30 = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i11, i32 0, i32 2
  %238 = ptrtoint ptr %shadow_addr.i3.i30 to i32
  call void @__asan_load8_noabort(i32 %238)
  %239 = load i64, ptr %shadow_addr.i3.i30, align 8
  %conv2.i.i31 = trunc i64 %239 to i32
  %240 = inttoptr i32 %conv2.i.i31 to ptr
  tail call void @kfree(ptr noundef %240) #9
  tail call void @kfree(ptr noundef %pgt_info.0.i.i11) #9
  br label %hop2_err.i

hop2_err.i:                                       ; preds = %free_hop.exit32, %do.end430.i
  %conv.i.i2 = trunc i64 %call417.i to i32
  %mul.i.i.i.i3 = mul i32 %conv.i.i2, 1640531527
  %shr.i.i.i = lshr i32 %mul.i.i.i.i3, 25
  %arrayidx.i.i = getelementptr %struct.hl_ctx, ptr %ctx, i32 0, i32 1, i32 %shr.i.i.i
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %hop2_err.i
  %pgt_info.0.in.i.i = phi ptr [ %arrayidx.i.i, %hop2_err.i ], [ %pgt_info.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %241 = ptrtoint ptr %pgt_info.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %pgt_info.0.i.i = load ptr, ptr %pgt_info.0.in.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %pgt_info.0.i.i, null
  br i1 %tobool2.not.i.i, label %for.cond.i.i.get_pgt_info.exit.i_crit_edge, label %for.body.i.i

for.cond.i.i.get_pgt_info.exit.i_crit_edge:       ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pgt_info.exit.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %shadow_addr.i.i = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i, i32 0, i32 2
  %242 = ptrtoint ptr %shadow_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %242)
  %243 = load i64, ptr %shadow_addr.i.i, align 8
  %cmp.i.i = icmp eq i64 %243, %call417.i
  br i1 %cmp.i.i, label %for.body.i.i.get_pgt_info.exit.i_crit_edge, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i

for.body.i.i.get_pgt_info.exit.i_crit_edge:       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pgt_info.exit.i

get_pgt_info.exit.i:                              ; preds = %for.body.i.i.get_pgt_info.exit.i_crit_edge, %for.cond.i.i.get_pgt_info.exit.i_crit_edge
  %244 = ptrtoint ptr %hdev1.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %hdev1.i, align 4
  %mmu_priv.i.i = getelementptr inbounds %struct.hl_device, ptr %245, i32 0, i32 51
  %246 = ptrtoint ptr %mmu_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %mmu_priv.i.i, align 8
  %phys_addr.i.i = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i, i32 0, i32 1
  %248 = ptrtoint ptr %phys_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %248)
  %249 = load i64, ptr %phys_addr.i.i, align 8
  %conv.i2.i = trunc i64 %249 to i32
  %mmu_hop_table_size.i.i4 = getelementptr inbounds %struct.hl_device, ptr %245, i32 0, i32 33, i32 33
  %250 = ptrtoint ptr %mmu_hop_table_size.i.i4 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %mmu_hop_table_size.i.i4, align 4
  tail call void @gen_pool_free_owner(ptr noundef %247, i32 noundef %conv.i2.i, i32 noundef %251, ptr noundef null) #9
  %pprev.i.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %pgt_info.0.i.i, i32 0, i32 1
  %252 = ptrtoint ptr %pprev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %pprev.i.i.i.i.i, align 4
  %tobool.not.i.not.i.i.i.i = icmp eq ptr %253, null
  br i1 %tobool.not.i.not.i.i.i.i, label %get_pgt_info.exit.i.free_hop.exit_crit_edge, label %if.then.i.i.i.i

get_pgt_info.exit.i.free_hop.exit_crit_edge:      ; preds = %get_pgt_info.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_hop.exit

if.then.i.i.i.i:                                  ; preds = %get_pgt_info.exit.i
  %254 = ptrtoint ptr %pgt_info.0.i.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %pgt_info.0.i.i, align 4
  %256 = ptrtoint ptr %253 to i32
  call void @__asan_store4_noabort(i32 %256)
  store volatile ptr %255, ptr %253, align 4
  %tobool.not.i3.i.i.i.i = icmp eq ptr %255, null
  br i1 %tobool.not.i3.i.i.i.i, label %if.then.i.i.i.i.__hlist_del.exit.i.i.i.i_crit_edge, label %do.body13.i.i.i.i.i

if.then.i.i.i.i.__hlist_del.exit.i.i.i.i_crit_edge: ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__hlist_del.exit.i.i.i.i

do.body13.i.i.i.i.i:                              ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %pprev14.i.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %255, i32 0, i32 1
  %257 = ptrtoint ptr %pprev14.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %257)
  store volatile ptr %253, ptr %pprev14.i.i.i.i.i, align 4
  br label %__hlist_del.exit.i.i.i.i

__hlist_del.exit.i.i.i.i:                         ; preds = %do.body13.i.i.i.i.i, %if.then.i.i.i.i.__hlist_del.exit.i.i.i.i_crit_edge
  %258 = ptrtoint ptr %pgt_info.0.i.i to i32
  call void @__asan_store4_noabort(i32 %258)
  store ptr null, ptr %pgt_info.0.i.i, align 4
  %259 = ptrtoint ptr %pprev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %259)
  store ptr null, ptr %pprev.i.i.i.i.i, align 4
  br label %free_hop.exit

free_hop.exit:                                    ; preds = %__hlist_del.exit.i.i.i.i, %get_pgt_info.exit.i.free_hop.exit_crit_edge
  %shadow_addr.i3.i = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i, i32 0, i32 2
  %260 = ptrtoint ptr %shadow_addr.i3.i to i32
  call void @__asan_load8_noabort(i32 %260)
  %261 = load i64, ptr %shadow_addr.i3.i, align 8
  %conv2.i.i5 = trunc i64 %261 to i32
  %262 = inttoptr i32 %conv2.i.i5 to ptr
  tail call void @kfree(ptr noundef %262) #9
  tail call void @kfree(ptr noundef %pgt_info.0.i.i) #9
  br label %hop1_err.i

hop1_err.i:                                       ; preds = %free_hop.exit, %do.end.i
  %263 = ptrtoint ptr %dram_default_hops.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %dram_default_hops.i, align 8
  tail call void @kfree(ptr noundef %264) #9
  br label %dram_default_mapping_init.exit

dram_default_mapping_init.exit:                   ; preds = %hop1_err.i, %for.end493.i, %if.end406.i.dram_default_mapping_init.exit_crit_edge, %lor.lhs.false3.i.dram_default_mapping_init.exit_crit_edge, %lor.lhs.false.i.dram_default_mapping_init.exit_crit_edge, %entry.dram_default_mapping_init.exit_crit_edge
  %retval.0.i = phi i32 [ -12, %hop1_err.i ], [ 0, %for.end493.i ], [ 0, %lor.lhs.false3.i.dram_default_mapping_init.exit_crit_edge ], [ 0, %lor.lhs.false.i.dram_default_mapping_init.exit_crit_edge ], [ 0, %entry.dram_default_mapping_init.exit_crit_edge ], [ -12, %if.end406.i.dram_default_mapping_init.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hl_mmu_v1_ctx_fini(ptr noundef %ctx) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hdev1 = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 3
  %0 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev1, align 4
  %dram_supports_virtual_memory.i = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 71
  %2 = ptrtoint ptr %dram_supports_virtual_memory.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dram_supports_virtual_memory.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %entry.dram_default_mapping_fini.exit_crit_edge, label %lor.lhs.false.i

entry.dram_default_mapping_fini.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %dram_default_mapping_fini.exit

lor.lhs.false.i:                                  ; preds = %entry
  %dram_default_page_mapping.i = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 83
  %4 = ptrtoint ptr %dram_default_page_mapping.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dram_default_page_mapping.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not.i = icmp eq i8 %5, 0
  br i1 %tobool2.not.i, label %lor.lhs.false.i.dram_default_mapping_fini.exit_crit_edge, label %lor.lhs.false3.i

lor.lhs.false.i.dram_default_mapping_fini.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dram_default_mapping_fini.exit

lor.lhs.false3.i:                                 ; preds = %lor.lhs.false.i
  %asid.i = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 21
  %6 = ptrtoint ptr %asid.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %asid.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i = icmp eq i32 %7, 0
  br i1 %cmp.i, label %lor.lhs.false3.i.dram_default_mapping_fini.exit_crit_edge, label %if.end.i

lor.lhs.false3.i.dram_default_mapping_fini.exit_crit_edge: ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dram_default_mapping_fini.exit

if.end.i:                                         ; preds = %lor.lhs.false3.i
  %dram_size_for_default_page_mapping.i = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 20
  %8 = ptrtoint ptr %dram_size_for_default_page_mapping.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %dram_size_for_default_page_mapping.i, align 8
  %dram_page_size.i = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 35
  %10 = ptrtoint ptr %dram_page_size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dram_page_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %9)
  %cmp171.i = icmp ult i64 %9, 4294967296
  br i1 %cmp171.i, label %if.then175.i, label %if.else181.i, !prof !98

if.then175.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv176.i = trunc i64 %9 to i32
  %div179.i = udiv i32 %conv176.i, %11
  %conv180.i = zext i32 %div179.i to i64
  br label %if.end406.i

if.else181.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %12 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %11, i64 %9) #14, !srcloc !99
  %asmresult1.i.i = extractvalue { i64, i64 } %12, 1
  br label %if.end406.i

if.end406.i:                                      ; preds = %if.else181.i, %if.then175.i
  %num_of_hop3.0.i = phi i64 [ %conv180.i, %if.then175.i ], [ %asmresult1.i.i, %if.else181.i ]
  %shr212.i = lshr i64 %num_of_hop3.0.i, 9
  %mmu_shadow_hop0.i.i = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 51, i32 0, i32 1
  %13 = ptrtoint ptr %mmu_shadow_hop0.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mmu_shadow_hop0.i.i, align 4
  %15 = ptrtoint ptr %14 to i32
  %conv.i.i = zext i32 %15 to i64
  %mmu_hop_table_size.i.i = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 33
  %16 = ptrtoint ptr %mmu_hop_table_size.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mmu_hop_table_size.i.i, align 4
  %mul.i.i = mul i32 %17, %7
  %conv2.i.i = zext i32 %mul.i.i to i64
  %add.i.i = add nuw nsw i64 %conv2.i.i, %conv.i.i
  %dram_default_hops.i = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 16
  %18 = ptrtoint ptr %dram_default_hops.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dram_default_hops.i, align 8
  %20 = trunc i64 %shr212.i to i32
  %idxprom.i = add i32 %20, 1
  %arrayidx.i = getelementptr i64, ptr %19, i32 %idxprom.i
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %arrayidx.i, align 8
  %arrayidx414.i = getelementptr i64, ptr %19, i32 %20
  %23 = ptrtoint ptr %arrayidx414.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %arrayidx414.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 512, i64 %num_of_hop3.0.i)
  %cmp416862.not.i = icmp ult i64 %num_of_hop3.0.i, 512
  br i1 %cmp416862.not.i, label %if.end406.i.for.end440.i_crit_edge, label %if.end406.i.for.body.i_crit_edge

if.end406.i.for.body.i_crit_edge:                 ; preds = %if.end406.i
  br label %for.body.i

if.end406.i.for.end440.i_crit_edge:               ; preds = %if.end406.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end440.i

for.body435.lr.ph.i:                              ; preds = %for.inc428.i
  %conv.i.i693.i = trunc i64 %24 to i32
  %mul.i.i.i.i694.i = mul i32 %conv.i.i693.i, 1640531527
  %shr.i.i.i695.i = lshr i32 %mul.i.i.i.i694.i, 25
  %arrayidx.i.i696.i = getelementptr %struct.hl_ctx, ptr %ctx, i32 0, i32 1, i32 %shr.i.i.i695.i
  br label %for.body435.i

for.body.i:                                       ; preds = %for.inc428.i.for.body.i_crit_edge, %if.end406.i.for.body.i_crit_edge
  %i.0863.i = phi i32 [ %inc429.i, %for.inc428.i.for.body.i_crit_edge ], [ 0, %if.end406.i.for.body.i_crit_edge ]
  %25 = ptrtoint ptr %dram_default_hops.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dram_default_hops.i, align 8
  %arrayidx419.i = getelementptr i64, ptr %26, i32 %i.0863.i
  %27 = ptrtoint ptr %arrayidx419.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %arrayidx419.i, align 8
  br label %for.body423.i

for.body423.i:                                    ; preds = %put_pte.exit.i.for.body423.i_crit_edge, %for.body.i
  %j.0861.i = phi i32 [ 0, %for.body.i ], [ %inc.i, %put_pte.exit.i.for.body423.i_crit_edge ]
  %hop3_pte_addr.0860.i = phi i64 [ %28, %for.body.i ], [ %add427.i, %put_pte.exit.i.for.body423.i_crit_edge ]
  %29 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hdev1, align 4
  %asic_funcs.i.i.i = getelementptr inbounds %struct.hl_device, ptr %30, i32 0, i32 34
  %31 = ptrtoint ptr %asic_funcs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %asic_funcs.i.i.i, align 8
  %write_pte.i.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %32, i32 0, i32 41
  %33 = ptrtoint ptr %write_pte.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %write_pte.i.i.i, align 4
  %mmu_hop_table_size.i.i.i.i = getelementptr inbounds %struct.hl_device, ptr %30, i32 0, i32 33, i32 33
  %35 = ptrtoint ptr %mmu_hop_table_size.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mmu_hop_table_size.i.i.i.i, align 4
  %sub.i.i.i.i = add i32 %36, -1
  %conv.i.i.i.i = zext i32 %sub.i.i.i.i to i64
  %neg.i.i.i.i = xor i64 %conv.i.i.i.i, -1
  %and.i.i.i.i = and i64 %hop3_pte_addr.0860.i, %neg.i.i.i.i
  %mmu_shadow_hop0.i.i.i.i.i = getelementptr inbounds %struct.hl_device, ptr %30, i32 0, i32 51, i32 0, i32 1
  %37 = ptrtoint ptr %mmu_shadow_hop0.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mmu_shadow_hop0.i.i.i.i.i, align 4
  %39 = ptrtoint ptr %38 to i32
  %conv.i.i.i.i.i = zext i32 %39 to i64
  %40 = ptrtoint ptr %asid.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %asid.i, align 8
  %mul.i.i.i.i.i = mul i32 %41, %36
  %conv2.i.i.i.i.i = zext i32 %mul.i.i.i.i.i to i64
  %add.i.i.i.i.i = add nuw nsw i64 %conv2.i.i.i.i.i, %conv.i.i.i.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i.i.i, i64 %add.i.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i64 %and.i.i.i.i, %add.i.i.i.i.i
  br i1 %cmp.not.i.i.i.i, label %if.else.i.i.i.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %for.body423.i
  %conv.i11.i.i.i.i = trunc i64 %and.i.i.i.i to i32
  %mul.i.i.i.i.i.i.i = mul i32 %conv.i11.i.i.i.i, 1640531527
  %shr.i.i.i.i.i.i = lshr i32 %mul.i.i.i.i.i.i.i, 25
  %arrayidx.i.i.i.i.i = getelementptr %struct.hl_ctx, ptr %ctx, i32 0, i32 1, i32 %shr.i.i.i.i.i.i
  br label %for.cond.i.i.i.i.i

for.cond.i.i.i.i.i:                               ; preds = %for.body.i.i.i.i.i.for.cond.i.i.i.i.i_crit_edge, %if.then.i.i.i.i
  %pgt_info.0.in.i.i.i.i.i = phi ptr [ %arrayidx.i.i.i.i.i, %if.then.i.i.i.i ], [ %pgt_info.0.i.i.i.i.i, %for.body.i.i.i.i.i.for.cond.i.i.i.i.i_crit_edge ]
  %42 = ptrtoint ptr %pgt_info.0.in.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %pgt_info.0.i.i.i.i.i = load ptr, ptr %pgt_info.0.in.i.i.i.i.i, align 4
  %tobool2.not.i.i.i.i.i = icmp eq ptr %pgt_info.0.i.i.i.i.i, null
  br i1 %tobool2.not.i.i.i.i.i, label %for.cond.i.i.i.i.i.get_pgt_info.exit.i.i.i.i_crit_edge, label %for.body.i.i.i.i.i

for.cond.i.i.i.i.i.get_pgt_info.exit.i.i.i.i_crit_edge: ; preds = %for.cond.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pgt_info.exit.i.i.i.i

for.body.i.i.i.i.i:                               ; preds = %for.cond.i.i.i.i.i
  %shadow_addr.i.i.i.i.i = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i.i.i.i, i32 0, i32 2
  %43 = ptrtoint ptr %shadow_addr.i.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %shadow_addr.i.i.i.i.i, align 8
  %cmp.i.i.i.i.i = icmp eq i64 %44, %and.i.i.i.i
  br i1 %cmp.i.i.i.i.i, label %for.body.i.i.i.i.i.get_pgt_info.exit.i.i.i.i_crit_edge, label %for.body.i.i.i.i.i.for.cond.i.i.i.i.i_crit_edge

for.body.i.i.i.i.i.for.cond.i.i.i.i.i_crit_edge:  ; preds = %for.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i.i.i.i

for.body.i.i.i.i.i.get_pgt_info.exit.i.i.i.i_crit_edge: ; preds = %for.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pgt_info.exit.i.i.i.i

get_pgt_info.exit.i.i.i.i:                        ; preds = %for.body.i.i.i.i.i.get_pgt_info.exit.i.i.i.i_crit_edge, %for.cond.i.i.i.i.i.get_pgt_info.exit.i.i.i.i_crit_edge
  %phys_addr.i.i.i.i = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i.i.i.i, i32 0, i32 1
  %45 = ptrtoint ptr %phys_addr.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %phys_addr.i.i.i.i, align 8
  br label %clear_pte.exit.i

if.else.i.i.i.i:                                  ; preds = %for.body423.i
  call void @__sanitizer_cov_trace_pc() #11
  %mmu_pgt_addr.i.i.i.i.i = getelementptr inbounds %struct.hl_device, ptr %30, i32 0, i32 33, i32 23
  %47 = ptrtoint ptr %mmu_pgt_addr.i.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %mmu_pgt_addr.i.i.i.i.i, align 8
  %add.i17.i.i.i.i = add i64 %48, %conv2.i.i.i.i.i
  br label %clear_pte.exit.i

clear_pte.exit.i:                                 ; preds = %if.else.i.i.i.i, %get_pgt_info.exit.i.i.i.i
  %phys_hop_addr.0.i.i.i.i = phi i64 [ %46, %get_pgt_info.exit.i.i.i.i ], [ %add.i17.i.i.i.i, %if.else.i.i.i.i ]
  %and1.i.i.i.i = and i64 %hop3_pte_addr.0860.i, %conv.i.i.i.i
  %add.i.i.i.i = add i64 %phys_hop_addr.0.i.i.i.i, %and1.i.i.i.i
  tail call void %34(ptr noundef %30, i64 noundef %add.i.i.i.i, i64 noundef 0) #9
  %conv.i.i.i = trunc i64 %hop3_pte_addr.0860.i to i32
  %49 = inttoptr i32 %conv.i.i.i to ptr
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 0, ptr %49, align 8
  %51 = ptrtoint ptr %dram_default_hops.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dram_default_hops.i, align 8
  %arrayidx425.i = getelementptr i64, ptr %52, i32 %i.0863.i
  %53 = ptrtoint ptr %arrayidx425.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %arrayidx425.i, align 8
  %conv.i.i654.i = trunc i64 %54 to i32
  %mul.i.i.i.i655.i = mul i32 %conv.i.i654.i, 1640531527
  %shr.i.i.i.i = lshr i32 %mul.i.i.i.i655.i, 25
  %arrayidx.i.i.i = getelementptr %struct.hl_ctx, ptr %ctx, i32 0, i32 1, i32 %shr.i.i.i.i
  br label %for.cond.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i.for.cond.i.i.i_crit_edge, %clear_pte.exit.i
  %pgt_info.0.in.i.i.i = phi ptr [ %arrayidx.i.i.i, %clear_pte.exit.i ], [ %pgt_info.0.i.i.i, %for.body.i.i.i.for.cond.i.i.i_crit_edge ]
  %55 = ptrtoint ptr %pgt_info.0.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %pgt_info.0.i.i.i = load ptr, ptr %pgt_info.0.in.i.i.i, align 4
  %tobool2.not.i.i.i = icmp eq ptr %pgt_info.0.i.i.i, null
  br i1 %tobool2.not.i.i.i, label %for.cond.i.i.i.get_pgt_info.exit.i.i_crit_edge, label %for.body.i.i.i

for.cond.i.i.i.get_pgt_info.exit.i.i_crit_edge:   ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pgt_info.exit.i.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i
  %shadow_addr.i.i.i = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i.i, i32 0, i32 2
  %56 = ptrtoint ptr %shadow_addr.i.i.i to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %shadow_addr.i.i.i, align 8
  %cmp.i.i.i = icmp eq i64 %57, %54
  br i1 %cmp.i.i.i, label %for.body.i.i.i.get_pgt_info.exit.i.i_crit_edge, label %for.body.i.i.i.for.cond.i.i.i_crit_edge

for.body.i.i.i.for.cond.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i.i

for.body.i.i.i.get_pgt_info.exit.i.i_crit_edge:   ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pgt_info.exit.i.i

get_pgt_info.exit.i.i:                            ; preds = %for.body.i.i.i.get_pgt_info.exit.i.i_crit_edge, %for.cond.i.i.i.get_pgt_info.exit.i.i_crit_edge
  %num_of_ptes.i.i = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i.i, i32 0, i32 4
  %58 = ptrtoint ptr %num_of_ptes.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %num_of_ptes.i.i, align 4
  %dec.i.i = add i32 %59, -1
  store i32 %dec.i.i, ptr %num_of_ptes.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %tobool.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %get_pgt_info.exit.i.i.put_pte.exit.i_crit_edge

get_pgt_info.exit.i.i.put_pte.exit.i_crit_edge:   ; preds = %get_pgt_info.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_pte.exit.i

if.then.i.i:                                      ; preds = %get_pgt_info.exit.i.i
  %60 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %hdev1, align 4
  %mmu_priv.i.i.i = getelementptr inbounds %struct.hl_device, ptr %61, i32 0, i32 51
  %62 = ptrtoint ptr %mmu_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %mmu_priv.i.i.i, align 8
  %phys_addr.i.i.i = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i.i, i32 0, i32 1
  %64 = ptrtoint ptr %phys_addr.i.i.i to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %phys_addr.i.i.i, align 8
  %conv.i6.i.i = trunc i64 %65 to i32
  %mmu_hop_table_size.i.i.i = getelementptr inbounds %struct.hl_device, ptr %61, i32 0, i32 33, i32 33
  %66 = ptrtoint ptr %mmu_hop_table_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %mmu_hop_table_size.i.i.i, align 4
  tail call void @gen_pool_free_owner(ptr noundef %63, i32 noundef %conv.i6.i.i, i32 noundef %67, ptr noundef null) #9
  %pprev.i.i.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %pgt_info.0.i.i.i, i32 0, i32 1
  %68 = ptrtoint ptr %pprev.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pprev.i.i.i.i.i.i, align 4
  %tobool.not.i.not.i.i.i.i.i = icmp eq ptr %69, null
  br i1 %tobool.not.i.not.i.i.i.i.i, label %if.then.i.i._free_hop.exit.i.i_crit_edge, label %if.then.i.i.i.i.i

if.then.i.i._free_hop.exit.i.i_crit_edge:         ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %_free_hop.exit.i.i

if.then.i.i.i.i.i:                                ; preds = %if.then.i.i
  %70 = ptrtoint ptr %pgt_info.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pgt_info.0.i.i.i, align 4
  %72 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile ptr %71, ptr %69, align 4
  %tobool.not.i3.i.i.i.i.i = icmp eq ptr %71, null
  br i1 %tobool.not.i3.i.i.i.i.i, label %if.then.i.i.i.i.i.__hlist_del.exit.i.i.i.i.i_crit_edge, label %do.body13.i.i.i.i.i.i

if.then.i.i.i.i.i.__hlist_del.exit.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__hlist_del.exit.i.i.i.i.i

do.body13.i.i.i.i.i.i:                            ; preds = %if.then.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %pprev14.i.i.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %71, i32 0, i32 1
  %73 = ptrtoint ptr %pprev14.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr %69, ptr %pprev14.i.i.i.i.i.i, align 4
  br label %__hlist_del.exit.i.i.i.i.i

__hlist_del.exit.i.i.i.i.i:                       ; preds = %do.body13.i.i.i.i.i.i, %if.then.i.i.i.i.i.__hlist_del.exit.i.i.i.i.i_crit_edge
  %74 = ptrtoint ptr %pgt_info.0.i.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr null, ptr %pgt_info.0.i.i.i, align 4
  %75 = ptrtoint ptr %pprev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr null, ptr %pprev.i.i.i.i.i.i, align 4
  br label %_free_hop.exit.i.i

_free_hop.exit.i.i:                               ; preds = %__hlist_del.exit.i.i.i.i.i, %if.then.i.i._free_hop.exit.i.i_crit_edge
  %shadow_addr.i7.i.i = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i.i, i32 0, i32 2
  %76 = ptrtoint ptr %shadow_addr.i7.i.i to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %shadow_addr.i7.i.i, align 8
  %conv2.i.i.i = trunc i64 %77 to i32
  %78 = inttoptr i32 %conv2.i.i.i to ptr
  tail call void @kfree(ptr noundef %78) #9
  tail call void @kfree(ptr noundef %pgt_info.0.i.i.i) #9
  br label %put_pte.exit.i

put_pte.exit.i:                                   ; preds = %_free_hop.exit.i.i, %get_pgt_info.exit.i.i.put_pte.exit.i_crit_edge
  %add427.i = add i64 %hop3_pte_addr.0860.i, 8
  %inc.i = add nuw nsw i32 %j.0861.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 512
  br i1 %exitcond.not.i, label %for.inc428.i, label %put_pte.exit.i.for.body423.i_crit_edge

put_pte.exit.i.for.body423.i_crit_edge:           ; preds = %put_pte.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body423.i

for.inc428.i:                                     ; preds = %put_pte.exit.i
  %inc429.i = add i32 %i.0863.i, 1
  %conv415.i = sext i32 %inc429.i to i64
  %cmp416.i = icmp ugt i64 %shr212.i, %conv415.i
  br i1 %cmp416.i, label %for.inc428.i.for.body.i_crit_edge, label %for.body435.lr.ph.i

for.inc428.i.for.body.i_crit_edge:                ; preds = %for.inc428.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body435.i:                                    ; preds = %put_pte.exit724.i.for.body435.i_crit_edge, %for.body435.lr.ph.i
  %i.1866.i = phi i32 [ 0, %for.body435.lr.ph.i ], [ %inc439.i, %put_pte.exit724.i.for.body435.i_crit_edge ]
  %hop2_pte_addr.0865.i = phi i64 [ %24, %for.body435.lr.ph.i ], [ %add437.i, %put_pte.exit724.i.for.body435.i_crit_edge ]
  %79 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %hdev1, align 4
  %asic_funcs.i.i657.i = getelementptr inbounds %struct.hl_device, ptr %80, i32 0, i32 34
  %81 = ptrtoint ptr %asic_funcs.i.i657.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %asic_funcs.i.i657.i, align 8
  %write_pte.i.i658.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %82, i32 0, i32 41
  %83 = ptrtoint ptr %write_pte.i.i658.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %write_pte.i.i658.i, align 4
  %mmu_hop_table_size.i.i.i659.i = getelementptr inbounds %struct.hl_device, ptr %80, i32 0, i32 33, i32 33
  %85 = ptrtoint ptr %mmu_hop_table_size.i.i.i659.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %mmu_hop_table_size.i.i.i659.i, align 4
  %sub.i.i.i660.i = add i32 %86, -1
  %conv.i.i.i661.i = zext i32 %sub.i.i.i660.i to i64
  %neg.i.i.i662.i = xor i64 %conv.i.i.i661.i, -1
  %and.i.i.i663.i = and i64 %hop2_pte_addr.0865.i, %neg.i.i.i662.i
  %mmu_shadow_hop0.i.i.i.i664.i = getelementptr inbounds %struct.hl_device, ptr %80, i32 0, i32 51, i32 0, i32 1
  %87 = ptrtoint ptr %mmu_shadow_hop0.i.i.i.i664.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %mmu_shadow_hop0.i.i.i.i664.i, align 4
  %89 = ptrtoint ptr %88 to i32
  %conv.i.i.i.i665.i = zext i32 %89 to i64
  %90 = ptrtoint ptr %asid.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %asid.i, align 8
  %mul.i.i.i.i667.i = mul i32 %91, %86
  %conv2.i.i.i.i668.i = zext i32 %mul.i.i.i.i667.i to i64
  %add.i.i.i.i669.i = add nuw nsw i64 %conv2.i.i.i.i668.i, %conv.i.i.i.i665.i
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i.i663.i, i64 %add.i.i.i.i669.i)
  %cmp.not.i.i.i670.i = icmp eq i64 %and.i.i.i663.i, %add.i.i.i.i669.i
  br i1 %cmp.not.i.i.i670.i, label %if.else.i.i.i687.i, label %if.then.i.i.i675.i

if.then.i.i.i675.i:                               ; preds = %for.body435.i
  %conv.i11.i.i.i671.i = trunc i64 %and.i.i.i663.i to i32
  %mul.i.i.i.i.i.i672.i = mul i32 %conv.i11.i.i.i671.i, 1640531527
  %shr.i.i.i.i.i673.i = lshr i32 %mul.i.i.i.i.i.i672.i, 25
  %arrayidx.i.i.i.i674.i = getelementptr %struct.hl_ctx, ptr %ctx, i32 0, i32 1, i32 %shr.i.i.i.i.i673.i
  br label %for.cond.i.i.i.i679.i

for.cond.i.i.i.i679.i:                            ; preds = %for.body.i.i.i.i682.i.for.cond.i.i.i.i679.i_crit_edge, %if.then.i.i.i675.i
  %pgt_info.0.in.i.i.i.i676.i = phi ptr [ %arrayidx.i.i.i.i674.i, %if.then.i.i.i675.i ], [ %pgt_info.0.i.i.i.i677.i, %for.body.i.i.i.i682.i.for.cond.i.i.i.i679.i_crit_edge ]
  %92 = ptrtoint ptr %pgt_info.0.in.i.i.i.i676.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %pgt_info.0.i.i.i.i677.i = load ptr, ptr %pgt_info.0.in.i.i.i.i676.i, align 4
  %tobool2.not.i.i.i.i678.i = icmp eq ptr %pgt_info.0.i.i.i.i677.i, null
  br i1 %tobool2.not.i.i.i.i678.i, label %for.cond.i.i.i.i679.i.get_pgt_info.exit.i.i.i684.i_crit_edge, label %for.body.i.i.i.i682.i

for.cond.i.i.i.i679.i.get_pgt_info.exit.i.i.i684.i_crit_edge: ; preds = %for.cond.i.i.i.i679.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pgt_info.exit.i.i.i684.i

for.body.i.i.i.i682.i:                            ; preds = %for.cond.i.i.i.i679.i
  %shadow_addr.i.i.i.i680.i = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i.i.i677.i, i32 0, i32 2
  %93 = ptrtoint ptr %shadow_addr.i.i.i.i680.i to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %shadow_addr.i.i.i.i680.i, align 8
  %cmp.i.i.i.i681.i = icmp eq i64 %94, %and.i.i.i663.i
  br i1 %cmp.i.i.i.i681.i, label %for.body.i.i.i.i682.i.get_pgt_info.exit.i.i.i684.i_crit_edge, label %for.body.i.i.i.i682.i.for.cond.i.i.i.i679.i_crit_edge

for.body.i.i.i.i682.i.for.cond.i.i.i.i679.i_crit_edge: ; preds = %for.body.i.i.i.i682.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i.i.i679.i

for.body.i.i.i.i682.i.get_pgt_info.exit.i.i.i684.i_crit_edge: ; preds = %for.body.i.i.i.i682.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pgt_info.exit.i.i.i684.i

get_pgt_info.exit.i.i.i684.i:                     ; preds = %for.body.i.i.i.i682.i.get_pgt_info.exit.i.i.i684.i_crit_edge, %for.cond.i.i.i.i679.i.get_pgt_info.exit.i.i.i684.i_crit_edge
  %phys_addr.i.i.i683.i = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i.i.i677.i, i32 0, i32 1
  %95 = ptrtoint ptr %phys_addr.i.i.i683.i to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %phys_addr.i.i.i683.i, align 8
  br label %clear_pte.exit692.i

if.else.i.i.i687.i:                               ; preds = %for.body435.i
  call void @__sanitizer_cov_trace_pc() #11
  %mmu_pgt_addr.i.i.i.i685.i = getelementptr inbounds %struct.hl_device, ptr %80, i32 0, i32 33, i32 23
  %97 = ptrtoint ptr %mmu_pgt_addr.i.i.i.i685.i to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %mmu_pgt_addr.i.i.i.i685.i, align 8
  %add.i17.i.i.i686.i = add i64 %98, %conv2.i.i.i.i668.i
  br label %clear_pte.exit692.i

clear_pte.exit692.i:                              ; preds = %if.else.i.i.i687.i, %get_pgt_info.exit.i.i.i684.i
  %phys_hop_addr.0.i.i.i688.i = phi i64 [ %96, %get_pgt_info.exit.i.i.i684.i ], [ %add.i17.i.i.i686.i, %if.else.i.i.i687.i ]
  %and1.i.i.i689.i = and i64 %hop2_pte_addr.0865.i, %conv.i.i.i661.i
  %add.i.i.i690.i = add i64 %phys_hop_addr.0.i.i.i688.i, %and1.i.i.i689.i
  tail call void %84(ptr noundef %80, i64 noundef %add.i.i.i690.i, i64 noundef 0) #9
  %conv.i.i691.i = trunc i64 %hop2_pte_addr.0865.i to i32
  %99 = inttoptr i32 %conv.i.i691.i to ptr
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_store8_noabort(i32 %100)
  store i64 0, ptr %99, align 8
  br label %for.cond.i.i700.i

for.cond.i.i700.i:                                ; preds = %for.body.i.i703.i.for.cond.i.i700.i_crit_edge, %clear_pte.exit692.i
  %pgt_info.0.in.i.i697.i = phi ptr [ %arrayidx.i.i696.i, %clear_pte.exit692.i ], [ %pgt_info.0.i.i698.i, %for.body.i.i703.i.for.cond.i.i700.i_crit_edge ]
  %101 = ptrtoint ptr %pgt_info.0.in.i.i697.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %pgt_info.0.i.i698.i = load ptr, ptr %pgt_info.0.in.i.i697.i, align 4
  %tobool2.not.i.i699.i = icmp eq ptr %pgt_info.0.i.i698.i, null
  br i1 %tobool2.not.i.i699.i, label %for.cond.i.i700.i.get_pgt_info.exit.i707.i_crit_edge, label %for.body.i.i703.i

for.cond.i.i700.i.get_pgt_info.exit.i707.i_crit_edge: ; preds = %for.cond.i.i700.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pgt_info.exit.i707.i

for.body.i.i703.i:                                ; preds = %for.cond.i.i700.i
  %shadow_addr.i.i701.i = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i698.i, i32 0, i32 2
  %102 = ptrtoint ptr %shadow_addr.i.i701.i to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %shadow_addr.i.i701.i, align 8
  %cmp.i.i702.i = icmp eq i64 %103, %24
  br i1 %cmp.i.i702.i, label %for.body.i.i703.i.get_pgt_info.exit.i707.i_crit_edge, label %for.body.i.i703.i.for.cond.i.i700.i_crit_edge

for.body.i.i703.i.for.cond.i.i700.i_crit_edge:    ; preds = %for.body.i.i703.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i700.i

for.body.i.i703.i.get_pgt_info.exit.i707.i_crit_edge: ; preds = %for.body.i.i703.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pgt_info.exit.i707.i

get_pgt_info.exit.i707.i:                         ; preds = %for.body.i.i703.i.get_pgt_info.exit.i707.i_crit_edge, %for.cond.i.i700.i.get_pgt_info.exit.i707.i_crit_edge
  %num_of_ptes.i704.i = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i698.i, i32 0, i32 4
  %104 = ptrtoint ptr %num_of_ptes.i704.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %num_of_ptes.i704.i, align 4
  %dec.i705.i = add i32 %105, -1
  store i32 %dec.i705.i, ptr %num_of_ptes.i704.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i705.i)
  %tobool.not.i706.i = icmp eq i32 %dec.i705.i, 0
  br i1 %tobool.not.i706.i, label %if.then.i715.i, label %get_pgt_info.exit.i707.i.put_pte.exit724.i_crit_edge

get_pgt_info.exit.i707.i.put_pte.exit724.i_crit_edge: ; preds = %get_pgt_info.exit.i707.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_pte.exit724.i

if.then.i715.i:                                   ; preds = %get_pgt_info.exit.i707.i
  %106 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %hdev1, align 4
  %mmu_priv.i.i709.i = getelementptr inbounds %struct.hl_device, ptr %107, i32 0, i32 51
  %108 = ptrtoint ptr %mmu_priv.i.i709.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %mmu_priv.i.i709.i, align 8
  %phys_addr.i.i710.i = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i698.i, i32 0, i32 1
  %110 = ptrtoint ptr %phys_addr.i.i710.i to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %phys_addr.i.i710.i, align 8
  %conv.i6.i711.i = trunc i64 %111 to i32
  %mmu_hop_table_size.i.i712.i = getelementptr inbounds %struct.hl_device, ptr %107, i32 0, i32 33, i32 33
  %112 = ptrtoint ptr %mmu_hop_table_size.i.i712.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %mmu_hop_table_size.i.i712.i, align 4
  tail call void @gen_pool_free_owner(ptr noundef %109, i32 noundef %conv.i6.i711.i, i32 noundef %113, ptr noundef null) #9
  %pprev.i.i.i.i.i713.i = getelementptr inbounds %struct.hlist_node, ptr %pgt_info.0.i.i698.i, i32 0, i32 1
  %114 = ptrtoint ptr %pprev.i.i.i.i.i713.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %pprev.i.i.i.i.i713.i, align 4
  %tobool.not.i.not.i.i.i.i714.i = icmp eq ptr %115, null
  br i1 %tobool.not.i.not.i.i.i.i714.i, label %if.then.i715.i._free_hop.exit.i723.i_crit_edge, label %if.then.i.i.i.i717.i

if.then.i715.i._free_hop.exit.i723.i_crit_edge:   ; preds = %if.then.i715.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %_free_hop.exit.i723.i

if.then.i.i.i.i717.i:                             ; preds = %if.then.i715.i
  %116 = ptrtoint ptr %pgt_info.0.i.i698.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %pgt_info.0.i.i698.i, align 4
  %118 = ptrtoint ptr %115 to i32
  call void @__asan_store4_noabort(i32 %118)
  store volatile ptr %117, ptr %115, align 4
  %tobool.not.i3.i.i.i.i716.i = icmp eq ptr %117, null
  br i1 %tobool.not.i3.i.i.i.i716.i, label %if.then.i.i.i.i717.i.__hlist_del.exit.i.i.i.i720.i_crit_edge, label %do.body13.i.i.i.i.i719.i

if.then.i.i.i.i717.i.__hlist_del.exit.i.i.i.i720.i_crit_edge: ; preds = %if.then.i.i.i.i717.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__hlist_del.exit.i.i.i.i720.i

do.body13.i.i.i.i.i719.i:                         ; preds = %if.then.i.i.i.i717.i
  call void @__sanitizer_cov_trace_pc() #11
  %pprev14.i.i.i.i.i718.i = getelementptr inbounds %struct.hlist_node, ptr %117, i32 0, i32 1
  %119 = ptrtoint ptr %pprev14.i.i.i.i.i718.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store volatile ptr %115, ptr %pprev14.i.i.i.i.i718.i, align 4
  br label %__hlist_del.exit.i.i.i.i720.i

__hlist_del.exit.i.i.i.i720.i:                    ; preds = %do.body13.i.i.i.i.i719.i, %if.then.i.i.i.i717.i.__hlist_del.exit.i.i.i.i720.i_crit_edge
  %120 = ptrtoint ptr %pgt_info.0.i.i698.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr null, ptr %pgt_info.0.i.i698.i, align 4
  %121 = ptrtoint ptr %pprev.i.i.i.i.i713.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr null, ptr %pprev.i.i.i.i.i713.i, align 4
  br label %_free_hop.exit.i723.i

_free_hop.exit.i723.i:                            ; preds = %__hlist_del.exit.i.i.i.i720.i, %if.then.i715.i._free_hop.exit.i723.i_crit_edge
  %shadow_addr.i7.i721.i = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i698.i, i32 0, i32 2
  %122 = ptrtoint ptr %shadow_addr.i7.i721.i to i32
  call void @__asan_load8_noabort(i32 %122)
  %123 = load i64, ptr %shadow_addr.i7.i721.i, align 8
  %conv2.i.i722.i = trunc i64 %123 to i32
  %124 = inttoptr i32 %conv2.i.i722.i to ptr
  tail call void @kfree(ptr noundef %124) #9
  tail call void @kfree(ptr noundef %pgt_info.0.i.i698.i) #9
  br label %put_pte.exit724.i

put_pte.exit724.i:                                ; preds = %_free_hop.exit.i723.i, %get_pgt_info.exit.i707.i.put_pte.exit724.i_crit_edge
  %add437.i = add i64 %hop2_pte_addr.0865.i, 8
  %inc439.i = add i32 %i.1866.i, 1
  %conv432.i = sext i32 %inc439.i to i64
  %cmp433.i = icmp ugt i64 %shr212.i, %conv432.i
  br i1 %cmp433.i, label %put_pte.exit724.i.for.body435.i_crit_edge, label %put_pte.exit724.i.for.end440.i_crit_edge

put_pte.exit724.i.for.end440.i_crit_edge:         ; preds = %put_pte.exit724.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end440.i

put_pte.exit724.i.for.body435.i_crit_edge:        ; preds = %put_pte.exit724.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body435.i

for.end440.i:                                     ; preds = %put_pte.exit724.i.for.end440.i_crit_edge, %if.end406.i.for.end440.i_crit_edge
  %125 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %hdev1, align 4
  %asic_funcs.i.i726.i = getelementptr inbounds %struct.hl_device, ptr %126, i32 0, i32 34
  %127 = ptrtoint ptr %asic_funcs.i.i726.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %asic_funcs.i.i726.i, align 8
  %write_pte.i.i727.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %128, i32 0, i32 41
  %129 = ptrtoint ptr %write_pte.i.i727.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %write_pte.i.i727.i, align 4
  %mmu_hop_table_size.i.i.i728.i = getelementptr inbounds %struct.hl_device, ptr %126, i32 0, i32 33, i32 33
  %131 = ptrtoint ptr %mmu_hop_table_size.i.i.i728.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %mmu_hop_table_size.i.i.i728.i, align 4
  %sub.i.i.i729.i = add i32 %132, -1
  %conv.i.i.i730.i = zext i32 %sub.i.i.i729.i to i64
  %neg.i.i.i731.i = xor i64 %conv.i.i.i730.i, -1
  %and.i.i.i732.i = and i64 %22, %neg.i.i.i731.i
  %mmu_shadow_hop0.i.i.i.i733.i = getelementptr inbounds %struct.hl_device, ptr %126, i32 0, i32 51, i32 0, i32 1
  %133 = ptrtoint ptr %mmu_shadow_hop0.i.i.i.i733.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %mmu_shadow_hop0.i.i.i.i733.i, align 4
  %135 = ptrtoint ptr %134 to i32
  %conv.i.i.i.i734.i = zext i32 %135 to i64
  %136 = ptrtoint ptr %asid.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %asid.i, align 8
  %mul.i.i.i.i736.i = mul i32 %137, %132
  %conv2.i.i.i.i737.i = zext i32 %mul.i.i.i.i736.i to i64
  %add.i.i.i.i738.i = add nuw nsw i64 %conv2.i.i.i.i737.i, %conv.i.i.i.i734.i
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i.i732.i, i64 %add.i.i.i.i738.i)
  %cmp.not.i.i.i739.i = icmp eq i64 %and.i.i.i732.i, %add.i.i.i.i738.i
  br i1 %cmp.not.i.i.i739.i, label %if.else.i.i.i756.i, label %if.then.i.i.i744.i

if.then.i.i.i744.i:                               ; preds = %for.end440.i
  %conv.i11.i.i.i740.i = trunc i64 %and.i.i.i732.i to i32
  %mul.i.i.i.i.i.i741.i = mul i32 %conv.i11.i.i.i740.i, 1640531527
  %shr.i.i.i.i.i742.i = lshr i32 %mul.i.i.i.i.i.i741.i, 25
  %arrayidx.i.i.i.i743.i = getelementptr %struct.hl_ctx, ptr %ctx, i32 0, i32 1, i32 %shr.i.i.i.i.i742.i
  br label %for.cond.i.i.i.i748.i

for.cond.i.i.i.i748.i:                            ; preds = %for.body.i.i.i.i751.i.for.cond.i.i.i.i748.i_crit_edge, %if.then.i.i.i744.i
  %pgt_info.0.in.i.i.i.i745.i = phi ptr [ %arrayidx.i.i.i.i743.i, %if.then.i.i.i744.i ], [ %pgt_info.0.i.i.i.i746.i, %for.body.i.i.i.i751.i.for.cond.i.i.i.i748.i_crit_edge ]
  %138 = ptrtoint ptr %pgt_info.0.in.i.i.i.i745.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %pgt_info.0.i.i.i.i746.i = load ptr, ptr %pgt_info.0.in.i.i.i.i745.i, align 4
  %tobool2.not.i.i.i.i747.i = icmp eq ptr %pgt_info.0.i.i.i.i746.i, null
  br i1 %tobool2.not.i.i.i.i747.i, label %for.cond.i.i.i.i748.i.get_pgt_info.exit.i.i.i753.i_crit_edge, label %for.body.i.i.i.i751.i

for.cond.i.i.i.i748.i.get_pgt_info.exit.i.i.i753.i_crit_edge: ; preds = %for.cond.i.i.i.i748.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pgt_info.exit.i.i.i753.i

for.body.i.i.i.i751.i:                            ; preds = %for.cond.i.i.i.i748.i
  %shadow_addr.i.i.i.i749.i = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i.i.i746.i, i32 0, i32 2
  %139 = ptrtoint ptr %shadow_addr.i.i.i.i749.i to i32
  call void @__asan_load8_noabort(i32 %139)
  %140 = load i64, ptr %shadow_addr.i.i.i.i749.i, align 8
  %cmp.i.i.i.i750.i = icmp eq i64 %140, %and.i.i.i732.i
  br i1 %cmp.i.i.i.i750.i, label %for.body.i.i.i.i751.i.get_pgt_info.exit.i.i.i753.i_crit_edge, label %for.body.i.i.i.i751.i.for.cond.i.i.i.i748.i_crit_edge

for.body.i.i.i.i751.i.for.cond.i.i.i.i748.i_crit_edge: ; preds = %for.body.i.i.i.i751.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i.i.i748.i

for.body.i.i.i.i751.i.get_pgt_info.exit.i.i.i753.i_crit_edge: ; preds = %for.body.i.i.i.i751.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pgt_info.exit.i.i.i753.i

get_pgt_info.exit.i.i.i753.i:                     ; preds = %for.body.i.i.i.i751.i.get_pgt_info.exit.i.i.i753.i_crit_edge, %for.cond.i.i.i.i748.i.get_pgt_info.exit.i.i.i753.i_crit_edge
  %phys_addr.i.i.i752.i = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i.i.i746.i, i32 0, i32 1
  %141 = ptrtoint ptr %phys_addr.i.i.i752.i to i32
  call void @__asan_load8_noabort(i32 %141)
  %142 = load i64, ptr %phys_addr.i.i.i752.i, align 8
  br label %clear_pte.exit761.i

if.else.i.i.i756.i:                               ; preds = %for.end440.i
  call void @__sanitizer_cov_trace_pc() #11
  %mmu_pgt_addr.i.i.i.i754.i = getelementptr inbounds %struct.hl_device, ptr %126, i32 0, i32 33, i32 23
  %143 = ptrtoint ptr %mmu_pgt_addr.i.i.i.i754.i to i32
  call void @__asan_load8_noabort(i32 %143)
  %144 = load i64, ptr %mmu_pgt_addr.i.i.i.i754.i, align 8
  %add.i17.i.i.i755.i = add i64 %144, %conv2.i.i.i.i737.i
  br label %clear_pte.exit761.i

clear_pte.exit761.i:                              ; preds = %if.else.i.i.i756.i, %get_pgt_info.exit.i.i.i753.i
  %phys_hop_addr.0.i.i.i757.i = phi i64 [ %142, %get_pgt_info.exit.i.i.i753.i ], [ %add.i17.i.i.i755.i, %if.else.i.i.i756.i ]
  %and1.i.i.i758.i = and i64 %22, %conv.i.i.i730.i
  %add.i.i.i759.i = add i64 %phys_hop_addr.0.i.i.i757.i, %and1.i.i.i758.i
  tail call void %130(ptr noundef %126, i64 noundef %add.i.i.i759.i, i64 noundef 0) #9
  %conv.i.i760.i = trunc i64 %22 to i32
  %145 = inttoptr i32 %conv.i.i760.i to ptr
  %146 = ptrtoint ptr %145 to i32
  call void @__asan_store8_noabort(i32 %146)
  store i64 0, ptr %145, align 8
  %mul.i.i.i.i763.i = mul i32 %conv.i.i760.i, 1640531527
  %shr.i.i.i764.i = lshr i32 %mul.i.i.i.i763.i, 25
  %arrayidx.i.i765.i = getelementptr %struct.hl_ctx, ptr %ctx, i32 0, i32 1, i32 %shr.i.i.i764.i
  br label %for.cond.i.i769.i

for.cond.i.i769.i:                                ; preds = %for.body.i.i772.i.for.cond.i.i769.i_crit_edge, %clear_pte.exit761.i
  %pgt_info.0.in.i.i766.i = phi ptr [ %arrayidx.i.i765.i, %clear_pte.exit761.i ], [ %pgt_info.0.i.i767.i, %for.body.i.i772.i.for.cond.i.i769.i_crit_edge ]
  %147 = ptrtoint ptr %pgt_info.0.in.i.i766.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %pgt_info.0.i.i767.i = load ptr, ptr %pgt_info.0.in.i.i766.i, align 4
  %tobool2.not.i.i768.i = icmp eq ptr %pgt_info.0.i.i767.i, null
  br i1 %tobool2.not.i.i768.i, label %for.cond.i.i769.i.get_pgt_info.exit.i776.i_crit_edge, label %for.body.i.i772.i

for.cond.i.i769.i.get_pgt_info.exit.i776.i_crit_edge: ; preds = %for.cond.i.i769.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pgt_info.exit.i776.i

for.body.i.i772.i:                                ; preds = %for.cond.i.i769.i
  %shadow_addr.i.i770.i = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i767.i, i32 0, i32 2
  %148 = ptrtoint ptr %shadow_addr.i.i770.i to i32
  call void @__asan_load8_noabort(i32 %148)
  %149 = load i64, ptr %shadow_addr.i.i770.i, align 8
  %cmp.i.i771.i = icmp eq i64 %149, %22
  br i1 %cmp.i.i771.i, label %for.body.i.i772.i.get_pgt_info.exit.i776.i_crit_edge, label %for.body.i.i772.i.for.cond.i.i769.i_crit_edge

for.body.i.i772.i.for.cond.i.i769.i_crit_edge:    ; preds = %for.body.i.i772.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i769.i

for.body.i.i772.i.get_pgt_info.exit.i776.i_crit_edge: ; preds = %for.body.i.i772.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pgt_info.exit.i776.i

get_pgt_info.exit.i776.i:                         ; preds = %for.body.i.i772.i.get_pgt_info.exit.i776.i_crit_edge, %for.cond.i.i769.i.get_pgt_info.exit.i776.i_crit_edge
  %num_of_ptes.i773.i = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i767.i, i32 0, i32 4
  %150 = ptrtoint ptr %num_of_ptes.i773.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %num_of_ptes.i773.i, align 4
  %dec.i774.i = add i32 %151, -1
  store i32 %dec.i774.i, ptr %num_of_ptes.i773.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i774.i)
  %tobool.not.i775.i = icmp eq i32 %dec.i774.i, 0
  br i1 %tobool.not.i775.i, label %if.then.i784.i, label %get_pgt_info.exit.i776.i.put_pte.exit793.i_crit_edge

get_pgt_info.exit.i776.i.put_pte.exit793.i_crit_edge: ; preds = %get_pgt_info.exit.i776.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_pte.exit793.i

if.then.i784.i:                                   ; preds = %get_pgt_info.exit.i776.i
  %152 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %hdev1, align 4
  %mmu_priv.i.i778.i = getelementptr inbounds %struct.hl_device, ptr %153, i32 0, i32 51
  %154 = ptrtoint ptr %mmu_priv.i.i778.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %mmu_priv.i.i778.i, align 8
  %phys_addr.i.i779.i = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i767.i, i32 0, i32 1
  %156 = ptrtoint ptr %phys_addr.i.i779.i to i32
  call void @__asan_load8_noabort(i32 %156)
  %157 = load i64, ptr %phys_addr.i.i779.i, align 8
  %conv.i6.i780.i = trunc i64 %157 to i32
  %mmu_hop_table_size.i.i781.i = getelementptr inbounds %struct.hl_device, ptr %153, i32 0, i32 33, i32 33
  %158 = ptrtoint ptr %mmu_hop_table_size.i.i781.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %mmu_hop_table_size.i.i781.i, align 4
  tail call void @gen_pool_free_owner(ptr noundef %155, i32 noundef %conv.i6.i780.i, i32 noundef %159, ptr noundef null) #9
  %pprev.i.i.i.i.i782.i = getelementptr inbounds %struct.hlist_node, ptr %pgt_info.0.i.i767.i, i32 0, i32 1
  %160 = ptrtoint ptr %pprev.i.i.i.i.i782.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %pprev.i.i.i.i.i782.i, align 4
  %tobool.not.i.not.i.i.i.i783.i = icmp eq ptr %161, null
  br i1 %tobool.not.i.not.i.i.i.i783.i, label %if.then.i784.i._free_hop.exit.i792.i_crit_edge, label %if.then.i.i.i.i786.i

if.then.i784.i._free_hop.exit.i792.i_crit_edge:   ; preds = %if.then.i784.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %_free_hop.exit.i792.i

if.then.i.i.i.i786.i:                             ; preds = %if.then.i784.i
  %162 = ptrtoint ptr %pgt_info.0.i.i767.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %pgt_info.0.i.i767.i, align 4
  %164 = ptrtoint ptr %161 to i32
  call void @__asan_store4_noabort(i32 %164)
  store volatile ptr %163, ptr %161, align 4
  %tobool.not.i3.i.i.i.i785.i = icmp eq ptr %163, null
  br i1 %tobool.not.i3.i.i.i.i785.i, label %if.then.i.i.i.i786.i.__hlist_del.exit.i.i.i.i789.i_crit_edge, label %do.body13.i.i.i.i.i788.i

if.then.i.i.i.i786.i.__hlist_del.exit.i.i.i.i789.i_crit_edge: ; preds = %if.then.i.i.i.i786.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__hlist_del.exit.i.i.i.i789.i

do.body13.i.i.i.i.i788.i:                         ; preds = %if.then.i.i.i.i786.i
  call void @__sanitizer_cov_trace_pc() #11
  %pprev14.i.i.i.i.i787.i = getelementptr inbounds %struct.hlist_node, ptr %163, i32 0, i32 1
  %165 = ptrtoint ptr %pprev14.i.i.i.i.i787.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store volatile ptr %161, ptr %pprev14.i.i.i.i.i787.i, align 4
  br label %__hlist_del.exit.i.i.i.i789.i

__hlist_del.exit.i.i.i.i789.i:                    ; preds = %do.body13.i.i.i.i.i788.i, %if.then.i.i.i.i786.i.__hlist_del.exit.i.i.i.i789.i_crit_edge
  %166 = ptrtoint ptr %pgt_info.0.i.i767.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr null, ptr %pgt_info.0.i.i767.i, align 4
  %167 = ptrtoint ptr %pprev.i.i.i.i.i782.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr null, ptr %pprev.i.i.i.i.i782.i, align 4
  br label %_free_hop.exit.i792.i

_free_hop.exit.i792.i:                            ; preds = %__hlist_del.exit.i.i.i.i789.i, %if.then.i784.i._free_hop.exit.i792.i_crit_edge
  %shadow_addr.i7.i790.i = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i767.i, i32 0, i32 2
  %168 = ptrtoint ptr %shadow_addr.i7.i790.i to i32
  call void @__asan_load8_noabort(i32 %168)
  %169 = load i64, ptr %shadow_addr.i7.i790.i, align 8
  %conv2.i.i791.i = trunc i64 %169 to i32
  %170 = inttoptr i32 %conv2.i.i791.i to ptr
  tail call void @kfree(ptr noundef %170) #9
  tail call void @kfree(ptr noundef %pgt_info.0.i.i767.i) #9
  br label %put_pte.exit793.i

put_pte.exit793.i:                                ; preds = %_free_hop.exit.i792.i, %get_pgt_info.exit.i776.i.put_pte.exit793.i_crit_edge
  %171 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %hdev1, align 4
  %asic_funcs.i.i795.i = getelementptr inbounds %struct.hl_device, ptr %172, i32 0, i32 34
  %173 = ptrtoint ptr %asic_funcs.i.i795.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %asic_funcs.i.i795.i, align 8
  %write_pte.i.i796.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %174, i32 0, i32 41
  %175 = ptrtoint ptr %write_pte.i.i796.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %write_pte.i.i796.i, align 4
  %mmu_hop_table_size.i.i.i797.i = getelementptr inbounds %struct.hl_device, ptr %172, i32 0, i32 33, i32 33
  %177 = ptrtoint ptr %mmu_hop_table_size.i.i.i797.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %mmu_hop_table_size.i.i.i797.i, align 4
  %sub.i.i.i798.i = add i32 %178, -1
  %conv.i.i.i799.i = zext i32 %sub.i.i.i798.i to i64
  %neg.i.i.i800.i = xor i64 %conv.i.i.i799.i, -1
  %and.i.i.i801.i = and i64 %add.i.i, %neg.i.i.i800.i
  %mmu_shadow_hop0.i.i.i.i802.i = getelementptr inbounds %struct.hl_device, ptr %172, i32 0, i32 51, i32 0, i32 1
  %179 = ptrtoint ptr %mmu_shadow_hop0.i.i.i.i802.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %mmu_shadow_hop0.i.i.i.i802.i, align 4
  %181 = ptrtoint ptr %180 to i32
  %conv.i.i.i.i803.i = zext i32 %181 to i64
  %182 = ptrtoint ptr %asid.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %asid.i, align 8
  %mul.i.i.i.i805.i = mul i32 %183, %178
  %conv2.i.i.i.i806.i = zext i32 %mul.i.i.i.i805.i to i64
  %add.i.i.i.i807.i = add nuw nsw i64 %conv2.i.i.i.i806.i, %conv.i.i.i.i803.i
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i.i801.i, i64 %add.i.i.i.i807.i)
  %cmp.not.i.i.i808.i = icmp eq i64 %and.i.i.i801.i, %add.i.i.i.i807.i
  br i1 %cmp.not.i.i.i808.i, label %if.else.i.i.i825.i, label %if.then.i.i.i813.i

if.then.i.i.i813.i:                               ; preds = %put_pte.exit793.i
  %conv.i11.i.i.i809.i = trunc i64 %and.i.i.i801.i to i32
  %mul.i.i.i.i.i.i810.i = mul i32 %conv.i11.i.i.i809.i, 1640531527
  %shr.i.i.i.i.i811.i = lshr i32 %mul.i.i.i.i.i.i810.i, 25
  %arrayidx.i.i.i.i812.i = getelementptr %struct.hl_ctx, ptr %ctx, i32 0, i32 1, i32 %shr.i.i.i.i.i811.i
  br label %for.cond.i.i.i.i817.i

for.cond.i.i.i.i817.i:                            ; preds = %for.body.i.i.i.i820.i.for.cond.i.i.i.i817.i_crit_edge, %if.then.i.i.i813.i
  %pgt_info.0.in.i.i.i.i814.i = phi ptr [ %arrayidx.i.i.i.i812.i, %if.then.i.i.i813.i ], [ %pgt_info.0.i.i.i.i815.i, %for.body.i.i.i.i820.i.for.cond.i.i.i.i817.i_crit_edge ]
  %184 = ptrtoint ptr %pgt_info.0.in.i.i.i.i814.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %pgt_info.0.i.i.i.i815.i = load ptr, ptr %pgt_info.0.in.i.i.i.i814.i, align 4
  %tobool2.not.i.i.i.i816.i = icmp eq ptr %pgt_info.0.i.i.i.i815.i, null
  br i1 %tobool2.not.i.i.i.i816.i, label %for.cond.i.i.i.i817.i.get_pgt_info.exit.i.i.i822.i_crit_edge, label %for.body.i.i.i.i820.i

for.cond.i.i.i.i817.i.get_pgt_info.exit.i.i.i822.i_crit_edge: ; preds = %for.cond.i.i.i.i817.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pgt_info.exit.i.i.i822.i

for.body.i.i.i.i820.i:                            ; preds = %for.cond.i.i.i.i817.i
  %shadow_addr.i.i.i.i818.i = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i.i.i815.i, i32 0, i32 2
  %185 = ptrtoint ptr %shadow_addr.i.i.i.i818.i to i32
  call void @__asan_load8_noabort(i32 %185)
  %186 = load i64, ptr %shadow_addr.i.i.i.i818.i, align 8
  %cmp.i.i.i.i819.i = icmp eq i64 %186, %and.i.i.i801.i
  br i1 %cmp.i.i.i.i819.i, label %for.body.i.i.i.i820.i.get_pgt_info.exit.i.i.i822.i_crit_edge, label %for.body.i.i.i.i820.i.for.cond.i.i.i.i817.i_crit_edge

for.body.i.i.i.i820.i.for.cond.i.i.i.i817.i_crit_edge: ; preds = %for.body.i.i.i.i820.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i.i.i817.i

for.body.i.i.i.i820.i.get_pgt_info.exit.i.i.i822.i_crit_edge: ; preds = %for.body.i.i.i.i820.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pgt_info.exit.i.i.i822.i

get_pgt_info.exit.i.i.i822.i:                     ; preds = %for.body.i.i.i.i820.i.get_pgt_info.exit.i.i.i822.i_crit_edge, %for.cond.i.i.i.i817.i.get_pgt_info.exit.i.i.i822.i_crit_edge
  %phys_addr.i.i.i821.i = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i.i.i815.i, i32 0, i32 1
  %187 = ptrtoint ptr %phys_addr.i.i.i821.i to i32
  call void @__asan_load8_noabort(i32 %187)
  %188 = load i64, ptr %phys_addr.i.i.i821.i, align 8
  br label %clear_pte.exit830.i

if.else.i.i.i825.i:                               ; preds = %put_pte.exit793.i
  call void @__sanitizer_cov_trace_pc() #11
  %mmu_pgt_addr.i.i.i.i823.i = getelementptr inbounds %struct.hl_device, ptr %172, i32 0, i32 33, i32 23
  %189 = ptrtoint ptr %mmu_pgt_addr.i.i.i.i823.i to i32
  call void @__asan_load8_noabort(i32 %189)
  %190 = load i64, ptr %mmu_pgt_addr.i.i.i.i823.i, align 8
  %add.i17.i.i.i824.i = add i64 %190, %conv2.i.i.i.i806.i
  br label %clear_pte.exit830.i

clear_pte.exit830.i:                              ; preds = %if.else.i.i.i825.i, %get_pgt_info.exit.i.i.i822.i
  %phys_hop_addr.0.i.i.i826.i = phi i64 [ %188, %get_pgt_info.exit.i.i.i822.i ], [ %add.i17.i.i.i824.i, %if.else.i.i.i825.i ]
  %and1.i.i.i827.i = and i64 %add.i.i, %conv.i.i.i799.i
  %add.i.i.i828.i = add i64 %phys_hop_addr.0.i.i.i826.i, %and1.i.i.i827.i
  tail call void %176(ptr noundef %172, i64 noundef %add.i.i.i828.i, i64 noundef 0) #9
  %conv.i.i829.i = trunc i64 %add.i.i to i32
  %191 = inttoptr i32 %conv.i.i829.i to ptr
  %192 = ptrtoint ptr %191 to i32
  call void @__asan_store8_noabort(i32 %192)
  store i64 0, ptr %191, align 8
  %193 = ptrtoint ptr %dram_default_hops.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %dram_default_hops.i, align 8
  tail call void @kfree(ptr noundef %194) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %195 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %hdev1, align 4
  %asic_funcs.i.i = getelementptr inbounds %struct.hl_device, ptr %196, i32 0, i32 34
  %197 = ptrtoint ptr %asic_funcs.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %asic_funcs.i.i, align 8
  %read_pte.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %198, i32 0, i32 40
  %199 = ptrtoint ptr %read_pte.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %read_pte.i.i, align 4
  %mmu_pgt_addr.i.i.i = getelementptr inbounds %struct.hl_device, ptr %196, i32 0, i32 33, i32 23
  %201 = ptrtoint ptr %mmu_pgt_addr.i.i.i to i32
  call void @__asan_load8_noabort(i32 %201)
  %202 = load i64, ptr %mmu_pgt_addr.i.i.i, align 8
  %203 = ptrtoint ptr %asid.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %asid.i, align 8
  %mmu_hop_table_size.i.i832.i = getelementptr inbounds %struct.hl_device, ptr %196, i32 0, i32 33, i32 33
  %205 = ptrtoint ptr %mmu_hop_table_size.i.i832.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %mmu_hop_table_size.i.i832.i, align 4
  %mul.i.i.i = mul i32 %206, %204
  %conv.i.i833.i = zext i32 %mul.i.i.i to i64
  %add.i.i.i = add i64 %202, %conv.i.i833.i
  %call2.i.i = tail call i64 %200(ptr noundef %196, i64 noundef %add.i.i.i) #9
  br label %dram_default_mapping_fini.exit

dram_default_mapping_fini.exit:                   ; preds = %clear_pte.exit830.i, %lor.lhs.false3.i.dram_default_mapping_fini.exit_crit_edge, %lor.lhs.false.i.dram_default_mapping_fini.exit_crit_edge, %entry.dram_default_mapping_fini.exit_crit_edge
  %mmu_shadow_hash = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 1
  %207 = ptrtoint ptr %mmu_shadow_hash to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load volatile ptr, ptr %mmu_shadow_hash, align 4
  %tobool.not.i.not.i61 = icmp eq ptr %208, null
  br i1 %tobool.not.i.not.i61, label %dram_default_mapping_fini.exit.for.cond.i_crit_edge, label %dram_default_mapping_fini.exit.do.end_crit_edge

dram_default_mapping_fini.exit.do.end_crit_edge:  ; preds = %dram_default_mapping_fini.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

dram_default_mapping_fini.exit.for.cond.i_crit_edge: ; preds = %dram_default_mapping_fini.exit
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i59.for.cond.i_crit_edge, %dram_default_mapping_fini.exit.for.cond.i_crit_edge
  %i.01.i62 = phi i32 [ %inc.i55, %for.body.i59.for.cond.i_crit_edge ], [ 0, %dram_default_mapping_fini.exit.for.cond.i_crit_edge ]
  %inc.i55 = add nuw nsw i32 %i.01.i62, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %inc.i55)
  %exitcond.not.i57 = icmp eq i32 %inc.i55, 128
  br i1 %exitcond.not.i57, label %for.cond.i.__hash_empty.exit_crit_edge, label %for.body.i59

for.cond.i.__hash_empty.exit_crit_edge:           ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__hash_empty.exit

for.body.i59:                                     ; preds = %for.cond.i
  %arrayidx.i58 = getelementptr %struct.hlist_head, ptr %mmu_shadow_hash, i32 %inc.i55
  %209 = ptrtoint ptr %arrayidx.i58 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load volatile ptr, ptr %arrayidx.i58, align 4
  %tobool.not.i.not.i = icmp eq ptr %210, null
  br i1 %tobool.not.i.not.i, label %for.body.i59.for.cond.i_crit_edge, label %for.body.i59.__hash_empty.exit_crit_edge

for.body.i59.__hash_empty.exit_crit_edge:         ; preds = %for.body.i59
  call void @__sanitizer_cov_trace_pc() #11
  br label %__hash_empty.exit

for.body.i59.for.cond.i_crit_edge:                ; preds = %for.body.i59
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

__hash_empty.exit:                                ; preds = %for.body.i59.__hash_empty.exit_crit_edge, %for.cond.i.__hash_empty.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %i.01.i62)
  %cmp.i56.le = icmp ult i32 %i.01.i62, 127
  br i1 %cmp.i56.le, label %__hash_empty.exit.do.end_crit_edge, label %__hash_empty.exit.if.end_crit_edge

__hash_empty.exit.if.end_crit_edge:               ; preds = %__hash_empty.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

__hash_empty.exit.do.end_crit_edge:               ; preds = %__hash_empty.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %__hash_empty.exit.do.end_crit_edge, %dram_default_mapping_fini.exit.do.end_crit_edge
  %dev = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %211 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %dev, align 4
  %asid = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 21
  %213 = ptrtoint ptr %asid to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %asid, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %212, ptr noundef nonnull @.str.18, i32 noundef %214) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %__hash_empty.exit.if.end_crit_edge
  %dev20 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %asid21 = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 21
  br label %for.body

for.body:                                         ; preds = %for.inc35.for.body_crit_edge, %if.end
  %i.066 = phi i32 [ 0, %if.end ], [ %inc, %for.inc35.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.hl_ctx, ptr %ctx, i32 0, i32 1, i32 %i.066
  %215 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %arrayidx, align 4
  %tobool7.not64 = icmp eq ptr %216, null
  br i1 %tobool7.not64, label %for.body.for.inc35_crit_edge, label %for.body.land.rhs8_crit_edge

for.body.land.rhs8_crit_edge:                     ; preds = %for.body
  br label %land.rhs8

for.body.for.inc35_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc35

land.rhs8:                                        ; preds = %_free_hop.exit.land.rhs8_crit_edge, %for.body.land.rhs8_crit_edge
  %pgt_info.165 = phi ptr [ %218, %_free_hop.exit.land.rhs8_crit_edge ], [ %216, %for.body.land.rhs8_crit_edge ]
  %217 = ptrtoint ptr %pgt_info.165 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %pgt_info.165, align 8
  %call14 = tail call i32 @___ratelimit(ptr noundef nonnull @hl_mmu_v1_ctx_fini._rs, ptr noundef nonnull @.str.19) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %land.rhs8.do.end24_crit_edge, label %do.end19

land.rhs8.do.end24_crit_edge:                     ; preds = %land.rhs8
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end24

do.end19:                                         ; preds = %land.rhs8
  call void @__sanitizer_cov_trace_pc() #11
  %219 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %dev20, align 4
  %phys_addr = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.165, i32 0, i32 1
  %221 = ptrtoint ptr %phys_addr to i32
  call void @__asan_load8_noabort(i32 %221)
  %222 = load i64, ptr %phys_addr, align 8
  %223 = ptrtoint ptr %asid21 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %asid21, align 8
  %num_of_ptes = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.165, i32 0, i32 4
  %225 = ptrtoint ptr %num_of_ptes to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %num_of_ptes, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %220, ptr noundef nonnull @.str.22, i64 noundef %222, i32 noundef %224, i32 noundef %226) #12
  br label %do.end24

do.end24:                                         ; preds = %do.end19, %land.rhs8.do.end24_crit_edge
  %227 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %hdev1, align 4
  %mmu_priv.i = getelementptr inbounds %struct.hl_device, ptr %228, i32 0, i32 51
  %229 = ptrtoint ptr %mmu_priv.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %mmu_priv.i, align 8
  %phys_addr.i = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.165, i32 0, i32 1
  %231 = ptrtoint ptr %phys_addr.i to i32
  call void @__asan_load8_noabort(i32 %231)
  %232 = load i64, ptr %phys_addr.i, align 8
  %conv.i = trunc i64 %232 to i32
  %mmu_hop_table_size.i = getelementptr inbounds %struct.hl_device, ptr %228, i32 0, i32 33, i32 33
  %233 = ptrtoint ptr %mmu_hop_table_size.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %mmu_hop_table_size.i, align 4
  tail call void @gen_pool_free_owner(ptr noundef %230, i32 noundef %conv.i, i32 noundef %234, ptr noundef null) #9
  %pprev.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %pgt_info.165, i32 0, i32 1
  %235 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %pprev.i.i.i.i, align 4
  %tobool.not.i.not.i.i.i = icmp eq ptr %236, null
  br i1 %tobool.not.i.not.i.i.i, label %do.end24._free_hop.exit_crit_edge, label %if.then.i.i.i

do.end24._free_hop.exit_crit_edge:                ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %_free_hop.exit

if.then.i.i.i:                                    ; preds = %do.end24
  %237 = ptrtoint ptr %pgt_info.165 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %pgt_info.165, align 4
  %239 = ptrtoint ptr %236 to i32
  call void @__asan_store4_noabort(i32 %239)
  store volatile ptr %238, ptr %236, align 4
  %tobool.not.i3.i.i.i = icmp eq ptr %238, null
  br i1 %tobool.not.i3.i.i.i, label %if.then.i.i.i.__hlist_del.exit.i.i.i_crit_edge, label %do.body13.i.i.i.i

if.then.i.i.i.__hlist_del.exit.i.i.i_crit_edge:   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__hlist_del.exit.i.i.i

do.body13.i.i.i.i:                                ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %pprev14.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %238, i32 0, i32 1
  %240 = ptrtoint ptr %pprev14.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %240)
  store volatile ptr %236, ptr %pprev14.i.i.i.i, align 4
  br label %__hlist_del.exit.i.i.i

__hlist_del.exit.i.i.i:                           ; preds = %do.body13.i.i.i.i, %if.then.i.i.i.__hlist_del.exit.i.i.i_crit_edge
  %241 = ptrtoint ptr %pgt_info.165 to i32
  call void @__asan_store4_noabort(i32 %241)
  store ptr null, ptr %pgt_info.165, align 4
  %242 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %242)
  store ptr null, ptr %pprev.i.i.i.i, align 4
  br label %_free_hop.exit

_free_hop.exit:                                   ; preds = %__hlist_del.exit.i.i.i, %do.end24._free_hop.exit_crit_edge
  %shadow_addr.i = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.165, i32 0, i32 2
  %243 = ptrtoint ptr %shadow_addr.i to i32
  call void @__asan_load8_noabort(i32 %243)
  %244 = load i64, ptr %shadow_addr.i, align 8
  %conv2.i = trunc i64 %244 to i32
  %245 = inttoptr i32 %conv2.i to ptr
  tail call void @kfree(ptr noundef %245) #9
  tail call void @kfree(ptr noundef nonnull %pgt_info.165) #9
  %tobool7.not = icmp eq ptr %218, null
  br i1 %tobool7.not, label %_free_hop.exit.for.inc35_crit_edge, label %_free_hop.exit.land.rhs8_crit_edge

_free_hop.exit.land.rhs8_crit_edge:               ; preds = %_free_hop.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs8

_free_hop.exit.for.inc35_crit_edge:               ; preds = %_free_hop.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc35

for.inc35:                                        ; preds = %_free_hop.exit.for.inc35_crit_edge, %for.body.for.inc35_crit_edge
  %inc = add nuw nsw i32 %i.066, 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %for.end36, label %for.inc35.for.body_crit_edge

for.inc35.for.body_crit_edge:                     ; preds = %for.inc35
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end36:                                        ; preds = %for.inc35
  call void @__sanitizer_cov_trace_pc() #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_hl_mmu_v1_map(ptr noundef %ctx, i64 noundef %virt_addr, i64 noundef %phys_addr, i32 noundef %page_size, i1 noundef zeroext %is_dram_addr) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hdev1 = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 3
  %0 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev1, align 4
  br i1 %is_dram_addr, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dmmu = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 4
  br label %if.end6

if.else:                                          ; preds = %entry
  %page_size2 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 6, i32 15
  %2 = ptrtoint ptr %page_size2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %page_size2, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %page_size)
  %cmp = icmp eq i32 %3, %page_size
  br i1 %cmp, label %if.then3, label %if.else5

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %pmmu_huge = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 6
  br label %if.end6

if.else5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %pmmu = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 5
  br label %if.end6

if.end6:                                          ; preds = %if.else5, %if.then3, %if.then
  %is_huge.0.off0 = phi i1 [ true, %if.then ], [ true, %if.then3 ], [ false, %if.else5 ]
  %mmu_prop.0 = phi ptr [ %dmmu, %if.then ], [ %pmmu_huge, %if.then3 ], [ %pmmu, %if.else5 ]
  %mmu_shadow_hop0.i = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 51, i32 0, i32 1
  %4 = ptrtoint ptr %mmu_shadow_hop0.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmu_shadow_hop0.i, align 4
  %6 = ptrtoint ptr %5 to i32
  %conv.i = zext i32 %6 to i64
  %asid.i = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 21
  %7 = ptrtoint ptr %asid.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %asid.i, align 8
  %mmu_hop_table_size.i = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 33
  %9 = ptrtoint ptr %mmu_hop_table_size.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mmu_hop_table_size.i, align 4
  %mul.i = mul i32 %10, %8
  %conv2.i = zext i32 %mul.i to i64
  %add.i = add nuw nsw i64 %conv2.i, %conv.i
  %hop0_mask.i = getelementptr inbounds %struct.hl_mmu_properties, ptr %mmu_prop.0, i32 0, i32 8
  %11 = ptrtoint ptr %hop0_mask.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %hop0_mask.i, align 8
  %hop0_shift.i = getelementptr inbounds %struct.hl_mmu_properties, ptr %mmu_prop.0, i32 0, i32 2
  %13 = ptrtoint ptr %hop0_shift.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %hop0_shift.i, align 8
  %mmu_pte_size.i.i = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 32
  %15 = ptrtoint ptr %mmu_pte_size.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mmu_pte_size.i.i, align 8
  %conv.i.i = zext i32 %16 to i64
  %and.i.i = and i64 %12, %virt_addr
  %shr.i.i = lshr i64 %and.i.i, %14
  %mul.i.i = mul i64 %shr.i.i, %conv.i.i
  %add.i.i = add i64 %add.i, %mul.i.i
  %conv = trunc i64 %add.i.i to i32
  %17 = inttoptr i32 %conv to ptr
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %17, align 8
  %and.i.i337 = and i64 %19, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i337)
  %tobool.not.i.i = icmp eq i64 %and.i.i337, 0
  %and1.i.i = and i64 %19, -4096
  br i1 %tobool.not.i.i, label %get_alloc_next_hop_addr.exit, label %if.end6.if.end12_crit_edge

if.end6.if.end12_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

get_alloc_next_hop_addr.exit:                     ; preds = %if.end6
  %call1.i = tail call fastcc i64 @alloc_hop(ptr noundef %ctx) #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %call1.i)
  %cmp2.i = icmp ne i64 %call1.i, -1
  %frombool.i = zext i1 %cmp2.i to i8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %call1.i)
  %cmp9 = icmp eq i64 %call1.i, -1
  br i1 %cmp9, label %get_alloc_next_hop_addr.exit.if.end202_crit_edge, label %get_alloc_next_hop_addr.exit.if.end12_crit_edge

get_alloc_next_hop_addr.exit.if.end12_crit_edge:  ; preds = %get_alloc_next_hop_addr.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

get_alloc_next_hop_addr.exit.if.end202_crit_edge: ; preds = %get_alloc_next_hop_addr.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end202

if.end12:                                         ; preds = %get_alloc_next_hop_addr.exit.if.end12_crit_edge, %if.end6.if.end12_crit_edge
  %hop_addr.0.i820 = phi i64 [ %call1.i, %get_alloc_next_hop_addr.exit.if.end12_crit_edge ], [ %and1.i.i, %if.end6.if.end12_crit_edge ]
  %hop1_new.0817 = phi i8 [ %frombool.i, %get_alloc_next_hop_addr.exit.if.end12_crit_edge ], [ 0, %if.end6.if.end12_crit_edge ]
  %hop1_mask.i = getelementptr inbounds %struct.hl_mmu_properties, ptr %mmu_prop.0, i32 0, i32 9
  %20 = ptrtoint ptr %hop1_mask.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %hop1_mask.i, align 8
  %hop1_shift.i = getelementptr inbounds %struct.hl_mmu_properties, ptr %mmu_prop.0, i32 0, i32 3
  %22 = ptrtoint ptr %hop1_shift.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %hop1_shift.i, align 8
  %24 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hdev1, align 4
  %mmu_pte_size.i.i339 = getelementptr inbounds %struct.hl_device, ptr %25, i32 0, i32 33, i32 32
  %26 = ptrtoint ptr %mmu_pte_size.i.i339 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mmu_pte_size.i.i339, align 8
  %conv.i.i340 = zext i32 %27 to i64
  %and.i.i341 = and i64 %21, %virt_addr
  %shr.i.i342 = lshr i64 %and.i.i341, %23
  %mul.i.i343 = mul i64 %shr.i.i342, %conv.i.i340
  %add.i.i344 = add i64 %mul.i.i343, %hop_addr.0.i820
  %conv14 = trunc i64 %add.i.i344 to i32
  %28 = inttoptr i32 %conv14 to ptr
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %28, align 8
  %and.i.i345 = and i64 %30, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i345)
  %tobool.not.i.i346 = icmp eq i64 %and.i.i345, 0
  %and1.i.i347 = and i64 %30, -4096
  br i1 %tobool.not.i.i346, label %get_alloc_next_hop_addr.exit353, label %if.end12.if.end19_crit_edge

if.end12.if.end19_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

get_alloc_next_hop_addr.exit353:                  ; preds = %if.end12
  %call1.i348 = tail call fastcc i64 @alloc_hop(ptr noundef %ctx) #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %call1.i348)
  %cmp2.i349 = icmp ne i64 %call1.i348, -1
  %frombool.i350 = zext i1 %cmp2.i349 to i8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %call1.i348)
  %cmp16 = icmp eq i64 %call1.i348, -1
  br i1 %cmp16, label %get_alloc_next_hop_addr.exit353.if.end199_crit_edge, label %get_alloc_next_hop_addr.exit353.if.end19_crit_edge

get_alloc_next_hop_addr.exit353.if.end19_crit_edge: ; preds = %get_alloc_next_hop_addr.exit353
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

get_alloc_next_hop_addr.exit353.if.end199_crit_edge: ; preds = %get_alloc_next_hop_addr.exit353
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end199

if.end19:                                         ; preds = %get_alloc_next_hop_addr.exit353.if.end19_crit_edge, %if.end12.if.end19_crit_edge
  %hop_addr.0.i352827 = phi i64 [ %call1.i348, %get_alloc_next_hop_addr.exit353.if.end19_crit_edge ], [ %and1.i.i347, %if.end12.if.end19_crit_edge ]
  %hop2_new.0826 = phi i8 [ %frombool.i350, %get_alloc_next_hop_addr.exit353.if.end19_crit_edge ], [ 0, %if.end12.if.end19_crit_edge ]
  %hop2_mask.i = getelementptr inbounds %struct.hl_mmu_properties, ptr %mmu_prop.0, i32 0, i32 10
  %31 = ptrtoint ptr %hop2_mask.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %hop2_mask.i, align 8
  %hop2_shift.i = getelementptr inbounds %struct.hl_mmu_properties, ptr %mmu_prop.0, i32 0, i32 4
  %33 = ptrtoint ptr %hop2_shift.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %hop2_shift.i, align 8
  %35 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hdev1, align 4
  %mmu_pte_size.i.i355 = getelementptr inbounds %struct.hl_device, ptr %36, i32 0, i32 33, i32 32
  %37 = ptrtoint ptr %mmu_pte_size.i.i355 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %mmu_pte_size.i.i355, align 8
  %conv.i.i356 = zext i32 %38 to i64
  %and.i.i357 = and i64 %32, %virt_addr
  %shr.i.i358 = lshr i64 %and.i.i357, %34
  %mul.i.i359 = mul i64 %shr.i.i358, %conv.i.i356
  %add.i.i360 = add i64 %mul.i.i359, %hop_addr.0.i352827
  %conv21 = trunc i64 %add.i.i360 to i32
  %39 = inttoptr i32 %conv21 to ptr
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %39, align 8
  %and.i.i361 = and i64 %41, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i361)
  %tobool.not.i.i362 = icmp eq i64 %and.i.i361, 0
  %and1.i.i363 = and i64 %41, -4096
  br i1 %tobool.not.i.i362, label %get_alloc_next_hop_addr.exit369, label %if.end19.if.end26_crit_edge

if.end19.if.end26_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

get_alloc_next_hop_addr.exit369:                  ; preds = %if.end19
  %call1.i364 = tail call fastcc i64 @alloc_hop(ptr noundef %ctx) #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %call1.i364)
  %cmp2.i365 = icmp ne i64 %call1.i364, -1
  %frombool.i366 = zext i1 %cmp2.i365 to i8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %call1.i364)
  %cmp23 = icmp eq i64 %call1.i364, -1
  br i1 %cmp23, label %get_alloc_next_hop_addr.exit369.if.end196_crit_edge, label %get_alloc_next_hop_addr.exit369.if.end26_crit_edge

get_alloc_next_hop_addr.exit369.if.end26_crit_edge: ; preds = %get_alloc_next_hop_addr.exit369
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

get_alloc_next_hop_addr.exit369.if.end196_crit_edge: ; preds = %get_alloc_next_hop_addr.exit369
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end196

if.end26:                                         ; preds = %get_alloc_next_hop_addr.exit369.if.end26_crit_edge, %if.end19.if.end26_crit_edge
  %hop_addr.0.i368834 = phi i64 [ %call1.i364, %get_alloc_next_hop_addr.exit369.if.end26_crit_edge ], [ %and1.i.i363, %if.end19.if.end26_crit_edge ]
  %hop3_new.0833 = phi i8 [ %frombool.i366, %get_alloc_next_hop_addr.exit369.if.end26_crit_edge ], [ 0, %if.end19.if.end26_crit_edge ]
  %hop3_mask.i = getelementptr inbounds %struct.hl_mmu_properties, ptr %mmu_prop.0, i32 0, i32 11
  %42 = ptrtoint ptr %hop3_mask.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %hop3_mask.i, align 8
  %hop3_shift.i = getelementptr inbounds %struct.hl_mmu_properties, ptr %mmu_prop.0, i32 0, i32 5
  %44 = ptrtoint ptr %hop3_shift.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %hop3_shift.i, align 8
  %46 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hdev1, align 4
  %mmu_pte_size.i.i371 = getelementptr inbounds %struct.hl_device, ptr %47, i32 0, i32 33, i32 32
  %48 = ptrtoint ptr %mmu_pte_size.i.i371 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %mmu_pte_size.i.i371, align 8
  %conv.i.i372 = zext i32 %49 to i64
  %and.i.i373 = and i64 %43, %virt_addr
  %shr.i.i374 = lshr i64 %and.i.i373, %45
  %mul.i.i375 = mul i64 %shr.i.i374, %conv.i.i372
  %add.i.i376 = add i64 %mul.i.i375, %hop_addr.0.i368834
  %conv28 = trunc i64 %add.i.i376 to i32
  %50 = inttoptr i32 %conv28 to ptr
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %50, align 8
  br i1 %is_huge.0.off0, label %if.end26.if.end38_crit_edge, label %if.then30

if.end26.if.end38_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.then30:                                        ; preds = %if.end26
  %and.i.i377 = and i64 %52, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i377)
  %tobool.not.i.i378 = icmp eq i64 %and.i.i377, 0
  %and1.i.i379 = and i64 %52, -4096
  br i1 %tobool.not.i.i378, label %get_alloc_next_hop_addr.exit385, label %if.then30.if.end35_crit_edge

if.then30.if.end35_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

get_alloc_next_hop_addr.exit385:                  ; preds = %if.then30
  %call1.i380 = tail call fastcc i64 @alloc_hop(ptr noundef %ctx) #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %call1.i380)
  %cmp2.i381 = icmp ne i64 %call1.i380, -1
  %frombool.i382 = zext i1 %cmp2.i381 to i8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %call1.i380)
  %cmp32 = icmp eq i64 %call1.i380, -1
  br i1 %cmp32, label %get_alloc_next_hop_addr.exit385.err_crit_edge, label %get_alloc_next_hop_addr.exit385.if.end35_crit_edge

get_alloc_next_hop_addr.exit385.if.end35_crit_edge: ; preds = %get_alloc_next_hop_addr.exit385
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

get_alloc_next_hop_addr.exit385.err_crit_edge:    ; preds = %get_alloc_next_hop_addr.exit385
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end35:                                         ; preds = %get_alloc_next_hop_addr.exit385.if.end35_crit_edge, %if.then30.if.end35_crit_edge
  %hop_addr.0.i384841 = phi i64 [ %call1.i380, %get_alloc_next_hop_addr.exit385.if.end35_crit_edge ], [ %and1.i.i379, %if.then30.if.end35_crit_edge ]
  %hop4_new.0840 = phi i8 [ %frombool.i382, %get_alloc_next_hop_addr.exit385.if.end35_crit_edge ], [ 0, %if.then30.if.end35_crit_edge ]
  %hop4_mask.i = getelementptr inbounds %struct.hl_mmu_properties, ptr %mmu_prop.0, i32 0, i32 12
  %53 = ptrtoint ptr %hop4_mask.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %hop4_mask.i, align 8
  %hop4_shift.i = getelementptr inbounds %struct.hl_mmu_properties, ptr %mmu_prop.0, i32 0, i32 6
  %55 = ptrtoint ptr %hop4_shift.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %hop4_shift.i, align 8
  %57 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %hdev1, align 4
  %mmu_pte_size.i.i387 = getelementptr inbounds %struct.hl_device, ptr %58, i32 0, i32 33, i32 32
  %59 = ptrtoint ptr %mmu_pte_size.i.i387 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %mmu_pte_size.i.i387, align 8
  %conv.i.i388 = zext i32 %60 to i64
  %and.i.i389 = and i64 %54, %virt_addr
  %shr.i.i390 = lshr i64 %and.i.i389, %56
  %mul.i.i391 = mul i64 %shr.i.i390, %conv.i.i388
  %add.i.i392 = add i64 %mul.i.i391, %hop_addr.0.i384841
  %conv37 = trunc i64 %add.i.i392 to i32
  %61 = inttoptr i32 %conv37 to ptr
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %61, align 8
  br label %if.end38

if.end38:                                         ; preds = %if.end35, %if.end26.if.end38_crit_edge
  %hop4_new.1 = phi i8 [ 0, %if.end26.if.end38_crit_edge ], [ %hop4_new.0840, %if.end35 ]
  %hop4_addr.0 = phi i64 [ 0, %if.end26.if.end38_crit_edge ], [ %hop_addr.0.i384841, %if.end35 ]
  %hop4_pte_addr.0 = phi i64 [ 0, %if.end26.if.end38_crit_edge ], [ %add.i.i392, %if.end35 ]
  %curr_pte.0 = phi i64 [ %52, %if.end26.if.end38_crit_edge ], [ %63, %if.end35 ]
  %dram_default_page_mapping = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 83
  %64 = ptrtoint ptr %dram_default_page_mapping to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %dram_default_page_mapping, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool40.not = icmp ne i8 %65, 0
  %66 = and i1 %tobool40.not, %is_dram_addr
  br i1 %66, label %if.then43, label %if.else65

if.then43:                                        ; preds = %if.end38
  %mmu_dram_default_page_addr = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 24
  %67 = ptrtoint ptr %mmu_dram_default_page_addr to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %mmu_dram_default_page_addr, align 8
  %and = and i64 %68, -4096
  %last_mask = getelementptr inbounds %struct.hl_mmu_properties, ptr %mmu_prop.0, i32 0, i32 14
  %69 = ptrtoint ptr %last_mask to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %last_mask, align 8
  %or = or i64 %70, %and
  %or44 = or i64 %or, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %curr_pte.0, i64 %or44)
  %cmp45.not = icmp eq i64 %curr_pte.0, %or44
  br i1 %cmp45.not, label %if.end48, label %do.end

do.end:                                           ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %71 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %72, ptr noundef nonnull @.str.24, i64 noundef %virt_addr) #12
  br label %err

if.end48:                                         ; preds = %if.then43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %hop1_new.0817)
  %tobool49.not = icmp eq i8 %hop1_new.0817, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %hop2_new.0826)
  %tobool51.not = icmp eq i8 %hop2_new.0826, 0
  %or.cond = select i1 %tobool49.not, i1 %tobool51.not, i1 false
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %hop3_new.0833)
  %tobool54.not = icmp eq i8 %hop3_new.0833, 0
  %or.cond889 = select i1 %or.cond, i1 %tobool54.not, i1 false
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %hop4_new.1)
  %tobool57.not = icmp eq i8 %hop4_new.1, 0
  %or.cond890 = select i1 %or.cond889, i1 %tobool57.not, i1 false
  br i1 %or.cond890, label %if.end48.if.end161_crit_edge, label %do.end62

if.end48.if.end161_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end161

do.end62:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  %dev63 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %73 = ptrtoint ptr %dev63 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev63, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.27) #12
  br label %err

if.else65:                                        ; preds = %if.end38
  %and66 = and i64 %curr_pte.0, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and66)
  %tobool67.not = icmp eq i64 %and66, 0
  br i1 %tobool67.not, label %if.else65.if.end161_crit_edge, label %do.end71

if.else65.if.end161_crit_edge:                    ; preds = %if.else65
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end161

do.end71:                                         ; preds = %if.else65
  %dev72 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %75 = ptrtoint ptr %dev72 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev72, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %76, ptr noundef nonnull @.str.30, i64 noundef %virt_addr) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_hl_mmu_v1_map.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_hl_mmu_v1_map, %if.then79)) #9
          to label %do.body85 [label %if.then79], !srcloc !101

if.then79:                                        ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #11
  %77 = ptrtoint ptr %dev72 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev72, align 4
  %79 = ptrtoint ptr %17 to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %17, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @_hl_mmu_v1_map.__UNIQUE_ID_ddebug297, ptr noundef %78, ptr noundef nonnull @.str.33, i64 noundef %80, i64 noundef %add.i.i) #9
  br label %do.body85

do.body85:                                        ; preds = %if.then79, %do.end71
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_hl_mmu_v1_map.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_hl_mmu_v1_map, %if.then97)) #9
          to label %do.body103 [label %if.then97], !srcloc !101

if.then97:                                        ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #11
  %81 = ptrtoint ptr %dev72 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev72, align 4
  %83 = ptrtoint ptr %28 to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %28, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @_hl_mmu_v1_map.__UNIQUE_ID_ddebug298, ptr noundef %82, ptr noundef nonnull @.str.34, i64 noundef %84, i64 noundef %add.i.i344) #9
  br label %do.body103

do.body103:                                       ; preds = %if.then97, %do.body85
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_hl_mmu_v1_map.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_hl_mmu_v1_map, %if.then115)) #9
          to label %do.body121 [label %if.then115], !srcloc !101

if.then115:                                       ; preds = %do.body103
  call void @__sanitizer_cov_trace_pc() #11
  %85 = ptrtoint ptr %dev72 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev72, align 4
  %87 = ptrtoint ptr %39 to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %39, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @_hl_mmu_v1_map.__UNIQUE_ID_ddebug299, ptr noundef %86, ptr noundef nonnull @.str.35, i64 noundef %88, i64 noundef %add.i.i360) #9
  br label %do.body121

do.body121:                                       ; preds = %if.then115, %do.body103
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_hl_mmu_v1_map.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_hl_mmu_v1_map, %if.then133)) #9
          to label %do.end138 [label %if.then133], !srcloc !101

if.then133:                                       ; preds = %do.body121
  call void @__sanitizer_cov_trace_pc() #11
  %89 = ptrtoint ptr %dev72 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dev72, align 4
  %91 = ptrtoint ptr %50 to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %50, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @_hl_mmu_v1_map.__UNIQUE_ID_ddebug300, ptr noundef %90, ptr noundef nonnull @.str.36, i64 noundef %92, i64 noundef %add.i.i376) #9
  br label %do.end138

do.end138:                                        ; preds = %if.then133, %do.body121
  br i1 %is_huge.0.off0, label %do.end138.err_crit_edge, label %do.body141

do.end138.err_crit_edge:                          ; preds = %do.end138
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

do.body141:                                       ; preds = %do.end138
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_hl_mmu_v1_map.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_hl_mmu_v1_map, %if.then153)) #9
          to label %err [label %if.then153], !srcloc !101

if.then153:                                       ; preds = %do.body141
  call void @__sanitizer_cov_trace_pc() #11
  %93 = ptrtoint ptr %dev72 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev72, align 4
  %conv155 = trunc i64 %hop4_pte_addr.0 to i32
  %95 = inttoptr i32 %conv155 to ptr
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %95, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @_hl_mmu_v1_map.__UNIQUE_ID_ddebug301, ptr noundef %94, ptr noundef nonnull @.str.37, i64 noundef %97, i64 noundef %hop4_pte_addr.0) #9
  br label %err

if.end161:                                        ; preds = %if.else65.if.end161_crit_edge, %if.end48.if.end161_crit_edge
  %hop1_new.0819 = phi i8 [ %hop1_new.0817, %if.else65.if.end161_crit_edge ], [ 0, %if.end48.if.end161_crit_edge ]
  %and162 = and i64 %phys_addr, -4096
  %last_mask163 = getelementptr inbounds %struct.hl_mmu_properties, ptr %mmu_prop.0, i32 0, i32 14
  %98 = ptrtoint ptr %last_mask163 to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %last_mask163, align 8
  %or164 = or i64 %and162, %99
  %or165 = or i64 %or164, 1
  %100 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %hdev1, align 4
  %asic_funcs.i = getelementptr inbounds %struct.hl_device, ptr %101, i32 0, i32 34
  %102 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %asic_funcs.i, align 8
  %write_pte.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %103, i32 0, i32 41
  %104 = ptrtoint ptr %write_pte.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %write_pte.i, align 4
  %mmu_hop_table_size.i.i = getelementptr inbounds %struct.hl_device, ptr %101, i32 0, i32 33, i32 33
  %106 = ptrtoint ptr %mmu_hop_table_size.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %mmu_hop_table_size.i.i, align 4
  %sub.i.i = add i32 %107, -1
  %conv.i.i394 = zext i32 %sub.i.i to i64
  %neg.i.i = xor i64 %conv.i.i394, -1
  br i1 %is_huge.0.off0, label %if.then167, label %if.else168

if.then167:                                       ; preds = %if.end161
  %and.i.i395 = and i64 %add.i.i376, %neg.i.i
  %mmu_shadow_hop0.i.i.i = getelementptr inbounds %struct.hl_device, ptr %101, i32 0, i32 51, i32 0, i32 1
  %108 = ptrtoint ptr %mmu_shadow_hop0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %mmu_shadow_hop0.i.i.i, align 4
  %110 = ptrtoint ptr %109 to i32
  %conv.i.i.i = zext i32 %110 to i64
  %111 = ptrtoint ptr %asid.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %asid.i, align 8
  %mul.i.i.i = mul i32 %112, %107
  %conv2.i.i.i = zext i32 %mul.i.i.i to i64
  %add.i.i.i = add nuw nsw i64 %conv2.i.i.i, %conv.i.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i395, i64 %add.i.i.i)
  %cmp.not.i.i = icmp eq i64 %and.i.i395, %add.i.i.i
  br i1 %cmp.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then167
  %conv.i11.i.i = trunc i64 %and.i.i395 to i32
  %mul.i.i.i.i.i = mul i32 %conv.i11.i.i, 1640531527
  %shr.i.i.i.i = lshr i32 %mul.i.i.i.i.i, 25
  %arrayidx.i.i.i = getelementptr %struct.hl_ctx, ptr %ctx, i32 0, i32 1, i32 %shr.i.i.i.i
  br label %for.cond.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i.for.cond.i.i.i_crit_edge, %if.then.i.i
  %pgt_info.0.in.i.i.i = phi ptr [ %arrayidx.i.i.i, %if.then.i.i ], [ %pgt_info.0.i.i.i, %for.body.i.i.i.for.cond.i.i.i_crit_edge ]
  %113 = ptrtoint ptr %pgt_info.0.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %pgt_info.0.i.i.i = load ptr, ptr %pgt_info.0.in.i.i.i, align 4
  %tobool2.not.i.i.i = icmp eq ptr %pgt_info.0.i.i.i, null
  br i1 %tobool2.not.i.i.i, label %for.cond.i.i.i.get_pgt_info.exit.i.i_crit_edge, label %for.body.i.i.i

for.cond.i.i.i.get_pgt_info.exit.i.i_crit_edge:   ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pgt_info.exit.i.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i
  %shadow_addr.i.i.i = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i.i, i32 0, i32 2
  %114 = ptrtoint ptr %shadow_addr.i.i.i to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %shadow_addr.i.i.i, align 8
  %cmp.i.i.i = icmp eq i64 %115, %and.i.i395
  br i1 %cmp.i.i.i, label %for.body.i.i.i.get_pgt_info.exit.i.i_crit_edge, label %for.body.i.i.i.for.cond.i.i.i_crit_edge

for.body.i.i.i.for.cond.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i.i

for.body.i.i.i.get_pgt_info.exit.i.i_crit_edge:   ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pgt_info.exit.i.i

get_pgt_info.exit.i.i:                            ; preds = %for.body.i.i.i.get_pgt_info.exit.i.i_crit_edge, %for.cond.i.i.i.get_pgt_info.exit.i.i_crit_edge
  %phys_addr.i.i = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i.i, i32 0, i32 1
  %116 = ptrtoint ptr %phys_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %116)
  %117 = load i64, ptr %phys_addr.i.i, align 8
  br label %write_final_pte.exit

if.else.i.i:                                      ; preds = %if.then167
  call void @__sanitizer_cov_trace_pc() #11
  %mmu_pgt_addr.i.i.i = getelementptr inbounds %struct.hl_device, ptr %101, i32 0, i32 33, i32 23
  %118 = ptrtoint ptr %mmu_pgt_addr.i.i.i to i32
  call void @__asan_load8_noabort(i32 %118)
  %119 = load i64, ptr %mmu_pgt_addr.i.i.i, align 8
  %add.i17.i.i = add i64 %119, %conv2.i.i.i
  br label %write_final_pte.exit

write_final_pte.exit:                             ; preds = %if.else.i.i, %get_pgt_info.exit.i.i
  %phys_hop_addr.0.i.i = phi i64 [ %117, %get_pgt_info.exit.i.i ], [ %add.i17.i.i, %if.else.i.i ]
  %and1.i.i396 = and i64 %add.i.i376, %conv.i.i394
  %add.i.i397 = add i64 %phys_hop_addr.0.i.i, %and1.i.i396
  tail call void %105(ptr noundef %101, i64 noundef %add.i.i397, i64 noundef %or165) #9
  br label %if.end169

if.else168:                                       ; preds = %if.end161
  %and.i.i406 = and i64 %hop4_pte_addr.0, %neg.i.i
  %mmu_shadow_hop0.i.i.i407 = getelementptr inbounds %struct.hl_device, ptr %101, i32 0, i32 51, i32 0, i32 1
  %120 = ptrtoint ptr %mmu_shadow_hop0.i.i.i407 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %mmu_shadow_hop0.i.i.i407, align 4
  %122 = ptrtoint ptr %121 to i32
  %conv.i.i.i408 = zext i32 %122 to i64
  %123 = ptrtoint ptr %asid.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %asid.i, align 8
  %mul.i.i.i410 = mul i32 %124, %107
  %conv2.i.i.i411 = zext i32 %mul.i.i.i410 to i64
  %add.i.i.i412 = add nuw nsw i64 %conv2.i.i.i411, %conv.i.i.i408
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i406, i64 %add.i.i.i412)
  %cmp.not.i.i413 = icmp eq i64 %and.i.i406, %add.i.i.i412
  br i1 %cmp.not.i.i413, label %if.else.i.i430, label %if.then.i.i418

if.then.i.i418:                                   ; preds = %if.else168
  %conv.i11.i.i414 = trunc i64 %and.i.i406 to i32
  %mul.i.i.i.i.i415 = mul i32 %conv.i11.i.i414, 1640531527
  %shr.i.i.i.i416 = lshr i32 %mul.i.i.i.i.i415, 25
  %arrayidx.i.i.i417 = getelementptr %struct.hl_ctx, ptr %ctx, i32 0, i32 1, i32 %shr.i.i.i.i416
  br label %for.cond.i.i.i422

for.cond.i.i.i422:                                ; preds = %for.body.i.i.i425.for.cond.i.i.i422_crit_edge, %if.then.i.i418
  %pgt_info.0.in.i.i.i419 = phi ptr [ %arrayidx.i.i.i417, %if.then.i.i418 ], [ %pgt_info.0.i.i.i420, %for.body.i.i.i425.for.cond.i.i.i422_crit_edge ]
  %125 = ptrtoint ptr %pgt_info.0.in.i.i.i419 to i32
  call void @__asan_load4_noabort(i32 %125)
  %pgt_info.0.i.i.i420 = load ptr, ptr %pgt_info.0.in.i.i.i419, align 4
  %tobool2.not.i.i.i421 = icmp eq ptr %pgt_info.0.i.i.i420, null
  br i1 %tobool2.not.i.i.i421, label %for.cond.i.i.i422.get_pgt_info.exit.i.i427_crit_edge, label %for.body.i.i.i425

for.cond.i.i.i422.get_pgt_info.exit.i.i427_crit_edge: ; preds = %for.cond.i.i.i422
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pgt_info.exit.i.i427

for.body.i.i.i425:                                ; preds = %for.cond.i.i.i422
  %shadow_addr.i.i.i423 = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i.i420, i32 0, i32 2
  %126 = ptrtoint ptr %shadow_addr.i.i.i423 to i32
  call void @__asan_load8_noabort(i32 %126)
  %127 = load i64, ptr %shadow_addr.i.i.i423, align 8
  %cmp.i.i.i424 = icmp eq i64 %127, %and.i.i406
  br i1 %cmp.i.i.i424, label %for.body.i.i.i425.get_pgt_info.exit.i.i427_crit_edge, label %for.body.i.i.i425.for.cond.i.i.i422_crit_edge

for.body.i.i.i425.for.cond.i.i.i422_crit_edge:    ; preds = %for.body.i.i.i425
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i.i422

for.body.i.i.i425.get_pgt_info.exit.i.i427_crit_edge: ; preds = %for.body.i.i.i425
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pgt_info.exit.i.i427

get_pgt_info.exit.i.i427:                         ; preds = %for.body.i.i.i425.get_pgt_info.exit.i.i427_crit_edge, %for.cond.i.i.i422.get_pgt_info.exit.i.i427_crit_edge
  %phys_addr.i.i426 = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i.i420, i32 0, i32 1
  %128 = ptrtoint ptr %phys_addr.i.i426 to i32
  call void @__asan_load8_noabort(i32 %128)
  %129 = load i64, ptr %phys_addr.i.i426, align 8
  br label %write_final_pte.exit435

if.else.i.i430:                                   ; preds = %if.else168
  call void @__sanitizer_cov_trace_pc() #11
  %mmu_pgt_addr.i.i.i428 = getelementptr inbounds %struct.hl_device, ptr %101, i32 0, i32 33, i32 23
  %130 = ptrtoint ptr %mmu_pgt_addr.i.i.i428 to i32
  call void @__asan_load8_noabort(i32 %130)
  %131 = load i64, ptr %mmu_pgt_addr.i.i.i428, align 8
  %add.i17.i.i429 = add i64 %131, %conv2.i.i.i411
  br label %write_final_pte.exit435

write_final_pte.exit435:                          ; preds = %if.else.i.i430, %get_pgt_info.exit.i.i427
  %phys_hop_addr.0.i.i431 = phi i64 [ %129, %get_pgt_info.exit.i.i427 ], [ %add.i17.i.i429, %if.else.i.i430 ]
  %and1.i.i432 = and i64 %hop4_pte_addr.0, %conv.i.i394
  %add.i.i433 = add i64 %phys_hop_addr.0.i.i431, %and1.i.i432
  tail call void %105(ptr noundef %101, i64 noundef %add.i.i433, i64 noundef %or165) #9
  %conv.i434 = trunc i64 %hop4_pte_addr.0 to i32
  %132 = inttoptr i32 %conv.i434 to ptr
  br label %if.end169

if.end169:                                        ; preds = %write_final_pte.exit435, %write_final_pte.exit
  %.sink = phi ptr [ %132, %write_final_pte.exit435 ], [ %50, %write_final_pte.exit ]
  %133 = ptrtoint ptr %.sink to i32
  call void @__asan_store8_noabort(i32 %133)
  store i64 %or165, ptr %.sink, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %hop1_new.0819)
  %tobool170.not = icmp eq i8 %hop1_new.0819, 0
  br i1 %tobool170.not, label %if.end169.if.end174_crit_edge, label %if.then171

if.end169.if.end174_crit_edge:                    ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end174

if.then171:                                       ; preds = %if.end169
  %and172 = and i64 %hop_addr.0.i820, -4096
  %or173 = or i64 %and172, 1
  %134 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %hdev1, align 4
  %mmu_hop_table_size.i.i437 = getelementptr inbounds %struct.hl_device, ptr %135, i32 0, i32 33, i32 33
  %136 = ptrtoint ptr %mmu_hop_table_size.i.i437 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %mmu_hop_table_size.i.i437, align 4
  %sub.i.i438 = add i32 %137, -1
  %conv.i.i439 = zext i32 %sub.i.i438 to i64
  %neg.i.i440 = xor i64 %conv.i.i439, -1
  %and.i.i441 = and i64 %and172, %neg.i.i440
  %mmu_shadow_hop0.i.i.i442 = getelementptr inbounds %struct.hl_device, ptr %135, i32 0, i32 51, i32 0, i32 1
  %138 = ptrtoint ptr %mmu_shadow_hop0.i.i.i442 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %mmu_shadow_hop0.i.i.i442, align 4
  %140 = ptrtoint ptr %139 to i32
  %conv.i.i.i443 = zext i32 %140 to i64
  %141 = ptrtoint ptr %asid.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %asid.i, align 8
  %mul.i.i.i445 = mul i32 %142, %137
  %conv2.i.i.i446 = zext i32 %mul.i.i.i445 to i64
  %add.i.i.i447 = add nuw nsw i64 %conv2.i.i.i446, %conv.i.i.i443
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i441, i64 %add.i.i.i447)
  %cmp.not.i.i448 = icmp eq i64 %and.i.i441, %add.i.i.i447
  br i1 %cmp.not.i.i448, label %if.else.i.i465, label %if.then.i.i453

if.then.i.i453:                                   ; preds = %if.then171
  %conv.i11.i.i449 = trunc i64 %and.i.i441 to i32
  %mul.i.i.i.i.i450 = mul i32 %conv.i11.i.i449, 1640531527
  %shr.i.i.i.i451 = lshr i32 %mul.i.i.i.i.i450, 25
  %arrayidx.i.i.i452 = getelementptr %struct.hl_ctx, ptr %ctx, i32 0, i32 1, i32 %shr.i.i.i.i451
  br label %for.cond.i.i.i457

for.cond.i.i.i457:                                ; preds = %for.body.i.i.i460.for.cond.i.i.i457_crit_edge, %if.then.i.i453
  %pgt_info.0.in.i.i.i454 = phi ptr [ %arrayidx.i.i.i452, %if.then.i.i453 ], [ %pgt_info.0.i.i.i455, %for.body.i.i.i460.for.cond.i.i.i457_crit_edge ]
  %143 = ptrtoint ptr %pgt_info.0.in.i.i.i454 to i32
  call void @__asan_load4_noabort(i32 %143)
  %pgt_info.0.i.i.i455 = load ptr, ptr %pgt_info.0.in.i.i.i454, align 4
  %tobool2.not.i.i.i456 = icmp eq ptr %pgt_info.0.i.i.i455, null
  br i1 %tobool2.not.i.i.i456, label %for.cond.i.i.i457.get_pgt_info.exit.i.i462_crit_edge, label %for.body.i.i.i460

for.cond.i.i.i457.get_pgt_info.exit.i.i462_crit_edge: ; preds = %for.cond.i.i.i457
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pgt_info.exit.i.i462

for.body.i.i.i460:                                ; preds = %for.cond.i.i.i457
  %shadow_addr.i.i.i458 = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i.i455, i32 0, i32 2
  %144 = ptrtoint ptr %shadow_addr.i.i.i458 to i32
  call void @__asan_load8_noabort(i32 %144)
  %145 = load i64, ptr %shadow_addr.i.i.i458, align 8
  %cmp.i.i.i459 = icmp eq i64 %145, %and.i.i441
  br i1 %cmp.i.i.i459, label %for.body.i.i.i460.get_pgt_info.exit.i.i462_crit_edge, label %for.body.i.i.i460.for.cond.i.i.i457_crit_edge

for.body.i.i.i460.for.cond.i.i.i457_crit_edge:    ; preds = %for.body.i.i.i460
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i.i457

for.body.i.i.i460.get_pgt_info.exit.i.i462_crit_edge: ; preds = %for.body.i.i.i460
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pgt_info.exit.i.i462

get_pgt_info.exit.i.i462:                         ; preds = %for.body.i.i.i460.get_pgt_info.exit.i.i462_crit_edge, %for.cond.i.i.i457.get_pgt_info.exit.i.i462_crit_edge
  %phys_addr.i.i461 = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i.i455, i32 0, i32 1
  %146 = ptrtoint ptr %phys_addr.i.i461 to i32
  call void @__asan_load8_noabort(i32 %146)
  %147 = load i64, ptr %phys_addr.i.i461, align 8
  br label %get_phys_addr.exit.i

if.else.i.i465:                                   ; preds = %if.then171
  call void @__sanitizer_cov_trace_pc() #11
  %mmu_pgt_addr.i.i.i463 = getelementptr inbounds %struct.hl_device, ptr %135, i32 0, i32 33, i32 23
  %148 = ptrtoint ptr %mmu_pgt_addr.i.i.i463 to i32
  call void @__asan_load8_noabort(i32 %148)
  %149 = load i64, ptr %mmu_pgt_addr.i.i.i463, align 8
  %add.i17.i.i464 = add i64 %149, %conv2.i.i.i446
  br label %get_phys_addr.exit.i

get_phys_addr.exit.i:                             ; preds = %if.else.i.i465, %get_pgt_info.exit.i.i462
  %phys_hop_addr.0.i.i466 = phi i64 [ %147, %get_pgt_info.exit.i.i462 ], [ %add.i17.i.i464, %if.else.i.i465 ]
  %asic_funcs.i467 = getelementptr inbounds %struct.hl_device, ptr %135, i32 0, i32 34
  %150 = ptrtoint ptr %asic_funcs.i467 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %asic_funcs.i467, align 8
  %write_pte.i468 = getelementptr inbounds %struct.hl_asic_funcs, ptr %151, i32 0, i32 41
  %152 = ptrtoint ptr %write_pte.i468 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %write_pte.i468, align 4
  %and.i15.i = and i64 %add.i.i, %neg.i.i440
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i15.i, i64 %add.i.i.i447)
  %cmp.not.i22.i = icmp eq i64 %and.i15.i, %add.i.i.i447
  br i1 %cmp.not.i22.i, label %if.else.i39.i, label %if.then.i27.i

if.then.i27.i:                                    ; preds = %get_phys_addr.exit.i
  %conv.i11.i23.i = trunc i64 %and.i15.i to i32
  %mul.i.i.i.i24.i = mul i32 %conv.i11.i23.i, 1640531527
  %shr.i.i.i25.i = lshr i32 %mul.i.i.i.i24.i, 25
  %arrayidx.i.i26.i = getelementptr %struct.hl_ctx, ptr %ctx, i32 0, i32 1, i32 %shr.i.i.i25.i
  br label %for.cond.i.i31.i

for.cond.i.i31.i:                                 ; preds = %for.body.i.i34.i.for.cond.i.i31.i_crit_edge, %if.then.i27.i
  %pgt_info.0.in.i.i28.i = phi ptr [ %arrayidx.i.i26.i, %if.then.i27.i ], [ %pgt_info.0.i.i29.i, %for.body.i.i34.i.for.cond.i.i31.i_crit_edge ]
  %154 = ptrtoint ptr %pgt_info.0.in.i.i28.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %pgt_info.0.i.i29.i = load ptr, ptr %pgt_info.0.in.i.i28.i, align 4
  %tobool2.not.i.i30.i = icmp eq ptr %pgt_info.0.i.i29.i, null
  br i1 %tobool2.not.i.i30.i, label %for.cond.i.i31.i.get_pgt_info.exit.i36.i_crit_edge, label %for.body.i.i34.i

for.cond.i.i31.i.get_pgt_info.exit.i36.i_crit_edge: ; preds = %for.cond.i.i31.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pgt_info.exit.i36.i

for.body.i.i34.i:                                 ; preds = %for.cond.i.i31.i
  %shadow_addr.i.i32.i = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i29.i, i32 0, i32 2
  %155 = ptrtoint ptr %shadow_addr.i.i32.i to i32
  call void @__asan_load8_noabort(i32 %155)
  %156 = load i64, ptr %shadow_addr.i.i32.i, align 8
  %cmp.i.i33.i = icmp eq i64 %156, %and.i15.i
  br i1 %cmp.i.i33.i, label %for.body.i.i34.i.get_pgt_info.exit.i36.i_crit_edge, label %for.body.i.i34.i.for.cond.i.i31.i_crit_edge

for.body.i.i34.i.for.cond.i.i31.i_crit_edge:      ; preds = %for.body.i.i34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i31.i

for.body.i.i34.i.get_pgt_info.exit.i36.i_crit_edge: ; preds = %for.body.i.i34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pgt_info.exit.i36.i

get_pgt_info.exit.i36.i:                          ; preds = %for.body.i.i34.i.get_pgt_info.exit.i36.i_crit_edge, %for.cond.i.i31.i.get_pgt_info.exit.i36.i_crit_edge
  %phys_addr.i35.i = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i29.i, i32 0, i32 1
  %157 = ptrtoint ptr %phys_addr.i35.i to i32
  call void @__asan_load8_noabort(i32 %157)
  %158 = load i64, ptr %phys_addr.i35.i, align 8
  br label %write_pte.exit

if.else.i39.i:                                    ; preds = %get_phys_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %mmu_pgt_addr.i.i37.i = getelementptr inbounds %struct.hl_device, ptr %135, i32 0, i32 33, i32 23
  %159 = ptrtoint ptr %mmu_pgt_addr.i.i37.i to i32
  call void @__asan_load8_noabort(i32 %159)
  %160 = load i64, ptr %mmu_pgt_addr.i.i37.i, align 8
  %add.i17.i38.i = add i64 %160, %conv2.i.i.i446
  br label %write_pte.exit

write_pte.exit:                                   ; preds = %if.else.i39.i, %get_pgt_info.exit.i36.i
  %phys_hop_addr.0.i40.i = phi i64 [ %158, %get_pgt_info.exit.i36.i ], [ %add.i17.i38.i, %if.else.i39.i ]
  %and1.i.i469 = and i64 %and172, %conv.i.i439
  %add.i.i470 = add i64 %phys_hop_addr.0.i.i466, %and1.i.i469
  %or.i = or i64 %add.i.i470, 1
  %and1.i41.i = and i64 %add.i.i, %conv.i.i439
  %add.i42.i = add i64 %phys_hop_addr.0.i40.i, %and1.i41.i
  tail call void %153(ptr noundef %135, i64 noundef %add.i42.i, i64 noundef %or.i) #9
  %161 = ptrtoint ptr %17 to i32
  call void @__asan_store8_noabort(i32 %161)
  store i64 %or173, ptr %17, align 8
  br label %if.end174

if.end174:                                        ; preds = %write_pte.exit, %if.end169.if.end174_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %hop2_new.0826)
  %tobool175.not = icmp eq i8 %hop2_new.0826, 0
  br i1 %tobool175.not, label %if.end174.if.end179_crit_edge, label %if.then176

if.end174.if.end179_crit_edge:                    ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end179

if.then176:                                       ; preds = %if.end174
  %and177 = and i64 %hop_addr.0.i352827, -4096
  %or178 = or i64 %and177, 1
  %162 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %hdev1, align 4
  %mmu_hop_table_size.i.i473 = getelementptr inbounds %struct.hl_device, ptr %163, i32 0, i32 33, i32 33
  %164 = ptrtoint ptr %mmu_hop_table_size.i.i473 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %mmu_hop_table_size.i.i473, align 4
  %sub.i.i474 = add i32 %165, -1
  %conv.i.i475 = zext i32 %sub.i.i474 to i64
  %neg.i.i476 = xor i64 %conv.i.i475, -1
  %and.i.i477 = and i64 %and177, %neg.i.i476
  %mmu_shadow_hop0.i.i.i478 = getelementptr inbounds %struct.hl_device, ptr %163, i32 0, i32 51, i32 0, i32 1
  %166 = ptrtoint ptr %mmu_shadow_hop0.i.i.i478 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %mmu_shadow_hop0.i.i.i478, align 4
  %168 = ptrtoint ptr %167 to i32
  %conv.i.i.i479 = zext i32 %168 to i64
  %169 = ptrtoint ptr %asid.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %asid.i, align 8
  %mul.i.i.i481 = mul i32 %170, %165
  %conv2.i.i.i482 = zext i32 %mul.i.i.i481 to i64
  %add.i.i.i483 = add nuw nsw i64 %conv2.i.i.i482, %conv.i.i.i479
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i477, i64 %add.i.i.i483)
  %cmp.not.i.i484 = icmp eq i64 %and.i.i477, %add.i.i.i483
  br i1 %cmp.not.i.i484, label %if.else.i.i501, label %if.then.i.i489

if.then.i.i489:                                   ; preds = %if.then176
  %conv.i11.i.i485 = trunc i64 %and.i.i477 to i32
  %mul.i.i.i.i.i486 = mul i32 %conv.i11.i.i485, 1640531527
  %shr.i.i.i.i487 = lshr i32 %mul.i.i.i.i.i486, 25
  %arrayidx.i.i.i488 = getelementptr %struct.hl_ctx, ptr %ctx, i32 0, i32 1, i32 %shr.i.i.i.i487
  br label %for.cond.i.i.i493

for.cond.i.i.i493:                                ; preds = %for.body.i.i.i496.for.cond.i.i.i493_crit_edge, %if.then.i.i489
  %pgt_info.0.in.i.i.i490 = phi ptr [ %arrayidx.i.i.i488, %if.then.i.i489 ], [ %pgt_info.0.i.i.i491, %for.body.i.i.i496.for.cond.i.i.i493_crit_edge ]
  %171 = ptrtoint ptr %pgt_info.0.in.i.i.i490 to i32
  call void @__asan_load4_noabort(i32 %171)
  %pgt_info.0.i.i.i491 = load ptr, ptr %pgt_info.0.in.i.i.i490, align 4
  %tobool2.not.i.i.i492 = icmp eq ptr %pgt_info.0.i.i.i491, null
  br i1 %tobool2.not.i.i.i492, label %for.cond.i.i.i493.get_pgt_info.exit.i.i498_crit_edge, label %for.body.i.i.i496

for.cond.i.i.i493.get_pgt_info.exit.i.i498_crit_edge: ; preds = %for.cond.i.i.i493
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pgt_info.exit.i.i498

for.body.i.i.i496:                                ; preds = %for.cond.i.i.i493
  %shadow_addr.i.i.i494 = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i.i491, i32 0, i32 2
  %172 = ptrtoint ptr %shadow_addr.i.i.i494 to i32
  call void @__asan_load8_noabort(i32 %172)
  %173 = load i64, ptr %shadow_addr.i.i.i494, align 8
  %cmp.i.i.i495 = icmp eq i64 %173, %and.i.i477
  br i1 %cmp.i.i.i495, label %for.body.i.i.i496.get_pgt_info.exit.i.i498_crit_edge, label %for.body.i.i.i496.for.cond.i.i.i493_crit_edge

for.body.i.i.i496.for.cond.i.i.i493_crit_edge:    ; preds = %for.body.i.i.i496
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i.i493

for.body.i.i.i496.get_pgt_info.exit.i.i498_crit_edge: ; preds = %for.body.i.i.i496
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pgt_info.exit.i.i498

get_pgt_info.exit.i.i498:                         ; preds = %for.body.i.i.i496.get_pgt_info.exit.i.i498_crit_edge, %for.cond.i.i.i493.get_pgt_info.exit.i.i498_crit_edge
  %phys_addr.i.i497 = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i.i491, i32 0, i32 1
  %174 = ptrtoint ptr %phys_addr.i.i497 to i32
  call void @__asan_load8_noabort(i32 %174)
  %175 = load i64, ptr %phys_addr.i.i497, align 8
  br label %get_phys_addr.exit.i507

if.else.i.i501:                                   ; preds = %if.then176
  call void @__sanitizer_cov_trace_pc() #11
  %mmu_pgt_addr.i.i.i499 = getelementptr inbounds %struct.hl_device, ptr %163, i32 0, i32 33, i32 23
  %176 = ptrtoint ptr %mmu_pgt_addr.i.i.i499 to i32
  call void @__asan_load8_noabort(i32 %176)
  %177 = load i64, ptr %mmu_pgt_addr.i.i.i499, align 8
  %add.i17.i.i500 = add i64 %177, %conv2.i.i.i482
  br label %get_phys_addr.exit.i507

get_phys_addr.exit.i507:                          ; preds = %if.else.i.i501, %get_pgt_info.exit.i.i498
  %phys_hop_addr.0.i.i502 = phi i64 [ %175, %get_pgt_info.exit.i.i498 ], [ %add.i17.i.i500, %if.else.i.i501 ]
  %asic_funcs.i503 = getelementptr inbounds %struct.hl_device, ptr %163, i32 0, i32 34
  %178 = ptrtoint ptr %asic_funcs.i503 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %asic_funcs.i503, align 8
  %write_pte.i504 = getelementptr inbounds %struct.hl_asic_funcs, ptr %179, i32 0, i32 41
  %180 = ptrtoint ptr %write_pte.i504 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %write_pte.i504, align 4
  %and.i15.i505 = and i64 %add.i.i344, %neg.i.i476
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i15.i505, i64 %add.i.i.i483)
  %cmp.not.i22.i506 = icmp eq i64 %and.i15.i505, %add.i.i.i483
  br i1 %cmp.not.i22.i506, label %if.else.i39.i524, label %if.then.i27.i512

if.then.i27.i512:                                 ; preds = %get_phys_addr.exit.i507
  %conv.i11.i23.i508 = trunc i64 %and.i15.i505 to i32
  %mul.i.i.i.i24.i509 = mul i32 %conv.i11.i23.i508, 1640531527
  %shr.i.i.i25.i510 = lshr i32 %mul.i.i.i.i24.i509, 25
  %arrayidx.i.i26.i511 = getelementptr %struct.hl_ctx, ptr %ctx, i32 0, i32 1, i32 %shr.i.i.i25.i510
  br label %for.cond.i.i31.i516

for.cond.i.i31.i516:                              ; preds = %for.body.i.i34.i519.for.cond.i.i31.i516_crit_edge, %if.then.i27.i512
  %pgt_info.0.in.i.i28.i513 = phi ptr [ %arrayidx.i.i26.i511, %if.then.i27.i512 ], [ %pgt_info.0.i.i29.i514, %for.body.i.i34.i519.for.cond.i.i31.i516_crit_edge ]
  %182 = ptrtoint ptr %pgt_info.0.in.i.i28.i513 to i32
  call void @__asan_load4_noabort(i32 %182)
  %pgt_info.0.i.i29.i514 = load ptr, ptr %pgt_info.0.in.i.i28.i513, align 4
  %tobool2.not.i.i30.i515 = icmp eq ptr %pgt_info.0.i.i29.i514, null
  br i1 %tobool2.not.i.i30.i515, label %for.cond.i.i31.i516.get_pgt_info.exit.i36.i521_crit_edge, label %for.body.i.i34.i519

for.cond.i.i31.i516.get_pgt_info.exit.i36.i521_crit_edge: ; preds = %for.cond.i.i31.i516
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pgt_info.exit.i36.i521

for.body.i.i34.i519:                              ; preds = %for.cond.i.i31.i516
  %shadow_addr.i.i32.i517 = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i29.i514, i32 0, i32 2
  %183 = ptrtoint ptr %shadow_addr.i.i32.i517 to i32
  call void @__asan_load8_noabort(i32 %183)
  %184 = load i64, ptr %shadow_addr.i.i32.i517, align 8
  %cmp.i.i33.i518 = icmp eq i64 %184, %and.i15.i505
  br i1 %cmp.i.i33.i518, label %for.body.i.i34.i519.get_pgt_info.exit.i36.i521_crit_edge, label %for.body.i.i34.i519.for.cond.i.i31.i516_crit_edge

for.body.i.i34.i519.for.cond.i.i31.i516_crit_edge: ; preds = %for.body.i.i34.i519
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i31.i516

for.body.i.i34.i519.get_pgt_info.exit.i36.i521_crit_edge: ; preds = %for.body.i.i34.i519
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pgt_info.exit.i36.i521

get_pgt_info.exit.i36.i521:                       ; preds = %for.body.i.i34.i519.get_pgt_info.exit.i36.i521_crit_edge, %for.cond.i.i31.i516.get_pgt_info.exit.i36.i521_crit_edge
  %phys_addr.i35.i520 = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i29.i514, i32 0, i32 1
  %185 = ptrtoint ptr %phys_addr.i35.i520 to i32
  call void @__asan_load8_noabort(i32 %185)
  %186 = load i64, ptr %phys_addr.i35.i520, align 8
  br label %write_pte.exit532

if.else.i39.i524:                                 ; preds = %get_phys_addr.exit.i507
  call void @__sanitizer_cov_trace_pc() #11
  %mmu_pgt_addr.i.i37.i522 = getelementptr inbounds %struct.hl_device, ptr %163, i32 0, i32 33, i32 23
  %187 = ptrtoint ptr %mmu_pgt_addr.i.i37.i522 to i32
  call void @__asan_load8_noabort(i32 %187)
  %188 = load i64, ptr %mmu_pgt_addr.i.i37.i522, align 8
  %add.i17.i38.i523 = add i64 %188, %conv2.i.i.i482
  br label %write_pte.exit532

write_pte.exit532:                                ; preds = %if.else.i39.i524, %get_pgt_info.exit.i36.i521
  %phys_hop_addr.0.i40.i525 = phi i64 [ %186, %get_pgt_info.exit.i36.i521 ], [ %add.i17.i38.i523, %if.else.i39.i524 ]
  %and1.i.i526 = and i64 %and177, %conv.i.i475
  %add.i.i527 = add i64 %phys_hop_addr.0.i.i502, %and1.i.i526
  %or.i528 = or i64 %add.i.i527, 1
  %and1.i41.i529 = and i64 %add.i.i344, %conv.i.i475
  %add.i42.i530 = add i64 %phys_hop_addr.0.i40.i525, %and1.i41.i529
  tail call void %181(ptr noundef %163, i64 noundef %add.i42.i530, i64 noundef %or.i528) #9
  %189 = ptrtoint ptr %28 to i32
  call void @__asan_store8_noabort(i32 %189)
  store i64 %or178, ptr %28, align 8
  %conv.i.i533 = trunc i64 %hop_addr.0.i820 to i32
  %mul.i.i.i.i = mul i32 %conv.i.i533, 1640531527
  %shr.i.i.i = lshr i32 %mul.i.i.i.i, 25
  %arrayidx.i.i = getelementptr %struct.hl_ctx, ptr %ctx, i32 0, i32 1, i32 %shr.i.i.i
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %write_pte.exit532
  %pgt_info.0.in.i.i = phi ptr [ %arrayidx.i.i, %write_pte.exit532 ], [ %pgt_info.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %190 = ptrtoint ptr %pgt_info.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %pgt_info.0.i.i = load ptr, ptr %pgt_info.0.in.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %pgt_info.0.i.i, null
  br i1 %tobool2.not.i.i, label %for.cond.i.i.get_pte.exit_crit_edge, label %for.body.i.i

for.cond.i.i.get_pte.exit_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pte.exit

for.body.i.i:                                     ; preds = %for.cond.i.i
  %shadow_addr.i.i = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i, i32 0, i32 2
  %191 = ptrtoint ptr %shadow_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %191)
  %192 = load i64, ptr %shadow_addr.i.i, align 8
  %cmp.i.i = icmp eq i64 %192, %hop_addr.0.i820
  br i1 %cmp.i.i, label %for.body.i.i.get_pte.exit_crit_edge, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i

for.body.i.i.get_pte.exit_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pte.exit

get_pte.exit:                                     ; preds = %for.body.i.i.get_pte.exit_crit_edge, %for.cond.i.i.get_pte.exit_crit_edge
  %num_of_ptes.i = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i, i32 0, i32 4
  %193 = ptrtoint ptr %num_of_ptes.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %num_of_ptes.i, align 4
  %inc.i = add i32 %194, 1
  store i32 %inc.i, ptr %num_of_ptes.i, align 4
  br label %if.end179

if.end179:                                        ; preds = %get_pte.exit, %if.end174.if.end179_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %hop3_new.0833)
  %tobool180.not = icmp eq i8 %hop3_new.0833, 0
  br i1 %tobool180.not, label %if.end179.if.end184_crit_edge, label %if.then181

if.end179.if.end184_crit_edge:                    ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end184

if.then181:                                       ; preds = %if.end179
  %and182 = and i64 %hop_addr.0.i368834, -4096
  %or183 = or i64 %and182, 1
  %195 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %hdev1, align 4
  %mmu_hop_table_size.i.i535 = getelementptr inbounds %struct.hl_device, ptr %196, i32 0, i32 33, i32 33
  %197 = ptrtoint ptr %mmu_hop_table_size.i.i535 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %mmu_hop_table_size.i.i535, align 4
  %sub.i.i536 = add i32 %198, -1
  %conv.i.i537 = zext i32 %sub.i.i536 to i64
  %neg.i.i538 = xor i64 %conv.i.i537, -1
  %and.i.i539 = and i64 %and182, %neg.i.i538
  %mmu_shadow_hop0.i.i.i540 = getelementptr inbounds %struct.hl_device, ptr %196, i32 0, i32 51, i32 0, i32 1
  %199 = ptrtoint ptr %mmu_shadow_hop0.i.i.i540 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %mmu_shadow_hop0.i.i.i540, align 4
  %201 = ptrtoint ptr %200 to i32
  %conv.i.i.i541 = zext i32 %201 to i64
  %202 = ptrtoint ptr %asid.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %asid.i, align 8
  %mul.i.i.i543 = mul i32 %203, %198
  %conv2.i.i.i544 = zext i32 %mul.i.i.i543 to i64
  %add.i.i.i545 = add nuw nsw i64 %conv2.i.i.i544, %conv.i.i.i541
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i539, i64 %add.i.i.i545)
  %cmp.not.i.i546 = icmp eq i64 %and.i.i539, %add.i.i.i545
  br i1 %cmp.not.i.i546, label %if.else.i.i563, label %if.then.i.i551

if.then.i.i551:                                   ; preds = %if.then181
  %conv.i11.i.i547 = trunc i64 %and.i.i539 to i32
  %mul.i.i.i.i.i548 = mul i32 %conv.i11.i.i547, 1640531527
  %shr.i.i.i.i549 = lshr i32 %mul.i.i.i.i.i548, 25
  %arrayidx.i.i.i550 = getelementptr %struct.hl_ctx, ptr %ctx, i32 0, i32 1, i32 %shr.i.i.i.i549
  br label %for.cond.i.i.i555

for.cond.i.i.i555:                                ; preds = %for.body.i.i.i558.for.cond.i.i.i555_crit_edge, %if.then.i.i551
  %pgt_info.0.in.i.i.i552 = phi ptr [ %arrayidx.i.i.i550, %if.then.i.i551 ], [ %pgt_info.0.i.i.i553, %for.body.i.i.i558.for.cond.i.i.i555_crit_edge ]
  %204 = ptrtoint ptr %pgt_info.0.in.i.i.i552 to i32
  call void @__asan_load4_noabort(i32 %204)
  %pgt_info.0.i.i.i553 = load ptr, ptr %pgt_info.0.in.i.i.i552, align 4
  %tobool2.not.i.i.i554 = icmp eq ptr %pgt_info.0.i.i.i553, null
  br i1 %tobool2.not.i.i.i554, label %for.cond.i.i.i555.get_pgt_info.exit.i.i560_crit_edge, label %for.body.i.i.i558

for.cond.i.i.i555.get_pgt_info.exit.i.i560_crit_edge: ; preds = %for.cond.i.i.i555
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pgt_info.exit.i.i560

for.body.i.i.i558:                                ; preds = %for.cond.i.i.i555
  %shadow_addr.i.i.i556 = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i.i553, i32 0, i32 2
  %205 = ptrtoint ptr %shadow_addr.i.i.i556 to i32
  call void @__asan_load8_noabort(i32 %205)
  %206 = load i64, ptr %shadow_addr.i.i.i556, align 8
  %cmp.i.i.i557 = icmp eq i64 %206, %and.i.i539
  br i1 %cmp.i.i.i557, label %for.body.i.i.i558.get_pgt_info.exit.i.i560_crit_edge, label %for.body.i.i.i558.for.cond.i.i.i555_crit_edge

for.body.i.i.i558.for.cond.i.i.i555_crit_edge:    ; preds = %for.body.i.i.i558
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i.i555

for.body.i.i.i558.get_pgt_info.exit.i.i560_crit_edge: ; preds = %for.body.i.i.i558
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pgt_info.exit.i.i560

get_pgt_info.exit.i.i560:                         ; preds = %for.body.i.i.i558.get_pgt_info.exit.i.i560_crit_edge, %for.cond.i.i.i555.get_pgt_info.exit.i.i560_crit_edge
  %phys_addr.i.i559 = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i.i553, i32 0, i32 1
  %207 = ptrtoint ptr %phys_addr.i.i559 to i32
  call void @__asan_load8_noabort(i32 %207)
  %208 = load i64, ptr %phys_addr.i.i559, align 8
  br label %get_phys_addr.exit.i569

if.else.i.i563:                                   ; preds = %if.then181
  call void @__sanitizer_cov_trace_pc() #11
  %mmu_pgt_addr.i.i.i561 = getelementptr inbounds %struct.hl_device, ptr %196, i32 0, i32 33, i32 23
  %209 = ptrtoint ptr %mmu_pgt_addr.i.i.i561 to i32
  call void @__asan_load8_noabort(i32 %209)
  %210 = load i64, ptr %mmu_pgt_addr.i.i.i561, align 8
  %add.i17.i.i562 = add i64 %210, %conv2.i.i.i544
  br label %get_phys_addr.exit.i569

get_phys_addr.exit.i569:                          ; preds = %if.else.i.i563, %get_pgt_info.exit.i.i560
  %phys_hop_addr.0.i.i564 = phi i64 [ %208, %get_pgt_info.exit.i.i560 ], [ %add.i17.i.i562, %if.else.i.i563 ]
  %asic_funcs.i565 = getelementptr inbounds %struct.hl_device, ptr %196, i32 0, i32 34
  %211 = ptrtoint ptr %asic_funcs.i565 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %asic_funcs.i565, align 8
  %write_pte.i566 = getelementptr inbounds %struct.hl_asic_funcs, ptr %212, i32 0, i32 41
  %213 = ptrtoint ptr %write_pte.i566 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %write_pte.i566, align 4
  %and.i15.i567 = and i64 %add.i.i360, %neg.i.i538
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i15.i567, i64 %add.i.i.i545)
  %cmp.not.i22.i568 = icmp eq i64 %and.i15.i567, %add.i.i.i545
  br i1 %cmp.not.i22.i568, label %if.else.i39.i586, label %if.then.i27.i574

if.then.i27.i574:                                 ; preds = %get_phys_addr.exit.i569
  %conv.i11.i23.i570 = trunc i64 %and.i15.i567 to i32
  %mul.i.i.i.i24.i571 = mul i32 %conv.i11.i23.i570, 1640531527
  %shr.i.i.i25.i572 = lshr i32 %mul.i.i.i.i24.i571, 25
  %arrayidx.i.i26.i573 = getelementptr %struct.hl_ctx, ptr %ctx, i32 0, i32 1, i32 %shr.i.i.i25.i572
  br label %for.cond.i.i31.i578

for.cond.i.i31.i578:                              ; preds = %for.body.i.i34.i581.for.cond.i.i31.i578_crit_edge, %if.then.i27.i574
  %pgt_info.0.in.i.i28.i575 = phi ptr [ %arrayidx.i.i26.i573, %if.then.i27.i574 ], [ %pgt_info.0.i.i29.i576, %for.body.i.i34.i581.for.cond.i.i31.i578_crit_edge ]
  %215 = ptrtoint ptr %pgt_info.0.in.i.i28.i575 to i32
  call void @__asan_load4_noabort(i32 %215)
  %pgt_info.0.i.i29.i576 = load ptr, ptr %pgt_info.0.in.i.i28.i575, align 4
  %tobool2.not.i.i30.i577 = icmp eq ptr %pgt_info.0.i.i29.i576, null
  br i1 %tobool2.not.i.i30.i577, label %for.cond.i.i31.i578.get_pgt_info.exit.i36.i583_crit_edge, label %for.body.i.i34.i581

for.cond.i.i31.i578.get_pgt_info.exit.i36.i583_crit_edge: ; preds = %for.cond.i.i31.i578
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pgt_info.exit.i36.i583

for.body.i.i34.i581:                              ; preds = %for.cond.i.i31.i578
  %shadow_addr.i.i32.i579 = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i29.i576, i32 0, i32 2
  %216 = ptrtoint ptr %shadow_addr.i.i32.i579 to i32
  call void @__asan_load8_noabort(i32 %216)
  %217 = load i64, ptr %shadow_addr.i.i32.i579, align 8
  %cmp.i.i33.i580 = icmp eq i64 %217, %and.i15.i567
  br i1 %cmp.i.i33.i580, label %for.body.i.i34.i581.get_pgt_info.exit.i36.i583_crit_edge, label %for.body.i.i34.i581.for.cond.i.i31.i578_crit_edge

for.body.i.i34.i581.for.cond.i.i31.i578_crit_edge: ; preds = %for.body.i.i34.i581
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i31.i578

for.body.i.i34.i581.get_pgt_info.exit.i36.i583_crit_edge: ; preds = %for.body.i.i34.i581
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pgt_info.exit.i36.i583

get_pgt_info.exit.i36.i583:                       ; preds = %for.body.i.i34.i581.get_pgt_info.exit.i36.i583_crit_edge, %for.cond.i.i31.i578.get_pgt_info.exit.i36.i583_crit_edge
  %phys_addr.i35.i582 = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i29.i576, i32 0, i32 1
  %218 = ptrtoint ptr %phys_addr.i35.i582 to i32
  call void @__asan_load8_noabort(i32 %218)
  %219 = load i64, ptr %phys_addr.i35.i582, align 8
  br label %write_pte.exit594

if.else.i39.i586:                                 ; preds = %get_phys_addr.exit.i569
  call void @__sanitizer_cov_trace_pc() #11
  %mmu_pgt_addr.i.i37.i584 = getelementptr inbounds %struct.hl_device, ptr %196, i32 0, i32 33, i32 23
  %220 = ptrtoint ptr %mmu_pgt_addr.i.i37.i584 to i32
  call void @__asan_load8_noabort(i32 %220)
  %221 = load i64, ptr %mmu_pgt_addr.i.i37.i584, align 8
  %add.i17.i38.i585 = add i64 %221, %conv2.i.i.i544
  br label %write_pte.exit594

write_pte.exit594:                                ; preds = %if.else.i39.i586, %get_pgt_info.exit.i36.i583
  %phys_hop_addr.0.i40.i587 = phi i64 [ %219, %get_pgt_info.exit.i36.i583 ], [ %add.i17.i38.i585, %if.else.i39.i586 ]
  %and1.i.i588 = and i64 %and182, %conv.i.i537
  %add.i.i589 = add i64 %phys_hop_addr.0.i.i564, %and1.i.i588
  %or.i590 = or i64 %add.i.i589, 1
  %and1.i41.i591 = and i64 %add.i.i360, %conv.i.i537
  %add.i42.i592 = add i64 %phys_hop_addr.0.i40.i587, %and1.i41.i591
  tail call void %214(ptr noundef %196, i64 noundef %add.i42.i592, i64 noundef %or.i590) #9
  %222 = ptrtoint ptr %39 to i32
  call void @__asan_store8_noabort(i32 %222)
  store i64 %or183, ptr %39, align 8
  %conv.i.i595 = trunc i64 %hop_addr.0.i352827 to i32
  %mul.i.i.i.i596 = mul i32 %conv.i.i595, 1640531527
  %shr.i.i.i597 = lshr i32 %mul.i.i.i.i596, 25
  %arrayidx.i.i598 = getelementptr %struct.hl_ctx, ptr %ctx, i32 0, i32 1, i32 %shr.i.i.i597
  br label %for.cond.i.i602

for.cond.i.i602:                                  ; preds = %for.body.i.i605.for.cond.i.i602_crit_edge, %write_pte.exit594
  %pgt_info.0.in.i.i599 = phi ptr [ %arrayidx.i.i598, %write_pte.exit594 ], [ %pgt_info.0.i.i600, %for.body.i.i605.for.cond.i.i602_crit_edge ]
  %223 = ptrtoint ptr %pgt_info.0.in.i.i599 to i32
  call void @__asan_load4_noabort(i32 %223)
  %pgt_info.0.i.i600 = load ptr, ptr %pgt_info.0.in.i.i599, align 4
  %tobool2.not.i.i601 = icmp eq ptr %pgt_info.0.i.i600, null
  br i1 %tobool2.not.i.i601, label %for.cond.i.i602.get_pte.exit608_crit_edge, label %for.body.i.i605

for.cond.i.i602.get_pte.exit608_crit_edge:        ; preds = %for.cond.i.i602
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pte.exit608

for.body.i.i605:                                  ; preds = %for.cond.i.i602
  %shadow_addr.i.i603 = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i600, i32 0, i32 2
  %224 = ptrtoint ptr %shadow_addr.i.i603 to i32
  call void @__asan_load8_noabort(i32 %224)
  %225 = load i64, ptr %shadow_addr.i.i603, align 8
  %cmp.i.i604 = icmp eq i64 %225, %hop_addr.0.i352827
  br i1 %cmp.i.i604, label %for.body.i.i605.get_pte.exit608_crit_edge, label %for.body.i.i605.for.cond.i.i602_crit_edge

for.body.i.i605.for.cond.i.i602_crit_edge:        ; preds = %for.body.i.i605
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i602

for.body.i.i605.get_pte.exit608_crit_edge:        ; preds = %for.body.i.i605
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pte.exit608

get_pte.exit608:                                  ; preds = %for.body.i.i605.get_pte.exit608_crit_edge, %for.cond.i.i602.get_pte.exit608_crit_edge
  %num_of_ptes.i606 = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i600, i32 0, i32 4
  %226 = ptrtoint ptr %num_of_ptes.i606 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %num_of_ptes.i606, align 4
  %inc.i607 = add i32 %227, 1
  store i32 %inc.i607, ptr %num_of_ptes.i606, align 4
  br label %if.end184

if.end184:                                        ; preds = %get_pte.exit608, %if.end179.if.end184_crit_edge
  br i1 %is_huge.0.off0, label %if.else192, label %if.then186

if.then186:                                       ; preds = %if.end184
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %hop4_new.1)
  %tobool187.not = icmp eq i8 %hop4_new.1, 0
  br i1 %tobool187.not, label %if.then186.if.end191_crit_edge, label %if.then188

if.then186.if.end191_crit_edge:                   ; preds = %if.then186
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end191

if.then188:                                       ; preds = %if.then186
  %and189 = and i64 %hop4_addr.0, -4096
  %or190 = or i64 %and189, 1
  %228 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %hdev1, align 4
  %mmu_hop_table_size.i.i610 = getelementptr inbounds %struct.hl_device, ptr %229, i32 0, i32 33, i32 33
  %230 = ptrtoint ptr %mmu_hop_table_size.i.i610 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %mmu_hop_table_size.i.i610, align 4
  %sub.i.i611 = add i32 %231, -1
  %conv.i.i612 = zext i32 %sub.i.i611 to i64
  %neg.i.i613 = xor i64 %conv.i.i612, -1
  %and.i.i614 = and i64 %and189, %neg.i.i613
  %mmu_shadow_hop0.i.i.i615 = getelementptr inbounds %struct.hl_device, ptr %229, i32 0, i32 51, i32 0, i32 1
  %232 = ptrtoint ptr %mmu_shadow_hop0.i.i.i615 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %mmu_shadow_hop0.i.i.i615, align 4
  %234 = ptrtoint ptr %233 to i32
  %conv.i.i.i616 = zext i32 %234 to i64
  %235 = ptrtoint ptr %asid.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %asid.i, align 8
  %mul.i.i.i618 = mul i32 %236, %231
  %conv2.i.i.i619 = zext i32 %mul.i.i.i618 to i64
  %add.i.i.i620 = add nuw nsw i64 %conv2.i.i.i619, %conv.i.i.i616
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i614, i64 %add.i.i.i620)
  %cmp.not.i.i621 = icmp eq i64 %and.i.i614, %add.i.i.i620
  br i1 %cmp.not.i.i621, label %if.else.i.i638, label %if.then.i.i626

if.then.i.i626:                                   ; preds = %if.then188
  %conv.i11.i.i622 = trunc i64 %and.i.i614 to i32
  %mul.i.i.i.i.i623 = mul i32 %conv.i11.i.i622, 1640531527
  %shr.i.i.i.i624 = lshr i32 %mul.i.i.i.i.i623, 25
  %arrayidx.i.i.i625 = getelementptr %struct.hl_ctx, ptr %ctx, i32 0, i32 1, i32 %shr.i.i.i.i624
  br label %for.cond.i.i.i630

for.cond.i.i.i630:                                ; preds = %for.body.i.i.i633.for.cond.i.i.i630_crit_edge, %if.then.i.i626
  %pgt_info.0.in.i.i.i627 = phi ptr [ %arrayidx.i.i.i625, %if.then.i.i626 ], [ %pgt_info.0.i.i.i628, %for.body.i.i.i633.for.cond.i.i.i630_crit_edge ]
  %237 = ptrtoint ptr %pgt_info.0.in.i.i.i627 to i32
  call void @__asan_load4_noabort(i32 %237)
  %pgt_info.0.i.i.i628 = load ptr, ptr %pgt_info.0.in.i.i.i627, align 4
  %tobool2.not.i.i.i629 = icmp eq ptr %pgt_info.0.i.i.i628, null
  br i1 %tobool2.not.i.i.i629, label %for.cond.i.i.i630.get_pgt_info.exit.i.i635_crit_edge, label %for.body.i.i.i633

for.cond.i.i.i630.get_pgt_info.exit.i.i635_crit_edge: ; preds = %for.cond.i.i.i630
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pgt_info.exit.i.i635

for.body.i.i.i633:                                ; preds = %for.cond.i.i.i630
  %shadow_addr.i.i.i631 = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i.i628, i32 0, i32 2
  %238 = ptrtoint ptr %shadow_addr.i.i.i631 to i32
  call void @__asan_load8_noabort(i32 %238)
  %239 = load i64, ptr %shadow_addr.i.i.i631, align 8
  %cmp.i.i.i632 = icmp eq i64 %239, %and.i.i614
  br i1 %cmp.i.i.i632, label %for.body.i.i.i633.get_pgt_info.exit.i.i635_crit_edge, label %for.body.i.i.i633.for.cond.i.i.i630_crit_edge

for.body.i.i.i633.for.cond.i.i.i630_crit_edge:    ; preds = %for.body.i.i.i633
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i.i630

for.body.i.i.i633.get_pgt_info.exit.i.i635_crit_edge: ; preds = %for.body.i.i.i633
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pgt_info.exit.i.i635

get_pgt_info.exit.i.i635:                         ; preds = %for.body.i.i.i633.get_pgt_info.exit.i.i635_crit_edge, %for.cond.i.i.i630.get_pgt_info.exit.i.i635_crit_edge
  %phys_addr.i.i634 = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i.i628, i32 0, i32 1
  %240 = ptrtoint ptr %phys_addr.i.i634 to i32
  call void @__asan_load8_noabort(i32 %240)
  %241 = load i64, ptr %phys_addr.i.i634, align 8
  br label %get_phys_addr.exit.i644

if.else.i.i638:                                   ; preds = %if.then188
  call void @__sanitizer_cov_trace_pc() #11
  %mmu_pgt_addr.i.i.i636 = getelementptr inbounds %struct.hl_device, ptr %229, i32 0, i32 33, i32 23
  %242 = ptrtoint ptr %mmu_pgt_addr.i.i.i636 to i32
  call void @__asan_load8_noabort(i32 %242)
  %243 = load i64, ptr %mmu_pgt_addr.i.i.i636, align 8
  %add.i17.i.i637 = add i64 %243, %conv2.i.i.i619
  br label %get_phys_addr.exit.i644

get_phys_addr.exit.i644:                          ; preds = %if.else.i.i638, %get_pgt_info.exit.i.i635
  %phys_hop_addr.0.i.i639 = phi i64 [ %241, %get_pgt_info.exit.i.i635 ], [ %add.i17.i.i637, %if.else.i.i638 ]
  %asic_funcs.i640 = getelementptr inbounds %struct.hl_device, ptr %229, i32 0, i32 34
  %244 = ptrtoint ptr %asic_funcs.i640 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %asic_funcs.i640, align 8
  %write_pte.i641 = getelementptr inbounds %struct.hl_asic_funcs, ptr %245, i32 0, i32 41
  %246 = ptrtoint ptr %write_pte.i641 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %write_pte.i641, align 4
  %and.i15.i642 = and i64 %add.i.i376, %neg.i.i613
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i15.i642, i64 %add.i.i.i620)
  %cmp.not.i22.i643 = icmp eq i64 %and.i15.i642, %add.i.i.i620
  br i1 %cmp.not.i22.i643, label %if.else.i39.i661, label %if.then.i27.i649

if.then.i27.i649:                                 ; preds = %get_phys_addr.exit.i644
  %conv.i11.i23.i645 = trunc i64 %and.i15.i642 to i32
  %mul.i.i.i.i24.i646 = mul i32 %conv.i11.i23.i645, 1640531527
  %shr.i.i.i25.i647 = lshr i32 %mul.i.i.i.i24.i646, 25
  %arrayidx.i.i26.i648 = getelementptr %struct.hl_ctx, ptr %ctx, i32 0, i32 1, i32 %shr.i.i.i25.i647
  br label %for.cond.i.i31.i653

for.cond.i.i31.i653:                              ; preds = %for.body.i.i34.i656.for.cond.i.i31.i653_crit_edge, %if.then.i27.i649
  %pgt_info.0.in.i.i28.i650 = phi ptr [ %arrayidx.i.i26.i648, %if.then.i27.i649 ], [ %pgt_info.0.i.i29.i651, %for.body.i.i34.i656.for.cond.i.i31.i653_crit_edge ]
  %248 = ptrtoint ptr %pgt_info.0.in.i.i28.i650 to i32
  call void @__asan_load4_noabort(i32 %248)
  %pgt_info.0.i.i29.i651 = load ptr, ptr %pgt_info.0.in.i.i28.i650, align 4
  %tobool2.not.i.i30.i652 = icmp eq ptr %pgt_info.0.i.i29.i651, null
  br i1 %tobool2.not.i.i30.i652, label %for.cond.i.i31.i653.get_pgt_info.exit.i36.i658_crit_edge, label %for.body.i.i34.i656

for.cond.i.i31.i653.get_pgt_info.exit.i36.i658_crit_edge: ; preds = %for.cond.i.i31.i653
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pgt_info.exit.i36.i658

for.body.i.i34.i656:                              ; preds = %for.cond.i.i31.i653
  %shadow_addr.i.i32.i654 = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i29.i651, i32 0, i32 2
  %249 = ptrtoint ptr %shadow_addr.i.i32.i654 to i32
  call void @__asan_load8_noabort(i32 %249)
  %250 = load i64, ptr %shadow_addr.i.i32.i654, align 8
  %cmp.i.i33.i655 = icmp eq i64 %250, %and.i15.i642
  br i1 %cmp.i.i33.i655, label %for.body.i.i34.i656.get_pgt_info.exit.i36.i658_crit_edge, label %for.body.i.i34.i656.for.cond.i.i31.i653_crit_edge

for.body.i.i34.i656.for.cond.i.i31.i653_crit_edge: ; preds = %for.body.i.i34.i656
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i31.i653

for.body.i.i34.i656.get_pgt_info.exit.i36.i658_crit_edge: ; preds = %for.body.i.i34.i656
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pgt_info.exit.i36.i658

get_pgt_info.exit.i36.i658:                       ; preds = %for.body.i.i34.i656.get_pgt_info.exit.i36.i658_crit_edge, %for.cond.i.i31.i653.get_pgt_info.exit.i36.i658_crit_edge
  %phys_addr.i35.i657 = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i29.i651, i32 0, i32 1
  %251 = ptrtoint ptr %phys_addr.i35.i657 to i32
  call void @__asan_load8_noabort(i32 %251)
  %252 = load i64, ptr %phys_addr.i35.i657, align 8
  br label %write_pte.exit669

if.else.i39.i661:                                 ; preds = %get_phys_addr.exit.i644
  call void @__sanitizer_cov_trace_pc() #11
  %mmu_pgt_addr.i.i37.i659 = getelementptr inbounds %struct.hl_device, ptr %229, i32 0, i32 33, i32 23
  %253 = ptrtoint ptr %mmu_pgt_addr.i.i37.i659 to i32
  call void @__asan_load8_noabort(i32 %253)
  %254 = load i64, ptr %mmu_pgt_addr.i.i37.i659, align 8
  %add.i17.i38.i660 = add i64 %254, %conv2.i.i.i619
  br label %write_pte.exit669

write_pte.exit669:                                ; preds = %if.else.i39.i661, %get_pgt_info.exit.i36.i658
  %phys_hop_addr.0.i40.i662 = phi i64 [ %252, %get_pgt_info.exit.i36.i658 ], [ %add.i17.i38.i660, %if.else.i39.i661 ]
  %and1.i.i663 = and i64 %and189, %conv.i.i612
  %add.i.i664 = add i64 %phys_hop_addr.0.i.i639, %and1.i.i663
  %or.i665 = or i64 %add.i.i664, 1
  %and1.i41.i666 = and i64 %add.i.i376, %conv.i.i612
  %add.i42.i667 = add i64 %phys_hop_addr.0.i40.i662, %and1.i41.i666
  tail call void %247(ptr noundef %229, i64 noundef %add.i42.i667, i64 noundef %or.i665) #9
  %255 = ptrtoint ptr %50 to i32
  call void @__asan_store8_noabort(i32 %255)
  store i64 %or190, ptr %50, align 8
  %conv.i.i670 = trunc i64 %hop_addr.0.i368834 to i32
  %mul.i.i.i.i671 = mul i32 %conv.i.i670, 1640531527
  %shr.i.i.i672 = lshr i32 %mul.i.i.i.i671, 25
  %arrayidx.i.i673 = getelementptr %struct.hl_ctx, ptr %ctx, i32 0, i32 1, i32 %shr.i.i.i672
  br label %for.cond.i.i677

for.cond.i.i677:                                  ; preds = %for.body.i.i680.for.cond.i.i677_crit_edge, %write_pte.exit669
  %pgt_info.0.in.i.i674 = phi ptr [ %arrayidx.i.i673, %write_pte.exit669 ], [ %pgt_info.0.i.i675, %for.body.i.i680.for.cond.i.i677_crit_edge ]
  %256 = ptrtoint ptr %pgt_info.0.in.i.i674 to i32
  call void @__asan_load4_noabort(i32 %256)
  %pgt_info.0.i.i675 = load ptr, ptr %pgt_info.0.in.i.i674, align 4
  %tobool2.not.i.i676 = icmp eq ptr %pgt_info.0.i.i675, null
  br i1 %tobool2.not.i.i676, label %for.cond.i.i677.get_pte.exit683_crit_edge, label %for.body.i.i680

for.cond.i.i677.get_pte.exit683_crit_edge:        ; preds = %for.cond.i.i677
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pte.exit683

for.body.i.i680:                                  ; preds = %for.cond.i.i677
  %shadow_addr.i.i678 = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i675, i32 0, i32 2
  %257 = ptrtoint ptr %shadow_addr.i.i678 to i32
  call void @__asan_load8_noabort(i32 %257)
  %258 = load i64, ptr %shadow_addr.i.i678, align 8
  %cmp.i.i679 = icmp eq i64 %258, %hop_addr.0.i368834
  br i1 %cmp.i.i679, label %for.body.i.i680.get_pte.exit683_crit_edge, label %for.body.i.i680.for.cond.i.i677_crit_edge

for.body.i.i680.for.cond.i.i677_crit_edge:        ; preds = %for.body.i.i680
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i677

for.body.i.i680.get_pte.exit683_crit_edge:        ; preds = %for.body.i.i680
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pte.exit683

get_pte.exit683:                                  ; preds = %for.body.i.i680.get_pte.exit683_crit_edge, %for.cond.i.i677.get_pte.exit683_crit_edge
  %num_of_ptes.i681 = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i675, i32 0, i32 4
  %259 = ptrtoint ptr %num_of_ptes.i681 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %num_of_ptes.i681, align 4
  %inc.i682 = add i32 %260, 1
  store i32 %inc.i682, ptr %num_of_ptes.i681, align 4
  br label %if.end191

if.end191:                                        ; preds = %get_pte.exit683, %if.then186.if.end191_crit_edge
  %conv.i.i684 = trunc i64 %hop4_addr.0 to i32
  %mul.i.i.i.i685 = mul i32 %conv.i.i684, 1640531527
  %shr.i.i.i686 = lshr i32 %mul.i.i.i.i685, 25
  %arrayidx.i.i687 = getelementptr %struct.hl_ctx, ptr %ctx, i32 0, i32 1, i32 %shr.i.i.i686
  br label %for.cond.i.i691

for.cond.i.i691:                                  ; preds = %for.body.i.i694.for.cond.i.i691_crit_edge, %if.end191
  %pgt_info.0.in.i.i688 = phi ptr [ %arrayidx.i.i687, %if.end191 ], [ %pgt_info.0.i.i689, %for.body.i.i694.for.cond.i.i691_crit_edge ]
  %261 = ptrtoint ptr %pgt_info.0.in.i.i688 to i32
  call void @__asan_load4_noabort(i32 %261)
  %pgt_info.0.i.i689 = load ptr, ptr %pgt_info.0.in.i.i688, align 4
  %tobool2.not.i.i690 = icmp eq ptr %pgt_info.0.i.i689, null
  br i1 %tobool2.not.i.i690, label %for.cond.i.i691.get_pte.exit697_crit_edge, label %for.body.i.i694

for.cond.i.i691.get_pte.exit697_crit_edge:        ; preds = %for.cond.i.i691
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pte.exit697

for.body.i.i694:                                  ; preds = %for.cond.i.i691
  %shadow_addr.i.i692 = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i689, i32 0, i32 2
  %262 = ptrtoint ptr %shadow_addr.i.i692 to i32
  call void @__asan_load8_noabort(i32 %262)
  %263 = load i64, ptr %shadow_addr.i.i692, align 8
  %cmp.i.i693 = icmp eq i64 %263, %hop4_addr.0
  br i1 %cmp.i.i693, label %for.body.i.i694.get_pte.exit697_crit_edge, label %for.body.i.i694.for.cond.i.i691_crit_edge

for.body.i.i694.for.cond.i.i691_crit_edge:        ; preds = %for.body.i.i694
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i691

for.body.i.i694.get_pte.exit697_crit_edge:        ; preds = %for.body.i.i694
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pte.exit697

get_pte.exit697:                                  ; preds = %for.body.i.i694.get_pte.exit697_crit_edge, %for.cond.i.i691.get_pte.exit697_crit_edge
  %num_of_ptes.i695 = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i689, i32 0, i32 4
  %264 = ptrtoint ptr %num_of_ptes.i695 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %num_of_ptes.i695, align 4
  %inc.i696 = add i32 %265, 1
  store i32 %inc.i696, ptr %num_of_ptes.i695, align 4
  br label %cleanup206

if.else192:                                       ; preds = %if.end184
  %conv.i.i698 = trunc i64 %hop_addr.0.i368834 to i32
  %mul.i.i.i.i699 = mul i32 %conv.i.i698, 1640531527
  %shr.i.i.i700 = lshr i32 %mul.i.i.i.i699, 25
  %arrayidx.i.i701 = getelementptr %struct.hl_ctx, ptr %ctx, i32 0, i32 1, i32 %shr.i.i.i700
  br label %for.cond.i.i705

for.cond.i.i705:                                  ; preds = %for.body.i.i708.for.cond.i.i705_crit_edge, %if.else192
  %pgt_info.0.in.i.i702 = phi ptr [ %arrayidx.i.i701, %if.else192 ], [ %pgt_info.0.i.i703, %for.body.i.i708.for.cond.i.i705_crit_edge ]
  %266 = ptrtoint ptr %pgt_info.0.in.i.i702 to i32
  call void @__asan_load4_noabort(i32 %266)
  %pgt_info.0.i.i703 = load ptr, ptr %pgt_info.0.in.i.i702, align 4
  %tobool2.not.i.i704 = icmp eq ptr %pgt_info.0.i.i703, null
  br i1 %tobool2.not.i.i704, label %for.cond.i.i705.get_pte.exit711_crit_edge, label %for.body.i.i708

for.cond.i.i705.get_pte.exit711_crit_edge:        ; preds = %for.cond.i.i705
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pte.exit711

for.body.i.i708:                                  ; preds = %for.cond.i.i705
  %shadow_addr.i.i706 = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i703, i32 0, i32 2
  %267 = ptrtoint ptr %shadow_addr.i.i706 to i32
  call void @__asan_load8_noabort(i32 %267)
  %268 = load i64, ptr %shadow_addr.i.i706, align 8
  %cmp.i.i707 = icmp eq i64 %268, %hop_addr.0.i368834
  br i1 %cmp.i.i707, label %for.body.i.i708.get_pte.exit711_crit_edge, label %for.body.i.i708.for.cond.i.i705_crit_edge

for.body.i.i708.for.cond.i.i705_crit_edge:        ; preds = %for.body.i.i708
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i705

for.body.i.i708.get_pte.exit711_crit_edge:        ; preds = %for.body.i.i708
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pte.exit711

get_pte.exit711:                                  ; preds = %for.body.i.i708.get_pte.exit711_crit_edge, %for.cond.i.i705.get_pte.exit711_crit_edge
  %num_of_ptes.i709 = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i703, i32 0, i32 4
  %269 = ptrtoint ptr %num_of_ptes.i709 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %num_of_ptes.i709, align 4
  %inc.i710 = add i32 %270, 1
  store i32 %inc.i710, ptr %num_of_ptes.i709, align 4
  br label %cleanup206

err:                                              ; preds = %if.then153, %do.body141, %do.end138.err_crit_edge, %do.end62, %do.end, %get_alloc_next_hop_addr.exit385.err_crit_edge
  %hop4_new.2 = phi i8 [ %hop4_new.1, %do.end138.err_crit_edge ], [ %hop4_new.1, %if.then153 ], [ %frombool.i382, %get_alloc_next_hop_addr.exit385.err_crit_edge ], [ %hop4_new.1, %do.body141 ], [ %hop4_new.1, %do.end ], [ %hop4_new.1, %do.end62 ]
  %hop4_addr.1 = phi i64 [ %hop4_addr.0, %do.end138.err_crit_edge ], [ %hop4_addr.0, %if.then153 ], [ -1, %get_alloc_next_hop_addr.exit385.err_crit_edge ], [ %hop4_addr.0, %do.body141 ], [ %hop4_addr.0, %do.end ], [ %hop4_addr.0, %do.end62 ]
  %rc.1 = phi i32 [ -22, %do.end138.err_crit_edge ], [ -22, %if.then153 ], [ -12, %get_alloc_next_hop_addr.exit385.err_crit_edge ], [ -22, %do.body141 ], [ -22, %do.end ], [ -14, %do.end62 ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %hop4_new.2)
  %tobool194.not = icmp eq i8 %hop4_new.2, 0
  br i1 %tobool194.not, label %err.if.end196_crit_edge, label %if.then195

err.if.end196_crit_edge:                          ; preds = %err
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end196

if.then195:                                       ; preds = %err
  %conv.i.i712 = trunc i64 %hop4_addr.1 to i32
  %mul.i.i.i.i713 = mul i32 %conv.i.i712, 1640531527
  %shr.i.i.i714 = lshr i32 %mul.i.i.i.i713, 25
  %arrayidx.i.i715 = getelementptr %struct.hl_ctx, ptr %ctx, i32 0, i32 1, i32 %shr.i.i.i714
  br label %for.cond.i.i719

for.cond.i.i719:                                  ; preds = %for.body.i.i722.for.cond.i.i719_crit_edge, %if.then195
  %pgt_info.0.in.i.i716 = phi ptr [ %arrayidx.i.i715, %if.then195 ], [ %pgt_info.0.i.i717, %for.body.i.i722.for.cond.i.i719_crit_edge ]
  %271 = ptrtoint ptr %pgt_info.0.in.i.i716 to i32
  call void @__asan_load4_noabort(i32 %271)
  %pgt_info.0.i.i717 = load ptr, ptr %pgt_info.0.in.i.i716, align 4
  %tobool2.not.i.i718 = icmp eq ptr %pgt_info.0.i.i717, null
  br i1 %tobool2.not.i.i718, label %for.cond.i.i719.get_pgt_info.exit.i_crit_edge, label %for.body.i.i722

for.cond.i.i719.get_pgt_info.exit.i_crit_edge:    ; preds = %for.cond.i.i719
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pgt_info.exit.i

for.body.i.i722:                                  ; preds = %for.cond.i.i719
  %shadow_addr.i.i720 = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i717, i32 0, i32 2
  %272 = ptrtoint ptr %shadow_addr.i.i720 to i32
  call void @__asan_load8_noabort(i32 %272)
  %273 = load i64, ptr %shadow_addr.i.i720, align 8
  %cmp.i.i721 = icmp eq i64 %273, %hop4_addr.1
  br i1 %cmp.i.i721, label %for.body.i.i722.get_pgt_info.exit.i_crit_edge, label %for.body.i.i722.for.cond.i.i719_crit_edge

for.body.i.i722.for.cond.i.i719_crit_edge:        ; preds = %for.body.i.i722
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i719

for.body.i.i722.get_pgt_info.exit.i_crit_edge:    ; preds = %for.body.i.i722
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pgt_info.exit.i

get_pgt_info.exit.i:                              ; preds = %for.body.i.i722.get_pgt_info.exit.i_crit_edge, %for.cond.i.i719.get_pgt_info.exit.i_crit_edge
  %274 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %hdev1, align 4
  %mmu_priv.i.i = getelementptr inbounds %struct.hl_device, ptr %275, i32 0, i32 51
  %276 = ptrtoint ptr %mmu_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %mmu_priv.i.i, align 8
  %phys_addr.i.i723 = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i717, i32 0, i32 1
  %278 = ptrtoint ptr %phys_addr.i.i723 to i32
  call void @__asan_load8_noabort(i32 %278)
  %279 = load i64, ptr %phys_addr.i.i723, align 8
  %conv.i2.i = trunc i64 %279 to i32
  %mmu_hop_table_size.i.i724 = getelementptr inbounds %struct.hl_device, ptr %275, i32 0, i32 33, i32 33
  %280 = ptrtoint ptr %mmu_hop_table_size.i.i724 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %mmu_hop_table_size.i.i724, align 4
  tail call void @gen_pool_free_owner(ptr noundef %277, i32 noundef %conv.i2.i, i32 noundef %281, ptr noundef null) #9
  %pprev.i.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %pgt_info.0.i.i717, i32 0, i32 1
  %282 = ptrtoint ptr %pprev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %pprev.i.i.i.i.i, align 4
  %tobool.not.i.not.i.i.i.i = icmp eq ptr %283, null
  br i1 %tobool.not.i.not.i.i.i.i, label %get_pgt_info.exit.i.free_hop.exit_crit_edge, label %if.then.i.i.i.i

get_pgt_info.exit.i.free_hop.exit_crit_edge:      ; preds = %get_pgt_info.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_hop.exit

if.then.i.i.i.i:                                  ; preds = %get_pgt_info.exit.i
  %284 = ptrtoint ptr %pgt_info.0.i.i717 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %pgt_info.0.i.i717, align 4
  %286 = ptrtoint ptr %283 to i32
  call void @__asan_store4_noabort(i32 %286)
  store volatile ptr %285, ptr %283, align 4
  %tobool.not.i3.i.i.i.i = icmp eq ptr %285, null
  br i1 %tobool.not.i3.i.i.i.i, label %if.then.i.i.i.i.__hlist_del.exit.i.i.i.i_crit_edge, label %do.body13.i.i.i.i.i

if.then.i.i.i.i.__hlist_del.exit.i.i.i.i_crit_edge: ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__hlist_del.exit.i.i.i.i

do.body13.i.i.i.i.i:                              ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %pprev14.i.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %285, i32 0, i32 1
  %287 = ptrtoint ptr %pprev14.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %287)
  store volatile ptr %283, ptr %pprev14.i.i.i.i.i, align 4
  br label %__hlist_del.exit.i.i.i.i

__hlist_del.exit.i.i.i.i:                         ; preds = %do.body13.i.i.i.i.i, %if.then.i.i.i.i.__hlist_del.exit.i.i.i.i_crit_edge
  %288 = ptrtoint ptr %pgt_info.0.i.i717 to i32
  call void @__asan_store4_noabort(i32 %288)
  store ptr null, ptr %pgt_info.0.i.i717, align 4
  %289 = ptrtoint ptr %pprev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %289)
  store ptr null, ptr %pprev.i.i.i.i.i, align 4
  br label %free_hop.exit

free_hop.exit:                                    ; preds = %__hlist_del.exit.i.i.i.i, %get_pgt_info.exit.i.free_hop.exit_crit_edge
  %shadow_addr.i3.i = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i717, i32 0, i32 2
  %290 = ptrtoint ptr %shadow_addr.i3.i to i32
  call void @__asan_load8_noabort(i32 %290)
  %291 = load i64, ptr %shadow_addr.i3.i, align 8
  %conv2.i.i = trunc i64 %291 to i32
  %292 = inttoptr i32 %conv2.i.i to ptr
  tail call void @kfree(ptr noundef %292) #9
  tail call void @kfree(ptr noundef %pgt_info.0.i.i717) #9
  br label %if.end196

if.end196:                                        ; preds = %free_hop.exit, %err.if.end196_crit_edge, %get_alloc_next_hop_addr.exit369.if.end196_crit_edge
  %hop3_addr.0865 = phi i64 [ %hop_addr.0.i368834, %free_hop.exit ], [ %hop_addr.0.i368834, %err.if.end196_crit_edge ], [ -1, %get_alloc_next_hop_addr.exit369.if.end196_crit_edge ]
  %rc.1864 = phi i32 [ %rc.1, %free_hop.exit ], [ %rc.1, %err.if.end196_crit_edge ], [ -12, %get_alloc_next_hop_addr.exit369.if.end196_crit_edge ]
  %hop3_new.1863 = phi i8 [ %hop3_new.0833, %free_hop.exit ], [ %hop3_new.0833, %err.if.end196_crit_edge ], [ %frombool.i366, %get_alloc_next_hop_addr.exit369.if.end196_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %hop3_new.1863)
  %tobool197.not = icmp eq i8 %hop3_new.1863, 0
  br i1 %tobool197.not, label %if.end196.if.end199_crit_edge, label %if.then198

if.end196.if.end199_crit_edge:                    ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end199

if.then198:                                       ; preds = %if.end196
  %conv.i.i725 = trunc i64 %hop3_addr.0865 to i32
  %mul.i.i.i.i726 = mul i32 %conv.i.i725, 1640531527
  %shr.i.i.i727 = lshr i32 %mul.i.i.i.i726, 25
  %arrayidx.i.i728 = getelementptr %struct.hl_ctx, ptr %ctx, i32 0, i32 1, i32 %shr.i.i.i727
  br label %for.cond.i.i732

for.cond.i.i732:                                  ; preds = %for.body.i.i735.for.cond.i.i732_crit_edge, %if.then198
  %pgt_info.0.in.i.i729 = phi ptr [ %arrayidx.i.i728, %if.then198 ], [ %pgt_info.0.i.i730, %for.body.i.i735.for.cond.i.i732_crit_edge ]
  %293 = ptrtoint ptr %pgt_info.0.in.i.i729 to i32
  call void @__asan_load4_noabort(i32 %293)
  %pgt_info.0.i.i730 = load ptr, ptr %pgt_info.0.in.i.i729, align 4
  %tobool2.not.i.i731 = icmp eq ptr %pgt_info.0.i.i730, null
  br i1 %tobool2.not.i.i731, label %for.cond.i.i732.get_pgt_info.exit.i743_crit_edge, label %for.body.i.i735

for.cond.i.i732.get_pgt_info.exit.i743_crit_edge: ; preds = %for.cond.i.i732
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pgt_info.exit.i743

for.body.i.i735:                                  ; preds = %for.cond.i.i732
  %shadow_addr.i.i733 = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i730, i32 0, i32 2
  %294 = ptrtoint ptr %shadow_addr.i.i733 to i32
  call void @__asan_load8_noabort(i32 %294)
  %295 = load i64, ptr %shadow_addr.i.i733, align 8
  %cmp.i.i734 = icmp eq i64 %295, %hop3_addr.0865
  br i1 %cmp.i.i734, label %for.body.i.i735.get_pgt_info.exit.i743_crit_edge, label %for.body.i.i735.for.cond.i.i732_crit_edge

for.body.i.i735.for.cond.i.i732_crit_edge:        ; preds = %for.body.i.i735
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i732

for.body.i.i735.get_pgt_info.exit.i743_crit_edge: ; preds = %for.body.i.i735
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pgt_info.exit.i743

get_pgt_info.exit.i743:                           ; preds = %for.body.i.i735.get_pgt_info.exit.i743_crit_edge, %for.cond.i.i732.get_pgt_info.exit.i743_crit_edge
  %296 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %hdev1, align 4
  %mmu_priv.i.i737 = getelementptr inbounds %struct.hl_device, ptr %297, i32 0, i32 51
  %298 = ptrtoint ptr %mmu_priv.i.i737 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %mmu_priv.i.i737, align 8
  %phys_addr.i.i738 = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i730, i32 0, i32 1
  %300 = ptrtoint ptr %phys_addr.i.i738 to i32
  call void @__asan_load8_noabort(i32 %300)
  %301 = load i64, ptr %phys_addr.i.i738, align 8
  %conv.i2.i739 = trunc i64 %301 to i32
  %mmu_hop_table_size.i.i740 = getelementptr inbounds %struct.hl_device, ptr %297, i32 0, i32 33, i32 33
  %302 = ptrtoint ptr %mmu_hop_table_size.i.i740 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %mmu_hop_table_size.i.i740, align 4
  tail call void @gen_pool_free_owner(ptr noundef %299, i32 noundef %conv.i2.i739, i32 noundef %303, ptr noundef null) #9
  %pprev.i.i.i.i.i741 = getelementptr inbounds %struct.hlist_node, ptr %pgt_info.0.i.i730, i32 0, i32 1
  %304 = ptrtoint ptr %pprev.i.i.i.i.i741 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %pprev.i.i.i.i.i741, align 4
  %tobool.not.i.not.i.i.i.i742 = icmp eq ptr %305, null
  br i1 %tobool.not.i.not.i.i.i.i742, label %get_pgt_info.exit.i743.free_hop.exit751_crit_edge, label %if.then.i.i.i.i745

get_pgt_info.exit.i743.free_hop.exit751_crit_edge: ; preds = %get_pgt_info.exit.i743
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_hop.exit751

if.then.i.i.i.i745:                               ; preds = %get_pgt_info.exit.i743
  %306 = ptrtoint ptr %pgt_info.0.i.i730 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %pgt_info.0.i.i730, align 4
  %308 = ptrtoint ptr %305 to i32
  call void @__asan_store4_noabort(i32 %308)
  store volatile ptr %307, ptr %305, align 4
  %tobool.not.i3.i.i.i.i744 = icmp eq ptr %307, null
  br i1 %tobool.not.i3.i.i.i.i744, label %if.then.i.i.i.i745.__hlist_del.exit.i.i.i.i748_crit_edge, label %do.body13.i.i.i.i.i747

if.then.i.i.i.i745.__hlist_del.exit.i.i.i.i748_crit_edge: ; preds = %if.then.i.i.i.i745
  call void @__sanitizer_cov_trace_pc() #11
  br label %__hlist_del.exit.i.i.i.i748

do.body13.i.i.i.i.i747:                           ; preds = %if.then.i.i.i.i745
  call void @__sanitizer_cov_trace_pc() #11
  %pprev14.i.i.i.i.i746 = getelementptr inbounds %struct.hlist_node, ptr %307, i32 0, i32 1
  %309 = ptrtoint ptr %pprev14.i.i.i.i.i746 to i32
  call void @__asan_store4_noabort(i32 %309)
  store volatile ptr %305, ptr %pprev14.i.i.i.i.i746, align 4
  br label %__hlist_del.exit.i.i.i.i748

__hlist_del.exit.i.i.i.i748:                      ; preds = %do.body13.i.i.i.i.i747, %if.then.i.i.i.i745.__hlist_del.exit.i.i.i.i748_crit_edge
  %310 = ptrtoint ptr %pgt_info.0.i.i730 to i32
  call void @__asan_store4_noabort(i32 %310)
  store ptr null, ptr %pgt_info.0.i.i730, align 4
  %311 = ptrtoint ptr %pprev.i.i.i.i.i741 to i32
  call void @__asan_store4_noabort(i32 %311)
  store ptr null, ptr %pprev.i.i.i.i.i741, align 4
  br label %free_hop.exit751

free_hop.exit751:                                 ; preds = %__hlist_del.exit.i.i.i.i748, %get_pgt_info.exit.i743.free_hop.exit751_crit_edge
  %shadow_addr.i3.i749 = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i730, i32 0, i32 2
  %312 = ptrtoint ptr %shadow_addr.i3.i749 to i32
  call void @__asan_load8_noabort(i32 %312)
  %313 = load i64, ptr %shadow_addr.i3.i749, align 8
  %conv2.i.i750 = trunc i64 %313 to i32
  %314 = inttoptr i32 %conv2.i.i750 to ptr
  tail call void @kfree(ptr noundef %314) #9
  tail call void @kfree(ptr noundef %pgt_info.0.i.i730) #9
  br label %if.end199

if.end199:                                        ; preds = %free_hop.exit751, %if.end196.if.end199_crit_edge, %get_alloc_next_hop_addr.exit353.if.end199_crit_edge
  %hop2_new.1862877 = phi i8 [ %hop2_new.0826, %free_hop.exit751 ], [ %hop2_new.0826, %if.end196.if.end199_crit_edge ], [ %frombool.i350, %get_alloc_next_hop_addr.exit353.if.end199_crit_edge ]
  %rc.1864876 = phi i32 [ %rc.1864, %free_hop.exit751 ], [ %rc.1864, %if.end196.if.end199_crit_edge ], [ -12, %get_alloc_next_hop_addr.exit353.if.end199_crit_edge ]
  %hop2_addr.0866875 = phi i64 [ %hop_addr.0.i352827, %free_hop.exit751 ], [ %hop_addr.0.i352827, %if.end196.if.end199_crit_edge ], [ -1, %get_alloc_next_hop_addr.exit353.if.end199_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %hop2_new.1862877)
  %tobool200.not = icmp eq i8 %hop2_new.1862877, 0
  br i1 %tobool200.not, label %if.end199.if.end202_crit_edge, label %if.then201

if.end199.if.end202_crit_edge:                    ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end202

if.then201:                                       ; preds = %if.end199
  %conv.i.i752 = trunc i64 %hop2_addr.0866875 to i32
  %mul.i.i.i.i753 = mul i32 %conv.i.i752, 1640531527
  %shr.i.i.i754 = lshr i32 %mul.i.i.i.i753, 25
  %arrayidx.i.i755 = getelementptr %struct.hl_ctx, ptr %ctx, i32 0, i32 1, i32 %shr.i.i.i754
  br label %for.cond.i.i759

for.cond.i.i759:                                  ; preds = %for.body.i.i762.for.cond.i.i759_crit_edge, %if.then201
  %pgt_info.0.in.i.i756 = phi ptr [ %arrayidx.i.i755, %if.then201 ], [ %pgt_info.0.i.i757, %for.body.i.i762.for.cond.i.i759_crit_edge ]
  %315 = ptrtoint ptr %pgt_info.0.in.i.i756 to i32
  call void @__asan_load4_noabort(i32 %315)
  %pgt_info.0.i.i757 = load ptr, ptr %pgt_info.0.in.i.i756, align 4
  %tobool2.not.i.i758 = icmp eq ptr %pgt_info.0.i.i757, null
  br i1 %tobool2.not.i.i758, label %for.cond.i.i759.get_pgt_info.exit.i770_crit_edge, label %for.body.i.i762

for.cond.i.i759.get_pgt_info.exit.i770_crit_edge: ; preds = %for.cond.i.i759
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pgt_info.exit.i770

for.body.i.i762:                                  ; preds = %for.cond.i.i759
  %shadow_addr.i.i760 = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i757, i32 0, i32 2
  %316 = ptrtoint ptr %shadow_addr.i.i760 to i32
  call void @__asan_load8_noabort(i32 %316)
  %317 = load i64, ptr %shadow_addr.i.i760, align 8
  %cmp.i.i761 = icmp eq i64 %317, %hop2_addr.0866875
  br i1 %cmp.i.i761, label %for.body.i.i762.get_pgt_info.exit.i770_crit_edge, label %for.body.i.i762.for.cond.i.i759_crit_edge

for.body.i.i762.for.cond.i.i759_crit_edge:        ; preds = %for.body.i.i762
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i759

for.body.i.i762.get_pgt_info.exit.i770_crit_edge: ; preds = %for.body.i.i762
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pgt_info.exit.i770

get_pgt_info.exit.i770:                           ; preds = %for.body.i.i762.get_pgt_info.exit.i770_crit_edge, %for.cond.i.i759.get_pgt_info.exit.i770_crit_edge
  %318 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %hdev1, align 4
  %mmu_priv.i.i764 = getelementptr inbounds %struct.hl_device, ptr %319, i32 0, i32 51
  %320 = ptrtoint ptr %mmu_priv.i.i764 to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %mmu_priv.i.i764, align 8
  %phys_addr.i.i765 = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i757, i32 0, i32 1
  %322 = ptrtoint ptr %phys_addr.i.i765 to i32
  call void @__asan_load8_noabort(i32 %322)
  %323 = load i64, ptr %phys_addr.i.i765, align 8
  %conv.i2.i766 = trunc i64 %323 to i32
  %mmu_hop_table_size.i.i767 = getelementptr inbounds %struct.hl_device, ptr %319, i32 0, i32 33, i32 33
  %324 = ptrtoint ptr %mmu_hop_table_size.i.i767 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %mmu_hop_table_size.i.i767, align 4
  tail call void @gen_pool_free_owner(ptr noundef %321, i32 noundef %conv.i2.i766, i32 noundef %325, ptr noundef null) #9
  %pprev.i.i.i.i.i768 = getelementptr inbounds %struct.hlist_node, ptr %pgt_info.0.i.i757, i32 0, i32 1
  %326 = ptrtoint ptr %pprev.i.i.i.i.i768 to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %pprev.i.i.i.i.i768, align 4
  %tobool.not.i.not.i.i.i.i769 = icmp eq ptr %327, null
  br i1 %tobool.not.i.not.i.i.i.i769, label %get_pgt_info.exit.i770.free_hop.exit778_crit_edge, label %if.then.i.i.i.i772

get_pgt_info.exit.i770.free_hop.exit778_crit_edge: ; preds = %get_pgt_info.exit.i770
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_hop.exit778

if.then.i.i.i.i772:                               ; preds = %get_pgt_info.exit.i770
  %328 = ptrtoint ptr %pgt_info.0.i.i757 to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %pgt_info.0.i.i757, align 4
  %330 = ptrtoint ptr %327 to i32
  call void @__asan_store4_noabort(i32 %330)
  store volatile ptr %329, ptr %327, align 4
  %tobool.not.i3.i.i.i.i771 = icmp eq ptr %329, null
  br i1 %tobool.not.i3.i.i.i.i771, label %if.then.i.i.i.i772.__hlist_del.exit.i.i.i.i775_crit_edge, label %do.body13.i.i.i.i.i774

if.then.i.i.i.i772.__hlist_del.exit.i.i.i.i775_crit_edge: ; preds = %if.then.i.i.i.i772
  call void @__sanitizer_cov_trace_pc() #11
  br label %__hlist_del.exit.i.i.i.i775

do.body13.i.i.i.i.i774:                           ; preds = %if.then.i.i.i.i772
  call void @__sanitizer_cov_trace_pc() #11
  %pprev14.i.i.i.i.i773 = getelementptr inbounds %struct.hlist_node, ptr %329, i32 0, i32 1
  %331 = ptrtoint ptr %pprev14.i.i.i.i.i773 to i32
  call void @__asan_store4_noabort(i32 %331)
  store volatile ptr %327, ptr %pprev14.i.i.i.i.i773, align 4
  br label %__hlist_del.exit.i.i.i.i775

__hlist_del.exit.i.i.i.i775:                      ; preds = %do.body13.i.i.i.i.i774, %if.then.i.i.i.i772.__hlist_del.exit.i.i.i.i775_crit_edge
  %332 = ptrtoint ptr %pgt_info.0.i.i757 to i32
  call void @__asan_store4_noabort(i32 %332)
  store ptr null, ptr %pgt_info.0.i.i757, align 4
  %333 = ptrtoint ptr %pprev.i.i.i.i.i768 to i32
  call void @__asan_store4_noabort(i32 %333)
  store ptr null, ptr %pprev.i.i.i.i.i768, align 4
  br label %free_hop.exit778

free_hop.exit778:                                 ; preds = %__hlist_del.exit.i.i.i.i775, %get_pgt_info.exit.i770.free_hop.exit778_crit_edge
  %shadow_addr.i3.i776 = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i757, i32 0, i32 2
  %334 = ptrtoint ptr %shadow_addr.i3.i776 to i32
  call void @__asan_load8_noabort(i32 %334)
  %335 = load i64, ptr %shadow_addr.i3.i776, align 8
  %conv2.i.i777 = trunc i64 %335 to i32
  %336 = inttoptr i32 %conv2.i.i777 to ptr
  tail call void @kfree(ptr noundef %336) #9
  tail call void @kfree(ptr noundef %pgt_info.0.i.i757) #9
  br label %if.end202

if.end202:                                        ; preds = %free_hop.exit778, %if.end199.if.end202_crit_edge, %get_alloc_next_hop_addr.exit.if.end202_crit_edge
  %rc.1864876888 = phi i32 [ %rc.1864876, %free_hop.exit778 ], [ %rc.1864876, %if.end199.if.end202_crit_edge ], [ -12, %get_alloc_next_hop_addr.exit.if.end202_crit_edge ]
  %hop1_new.0818861878887 = phi i8 [ %hop1_new.0817, %free_hop.exit778 ], [ %hop1_new.0817, %if.end199.if.end202_crit_edge ], [ %frombool.i, %get_alloc_next_hop_addr.exit.if.end202_crit_edge ]
  %hop_addr.0.i822860879886 = phi i64 [ %hop_addr.0.i820, %free_hop.exit778 ], [ %hop_addr.0.i820, %if.end199.if.end202_crit_edge ], [ -1, %get_alloc_next_hop_addr.exit.if.end202_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %hop1_new.0818861878887)
  %tobool203.not = icmp eq i8 %hop1_new.0818861878887, 0
  br i1 %tobool203.not, label %if.end202.cleanup206_crit_edge, label %if.then204

if.end202.cleanup206_crit_edge:                   ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup206

if.then204:                                       ; preds = %if.end202
  %conv.i.i779 = trunc i64 %hop_addr.0.i822860879886 to i32
  %mul.i.i.i.i780 = mul i32 %conv.i.i779, 1640531527
  %shr.i.i.i781 = lshr i32 %mul.i.i.i.i780, 25
  %arrayidx.i.i782 = getelementptr %struct.hl_ctx, ptr %ctx, i32 0, i32 1, i32 %shr.i.i.i781
  br label %for.cond.i.i786

for.cond.i.i786:                                  ; preds = %for.body.i.i789.for.cond.i.i786_crit_edge, %if.then204
  %pgt_info.0.in.i.i783 = phi ptr [ %arrayidx.i.i782, %if.then204 ], [ %pgt_info.0.i.i784, %for.body.i.i789.for.cond.i.i786_crit_edge ]
  %337 = ptrtoint ptr %pgt_info.0.in.i.i783 to i32
  call void @__asan_load4_noabort(i32 %337)
  %pgt_info.0.i.i784 = load ptr, ptr %pgt_info.0.in.i.i783, align 4
  %tobool2.not.i.i785 = icmp eq ptr %pgt_info.0.i.i784, null
  br i1 %tobool2.not.i.i785, label %for.cond.i.i786.get_pgt_info.exit.i797_crit_edge, label %for.body.i.i789

for.cond.i.i786.get_pgt_info.exit.i797_crit_edge: ; preds = %for.cond.i.i786
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pgt_info.exit.i797

for.body.i.i789:                                  ; preds = %for.cond.i.i786
  %shadow_addr.i.i787 = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i784, i32 0, i32 2
  %338 = ptrtoint ptr %shadow_addr.i.i787 to i32
  call void @__asan_load8_noabort(i32 %338)
  %339 = load i64, ptr %shadow_addr.i.i787, align 8
  %cmp.i.i788 = icmp eq i64 %339, %hop_addr.0.i822860879886
  br i1 %cmp.i.i788, label %for.body.i.i789.get_pgt_info.exit.i797_crit_edge, label %for.body.i.i789.for.cond.i.i786_crit_edge

for.body.i.i789.for.cond.i.i786_crit_edge:        ; preds = %for.body.i.i789
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i786

for.body.i.i789.get_pgt_info.exit.i797_crit_edge: ; preds = %for.body.i.i789
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pgt_info.exit.i797

get_pgt_info.exit.i797:                           ; preds = %for.body.i.i789.get_pgt_info.exit.i797_crit_edge, %for.cond.i.i786.get_pgt_info.exit.i797_crit_edge
  %340 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %hdev1, align 4
  %mmu_priv.i.i791 = getelementptr inbounds %struct.hl_device, ptr %341, i32 0, i32 51
  %342 = ptrtoint ptr %mmu_priv.i.i791 to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %mmu_priv.i.i791, align 8
  %phys_addr.i.i792 = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i784, i32 0, i32 1
  %344 = ptrtoint ptr %phys_addr.i.i792 to i32
  call void @__asan_load8_noabort(i32 %344)
  %345 = load i64, ptr %phys_addr.i.i792, align 8
  %conv.i2.i793 = trunc i64 %345 to i32
  %mmu_hop_table_size.i.i794 = getelementptr inbounds %struct.hl_device, ptr %341, i32 0, i32 33, i32 33
  %346 = ptrtoint ptr %mmu_hop_table_size.i.i794 to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %mmu_hop_table_size.i.i794, align 4
  tail call void @gen_pool_free_owner(ptr noundef %343, i32 noundef %conv.i2.i793, i32 noundef %347, ptr noundef null) #9
  %pprev.i.i.i.i.i795 = getelementptr inbounds %struct.hlist_node, ptr %pgt_info.0.i.i784, i32 0, i32 1
  %348 = ptrtoint ptr %pprev.i.i.i.i.i795 to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %pprev.i.i.i.i.i795, align 4
  %tobool.not.i.not.i.i.i.i796 = icmp eq ptr %349, null
  br i1 %tobool.not.i.not.i.i.i.i796, label %get_pgt_info.exit.i797.free_hop.exit805_crit_edge, label %if.then.i.i.i.i799

get_pgt_info.exit.i797.free_hop.exit805_crit_edge: ; preds = %get_pgt_info.exit.i797
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_hop.exit805

if.then.i.i.i.i799:                               ; preds = %get_pgt_info.exit.i797
  %350 = ptrtoint ptr %pgt_info.0.i.i784 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %pgt_info.0.i.i784, align 4
  %352 = ptrtoint ptr %349 to i32
  call void @__asan_store4_noabort(i32 %352)
  store volatile ptr %351, ptr %349, align 4
  %tobool.not.i3.i.i.i.i798 = icmp eq ptr %351, null
  br i1 %tobool.not.i3.i.i.i.i798, label %if.then.i.i.i.i799.__hlist_del.exit.i.i.i.i802_crit_edge, label %do.body13.i.i.i.i.i801

if.then.i.i.i.i799.__hlist_del.exit.i.i.i.i802_crit_edge: ; preds = %if.then.i.i.i.i799
  call void @__sanitizer_cov_trace_pc() #11
  br label %__hlist_del.exit.i.i.i.i802

do.body13.i.i.i.i.i801:                           ; preds = %if.then.i.i.i.i799
  call void @__sanitizer_cov_trace_pc() #11
  %pprev14.i.i.i.i.i800 = getelementptr inbounds %struct.hlist_node, ptr %351, i32 0, i32 1
  %353 = ptrtoint ptr %pprev14.i.i.i.i.i800 to i32
  call void @__asan_store4_noabort(i32 %353)
  store volatile ptr %349, ptr %pprev14.i.i.i.i.i800, align 4
  br label %__hlist_del.exit.i.i.i.i802

__hlist_del.exit.i.i.i.i802:                      ; preds = %do.body13.i.i.i.i.i801, %if.then.i.i.i.i799.__hlist_del.exit.i.i.i.i802_crit_edge
  %354 = ptrtoint ptr %pgt_info.0.i.i784 to i32
  call void @__asan_store4_noabort(i32 %354)
  store ptr null, ptr %pgt_info.0.i.i784, align 4
  %355 = ptrtoint ptr %pprev.i.i.i.i.i795 to i32
  call void @__asan_store4_noabort(i32 %355)
  store ptr null, ptr %pprev.i.i.i.i.i795, align 4
  br label %free_hop.exit805

free_hop.exit805:                                 ; preds = %__hlist_del.exit.i.i.i.i802, %get_pgt_info.exit.i797.free_hop.exit805_crit_edge
  %shadow_addr.i3.i803 = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i784, i32 0, i32 2
  %356 = ptrtoint ptr %shadow_addr.i3.i803 to i32
  call void @__asan_load8_noabort(i32 %356)
  %357 = load i64, ptr %shadow_addr.i3.i803, align 8
  %conv2.i.i804 = trunc i64 %357 to i32
  %358 = inttoptr i32 %conv2.i.i804 to ptr
  tail call void @kfree(ptr noundef %358) #9
  tail call void @kfree(ptr noundef %pgt_info.0.i.i784) #9
  br label %cleanup206

cleanup206:                                       ; preds = %free_hop.exit805, %if.end202.cleanup206_crit_edge, %get_pte.exit711, %get_pte.exit697
  %retval.0 = phi i32 [ 0, %get_pte.exit711 ], [ 0, %get_pte.exit697 ], [ %rc.1864876888, %free_hop.exit805 ], [ %rc.1864876888, %if.end202.cleanup206_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_hl_mmu_v1_unmap(ptr noundef readonly %ctx, i64 noundef %virt_addr, i1 noundef zeroext %is_dram_addr) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hdev1 = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 3
  %0 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev1, align 4
  %dmmu = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 4
  %pmmu = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 5
  %cond = select i1 %is_dram_addr, ptr %dmmu, ptr %pmmu
  %mmu_shadow_hop0.i = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 51, i32 0, i32 1
  %2 = ptrtoint ptr %mmu_shadow_hop0.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmu_shadow_hop0.i, align 4
  %4 = ptrtoint ptr %3 to i32
  %conv.i = zext i32 %4 to i64
  %asid.i = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 21
  %5 = ptrtoint ptr %asid.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %asid.i, align 8
  %mmu_hop_table_size.i = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 33
  %7 = ptrtoint ptr %mmu_hop_table_size.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mmu_hop_table_size.i, align 4
  %mul.i = mul i32 %8, %6
  %conv2.i = zext i32 %mul.i to i64
  %add.i = add nuw nsw i64 %conv2.i, %conv.i
  %hop0_mask.i = getelementptr inbounds %struct.hl_mmu_properties, ptr %cond, i32 0, i32 8
  %9 = ptrtoint ptr %hop0_mask.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %hop0_mask.i, align 8
  %hop0_shift.i = getelementptr inbounds %struct.hl_mmu_properties, ptr %cond, i32 0, i32 2
  %11 = ptrtoint ptr %hop0_shift.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %hop0_shift.i, align 8
  %mmu_pte_size.i.i = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 32
  %13 = ptrtoint ptr %mmu_pte_size.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mmu_pte_size.i.i, align 8
  %conv.i.i = zext i32 %14 to i64
  %and.i.i = and i64 %10, %virt_addr
  %shr.i.i = lshr i64 %and.i.i, %12
  %mul.i.i = mul i64 %shr.i.i, %conv.i.i
  %add.i.i = add i64 %mul.i.i, %add.i
  %conv = trunc i64 %add.i.i to i32
  %15 = inttoptr i32 %conv to ptr
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %15, align 8
  %and.i = and i64 %17, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  %and1.i = and i64 %17, -4096
  %retval.0.i = select i1 %tobool.not.i, i64 -1, i64 %and1.i
  br i1 %tobool.not.i, label %entry.do.end96_crit_edge, label %if.end

entry.do.end96_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end96

if.end:                                           ; preds = %entry
  %hop1_mask.i = getelementptr inbounds %struct.hl_mmu_properties, ptr %cond, i32 0, i32 9
  %18 = ptrtoint ptr %hop1_mask.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %hop1_mask.i, align 8
  %hop1_shift.i = getelementptr inbounds %struct.hl_mmu_properties, ptr %cond, i32 0, i32 3
  %20 = ptrtoint ptr %hop1_shift.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %hop1_shift.i, align 8
  %and.i.i193 = and i64 %19, %virt_addr
  %shr.i.i194 = lshr i64 %and.i.i193, %21
  %mul.i.i195 = mul i64 %shr.i.i194, %conv.i.i
  %add.i.i196 = add i64 %mul.i.i195, %retval.0.i
  %conv6 = trunc i64 %add.i.i196 to i32
  %22 = inttoptr i32 %conv6 to ptr
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %22, align 8
  %and.i197 = and i64 %24, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i197)
  %tobool.not.i198 = icmp eq i64 %and.i197, 0
  %and1.i199 = and i64 %24, -4096
  %retval.0.i200 = select i1 %tobool.not.i198, i64 -1, i64 %and1.i199
  br i1 %tobool.not.i198, label %if.end.do.end96_crit_edge, label %if.end11

if.end.do.end96_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end96

if.end11:                                         ; preds = %if.end
  %hop2_mask.i = getelementptr inbounds %struct.hl_mmu_properties, ptr %cond, i32 0, i32 10
  %25 = ptrtoint ptr %hop2_mask.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %hop2_mask.i, align 8
  %hop2_shift.i = getelementptr inbounds %struct.hl_mmu_properties, ptr %cond, i32 0, i32 4
  %27 = ptrtoint ptr %hop2_shift.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %hop2_shift.i, align 8
  %and.i.i204 = and i64 %26, %virt_addr
  %shr.i.i205 = lshr i64 %and.i.i204, %28
  %mul.i.i206 = mul i64 %shr.i.i205, %conv.i.i
  %add.i.i207 = add i64 %mul.i.i206, %retval.0.i200
  %conv13 = trunc i64 %add.i.i207 to i32
  %29 = inttoptr i32 %conv13 to ptr
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %29, align 8
  %and.i208 = and i64 %31, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i208)
  %tobool.not.i209 = icmp eq i64 %and.i208, 0
  %and1.i210 = and i64 %31, -4096
  %retval.0.i211 = select i1 %tobool.not.i209, i64 -1, i64 %and1.i210
  br i1 %tobool.not.i209, label %if.end11.do.end96_crit_edge, label %if.end18

if.end11.do.end96_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end96

if.end18:                                         ; preds = %if.end11
  %hop3_mask.i = getelementptr inbounds %struct.hl_mmu_properties, ptr %cond, i32 0, i32 11
  %32 = ptrtoint ptr %hop3_mask.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %hop3_mask.i, align 8
  %hop3_shift.i = getelementptr inbounds %struct.hl_mmu_properties, ptr %cond, i32 0, i32 5
  %34 = ptrtoint ptr %hop3_shift.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %hop3_shift.i, align 8
  %and.i.i215 = and i64 %33, %virt_addr
  %shr.i.i216 = lshr i64 %and.i.i215, %35
  %mul.i.i217 = mul i64 %shr.i.i216, %conv.i.i
  %add.i.i218 = add i64 %mul.i.i217, %retval.0.i211
  %conv20 = trunc i64 %add.i.i218 to i32
  %36 = inttoptr i32 %conv20 to ptr
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %36, align 8
  %last_mask = getelementptr inbounds %struct.hl_mmu_properties, ptr %cond, i32 0, i32 14
  %39 = ptrtoint ptr %last_mask to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %last_mask, align 8
  %and = and i64 %40, %38
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool21.not = icmp eq i64 %and, 0
  %41 = select i1 %is_dram_addr, i1 %tobool21.not, i1 false
  br i1 %41, label %do.end, label %if.end27

do.end:                                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %42 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.38) #12
  br label %cleanup98

if.end27:                                         ; preds = %if.end18
  br i1 %tobool21.not, label %if.then29, label %if.end27.if.end37_crit_edge

if.end27.if.end37_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.then29:                                        ; preds = %if.end27
  %and.i219 = and i64 %38, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i219)
  %tobool.not.i220 = icmp eq i64 %and.i219, 0
  br i1 %tobool.not.i220, label %if.then29.do.end96_crit_edge, label %if.end34

if.then29.do.end96_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end96

if.end34:                                         ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  %and1.i221 = and i64 %38, -4096
  %hop4_mask.i = getelementptr inbounds %struct.hl_mmu_properties, ptr %cond, i32 0, i32 12
  %44 = ptrtoint ptr %hop4_mask.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %hop4_mask.i, align 8
  %hop4_shift.i = getelementptr inbounds %struct.hl_mmu_properties, ptr %cond, i32 0, i32 6
  %46 = ptrtoint ptr %hop4_shift.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %hop4_shift.i, align 8
  %and.i.i226 = and i64 %45, %virt_addr
  %shr.i.i227 = lshr i64 %and.i.i226, %47
  %mul.i.i228 = mul i64 %shr.i.i227, %conv.i.i
  %add.i.i229 = add i64 %mul.i.i228, %and1.i221
  %conv36 = trunc i64 %add.i.i229 to i32
  %48 = inttoptr i32 %conv36 to ptr
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %48, align 8
  br label %if.end37

if.end37:                                         ; preds = %if.end34, %if.end27.if.end37_crit_edge
  %hop4_addr.0 = phi i64 [ 0, %if.end27.if.end37_crit_edge ], [ %and1.i221, %if.end34 ]
  %hop4_pte_addr.0 = phi i64 [ 0, %if.end27.if.end37_crit_edge ], [ %add.i.i229, %if.end34 ]
  %curr_pte.0 = phi i64 [ %38, %if.end27.if.end37_crit_edge ], [ %50, %if.end34 ]
  %dram_default_page_mapping = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 83
  %51 = ptrtoint ptr %dram_default_page_mapping to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %dram_default_page_mapping, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool39.not = icmp ne i8 %52, 0
  %53 = and i1 %tobool39.not, %is_dram_addr
  br i1 %53, label %if.then43, label %if.else

if.then43:                                        ; preds = %if.end37
  %mmu_dram_default_page_addr = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 24
  %54 = ptrtoint ptr %mmu_dram_default_page_addr to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %mmu_dram_default_page_addr, align 8
  %and44 = and i64 %55, -4096
  %or = or i64 %40, %and44
  %or46 = or i64 %or, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %curr_pte.0, i64 %or46)
  %cmp47 = icmp eq i64 %curr_pte.0, %or46
  br i1 %cmp47, label %if.then43.do.end96.sink.split_crit_edge, label %if.end54

if.then43.do.end96.sink.split_crit_edge:          ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end96.sink.split

if.end54:                                         ; preds = %if.then43
  %and55 = and i64 %curr_pte.0, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and55)
  %tobool56.not = icmp eq i64 %and55, 0
  br i1 %tobool56.not, label %if.end54.do.end96.sink.split_crit_edge, label %if.end62

if.end54.do.end96.sink.split_crit_edge:           ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end96.sink.split

if.end62:                                         ; preds = %if.end54
  %asic_funcs.i = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 34
  %56 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %asic_funcs.i, align 8
  %write_pte.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %57, i32 0, i32 41
  %58 = ptrtoint ptr %write_pte.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %write_pte.i, align 4
  %sub.i.i = add i32 %8, -1
  %conv.i.i231 = zext i32 %sub.i.i to i64
  %neg.i.i = xor i64 %conv.i.i231, -1
  %and.i.i232 = and i64 %add.i.i218, %neg.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i232, i64 %add.i)
  %cmp.not.i.i = icmp eq i64 %and.i.i232, %add.i
  br i1 %cmp.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end62
  %conv.i11.i.i = trunc i64 %and.i.i232 to i32
  %mul.i.i.i.i.i = mul i32 %conv.i11.i.i, 1640531527
  %shr.i.i.i.i = lshr i32 %mul.i.i.i.i.i, 25
  %arrayidx.i.i.i = getelementptr %struct.hl_ctx, ptr %ctx, i32 0, i32 1, i32 %shr.i.i.i.i
  br label %for.cond.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i.for.cond.i.i.i_crit_edge, %if.then.i.i
  %pgt_info.0.in.i.i.i = phi ptr [ %arrayidx.i.i.i, %if.then.i.i ], [ %pgt_info.0.i.i.i, %for.body.i.i.i.for.cond.i.i.i_crit_edge ]
  %60 = ptrtoint ptr %pgt_info.0.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %pgt_info.0.i.i.i = load ptr, ptr %pgt_info.0.in.i.i.i, align 4
  %tobool2.not.i.i.i = icmp eq ptr %pgt_info.0.i.i.i, null
  br i1 %tobool2.not.i.i.i, label %for.cond.i.i.i.get_pgt_info.exit.i.i_crit_edge, label %for.body.i.i.i

for.cond.i.i.i.get_pgt_info.exit.i.i_crit_edge:   ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pgt_info.exit.i.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i
  %shadow_addr.i.i.i = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i.i, i32 0, i32 2
  %61 = ptrtoint ptr %shadow_addr.i.i.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %shadow_addr.i.i.i, align 8
  %cmp.i.i.i = icmp eq i64 %62, %and.i.i232
  br i1 %cmp.i.i.i, label %for.body.i.i.i.get_pgt_info.exit.i.i_crit_edge, label %for.body.i.i.i.for.cond.i.i.i_crit_edge

for.body.i.i.i.for.cond.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i.i

for.body.i.i.i.get_pgt_info.exit.i.i_crit_edge:   ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pgt_info.exit.i.i

get_pgt_info.exit.i.i:                            ; preds = %for.body.i.i.i.get_pgt_info.exit.i.i_crit_edge, %for.cond.i.i.i.get_pgt_info.exit.i.i_crit_edge
  %phys_addr.i.i = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i.i, i32 0, i32 1
  %63 = ptrtoint ptr %phys_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %phys_addr.i.i, align 8
  br label %write_final_pte.exit

if.else.i.i:                                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  %mmu_pgt_addr.i.i.i = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 23
  %65 = ptrtoint ptr %mmu_pgt_addr.i.i.i to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %mmu_pgt_addr.i.i.i, align 8
  %add.i17.i.i = add i64 %66, %conv2.i
  br label %write_final_pte.exit

write_final_pte.exit:                             ; preds = %if.else.i.i, %get_pgt_info.exit.i.i
  %phys_hop_addr.0.i.i = phi i64 [ %64, %get_pgt_info.exit.i.i ], [ %add.i17.i.i, %if.else.i.i ]
  %and1.i.i = and i64 %add.i.i218, %conv.i.i231
  %add.i.i233 = add i64 %phys_hop_addr.0.i.i, %and1.i.i
  tail call void %59(ptr noundef %1, i64 noundef %add.i.i233, i64 noundef %or46) #9
  %67 = ptrtoint ptr %36 to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 %or46, ptr %36, align 8
  %conv.i.i235 = trunc i64 %retval.0.i211 to i32
  %mul.i.i.i.i = mul i32 %conv.i.i235, 1640531527
  %shr.i.i.i = lshr i32 %mul.i.i.i.i, 25
  %arrayidx.i.i = getelementptr %struct.hl_ctx, ptr %ctx, i32 0, i32 1, i32 %shr.i.i.i
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %write_final_pte.exit
  %pgt_info.0.in.i.i = phi ptr [ %arrayidx.i.i, %write_final_pte.exit ], [ %pgt_info.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %68 = ptrtoint ptr %pgt_info.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %pgt_info.0.i.i = load ptr, ptr %pgt_info.0.in.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %pgt_info.0.i.i, null
  br i1 %tobool2.not.i.i, label %for.cond.i.i.get_pgt_info.exit.i_crit_edge, label %for.body.i.i

for.cond.i.i.get_pgt_info.exit.i_crit_edge:       ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pgt_info.exit.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %shadow_addr.i.i = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i, i32 0, i32 2
  %69 = ptrtoint ptr %shadow_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %shadow_addr.i.i, align 8
  %cmp.i.i = icmp eq i64 %70, %retval.0.i211
  br i1 %cmp.i.i, label %for.body.i.i.get_pgt_info.exit.i_crit_edge, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i

for.body.i.i.get_pgt_info.exit.i_crit_edge:       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pgt_info.exit.i

get_pgt_info.exit.i:                              ; preds = %for.body.i.i.get_pgt_info.exit.i_crit_edge, %for.cond.i.i.get_pgt_info.exit.i_crit_edge
  %num_of_ptes.i = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i, i32 0, i32 4
  %71 = ptrtoint ptr %num_of_ptes.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %num_of_ptes.i, align 4
  %dec.i = add i32 %72, -1
  store i32 %dec.i, ptr %num_of_ptes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool.not.i236 = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i236, label %if.then.i, label %get_pgt_info.exit.i.cleanup98_crit_edge

get_pgt_info.exit.i.cleanup98_crit_edge:          ; preds = %get_pgt_info.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup98

if.then.i:                                        ; preds = %get_pgt_info.exit.i
  %73 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %hdev1, align 4
  %mmu_priv.i.i = getelementptr inbounds %struct.hl_device, ptr %74, i32 0, i32 51
  %75 = ptrtoint ptr %mmu_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %mmu_priv.i.i, align 8
  %phys_addr.i.i237 = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i, i32 0, i32 1
  %77 = ptrtoint ptr %phys_addr.i.i237 to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %phys_addr.i.i237, align 8
  %conv.i6.i = trunc i64 %78 to i32
  %mmu_hop_table_size.i.i238 = getelementptr inbounds %struct.hl_device, ptr %74, i32 0, i32 33, i32 33
  %79 = ptrtoint ptr %mmu_hop_table_size.i.i238 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %mmu_hop_table_size.i.i238, align 4
  tail call void @gen_pool_free_owner(ptr noundef %76, i32 noundef %conv.i6.i, i32 noundef %80, ptr noundef null) #9
  %pprev.i.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %pgt_info.0.i.i, i32 0, i32 1
  %81 = ptrtoint ptr %pprev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %pprev.i.i.i.i.i, align 4
  %tobool.not.i.not.i.i.i.i = icmp eq ptr %82, null
  br i1 %tobool.not.i.not.i.i.i.i, label %if.then.i._free_hop.exit.i_crit_edge, label %if.then.i.i.i.i

if.then.i._free_hop.exit.i_crit_edge:             ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %_free_hop.exit.i

if.then.i.i.i.i:                                  ; preds = %if.then.i
  %83 = ptrtoint ptr %pgt_info.0.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %pgt_info.0.i.i, align 4
  %85 = ptrtoint ptr %82 to i32
  call void @__asan_store4_noabort(i32 %85)
  store volatile ptr %84, ptr %82, align 4
  %tobool.not.i3.i.i.i.i = icmp eq ptr %84, null
  br i1 %tobool.not.i3.i.i.i.i, label %if.then.i.i.i.i.__hlist_del.exit.i.i.i.i_crit_edge, label %do.body13.i.i.i.i.i

if.then.i.i.i.i.__hlist_del.exit.i.i.i.i_crit_edge: ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__hlist_del.exit.i.i.i.i

do.body13.i.i.i.i.i:                              ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %pprev14.i.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %84, i32 0, i32 1
  %86 = ptrtoint ptr %pprev14.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store volatile ptr %82, ptr %pprev14.i.i.i.i.i, align 4
  br label %__hlist_del.exit.i.i.i.i

__hlist_del.exit.i.i.i.i:                         ; preds = %do.body13.i.i.i.i.i, %if.then.i.i.i.i.__hlist_del.exit.i.i.i.i_crit_edge
  %87 = ptrtoint ptr %pgt_info.0.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr null, ptr %pgt_info.0.i.i, align 4
  %88 = ptrtoint ptr %pprev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr null, ptr %pprev.i.i.i.i.i, align 4
  br label %_free_hop.exit.i

_free_hop.exit.i:                                 ; preds = %__hlist_del.exit.i.i.i.i, %if.then.i._free_hop.exit.i_crit_edge
  %shadow_addr.i7.i = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i, i32 0, i32 2
  %89 = ptrtoint ptr %shadow_addr.i7.i to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %shadow_addr.i7.i, align 8
  %conv2.i.i = trunc i64 %90 to i32
  %91 = inttoptr i32 %conv2.i.i to ptr
  tail call void @kfree(ptr noundef %91) #9
  tail call void @kfree(ptr noundef %pgt_info.0.i.i) #9
  br label %cleanup98

if.else:                                          ; preds = %if.end37
  %and64 = and i64 %curr_pte.0, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and64)
  %tobool65.not = icmp eq i64 %and64, 0
  br i1 %tobool65.not, label %if.else.do.end96_crit_edge, label %if.end67

if.else.do.end96_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end96

if.end67:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %hop4_addr.0)
  %tobool68.not = icmp eq i64 %hop4_addr.0, 0
  %asic_funcs.i.i277 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 34
  %92 = ptrtoint ptr %asic_funcs.i.i277 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %asic_funcs.i.i277, align 8
  %write_pte.i.i278 = getelementptr inbounds %struct.hl_asic_funcs, ptr %93, i32 0, i32 41
  %94 = ptrtoint ptr %write_pte.i.i278 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %write_pte.i.i278, align 4
  %sub.i.i.i280 = add i32 %8, -1
  %conv.i.i.i281 = zext i32 %sub.i.i.i280 to i64
  %neg.i.i.i282 = xor i64 %conv.i.i.i281, -1
  br i1 %tobool68.not, label %if.else70, label %if.then69

if.then69:                                        ; preds = %if.end67
  %and.i.i.i = and i64 %hop4_pte_addr.0, %neg.i.i.i282
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i.i, i64 %add.i)
  %cmp.not.i.i.i = icmp eq i64 %and.i.i.i, %add.i
  br i1 %cmp.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.then69
  %conv.i11.i.i.i = trunc i64 %and.i.i.i to i32
  %mul.i.i.i.i.i.i = mul i32 %conv.i11.i.i.i, 1640531527
  %shr.i.i.i.i.i = lshr i32 %mul.i.i.i.i.i.i, 25
  %arrayidx.i.i.i.i = getelementptr %struct.hl_ctx, ptr %ctx, i32 0, i32 1, i32 %shr.i.i.i.i.i
  br label %for.cond.i.i.i.i

for.cond.i.i.i.i:                                 ; preds = %for.body.i.i.i.i.for.cond.i.i.i.i_crit_edge, %if.then.i.i.i
  %pgt_info.0.in.i.i.i.i = phi ptr [ %arrayidx.i.i.i.i, %if.then.i.i.i ], [ %pgt_info.0.i.i.i.i, %for.body.i.i.i.i.for.cond.i.i.i.i_crit_edge ]
  %96 = ptrtoint ptr %pgt_info.0.in.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %pgt_info.0.i.i.i.i = load ptr, ptr %pgt_info.0.in.i.i.i.i, align 4
  %tobool2.not.i.i.i.i = icmp eq ptr %pgt_info.0.i.i.i.i, null
  br i1 %tobool2.not.i.i.i.i, label %for.cond.i.i.i.i.get_pgt_info.exit.i.i.i_crit_edge, label %for.body.i.i.i.i

for.cond.i.i.i.i.get_pgt_info.exit.i.i.i_crit_edge: ; preds = %for.cond.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pgt_info.exit.i.i.i

for.body.i.i.i.i:                                 ; preds = %for.cond.i.i.i.i
  %shadow_addr.i.i.i.i = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i.i.i, i32 0, i32 2
  %97 = ptrtoint ptr %shadow_addr.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %shadow_addr.i.i.i.i, align 8
  %cmp.i.i.i.i = icmp eq i64 %98, %and.i.i.i
  br i1 %cmp.i.i.i.i, label %for.body.i.i.i.i.get_pgt_info.exit.i.i.i_crit_edge, label %for.body.i.i.i.i.for.cond.i.i.i.i_crit_edge

for.body.i.i.i.i.for.cond.i.i.i.i_crit_edge:      ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i.i.i

for.body.i.i.i.i.get_pgt_info.exit.i.i.i_crit_edge: ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pgt_info.exit.i.i.i

get_pgt_info.exit.i.i.i:                          ; preds = %for.body.i.i.i.i.get_pgt_info.exit.i.i.i_crit_edge, %for.cond.i.i.i.i.get_pgt_info.exit.i.i.i_crit_edge
  %phys_addr.i.i.i = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i.i.i, i32 0, i32 1
  %99 = ptrtoint ptr %phys_addr.i.i.i to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %phys_addr.i.i.i, align 8
  br label %clear_pte.exit

if.else.i.i.i:                                    ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #11
  %mmu_pgt_addr.i.i.i.i = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 23
  %101 = ptrtoint ptr %mmu_pgt_addr.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %mmu_pgt_addr.i.i.i.i, align 8
  %add.i17.i.i.i = add i64 %102, %conv2.i
  br label %clear_pte.exit

clear_pte.exit:                                   ; preds = %if.else.i.i.i, %get_pgt_info.exit.i.i.i
  %phys_hop_addr.0.i.i.i = phi i64 [ %100, %get_pgt_info.exit.i.i.i ], [ %add.i17.i.i.i, %if.else.i.i.i ]
  %and1.i.i.i = and i64 %hop4_pte_addr.0, %conv.i.i.i281
  %add.i.i.i242 = add i64 %phys_hop_addr.0.i.i.i, %and1.i.i.i
  tail call void %95(ptr noundef %1, i64 noundef %add.i.i.i242, i64 noundef 0) #9
  %conv.i.i243 = trunc i64 %hop4_pte_addr.0 to i32
  %103 = inttoptr i32 %conv.i.i243 to ptr
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_store8_noabort(i32 %104)
  store i64 0, ptr %103, align 8
  %conv.i.i244 = trunc i64 %hop4_addr.0 to i32
  %mul.i.i.i.i245 = mul i32 %conv.i.i244, 1640531527
  %shr.i.i.i246 = lshr i32 %mul.i.i.i.i245, 25
  %arrayidx.i.i247 = getelementptr %struct.hl_ctx, ptr %ctx, i32 0, i32 1, i32 %shr.i.i.i246
  br label %for.cond.i.i251

for.cond.i.i251:                                  ; preds = %for.body.i.i254.for.cond.i.i251_crit_edge, %clear_pte.exit
  %pgt_info.0.in.i.i248 = phi ptr [ %arrayidx.i.i247, %clear_pte.exit ], [ %pgt_info.0.i.i249, %for.body.i.i254.for.cond.i.i251_crit_edge ]
  %105 = ptrtoint ptr %pgt_info.0.in.i.i248 to i32
  call void @__asan_load4_noabort(i32 %105)
  %pgt_info.0.i.i249 = load ptr, ptr %pgt_info.0.in.i.i248, align 4
  %tobool2.not.i.i250 = icmp eq ptr %pgt_info.0.i.i249, null
  br i1 %tobool2.not.i.i250, label %for.cond.i.i251.get_pgt_info.exit.i258_crit_edge, label %for.body.i.i254

for.cond.i.i251.get_pgt_info.exit.i258_crit_edge: ; preds = %for.cond.i.i251
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pgt_info.exit.i258

for.body.i.i254:                                  ; preds = %for.cond.i.i251
  %shadow_addr.i.i252 = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i249, i32 0, i32 2
  %106 = ptrtoint ptr %shadow_addr.i.i252 to i32
  call void @__asan_load8_noabort(i32 %106)
  %107 = load i64, ptr %shadow_addr.i.i252, align 8
  %cmp.i.i253 = icmp eq i64 %107, %hop4_addr.0
  br i1 %cmp.i.i253, label %for.body.i.i254.get_pgt_info.exit.i258_crit_edge, label %for.body.i.i254.for.cond.i.i251_crit_edge

for.body.i.i254.for.cond.i.i251_crit_edge:        ; preds = %for.body.i.i254
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i251

for.body.i.i254.get_pgt_info.exit.i258_crit_edge: ; preds = %for.body.i.i254
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pgt_info.exit.i258

get_pgt_info.exit.i258:                           ; preds = %for.body.i.i254.get_pgt_info.exit.i258_crit_edge, %for.cond.i.i251.get_pgt_info.exit.i258_crit_edge
  %num_of_ptes.i255 = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i249, i32 0, i32 4
  %108 = ptrtoint ptr %num_of_ptes.i255 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %num_of_ptes.i255, align 4
  %dec.i256 = add i32 %109, -1
  store i32 %dec.i256, ptr %num_of_ptes.i255, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i256)
  %tobool.not.i257 = icmp eq i32 %dec.i256, 0
  br i1 %tobool.not.i257, label %if.then.i266, label %put_pte.exit275

if.then.i266:                                     ; preds = %get_pgt_info.exit.i258
  %110 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %hdev1, align 4
  %mmu_priv.i.i260 = getelementptr inbounds %struct.hl_device, ptr %111, i32 0, i32 51
  %112 = ptrtoint ptr %mmu_priv.i.i260 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %mmu_priv.i.i260, align 8
  %phys_addr.i.i261 = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i249, i32 0, i32 1
  %114 = ptrtoint ptr %phys_addr.i.i261 to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %phys_addr.i.i261, align 8
  %conv.i6.i262 = trunc i64 %115 to i32
  %mmu_hop_table_size.i.i263 = getelementptr inbounds %struct.hl_device, ptr %111, i32 0, i32 33, i32 33
  %116 = ptrtoint ptr %mmu_hop_table_size.i.i263 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %mmu_hop_table_size.i.i263, align 4
  tail call void @gen_pool_free_owner(ptr noundef %113, i32 noundef %conv.i6.i262, i32 noundef %117, ptr noundef null) #9
  %pprev.i.i.i.i.i264 = getelementptr inbounds %struct.hlist_node, ptr %pgt_info.0.i.i249, i32 0, i32 1
  %118 = ptrtoint ptr %pprev.i.i.i.i.i264 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %pprev.i.i.i.i.i264, align 4
  %tobool.not.i.not.i.i.i.i265 = icmp eq ptr %119, null
  br i1 %tobool.not.i.not.i.i.i.i265, label %if.then.i266.put_pte.exit275.thread_crit_edge, label %if.then.i.i.i.i268

if.then.i266.put_pte.exit275.thread_crit_edge:    ; preds = %if.then.i266
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_pte.exit275.thread

if.then.i.i.i.i268:                               ; preds = %if.then.i266
  %120 = ptrtoint ptr %pgt_info.0.i.i249 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %pgt_info.0.i.i249, align 4
  %122 = ptrtoint ptr %119 to i32
  call void @__asan_store4_noabort(i32 %122)
  store volatile ptr %121, ptr %119, align 4
  %tobool.not.i3.i.i.i.i267 = icmp eq ptr %121, null
  br i1 %tobool.not.i3.i.i.i.i267, label %if.then.i.i.i.i268.__hlist_del.exit.i.i.i.i271_crit_edge, label %do.body13.i.i.i.i.i270

if.then.i.i.i.i268.__hlist_del.exit.i.i.i.i271_crit_edge: ; preds = %if.then.i.i.i.i268
  call void @__sanitizer_cov_trace_pc() #11
  br label %__hlist_del.exit.i.i.i.i271

do.body13.i.i.i.i.i270:                           ; preds = %if.then.i.i.i.i268
  call void @__sanitizer_cov_trace_pc() #11
  %pprev14.i.i.i.i.i269 = getelementptr inbounds %struct.hlist_node, ptr %121, i32 0, i32 1
  %123 = ptrtoint ptr %pprev14.i.i.i.i.i269 to i32
  call void @__asan_store4_noabort(i32 %123)
  store volatile ptr %119, ptr %pprev14.i.i.i.i.i269, align 4
  br label %__hlist_del.exit.i.i.i.i271

__hlist_del.exit.i.i.i.i271:                      ; preds = %do.body13.i.i.i.i.i270, %if.then.i.i.i.i268.__hlist_del.exit.i.i.i.i271_crit_edge
  %124 = ptrtoint ptr %pgt_info.0.i.i249 to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr null, ptr %pgt_info.0.i.i249, align 4
  %125 = ptrtoint ptr %pprev.i.i.i.i.i264 to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr null, ptr %pprev.i.i.i.i.i264, align 4
  br label %put_pte.exit275.thread

put_pte.exit275.thread:                           ; preds = %__hlist_del.exit.i.i.i.i271, %if.then.i266.put_pte.exit275.thread_crit_edge
  %shadow_addr.i7.i272 = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i249, i32 0, i32 2
  %126 = ptrtoint ptr %shadow_addr.i7.i272 to i32
  call void @__asan_load8_noabort(i32 %126)
  %127 = load i64, ptr %shadow_addr.i7.i272, align 8
  %conv2.i.i273 = trunc i64 %127 to i32
  %128 = inttoptr i32 %conv2.i.i273 to ptr
  tail call void @kfree(ptr noundef %128) #9
  tail call void @kfree(ptr noundef %pgt_info.0.i.i249) #9
  br label %if.end80

put_pte.exit275:                                  ; preds = %get_pgt_info.exit.i258
  br i1 %tobool21.not, label %put_pte.exit275.cleanup98_crit_edge, label %put_pte.exit275.if.end80_crit_edge

put_pte.exit275.if.end80_crit_edge:               ; preds = %put_pte.exit275
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80

put_pte.exit275.cleanup98_crit_edge:              ; preds = %put_pte.exit275
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup98

if.else70:                                        ; preds = %if.end67
  %and.i.i.i283 = and i64 %add.i.i218, %neg.i.i.i282
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i.i283, i64 %add.i)
  %cmp.not.i.i.i290 = icmp eq i64 %and.i.i.i283, %add.i
  br i1 %cmp.not.i.i.i290, label %if.else.i.i.i307, label %if.then.i.i.i295

if.then.i.i.i295:                                 ; preds = %if.else70
  %conv.i11.i.i.i291 = trunc i64 %and.i.i.i283 to i32
  %mul.i.i.i.i.i.i292 = mul i32 %conv.i11.i.i.i291, 1640531527
  %shr.i.i.i.i.i293 = lshr i32 %mul.i.i.i.i.i.i292, 25
  %arrayidx.i.i.i.i294 = getelementptr %struct.hl_ctx, ptr %ctx, i32 0, i32 1, i32 %shr.i.i.i.i.i293
  br label %for.cond.i.i.i.i299

for.cond.i.i.i.i299:                              ; preds = %for.body.i.i.i.i302.for.cond.i.i.i.i299_crit_edge, %if.then.i.i.i295
  %pgt_info.0.in.i.i.i.i296 = phi ptr [ %arrayidx.i.i.i.i294, %if.then.i.i.i295 ], [ %pgt_info.0.i.i.i.i297, %for.body.i.i.i.i302.for.cond.i.i.i.i299_crit_edge ]
  %129 = ptrtoint ptr %pgt_info.0.in.i.i.i.i296 to i32
  call void @__asan_load4_noabort(i32 %129)
  %pgt_info.0.i.i.i.i297 = load ptr, ptr %pgt_info.0.in.i.i.i.i296, align 4
  %tobool2.not.i.i.i.i298 = icmp eq ptr %pgt_info.0.i.i.i.i297, null
  br i1 %tobool2.not.i.i.i.i298, label %for.cond.i.i.i.i299.get_pgt_info.exit.i.i.i304_crit_edge, label %for.body.i.i.i.i302

for.cond.i.i.i.i299.get_pgt_info.exit.i.i.i304_crit_edge: ; preds = %for.cond.i.i.i.i299
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pgt_info.exit.i.i.i304

for.body.i.i.i.i302:                              ; preds = %for.cond.i.i.i.i299
  %shadow_addr.i.i.i.i300 = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i.i.i297, i32 0, i32 2
  %130 = ptrtoint ptr %shadow_addr.i.i.i.i300 to i32
  call void @__asan_load8_noabort(i32 %130)
  %131 = load i64, ptr %shadow_addr.i.i.i.i300, align 8
  %cmp.i.i.i.i301 = icmp eq i64 %131, %and.i.i.i283
  br i1 %cmp.i.i.i.i301, label %for.body.i.i.i.i302.get_pgt_info.exit.i.i.i304_crit_edge, label %for.body.i.i.i.i302.for.cond.i.i.i.i299_crit_edge

for.body.i.i.i.i302.for.cond.i.i.i.i299_crit_edge: ; preds = %for.body.i.i.i.i302
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i.i.i299

for.body.i.i.i.i302.get_pgt_info.exit.i.i.i304_crit_edge: ; preds = %for.body.i.i.i.i302
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pgt_info.exit.i.i.i304

get_pgt_info.exit.i.i.i304:                       ; preds = %for.body.i.i.i.i302.get_pgt_info.exit.i.i.i304_crit_edge, %for.cond.i.i.i.i299.get_pgt_info.exit.i.i.i304_crit_edge
  %phys_addr.i.i.i303 = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i.i.i297, i32 0, i32 1
  %132 = ptrtoint ptr %phys_addr.i.i.i303 to i32
  call void @__asan_load8_noabort(i32 %132)
  %133 = load i64, ptr %phys_addr.i.i.i303, align 8
  br label %clear_pte.exit312

if.else.i.i.i307:                                 ; preds = %if.else70
  call void @__sanitizer_cov_trace_pc() #11
  %mmu_pgt_addr.i.i.i.i305 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 23
  %134 = ptrtoint ptr %mmu_pgt_addr.i.i.i.i305 to i32
  call void @__asan_load8_noabort(i32 %134)
  %135 = load i64, ptr %mmu_pgt_addr.i.i.i.i305, align 8
  %add.i17.i.i.i306 = add i64 %135, %conv2.i
  br label %clear_pte.exit312

clear_pte.exit312:                                ; preds = %if.else.i.i.i307, %get_pgt_info.exit.i.i.i304
  %phys_hop_addr.0.i.i.i308 = phi i64 [ %133, %get_pgt_info.exit.i.i.i304 ], [ %add.i17.i.i.i306, %if.else.i.i.i307 ]
  %and1.i.i.i309 = and i64 %add.i.i218, %conv.i.i.i281
  %add.i.i.i310 = add i64 %phys_hop_addr.0.i.i.i308, %and1.i.i.i309
  tail call void %95(ptr noundef %1, i64 noundef %add.i.i.i310, i64 noundef 0) #9
  %136 = ptrtoint ptr %36 to i32
  call void @__asan_store8_noabort(i32 %136)
  store i64 0, ptr %36, align 8
  br i1 %tobool21.not, label %clear_pte.exit312.cleanup98_crit_edge, label %clear_pte.exit312.if.end80_crit_edge

clear_pte.exit312.if.end80_crit_edge:             ; preds = %clear_pte.exit312
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80

clear_pte.exit312.cleanup98_crit_edge:            ; preds = %clear_pte.exit312
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup98

if.end80:                                         ; preds = %clear_pte.exit312.if.end80_crit_edge, %put_pte.exit275.if.end80_crit_edge, %put_pte.exit275.thread
  %137 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %hdev1, align 4
  %asic_funcs.i.i314 = getelementptr inbounds %struct.hl_device, ptr %138, i32 0, i32 34
  %139 = ptrtoint ptr %asic_funcs.i.i314 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %asic_funcs.i.i314, align 8
  %write_pte.i.i315 = getelementptr inbounds %struct.hl_asic_funcs, ptr %140, i32 0, i32 41
  %141 = ptrtoint ptr %write_pte.i.i315 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %write_pte.i.i315, align 4
  %mmu_hop_table_size.i.i.i316 = getelementptr inbounds %struct.hl_device, ptr %138, i32 0, i32 33, i32 33
  %143 = ptrtoint ptr %mmu_hop_table_size.i.i.i316 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %mmu_hop_table_size.i.i.i316, align 4
  %sub.i.i.i317 = add i32 %144, -1
  %conv.i.i.i318 = zext i32 %sub.i.i.i317 to i64
  %neg.i.i.i319 = xor i64 %conv.i.i.i318, -1
  %and.i.i.i320 = and i64 %add.i.i218, %neg.i.i.i319
  %mmu_shadow_hop0.i.i.i.i321 = getelementptr inbounds %struct.hl_device, ptr %138, i32 0, i32 51, i32 0, i32 1
  %145 = ptrtoint ptr %mmu_shadow_hop0.i.i.i.i321 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %mmu_shadow_hop0.i.i.i.i321, align 4
  %147 = ptrtoint ptr %146 to i32
  %conv.i.i.i.i322 = zext i32 %147 to i64
  %148 = ptrtoint ptr %asid.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %asid.i, align 8
  %mul.i.i.i.i324 = mul i32 %149, %144
  %conv2.i.i.i.i325 = zext i32 %mul.i.i.i.i324 to i64
  %add.i.i.i.i326 = add nuw nsw i64 %conv2.i.i.i.i325, %conv.i.i.i.i322
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i.i320, i64 %add.i.i.i.i326)
  %cmp.not.i.i.i327 = icmp eq i64 %and.i.i.i320, %add.i.i.i.i326
  br i1 %cmp.not.i.i.i327, label %if.else.i.i.i344, label %if.then.i.i.i332

if.then.i.i.i332:                                 ; preds = %if.end80
  %conv.i11.i.i.i328 = trunc i64 %and.i.i.i320 to i32
  %mul.i.i.i.i.i.i329 = mul i32 %conv.i11.i.i.i328, 1640531527
  %shr.i.i.i.i.i330 = lshr i32 %mul.i.i.i.i.i.i329, 25
  %arrayidx.i.i.i.i331 = getelementptr %struct.hl_ctx, ptr %ctx, i32 0, i32 1, i32 %shr.i.i.i.i.i330
  br label %for.cond.i.i.i.i336

for.cond.i.i.i.i336:                              ; preds = %for.body.i.i.i.i339.for.cond.i.i.i.i336_crit_edge, %if.then.i.i.i332
  %pgt_info.0.in.i.i.i.i333 = phi ptr [ %arrayidx.i.i.i.i331, %if.then.i.i.i332 ], [ %pgt_info.0.i.i.i.i334, %for.body.i.i.i.i339.for.cond.i.i.i.i336_crit_edge ]
  %150 = ptrtoint ptr %pgt_info.0.in.i.i.i.i333 to i32
  call void @__asan_load4_noabort(i32 %150)
  %pgt_info.0.i.i.i.i334 = load ptr, ptr %pgt_info.0.in.i.i.i.i333, align 4
  %tobool2.not.i.i.i.i335 = icmp eq ptr %pgt_info.0.i.i.i.i334, null
  br i1 %tobool2.not.i.i.i.i335, label %for.cond.i.i.i.i336.get_pgt_info.exit.i.i.i341_crit_edge, label %for.body.i.i.i.i339

for.cond.i.i.i.i336.get_pgt_info.exit.i.i.i341_crit_edge: ; preds = %for.cond.i.i.i.i336
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pgt_info.exit.i.i.i341

for.body.i.i.i.i339:                              ; preds = %for.cond.i.i.i.i336
  %shadow_addr.i.i.i.i337 = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i.i.i334, i32 0, i32 2
  %151 = ptrtoint ptr %shadow_addr.i.i.i.i337 to i32
  call void @__asan_load8_noabort(i32 %151)
  %152 = load i64, ptr %shadow_addr.i.i.i.i337, align 8
  %cmp.i.i.i.i338 = icmp eq i64 %152, %and.i.i.i320
  br i1 %cmp.i.i.i.i338, label %for.body.i.i.i.i339.get_pgt_info.exit.i.i.i341_crit_edge, label %for.body.i.i.i.i339.for.cond.i.i.i.i336_crit_edge

for.body.i.i.i.i339.for.cond.i.i.i.i336_crit_edge: ; preds = %for.body.i.i.i.i339
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i.i.i336

for.body.i.i.i.i339.get_pgt_info.exit.i.i.i341_crit_edge: ; preds = %for.body.i.i.i.i339
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pgt_info.exit.i.i.i341

get_pgt_info.exit.i.i.i341:                       ; preds = %for.body.i.i.i.i339.get_pgt_info.exit.i.i.i341_crit_edge, %for.cond.i.i.i.i336.get_pgt_info.exit.i.i.i341_crit_edge
  %phys_addr.i.i.i340 = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i.i.i334, i32 0, i32 1
  %153 = ptrtoint ptr %phys_addr.i.i.i340 to i32
  call void @__asan_load8_noabort(i32 %153)
  %154 = load i64, ptr %phys_addr.i.i.i340, align 8
  br label %clear_pte.exit349

if.else.i.i.i344:                                 ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  %mmu_pgt_addr.i.i.i.i342 = getelementptr inbounds %struct.hl_device, ptr %138, i32 0, i32 33, i32 23
  %155 = ptrtoint ptr %mmu_pgt_addr.i.i.i.i342 to i32
  call void @__asan_load8_noabort(i32 %155)
  %156 = load i64, ptr %mmu_pgt_addr.i.i.i.i342, align 8
  %add.i17.i.i.i343 = add i64 %156, %conv2.i.i.i.i325
  br label %clear_pte.exit349

clear_pte.exit349:                                ; preds = %if.else.i.i.i344, %get_pgt_info.exit.i.i.i341
  %phys_hop_addr.0.i.i.i345 = phi i64 [ %154, %get_pgt_info.exit.i.i.i341 ], [ %add.i17.i.i.i343, %if.else.i.i.i344 ]
  %and1.i.i.i346 = and i64 %add.i.i218, %conv.i.i.i318
  %add.i.i.i347 = add i64 %phys_hop_addr.0.i.i.i345, %and1.i.i.i346
  tail call void %142(ptr noundef %138, i64 noundef %add.i.i.i347, i64 noundef 0) #9
  %157 = ptrtoint ptr %36 to i32
  call void @__asan_store8_noabort(i32 %157)
  store i64 0, ptr %36, align 8
  %conv.i.i350 = trunc i64 %retval.0.i211 to i32
  %mul.i.i.i.i351 = mul i32 %conv.i.i350, 1640531527
  %shr.i.i.i352 = lshr i32 %mul.i.i.i.i351, 25
  %arrayidx.i.i353 = getelementptr %struct.hl_ctx, ptr %ctx, i32 0, i32 1, i32 %shr.i.i.i352
  br label %for.cond.i.i357

for.cond.i.i357:                                  ; preds = %for.body.i.i360.for.cond.i.i357_crit_edge, %clear_pte.exit349
  %pgt_info.0.in.i.i354 = phi ptr [ %arrayidx.i.i353, %clear_pte.exit349 ], [ %pgt_info.0.i.i355, %for.body.i.i360.for.cond.i.i357_crit_edge ]
  %158 = ptrtoint ptr %pgt_info.0.in.i.i354 to i32
  call void @__asan_load4_noabort(i32 %158)
  %pgt_info.0.i.i355 = load ptr, ptr %pgt_info.0.in.i.i354, align 4
  %tobool2.not.i.i356 = icmp eq ptr %pgt_info.0.i.i355, null
  br i1 %tobool2.not.i.i356, label %for.cond.i.i357.get_pgt_info.exit.i364_crit_edge, label %for.body.i.i360

for.cond.i.i357.get_pgt_info.exit.i364_crit_edge: ; preds = %for.cond.i.i357
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pgt_info.exit.i364

for.body.i.i360:                                  ; preds = %for.cond.i.i357
  %shadow_addr.i.i358 = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i355, i32 0, i32 2
  %159 = ptrtoint ptr %shadow_addr.i.i358 to i32
  call void @__asan_load8_noabort(i32 %159)
  %160 = load i64, ptr %shadow_addr.i.i358, align 8
  %cmp.i.i359 = icmp eq i64 %160, %retval.0.i211
  br i1 %cmp.i.i359, label %for.body.i.i360.get_pgt_info.exit.i364_crit_edge, label %for.body.i.i360.for.cond.i.i357_crit_edge

for.body.i.i360.for.cond.i.i357_crit_edge:        ; preds = %for.body.i.i360
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i357

for.body.i.i360.get_pgt_info.exit.i364_crit_edge: ; preds = %for.body.i.i360
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pgt_info.exit.i364

get_pgt_info.exit.i364:                           ; preds = %for.body.i.i360.get_pgt_info.exit.i364_crit_edge, %for.cond.i.i357.get_pgt_info.exit.i364_crit_edge
  %num_of_ptes.i361 = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i355, i32 0, i32 4
  %161 = ptrtoint ptr %num_of_ptes.i361 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %num_of_ptes.i361, align 4
  %dec.i362 = add i32 %162, -1
  store i32 %dec.i362, ptr %num_of_ptes.i361, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i362)
  %tobool.not.i363 = icmp eq i32 %dec.i362, 0
  br i1 %tobool.not.i363, label %if.then.i372, label %get_pgt_info.exit.i364.cleanup98_crit_edge

get_pgt_info.exit.i364.cleanup98_crit_edge:       ; preds = %get_pgt_info.exit.i364
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup98

if.then.i372:                                     ; preds = %get_pgt_info.exit.i364
  %163 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %hdev1, align 4
  %mmu_priv.i.i366 = getelementptr inbounds %struct.hl_device, ptr %164, i32 0, i32 51
  %165 = ptrtoint ptr %mmu_priv.i.i366 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %mmu_priv.i.i366, align 8
  %phys_addr.i.i367 = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i355, i32 0, i32 1
  %167 = ptrtoint ptr %phys_addr.i.i367 to i32
  call void @__asan_load8_noabort(i32 %167)
  %168 = load i64, ptr %phys_addr.i.i367, align 8
  %conv.i6.i368 = trunc i64 %168 to i32
  %mmu_hop_table_size.i.i369 = getelementptr inbounds %struct.hl_device, ptr %164, i32 0, i32 33, i32 33
  %169 = ptrtoint ptr %mmu_hop_table_size.i.i369 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %mmu_hop_table_size.i.i369, align 4
  tail call void @gen_pool_free_owner(ptr noundef %166, i32 noundef %conv.i6.i368, i32 noundef %170, ptr noundef null) #9
  %pprev.i.i.i.i.i370 = getelementptr inbounds %struct.hlist_node, ptr %pgt_info.0.i.i355, i32 0, i32 1
  %171 = ptrtoint ptr %pprev.i.i.i.i.i370 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %pprev.i.i.i.i.i370, align 4
  %tobool.not.i.not.i.i.i.i371 = icmp eq ptr %172, null
  br i1 %tobool.not.i.not.i.i.i.i371, label %if.then.i372.if.end84_crit_edge, label %if.then.i.i.i.i374

if.then.i372.if.end84_crit_edge:                  ; preds = %if.then.i372
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end84

if.then.i.i.i.i374:                               ; preds = %if.then.i372
  %173 = ptrtoint ptr %pgt_info.0.i.i355 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %pgt_info.0.i.i355, align 4
  %175 = ptrtoint ptr %172 to i32
  call void @__asan_store4_noabort(i32 %175)
  store volatile ptr %174, ptr %172, align 4
  %tobool.not.i3.i.i.i.i373 = icmp eq ptr %174, null
  br i1 %tobool.not.i3.i.i.i.i373, label %if.then.i.i.i.i374.__hlist_del.exit.i.i.i.i377_crit_edge, label %do.body13.i.i.i.i.i376

if.then.i.i.i.i374.__hlist_del.exit.i.i.i.i377_crit_edge: ; preds = %if.then.i.i.i.i374
  call void @__sanitizer_cov_trace_pc() #11
  br label %__hlist_del.exit.i.i.i.i377

do.body13.i.i.i.i.i376:                           ; preds = %if.then.i.i.i.i374
  call void @__sanitizer_cov_trace_pc() #11
  %pprev14.i.i.i.i.i375 = getelementptr inbounds %struct.hlist_node, ptr %174, i32 0, i32 1
  %176 = ptrtoint ptr %pprev14.i.i.i.i.i375 to i32
  call void @__asan_store4_noabort(i32 %176)
  store volatile ptr %172, ptr %pprev14.i.i.i.i.i375, align 4
  br label %__hlist_del.exit.i.i.i.i377

__hlist_del.exit.i.i.i.i377:                      ; preds = %do.body13.i.i.i.i.i376, %if.then.i.i.i.i374.__hlist_del.exit.i.i.i.i377_crit_edge
  %177 = ptrtoint ptr %pgt_info.0.i.i355 to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr null, ptr %pgt_info.0.i.i355, align 4
  %178 = ptrtoint ptr %pprev.i.i.i.i.i370 to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr null, ptr %pprev.i.i.i.i.i370, align 4
  br label %if.end84

if.end84:                                         ; preds = %__hlist_del.exit.i.i.i.i377, %if.then.i372.if.end84_crit_edge
  %shadow_addr.i7.i378 = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i355, i32 0, i32 2
  %179 = ptrtoint ptr %shadow_addr.i7.i378 to i32
  call void @__asan_load8_noabort(i32 %179)
  %180 = load i64, ptr %shadow_addr.i7.i378, align 8
  %conv2.i.i379 = trunc i64 %180 to i32
  %181 = inttoptr i32 %conv2.i.i379 to ptr
  tail call void @kfree(ptr noundef %181) #9
  tail call void @kfree(ptr noundef %pgt_info.0.i.i355) #9
  %182 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %hdev1, align 4
  %asic_funcs.i.i383 = getelementptr inbounds %struct.hl_device, ptr %183, i32 0, i32 34
  %184 = ptrtoint ptr %asic_funcs.i.i383 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %asic_funcs.i.i383, align 8
  %write_pte.i.i384 = getelementptr inbounds %struct.hl_asic_funcs, ptr %185, i32 0, i32 41
  %186 = ptrtoint ptr %write_pte.i.i384 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %write_pte.i.i384, align 4
  %mmu_hop_table_size.i.i.i385 = getelementptr inbounds %struct.hl_device, ptr %183, i32 0, i32 33, i32 33
  %188 = ptrtoint ptr %mmu_hop_table_size.i.i.i385 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %mmu_hop_table_size.i.i.i385, align 4
  %sub.i.i.i386 = add i32 %189, -1
  %conv.i.i.i387 = zext i32 %sub.i.i.i386 to i64
  %neg.i.i.i388 = xor i64 %conv.i.i.i387, -1
  %and.i.i.i389 = and i64 %add.i.i207, %neg.i.i.i388
  %mmu_shadow_hop0.i.i.i.i390 = getelementptr inbounds %struct.hl_device, ptr %183, i32 0, i32 51, i32 0, i32 1
  %190 = ptrtoint ptr %mmu_shadow_hop0.i.i.i.i390 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %mmu_shadow_hop0.i.i.i.i390, align 4
  %192 = ptrtoint ptr %191 to i32
  %conv.i.i.i.i391 = zext i32 %192 to i64
  %193 = ptrtoint ptr %asid.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %asid.i, align 8
  %mul.i.i.i.i393 = mul i32 %194, %189
  %conv2.i.i.i.i394 = zext i32 %mul.i.i.i.i393 to i64
  %add.i.i.i.i395 = add nuw nsw i64 %conv2.i.i.i.i394, %conv.i.i.i.i391
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i.i389, i64 %add.i.i.i.i395)
  %cmp.not.i.i.i396 = icmp eq i64 %and.i.i.i389, %add.i.i.i.i395
  br i1 %cmp.not.i.i.i396, label %if.else.i.i.i413, label %if.then.i.i.i401

if.then.i.i.i401:                                 ; preds = %if.end84
  %conv.i11.i.i.i397 = trunc i64 %and.i.i.i389 to i32
  %mul.i.i.i.i.i.i398 = mul i32 %conv.i11.i.i.i397, 1640531527
  %shr.i.i.i.i.i399 = lshr i32 %mul.i.i.i.i.i.i398, 25
  %arrayidx.i.i.i.i400 = getelementptr %struct.hl_ctx, ptr %ctx, i32 0, i32 1, i32 %shr.i.i.i.i.i399
  br label %for.cond.i.i.i.i405

for.cond.i.i.i.i405:                              ; preds = %for.body.i.i.i.i408.for.cond.i.i.i.i405_crit_edge, %if.then.i.i.i401
  %pgt_info.0.in.i.i.i.i402 = phi ptr [ %arrayidx.i.i.i.i400, %if.then.i.i.i401 ], [ %pgt_info.0.i.i.i.i403, %for.body.i.i.i.i408.for.cond.i.i.i.i405_crit_edge ]
  %195 = ptrtoint ptr %pgt_info.0.in.i.i.i.i402 to i32
  call void @__asan_load4_noabort(i32 %195)
  %pgt_info.0.i.i.i.i403 = load ptr, ptr %pgt_info.0.in.i.i.i.i402, align 4
  %tobool2.not.i.i.i.i404 = icmp eq ptr %pgt_info.0.i.i.i.i403, null
  br i1 %tobool2.not.i.i.i.i404, label %for.cond.i.i.i.i405.get_pgt_info.exit.i.i.i410_crit_edge, label %for.body.i.i.i.i408

for.cond.i.i.i.i405.get_pgt_info.exit.i.i.i410_crit_edge: ; preds = %for.cond.i.i.i.i405
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pgt_info.exit.i.i.i410

for.body.i.i.i.i408:                              ; preds = %for.cond.i.i.i.i405
  %shadow_addr.i.i.i.i406 = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i.i.i403, i32 0, i32 2
  %196 = ptrtoint ptr %shadow_addr.i.i.i.i406 to i32
  call void @__asan_load8_noabort(i32 %196)
  %197 = load i64, ptr %shadow_addr.i.i.i.i406, align 8
  %cmp.i.i.i.i407 = icmp eq i64 %197, %and.i.i.i389
  br i1 %cmp.i.i.i.i407, label %for.body.i.i.i.i408.get_pgt_info.exit.i.i.i410_crit_edge, label %for.body.i.i.i.i408.for.cond.i.i.i.i405_crit_edge

for.body.i.i.i.i408.for.cond.i.i.i.i405_crit_edge: ; preds = %for.body.i.i.i.i408
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i.i.i405

for.body.i.i.i.i408.get_pgt_info.exit.i.i.i410_crit_edge: ; preds = %for.body.i.i.i.i408
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pgt_info.exit.i.i.i410

get_pgt_info.exit.i.i.i410:                       ; preds = %for.body.i.i.i.i408.get_pgt_info.exit.i.i.i410_crit_edge, %for.cond.i.i.i.i405.get_pgt_info.exit.i.i.i410_crit_edge
  %phys_addr.i.i.i409 = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i.i.i403, i32 0, i32 1
  %198 = ptrtoint ptr %phys_addr.i.i.i409 to i32
  call void @__asan_load8_noabort(i32 %198)
  %199 = load i64, ptr %phys_addr.i.i.i409, align 8
  br label %clear_pte.exit418

if.else.i.i.i413:                                 ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #11
  %mmu_pgt_addr.i.i.i.i411 = getelementptr inbounds %struct.hl_device, ptr %183, i32 0, i32 33, i32 23
  %200 = ptrtoint ptr %mmu_pgt_addr.i.i.i.i411 to i32
  call void @__asan_load8_noabort(i32 %200)
  %201 = load i64, ptr %mmu_pgt_addr.i.i.i.i411, align 8
  %add.i17.i.i.i412 = add i64 %201, %conv2.i.i.i.i394
  br label %clear_pte.exit418

clear_pte.exit418:                                ; preds = %if.else.i.i.i413, %get_pgt_info.exit.i.i.i410
  %phys_hop_addr.0.i.i.i414 = phi i64 [ %199, %get_pgt_info.exit.i.i.i410 ], [ %add.i17.i.i.i412, %if.else.i.i.i413 ]
  %and1.i.i.i415 = and i64 %add.i.i207, %conv.i.i.i387
  %add.i.i.i416 = add i64 %phys_hop_addr.0.i.i.i414, %and1.i.i.i415
  tail call void %187(ptr noundef %183, i64 noundef %add.i.i.i416, i64 noundef 0) #9
  %202 = ptrtoint ptr %29 to i32
  call void @__asan_store8_noabort(i32 %202)
  store i64 0, ptr %29, align 8
  %conv.i.i419 = trunc i64 %retval.0.i200 to i32
  %mul.i.i.i.i420 = mul i32 %conv.i.i419, 1640531527
  %shr.i.i.i421 = lshr i32 %mul.i.i.i.i420, 25
  %arrayidx.i.i422 = getelementptr %struct.hl_ctx, ptr %ctx, i32 0, i32 1, i32 %shr.i.i.i421
  br label %for.cond.i.i426

for.cond.i.i426:                                  ; preds = %for.body.i.i429.for.cond.i.i426_crit_edge, %clear_pte.exit418
  %pgt_info.0.in.i.i423 = phi ptr [ %arrayidx.i.i422, %clear_pte.exit418 ], [ %pgt_info.0.i.i424, %for.body.i.i429.for.cond.i.i426_crit_edge ]
  %203 = ptrtoint ptr %pgt_info.0.in.i.i423 to i32
  call void @__asan_load4_noabort(i32 %203)
  %pgt_info.0.i.i424 = load ptr, ptr %pgt_info.0.in.i.i423, align 4
  %tobool2.not.i.i425 = icmp eq ptr %pgt_info.0.i.i424, null
  br i1 %tobool2.not.i.i425, label %for.cond.i.i426.get_pgt_info.exit.i433_crit_edge, label %for.body.i.i429

for.cond.i.i426.get_pgt_info.exit.i433_crit_edge: ; preds = %for.cond.i.i426
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pgt_info.exit.i433

for.body.i.i429:                                  ; preds = %for.cond.i.i426
  %shadow_addr.i.i427 = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i424, i32 0, i32 2
  %204 = ptrtoint ptr %shadow_addr.i.i427 to i32
  call void @__asan_load8_noabort(i32 %204)
  %205 = load i64, ptr %shadow_addr.i.i427, align 8
  %cmp.i.i428 = icmp eq i64 %205, %retval.0.i200
  br i1 %cmp.i.i428, label %for.body.i.i429.get_pgt_info.exit.i433_crit_edge, label %for.body.i.i429.for.cond.i.i426_crit_edge

for.body.i.i429.for.cond.i.i426_crit_edge:        ; preds = %for.body.i.i429
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i426

for.body.i.i429.get_pgt_info.exit.i433_crit_edge: ; preds = %for.body.i.i429
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pgt_info.exit.i433

get_pgt_info.exit.i433:                           ; preds = %for.body.i.i429.get_pgt_info.exit.i433_crit_edge, %for.cond.i.i426.get_pgt_info.exit.i433_crit_edge
  %num_of_ptes.i430 = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i424, i32 0, i32 4
  %206 = ptrtoint ptr %num_of_ptes.i430 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %num_of_ptes.i430, align 4
  %dec.i431 = add i32 %207, -1
  store i32 %dec.i431, ptr %num_of_ptes.i430, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i431)
  %tobool.not.i432 = icmp eq i32 %dec.i431, 0
  br i1 %tobool.not.i432, label %if.then.i441, label %get_pgt_info.exit.i433.cleanup98_crit_edge

get_pgt_info.exit.i433.cleanup98_crit_edge:       ; preds = %get_pgt_info.exit.i433
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup98

if.then.i441:                                     ; preds = %get_pgt_info.exit.i433
  %208 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %hdev1, align 4
  %mmu_priv.i.i435 = getelementptr inbounds %struct.hl_device, ptr %209, i32 0, i32 51
  %210 = ptrtoint ptr %mmu_priv.i.i435 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %mmu_priv.i.i435, align 8
  %phys_addr.i.i436 = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i424, i32 0, i32 1
  %212 = ptrtoint ptr %phys_addr.i.i436 to i32
  call void @__asan_load8_noabort(i32 %212)
  %213 = load i64, ptr %phys_addr.i.i436, align 8
  %conv.i6.i437 = trunc i64 %213 to i32
  %mmu_hop_table_size.i.i438 = getelementptr inbounds %struct.hl_device, ptr %209, i32 0, i32 33, i32 33
  %214 = ptrtoint ptr %mmu_hop_table_size.i.i438 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %mmu_hop_table_size.i.i438, align 4
  tail call void @gen_pool_free_owner(ptr noundef %211, i32 noundef %conv.i6.i437, i32 noundef %215, ptr noundef null) #9
  %pprev.i.i.i.i.i439 = getelementptr inbounds %struct.hlist_node, ptr %pgt_info.0.i.i424, i32 0, i32 1
  %216 = ptrtoint ptr %pprev.i.i.i.i.i439 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %pprev.i.i.i.i.i439, align 4
  %tobool.not.i.not.i.i.i.i440 = icmp eq ptr %217, null
  br i1 %tobool.not.i.not.i.i.i.i440, label %if.then.i441.if.end88_crit_edge, label %if.then.i.i.i.i443

if.then.i441.if.end88_crit_edge:                  ; preds = %if.then.i441
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end88

if.then.i.i.i.i443:                               ; preds = %if.then.i441
  %218 = ptrtoint ptr %pgt_info.0.i.i424 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %pgt_info.0.i.i424, align 4
  %220 = ptrtoint ptr %217 to i32
  call void @__asan_store4_noabort(i32 %220)
  store volatile ptr %219, ptr %217, align 4
  %tobool.not.i3.i.i.i.i442 = icmp eq ptr %219, null
  br i1 %tobool.not.i3.i.i.i.i442, label %if.then.i.i.i.i443.__hlist_del.exit.i.i.i.i446_crit_edge, label %do.body13.i.i.i.i.i445

if.then.i.i.i.i443.__hlist_del.exit.i.i.i.i446_crit_edge: ; preds = %if.then.i.i.i.i443
  call void @__sanitizer_cov_trace_pc() #11
  br label %__hlist_del.exit.i.i.i.i446

do.body13.i.i.i.i.i445:                           ; preds = %if.then.i.i.i.i443
  call void @__sanitizer_cov_trace_pc() #11
  %pprev14.i.i.i.i.i444 = getelementptr inbounds %struct.hlist_node, ptr %219, i32 0, i32 1
  %221 = ptrtoint ptr %pprev14.i.i.i.i.i444 to i32
  call void @__asan_store4_noabort(i32 %221)
  store volatile ptr %217, ptr %pprev14.i.i.i.i.i444, align 4
  br label %__hlist_del.exit.i.i.i.i446

__hlist_del.exit.i.i.i.i446:                      ; preds = %do.body13.i.i.i.i.i445, %if.then.i.i.i.i443.__hlist_del.exit.i.i.i.i446_crit_edge
  %222 = ptrtoint ptr %pgt_info.0.i.i424 to i32
  call void @__asan_store4_noabort(i32 %222)
  store ptr null, ptr %pgt_info.0.i.i424, align 4
  %223 = ptrtoint ptr %pprev.i.i.i.i.i439 to i32
  call void @__asan_store4_noabort(i32 %223)
  store ptr null, ptr %pprev.i.i.i.i.i439, align 4
  br label %if.end88

if.end88:                                         ; preds = %__hlist_del.exit.i.i.i.i446, %if.then.i441.if.end88_crit_edge
  %shadow_addr.i7.i447 = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i424, i32 0, i32 2
  %224 = ptrtoint ptr %shadow_addr.i7.i447 to i32
  call void @__asan_load8_noabort(i32 %224)
  %225 = load i64, ptr %shadow_addr.i7.i447, align 8
  %conv2.i.i448 = trunc i64 %225 to i32
  %226 = inttoptr i32 %conv2.i.i448 to ptr
  tail call void @kfree(ptr noundef %226) #9
  tail call void @kfree(ptr noundef %pgt_info.0.i.i424) #9
  %227 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %hdev1, align 4
  %asic_funcs.i.i452 = getelementptr inbounds %struct.hl_device, ptr %228, i32 0, i32 34
  %229 = ptrtoint ptr %asic_funcs.i.i452 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %asic_funcs.i.i452, align 8
  %write_pte.i.i453 = getelementptr inbounds %struct.hl_asic_funcs, ptr %230, i32 0, i32 41
  %231 = ptrtoint ptr %write_pte.i.i453 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %write_pte.i.i453, align 4
  %mmu_hop_table_size.i.i.i454 = getelementptr inbounds %struct.hl_device, ptr %228, i32 0, i32 33, i32 33
  %233 = ptrtoint ptr %mmu_hop_table_size.i.i.i454 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %mmu_hop_table_size.i.i.i454, align 4
  %sub.i.i.i455 = add i32 %234, -1
  %conv.i.i.i456 = zext i32 %sub.i.i.i455 to i64
  %neg.i.i.i457 = xor i64 %conv.i.i.i456, -1
  %and.i.i.i458 = and i64 %add.i.i196, %neg.i.i.i457
  %mmu_shadow_hop0.i.i.i.i459 = getelementptr inbounds %struct.hl_device, ptr %228, i32 0, i32 51, i32 0, i32 1
  %235 = ptrtoint ptr %mmu_shadow_hop0.i.i.i.i459 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %mmu_shadow_hop0.i.i.i.i459, align 4
  %237 = ptrtoint ptr %236 to i32
  %conv.i.i.i.i460 = zext i32 %237 to i64
  %238 = ptrtoint ptr %asid.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %asid.i, align 8
  %mul.i.i.i.i462 = mul i32 %239, %234
  %conv2.i.i.i.i463 = zext i32 %mul.i.i.i.i462 to i64
  %add.i.i.i.i464 = add nuw nsw i64 %conv2.i.i.i.i463, %conv.i.i.i.i460
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i.i458, i64 %add.i.i.i.i464)
  %cmp.not.i.i.i465 = icmp eq i64 %and.i.i.i458, %add.i.i.i.i464
  br i1 %cmp.not.i.i.i465, label %if.else.i.i.i482, label %if.then.i.i.i470

if.then.i.i.i470:                                 ; preds = %if.end88
  %conv.i11.i.i.i466 = trunc i64 %and.i.i.i458 to i32
  %mul.i.i.i.i.i.i467 = mul i32 %conv.i11.i.i.i466, 1640531527
  %shr.i.i.i.i.i468 = lshr i32 %mul.i.i.i.i.i.i467, 25
  %arrayidx.i.i.i.i469 = getelementptr %struct.hl_ctx, ptr %ctx, i32 0, i32 1, i32 %shr.i.i.i.i.i468
  br label %for.cond.i.i.i.i474

for.cond.i.i.i.i474:                              ; preds = %for.body.i.i.i.i477.for.cond.i.i.i.i474_crit_edge, %if.then.i.i.i470
  %pgt_info.0.in.i.i.i.i471 = phi ptr [ %arrayidx.i.i.i.i469, %if.then.i.i.i470 ], [ %pgt_info.0.i.i.i.i472, %for.body.i.i.i.i477.for.cond.i.i.i.i474_crit_edge ]
  %240 = ptrtoint ptr %pgt_info.0.in.i.i.i.i471 to i32
  call void @__asan_load4_noabort(i32 %240)
  %pgt_info.0.i.i.i.i472 = load ptr, ptr %pgt_info.0.in.i.i.i.i471, align 4
  %tobool2.not.i.i.i.i473 = icmp eq ptr %pgt_info.0.i.i.i.i472, null
  br i1 %tobool2.not.i.i.i.i473, label %for.cond.i.i.i.i474.get_pgt_info.exit.i.i.i479_crit_edge, label %for.body.i.i.i.i477

for.cond.i.i.i.i474.get_pgt_info.exit.i.i.i479_crit_edge: ; preds = %for.cond.i.i.i.i474
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pgt_info.exit.i.i.i479

for.body.i.i.i.i477:                              ; preds = %for.cond.i.i.i.i474
  %shadow_addr.i.i.i.i475 = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i.i.i472, i32 0, i32 2
  %241 = ptrtoint ptr %shadow_addr.i.i.i.i475 to i32
  call void @__asan_load8_noabort(i32 %241)
  %242 = load i64, ptr %shadow_addr.i.i.i.i475, align 8
  %cmp.i.i.i.i476 = icmp eq i64 %242, %and.i.i.i458
  br i1 %cmp.i.i.i.i476, label %for.body.i.i.i.i477.get_pgt_info.exit.i.i.i479_crit_edge, label %for.body.i.i.i.i477.for.cond.i.i.i.i474_crit_edge

for.body.i.i.i.i477.for.cond.i.i.i.i474_crit_edge: ; preds = %for.body.i.i.i.i477
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i.i.i474

for.body.i.i.i.i477.get_pgt_info.exit.i.i.i479_crit_edge: ; preds = %for.body.i.i.i.i477
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pgt_info.exit.i.i.i479

get_pgt_info.exit.i.i.i479:                       ; preds = %for.body.i.i.i.i477.get_pgt_info.exit.i.i.i479_crit_edge, %for.cond.i.i.i.i474.get_pgt_info.exit.i.i.i479_crit_edge
  %phys_addr.i.i.i478 = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i.i.i472, i32 0, i32 1
  %243 = ptrtoint ptr %phys_addr.i.i.i478 to i32
  call void @__asan_load8_noabort(i32 %243)
  %244 = load i64, ptr %phys_addr.i.i.i478, align 8
  br label %clear_pte.exit487

if.else.i.i.i482:                                 ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  %mmu_pgt_addr.i.i.i.i480 = getelementptr inbounds %struct.hl_device, ptr %228, i32 0, i32 33, i32 23
  %245 = ptrtoint ptr %mmu_pgt_addr.i.i.i.i480 to i32
  call void @__asan_load8_noabort(i32 %245)
  %246 = load i64, ptr %mmu_pgt_addr.i.i.i.i480, align 8
  %add.i17.i.i.i481 = add i64 %246, %conv2.i.i.i.i463
  br label %clear_pte.exit487

clear_pte.exit487:                                ; preds = %if.else.i.i.i482, %get_pgt_info.exit.i.i.i479
  %phys_hop_addr.0.i.i.i483 = phi i64 [ %244, %get_pgt_info.exit.i.i.i479 ], [ %add.i17.i.i.i481, %if.else.i.i.i482 ]
  %and1.i.i.i484 = and i64 %add.i.i196, %conv.i.i.i456
  %add.i.i.i485 = add i64 %phys_hop_addr.0.i.i.i483, %and1.i.i.i484
  tail call void %232(ptr noundef %228, i64 noundef %add.i.i.i485, i64 noundef 0) #9
  %247 = ptrtoint ptr %22 to i32
  call void @__asan_store8_noabort(i32 %247)
  store i64 0, ptr %22, align 8
  %conv.i.i488 = trunc i64 %retval.0.i to i32
  %mul.i.i.i.i489 = mul i32 %conv.i.i488, 1640531527
  %shr.i.i.i490 = lshr i32 %mul.i.i.i.i489, 25
  %arrayidx.i.i491 = getelementptr %struct.hl_ctx, ptr %ctx, i32 0, i32 1, i32 %shr.i.i.i490
  br label %for.cond.i.i495

for.cond.i.i495:                                  ; preds = %for.body.i.i498.for.cond.i.i495_crit_edge, %clear_pte.exit487
  %pgt_info.0.in.i.i492 = phi ptr [ %arrayidx.i.i491, %clear_pte.exit487 ], [ %pgt_info.0.i.i493, %for.body.i.i498.for.cond.i.i495_crit_edge ]
  %248 = ptrtoint ptr %pgt_info.0.in.i.i492 to i32
  call void @__asan_load4_noabort(i32 %248)
  %pgt_info.0.i.i493 = load ptr, ptr %pgt_info.0.in.i.i492, align 4
  %tobool2.not.i.i494 = icmp eq ptr %pgt_info.0.i.i493, null
  br i1 %tobool2.not.i.i494, label %for.cond.i.i495.get_pgt_info.exit.i502_crit_edge, label %for.body.i.i498

for.cond.i.i495.get_pgt_info.exit.i502_crit_edge: ; preds = %for.cond.i.i495
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pgt_info.exit.i502

for.body.i.i498:                                  ; preds = %for.cond.i.i495
  %shadow_addr.i.i496 = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i493, i32 0, i32 2
  %249 = ptrtoint ptr %shadow_addr.i.i496 to i32
  call void @__asan_load8_noabort(i32 %249)
  %250 = load i64, ptr %shadow_addr.i.i496, align 8
  %cmp.i.i497 = icmp eq i64 %250, %retval.0.i
  br i1 %cmp.i.i497, label %for.body.i.i498.get_pgt_info.exit.i502_crit_edge, label %for.body.i.i498.for.cond.i.i495_crit_edge

for.body.i.i498.for.cond.i.i495_crit_edge:        ; preds = %for.body.i.i498
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i495

for.body.i.i498.get_pgt_info.exit.i502_crit_edge: ; preds = %for.body.i.i498
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pgt_info.exit.i502

get_pgt_info.exit.i502:                           ; preds = %for.body.i.i498.get_pgt_info.exit.i502_crit_edge, %for.cond.i.i495.get_pgt_info.exit.i502_crit_edge
  %num_of_ptes.i499 = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i493, i32 0, i32 4
  %251 = ptrtoint ptr %num_of_ptes.i499 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %num_of_ptes.i499, align 4
  %dec.i500 = add i32 %252, -1
  store i32 %dec.i500, ptr %num_of_ptes.i499, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i500)
  %tobool.not.i501 = icmp eq i32 %dec.i500, 0
  br i1 %tobool.not.i501, label %if.then.i510, label %get_pgt_info.exit.i502.cleanup98_crit_edge

get_pgt_info.exit.i502.cleanup98_crit_edge:       ; preds = %get_pgt_info.exit.i502
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup98

if.then.i510:                                     ; preds = %get_pgt_info.exit.i502
  %253 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %hdev1, align 4
  %mmu_priv.i.i504 = getelementptr inbounds %struct.hl_device, ptr %254, i32 0, i32 51
  %255 = ptrtoint ptr %mmu_priv.i.i504 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %mmu_priv.i.i504, align 8
  %phys_addr.i.i505 = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i493, i32 0, i32 1
  %257 = ptrtoint ptr %phys_addr.i.i505 to i32
  call void @__asan_load8_noabort(i32 %257)
  %258 = load i64, ptr %phys_addr.i.i505, align 8
  %conv.i6.i506 = trunc i64 %258 to i32
  %mmu_hop_table_size.i.i507 = getelementptr inbounds %struct.hl_device, ptr %254, i32 0, i32 33, i32 33
  %259 = ptrtoint ptr %mmu_hop_table_size.i.i507 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %mmu_hop_table_size.i.i507, align 4
  tail call void @gen_pool_free_owner(ptr noundef %256, i32 noundef %conv.i6.i506, i32 noundef %260, ptr noundef null) #9
  %pprev.i.i.i.i.i508 = getelementptr inbounds %struct.hlist_node, ptr %pgt_info.0.i.i493, i32 0, i32 1
  %261 = ptrtoint ptr %pprev.i.i.i.i.i508 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %pprev.i.i.i.i.i508, align 4
  %tobool.not.i.not.i.i.i.i509 = icmp eq ptr %262, null
  br i1 %tobool.not.i.not.i.i.i.i509, label %if.then.i510.if.end92_crit_edge, label %if.then.i.i.i.i512

if.then.i510.if.end92_crit_edge:                  ; preds = %if.then.i510
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end92

if.then.i.i.i.i512:                               ; preds = %if.then.i510
  %263 = ptrtoint ptr %pgt_info.0.i.i493 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %pgt_info.0.i.i493, align 4
  %265 = ptrtoint ptr %262 to i32
  call void @__asan_store4_noabort(i32 %265)
  store volatile ptr %264, ptr %262, align 4
  %tobool.not.i3.i.i.i.i511 = icmp eq ptr %264, null
  br i1 %tobool.not.i3.i.i.i.i511, label %if.then.i.i.i.i512.__hlist_del.exit.i.i.i.i515_crit_edge, label %do.body13.i.i.i.i.i514

if.then.i.i.i.i512.__hlist_del.exit.i.i.i.i515_crit_edge: ; preds = %if.then.i.i.i.i512
  call void @__sanitizer_cov_trace_pc() #11
  br label %__hlist_del.exit.i.i.i.i515

do.body13.i.i.i.i.i514:                           ; preds = %if.then.i.i.i.i512
  call void @__sanitizer_cov_trace_pc() #11
  %pprev14.i.i.i.i.i513 = getelementptr inbounds %struct.hlist_node, ptr %264, i32 0, i32 1
  %266 = ptrtoint ptr %pprev14.i.i.i.i.i513 to i32
  call void @__asan_store4_noabort(i32 %266)
  store volatile ptr %262, ptr %pprev14.i.i.i.i.i513, align 4
  br label %__hlist_del.exit.i.i.i.i515

__hlist_del.exit.i.i.i.i515:                      ; preds = %do.body13.i.i.i.i.i514, %if.then.i.i.i.i512.__hlist_del.exit.i.i.i.i515_crit_edge
  %267 = ptrtoint ptr %pgt_info.0.i.i493 to i32
  call void @__asan_store4_noabort(i32 %267)
  store ptr null, ptr %pgt_info.0.i.i493, align 4
  %268 = ptrtoint ptr %pprev.i.i.i.i.i508 to i32
  call void @__asan_store4_noabort(i32 %268)
  store ptr null, ptr %pprev.i.i.i.i.i508, align 4
  br label %if.end92

if.end92:                                         ; preds = %__hlist_del.exit.i.i.i.i515, %if.then.i510.if.end92_crit_edge
  %shadow_addr.i7.i516 = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i493, i32 0, i32 2
  %269 = ptrtoint ptr %shadow_addr.i7.i516 to i32
  call void @__asan_load8_noabort(i32 %269)
  %270 = load i64, ptr %shadow_addr.i7.i516, align 8
  %conv2.i.i517 = trunc i64 %270 to i32
  %271 = inttoptr i32 %conv2.i.i517 to ptr
  tail call void @kfree(ptr noundef %271) #9
  tail call void @kfree(ptr noundef %pgt_info.0.i.i493) #9
  tail call fastcc void @clear_pte(ptr noundef %ctx, i64 noundef %add.i.i)
  br label %cleanup98

do.end96.sink.split:                              ; preds = %if.end54.do.end96.sink.split_crit_edge, %if.then43.do.end96.sink.split_crit_edge
  %.str.41.sink = phi ptr [ @.str.41, %if.then43.do.end96.sink.split_crit_edge ], [ @.str.44, %if.end54.do.end96.sink.split_crit_edge ]
  %dev53 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %272 = ptrtoint ptr %dev53 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %dev53, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %273, ptr noundef nonnull %.str.41.sink, i64 noundef %virt_addr) #12
  br label %do.end96

do.end96:                                         ; preds = %do.end96.sink.split, %if.else.do.end96_crit_edge, %if.then29.do.end96_crit_edge, %if.end11.do.end96_crit_edge, %if.end.do.end96_crit_edge, %entry.do.end96_crit_edge
  %dev97 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %274 = ptrtoint ptr %dev97 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %dev97, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %275, ptr noundef nonnull @.str.47, i64 noundef %virt_addr) #12
  br label %cleanup98

cleanup98:                                        ; preds = %do.end96, %if.end92, %get_pgt_info.exit.i502.cleanup98_crit_edge, %get_pgt_info.exit.i433.cleanup98_crit_edge, %get_pgt_info.exit.i364.cleanup98_crit_edge, %clear_pte.exit312.cleanup98_crit_edge, %put_pte.exit275.cleanup98_crit_edge, %_free_hop.exit.i, %get_pgt_info.exit.i.cleanup98_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end96 ], [ -14, %do.end ], [ 0, %if.end92 ], [ 0, %clear_pte.exit312.cleanup98_crit_edge ], [ 0, %put_pte.exit275.cleanup98_crit_edge ], [ 0, %get_pgt_info.exit.i364.cleanup98_crit_edge ], [ 0, %get_pgt_info.exit.i433.cleanup98_crit_edge ], [ 0, %get_pgt_info.exit.i502.cleanup98_crit_edge ], [ 0, %get_pgt_info.exit.i.cleanup98_crit_edge ], [ 0, %_free_hop.exit.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @flush(ptr nocapture noundef readonly %ctx) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %hdev = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 3
  %0 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev, align 4
  %asic_funcs = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 34
  %2 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %asic_funcs, align 8
  %read_pte = getelementptr inbounds %struct.hl_asic_funcs, ptr %3, i32 0, i32 40
  %4 = ptrtoint ptr %read_pte to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_pte, align 4
  %mmu_pgt_addr.i = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 23
  %6 = ptrtoint ptr %mmu_pgt_addr.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %mmu_pgt_addr.i, align 8
  %asid.i = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 21
  %8 = ptrtoint ptr %asid.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %asid.i, align 8
  %mmu_hop_table_size.i = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 33
  %10 = ptrtoint ptr %mmu_hop_table_size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mmu_hop_table_size.i, align 4
  %mul.i = mul i32 %11, %9
  %conv.i = zext i32 %mul.i to i64
  %add.i = add i64 %7, %conv.i
  %call2 = tail call i64 %5(ptr noundef %1, i64 noundef %add.i) #9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @hl_mmu_v1_swap_out(ptr nocapture noundef %ctx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @hl_mmu_v1_swap_in(ptr nocapture noundef %ctx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hl_mmu_v1_get_tlb_info(ptr nocapture noundef readonly %ctx, i64 noundef %virt_addr, ptr nocapture noundef %hops) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hdev1 = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 3
  %0 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev1, align 4
  %dmmu = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 4
  %page_size = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 4, i32 15
  %2 = ptrtoint ptr %page_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %page_size, align 8
  %conv = zext i32 %3 to i64
  %4 = ptrtoint ptr %dmmu to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %dmmu, align 8
  %end_addr = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 4, i32 1
  %6 = ptrtoint ptr %end_addr to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %end_addr, align 8
  %add.i = add i64 %conv, %virt_addr
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %virt_addr)
  %cmp.not.i = icmp ule i64 %5, %virt_addr
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %7)
  %cmp1.not.i = icmp ule i64 %add.i, %7
  %or.cond.not.i = and i1 %cmp.not.i, %cmp1.not.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %virt_addr)
  %cmp3.i = icmp ugt i64 %add.i, %virt_addr
  %or.cond7.i = and i1 %cmp3.i, %or.cond.not.i
  %pmmu = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 5
  %page_size4 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 5, i32 15
  %8 = ptrtoint ptr %page_size4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %page_size4, align 8
  %conv5 = zext i32 %9 to i64
  %10 = ptrtoint ptr %pmmu to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %pmmu, align 8
  %end_addr9 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 5, i32 1
  %12 = ptrtoint ptr %end_addr9 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %end_addr9, align 8
  %add.i170 = add i64 %conv5, %virt_addr
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %virt_addr)
  %cmp.not.i171 = icmp ule i64 %11, %virt_addr
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i170, i64 %13)
  %cmp1.not.i172 = icmp ule i64 %add.i170, %13
  %or.cond.not.i173 = and i1 %cmp.not.i171, %cmp1.not.i172
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i170, i64 %virt_addr)
  %cmp3.i174 = icmp ugt i64 %add.i170, %virt_addr
  %or.cond7.i175 = and i1 %cmp3.i174, %or.cond.not.i173
  %pmmu_huge = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 6
  %page_size12 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 6, i32 15
  %14 = ptrtoint ptr %page_size12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %page_size12, align 8
  %conv13 = zext i32 %15 to i64
  %16 = ptrtoint ptr %pmmu_huge to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %pmmu_huge, align 8
  %end_addr17 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 6, i32 1
  %18 = ptrtoint ptr %end_addr17 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %end_addr17, align 8
  %add.i176 = add i64 %conv13, %virt_addr
  call void @__sanitizer_cov_trace_cmp8(i64 %17, i64 %virt_addr)
  %cmp.not.i177 = icmp ule i64 %17, %virt_addr
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i176, i64 %19)
  %cmp1.not.i178 = icmp ule i64 %add.i176, %19
  %or.cond.not.i179 = and i1 %cmp.not.i177, %cmp1.not.i178
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i176, i64 %virt_addr)
  %cmp3.i180 = icmp ugt i64 %add.i176, %virt_addr
  %or.cond7.i181 = and i1 %cmp3.i180, %or.cond.not.i179
  %brmerge = select i1 %or.cond7.i, i1 true, i1 %or.cond7.i175
  %dmmu.mux = select i1 %or.cond7.i, ptr %dmmu, ptr %pmmu
  %brmerge169 = select i1 %brmerge, i1 true, i1 %or.cond7.i181
  %dmmu.mux.mux = select i1 %brmerge, ptr %dmmu.mux, ptr %pmmu_huge
  br i1 %brmerge169, label %if.end30, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end30:                                         ; preds = %entry
  %not.brmerge = xor i1 %brmerge, true
  %.mux.mux = or i1 %or.cond7.i, %not.brmerge
  %num_hops = getelementptr inbounds %struct.hl_mmu_properties, ptr %dmmu.mux.mux, i32 0, i32 16
  %20 = ptrtoint ptr %num_hops to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_hops, align 4
  %dec = sext i1 %.mux.mux to i32
  %spec.select = add i32 %21, %dec
  %mmu_pgt_addr.i = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 23
  %22 = ptrtoint ptr %mmu_pgt_addr.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %mmu_pgt_addr.i, align 8
  %asid.i = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 21
  %24 = ptrtoint ptr %asid.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %asid.i, align 8
  %mmu_hop_table_size.i = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 33
  %26 = ptrtoint ptr %mmu_hop_table_size.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mmu_hop_table_size.i, align 4
  %mul.i = mul i32 %27, %25
  %conv.i = zext i32 %mul.i to i64
  %add.i182 = add i64 %23, %conv.i
  %hop_info = getelementptr inbounds %struct.hl_mmu_hop_info, ptr %hops, i32 0, i32 2
  %28 = ptrtoint ptr %hop_info to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %add.i182, ptr %hop_info, align 8
  %hop0_mask.i.i = getelementptr inbounds %struct.hl_mmu_properties, ptr %dmmu.mux.mux, i32 0, i32 8
  %hop0_shift.i.i = getelementptr inbounds %struct.hl_mmu_properties, ptr %dmmu.mux.mux, i32 0, i32 2
  %29 = ptrtoint ptr %hop0_mask.i.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %.sink53.i = load i64, ptr %hop0_mask.i.i, align 8
  %30 = ptrtoint ptr %hop0_shift.i.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %hop0_shift.i.i, align 8
  %32 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hdev1, align 4
  %mmu_pte_size.i.i47.i = getelementptr inbounds %struct.hl_device, ptr %33, i32 0, i32 33, i32 32
  %34 = ptrtoint ptr %mmu_pte_size.i.i47.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %mmu_pte_size.i.i47.i, align 8
  %conv.i.i48.i = zext i32 %35 to i64
  %and.i.i49.i = and i64 %.sink53.i, %virt_addr
  %shr.i.i50.i = lshr i64 %and.i.i49.i, %31
  %mul.i.i51.i = mul i64 %shr.i.i50.i, %conv.i.i48.i
  %add.i.i52.i = add i64 %mul.i.i51.i, %add.i182
  %hop_pte_addr = getelementptr inbounds %struct.hl_mmu_hop_info, ptr %hops, i32 0, i32 2, i32 0, i32 1
  %36 = ptrtoint ptr %hop_pte_addr to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %add.i.i52.i, ptr %hop_pte_addr, align 8
  %asic_funcs = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 34
  %37 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %asic_funcs, align 8
  %read_pte = getelementptr inbounds %struct.hl_asic_funcs, ptr %38, i32 0, i32 40
  %39 = ptrtoint ptr %read_pte to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %read_pte, align 4
  %call44 = tail call i64 %40(ptr noundef %1, i64 noundef %add.i.i52.i) #9
  %hop_pte_val = getelementptr inbounds %struct.hl_mmu_hop_info, ptr %hops, i32 0, i32 2, i32 0, i32 2
  %41 = ptrtoint ptr %hop_pte_val to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %call44, ptr %hop_pte_val, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %spec.select)
  %cmp195 = icmp sgt i32 %spec.select, 1
  br i1 %cmp195, label %for.body.lr.ph, label %if.end30.for.end_crit_edge

if.end30.for.end_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end30
  %hop4_mask.i.i = getelementptr inbounds %struct.hl_mmu_properties, ptr %dmmu.mux.mux, i32 0, i32 12
  %hop4_shift.i.i = getelementptr inbounds %struct.hl_mmu_properties, ptr %dmmu.mux.mux, i32 0, i32 6
  %hop3_mask.i.i = getelementptr inbounds %struct.hl_mmu_properties, ptr %dmmu.mux.mux, i32 0, i32 11
  %hop3_shift.i.i = getelementptr inbounds %struct.hl_mmu_properties, ptr %dmmu.mux.mux, i32 0, i32 5
  %hop2_mask.i.i = getelementptr inbounds %struct.hl_mmu_properties, ptr %dmmu.mux.mux, i32 0, i32 10
  %hop2_shift.i.i = getelementptr inbounds %struct.hl_mmu_properties, ptr %dmmu.mux.mux, i32 0, i32 4
  %hop1_mask.i.i = getelementptr inbounds %struct.hl_mmu_properties, ptr %dmmu.mux.mux, i32 0, i32 9
  %hop1_shift.i.i = getelementptr inbounds %struct.hl_mmu_properties, ptr %dmmu.mux.mux, i32 0, i32 3
  %last_mask = getelementptr inbounds %struct.hl_mmu_properties, ptr %dmmu.mux.mux, i32 0, i32 14
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0196 = phi i32 [ 1, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %sub = add nsw i32 %i.0196, -1
  %hop_pte_val50 = getelementptr %struct.hl_mmu_hop_info, ptr %hops, i32 0, i32 2, i32 %sub, i32 2
  %42 = ptrtoint ptr %hop_pte_val50 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %hop_pte_val50, align 8
  %and.i = and i64 %43, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  %and1.i = and i64 %43, -4096
  %retval.0.i = select i1 %tobool.not.i, i64 -1, i64 %and1.i
  %arrayidx53 = getelementptr %struct.hl_mmu_hop_info, ptr %hops, i32 0, i32 2, i32 %i.0196
  %44 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %retval.0.i, ptr %arrayidx53, align 8
  br i1 %tobool.not.i, label %for.body.cleanup_crit_edge, label %if.end61

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end61:                                         ; preds = %for.body
  %45 = zext i32 %i.0196 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values)
  switch i32 %i.0196, label %if.end61.get_hop_pte_addr.exit_crit_edge [
    i32 4, label %sw.bb7.i
    i32 1, label %if.end61.return.sink.split.i_crit_edge
    i32 2, label %sw.bb3.i
    i32 3, label %sw.bb5.i
  ]

if.end61.return.sink.split.i_crit_edge:           ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %return.sink.split.i

if.end61.get_hop_pte_addr.exit_crit_edge:         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_hop_pte_addr.exit

sw.bb3.i:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %return.sink.split.i

sw.bb5.i:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %return.sink.split.i

sw.bb7.i:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %return.sink.split.i

return.sink.split.i:                              ; preds = %sw.bb7.i, %sw.bb5.i, %sw.bb3.i, %if.end61.return.sink.split.i_crit_edge
  %hop4_shift.i.sink.i = phi ptr [ %hop4_shift.i.i, %sw.bb7.i ], [ %hop3_shift.i.i, %sw.bb5.i ], [ %hop2_shift.i.i, %sw.bb3.i ], [ %hop1_shift.i.i, %if.end61.return.sink.split.i_crit_edge ]
  %.sink53.in.i = phi ptr [ %hop4_mask.i.i, %sw.bb7.i ], [ %hop3_mask.i.i, %sw.bb5.i ], [ %hop2_mask.i.i, %sw.bb3.i ], [ %hop1_mask.i.i, %if.end61.return.sink.split.i_crit_edge ]
  %46 = ptrtoint ptr %.sink53.in.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %.sink53.i185 = load i64, ptr %.sink53.in.i, align 8
  %47 = ptrtoint ptr %hop4_shift.i.sink.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %hop4_shift.i.sink.i, align 8
  %49 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %hdev1, align 4
  %mmu_pte_size.i.i47.i187 = getelementptr inbounds %struct.hl_device, ptr %50, i32 0, i32 33, i32 32
  %51 = ptrtoint ptr %mmu_pte_size.i.i47.i187 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %mmu_pte_size.i.i47.i187, align 8
  %conv.i.i48.i188 = zext i32 %52 to i64
  %and.i.i49.i189 = and i64 %.sink53.i185, %virt_addr
  %shr.i.i50.i190 = lshr i64 %and.i.i49.i189, %48
  %mul.i.i51.i191 = mul i64 %shr.i.i50.i190, %conv.i.i48.i188
  %add.i.i52.i192 = add i64 %mul.i.i51.i191, %retval.0.i
  br label %get_hop_pte_addr.exit

get_hop_pte_addr.exit:                            ; preds = %return.sink.split.i, %if.end61.get_hop_pte_addr.exit_crit_edge
  %retval.0.i193 = phi i64 [ -1, %if.end61.get_hop_pte_addr.exit_crit_edge ], [ %add.i.i52.i192, %return.sink.split.i ]
  %hop_pte_addr68 = getelementptr %struct.hl_mmu_hop_info, ptr %hops, i32 0, i32 2, i32 %i.0196, i32 1
  %53 = ptrtoint ptr %hop_pte_addr68 to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %retval.0.i193, ptr %hop_pte_addr68, align 8
  %54 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %asic_funcs, align 8
  %read_pte70 = getelementptr inbounds %struct.hl_asic_funcs, ptr %55, i32 0, i32 40
  %56 = ptrtoint ptr %read_pte70 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %read_pte70, align 4
  %call74 = tail call i64 %57(ptr noundef %1, i64 noundef %retval.0.i193) #9
  %hop_pte_val77 = getelementptr %struct.hl_mmu_hop_info, ptr %hops, i32 0, i32 2, i32 %i.0196, i32 2
  %58 = ptrtoint ptr %hop_pte_val77 to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %call74, ptr %hop_pte_val77, align 8
  %and = and i64 %call74, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool81.not = icmp eq i64 %and, 0
  br i1 %tobool81.not, label %get_hop_pte_addr.exit.cleanup_crit_edge, label %if.end83

get_hop_pte_addr.exit.cleanup_crit_edge:          ; preds = %get_hop_pte_addr.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end83:                                         ; preds = %get_hop_pte_addr.exit
  %59 = ptrtoint ptr %last_mask to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %last_mask, align 8
  %and87 = and i64 %60, %call74
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and87)
  %tobool88.not = icmp eq i64 %and87, 0
  br i1 %tobool88.not, label %for.inc, label %if.end83.for.end_crit_edge

if.end83.for.end_crit_edge:                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc:                                          ; preds = %if.end83
  %inc = add nuw nsw i32 %i.0196, 1
  %exitcond.not = icmp eq i32 %inc, %spec.select
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end83.for.end_crit_edge, %if.end30.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 1, %if.end30.for.end_crit_edge ], [ %i.0196, %if.end83.for.end_crit_edge ], [ %spec.select, %for.inc.for.end_crit_edge ]
  %61 = ptrtoint ptr %num_hops to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %num_hops, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %62)
  %cmp92 = icmp eq i32 %i.0.lcssa, %62
  br i1 %cmp92, label %for.end.cleanup_crit_edge, label %if.end95

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end95:                                         ; preds = %for.end
  %hop_pte_val98 = getelementptr %struct.hl_mmu_hop_info, ptr %hops, i32 0, i32 2, i32 %i.0.lcssa, i32 2
  %63 = ptrtoint ptr %hop_pte_val98 to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %hop_pte_val98, align 8
  %and99 = and i64 %64, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and99)
  %tobool100.not = icmp eq i64 %and99, 0
  br i1 %tobool100.not, label %if.end95.cleanup_crit_edge, label %if.end102

if.end95.cleanup_crit_edge:                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end102:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #11
  %add = add i32 %i.0.lcssa, 1
  %used_hops103 = getelementptr inbounds %struct.hl_mmu_hop_info, ptr %hops, i32 0, i32 3
  %65 = ptrtoint ptr %used_hops103 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %add, ptr %used_hops103, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end102, %if.end95.cleanup_crit_edge, %for.end.cleanup_crit_edge, %get_hop_pte_addr.exit.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end102 ], [ -14, %for.end.cleanup_crit_edge ], [ -14, %if.end95.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -14, %for.body.cleanup_crit_edge ], [ -14, %get_hop_pte_addr.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gen_pool_create(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @gen_pool_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gen_pool_add_owner(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @alloc_hop(ptr noundef %ctx) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hdev1 = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 3
  %0 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 32) #15
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %mmu_priv = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 51
  %3 = ptrtoint ptr %mmu_priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mmu_priv, align 8
  %mmu_hop_table_size = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 33
  %5 = ptrtoint ptr %mmu_hop_table_size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mmu_hop_table_size, align 4
  %algo.i = getelementptr inbounds %struct.gen_pool, ptr %4, i32 0, i32 3
  %7 = ptrtoint ptr %algo.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %algo.i, align 4
  %data.i = getelementptr inbounds %struct.gen_pool, ptr %4, i32 0, i32 4
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i, align 4
  %call.i.i = tail call i32 @gen_pool_alloc_algo_owner(ptr noundef %4, i32 noundef %6, ptr noundef %8, ptr noundef %10, ptr noundef null) #9
  %conv = zext i32 %call.i.i to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool3.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool3.not, label %do.end, label %if.end8.i.i

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.16) #12
  br label %pool_add_err

if.end8.i.i:                                      ; preds = %if.end
  %13 = ptrtoint ptr %mmu_hop_table_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mmu_hop_table_size, align 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %14, i32 noundef 3520) #13
  %tobool9.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool9.not, label %shadow_err, label %if.end11

if.end11:                                         ; preds = %if.end8.i.i
  %15 = ptrtoint ptr %call9.i.i to i32
  %conv8 = zext i32 %15 to i64
  %phys_addr12 = getelementptr inbounds %struct.pgt_info, ptr %call7.i, i32 0, i32 1
  %16 = ptrtoint ptr %phys_addr12 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %conv, ptr %phys_addr12, align 8
  %shadow_addr13 = getelementptr inbounds %struct.pgt_info, ptr %call7.i, i32 0, i32 2
  %17 = ptrtoint ptr %shadow_addr13 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %conv8, ptr %shadow_addr13, align 8
  %ctx14 = getelementptr inbounds %struct.pgt_info, ptr %call7.i, i32 0, i32 3
  %18 = ptrtoint ptr %ctx14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %ctx, ptr %ctx14, align 8
  %num_of_ptes = getelementptr inbounds %struct.pgt_info, ptr %call7.i, i32 0, i32 4
  %19 = ptrtoint ptr %num_of_ptes to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %num_of_ptes, align 4
  %mul.i.i = mul i32 %15, 1640531527
  %shr.i = lshr i32 %mul.i.i, 25
  %arrayidx = getelementptr %struct.hl_ctx, ptr %ctx, i32 0, i32 1, i32 %shr.i
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  %22 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %21, ptr %call7.i, align 8
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %if.end11.hlist_add_head.exit_crit_edge, label %do.body12.i

if.end11.hlist_add_head.exit_crit_edge:           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %hlist_add_head.exit

do.body12.i:                                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %21, i32 0, i32 1
  %23 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %call7.i, ptr %pprev.i, align 4
  br label %hlist_add_head.exit

hlist_add_head.exit:                              ; preds = %do.body12.i, %if.end11.hlist_add_head.exit_crit_edge
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %call7.i, ptr %arrayidx, align 4
  %pprev34.i = getelementptr inbounds %struct.hlist_node, ptr %call7.i, i32 0, i32 1
  %25 = ptrtoint ptr %pprev34.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %arrayidx, ptr %pprev34.i, align 4
  br label %cleanup

shadow_err:                                       ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %mmu_priv to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mmu_priv, align 8
  %28 = ptrtoint ptr %mmu_hop_table_size to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mmu_hop_table_size, align 4
  tail call void @gen_pool_free_owner(ptr noundef %27, i32 noundef %call.i.i, i32 noundef %29, ptr noundef null) #9
  br label %pool_add_err

pool_add_err:                                     ; preds = %shadow_err, %do.end
  tail call void @kfree(ptr noundef nonnull %call7.i) #9
  br label %cleanup

cleanup:                                          ; preds = %pool_add_err, %hlist_add_head.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i64 [ %conv8, %hlist_add_head.exit ], [ -1, %pool_add_err ], [ -1, %entry.cleanup_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gen_pool_alloc_algo_owner(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gen_pool_free_owner(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @clear_pte(ptr nocapture noundef readonly %ctx, i64 noundef %pte_addr) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %hdev.i = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 3
  %0 = ptrtoint ptr %hdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev.i, align 4
  %asic_funcs.i = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 34
  %2 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %asic_funcs.i, align 8
  %write_pte.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %3, i32 0, i32 41
  %4 = ptrtoint ptr %write_pte.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write_pte.i, align 4
  %mmu_hop_table_size.i.i = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 33
  %6 = ptrtoint ptr %mmu_hop_table_size.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mmu_hop_table_size.i.i, align 4
  %sub.i.i = add i32 %7, -1
  %conv.i.i = zext i32 %sub.i.i to i64
  %neg.i.i = xor i64 %conv.i.i, -1
  %and.i.i = and i64 %neg.i.i, %pte_addr
  %mmu_shadow_hop0.i.i.i = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 51, i32 0, i32 1
  %8 = ptrtoint ptr %mmu_shadow_hop0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmu_shadow_hop0.i.i.i, align 4
  %10 = ptrtoint ptr %9 to i32
  %conv.i.i.i = zext i32 %10 to i64
  %asid.i.i.i = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 21
  %11 = ptrtoint ptr %asid.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %asid.i.i.i, align 8
  %mul.i.i.i = mul i32 %12, %7
  %conv2.i.i.i = zext i32 %mul.i.i.i to i64
  %add.i.i.i = add nuw nsw i64 %conv2.i.i.i, %conv.i.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i, i64 %add.i.i.i)
  %cmp.not.i.i = icmp eq i64 %and.i.i, %add.i.i.i
  br i1 %cmp.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  %conv.i11.i.i = trunc i64 %and.i.i to i32
  %mul.i.i.i.i.i = mul i32 %conv.i11.i.i, 1640531527
  %shr.i.i.i.i = lshr i32 %mul.i.i.i.i.i, 25
  %arrayidx.i.i.i = getelementptr %struct.hl_ctx, ptr %ctx, i32 0, i32 1, i32 %shr.i.i.i.i
  br label %for.cond.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i.for.cond.i.i.i_crit_edge, %if.then.i.i
  %pgt_info.0.in.i.i.i = phi ptr [ %arrayidx.i.i.i, %if.then.i.i ], [ %pgt_info.0.i.i.i, %for.body.i.i.i.for.cond.i.i.i_crit_edge ]
  %13 = ptrtoint ptr %pgt_info.0.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %pgt_info.0.i.i.i = load ptr, ptr %pgt_info.0.in.i.i.i, align 4
  %tobool2.not.i.i.i = icmp eq ptr %pgt_info.0.i.i.i, null
  br i1 %tobool2.not.i.i.i, label %for.cond.i.i.i.get_pgt_info.exit.i.i_crit_edge, label %for.body.i.i.i

for.cond.i.i.i.get_pgt_info.exit.i.i_crit_edge:   ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pgt_info.exit.i.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i
  %shadow_addr.i.i.i = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %shadow_addr.i.i.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %shadow_addr.i.i.i, align 8
  %cmp.i.i.i = icmp eq i64 %15, %and.i.i
  br i1 %cmp.i.i.i, label %for.body.i.i.i.get_pgt_info.exit.i.i_crit_edge, label %for.body.i.i.i.for.cond.i.i.i_crit_edge

for.body.i.i.i.for.cond.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i.i

for.body.i.i.i.get_pgt_info.exit.i.i_crit_edge:   ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pgt_info.exit.i.i

get_pgt_info.exit.i.i:                            ; preds = %for.body.i.i.i.get_pgt_info.exit.i.i_crit_edge, %for.cond.i.i.i.get_pgt_info.exit.i.i_crit_edge
  %phys_addr.i.i = getelementptr inbounds %struct.pgt_info, ptr %pgt_info.0.i.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %phys_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %phys_addr.i.i, align 8
  br label %write_final_pte.exit

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %mmu_pgt_addr.i.i.i = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 23
  %18 = ptrtoint ptr %mmu_pgt_addr.i.i.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %mmu_pgt_addr.i.i.i, align 8
  %add.i17.i.i = add i64 %19, %conv2.i.i.i
  br label %write_final_pte.exit

write_final_pte.exit:                             ; preds = %if.else.i.i, %get_pgt_info.exit.i.i
  %phys_hop_addr.0.i.i = phi i64 [ %17, %get_pgt_info.exit.i.i ], [ %add.i17.i.i, %if.else.i.i ]
  %and1.i.i = and i64 %conv.i.i, %pte_addr
  %add.i.i = add i64 %phys_hop_addr.0.i.i, %and1.i.i
  tail call void %5(ptr noundef %1, i64 noundef %add.i.i, i64 noundef 0) #9
  %conv.i = trunc i64 %pte_addr to i32
  %20 = inttoptr i32 %conv.i to ptr
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 0, ptr %20, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

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

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind readnone }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !28, !29, !30, !32, !33, !34, !35, !37, !38, !39, !40, !41, !43, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !63, !64, !66, !67, !69, !70, !72, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86}
!llvm.module.flags = !{!87, !88, !89, !90, !91, !92, !93, !94}
!llvm.ident = !{!95}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/misc/habanalabs/common/mmu/mmu_v1.c", i32 425, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @hl_mmu_v1_init._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @hl_mmu_v1_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/misc/habanalabs/common/mmu/mmu_v1.c", i32 434, i32 3}
!10 = !{ptr @hl_mmu_v1_init._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @hl_mmu_v1_init._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/misc/habanalabs/common/mmu/mmu_v1.c", i32 285, i32 3}
!14 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @dram_default_mapping_init._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @dram_default_mapping_init._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/misc/habanalabs/common/mmu/mmu_v1.c", i32 294, i32 3}
!19 = !{ptr @dram_default_mapping_init._entry.10, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @dram_default_mapping_init._entry_ptr.12, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.14, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/misc/habanalabs/common/mmu/mmu_v1.c", i32 304, i32 4}
!23 = !{ptr @dram_default_mapping_init._entry.13, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @dram_default_mapping_init._entry_ptr.15, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.16, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/misc/habanalabs/common/mmu/mmu_v1.c", i32 59, i32 3}
!27 = !{ptr @.str.17, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @alloc_hop._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @alloc_hop._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/misc/habanalabs/common/mmu/mmu_v1.c", i32 516, i32 3}
!32 = !{ptr @.str.19, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @hl_mmu_v1_ctx_fini._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @hl_mmu_v1_ctx_fini._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.20, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/misc/habanalabs/common/mmu/mmu_v1.c", i32 520, i32 3}
!37 = !{ptr @hl_mmu_v1_ctx_fini._rs, !36, !"_rs", i1 false, i1 false}
!38 = !{ptr @.str.22, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @hl_mmu_v1_ctx_fini._entry.21, !36, !"_entry", i1 false, i1 false}
!40 = !{ptr @hl_mmu_v1_ctx_fini._entry_ptr.23, !36, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.24, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/misc/habanalabs/common/mmu/mmu_v1.c", i32 736, i32 4}
!43 = !{ptr @.str.25, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @_hl_mmu_v1_map._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @_hl_mmu_v1_map._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.27, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/misc/habanalabs/common/mmu/mmu_v1.c", i32 744, i32 4}
!48 = !{ptr @_hl_mmu_v1_map._entry.26, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @_hl_mmu_v1_map._entry_ptr.28, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.30, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/misc/habanalabs/common/mmu/mmu_v1.c", i32 750, i32 3}
!52 = !{ptr @_hl_mmu_v1_map._entry.29, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @_hl_mmu_v1_map._entry_ptr.31, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.32, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/misc/habanalabs/common/mmu/mmu_v1.c", i32 754, i32 3}
!56 = !{ptr @.str.33, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @_hl_mmu_v1_map.__UNIQUE_ID_ddebug297, !55, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!58 = !{ptr @.str.34, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/misc/habanalabs/common/mmu/mmu_v1.c", i32 756, i32 3}
!60 = !{ptr @_hl_mmu_v1_map.__UNIQUE_ID_ddebug298, !59, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!61 = !{ptr @.str.35, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/misc/habanalabs/common/mmu/mmu_v1.c", i32 758, i32 3}
!63 = !{ptr @_hl_mmu_v1_map.__UNIQUE_ID_ddebug299, !62, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!64 = !{ptr @.str.36, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/misc/habanalabs/common/mmu/mmu_v1.c", i32 760, i32 3}
!66 = !{ptr @_hl_mmu_v1_map.__UNIQUE_ID_ddebug300, !65, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!67 = !{ptr @.str.37, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/misc/habanalabs/common/mmu/mmu_v1.c", i32 764, i32 4}
!69 = !{ptr @_hl_mmu_v1_map.__UNIQUE_ID_ddebug301, !68, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!70 = !{ptr @.str.38, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/misc/habanalabs/common/mmu/mmu_v1.c", i32 579, i32 3}
!72 = !{ptr @.str.39, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @_hl_mmu_v1_unmap._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @_hl_mmu_v1_unmap._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.41, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/misc/habanalabs/common/mmu/mmu_v1.c", i32 603, i32 4}
!77 = !{ptr @_hl_mmu_v1_unmap._entry.40, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @_hl_mmu_v1_unmap._entry_ptr.42, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.44, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/misc/habanalabs/common/mmu/mmu_v1.c", i32 610, i32 4}
!81 = !{ptr @_hl_mmu_v1_unmap._entry.43, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @_hl_mmu_v1_unmap._entry_ptr.45, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.47, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/misc/habanalabs/common/mmu/mmu_v1.c", i32 655, i32 2}
!85 = !{ptr @_hl_mmu_v1_unmap._entry.46, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @_hl_mmu_v1_unmap._entry_ptr.48, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{i32 1, !"wchar_size", i32 2}
!88 = !{i32 1, !"min_enum_size", i32 4}
!89 = !{i32 8, !"branch-target-enforcement", i32 0}
!90 = !{i32 8, !"sign-return-address", i32 0}
!91 = !{i32 8, !"sign-return-address-all", i32 0}
!92 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!93 = !{i32 7, !"uwtable", i32 1}
!94 = !{i32 7, !"frame-pointer", i32 2}
!95 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!96 = !{i32 0, i32 33}
!97 = !{!"branch_weights", i32 1, i32 2000}
!98 = !{!"branch_weights", i32 2000, i32 1}
!99 = !{i64 2148910895, i64 2148911175, i64 2148911509, i64 2148911843}
!100 = !{i64 2155855854}
!101 = !{i64 2149002176, i64 2149002181, i64 2149002194, i64 2149002238, i64 2149002272, i64 2149002293}
