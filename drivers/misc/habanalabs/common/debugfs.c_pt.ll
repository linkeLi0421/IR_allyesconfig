; ModuleID = '/llk/IR_all_yes/drivers/misc/habanalabs/common/debugfs.c_pt.bc'
source_filename = "../drivers/misc/habanalabs/common/debugfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hl_info_list = type { ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hl_device = type { ptr, [6 x i64], [6 x ptr], ptr, %struct.cdev, %struct.cdev, ptr, ptr, %struct.delayed_work, %struct.hl_device_reset_work, [32 x i8], [5 x [32 x i8]], i32, ptr, ptr, %struct.hl_user_interrupt, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.hl_cb_mgr, %struct.hl_eq, ptr, ptr, i32, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.asic_fixed_properties, ptr, ptr, %struct.hl_vm, ptr, ptr, %struct.hl_dbg_device_entry, %struct.list_head, %struct.spinlock, ptr, i32, ptr, i64, %struct.list_head, %struct.list_head, %struct.mutex, %struct.mutex, %struct.hl_cs_counters_atomic, %struct.hl_mmu_priv, [2 x %struct.hl_mmu_funcs], %struct.fw_load_mgr, [4 x %struct.pci_mem_region], %struct.hl_state_dump_specs, [2 x %struct.multi_cs_completion], %struct.hl_clk_throttle, %struct.last_error_session_info, %struct.hl_reset_info, ptr, %struct.atomic64_t, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.fw_load_mgr = type { %union.anon.77, %struct.fw_image_props, %struct.fw_image_props, i32, i32, i8, i8, i8, i8 }
%union.anon.77 = type { %struct.dynamic_fw_load_mgr }
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
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.hl_debugfs_entry = type { ptr, ptr }
%struct.hl_fpriv = type { ptr, ptr, ptr, ptr, %struct.hl_ctx_mgr, %struct.hl_cb_mgr, %struct.list_head, %struct.list_head, %struct.kref, %struct.mutex }
%struct.hl_ctx_mgr = type { %struct.mutex, %struct.idr }
%struct.hl_cb = type { %struct.kref, ptr, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, i64, ptr, i32, i32, i32, %struct.atomic_t, i8, i8, i8, i8 }
%struct.hl_cs = type { ptr, ptr, %struct.list_head, %struct.spinlock, %struct.kref, ptr, ptr, %struct.work_struct, %struct.delayed_work, %struct.list_head, %struct.list_head, %struct.list_head, ptr, i64, i64, i64, i64, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.hl_ctx = type { [128 x %struct.hlist_head], [128 x %struct.hlist_head], ptr, ptr, %struct.kref, ptr, [3 x ptr], %struct.mutex, %struct.mutex, %struct.mutex, %struct.list_head, %struct.list_head, %struct.hl_cs_counters_atomic, ptr, %struct.hl_encaps_signals_mgr, i64, ptr, %struct.spinlock, %struct.atomic64_t, %struct.atomic_t, i32, i32, i32 }
%struct.hl_encaps_signals_mgr = type { %struct.spinlock, %struct.idr }
%struct.hl_cs_job = type { %struct.list_head, ptr, ptr, ptr, %struct.work_struct, %struct.list_head, %struct.list_head, %struct.kref, i32, i32, i32, i32, i32, i32, i8, i8 }
%struct.hl_userptr = type { i32, %struct.list_head, ptr, i32, ptr, i32, %struct.list_head, i32, i64, i64, i8 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.78, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.79, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.80, ptr, %struct.address_space, %struct.list_head, %union.anon.81, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.78 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.79 = type { %struct.callback_head }
%union.anon.80 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.81 = type { ptr }
%struct.hl_asic_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hl_vm_hash_node = type { %struct.hlist_node, i64, ptr }
%struct.hl_vm_phys_pg_pack = type { i32, ptr, i64, i64, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i8, i8 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.75, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.75 = type { ptr }
%struct.cpucp_packet = type { %union.anon.102, i32, i32, %union.anon.103, i32 }
%union.anon.102 = type { i64 }
%union.anon.103 = type { i32 }
%struct.anon.105 = type { i8, i8, i8, i8 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.hl_vm_hw_block_list_node = type { %struct.list_head, ptr, i32, i32, i32 }
%struct.hl_va_range = type { %struct.mutex, %struct.list_head, i64, i64, i32 }
%struct.hl_vm_va_block = type { %struct.list_head, i64, i64, i64 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.hl_mmu_hop_info = type { i64, i64, [5 x %struct.hl_mmu_per_hop_info], i32, i32 }
%struct.hl_mmu_per_hop_info = type { i64, i64, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@hl_debugfs_add_device.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&dev_entry->file_mutex\00", [41 x i8] zeroinitializer }, align 32
@hl_debugfs_add_device.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&dev_entry->state_dump_sem\00", [37 x i8] zeroinitializer }, align 32
@hl_debugfs_add_device.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&dev_entry->cb_spinlock\00", [40 x i8] zeroinitializer }, align 32
@hl_debugfs_add_device.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&dev_entry->cs_spinlock\00", [40 x i8] zeroinitializer }, align 32
@hl_debugfs_add_device.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&dev_entry->cs_job_spinlock\00", [36 x i8] zeroinitializer }, align 32
@hl_debugfs_add_device.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"&dev_entry->userptr_spinlock\00", [35 x i8] zeroinitializer }, align 32
@hl_debugfs_add_device.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"&dev_entry->ctx_mem_hash_spinlock\00", [62 x i8] zeroinitializer }, align 32
@hl_debug_root = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"addr\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"data32\00", [25 x i8] zeroinitializer }, align 32
@hl_data32b_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @hl_data_read32, ptr @hl_data_write32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"data64\00", [25 x i8] zeroinitializer }, align 32
@hl_data64b_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @hl_data_read64, ptr @hl_data_write64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"set_power_state\00", [16 x i8] zeroinitializer }, align 32
@hl_power_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @hl_get_power_state, ptr @hl_set_power_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"i2c_bus\00", [24 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"i2c_addr\00", [23 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"i2c_reg\00", [24 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"i2c_len\00", [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"i2c_data\00", [23 x i8] zeroinitializer }, align 32
@hl_i2c_data_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @hl_i2c_data_read, ptr @hl_i2c_data_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"led0\00", [27 x i8] zeroinitializer }, align 32
@hl_led0_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr null, ptr @hl_led0_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"led1\00", [27 x i8] zeroinitializer }, align 32
@hl_led1_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr null, ptr @hl_led1_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"led2\00", [27 x i8] zeroinitializer }, align 32
@hl_led2_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr null, ptr @hl_led2_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"device\00", [25 x i8] zeroinitializer }, align 32
@hl_device_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @hl_device_read, ptr @hl_device_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_gate\00", [23 x i8] zeroinitializer }, align 32
@hl_clk_gate_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @hl_clk_gate_read, ptr @hl_clk_gate_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"stop_on_err\00", [20 x i8] zeroinitializer }, align 32
@hl_stop_on_err_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @hl_stop_on_err_read, ptr @hl_stop_on_err_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dump_security_violations\00", [39 x i8] zeroinitializer }, align 32
@hl_security_violations_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @hl_security_violations_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dma_size\00", [23 x i8] zeroinitializer }, align 32
@hl_dma_size_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr null, ptr @hl_dma_size_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"data_dma\00", [23 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"skip_reset_on_timeout\00", [42 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"state_dump\00", [21 x i8] zeroinitializer }, align 32
@hl_state_dump_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @hl_state_dump_read, ptr @hl_state_dump_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"timeout_locked\00", [17 x i8] zeroinitializer }, align 32
@hl_timeout_locked_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @hl_timeout_locked_read, ptr @hl_timeout_locked_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@hl_debugfs_list = internal constant { [8 x %struct.hl_info_list], [32 x i8] } { [8 x %struct.hl_info_list] [%struct.hl_info_list { ptr @.str.108, ptr @command_buffers_show, ptr null }, %struct.hl_info_list { ptr @.str.109, ptr @command_submission_show, ptr null }, %struct.hl_info_list { ptr @.str.110, ptr @command_submission_jobs_show, ptr null }, %struct.hl_info_list { ptr @.str.111, ptr @userptr_show, ptr null }, %struct.hl_info_list { ptr @.str.112, ptr @vm_show, ptr null }, %struct.hl_info_list { ptr @.str.113, ptr @userptr_lookup_show, ptr @userptr_lookup_write }, %struct.hl_info_list { ptr @.str.114, ptr @mmu_show, ptr @mmu_asid_va_write }, %struct.hl_info_list { ptr @.str.115, ptr @engines_show, ptr null }], [32 x i8] zeroinitializer }, align 32
@hl_debugfs_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @hl_debugfs_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @hl_debugfs_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"habanalabs\00", [21 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@hl_data_read32._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.35, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.hl_data_read32 = private unnamed_addr constant [15 x i8] c"hl_data_read32\00", align 1
@hl_data_read32._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @__func__.hl_data_read32, ptr @.str.37, i32 662, ptr @.str.38, ptr @.str.39 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Can't read during reset\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/misc/habanalabs/common/debugfs.c\00", [55 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hl_data_read32._entry_ptr = internal global ptr @hl_data_read32._entry, section ".printk_index", align 4
@hl_data_read32._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @__func__.hl_data_read32, ptr @.str.37, i32 678, ptr @.str.42, ptr @.str.39 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to read from 0x%010llx\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@hl_data_read32._entry_ptr.43 = internal global ptr @hl_data_read32._entry.40, section ".printk_index", align 4
@.str.44 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%08x\0A\00", [24 x i8] zeroinitializer }, align 32
@device_va_to_pa._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.37, i32 606, ptr @.str.42, ptr @.str.39 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"no ctx available\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"device_va_to_pa\00", [16 x i8] zeroinitializer }, align 32
@device_va_to_pa._entry_ptr = internal global ptr @device_va_to_pa._entry, section ".printk_index", align 4
@device_va_to_pa._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.37, i32 635, ptr @.str.42, ptr @.str.39 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"virt addr 0x%llx is not mapped\0A\00", [32 x i8] zeroinitializer }, align 32
@device_va_to_pa._entry_ptr.49 = internal global ptr @device_va_to_pa._entry.47, section ".printk_index", align 4
@device_va_to_pa._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.46, ptr @.str.37, i32 643, ptr @.str.42, ptr @.str.39 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"virt addr 0x%llx is not mapped to phys addr\0A\00", [51 x i8] zeroinitializer }, align 32
@device_va_to_pa._entry_ptr.52 = internal global ptr @device_va_to_pa._entry.50, section ".printk_index", align 4
@hl_data_write32._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.35, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.hl_data_write32 = private unnamed_addr constant [16 x i8] c"hl_data_write32\00", align 1
@hl_data_write32._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @__func__.hl_data_write32, ptr @.str.37, i32 698, ptr @.str.38, ptr @.str.39 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Can't write during reset\0A\00", [38 x i8] zeroinitializer }, align 32
@hl_data_write32._entry_ptr = internal global ptr @hl_data_write32._entry, section ".printk_index", align 4
@hl_data_write32._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @__func__.hl_data_write32, ptr @.str.37, i32 716, ptr @.str.42, ptr @.str.39 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to write 0x%08x to 0x%010llx\0A\00", [59 x i8] zeroinitializer }, align 32
@hl_data_write32._entry_ptr.56 = internal global ptr @hl_data_write32._entry.54, section ".printk_index", align 4
@hl_data_read64._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.35, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.hl_data_read64 = private unnamed_addr constant [15 x i8] c"hl_data_read64\00", align 1
@hl_data_read64._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @__func__.hl_data_read64, ptr @.str.37, i32 735, ptr @.str.38, ptr @.str.39 }, [40 x i8] zeroinitializer }, align 32
@hl_data_read64._entry_ptr = internal global ptr @hl_data_read64._entry, section ".printk_index", align 4
@hl_data_read64._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @__func__.hl_data_read64, ptr @.str.37, i32 751, ptr @.str.42, ptr @.str.39 }, [40 x i8] zeroinitializer }, align 32
@hl_data_read64._entry_ptr.58 = internal global ptr @hl_data_read64._entry.57, section ".printk_index", align 4
@.str.59 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"0x%016llx\0A\00", [21 x i8] zeroinitializer }, align 32
@hl_data_write64._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.35, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.hl_data_write64 = private unnamed_addr constant [16 x i8] c"hl_data_write64\00", align 1
@hl_data_write64._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @__func__.hl_data_write64, ptr @.str.37, i32 771, ptr @.str.38, ptr @.str.39 }, [40 x i8] zeroinitializer }, align 32
@hl_data_write64._entry_ptr = internal global ptr @hl_data_write64._entry, section ".printk_index", align 4
@hl_data_write64._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @__func__.hl_data_write64, ptr @.str.37, i32 789, ptr @.str.42, ptr @.str.39 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to write 0x%016llx to 0x%010llx\0A\00", [56 x i8] zeroinitializer }, align 32
@hl_data_write64._entry_ptr.62 = internal global ptr @hl_data_write64._entry.60, section ".printk_index", align 4
@.str.63 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"current power state: %d\0A1 - D0\0A2 - D3hot\0A3 - Unknown\0A\00", [42 x i8] zeroinitializer }, align 32
@hl_set_power_state.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.34, ptr @.str.64, ptr @.str.37, ptr @.str.65, i8 0, i8 -32, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hl_set_power_state\00", [45 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"invalid power state value %u\0A\00", [34 x i8] zeroinitializer }, align 32
@hl_i2c_data_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.37, i32 922, ptr @.str.42, ptr @.str.39 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Failed to read from I2C bus %d, addr %d, reg %d, len %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hl_i2c_data_read\00", [47 x i8] zeroinitializer }, align 32
@hl_i2c_data_read._entry_ptr = internal global ptr @hl_i2c_data_read._entry, section ".printk_index", align 4
@.str.68 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%#02llx\0A\00", [23 x i8] zeroinitializer }, align 32
@hl_debugfs_i2c_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.37, i32 33, ptr @.str.42, ptr @.str.39 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"I2C transaction length %u, exceeds maximum of %u\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hl_debugfs_i2c_read\00", [44 x i8] zeroinitializer }, align 32
@hl_debugfs_i2c_read._entry_ptr = internal global ptr @hl_debugfs_i2c_read._entry, section ".printk_index", align 4
@hl_debugfs_i2c_read._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.70, ptr @.str.37, i32 49, ptr @.str.42, ptr @.str.39 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to read from I2C, error %d\0A\00", [61 x i8] zeroinitializer }, align 32
@hl_debugfs_i2c_read._entry_ptr.73 = internal global ptr @hl_debugfs_i2c_read._entry.71, section ".printk_index", align 4
@hl_i2c_data_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.37, i32 950, ptr @.str.42, ptr @.str.39 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"Failed to write %#02llx to I2C bus %d, addr %d, reg %d, len %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hl_i2c_data_write\00", [46 x i8] zeroinitializer }, align 32
@hl_i2c_data_write._entry_ptr = internal global ptr @hl_i2c_data_write._entry, section ".printk_index", align 4
@hl_debugfs_i2c_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.76, ptr @.str.37, i32 65, ptr @.str.42, ptr @.str.39 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hl_debugfs_i2c_write\00", [43 x i8] zeroinitializer }, align 32
@hl_debugfs_i2c_write._entry_ptr = internal global ptr @hl_debugfs_i2c_write._entry, section ".printk_index", align 4
@hl_debugfs_i2c_write._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.76, ptr @.str.37, i32 83, ptr @.str.42, ptr @.str.39 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to write to I2C, error %d\0A\00", [62 x i8] zeroinitializer }, align 32
@hl_debugfs_i2c_write._entry_ptr.79 = internal global ptr @hl_debugfs_i2c_write._entry.77, section ".printk_index", align 4
@hl_debugfs_led_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.37, i32 107, ptr @.str.42, ptr @.str.39 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to set LED %d, error %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hl_debugfs_led_set\00", [45 x i8] zeroinitializer }, align 32
@hl_debugfs_led_set._entry_ptr = internal global ptr @hl_debugfs_led_set._entry, section ".printk_index", align 4
@.str.82 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Valid values: disable, enable, suspend, resume, cpu_timeout\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"disable\00", [24 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"suspend\00", [24 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"resume\00", [25 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cpu_timeout\00", [20 x i8] zeroinitializer }, align 32
@hl_device_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.88, ptr @.str.37, i32 1047, ptr @.str.42, ptr @.str.39 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hl_device_write\00", [16 x i8] zeroinitializer }, align 32
@hl_device_write._entry_ptr = internal global ptr @hl_device_write._entry, section ".printk_index", align 4
@.str.89 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%llx\0A\00", [24 x i8] zeroinitializer }, align 32
@hl_clk_gate_write._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.35, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.hl_clk_gate_write = private unnamed_addr constant [18 x i8] c"hl_clk_gate_write\00", align 1
@hl_clk_gate_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @__func__.hl_clk_gate_write, ptr @.str.37, i32 1082, ptr @.str.38, ptr @.str.39 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Can't change clock gating during reset\0A\00", [56 x i8] zeroinitializer }, align 32
@hl_clk_gate_write._entry_ptr = internal global ptr @hl_clk_gate_write._entry, section ".printk_index", align 4
@.str.91 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@hl_stop_on_err_write._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.35, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.hl_stop_on_err_write = private unnamed_addr constant [21 x i8] c"hl_stop_on_err_write\00", align 1
@hl_stop_on_err_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @__func__.hl_stop_on_err_write, ptr @.str.37, i32 1124, ptr @.str.38, ptr @.str.39 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Can't change stop on error during reset\0A\00", [55 x i8] zeroinitializer }, align 32
@hl_stop_on_err_write._entry_ptr = internal global ptr @hl_stop_on_err_write._entry, section ".printk_index", align 4
@hl_dma_size_write._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.35, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.hl_dma_size_write = private unnamed_addr constant [18 x i8] c"hl_dma_size_write\00", align 1
@hl_dma_size_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @__func__.hl_dma_size_write, ptr @.str.37, i32 806, ptr @.str.38, ptr @.str.39 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Can't DMA during reset\0A\00", [40 x i8] zeroinitializer }, align 32
@hl_dma_size_write._entry_ptr = internal global ptr @hl_dma_size_write._entry, section ".printk_index", align 4
@hl_dma_size_write._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @__func__.hl_dma_size_write, ptr @.str.37, i32 814, ptr @.str.42, ptr @.str.39 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"DMA read failed. size can't be 0\0A\00", [62 x i8] zeroinitializer }, align 32
@hl_dma_size_write._entry_ptr.96 = internal global ptr @hl_dma_size_write._entry.94, section ".printk_index", align 4
@hl_dma_size_write._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @__func__.hl_dma_size_write, ptr @.str.37, i32 820, ptr @.str.42, ptr @.str.39 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"DMA read failed. size can't be larger than 128MB\0A\00", [46 x i8] zeroinitializer }, align 32
@hl_dma_size_write._entry_ptr.99 = internal global ptr @hl_dma_size_write._entry.97, section ".printk_index", align 4
@hl_dma_size_write._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @__func__.hl_dma_size_write, ptr @.str.37, i32 827, ptr @.str.42, ptr @.str.39 }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"DMA read failed. Invalid 0x%010llx + 0x%08x\0A\00", [51 x i8] zeroinitializer }, align 32
@hl_dma_size_write._entry_ptr.102 = internal global ptr @hl_dma_size_write._entry.100, section ".printk_index", align 4
@hl_dma_size_write._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @__func__.hl_dma_size_write, ptr @.str.37, i32 842, ptr @.str.42, ptr @.str.39 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to DMA from 0x%010llx\0A\00", [34 x i8] zeroinitializer }, align 32
@hl_dma_size_write._entry_ptr.105 = internal global ptr @hl_dma_size_write._entry.103, section ".printk_index", align 4
@hl_state_dump_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.107, ptr @.str.37, i32 1183, ptr @.str.42, ptr @.str.39 }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Invalid number of dumps to skip\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hl_state_dump_write\00", [44 x i8] zeroinitializer }, align 32
@hl_state_dump_write._entry_ptr = internal global ptr @hl_state_dump_write._entry, section ".printk_index", align 4
@.str.108 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"command_buffers\00", [16 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"command_submission\00", [45 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"command_submission_jobs\00", [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"userptr\00", [24 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"vm\00", [29 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"userptr_lookup\00", [17 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mmu\00", [28 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"engines\00", [24 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c" CB ID   CTX ID   CB size    CB RefCnt    mmap?   CS counter\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"---------------------------------------------------------------\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"   %03llu        %d    0x%08x      %d          %d          %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c" CS ID   CTX ASID   CS RefCnt   Submitted    Completed\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"------------------------------------------------------\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"   %llu       %d          %d           %d            %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c" JOB ID   CS ID    CTX ASID   JOB RefCnt   H/W Queue\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"----------------------------------------------------\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"   %02d      %llu        %d          %d           %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"   %02d      0        %d          %d           %d\0A\00", [45 x i8] zeroinitializer }, align 32
@__const.userptr_show.dma_dir = private unnamed_addr constant [4 x [30 x i8]] [[30 x i8] c"DMA_BIDIRECTIONAL\00\00\00\00\00\00\00\00\00\00\00\00\00", [30 x i8] c"DMA_TO_DEVICE\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [30 x i8] c"DMA_FROM_DEVICE\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [30 x i8] c"DMA_NONE\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"], align 1
@.str.127 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c" pid      user virtual address     size             dma dir\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"----------------------------------------------------------\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c" %-7d  0x%-14llx      %-10llu    %-30s\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\0A\0A----------------------------------------------------\00", [41 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\0A----------------------------------------------------\0A\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ctx asid: %u\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\0Amappings:\0A\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"    virtual address        size          handle\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"    0x%-14llx      %-10llu\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"    0x%-14llx      %-10llu       %-4u\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\0Ahw_block mappings:\0A\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"    virtual address    size    HW block id\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"-------------------------------------------\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"    0x%-14lx   %-6u      %-9u\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\0A\0Aallocations:\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\0Ahandle: %u\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"page size: %u\0A\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"   physical address\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"---------------------\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"    0x%-14llx\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\0AVA ranges:\0A\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"   va_range %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%#16llx - %#16llx (%#llx)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c" user virtual address         dma address       pid        region start     region size\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"---------------------------------------------------------------------------------------\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c" 0x%-18llx  0x%-16llx  %-8u  0x%-16llx %-12llu\0A\00", [48 x i8] zeroinitializer }, align 32
@mmu_show._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.153, ptr @.str.37, i32 445, ptr @.str.42, ptr @.str.39 }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mmu_show\00", [23 x i8] zeroinitializer }, align 32
@mmu_show._entry_ptr = internal global ptr @mmu_show._entry, section ".printk_index", align 4
@mmu_show._entry.154 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.153, ptr @.str.37, i32 451, ptr @.str.42, ptr @.str.39 }, [40 x i8] zeroinitializer }, align 32
@mmu_show._entry_ptr.155 = internal global ptr @mmu_show._entry.154, section ".printk_index", align 4
@.str.156 = internal constant { [106 x i8], [54 x i8] } { [106 x i8] c"asid: %u, virt_addr: 0x%llx, scrambled virt_addr: 0x%llx,\0Aphys_addr: 0x%llx, scrambled_phys_addr: 0x%llx\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"asid: %u, virt_addr: 0x%llx, phys_addr: 0x%llx\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hop%d_addr: 0x%llx\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"hop%d_pte_addr: 0x%llx\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hop%d_pte: 0x%llx\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"0x\00", [29 x i8] zeroinitializer }, align 32
@mmu_asid_va_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.162, ptr @.str.163, ptr @.str.37, i32 519, ptr @.str.42, ptr @.str.39 }, [40 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"usage: echo <asid> <0xaddr> > mmu\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mmu_asid_va_write\00", [46 x i8] zeroinitializer }, align 32
@mmu_asid_va_write._entry_ptr = internal global ptr @mmu_asid_va_write._entry, section ".printk_index", align 4
@.str.166 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@engines_show._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.35, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.engines_show = private unnamed_addr constant [13 x i8] c"engines_show\00", align 1
@engines_show._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @__func__.engines_show, ptr @.str.37, i32 532, ptr @.str.38, ptr @.str.39 }, [40 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Can't check device idle during reset\0A\00", [58 x i8] zeroinitializer }, align 32
@engines_show._entry_ptr = internal global ptr @engines_show._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1384, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1385, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1386, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1387, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1388, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1389, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1390, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant [14 x i8] c"hl_debug_root\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 20, i32 23 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1395, i32 21 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1400, i32 22 }
@___asan_gen_.219 = private unnamed_addr constant [16 x i8] c"hl_data32b_fops\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1243, i32 37 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1406, i32 22 }
@___asan_gen_.225 = private unnamed_addr constant [16 x i8] c"hl_data64b_fops\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1249, i32 37 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1412, i32 22 }
@___asan_gen_.231 = private unnamed_addr constant [14 x i8] c"hl_power_fops\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1266, i32 37 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1418, i32 20 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1423, i32 20 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1428, i32 20 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1433, i32 20 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1438, i32 22 }
@___asan_gen_.249 = private unnamed_addr constant [17 x i8] c"hl_i2c_data_fops\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1260, i32 37 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1444, i32 22 }
@___asan_gen_.255 = private unnamed_addr constant [13 x i8] c"hl_led0_fops\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1272, i32 37 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1450, i32 22 }
@___asan_gen_.261 = private unnamed_addr constant [13 x i8] c"hl_led1_fops\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1277, i32 37 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1456, i32 22 }
@___asan_gen_.267 = private unnamed_addr constant [13 x i8] c"hl_led2_fops\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1282, i32 37 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1462, i32 22 }
@___asan_gen_.273 = private unnamed_addr constant [15 x i8] c"hl_device_fops\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1287, i32 37 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1468, i32 22 }
@___asan_gen_.279 = private unnamed_addr constant [17 x i8] c"hl_clk_gate_fops\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1293, i32 37 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1474, i32 22 }
@___asan_gen_.285 = private unnamed_addr constant [20 x i8] c"hl_stop_on_err_fops\00", align 1
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1299, i32 37 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1480, i32 22 }
@___asan_gen_.291 = private unnamed_addr constant [28 x i8] c"hl_security_violations_fops\00", align 1
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1305, i32 37 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1486, i32 22 }
@___asan_gen_.297 = private unnamed_addr constant [17 x i8] c"hl_dma_size_fops\00", align 1
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1255, i32 37 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1492, i32 22 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1497, i32 20 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1502, i32 22 }
@___asan_gen_.309 = private unnamed_addr constant [19 x i8] c"hl_state_dump_fops\00", align 1
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1310, i32 37 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1508, i32 22 }
@___asan_gen_.315 = private unnamed_addr constant [23 x i8] c"hl_timeout_locked_fops\00", align 1
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1316, i32 37 }
@___asan_gen_.318 = private unnamed_addr constant [16 x i8] c"hl_debugfs_list\00", align 1
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1322, i32 34 }
@___asan_gen_.321 = private unnamed_addr constant [16 x i8] c"hl_debugfs_fops\00", align 1
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1352, i32 37 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1675, i32 37 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 662, i32 3 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 678, i32 3 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 682, i32 19 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 606, i32 3 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 633, i32 3 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 641, i32 3 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 698, i32 3 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 715, i32 3 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 735, i32 3 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 751, i32 3 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 755, i32 19 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 771, i32 3 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 788, i32 3 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 872, i32 3 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 898, i32 3 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 920, i32 3 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 926, i32 19 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 32, i32 3 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 49, i32 3 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 948, i32 3 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 64, i32 3 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 83, i32 3 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 107, i32 3 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1018, i32 3 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1035, i32 14 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1037, i32 21 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1039, i32 21 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1041, i32 21 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1043, i32 21 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1046, i32 3 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1065, i32 19 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1081, i32 3 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1107, i32 19 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1123, i32 3 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 806, i32 3 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 814, i32 3 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 819, i32 3 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 825, i32 3 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 842, i32 3 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1183, i32 3 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1323, i32 3 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1324, i32 3 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1325, i32 3 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1326, i32 3 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1327, i32 3 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1328, i32 3 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1329, i32 3 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1330, i32 3 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 122, i32 16 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 123, i32 16 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 124, i32 16 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 127, i32 4 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 154, i32 16 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 155, i32 16 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 158, i32 4 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 185, i32 16 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 186, i32 16 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 190, i32 5 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 195, i32 5 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 223, i32 16 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 224, i32 16 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 226, i32 17 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 263, i32 15 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 264, i32 15 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 265, i32 17 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 267, i32 15 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 268, i32 15 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 277, i32 6 }
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 282, i32 6 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 291, i32 16 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 292, i32 16 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 293, i32 16 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 298, i32 6 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 308, i32 16 }
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 314, i32 18 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 315, i32 18 }
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 317, i32 16 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 318, i32 16 }
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 320, i32 19 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 332, i32 15 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 335, i32 18 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 339, i32 19 }
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 387, i32 19 }
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 388, i32 19 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 390, i32 20 }
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 445, i32 3 }
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 450, i32 3 }
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 460, i32 4 }
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 466, i32 4 }
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 470, i32 17 }
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 472, i32 17 }
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 474, i32 17 }
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 510, i32 19 }
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 519, i32 2 }
@___asan_gen_.748 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 156, i32 2 }
@___asan_gen_.750 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.753 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.756 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.757 = private constant [44 x i8] c"../drivers/misc/habanalabs/common/debugfs.c\00", align 1
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 531, i32 3 }
@llvm.compiler.used = appending global [228 x ptr] [ptr @device_va_to_pa._entry, ptr @device_va_to_pa._entry.47, ptr @device_va_to_pa._entry.50, ptr @device_va_to_pa._entry_ptr, ptr @device_va_to_pa._entry_ptr.49, ptr @device_va_to_pa._entry_ptr.52, ptr @engines_show._entry, ptr @engines_show._entry_ptr, ptr @hl_clk_gate_write._entry, ptr @hl_clk_gate_write._entry_ptr, ptr @hl_data_read32._entry, ptr @hl_data_read32._entry.40, ptr @hl_data_read32._entry_ptr, ptr @hl_data_read32._entry_ptr.43, ptr @hl_data_read64._entry, ptr @hl_data_read64._entry.57, ptr @hl_data_read64._entry_ptr, ptr @hl_data_read64._entry_ptr.58, ptr @hl_data_write32._entry, ptr @hl_data_write32._entry.54, ptr @hl_data_write32._entry_ptr, ptr @hl_data_write32._entry_ptr.56, ptr @hl_data_write64._entry, ptr @hl_data_write64._entry.60, ptr @hl_data_write64._entry_ptr, ptr @hl_data_write64._entry_ptr.62, ptr @hl_debugfs_i2c_read._entry, ptr @hl_debugfs_i2c_read._entry.71, ptr @hl_debugfs_i2c_read._entry_ptr, ptr @hl_debugfs_i2c_read._entry_ptr.73, ptr @hl_debugfs_i2c_write._entry, ptr @hl_debugfs_i2c_write._entry.77, ptr @hl_debugfs_i2c_write._entry_ptr, ptr @hl_debugfs_i2c_write._entry_ptr.79, ptr @hl_debugfs_led_set._entry, ptr @hl_debugfs_led_set._entry_ptr, ptr @hl_device_write._entry, ptr @hl_device_write._entry_ptr, ptr @hl_dma_size_write._entry, ptr @hl_dma_size_write._entry.100, ptr @hl_dma_size_write._entry.103, ptr @hl_dma_size_write._entry.94, ptr @hl_dma_size_write._entry.97, ptr @hl_dma_size_write._entry_ptr, ptr @hl_dma_size_write._entry_ptr.102, ptr @hl_dma_size_write._entry_ptr.105, ptr @hl_dma_size_write._entry_ptr.96, ptr @hl_dma_size_write._entry_ptr.99, ptr @hl_i2c_data_read._entry, ptr @hl_i2c_data_read._entry_ptr, ptr @hl_i2c_data_write._entry, ptr @hl_i2c_data_write._entry_ptr, ptr @hl_state_dump_write._entry, ptr @hl_state_dump_write._entry_ptr, ptr @hl_stop_on_err_write._entry, ptr @hl_stop_on_err_write._entry_ptr, ptr @mmu_asid_va_write._entry, ptr @mmu_asid_va_write._entry_ptr, ptr @mmu_show._entry, ptr @mmu_show._entry.154, ptr @mmu_show._entry_ptr, ptr @mmu_show._entry_ptr.155, ptr @hl_debugfs_add_device.__key, ptr @.str, ptr @hl_debugfs_add_device.__key.1, ptr @.str.2, ptr @hl_debugfs_add_device.__key.3, ptr @.str.4, ptr @hl_debugfs_add_device.__key.5, ptr @.str.6, ptr @hl_debugfs_add_device.__key.7, ptr @.str.8, ptr @hl_debugfs_add_device.__key.9, ptr @.str.10, ptr @hl_debugfs_add_device.__key.11, ptr @.str.12, ptr @hl_debug_root, ptr @.str.13, ptr @.str.14, ptr @hl_data32b_fops, ptr @.str.15, ptr @hl_data64b_fops, ptr @.str.16, ptr @hl_power_fops, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @hl_i2c_data_fops, ptr @.str.22, ptr @hl_led0_fops, ptr @.str.23, ptr @hl_led1_fops, ptr @.str.24, ptr @hl_led2_fops, ptr @.str.25, ptr @hl_device_fops, ptr @.str.26, ptr @hl_clk_gate_fops, ptr @.str.27, ptr @hl_stop_on_err_fops, ptr @.str.28, ptr @hl_security_violations_fops, ptr @.str.29, ptr @hl_dma_size_fops, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @hl_state_dump_fops, ptr @.str.33, ptr @hl_timeout_locked_fops, ptr @hl_debugfs_list, ptr @hl_debugfs_fops, ptr @.str.34, ptr @hl_data_read32._rs, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.51, ptr @hl_data_write32._rs, ptr @.str.53, ptr @.str.55, ptr @hl_data_read64._rs, ptr @.str.59, ptr @hl_data_write64._rs, ptr @.str.61, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.72, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.78, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @hl_clk_gate_write._rs, ptr @.str.90, ptr @.str.91, ptr @hl_stop_on_err_write._rs, ptr @.str.92, ptr @hl_dma_size_write._rs, ptr @.str.93, ptr @.str.95, ptr @.str.98, ptr @.str.101, ptr @.str.104, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.166, ptr @engines_show._rs, ptr @.str.167], section "llvm.metadata"
@0 = internal global [197 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_debugfs_add_device.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_debugfs_add_device.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_debugfs_add_device.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_debugfs_add_device.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_debugfs_add_device.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_debugfs_add_device.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_debugfs_add_device.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_debug_root to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_data32b_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_data64b_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_power_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_i2c_data_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_led0_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_led1_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_led2_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_device_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_clk_gate_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_stop_on_err_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_security_violations_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_dma_size_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_state_dump_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_timeout_locked_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_debugfs_list to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_debugfs_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_data_read32._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_data_read32._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_data_read32._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_va_to_pa._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_va_to_pa._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_va_to_pa._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_data_write32._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_data_write32._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_data_write32._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_data_read64._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_data_read64._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_data_read64._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_data_write64._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_data_write64._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_data_write64._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_i2c_data_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_debugfs_i2c_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_debugfs_i2c_read._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_i2c_data_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_debugfs_i2c_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_debugfs_i2c_write._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_debugfs_led_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_device_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_clk_gate_write._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_clk_gate_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_stop_on_err_write._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_stop_on_err_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_dma_size_write._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_dma_size_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_dma_size_write._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_dma_size_write._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_dma_size_write._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_dma_size_write._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_state_dump_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmu_show._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmu_show._entry.154 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 106, i32 160, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmu_asid_va_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @engines_show._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @engines_show._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hl_debugfs_add_device(ptr noundef %hdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hl_debugfs = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 39
  %hdev2 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 39, i32 1
  %0 = ptrtoint ptr %hdev2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %hdev, ptr %hdev2, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 64) #15
  %entry_arr = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 39, i32 2
  %2 = ptrtoint ptr %entry_arr to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %entry_arr, align 8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %blob_desc = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 39, i32 15
  %size = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 39, i32 15, i32 1
  %3 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %size, align 4
  %4 = ptrtoint ptr %blob_desc to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %blob_desc, align 4
  %file_list = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 39, i32 3
  %5 = ptrtoint ptr %file_list to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %file_list, ptr %file_list, align 4
  %prev.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 39, i32 3, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %file_list, ptr %prev.i, align 4
  %cb_list = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 39, i32 5
  %7 = ptrtoint ptr %cb_list to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %cb_list, ptr %cb_list, align 4
  %prev.i147 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 39, i32 5, i32 1
  %8 = ptrtoint ptr %prev.i147 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %cb_list, ptr %prev.i147, align 4
  %cs_list = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 39, i32 7
  %9 = ptrtoint ptr %cs_list to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %cs_list, ptr %cs_list, align 4
  %prev.i148 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 39, i32 7, i32 1
  %10 = ptrtoint ptr %prev.i148 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %cs_list, ptr %prev.i148, align 4
  %cs_job_list = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 39, i32 9
  %11 = ptrtoint ptr %cs_job_list to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %cs_job_list, ptr %cs_job_list, align 4
  %prev.i149 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 39, i32 9, i32 1
  %12 = ptrtoint ptr %prev.i149 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %cs_job_list, ptr %prev.i149, align 4
  %userptr_list = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 39, i32 11
  %13 = ptrtoint ptr %userptr_list to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %userptr_list, ptr %userptr_list, align 4
  %prev.i150 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 39, i32 11, i32 1
  %14 = ptrtoint ptr %prev.i150 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %userptr_list, ptr %prev.i150, align 4
  %ctx_mem_hash_list = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 39, i32 13
  %15 = ptrtoint ptr %ctx_mem_hash_list to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %ctx_mem_hash_list, ptr %ctx_mem_hash_list, align 4
  %prev.i151 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 39, i32 13, i32 1
  %16 = ptrtoint ptr %prev.i151 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %ctx_mem_hash_list, ptr %prev.i151, align 4
  %file_mutex = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 39, i32 4
  tail call void @__mutex_init(ptr noundef %file_mutex, ptr noundef nonnull @.str, ptr noundef nonnull @hl_debugfs_add_device.__key) #12
  %state_dump_sem = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 39, i32 17
  tail call void @__init_rwsem(ptr noundef %state_dump_sem, ptr noundef nonnull @.str.2, ptr noundef nonnull @hl_debugfs_add_device.__key.1) #12
  %cb_spinlock = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 39, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %cb_spinlock, ptr noundef nonnull @.str.4, ptr noundef nonnull @hl_debugfs_add_device.__key.3, i16 noundef signext 3) #12
  %cs_spinlock = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 39, i32 8
  tail call void @__raw_spin_lock_init(ptr noundef %cs_spinlock, ptr noundef nonnull @.str.6, ptr noundef nonnull @hl_debugfs_add_device.__key.5, i16 noundef signext 3) #12
  %cs_job_spinlock = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 39, i32 10
  tail call void @__raw_spin_lock_init(ptr noundef %cs_job_spinlock, ptr noundef nonnull @.str.8, ptr noundef nonnull @hl_debugfs_add_device.__key.7, i16 noundef signext 3) #12
  %userptr_spinlock = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 39, i32 12
  tail call void @__raw_spin_lock_init(ptr noundef %userptr_spinlock, ptr noundef nonnull @.str.10, ptr noundef nonnull @hl_debugfs_add_device.__key.9, i16 noundef signext 3) #12
  %ctx_mem_hash_spinlock = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 39, i32 14
  tail call void @__raw_spin_lock_init(ptr noundef %ctx_mem_hash_spinlock, ptr noundef nonnull @.str.12, ptr noundef nonnull @hl_debugfs_add_device.__key.11, i16 noundef signext 3) #12
  %dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end.dev_name.exit_crit_edge

if.end.dev_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %18, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %22, %if.end.i ], [ %20, %if.end.dev_name.exit_crit_edge ]
  %23 = load ptr, ptr @hl_debug_root, align 4
  %call29 = tail call ptr @debugfs_create_dir(ptr noundef %retval.0.i, ptr noundef %23) #12
  %24 = ptrtoint ptr %hl_debugfs to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call29, ptr %hl_debugfs, align 8
  %addr = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 39, i32 18
  tail call void @debugfs_create_x64(ptr noundef nonnull @.str.13, i16 noundef zeroext 420, ptr noundef %call29, ptr noundef %addr) #12
  %25 = ptrtoint ptr %hl_debugfs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hl_debugfs, align 8
  %call32 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.14, i16 noundef zeroext 420, ptr noundef %26, ptr noundef %hl_debugfs, ptr noundef nonnull @hl_data32b_fops) #12
  %27 = ptrtoint ptr %hl_debugfs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hl_debugfs, align 8
  %call34 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.15, i16 noundef zeroext 420, ptr noundef %28, ptr noundef %hl_debugfs, ptr noundef nonnull @hl_data64b_fops) #12
  %29 = ptrtoint ptr %hl_debugfs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hl_debugfs, align 8
  %call36 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.16, i16 noundef zeroext 128, ptr noundef %30, ptr noundef %hl_debugfs, ptr noundef nonnull @hl_power_fops) #12
  %31 = ptrtoint ptr %hl_debugfs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hl_debugfs, align 8
  %i2c_bus = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 39, i32 23
  tail call void @debugfs_create_u8(ptr noundef nonnull @.str.17, i16 noundef zeroext 420, ptr noundef %32, ptr noundef %i2c_bus) #12
  %33 = ptrtoint ptr %hl_debugfs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hl_debugfs, align 8
  %i2c_addr = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 39, i32 24
  tail call void @debugfs_create_u8(ptr noundef nonnull @.str.18, i16 noundef zeroext 420, ptr noundef %34, ptr noundef %i2c_addr) #12
  %35 = ptrtoint ptr %hl_debugfs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hl_debugfs, align 8
  %i2c_reg = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 39, i32 25
  tail call void @debugfs_create_u8(ptr noundef nonnull @.str.19, i16 noundef zeroext 420, ptr noundef %36, ptr noundef %i2c_reg) #12
  %37 = ptrtoint ptr %hl_debugfs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hl_debugfs, align 8
  %i2c_len = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 39, i32 26
  tail call void @debugfs_create_u8(ptr noundef nonnull @.str.20, i16 noundef zeroext 420, ptr noundef %38, ptr noundef %i2c_len) #12
  %39 = ptrtoint ptr %hl_debugfs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hl_debugfs, align 8
  %call42 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.21, i16 noundef zeroext 420, ptr noundef %40, ptr noundef %hl_debugfs, ptr noundef nonnull @hl_i2c_data_fops) #12
  %41 = ptrtoint ptr %hl_debugfs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hl_debugfs, align 8
  %call44 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.22, i16 noundef zeroext 128, ptr noundef %42, ptr noundef %hl_debugfs, ptr noundef nonnull @hl_led0_fops) #12
  %43 = ptrtoint ptr %hl_debugfs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hl_debugfs, align 8
  %call46 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.23, i16 noundef zeroext 128, ptr noundef %44, ptr noundef %hl_debugfs, ptr noundef nonnull @hl_led1_fops) #12
  %45 = ptrtoint ptr %hl_debugfs to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hl_debugfs, align 8
  %call48 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.24, i16 noundef zeroext 128, ptr noundef %46, ptr noundef %hl_debugfs, ptr noundef nonnull @hl_led2_fops) #12
  %47 = ptrtoint ptr %hl_debugfs to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %hl_debugfs, align 8
  %call50 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.25, i16 noundef zeroext 128, ptr noundef %48, ptr noundef %hl_debugfs, ptr noundef nonnull @hl_device_fops) #12
  %49 = ptrtoint ptr %hl_debugfs to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %hl_debugfs, align 8
  %call52 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.26, i16 noundef zeroext 128, ptr noundef %50, ptr noundef %hl_debugfs, ptr noundef nonnull @hl_clk_gate_fops) #12
  %51 = ptrtoint ptr %hl_debugfs to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %hl_debugfs, align 8
  %call54 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.27, i16 noundef zeroext 420, ptr noundef %52, ptr noundef %hl_debugfs, ptr noundef nonnull @hl_stop_on_err_fops) #12
  %53 = ptrtoint ptr %hl_debugfs to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %hl_debugfs, align 8
  %call56 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.28, i16 noundef zeroext 420, ptr noundef %54, ptr noundef %hl_debugfs, ptr noundef nonnull @hl_security_violations_fops) #12
  %55 = ptrtoint ptr %hl_debugfs to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %hl_debugfs, align 8
  %call58 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.29, i16 noundef zeroext 128, ptr noundef %56, ptr noundef %hl_debugfs, ptr noundef nonnull @hl_dma_size_fops) #12
  %57 = ptrtoint ptr %hl_debugfs to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %hl_debugfs, align 8
  %call61 = tail call ptr @debugfs_create_blob(ptr noundef nonnull @.str.30, i16 noundef zeroext 256, ptr noundef %58, ptr noundef %blob_desc) #12
  %59 = ptrtoint ptr %hl_debugfs to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %hl_debugfs, align 8
  %skip_reset_on_timeout = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 59, i32 11
  tail call void @debugfs_create_x8(ptr noundef nonnull @.str.31, i16 noundef zeroext 420, ptr noundef %60, ptr noundef %skip_reset_on_timeout) #12
  %61 = ptrtoint ptr %hl_debugfs to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %hl_debugfs, align 8
  %call64 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.32, i16 noundef zeroext 384, ptr noundef %62, ptr noundef %hl_debugfs, ptr noundef nonnull @hl_state_dump_fops) #12
  %63 = ptrtoint ptr %hl_debugfs to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %hl_debugfs, align 8
  %call66 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.33, i16 noundef zeroext 420, ptr noundef %64, ptr noundef %hl_debugfs, ptr noundef nonnull @hl_timeout_locked_fops) #12
  %65 = ptrtoint ptr %entry_arr to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %entry_arr, align 8
  %67 = ptrtoint ptr %hl_debugfs to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %hl_debugfs, align 8
  %call69 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.108, i16 noundef zeroext 292, ptr noundef %68, ptr noundef %66, ptr noundef nonnull @hl_debugfs_fops) #12
  %69 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @hl_debugfs_list, ptr %66, align 4
  %dev_entry71 = getelementptr inbounds %struct.hl_debugfs_entry, ptr %66, i32 0, i32 1
  %70 = ptrtoint ptr %dev_entry71 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %hl_debugfs, ptr %dev_entry71, align 4
  %incdec.ptr = getelementptr %struct.hl_debugfs_entry, ptr %66, i32 1
  %71 = ptrtoint ptr %hl_debugfs to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %hl_debugfs, align 8
  %call69.1 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.109, i16 noundef zeroext 292, ptr noundef %72, ptr noundef %incdec.ptr, ptr noundef nonnull @hl_debugfs_fops) #12
  %73 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr getelementptr inbounds ([8 x %struct.hl_info_list], ptr @hl_debugfs_list, i32 0, i32 1), ptr %incdec.ptr, align 4
  %dev_entry71.1 = getelementptr %struct.hl_debugfs_entry, ptr %66, i32 1, i32 1
  %74 = ptrtoint ptr %dev_entry71.1 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %hl_debugfs, ptr %dev_entry71.1, align 4
  %incdec.ptr.1 = getelementptr %struct.hl_debugfs_entry, ptr %66, i32 2
  %75 = ptrtoint ptr %hl_debugfs to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %hl_debugfs, align 8
  %call69.2 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.110, i16 noundef zeroext 292, ptr noundef %76, ptr noundef %incdec.ptr.1, ptr noundef nonnull @hl_debugfs_fops) #12
  %77 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr getelementptr inbounds ([8 x %struct.hl_info_list], ptr @hl_debugfs_list, i32 0, i32 2), ptr %incdec.ptr.1, align 4
  %dev_entry71.2 = getelementptr %struct.hl_debugfs_entry, ptr %66, i32 2, i32 1
  %78 = ptrtoint ptr %dev_entry71.2 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %hl_debugfs, ptr %dev_entry71.2, align 4
  %incdec.ptr.2 = getelementptr %struct.hl_debugfs_entry, ptr %66, i32 3
  %79 = ptrtoint ptr %hl_debugfs to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %hl_debugfs, align 8
  %call69.3 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.111, i16 noundef zeroext 292, ptr noundef %80, ptr noundef %incdec.ptr.2, ptr noundef nonnull @hl_debugfs_fops) #12
  %81 = ptrtoint ptr %incdec.ptr.2 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr getelementptr inbounds ([8 x %struct.hl_info_list], ptr @hl_debugfs_list, i32 0, i32 3), ptr %incdec.ptr.2, align 4
  %dev_entry71.3 = getelementptr %struct.hl_debugfs_entry, ptr %66, i32 3, i32 1
  %82 = ptrtoint ptr %dev_entry71.3 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %hl_debugfs, ptr %dev_entry71.3, align 4
  %incdec.ptr.3 = getelementptr %struct.hl_debugfs_entry, ptr %66, i32 4
  %83 = ptrtoint ptr %hl_debugfs to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %hl_debugfs, align 8
  %call69.4 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.112, i16 noundef zeroext 292, ptr noundef %84, ptr noundef %incdec.ptr.3, ptr noundef nonnull @hl_debugfs_fops) #12
  %85 = ptrtoint ptr %incdec.ptr.3 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr getelementptr inbounds ([8 x %struct.hl_info_list], ptr @hl_debugfs_list, i32 0, i32 4), ptr %incdec.ptr.3, align 4
  %dev_entry71.4 = getelementptr %struct.hl_debugfs_entry, ptr %66, i32 4, i32 1
  %86 = ptrtoint ptr %dev_entry71.4 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %hl_debugfs, ptr %dev_entry71.4, align 4
  %incdec.ptr.4 = getelementptr %struct.hl_debugfs_entry, ptr %66, i32 5
  %87 = ptrtoint ptr %hl_debugfs to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %hl_debugfs, align 8
  %call69.5 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.113, i16 noundef zeroext 292, ptr noundef %88, ptr noundef %incdec.ptr.4, ptr noundef nonnull @hl_debugfs_fops) #12
  %89 = ptrtoint ptr %incdec.ptr.4 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr getelementptr inbounds ([8 x %struct.hl_info_list], ptr @hl_debugfs_list, i32 0, i32 5), ptr %incdec.ptr.4, align 4
  %dev_entry71.5 = getelementptr %struct.hl_debugfs_entry, ptr %66, i32 5, i32 1
  %90 = ptrtoint ptr %dev_entry71.5 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %hl_debugfs, ptr %dev_entry71.5, align 4
  %incdec.ptr.5 = getelementptr %struct.hl_debugfs_entry, ptr %66, i32 6
  %91 = ptrtoint ptr %hl_debugfs to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %hl_debugfs, align 8
  %call69.6 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.114, i16 noundef zeroext 292, ptr noundef %92, ptr noundef %incdec.ptr.5, ptr noundef nonnull @hl_debugfs_fops) #12
  %93 = ptrtoint ptr %incdec.ptr.5 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr getelementptr inbounds ([8 x %struct.hl_info_list], ptr @hl_debugfs_list, i32 0, i32 6), ptr %incdec.ptr.5, align 4
  %dev_entry71.6 = getelementptr %struct.hl_debugfs_entry, ptr %66, i32 6, i32 1
  %94 = ptrtoint ptr %dev_entry71.6 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %hl_debugfs, ptr %dev_entry71.6, align 4
  %incdec.ptr.6 = getelementptr %struct.hl_debugfs_entry, ptr %66, i32 7
  %95 = ptrtoint ptr %hl_debugfs to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %hl_debugfs, align 8
  %call69.7 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.115, i16 noundef zeroext 292, ptr noundef %96, ptr noundef %incdec.ptr.6, ptr noundef nonnull @hl_debugfs_fops) #12
  %97 = ptrtoint ptr %incdec.ptr.6 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr getelementptr inbounds ([8 x %struct.hl_info_list], ptr @hl_debugfs_list, i32 0, i32 7), ptr %incdec.ptr.6, align 4
  %dev_entry71.7 = getelementptr %struct.hl_debugfs_entry, ptr %66, i32 7, i32 1
  %98 = ptrtoint ptr %dev_entry71.7 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %hl_debugfs, ptr %dev_entry71.7, align 4
  br label %cleanup

cleanup:                                          ; preds = %dev_name.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_x64(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_u8(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_blob(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_x8(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hl_debugfs_remove_device(ptr noundef %hdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hl_debugfs = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 39
  %0 = ptrtoint ptr %hl_debugfs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hl_debugfs, align 8
  tail call void @debugfs_remove(ptr noundef %1) #12
  %file_mutex = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 39, i32 4
  tail call void @mutex_destroy(ptr noundef %file_mutex) #12
  %blob_desc = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 39, i32 15
  %2 = ptrtoint ptr %blob_desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %blob_desc, align 4
  tail call void @vfree(ptr noundef %3) #12
  %arrayidx = getelementptr %struct.hl_device, ptr %hdev, i32 0, i32 39, i32 16, i32 0
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  tail call void @vfree(ptr noundef %5) #12
  %arrayidx.1 = getelementptr %struct.hl_device, ptr %hdev, i32 0, i32 39, i32 16, i32 1
  %6 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.1, align 4
  tail call void @vfree(ptr noundef %7) #12
  %arrayidx.2 = getelementptr %struct.hl_device, ptr %hdev, i32 0, i32 39, i32 16, i32 2
  %8 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.2, align 4
  tail call void @vfree(ptr noundef %9) #12
  %arrayidx.3 = getelementptr %struct.hl_device, ptr %hdev, i32 0, i32 39, i32 16, i32 3
  %10 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.3, align 4
  tail call void @vfree(ptr noundef %11) #12
  %arrayidx.4 = getelementptr %struct.hl_device, ptr %hdev, i32 0, i32 39, i32 16, i32 4
  %12 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.4, align 4
  tail call void @vfree(ptr noundef %13) #12
  %entry_arr = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 39, i32 2
  %14 = ptrtoint ptr %entry_arr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %entry_arr, align 8
  tail call void @kfree(ptr noundef %15) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hl_debugfs_add_file(ptr noundef %hpriv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hpriv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hpriv, align 4
  %file_mutex = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 39, i32 4
  tail call void @mutex_lock_nested(ptr noundef %file_mutex, i32 noundef 0) #12
  %debugfs_list = getelementptr inbounds %struct.hl_fpriv, ptr %hpriv, i32 0, i32 6
  %file_list = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 39, i32 3
  %2 = ptrtoint ptr %file_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %file_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %debugfs_list, ptr noundef %file_list, ptr noundef %3) #12
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add.exit_crit_edge

entry.list_add.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %debugfs_list, ptr %prev1.i.i, align 4
  %5 = ptrtoint ptr %debugfs_list to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %3, ptr %debugfs_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.hl_fpriv, ptr %hpriv, i32 0, i32 6, i32 1
  %6 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %file_list, ptr %prev3.i.i, align 4
  %7 = ptrtoint ptr %file_list to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %debugfs_list, ptr %file_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %entry.list_add.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %file_mutex) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hl_debugfs_remove_file(ptr noundef %hpriv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hpriv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hpriv, align 4
  %file_mutex = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 39, i32 4
  tail call void @mutex_lock_nested(ptr noundef %file_mutex, i32 noundef 0) #12
  %debugfs_list = getelementptr inbounds %struct.hl_fpriv, ptr %hpriv, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %debugfs_list) #12
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.hl_fpriv, ptr %hpriv, i32 0, i32 6, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %debugfs_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %debugfs_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %8 = ptrtoint ptr %debugfs_list to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %debugfs_list, align 4
  %prev.i = getelementptr inbounds %struct.hl_fpriv, ptr %hpriv, i32 0, i32 6, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mutex_unlock(ptr noundef %file_mutex) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hl_debugfs_add_cb(ptr noundef %cb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hdev = getelementptr inbounds %struct.hl_cb, ptr %cb, i32 0, i32 1
  %0 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev, align 4
  %cb_spinlock = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 39, i32 6
  tail call void @_raw_spin_lock(ptr noundef %cb_spinlock) #12
  %debugfs_list = getelementptr inbounds %struct.hl_cb, ptr %cb, i32 0, i32 4
  %cb_list = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 39, i32 5
  %2 = ptrtoint ptr %cb_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cb_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %debugfs_list, ptr noundef %cb_list, ptr noundef %3) #12
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add.exit_crit_edge

entry.list_add.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %debugfs_list, ptr %prev1.i.i, align 4
  %5 = ptrtoint ptr %debugfs_list to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %3, ptr %debugfs_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.hl_cb, ptr %cb, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %cb_list, ptr %prev3.i.i, align 4
  %7 = ptrtoint ptr %cb_list to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %debugfs_list, ptr %cb_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %entry.list_add.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %cb_spinlock) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hl_debugfs_remove_cb(ptr noundef %cb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hdev = getelementptr inbounds %struct.hl_cb, ptr %cb, i32 0, i32 1
  %0 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev, align 4
  %cb_spinlock = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 39, i32 6
  tail call void @_raw_spin_lock(ptr noundef %cb_spinlock) #12
  %debugfs_list = getelementptr inbounds %struct.hl_cb, ptr %cb, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %debugfs_list) #12
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.hl_cb, ptr %cb, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %debugfs_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %debugfs_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %8 = ptrtoint ptr %debugfs_list to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %debugfs_list, align 4
  %prev.i = getelementptr inbounds %struct.hl_cb, ptr %cb, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %cb_spinlock) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hl_debugfs_add_cs(ptr noundef %cs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx = getelementptr inbounds %struct.hl_cs, ptr %cs, i32 0, i32 1
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %hdev = getelementptr inbounds %struct.hl_ctx, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdev, align 4
  %cs_spinlock = getelementptr inbounds %struct.hl_device, ptr %3, i32 0, i32 39, i32 8
  tail call void @_raw_spin_lock(ptr noundef %cs_spinlock) #12
  %debugfs_list = getelementptr inbounds %struct.hl_cs, ptr %cs, i32 0, i32 11
  %cs_list = getelementptr inbounds %struct.hl_device, ptr %3, i32 0, i32 39, i32 7
  %4 = ptrtoint ptr %cs_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cs_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %debugfs_list, ptr noundef %cs_list, ptr noundef %5) #12
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add.exit_crit_edge

entry.list_add.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %debugfs_list, ptr %prev1.i.i, align 4
  %7 = ptrtoint ptr %debugfs_list to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %5, ptr %debugfs_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.hl_cs, ptr %cs, i32 0, i32 11, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %cs_list, ptr %prev3.i.i, align 4
  %9 = ptrtoint ptr %cs_list to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %debugfs_list, ptr %cs_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %entry.list_add.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %cs_spinlock) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hl_debugfs_remove_cs(ptr noundef %cs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx = getelementptr inbounds %struct.hl_cs, ptr %cs, i32 0, i32 1
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %hdev = getelementptr inbounds %struct.hl_ctx, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdev, align 4
  %cs_spinlock = getelementptr inbounds %struct.hl_device, ptr %3, i32 0, i32 39, i32 8
  tail call void @_raw_spin_lock(ptr noundef %cs_spinlock) #12
  %debugfs_list = getelementptr inbounds %struct.hl_cs, ptr %cs, i32 0, i32 11
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %debugfs_list) #12
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.hl_cs, ptr %cs, i32 0, i32 11, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %debugfs_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %debugfs_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %10 = ptrtoint ptr %debugfs_list to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %debugfs_list, align 4
  %prev.i = getelementptr inbounds %struct.hl_cs, ptr %cs, i32 0, i32 11, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %cs_spinlock) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hl_debugfs_add_job(ptr noundef %hdev, ptr noundef %job) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cs_job_spinlock = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 39, i32 10
  tail call void @_raw_spin_lock(ptr noundef %cs_job_spinlock) #12
  %debugfs_list = getelementptr inbounds %struct.hl_cs_job, ptr %job, i32 0, i32 6
  %cs_job_list = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 39, i32 9
  %0 = ptrtoint ptr %cs_job_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cs_job_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %debugfs_list, ptr noundef %cs_job_list, ptr noundef %1) #12
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add.exit_crit_edge

entry.list_add.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %debugfs_list, ptr %prev1.i.i, align 4
  %3 = ptrtoint ptr %debugfs_list to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %1, ptr %debugfs_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.hl_cs_job, ptr %job, i32 0, i32 6, i32 1
  %4 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %cs_job_list, ptr %prev3.i.i, align 4
  %5 = ptrtoint ptr %cs_job_list to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %debugfs_list, ptr %cs_job_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %entry.list_add.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %cs_job_spinlock) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hl_debugfs_remove_job(ptr noundef %hdev, ptr noundef %job) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cs_job_spinlock = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 39, i32 10
  tail call void @_raw_spin_lock(ptr noundef %cs_job_spinlock) #12
  %debugfs_list = getelementptr inbounds %struct.hl_cs_job, ptr %job, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %debugfs_list) #12
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.hl_cs_job, ptr %job, i32 0, i32 6, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %debugfs_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %debugfs_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %6 = ptrtoint ptr %debugfs_list to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %debugfs_list, align 4
  %prev.i = getelementptr inbounds %struct.hl_cs_job, ptr %job, i32 0, i32 6, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %cs_job_spinlock) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hl_debugfs_add_userptr(ptr noundef %hdev, ptr noundef %userptr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %userptr_spinlock = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 39, i32 12
  tail call void @_raw_spin_lock(ptr noundef %userptr_spinlock) #12
  %debugfs_list = getelementptr inbounds %struct.hl_userptr, ptr %userptr, i32 0, i32 6
  %userptr_list = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 39, i32 11
  %0 = ptrtoint ptr %userptr_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %userptr_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %debugfs_list, ptr noundef %userptr_list, ptr noundef %1) #12
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add.exit_crit_edge

entry.list_add.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %debugfs_list, ptr %prev1.i.i, align 4
  %3 = ptrtoint ptr %debugfs_list to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %1, ptr %debugfs_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.hl_userptr, ptr %userptr, i32 0, i32 6, i32 1
  %4 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %userptr_list, ptr %prev3.i.i, align 4
  %5 = ptrtoint ptr %userptr_list to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %debugfs_list, ptr %userptr_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %entry.list_add.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %userptr_spinlock) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hl_debugfs_remove_userptr(ptr noundef %hdev, ptr noundef %userptr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %userptr_spinlock = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 39, i32 12
  tail call void @_raw_spin_lock(ptr noundef %userptr_spinlock) #12
  %debugfs_list = getelementptr inbounds %struct.hl_userptr, ptr %userptr, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %debugfs_list) #12
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.hl_userptr, ptr %userptr, i32 0, i32 6, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %debugfs_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %debugfs_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %6 = ptrtoint ptr %debugfs_list to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %debugfs_list, align 4
  %prev.i = getelementptr inbounds %struct.hl_userptr, ptr %userptr, i32 0, i32 6, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %userptr_spinlock) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hl_debugfs_add_ctx_mem_hash(ptr noundef %hdev, ptr noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx_mem_hash_spinlock = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 39, i32 14
  tail call void @_raw_spin_lock(ptr noundef %ctx_mem_hash_spinlock) #12
  %debugfs_list = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 10
  %ctx_mem_hash_list = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 39, i32 13
  %0 = ptrtoint ptr %ctx_mem_hash_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx_mem_hash_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %debugfs_list, ptr noundef %ctx_mem_hash_list, ptr noundef %1) #12
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add.exit_crit_edge

entry.list_add.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %debugfs_list, ptr %prev1.i.i, align 4
  %3 = ptrtoint ptr %debugfs_list to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %1, ptr %debugfs_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 10, i32 1
  %4 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %ctx_mem_hash_list, ptr %prev3.i.i, align 4
  %5 = ptrtoint ptr %ctx_mem_hash_list to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %debugfs_list, ptr %ctx_mem_hash_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %entry.list_add.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %ctx_mem_hash_spinlock) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hl_debugfs_remove_ctx_mem_hash(ptr noundef %hdev, ptr noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx_mem_hash_spinlock = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 39, i32 14
  tail call void @_raw_spin_lock(ptr noundef %ctx_mem_hash_spinlock) #12
  %debugfs_list = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %debugfs_list) #12
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 10, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %debugfs_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %debugfs_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %6 = ptrtoint ptr %debugfs_list to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %debugfs_list, align 4
  %prev.i = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 10, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %ctx_mem_hash_spinlock) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hl_debugfs_set_state_dump(ptr noundef %hdev, ptr noundef %data, i32 noundef %length) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %state_dump_sem = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 39, i32 17
  tail call void @down_write(ptr noundef %state_dump_sem) #12
  %state_dump_head = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 39, i32 22
  %0 = ptrtoint ptr %state_dump_head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state_dump_head, align 4
  %add = add i32 %1, 1
  %rem = urem i32 %add, 5
  store i32 %rem, ptr %state_dump_head, align 4
  %arrayidx = getelementptr %struct.hl_device, ptr %hdev, i32 0, i32 39, i32 16, i32 %rem
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  tail call void @vfree(ptr noundef %3) #12
  %4 = ptrtoint ptr %state_dump_head to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state_dump_head, align 4
  %arrayidx5 = getelementptr %struct.hl_device, ptr %hdev, i32 0, i32 39, i32 16, i32 %5
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %data, ptr %arrayidx5, align 4
  tail call void @up_write(ptr noundef %state_dump_sem) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @hl_debugfs_init() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.34, ptr noundef null) #12
  store ptr %call, ptr @hl_debug_root, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hl_debugfs_fini() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @hl_debug_root, align 4
  tail call void @debugfs_remove(ptr noundef %0) #12
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hl_data_read32(ptr nocapture noundef readonly %f, ptr noundef %buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %addr = alloca i64, align 8
  %tmp_buf = alloca [32 x i8], align 1
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  %hdev2 = getelementptr inbounds %struct.hl_dbg_device_entry, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %hdev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hdev2, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %addr) #12
  %addr3 = getelementptr inbounds %struct.hl_dbg_device_entry, ptr %3, i32 0, i32 18
  %6 = ptrtoint ptr %addr3 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %addr3, align 8
  %8 = ptrtoint ptr %addr to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %addr, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp_buf) #12
  %9 = call ptr @memset(ptr %tmp_buf, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #12
  %10 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %val, align 4, !annotation !396
  %in_reset = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 59, i32 4
  %11 = ptrtoint ptr %in_reset to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %in_reset, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  br i1 %tobool.not, label %if.end10, label %do.body

do.body:                                          ; preds = %entry
  %call4 = tail call i32 @___ratelimit(ptr noundef nonnull @hl_data_read32._rs, ptr noundef nonnull @__func__.hl_data_read32) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 6
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %14, ptr noundef nonnull @.str.36) #16
  br label %cleanup

if.end10:                                         ; preds = %entry
  %15 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %16)
  %tobool11.not = icmp eq i64 %16, 0
  br i1 %tobool11.not, label %if.end13, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end13:                                         ; preds = %if.end10
  %mmu_enable.i = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 107
  %17 = ptrtoint ptr %mmu_enable.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %mmu_enable.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i = icmp eq i8 %18, 0
  br i1 %tobool.not.i, label %if.end13.if.end21_crit_edge, label %if.end.i

if.end13.if.end21_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.end.i:                                         ; preds = %if.end13
  %dram_supports_virtual_memory.i = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 33, i32 71
  %19 = ptrtoint ptr %dram_supports_virtual_memory.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %dram_supports_virtual_memory.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool1.not.i = icmp eq i8 %20, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end8.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %dmmu.i = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 33, i32 4
  %21 = ptrtoint ptr %dmmu.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %dmmu.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %22, i64 %7)
  %cmp.not.i = icmp ugt i64 %22, %7
  br i1 %cmp.not.i, label %land.lhs.true.i.if.end8.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.if.end8.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %end_addr.i = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 33, i32 4, i32 1
  %23 = ptrtoint ptr %end_addr.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %end_addr.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %24, i64 %7)
  %cmp5.i = icmp ugt i64 %24, %7
  br i1 %cmp5.i, label %land.lhs.true3.i.if.then16_crit_edge, label %land.lhs.true3.i.if.end8.i_crit_edge

land.lhs.true3.i.if.end8.i_crit_edge:             ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i

land.lhs.true3.i.if.then16_crit_edge:             ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then16

if.end8.i:                                        ; preds = %land.lhs.true3.i.if.end8.i_crit_edge, %land.lhs.true.i.if.end8.i_crit_edge, %if.end.i.if.end8.i_crit_edge
  %pmmu.i = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 33, i32 5
  %25 = ptrtoint ptr %pmmu.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %pmmu.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %26, i64 %7)
  %cmp10.not.i = icmp ugt i64 %26, %7
  br i1 %cmp10.not.i, label %if.end8.i.if.end18.i_crit_edge, label %land.lhs.true12.i

if.end8.i.if.end18.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i

land.lhs.true12.i:                                ; preds = %if.end8.i
  %end_addr14.i = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 33, i32 5, i32 1
  %27 = ptrtoint ptr %end_addr14.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %end_addr14.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %28, i64 %7)
  %cmp15.i = icmp ugt i64 %28, %7
  br i1 %cmp15.i, label %land.lhs.true12.i.if.then16_crit_edge, label %land.lhs.true12.i.if.end18.i_crit_edge

land.lhs.true12.i.if.end18.i_crit_edge:           ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i

land.lhs.true12.i.if.then16_crit_edge:            ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then16

if.end18.i:                                       ; preds = %land.lhs.true12.i.if.end18.i_crit_edge, %if.end8.i.if.end18.i_crit_edge
  %pmmu_huge.i = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 33, i32 6
  %29 = ptrtoint ptr %pmmu_huge.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %pmmu_huge.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %30, i64 %7)
  %cmp20.not.i = icmp ugt i64 %30, %7
  br i1 %cmp20.not.i, label %if.end18.i.if.end21_crit_edge, label %land.lhs.true22.i

if.end18.i.if.end21_crit_edge:                    ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

land.lhs.true22.i:                                ; preds = %if.end18.i
  %end_addr24.i = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 33, i32 6, i32 1
  %31 = ptrtoint ptr %end_addr24.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %end_addr24.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %32, i64 %7)
  %cmp25.i = icmp ugt i64 %32, %7
  br i1 %cmp25.i, label %land.lhs.true22.i.if.then16_crit_edge, label %land.lhs.true22.i.if.end21_crit_edge

land.lhs.true22.i.if.end21_crit_edge:             ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

land.lhs.true22.i.if.then16_crit_edge:            ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then16

if.then16:                                        ; preds = %land.lhs.true22.i.if.then16_crit_edge, %land.lhs.true12.i.if.then16_crit_edge, %land.lhs.true3.i.if.then16_crit_edge
  %call17 = call fastcc i32 @device_va_to_pa(ptr noundef %5, i64 noundef %7, i32 noundef 4, ptr noundef nonnull %addr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then16.if.end21_crit_edge, label %if.then16.cleanup_crit_edge

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then16.if.end21_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.end21:                                         ; preds = %if.then16.if.end21_crit_edge, %land.lhs.true22.i.if.end21_crit_edge, %if.end18.i.if.end21_crit_edge, %if.end13.if.end21_crit_edge
  %retval.0.i55 = phi i1 [ true, %if.then16.if.end21_crit_edge ], [ false, %if.end13.if.end21_crit_edge ], [ false, %if.end18.i.if.end21_crit_edge ], [ false, %land.lhs.true22.i.if.end21_crit_edge ]
  %asic_funcs = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 34
  %33 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %asic_funcs, align 8
  %debugfs_read32 = getelementptr inbounds %struct.hl_asic_funcs, ptr %34, i32 0, i32 31
  %35 = ptrtoint ptr %debugfs_read32 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %debugfs_read32, align 4
  %37 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %addr, align 8
  %call23 = call i32 %36(ptr noundef %5, i64 noundef %38, i1 noundef zeroext %retval.0.i55, ptr noundef nonnull %val) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end30, label %do.end28

do.end28:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  %dev29 = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 6
  %39 = ptrtoint ptr %dev29 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev29, align 4
  %41 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %addr, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.41, i64 noundef %42) #16
  br label %cleanup

if.end30:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  %43 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %val, align 4
  %call31 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %tmp_buf, ptr noundef nonnull @.str.44, i32 noundef %44)
  %call34 = call i32 @strlen(ptr noundef nonnull %tmp_buf) #17
  %call35 = call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %tmp_buf, i32 noundef %call34) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %do.end28, %if.then16.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %call23, %do.end28 ], [ %call35, %if.end30 ], [ 0, %do.end ], [ 0, %do.body.cleanup_crit_edge ], [ 0, %if.end10.cleanup_crit_edge ], [ %call17, %if.then16.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp_buf) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %addr) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hl_data_write32(ptr nocapture noundef readonly %f, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %addr = alloca i64, align 8
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  %hdev2 = getelementptr inbounds %struct.hl_dbg_device_entry, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %hdev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hdev2, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %addr) #12
  %addr3 = getelementptr inbounds %struct.hl_dbg_device_entry, ptr %3, i32 0, i32 18
  %6 = ptrtoint ptr %addr3 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %addr3, align 8
  %8 = ptrtoint ptr %addr to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %addr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #12
  %9 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %value, align 4, !annotation !396
  %in_reset = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 59, i32 4
  %10 = ptrtoint ptr %in_reset to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %in_reset, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %if.end10, label %do.body

do.body:                                          ; preds = %entry
  %call4 = tail call i32 @___ratelimit(ptr noundef nonnull @hl_data_write32._rs, ptr noundef nonnull @__func__.hl_data_write32) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 6
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str.53) #16
  br label %cleanup

if.end10:                                         ; preds = %entry
  %call11 = call i32 @kstrtouint_from_user(ptr noundef %buf, i32 noundef %count, i32 noundef 16, ptr noundef nonnull %value) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %14 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %addr, align 8
  %mmu_enable.i = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 107
  %16 = ptrtoint ptr %mmu_enable.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %mmu_enable.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i = icmp eq i8 %17, 0
  br i1 %tobool.not.i, label %if.end14.if.end22_crit_edge, label %if.end.i

if.end14.if.end22_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

if.end.i:                                         ; preds = %if.end14
  %dram_supports_virtual_memory.i = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 33, i32 71
  %18 = ptrtoint ptr %dram_supports_virtual_memory.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %dram_supports_virtual_memory.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool1.not.i = icmp eq i8 %19, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end8.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %dmmu.i = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 33, i32 4
  %20 = ptrtoint ptr %dmmu.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %dmmu.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %21, i64 %15)
  %cmp.not.i = icmp ugt i64 %21, %15
  br i1 %cmp.not.i, label %land.lhs.true.i.if.end8.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.if.end8.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %end_addr.i = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 33, i32 4, i32 1
  %22 = ptrtoint ptr %end_addr.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %end_addr.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %23, i64 %15)
  %cmp5.i = icmp ugt i64 %23, %15
  br i1 %cmp5.i, label %land.lhs.true3.i.if.then17_crit_edge, label %land.lhs.true3.i.if.end8.i_crit_edge

land.lhs.true3.i.if.end8.i_crit_edge:             ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i

land.lhs.true3.i.if.then17_crit_edge:             ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then17

if.end8.i:                                        ; preds = %land.lhs.true3.i.if.end8.i_crit_edge, %land.lhs.true.i.if.end8.i_crit_edge, %if.end.i.if.end8.i_crit_edge
  %pmmu.i = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 33, i32 5
  %24 = ptrtoint ptr %pmmu.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %pmmu.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %25, i64 %15)
  %cmp10.not.i = icmp ugt i64 %25, %15
  br i1 %cmp10.not.i, label %if.end8.i.if.end18.i_crit_edge, label %land.lhs.true12.i

if.end8.i.if.end18.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i

land.lhs.true12.i:                                ; preds = %if.end8.i
  %end_addr14.i = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 33, i32 5, i32 1
  %26 = ptrtoint ptr %end_addr14.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %end_addr14.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %27, i64 %15)
  %cmp15.i = icmp ugt i64 %27, %15
  br i1 %cmp15.i, label %land.lhs.true12.i.if.then17_crit_edge, label %land.lhs.true12.i.if.end18.i_crit_edge

land.lhs.true12.i.if.end18.i_crit_edge:           ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i

land.lhs.true12.i.if.then17_crit_edge:            ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then17

if.end18.i:                                       ; preds = %land.lhs.true12.i.if.end18.i_crit_edge, %if.end8.i.if.end18.i_crit_edge
  %pmmu_huge.i = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 33, i32 6
  %28 = ptrtoint ptr %pmmu_huge.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %pmmu_huge.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %29, i64 %15)
  %cmp20.not.i = icmp ugt i64 %29, %15
  br i1 %cmp20.not.i, label %if.end18.i.if.end22_crit_edge, label %land.lhs.true22.i

if.end18.i.if.end22_crit_edge:                    ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

land.lhs.true22.i:                                ; preds = %if.end18.i
  %end_addr24.i = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 33, i32 6, i32 1
  %30 = ptrtoint ptr %end_addr24.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %end_addr24.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %31, i64 %15)
  %cmp25.i = icmp ugt i64 %31, %15
  br i1 %cmp25.i, label %land.lhs.true22.i.if.then17_crit_edge, label %land.lhs.true22.i.if.end22_crit_edge

land.lhs.true22.i.if.end22_crit_edge:             ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

land.lhs.true22.i.if.then17_crit_edge:            ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then17

if.then17:                                        ; preds = %land.lhs.true22.i.if.then17_crit_edge, %land.lhs.true12.i.if.then17_crit_edge, %land.lhs.true3.i.if.then17_crit_edge
  %call18 = call fastcc i32 @device_va_to_pa(ptr noundef %5, i64 noundef %15, i32 noundef 4, ptr noundef nonnull %addr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then17.if.end22_crit_edge, label %if.then17.cleanup_crit_edge

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then17.if.end22_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

if.end22:                                         ; preds = %if.then17.if.end22_crit_edge, %land.lhs.true22.i.if.end22_crit_edge, %if.end18.i.if.end22_crit_edge, %if.end14.if.end22_crit_edge
  %retval.0.i52 = phi i1 [ true, %if.then17.if.end22_crit_edge ], [ false, %if.end14.if.end22_crit_edge ], [ false, %if.end18.i.if.end22_crit_edge ], [ false, %land.lhs.true22.i.if.end22_crit_edge ]
  %asic_funcs = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 34
  %32 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %asic_funcs, align 8
  %debugfs_write32 = getelementptr inbounds %struct.hl_asic_funcs, ptr %33, i32 0, i32 32
  %34 = ptrtoint ptr %debugfs_write32 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %debugfs_write32, align 4
  %36 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %addr, align 8
  %38 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %value, align 4
  %call24 = call i32 %35(ptr noundef %5, i64 noundef %37, i1 noundef zeroext %retval.0.i52, i32 noundef %39) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end22.cleanup_crit_edge, label %do.end29

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end29:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  %dev30 = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 6
  %40 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev30, align 4
  %42 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %value, align 4
  %44 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %addr, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.55, i32 noundef %43, i64 noundef %45) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end29, %if.end22.cleanup_crit_edge, %if.then17.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %call24, %do.end29 ], [ 0, %do.end ], [ 0, %do.body.cleanup_crit_edge ], [ %call11, %if.end10.cleanup_crit_edge ], [ %call18, %if.then17.cleanup_crit_edge ], [ %count, %if.end22.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %addr) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @device_va_to_pa(ptr noundef %hdev, i64 noundef %virt_addr, i32 noundef %size, ptr noundef %phys_addr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @hl_get_compute_ctx(ptr noundef %hdev) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.45) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %mem_hash_lock = getelementptr inbounds %struct.hl_ctx, ptr %call, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mem_hash_lock, i32 noundef 0) #12
  %conv = zext i32 %size to i64
  %add = add i64 %conv, %virt_addr
  br label %for.body

for.body:                                         ; preds = %for.inc31.for.body_crit_edge, %if.end
  %i.092 = phi i32 [ 0, %if.end ], [ %inc, %for.inc31.for.body_crit_edge ]
  %arrayidx = getelementptr [128 x %struct.hlist_head], ptr %call, i32 0, i32 %i.092
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %hnode.185 = load ptr, ptr %arrayidx, align 4
  %tobool5.not86 = icmp eq ptr %hnode.185, null
  br i1 %tobool5.not86, label %for.body.for.inc31_crit_edge, label %for.body.for.body6_crit_edge

for.body.for.body6_crit_edge:                     ; preds = %for.body
  br label %for.body6

for.body.for.inc31_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc31

for.body6:                                        ; preds = %for.inc.for.body6_crit_edge, %for.body.for.body6_crit_edge
  %hnode.187 = phi ptr [ %hnode.1, %for.inc.for.body6_crit_edge ], [ %hnode.185, %for.body.for.body6_crit_edge ]
  %vaddr = getelementptr inbounds %struct.hl_vm_hash_node, ptr %hnode.187, i32 0, i32 1
  %3 = ptrtoint ptr %vaddr to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %vaddr, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %4, i64 %virt_addr)
  %cmp13.not = icmp ugt i64 %4, %virt_addr
  br i1 %cmp13.not, label %for.body6.for.inc_crit_edge, label %land.lhs.true

for.body6.for.inc_crit_edge:                      ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body6
  %ptr = getelementptr inbounds %struct.hl_vm_hash_node, ptr %hnode.187, i32 0, i32 2
  %5 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ptr, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp7 = icmp eq i32 %8, 1
  %size10 = getelementptr inbounds %struct.hl_userptr, ptr %6, i32 0, i32 9
  %total_size = getelementptr inbounds %struct.hl_vm_phys_pg_pack, ptr %6, i32 0, i32 3
  %range_size.0.in = select i1 %cmp7, ptr %size10, ptr %total_size
  %9 = ptrtoint ptr %range_size.0.in to i32
  call void @__asan_load8_noabort(i32 %9)
  %range_size.0 = load i64, ptr %range_size.0.in, align 8
  %add16 = add i64 %range_size.0, %4
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %add16)
  %cmp17.not = icmp ugt i64 %add, %add16
  br i1 %cmp17.not, label %land.lhs.true.for.inc_crit_edge, label %for.end32.thread

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

for.end32.thread:                                 ; preds = %land.lhs.true
  tail call void @mutex_unlock(ptr noundef %mem_hash_lock) #12
  %call41 = tail call i32 @hl_mmu_va_to_pa(ptr noundef nonnull %call, i64 noundef %virt_addr, ptr noundef %phys_addr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %for.end32.thread.cleanup_crit_edge, label %do.end46

for.end32.thread.cleanup_crit_edge:               ; preds = %for.end32.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body6.for.inc_crit_edge
  %10 = ptrtoint ptr %hnode.187 to i32
  call void @__asan_load4_noabort(i32 %10)
  %hnode.1 = load ptr, ptr %hnode.187, align 4
  %tobool5.not = icmp eq ptr %hnode.1, null
  br i1 %tobool5.not, label %for.inc.for.inc31_crit_edge, label %for.inc.for.body6_crit_edge

for.inc.for.body6_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body6

for.inc.for.inc31_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc31

for.inc31:                                        ; preds = %for.inc.for.inc31_crit_edge, %for.body.for.inc31_crit_edge
  %inc = add nuw nsw i32 %i.092, 1
  %cmp1 = icmp ult i32 %i.092, 127
  br i1 %cmp1, label %for.inc31.for.body_crit_edge, label %for.end32

for.inc31.for.body_crit_edge:                     ; preds = %for.inc31
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end32:                                        ; preds = %for.inc31
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mutex_unlock(ptr noundef %mem_hash_lock) #12
  %dev39 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %11 = ptrtoint ptr %dev39 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev39, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.48, i64 noundef %virt_addr) #16
  br label %cleanup

do.end46:                                         ; preds = %for.end32.thread
  call void @__sanitizer_cov_trace_pc() #14
  %dev47 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %13 = ptrtoint ptr %dev47 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev47, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.51, i64 noundef %virt_addr) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end46, %for.end32, %for.end32.thread.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %for.end32 ], [ -22, %do.end ], [ -22, %do.end46 ], [ 0, %for.end32.thread.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hl_get_compute_ctx(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hl_mmu_va_to_pa(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint_from_user(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hl_data_read64(ptr nocapture noundef readonly %f, ptr noundef %buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %addr = alloca i64, align 8
  %tmp_buf = alloca [32 x i8], align 1
  %val = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  %hdev2 = getelementptr inbounds %struct.hl_dbg_device_entry, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %hdev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hdev2, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %addr) #12
  %addr3 = getelementptr inbounds %struct.hl_dbg_device_entry, ptr %3, i32 0, i32 18
  %6 = ptrtoint ptr %addr3 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %addr3, align 8
  %8 = ptrtoint ptr %addr to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %addr, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp_buf) #12
  %9 = call ptr @memset(ptr %tmp_buf, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %val) #12
  %10 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 -1, ptr %val, align 8, !annotation !396
  %in_reset = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 59, i32 4
  %11 = ptrtoint ptr %in_reset to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %in_reset, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  br i1 %tobool.not, label %if.end10, label %do.body

do.body:                                          ; preds = %entry
  %call4 = tail call i32 @___ratelimit(ptr noundef nonnull @hl_data_read64._rs, ptr noundef nonnull @__func__.hl_data_read64) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 6
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %14, ptr noundef nonnull @.str.36) #16
  br label %cleanup

if.end10:                                         ; preds = %entry
  %15 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %16)
  %tobool11.not = icmp eq i64 %16, 0
  br i1 %tobool11.not, label %if.end13, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end13:                                         ; preds = %if.end10
  %mmu_enable.i = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 107
  %17 = ptrtoint ptr %mmu_enable.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %mmu_enable.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i = icmp eq i8 %18, 0
  br i1 %tobool.not.i, label %if.end13.if.end21_crit_edge, label %if.end.i

if.end13.if.end21_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.end.i:                                         ; preds = %if.end13
  %dram_supports_virtual_memory.i = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 33, i32 71
  %19 = ptrtoint ptr %dram_supports_virtual_memory.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %dram_supports_virtual_memory.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool1.not.i = icmp eq i8 %20, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end8.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %dmmu.i = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 33, i32 4
  %21 = ptrtoint ptr %dmmu.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %dmmu.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %22, i64 %7)
  %cmp.not.i = icmp ugt i64 %22, %7
  br i1 %cmp.not.i, label %land.lhs.true.i.if.end8.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.if.end8.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %end_addr.i = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 33, i32 4, i32 1
  %23 = ptrtoint ptr %end_addr.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %end_addr.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %24, i64 %7)
  %cmp5.i = icmp ugt i64 %24, %7
  br i1 %cmp5.i, label %land.lhs.true3.i.if.then16_crit_edge, label %land.lhs.true3.i.if.end8.i_crit_edge

land.lhs.true3.i.if.end8.i_crit_edge:             ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i

land.lhs.true3.i.if.then16_crit_edge:             ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then16

if.end8.i:                                        ; preds = %land.lhs.true3.i.if.end8.i_crit_edge, %land.lhs.true.i.if.end8.i_crit_edge, %if.end.i.if.end8.i_crit_edge
  %pmmu.i = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 33, i32 5
  %25 = ptrtoint ptr %pmmu.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %pmmu.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %26, i64 %7)
  %cmp10.not.i = icmp ugt i64 %26, %7
  br i1 %cmp10.not.i, label %if.end8.i.if.end18.i_crit_edge, label %land.lhs.true12.i

if.end8.i.if.end18.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i

land.lhs.true12.i:                                ; preds = %if.end8.i
  %end_addr14.i = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 33, i32 5, i32 1
  %27 = ptrtoint ptr %end_addr14.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %end_addr14.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %28, i64 %7)
  %cmp15.i = icmp ugt i64 %28, %7
  br i1 %cmp15.i, label %land.lhs.true12.i.if.then16_crit_edge, label %land.lhs.true12.i.if.end18.i_crit_edge

land.lhs.true12.i.if.end18.i_crit_edge:           ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i

land.lhs.true12.i.if.then16_crit_edge:            ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then16

if.end18.i:                                       ; preds = %land.lhs.true12.i.if.end18.i_crit_edge, %if.end8.i.if.end18.i_crit_edge
  %pmmu_huge.i = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 33, i32 6
  %29 = ptrtoint ptr %pmmu_huge.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %pmmu_huge.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %30, i64 %7)
  %cmp20.not.i = icmp ugt i64 %30, %7
  br i1 %cmp20.not.i, label %if.end18.i.if.end21_crit_edge, label %land.lhs.true22.i

if.end18.i.if.end21_crit_edge:                    ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

land.lhs.true22.i:                                ; preds = %if.end18.i
  %end_addr24.i = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 33, i32 6, i32 1
  %31 = ptrtoint ptr %end_addr24.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %end_addr24.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %32, i64 %7)
  %cmp25.i = icmp ugt i64 %32, %7
  br i1 %cmp25.i, label %land.lhs.true22.i.if.then16_crit_edge, label %land.lhs.true22.i.if.end21_crit_edge

land.lhs.true22.i.if.end21_crit_edge:             ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

land.lhs.true22.i.if.then16_crit_edge:            ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then16

if.then16:                                        ; preds = %land.lhs.true22.i.if.then16_crit_edge, %land.lhs.true12.i.if.then16_crit_edge, %land.lhs.true3.i.if.then16_crit_edge
  %call17 = call fastcc i32 @device_va_to_pa(ptr noundef %5, i64 noundef %7, i32 noundef 8, ptr noundef nonnull %addr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then16.if.end21_crit_edge, label %if.then16.cleanup_crit_edge

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then16.if.end21_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.end21:                                         ; preds = %if.then16.if.end21_crit_edge, %land.lhs.true22.i.if.end21_crit_edge, %if.end18.i.if.end21_crit_edge, %if.end13.if.end21_crit_edge
  %retval.0.i55 = phi i1 [ true, %if.then16.if.end21_crit_edge ], [ false, %if.end13.if.end21_crit_edge ], [ false, %if.end18.i.if.end21_crit_edge ], [ false, %land.lhs.true22.i.if.end21_crit_edge ]
  %asic_funcs = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 34
  %33 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %asic_funcs, align 8
  %debugfs_read64 = getelementptr inbounds %struct.hl_asic_funcs, ptr %34, i32 0, i32 33
  %35 = ptrtoint ptr %debugfs_read64 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %debugfs_read64, align 4
  %37 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %addr, align 8
  %call23 = call i32 %36(ptr noundef %5, i64 noundef %38, i1 noundef zeroext %retval.0.i55, ptr noundef nonnull %val) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end30, label %do.end28

do.end28:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  %dev29 = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 6
  %39 = ptrtoint ptr %dev29 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev29, align 4
  %41 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %addr, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.41, i64 noundef %42) #16
  br label %cleanup

if.end30:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  %43 = ptrtoint ptr %val to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %val, align 8
  %call31 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %tmp_buf, ptr noundef nonnull @.str.59, i64 noundef %44)
  %call34 = call i32 @strlen(ptr noundef nonnull %tmp_buf) #17
  %call35 = call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %tmp_buf, i32 noundef %call34) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %do.end28, %if.then16.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %call23, %do.end28 ], [ %call35, %if.end30 ], [ 0, %do.end ], [ 0, %do.body.cleanup_crit_edge ], [ 0, %if.end10.cleanup_crit_edge ], [ %call17, %if.then16.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %val) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp_buf) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %addr) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hl_data_write64(ptr nocapture noundef readonly %f, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %addr = alloca i64, align 8
  %value = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  %hdev2 = getelementptr inbounds %struct.hl_dbg_device_entry, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %hdev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hdev2, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %addr) #12
  %addr3 = getelementptr inbounds %struct.hl_dbg_device_entry, ptr %3, i32 0, i32 18
  %6 = ptrtoint ptr %addr3 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %addr3, align 8
  %8 = ptrtoint ptr %addr to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %value) #12
  %9 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 -1, ptr %value, align 8, !annotation !396
  %in_reset = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 59, i32 4
  %10 = ptrtoint ptr %in_reset to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %in_reset, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %if.end10, label %do.body

do.body:                                          ; preds = %entry
  %call4 = tail call i32 @___ratelimit(ptr noundef nonnull @hl_data_write64._rs, ptr noundef nonnull @__func__.hl_data_write64) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 6
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str.53) #16
  br label %cleanup

if.end10:                                         ; preds = %entry
  %call11 = call i32 @kstrtoull_from_user(ptr noundef %buf, i32 noundef %count, i32 noundef 16, ptr noundef nonnull %value) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %14 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %addr, align 8
  %mmu_enable.i = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 107
  %16 = ptrtoint ptr %mmu_enable.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %mmu_enable.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i = icmp eq i8 %17, 0
  br i1 %tobool.not.i, label %if.end14.if.end22_crit_edge, label %if.end.i

if.end14.if.end22_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

if.end.i:                                         ; preds = %if.end14
  %dram_supports_virtual_memory.i = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 33, i32 71
  %18 = ptrtoint ptr %dram_supports_virtual_memory.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %dram_supports_virtual_memory.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool1.not.i = icmp eq i8 %19, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end8.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %dmmu.i = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 33, i32 4
  %20 = ptrtoint ptr %dmmu.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %dmmu.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %21, i64 %15)
  %cmp.not.i = icmp ugt i64 %21, %15
  br i1 %cmp.not.i, label %land.lhs.true.i.if.end8.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.if.end8.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %end_addr.i = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 33, i32 4, i32 1
  %22 = ptrtoint ptr %end_addr.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %end_addr.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %23, i64 %15)
  %cmp5.i = icmp ugt i64 %23, %15
  br i1 %cmp5.i, label %land.lhs.true3.i.if.then17_crit_edge, label %land.lhs.true3.i.if.end8.i_crit_edge

land.lhs.true3.i.if.end8.i_crit_edge:             ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i

land.lhs.true3.i.if.then17_crit_edge:             ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then17

if.end8.i:                                        ; preds = %land.lhs.true3.i.if.end8.i_crit_edge, %land.lhs.true.i.if.end8.i_crit_edge, %if.end.i.if.end8.i_crit_edge
  %pmmu.i = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 33, i32 5
  %24 = ptrtoint ptr %pmmu.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %pmmu.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %25, i64 %15)
  %cmp10.not.i = icmp ugt i64 %25, %15
  br i1 %cmp10.not.i, label %if.end8.i.if.end18.i_crit_edge, label %land.lhs.true12.i

if.end8.i.if.end18.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i

land.lhs.true12.i:                                ; preds = %if.end8.i
  %end_addr14.i = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 33, i32 5, i32 1
  %26 = ptrtoint ptr %end_addr14.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %end_addr14.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %27, i64 %15)
  %cmp15.i = icmp ugt i64 %27, %15
  br i1 %cmp15.i, label %land.lhs.true12.i.if.then17_crit_edge, label %land.lhs.true12.i.if.end18.i_crit_edge

land.lhs.true12.i.if.end18.i_crit_edge:           ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i

land.lhs.true12.i.if.then17_crit_edge:            ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then17

if.end18.i:                                       ; preds = %land.lhs.true12.i.if.end18.i_crit_edge, %if.end8.i.if.end18.i_crit_edge
  %pmmu_huge.i = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 33, i32 6
  %28 = ptrtoint ptr %pmmu_huge.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %pmmu_huge.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %29, i64 %15)
  %cmp20.not.i = icmp ugt i64 %29, %15
  br i1 %cmp20.not.i, label %if.end18.i.if.end22_crit_edge, label %land.lhs.true22.i

if.end18.i.if.end22_crit_edge:                    ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

land.lhs.true22.i:                                ; preds = %if.end18.i
  %end_addr24.i = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 33, i32 6, i32 1
  %30 = ptrtoint ptr %end_addr24.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %end_addr24.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %31, i64 %15)
  %cmp25.i = icmp ugt i64 %31, %15
  br i1 %cmp25.i, label %land.lhs.true22.i.if.then17_crit_edge, label %land.lhs.true22.i.if.end22_crit_edge

land.lhs.true22.i.if.end22_crit_edge:             ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

land.lhs.true22.i.if.then17_crit_edge:            ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then17

if.then17:                                        ; preds = %land.lhs.true22.i.if.then17_crit_edge, %land.lhs.true12.i.if.then17_crit_edge, %land.lhs.true3.i.if.then17_crit_edge
  %call18 = call fastcc i32 @device_va_to_pa(ptr noundef %5, i64 noundef %15, i32 noundef 8, ptr noundef nonnull %addr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then17.if.end22_crit_edge, label %if.then17.cleanup_crit_edge

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then17.if.end22_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

if.end22:                                         ; preds = %if.then17.if.end22_crit_edge, %land.lhs.true22.i.if.end22_crit_edge, %if.end18.i.if.end22_crit_edge, %if.end14.if.end22_crit_edge
  %retval.0.i52 = phi i1 [ true, %if.then17.if.end22_crit_edge ], [ false, %if.end14.if.end22_crit_edge ], [ false, %if.end18.i.if.end22_crit_edge ], [ false, %land.lhs.true22.i.if.end22_crit_edge ]
  %asic_funcs = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 34
  %32 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %asic_funcs, align 8
  %debugfs_write64 = getelementptr inbounds %struct.hl_asic_funcs, ptr %33, i32 0, i32 34
  %34 = ptrtoint ptr %debugfs_write64 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %debugfs_write64, align 4
  %36 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %addr, align 8
  %38 = ptrtoint ptr %value to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %value, align 8
  %call24 = call i32 %35(ptr noundef %5, i64 noundef %37, i1 noundef zeroext %retval.0.i52, i64 noundef %39) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end22.cleanup_crit_edge, label %do.end29

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end29:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  %dev30 = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 6
  %40 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev30, align 4
  %42 = ptrtoint ptr %value to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %value, align 8
  %44 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %addr, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.61, i64 noundef %43, i64 noundef %45) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end29, %if.end22.cleanup_crit_edge, %if.then17.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %call24, %do.end29 ], [ 0, %do.end ], [ 0, %do.body.cleanup_crit_edge ], [ %call11, %if.end10.cleanup_crit_edge ], [ %call18, %if.then17.cleanup_crit_edge ], [ %count, %if.end22.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %value) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %addr) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoull_from_user(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hl_get_power_state(ptr nocapture noundef readonly %f, ptr noundef %buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %tmp_buf = alloca [200 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  %hdev2 = getelementptr inbounds %struct.hl_dbg_device_entry, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %hdev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hdev2, align 4
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %tmp_buf) #12
  %6 = call ptr @memset(ptr %tmp_buf, i32 255, i32 200)
  %7 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %8)
  %tobool.not = icmp eq i64 %8, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %5, align 8
  %current_state = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 30
  %11 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %current_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %12)
  %switch.selectcmp = icmp eq i32 %12, 3
  %switch.select = select i1 %switch.selectcmp, i32 2, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %switch.selectcmp21 = icmp eq i32 %12, 0
  %switch.select22 = select i1 %switch.selectcmp21, i32 1, i32 %switch.select
  %call11 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %tmp_buf, ptr noundef nonnull @.str.63, i32 noundef %switch.select22)
  %call14 = call i32 @strlen(ptr noundef nonnull %tmp_buf) #17
  %call15 = call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %tmp_buf, i32 noundef %call14) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call15, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %tmp_buf) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hl_set_power_state(ptr nocapture noundef readonly %f, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  %hdev2 = getelementptr inbounds %struct.hl_dbg_device_entry, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %hdev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hdev2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #12
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %value, align 4, !annotation !396
  %call3 = call i32 @kstrtouint_from_user(ptr noundef %buf, i32 noundef %count, i32 noundef 10, ptr noundef nonnull %value) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %value, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %8, label %do.body [
    i32 1, label %if.then4
    i32 2, label %if.then10
  ]

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 8
  %call5 = call i32 @pci_set_power_state(ptr noundef %11, i32 noundef 0) #12
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %5, align 8
  call void @pci_restore_state(ptr noundef %13) #12
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %5, align 8
  %call8 = call i32 @pci_enable_device(ptr noundef %15) #12
  br label %cleanup

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %5, align 8
  %call12 = call i32 @pci_save_state(ptr noundef %17) #12
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %5, align 8
  call void @pci_disable_device(ptr noundef %19) #12
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %5, align 8
  %call15 = call i32 @pci_set_power_state(ptr noundef %21, i32 noundef 3) #12
  br label %cleanup

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hl_set_power_state.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hl_set_power_state, %if.then21)) #12
          to label %cleanup [label %if.then21], !srcloc !397

if.then21:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 6
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  %24 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %value, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hl_set_power_state.__UNIQUE_ID_ddebug299, ptr noundef %23, ptr noundef nonnull @.str.65, i32 noundef %25) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %do.body, %if.then10, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %entry.cleanup_crit_edge ], [ -22, %if.then21 ], [ %count, %if.then10 ], [ %count, %if.then4 ], [ -22, %do.body ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_set_power_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_restore_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_save_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hl_i2c_data_read(ptr nocapture noundef readonly %f, ptr noundef %buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %pkt.i = alloca %struct.cpucp_packet, align 8
  %tmp_buf = alloca [32 x i8], align 1
  %val = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  %hdev2 = getelementptr inbounds %struct.hl_dbg_device_entry, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %hdev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hdev2, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp_buf) #12
  %6 = call ptr @memset(ptr %tmp_buf, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %val) #12
  %7 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 -1, ptr %val, align 8, !annotation !396
  %8 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %tobool.not = icmp eq i64 %9, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %i2c_bus = getelementptr inbounds %struct.hl_dbg_device_entry, ptr %3, i32 0, i32 23
  %10 = ptrtoint ptr %i2c_bus to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %i2c_bus, align 8
  %i2c_addr = getelementptr inbounds %struct.hl_dbg_device_entry, ptr %3, i32 0, i32 24
  %12 = ptrtoint ptr %i2c_addr to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %i2c_addr, align 1
  %i2c_reg = getelementptr inbounds %struct.hl_dbg_device_entry, ptr %3, i32 0, i32 25
  %14 = ptrtoint ptr %i2c_reg to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %i2c_reg, align 2
  %i2c_len = getelementptr inbounds %struct.hl_dbg_device_entry, ptr %3, i32 0, i32 26
  %16 = ptrtoint ptr %i2c_len to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %i2c_len, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %pkt.i) #12
  %18 = getelementptr inbounds %struct.cpucp_packet, ptr %pkt.i, i32 0, i32 1
  %19 = getelementptr inbounds %struct.cpucp_packet, ptr %pkt.i, i32 0, i32 3
  %call.i = tail call zeroext i1 @hl_device_operational(ptr noundef %5, ptr noundef null) #12
  br i1 %call.i, label %if.end.i, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %17)
  %cmp.i = icmp ugt i8 %17, 8
  br i1 %cmp.i, label %do.end.i, label %if.end4.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i = zext i8 %17 to i32
  %dev.i = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 6
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.69, i32 noundef %conv.i, i32 noundef 8) #16
  br label %do.end

if.end4.i:                                        ; preds = %if.end.i
  %22 = call ptr @memset(ptr %pkt.i, i32 0, i32 24)
  %23 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 3328, ptr %18, align 8
  %24 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %11, ptr %19, align 8
  %i2c_addr6.i = getelementptr inbounds %struct.anon.105, ptr %19, i32 0, i32 1
  %25 = ptrtoint ptr %i2c_addr6.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %13, ptr %i2c_addr6.i, align 1
  %i2c_reg7.i = getelementptr inbounds %struct.anon.105, ptr %19, i32 0, i32 2
  %26 = ptrtoint ptr %i2c_reg7.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %15, ptr %i2c_reg7.i, align 2
  %i2c_len8.i = getelementptr inbounds %struct.anon.105, ptr %19, i32 0, i32 3
  %27 = ptrtoint ptr %i2c_len8.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %17, ptr %i2c_len8.i, align 1
  %asic_funcs.i = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 34
  %28 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %asic_funcs.i, align 8
  %send_cpu_message.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %29, i32 0, i32 54
  %30 = ptrtoint ptr %send_cpu_message.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %send_cpu_message.i, align 4
  %call9.i = call i32 %31(ptr noundef %5, ptr noundef nonnull %pkt.i, i16 noundef zeroext 24, i32 noundef 0, ptr noundef nonnull %val) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool.not.i, label %if.end13, label %do.end13.i

do.end13.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev14.i = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 6
  %32 = ptrtoint ptr %dev14.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev14.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.72, i32 noundef %call9.i) #16
  br label %do.end

do.end:                                           ; preds = %do.end13.i, %do.end.i, %if.end.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call9.i, %do.end13.i ], [ -16, %if.end.do.end_crit_edge ], [ -22, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pkt.i) #12
  %dev = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 6
  %34 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev, align 4
  %36 = ptrtoint ptr %i2c_bus to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %i2c_bus, align 8
  %conv = zext i8 %37 to i32
  %38 = ptrtoint ptr %i2c_addr to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %i2c_addr, align 1
  %conv8 = zext i8 %39 to i32
  %40 = ptrtoint ptr %i2c_reg to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %i2c_reg, align 2
  %conv10 = zext i8 %41 to i32
  %42 = ptrtoint ptr %i2c_len to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %i2c_len, align 1
  %conv12 = zext i8 %43 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.66, i32 noundef %conv, i32 noundef %conv8, i32 noundef %conv10, i32 noundef %conv12) #16
  br label %cleanup

if.end13:                                         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pkt.i) #12
  %44 = ptrtoint ptr %val to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %val, align 8
  %call14 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %tmp_buf, ptr noundef nonnull @.str.68, i64 noundef %45)
  %call17 = call i32 @strlen(ptr noundef nonnull %tmp_buf) #17
  %call18 = call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %tmp_buf, i32 noundef %call17) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ %call18, %if.end13 ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %val) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp_buf) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hl_i2c_data_write(ptr nocapture noundef readonly %f, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %pkt.i = alloca %struct.cpucp_packet, align 8
  %value = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  %hdev2 = getelementptr inbounds %struct.hl_dbg_device_entry, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %hdev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hdev2, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %value) #12
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 -1, ptr %value, align 8, !annotation !396
  %call.i = call i32 @kstrtoull_from_user(ptr noundef %buf, i32 noundef %count, i32 noundef 16, ptr noundef nonnull %value) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %i2c_bus = getelementptr inbounds %struct.hl_dbg_device_entry, ptr %3, i32 0, i32 23
  %7 = ptrtoint ptr %i2c_bus to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %i2c_bus, align 8
  %i2c_addr = getelementptr inbounds %struct.hl_dbg_device_entry, ptr %3, i32 0, i32 24
  %9 = ptrtoint ptr %i2c_addr to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %i2c_addr, align 1
  %i2c_reg = getelementptr inbounds %struct.hl_dbg_device_entry, ptr %3, i32 0, i32 25
  %11 = ptrtoint ptr %i2c_reg to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %i2c_reg, align 2
  %i2c_len = getelementptr inbounds %struct.hl_dbg_device_entry, ptr %3, i32 0, i32 26
  %13 = ptrtoint ptr %i2c_len to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %i2c_len, align 1
  %15 = ptrtoint ptr %value to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %value, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %pkt.i) #12
  %17 = getelementptr inbounds %struct.cpucp_packet, ptr %pkt.i, i32 0, i32 1
  %18 = getelementptr inbounds %struct.cpucp_packet, ptr %pkt.i, i32 0, i32 3
  %call.i31 = call zeroext i1 @hl_device_operational(ptr noundef %5, ptr noundef null) #12
  br i1 %call.i31, label %if.end.i, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %14)
  %cmp.i = icmp ugt i8 %14, 8
  br i1 %cmp.i, label %do.end.i, label %if.end4.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i = zext i8 %14 to i32
  %dev.i = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 6
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.69, i32 noundef %conv.i, i32 noundef 8) #16
  br label %do.end

if.end4.i:                                        ; preds = %if.end.i
  %21 = call ptr @memset(ptr %17, i32 0, i32 16)
  %22 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 3072, ptr %17, align 8
  %23 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %8, ptr %18, align 8
  %i2c_addr6.i = getelementptr inbounds %struct.anon.105, ptr %18, i32 0, i32 1
  %24 = ptrtoint ptr %i2c_addr6.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %10, ptr %i2c_addr6.i, align 1
  %i2c_reg7.i = getelementptr inbounds %struct.anon.105, ptr %18, i32 0, i32 2
  %25 = ptrtoint ptr %i2c_reg7.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %12, ptr %i2c_reg7.i, align 2
  %i2c_len8.i = getelementptr inbounds %struct.anon.105, ptr %18, i32 0, i32 3
  %26 = ptrtoint ptr %i2c_len8.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %14, ptr %i2c_len8.i, align 1
  %27 = call i64 @llvm.bswap.i64(i64 %16) #12
  %28 = ptrtoint ptr %pkt.i to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %27, ptr %pkt.i, align 8
  %asic_funcs.i = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 34
  %29 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %asic_funcs.i, align 8
  %send_cpu_message.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %30, i32 0, i32 54
  %31 = ptrtoint ptr %send_cpu_message.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %send_cpu_message.i, align 4
  %call9.i = call i32 %32(ptr noundef %5, ptr noundef nonnull %pkt.i, i16 noundef zeroext 24, i32 noundef 0, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool.not.i, label %hl_debugfs_i2c_write.exit, label %do.end13.i

do.end13.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev14.i = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 6
  %33 = ptrtoint ptr %dev14.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev14.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.78, i32 noundef %call9.i) #16
  br label %do.end

hl_debugfs_i2c_write.exit:                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pkt.i) #12
  br label %cleanup

do.end:                                           ; preds = %do.end13.i, %do.end.i, %if.end.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call9.i, %do.end13.i ], [ -16, %if.end.do.end_crit_edge ], [ -22, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pkt.i) #12
  %dev = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 6
  %35 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev, align 4
  %37 = ptrtoint ptr %value to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %value, align 8
  %39 = ptrtoint ptr %i2c_bus to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %i2c_bus, align 8
  %conv = zext i8 %40 to i32
  %41 = ptrtoint ptr %i2c_addr to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %i2c_addr, align 1
  %conv9 = zext i8 %42 to i32
  %43 = ptrtoint ptr %i2c_reg to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %i2c_reg, align 2
  %conv11 = zext i8 %44 to i32
  %45 = ptrtoint ptr %i2c_len to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %i2c_len, align 1
  %conv13 = zext i8 %46 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.74, i64 noundef %38, i32 noundef %conv, i32 noundef %conv9, i32 noundef %conv11, i32 noundef %conv13) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end, %hl_debugfs_i2c_write.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ %call.i, %entry.cleanup_crit_edge ], [ %count, %hl_debugfs_i2c_write.exit ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %value) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @hl_device_operational(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hl_led0_write(ptr nocapture noundef readonly %f, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %pkt.i = alloca %struct.cpucp_packet, align 8
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  %hdev2 = getelementptr inbounds %struct.hl_dbg_device_entry, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %hdev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hdev2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #12
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %value, align 4, !annotation !396
  %call3 = call i32 @kstrtouint_from_user(ptr noundef %buf, i32 noundef %count, i32 noundef 10, ptr noundef nonnull %value) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool4.not = icmp ne i32 %8, 0
  %cond = zext i1 %tobool4.not to i32
  %9 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %cond, ptr %value, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %pkt.i) #12
  %call.i = call zeroext i1 @hl_device_operational(ptr noundef %5, ptr noundef null) #12
  br i1 %call.i, label %if.end.i, label %if.end.hl_debugfs_led_set.exit_crit_edge

if.end.hl_debugfs_led_set.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %hl_debugfs_led_set.exit

if.end.i:                                         ; preds = %if.end
  %10 = getelementptr inbounds %struct.cpucp_packet, ptr %pkt.i, i32 0, i32 1
  %11 = call ptr @memset(ptr %10, i32 0, i32 16)
  %12 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2816, ptr %10, align 8
  %13 = select i1 %tobool4.not, i64 72057594037927936, i64 0
  %14 = ptrtoint ptr %pkt.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %pkt.i, align 8
  %asic_funcs.i = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 34
  %15 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %asic_funcs.i, align 8
  %send_cpu_message.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %16, i32 0, i32 54
  %17 = ptrtoint ptr %send_cpu_message.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %send_cpu_message.i, align 4
  %call2.i = call i32 %18(ptr noundef %5, ptr noundef nonnull %pkt.i, i16 noundef zeroext 24, i32 noundef 0, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.end.i.hl_debugfs_led_set.exit_crit_edge, label %do.end.i

if.end.i.hl_debugfs_led_set.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hl_debugfs_led_set.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 6
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.80, i32 noundef 0, i32 noundef %call2.i) #16
  br label %hl_debugfs_led_set.exit

hl_debugfs_led_set.exit:                          ; preds = %do.end.i, %if.end.i.hl_debugfs_led_set.exit_crit_edge, %if.end.hl_debugfs_led_set.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pkt.i) #12
  br label %cleanup

cleanup:                                          ; preds = %hl_debugfs_led_set.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %hl_debugfs_led_set.exit ], [ %call3, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hl_led1_write(ptr nocapture noundef readonly %f, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %pkt.i = alloca %struct.cpucp_packet, align 8
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  %hdev2 = getelementptr inbounds %struct.hl_dbg_device_entry, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %hdev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hdev2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #12
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %value, align 4, !annotation !396
  %call3 = call i32 @kstrtouint_from_user(ptr noundef %buf, i32 noundef %count, i32 noundef 10, ptr noundef nonnull %value) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool4.not = icmp ne i32 %8, 0
  %cond = zext i1 %tobool4.not to i32
  %9 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %cond, ptr %value, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %pkt.i) #12
  %call.i = call zeroext i1 @hl_device_operational(ptr noundef %5, ptr noundef null) #12
  br i1 %call.i, label %if.end.i, label %if.end.hl_debugfs_led_set.exit_crit_edge

if.end.hl_debugfs_led_set.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %hl_debugfs_led_set.exit

if.end.i:                                         ; preds = %if.end
  %10 = getelementptr inbounds %struct.cpucp_packet, ptr %pkt.i, i32 0, i32 3
  %11 = getelementptr inbounds %struct.cpucp_packet, ptr %pkt.i, i32 0, i32 1
  %12 = call ptr @memset(ptr %11, i32 0, i32 16)
  %13 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2816, ptr %11, align 8
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 16777216, ptr %10, align 8
  %15 = select i1 %tobool4.not, i64 72057594037927936, i64 0
  %16 = ptrtoint ptr %pkt.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %pkt.i, align 8
  %asic_funcs.i = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 34
  %17 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %asic_funcs.i, align 8
  %send_cpu_message.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %18, i32 0, i32 54
  %19 = ptrtoint ptr %send_cpu_message.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %send_cpu_message.i, align 4
  %call2.i = call i32 %20(ptr noundef %5, ptr noundef nonnull %pkt.i, i16 noundef zeroext 24, i32 noundef 0, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.end.i.hl_debugfs_led_set.exit_crit_edge, label %do.end.i

if.end.i.hl_debugfs_led_set.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hl_debugfs_led_set.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 6
  %21 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.80, i32 noundef 1, i32 noundef %call2.i) #16
  br label %hl_debugfs_led_set.exit

hl_debugfs_led_set.exit:                          ; preds = %do.end.i, %if.end.i.hl_debugfs_led_set.exit_crit_edge, %if.end.hl_debugfs_led_set.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pkt.i) #12
  br label %cleanup

cleanup:                                          ; preds = %hl_debugfs_led_set.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %hl_debugfs_led_set.exit ], [ %call3, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hl_led2_write(ptr nocapture noundef readonly %f, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %pkt.i = alloca %struct.cpucp_packet, align 8
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  %hdev2 = getelementptr inbounds %struct.hl_dbg_device_entry, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %hdev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hdev2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #12
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %value, align 4, !annotation !396
  %call3 = call i32 @kstrtouint_from_user(ptr noundef %buf, i32 noundef %count, i32 noundef 10, ptr noundef nonnull %value) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool4.not = icmp ne i32 %8, 0
  %cond = zext i1 %tobool4.not to i32
  %9 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %cond, ptr %value, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %pkt.i) #12
  %call.i = call zeroext i1 @hl_device_operational(ptr noundef %5, ptr noundef null) #12
  br i1 %call.i, label %if.end.i, label %if.end.hl_debugfs_led_set.exit_crit_edge

if.end.hl_debugfs_led_set.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %hl_debugfs_led_set.exit

if.end.i:                                         ; preds = %if.end
  %10 = getelementptr inbounds %struct.cpucp_packet, ptr %pkt.i, i32 0, i32 3
  %11 = getelementptr inbounds %struct.cpucp_packet, ptr %pkt.i, i32 0, i32 1
  %12 = call ptr @memset(ptr %11, i32 0, i32 16)
  %13 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2816, ptr %11, align 8
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 33554432, ptr %10, align 8
  %15 = select i1 %tobool4.not, i64 72057594037927936, i64 0
  %16 = ptrtoint ptr %pkt.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %pkt.i, align 8
  %asic_funcs.i = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 34
  %17 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %asic_funcs.i, align 8
  %send_cpu_message.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %18, i32 0, i32 54
  %19 = ptrtoint ptr %send_cpu_message.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %send_cpu_message.i, align 4
  %call2.i = call i32 %20(ptr noundef %5, ptr noundef nonnull %pkt.i, i16 noundef zeroext 24, i32 noundef 0, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.end.i.hl_debugfs_led_set.exit_crit_edge, label %do.end.i

if.end.i.hl_debugfs_led_set.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hl_debugfs_led_set.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 6
  %21 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.80, i32 noundef 2, i32 noundef %call2.i) #16
  br label %hl_debugfs_led_set.exit

hl_debugfs_led_set.exit:                          ; preds = %do.end.i, %if.end.i.hl_debugfs_led_set.exit_crit_edge, %if.end.hl_debugfs_led_set.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pkt.i) #12
  br label %cleanup

cleanup:                                          ; preds = %hl_debugfs_led_set.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %hl_debugfs_led_set.exit ], [ %call3, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hl_device_read(ptr nocapture noundef readnone %f, ptr noundef %buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.82, i32 noundef 60) #12
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hl_device_write(ptr nocapture noundef readonly %f, ptr noundef %buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %data = alloca [30 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  %hdev2 = getelementptr inbounds %struct.hl_dbg_device_entry, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %hdev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hdev2, align 4
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %data) #12
  %6 = call ptr @memset(ptr %data, i32 0, i32 30)
  %7 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %8)
  %cmp.not = icmp eq i64 %8, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call i32 @simple_write_to_buffer(ptr noundef nonnull %data, i32 noundef 29, ptr noundef %ppos, ptr noundef %buf, i32 noundef %count) #12
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) @.str.83, ptr noundef nonnull dereferenceable(7) %data, i32 7) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp6 = icmp eq i32 %bcmp, 0
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %disabled = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 78
  %9 = ptrtoint ptr %disabled to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %disabled, align 2
  br label %cleanup

if.else:                                          ; preds = %if.end
  %bcmp48 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) @.str.84, ptr noundef nonnull dereferenceable(6) %data, i32 6) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp48)
  %cmp10 = icmp eq i32 %bcmp48, 0
  br i1 %cmp10, label %if.then11, label %if.else13

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %disabled12 = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 78
  %10 = ptrtoint ptr %disabled12 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %disabled12, align 2
  br label %cleanup

if.else13:                                        ; preds = %if.else
  %bcmp49 = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) @.str.85, ptr noundef nonnull dereferenceable(7) %data, i32 7) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp49)
  %cmp16 = icmp eq i32 %bcmp49, 0
  br i1 %cmp16, label %if.then17, label %if.else19

if.then17:                                        ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #14
  %asic_funcs = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 34
  %11 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %asic_funcs, align 8
  %suspend = getelementptr inbounds %struct.hl_asic_funcs, ptr %12, i32 0, i32 9
  %13 = ptrtoint ptr %suspend to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %suspend, align 4
  %call18 = call i32 %14(ptr noundef %5) #12
  br label %cleanup

if.else19:                                        ; preds = %if.else13
  %bcmp50 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) @.str.86, ptr noundef nonnull dereferenceable(6) %data, i32 6) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp50)
  %cmp22 = icmp eq i32 %bcmp50, 0
  br i1 %cmp22, label %if.then23, label %if.else26

if.then23:                                        ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #14
  %asic_funcs24 = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 34
  %15 = ptrtoint ptr %asic_funcs24 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %asic_funcs24, align 8
  %resume = getelementptr inbounds %struct.hl_asic_funcs, ptr %16, i32 0, i32 10
  %17 = ptrtoint ptr %resume to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %resume, align 4
  %call25 = call i32 %18(ptr noundef %5) #12
  br label %cleanup

if.else26:                                        ; preds = %if.else19
  %bcmp51 = call i32 @bcmp(ptr noundef nonnull dereferenceable(11) @.str.87, ptr noundef nonnull dereferenceable(11) %data, i32 11) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp51)
  %cmp29 = icmp eq i32 %bcmp51, 0
  br i1 %cmp29, label %if.then30, label %do.end

if.then30:                                        ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #14
  %device_cpu_disabled = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 87
  %19 = ptrtoint ptr %device_cpu_disabled to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %device_cpu_disabled, align 1
  br label %cleanup

do.end:                                           ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 6
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.82) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then30, %if.then23, %if.then17, %if.then11, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %count, %if.then7 ], [ %count, %if.then11 ], [ %count, %if.then17 ], [ %count, %if.then23 ], [ %count, %if.then30 ], [ -22, %do.end ]
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %data) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_write_to_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hl_clk_gate_read(ptr nocapture noundef readonly %f, ptr noundef %buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %tmp_buf = alloca [200 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  %hdev2 = getelementptr inbounds %struct.hl_dbg_device_entry, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %hdev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hdev2, align 4
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %tmp_buf) #12
  %6 = call ptr @memset(ptr %tmp_buf, i32 255, i32 200)
  %7 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %8)
  %tobool.not = icmp eq i64 %8, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %clock_gating_mask = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 64
  %9 = ptrtoint ptr %clock_gating_mask to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %clock_gating_mask, align 8
  %call3 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %tmp_buf, ptr noundef nonnull @.str.89, i64 noundef %10)
  %call6 = call i32 @strlen(ptr noundef nonnull %tmp_buf) #17
  %add = add i32 %call6, 1
  %call7 = call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %tmp_buf, i32 noundef %add) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %tmp_buf) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hl_clk_gate_write(ptr nocapture noundef readonly %f, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %value = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  %hdev2 = getelementptr inbounds %struct.hl_dbg_device_entry, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %hdev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hdev2, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %value) #12
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 -1, ptr %value, align 8, !annotation !396
  %in_reset = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 59, i32 4
  %7 = ptrtoint ptr %in_reset to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %in_reset, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %if.end9, label %do.body

do.body:                                          ; preds = %entry
  %call3 = tail call i32 @___ratelimit(ptr noundef nonnull @hl_clk_gate_write._rs, ptr noundef nonnull @__func__.hl_clk_gate_write) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 6
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %10, ptr noundef nonnull @.str.90) #16
  br label %cleanup

if.end9:                                          ; preds = %entry
  %call10 = call i32 @kstrtoull_from_user(ptr noundef %buf, i32 noundef %count, i32 noundef 16, ptr noundef nonnull %value) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %value to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %value, align 8
  %clock_gating_mask = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 64
  %13 = ptrtoint ptr %clock_gating_mask to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %clock_gating_mask, align 8
  %asic_funcs = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 34
  %14 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %asic_funcs, align 8
  %set_clock_gating = getelementptr inbounds %struct.hl_asic_funcs, ptr %15, i32 0, i32 45
  %16 = ptrtoint ptr %set_clock_gating to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %set_clock_gating, align 4
  call void %17(ptr noundef %5) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end9.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end13 ], [ 0, %do.end ], [ 0, %do.body.cleanup_crit_edge ], [ %call10, %if.end9.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %value) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hl_stop_on_err_read(ptr nocapture noundef readonly %f, ptr noundef %buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %tmp_buf = alloca [200 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  %hdev2 = getelementptr inbounds %struct.hl_dbg_device_entry, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %hdev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hdev2, align 4
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %tmp_buf) #12
  %6 = call ptr @memset(ptr %tmp_buf, i32 255, i32 200)
  %7 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %8)
  %tobool.not = icmp eq i64 %8, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %stop_on_err = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 92
  %9 = ptrtoint ptr %stop_on_err to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %stop_on_err, align 8
  %conv = zext i8 %10 to i32
  %call3 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %tmp_buf, ptr noundef nonnull @.str.91, i32 noundef %conv)
  %call5 = call i32 @strlen(ptr noundef nonnull %tmp_buf) #17
  %add = add i32 %call5, 1
  %call10 = call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %add, ptr noundef %ppos, ptr noundef nonnull %tmp_buf, i32 noundef %add) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %tmp_buf) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hl_stop_on_err_write(ptr nocapture noundef readonly %f, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  %hdev2 = getelementptr inbounds %struct.hl_dbg_device_entry, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %hdev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hdev2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #12
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %value, align 4, !annotation !396
  %in_reset = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 59, i32 4
  %7 = ptrtoint ptr %in_reset to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %in_reset, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %if.end9, label %do.body

do.body:                                          ; preds = %entry
  %call3 = tail call i32 @___ratelimit(ptr noundef nonnull @hl_stop_on_err_write._rs, ptr noundef nonnull @__func__.hl_stop_on_err_write) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 6
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %10, ptr noundef nonnull @.str.92) #16
  br label %cleanup

if.end9:                                          ; preds = %entry
  %call10 = call i32 @kstrtouint_from_user(ptr noundef %buf, i32 noundef %count, i32 noundef 10, ptr noundef nonnull %value) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool14.not = icmp ne i32 %12, 0
  %conv = zext i1 %tobool14.not to i8
  %stop_on_err = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 92
  %13 = ptrtoint ptr %stop_on_err to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv, ptr %stop_on_err, align 8
  %call15 = call i32 @hl_device_reset(ptr noundef %5, i32 noundef 0) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end9.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end13 ], [ 0, %do.end ], [ 0, %do.body.cleanup_crit_edge ], [ %call10, %if.end9.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hl_device_reset(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hl_security_violations_read(ptr nocapture noundef readonly %f, ptr nocapture noundef readnone %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  %hdev2 = getelementptr inbounds %struct.hl_dbg_device_entry, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %hdev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hdev2, align 4
  %asic_funcs = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 34
  %6 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %asic_funcs, align 8
  %ack_protection_bits_errors = getelementptr inbounds %struct.hl_asic_funcs, ptr %7, i32 0, i32 78
  %8 = ptrtoint ptr %ack_protection_bits_errors to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ack_protection_bits_errors, align 4
  tail call void %9(ptr noundef %5) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hl_dma_size_write(ptr nocapture noundef readonly %f, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %size = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  %hdev2 = getelementptr inbounds %struct.hl_dbg_device_entry, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %hdev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hdev2, align 4
  %addr3 = getelementptr inbounds %struct.hl_dbg_device_entry, ptr %3, i32 0, i32 18
  %6 = ptrtoint ptr %addr3 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %addr3, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size) #12
  %8 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %size, align 4, !annotation !396
  %in_reset = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 59, i32 4
  %9 = ptrtoint ptr %in_reset to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %in_reset, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %if.end10, label %do.body

do.body:                                          ; preds = %entry
  %call4 = tail call i32 @___ratelimit(ptr noundef nonnull @hl_dma_size_write._rs, ptr noundef nonnull @__func__.hl_dma_size_write) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 6
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %12, ptr noundef nonnull @.str.93) #16
  br label %cleanup

if.end10:                                         ; preds = %entry
  %call11 = call i32 @kstrtouint_from_user(ptr noundef %buf, i32 noundef %count, i32 noundef 16, ptr noundef nonnull %size) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %13 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool15.not = icmp eq i32 %14, 0
  br i1 %tobool15.not, label %do.end19, label %if.end21

do.end19:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  %dev20 = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 6
  %15 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev20, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.95) #16
  br label %cleanup

if.end21:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217728, i32 %14)
  %cmp = icmp ugt i32 %14, 134217728
  br i1 %cmp, label %do.end25, label %if.end27

do.end25:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  %dev26 = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 6
  %17 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev26, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.98) #16
  br label %cleanup

if.end27:                                         ; preds = %if.end21
  %mmu_enable.i = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 107
  %19 = ptrtoint ptr %mmu_enable.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %mmu_enable.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i = icmp eq i8 %20, 0
  br i1 %tobool.not.i, label %if.end27.do.end32_crit_edge, label %if.end.i

if.end27.do.end32_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end32

if.end.i:                                         ; preds = %if.end27
  %dram_supports_virtual_memory.i = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 33, i32 71
  %21 = ptrtoint ptr %dram_supports_virtual_memory.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %dram_supports_virtual_memory.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool1.not.i = icmp eq i8 %22, 0
  %dmmu.i = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 33, i32 4
  %end_addr.i = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 33, i32 4, i32 1
  %dram_base_address.i = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 33, i32 13
  %dram_end_address.i = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 33, i32 14
  %dram_start_addr.0.in.i = select i1 %tobool1.not.i, ptr %dram_base_address.i, ptr %dmmu.i
  %dram_end_addr.0.in.i = select i1 %tobool1.not.i, ptr %dram_end_address.i, ptr %end_addr.i
  %23 = ptrtoint ptr %dram_end_addr.0.in.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %dram_end_addr.0.i = load i64, ptr %dram_end_addr.0.in.i, align 8
  %24 = ptrtoint ptr %dram_start_addr.0.in.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %dram_start_addr.0.i = load i64, ptr %dram_start_addr.0.in.i, align 8
  %conv.i = zext i32 %14 to i64
  %add.i.i = add i64 %7, %conv.i
  call void @__sanitizer_cov_trace_cmp8(i64 %dram_start_addr.0.i, i64 %7)
  %cmp.not.i.i = icmp ule i64 %dram_start_addr.0.i, %7
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i, i64 %dram_end_addr.0.i)
  %cmp1.not.i.i = icmp ule i64 %add.i.i, %dram_end_addr.0.i
  %or.cond.not.i.i = and i1 %cmp1.not.i.i, %cmp.not.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i, i64 %7)
  %cmp3.i.i = icmp ugt i64 %add.i.i, %7
  %or.cond7.i.i = and i1 %cmp3.i.i, %or.cond.not.i.i
  br i1 %or.cond7.i.i, label %if.end.i.if.end34_crit_edge, label %hl_is_device_internal_memory_va.exit

if.end.i.if.end34_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

hl_is_device_internal_memory_va.exit:             ; preds = %if.end.i
  %sram_base_address.i = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 33, i32 10
  %25 = ptrtoint ptr %sram_base_address.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %sram_base_address.i, align 8
  %sram_end_address.i = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 33, i32 11
  %27 = ptrtoint ptr %sram_end_address.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %sram_end_address.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %26, i64 %7)
  %cmp.not.i23.i = icmp ule i64 %26, %7
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i, i64 %28)
  %cmp1.not.i24.i = icmp ule i64 %add.i.i, %28
  %or.cond.not.i25.i = and i1 %cmp.not.i23.i, %cmp1.not.i24.i
  %or.cond7.i27.i = and i1 %cmp3.i.i, %or.cond.not.i25.i
  br i1 %or.cond7.i27.i, label %hl_is_device_internal_memory_va.exit.if.end34_crit_edge, label %hl_is_device_internal_memory_va.exit.do.end32_crit_edge

hl_is_device_internal_memory_va.exit.do.end32_crit_edge: ; preds = %hl_is_device_internal_memory_va.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end32

hl_is_device_internal_memory_va.exit.if.end34_crit_edge: ; preds = %hl_is_device_internal_memory_va.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

do.end32:                                         ; preds = %hl_is_device_internal_memory_va.exit.do.end32_crit_edge, %if.end27.do.end32_crit_edge
  %dev33 = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 6
  %29 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev33, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.101, i64 noundef %7, i32 noundef %14) #16
  br label %cleanup

if.end34:                                         ; preds = %hl_is_device_internal_memory_va.exit.if.end34_crit_edge, %if.end.i.if.end34_crit_edge
  %blob_desc = getelementptr inbounds %struct.hl_dbg_device_entry, ptr %3, i32 0, i32 15
  %size35 = getelementptr inbounds %struct.hl_dbg_device_entry, ptr %3, i32 0, i32 15, i32 1
  %31 = ptrtoint ptr %size35 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %size35, align 4
  %32 = ptrtoint ptr %blob_desc to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %blob_desc, align 4
  call void @vfree(ptr noundef %33) #12
  %34 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %size, align 4
  %call37 = call noalias ptr @vmalloc(i32 noundef %35) #18
  %36 = ptrtoint ptr %blob_desc to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call37, ptr %blob_desc, align 4
  %tobool42.not = icmp eq ptr %call37, null
  br i1 %tobool42.not, label %if.end34.cleanup_crit_edge, label %if.end44

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end44:                                         ; preds = %if.end34
  %asic_funcs = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 34
  %37 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %asic_funcs, align 8
  %debugfs_read_dma = getelementptr inbounds %struct.hl_asic_funcs, ptr %38, i32 0, i32 35
  %39 = ptrtoint ptr %debugfs_read_dma to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %debugfs_read_dma, align 4
  %41 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %size, align 4
  %call47 = call i32 %40(ptr noundef %5, i64 noundef %7, i32 noundef %42, ptr noundef nonnull %call37) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end58, label %do.end52

do.end52:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  %dev53 = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 6
  %43 = ptrtoint ptr %dev53 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev53, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.104, i64 noundef %7) #16
  %45 = ptrtoint ptr %blob_desc to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %blob_desc, align 4
  call void @vfree(ptr noundef %46) #12
  %47 = ptrtoint ptr %blob_desc to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %blob_desc, align 4
  br label %cleanup

if.end58:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  %48 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %size, align 4
  %50 = ptrtoint ptr %size35 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %size35, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end58, %do.end52, %if.end34.cleanup_crit_edge, %do.end32, %do.end25, %do.end19, %if.end10.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end25 ], [ -5, %do.end52 ], [ %count, %if.end58 ], [ -22, %do.end32 ], [ -22, %do.end19 ], [ 0, %do.end ], [ 0, %do.body.cleanup_crit_edge ], [ %call11, %if.end10.cleanup_crit_edge ], [ -12, %if.end34.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hl_state_dump_read(ptr nocapture noundef readonly %f, ptr noundef %buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  %state_dump_sem = getelementptr inbounds %struct.hl_dbg_device_entry, ptr %3, i32 0, i32 17
  tail call void @down_read(ptr noundef %state_dump_sem) #12
  %state_dump_head = getelementptr inbounds %struct.hl_dbg_device_entry, ptr %3, i32 0, i32 22
  %4 = ptrtoint ptr %state_dump_head to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state_dump_head, align 4
  %arrayidx = getelementptr %struct.hl_dbg_device_entry, ptr %3, i32 0, i32 16, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.else

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call8 = tail call i32 @strlen(ptr noundef nonnull %7) #17
  %call9 = tail call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %7, i32 noundef %call8) #12
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %rc.0 = phi i32 [ %call9, %if.else ], [ 0, %entry.if.end_crit_edge ]
  tail call void @up_read(ptr noundef %state_dump_sem) #12
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hl_state_dump_write(ptr nocapture noundef readonly %f, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %size = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  %hdev2 = getelementptr inbounds %struct.hl_dbg_device_entry, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %hdev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hdev2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size) #12
  %6 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %size, align 4, !annotation !396
  %call3 = call i32 @kstrtouint_from_user(ptr noundef %buf, i32 noundef %count, i32 noundef 10, ptr noundef nonnull %size) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %size, align 4
  %9 = add i32 %8, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %9)
  %10 = icmp ult i32 %9, -4
  br i1 %10, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 6
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.106) #16
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %state_dump_head = getelementptr inbounds %struct.hl_dbg_device_entry, ptr %3, i32 0, i32 22
  %13 = ptrtoint ptr %state_dump_head to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %state_dump_head, align 4
  %arrayidx = getelementptr %struct.hl_dbg_device_entry, ptr %3, i32 0, i32 16, i32 %14
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  %tobool7.not = icmp eq ptr %16, null
  br i1 %tobool7.not, label %if.end6.cleanup_crit_edge, label %if.then8

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then8:                                         ; preds = %if.end6
  %state_dump_sem = getelementptr inbounds %struct.hl_dbg_device_entry, ptr %3, i32 0, i32 17
  call void @down_write(ptr noundef %state_dump_sem) #12
  %17 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp943.not = icmp eq i32 %18, 0
  br i1 %cmp943.not, label %if.then8.for.end_crit_edge, label %if.then8.for.body_crit_edge

if.then8.for.body_crit_edge:                      ; preds = %if.then8
  br label %for.body

if.then8.for.end_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then8.for.body_crit_edge
  %i.044 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.then8.for.body_crit_edge ]
  %19 = ptrtoint ptr %state_dump_head to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %state_dump_head, align 4
  %arrayidx12 = getelementptr %struct.hl_dbg_device_entry, ptr %3, i32 0, i32 16, i32 %20
  %21 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx12, align 4
  call void @vfree(ptr noundef %22) #12
  %23 = ptrtoint ptr %state_dump_head to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %state_dump_head, align 4
  %arrayidx15 = getelementptr %struct.hl_dbg_device_entry, ptr %3, i32 0, i32 16, i32 %24
  %25 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %arrayidx15, align 4
  %26 = load i32, ptr %state_dump_head, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp17.not = icmp eq i32 %26, 0
  %dec = add i32 %26, -1
  %storemerge = select i1 %cmp17.not, i32 4, i32 %dec
  %27 = ptrtoint ptr %state_dump_head to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %storemerge, ptr %state_dump_head, align 4
  %inc = add nuw i32 %i.044, 1
  %28 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %size, align 4
  %cmp9 = icmp ult i32 %inc, %29
  br i1 %cmp9, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.then8.for.end_crit_edge
  call void @up_write(ptr noundef %state_dump_sem) #12
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end6.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %call3, %entry.cleanup_crit_edge ], [ %count, %for.end ], [ %count, %if.end6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hl_timeout_locked_read(ptr nocapture noundef readonly %f, ptr noundef %buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %tmp_buf = alloca [200 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  %hdev2 = getelementptr inbounds %struct.hl_dbg_device_entry, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %hdev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hdev2, align 4
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %tmp_buf) #12
  %6 = call ptr @memset(ptr %tmp_buf, i32 255, i32 200)
  %7 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %8)
  %tobool.not = icmp eq i64 %8, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %timeout_jiffies = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 62
  %9 = ptrtoint ptr %timeout_jiffies to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %timeout_jiffies, align 8
  %conv = trunc i64 %10 to i32
  %call3 = tail call i32 @jiffies_to_msecs(i32 noundef %conv) #12
  %div = udiv i32 %call3, 1000
  %call4 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %tmp_buf, ptr noundef nonnull @.str.91, i32 noundef %div)
  %call6 = call i32 @strlen(ptr noundef nonnull %tmp_buf) #17
  %add = add i32 %call6, 1
  %call11 = call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %add, ptr noundef %ppos, ptr noundef nonnull %tmp_buf, i32 noundef %add) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %tmp_buf) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hl_timeout_locked_write(ptr nocapture noundef readonly %f, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  %hdev2 = getelementptr inbounds %struct.hl_dbg_device_entry, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %hdev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hdev2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #12
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %value, align 4, !annotation !396
  %call3 = call i32 @kstrtouint_from_user(ptr noundef %buf, i32 noundef %count, i32 noundef 10, ptr noundef nonnull %value) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool4.not = icmp eq i32 %8, 0
  br i1 %tobool4.not, label %if.end.cleanup.sink.split_crit_edge, label %if.else.i

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %mul = mul i32 %8, 1000
  %call2.i = call i32 @__msecs_to_jiffies(i32 noundef %mul) #12
  %conv = zext i32 %call2.i to i64
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else.i, %if.end.cleanup.sink.split_crit_edge
  %conv.sink = phi i64 [ %conv, %if.else.i ], [ 2147483647, %if.end.cleanup.sink.split_crit_edge ]
  %timeout_jiffies = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 62
  %9 = ptrtoint ptr %timeout_jiffies to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %conv.sink, ptr %timeout_jiffies, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %entry.cleanup_crit_edge ], [ %count, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @command_buffers_show(ptr noundef %s, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %dev_entry2 = getelementptr inbounds %struct.hl_debugfs_entry, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev_entry2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_entry2, align 4
  %cb_spinlock = getelementptr inbounds %struct.hl_dbg_device_entry, ptr %3, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %cb_spinlock) #12
  %cb_list = getelementptr inbounds %struct.hl_dbg_device_entry, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %cb_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn31 = load ptr, ptr %cb_list, align 8
  %cmp.not33 = icmp eq ptr %.pn31, %cb_list
  br i1 %cmp.not33, label %if.end13.critedge, label %if.end.peel

if.end.peel:                                      ; preds = %entry
  %cb.036.peel = getelementptr i8, ptr %.pn31, i32 -56
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.116) #12
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.117) #12
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.118) #12
  %id.peel = getelementptr i8, ptr %.pn31, i32 24
  %5 = ptrtoint ptr %id.peel to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %id.peel, align 8
  %ctx.peel = getelementptr i8, ptr %.pn31, i32 -48
  %7 = ptrtoint ptr %ctx.peel to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ctx.peel, align 8
  %asid.peel = getelementptr inbounds %struct.hl_ctx, ptr %8, i32 0, i32 21
  %9 = ptrtoint ptr %asid.peel to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %asid.peel, align 8
  %size.peel = getelementptr i8, ptr %.pn31, i32 44
  %11 = ptrtoint ptr %size.peel to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %size.peel, align 4
  %call.i.i.i.i.peel = tail call zeroext i1 @__kasan_check_read(ptr noundef %cb.036.peel, i32 noundef 4) #12
  %13 = ptrtoint ptr %cb.036.peel to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %cb.036.peel, align 4
  %mmap.peel = getelementptr i8, ptr %.pn31, i32 52
  %15 = ptrtoint ptr %mmap.peel to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %mmap.peel, align 4
  %conv.peel = zext i8 %16 to i32
  %cs_cnt.peel = getelementptr i8, ptr %.pn31, i32 48
  %call.i.i.peel = tail call zeroext i1 @__kasan_check_read(ptr noundef %cs_cnt.peel, i32 noundef 4) #12
  %17 = ptrtoint ptr %cs_cnt.peel to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %cs_cnt.peel, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.119, i64 noundef %6, i32 noundef %10, i32 noundef %12, i32 noundef %14, i32 noundef %conv.peel, i32 noundef %18) #12
  %19 = ptrtoint ptr %.pn31 to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn.peel = load ptr, ptr %.pn31, align 8
  %cmp.not.peel = icmp eq ptr %.pn.peel, %cb_list
  br i1 %cmp.not.peel, label %if.end.peel.for.end_crit_edge, label %if.end.peel.if.end_crit_edge

if.end.peel.if.end_crit_edge:                     ; preds = %if.end.peel
  br label %if.end

if.end.peel.for.end_crit_edge:                    ; preds = %if.end.peel
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end:                                           ; preds = %if.end.if.end_crit_edge, %if.end.peel.if.end_crit_edge
  %.pn35 = phi ptr [ %.pn, %if.end.if.end_crit_edge ], [ %.pn.peel, %if.end.peel.if.end_crit_edge ]
  %cb.036 = getelementptr i8, ptr %.pn35, i32 -56
  %id = getelementptr i8, ptr %.pn35, i32 24
  %20 = ptrtoint ptr %id to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %id, align 8
  %ctx = getelementptr i8, ptr %.pn35, i32 -48
  %22 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ctx, align 8
  %asid = getelementptr inbounds %struct.hl_ctx, ptr %23, i32 0, i32 21
  %24 = ptrtoint ptr %asid to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %asid, align 8
  %size = getelementptr i8, ptr %.pn35, i32 44
  %26 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %size, align 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %cb.036, i32 noundef 4) #12
  %28 = ptrtoint ptr %cb.036 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %cb.036, align 4
  %mmap = getelementptr i8, ptr %.pn35, i32 52
  %30 = ptrtoint ptr %mmap to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %mmap, align 4
  %conv = zext i8 %31 to i32
  %cs_cnt = getelementptr i8, ptr %.pn35, i32 48
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %cs_cnt, i32 noundef 4) #12
  %32 = ptrtoint ptr %cs_cnt to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %cs_cnt, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.119, i64 noundef %21, i32 noundef %25, i32 noundef %27, i32 noundef %29, i32 noundef %conv, i32 noundef %33) #12
  %34 = ptrtoint ptr %.pn35 to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pn = load ptr, ptr %.pn35, align 8
  %cmp.not = icmp eq ptr %.pn, %cb_list
  br i1 %cmp.not, label %if.end.for.end_crit_edge, label %if.end.if.end_crit_edge, !llvm.loop !398

if.end.if.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %if.end.peel.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %cb_spinlock) #12
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.116) #12
  br label %if.end13

if.end13.critedge:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock(ptr noundef %cb_spinlock) #12
  br label %if.end13

if.end13:                                         ; preds = %if.end13.critedge, %for.end
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @command_submission_show(ptr noundef %s, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %dev_entry2 = getelementptr inbounds %struct.hl_debugfs_entry, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev_entry2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_entry2, align 4
  %cs_spinlock = getelementptr inbounds %struct.hl_dbg_device_entry, ptr %3, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %cs_spinlock) #12
  %cs_list = getelementptr inbounds %struct.hl_dbg_device_entry, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %cs_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn30 = load ptr, ptr %cs_list, align 4
  %cmp.not31 = icmp eq ptr %.pn30, %cs_list
  br i1 %cmp.not31, label %if.end13.critedge, label %if.end.peel

if.end.peel:                                      ; preds = %entry
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.116) #12
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.120) #12
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.121) #12
  %sequence.peel = getelementptr i8, ptr %.pn30, i32 16
  %5 = ptrtoint ptr %sequence.peel to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %sequence.peel, align 8
  %ctx.peel = getelementptr i8, ptr %.pn30, i32 -228
  %7 = ptrtoint ptr %ctx.peel to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ctx.peel, align 4
  %asid.peel = getelementptr inbounds %struct.hl_ctx, ptr %8, i32 0, i32 21
  %9 = ptrtoint ptr %asid.peel to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %asid.peel, align 8
  %refcount.peel = getelementptr i8, ptr %.pn30, i32 -172
  %call.i.i.i.i.peel = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount.peel, i32 noundef 4) #12
  %11 = ptrtoint ptr %refcount.peel to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %refcount.peel, align 4
  %submitted.peel = getelementptr i8, ptr %.pn30, i32 62
  %13 = ptrtoint ptr %submitted.peel to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %submitted.peel, align 2
  %conv.peel = zext i8 %14 to i32
  %completed.peel = getelementptr i8, ptr %.pn30, i32 63
  %15 = ptrtoint ptr %completed.peel to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %completed.peel, align 1
  %conv4.peel = zext i8 %16 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.122, i64 noundef %6, i32 noundef %10, i32 noundef %12, i32 noundef %conv.peel, i32 noundef %conv4.peel) #12
  %17 = ptrtoint ptr %.pn30 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn.peel = load ptr, ptr %.pn30, align 4
  %cmp.not.peel = icmp eq ptr %.pn.peel, %cs_list
  br i1 %cmp.not.peel, label %if.end.peel.for.end_crit_edge, label %if.end.peel.if.end_crit_edge

if.end.peel.if.end_crit_edge:                     ; preds = %if.end.peel
  br label %if.end

if.end.peel.for.end_crit_edge:                    ; preds = %if.end.peel
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end:                                           ; preds = %if.end.if.end_crit_edge, %if.end.peel.if.end_crit_edge
  %.pn33 = phi ptr [ %.pn, %if.end.if.end_crit_edge ], [ %.pn.peel, %if.end.peel.if.end_crit_edge ]
  %sequence = getelementptr i8, ptr %.pn33, i32 16
  %18 = ptrtoint ptr %sequence to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %sequence, align 8
  %ctx = getelementptr i8, ptr %.pn33, i32 -228
  %20 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ctx, align 4
  %asid = getelementptr inbounds %struct.hl_ctx, ptr %21, i32 0, i32 21
  %22 = ptrtoint ptr %asid to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %asid, align 8
  %refcount = getelementptr i8, ptr %.pn33, i32 -172
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount, i32 noundef 4) #12
  %24 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %refcount, align 4
  %submitted = getelementptr i8, ptr %.pn33, i32 62
  %26 = ptrtoint ptr %submitted to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %submitted, align 2
  %conv = zext i8 %27 to i32
  %completed = getelementptr i8, ptr %.pn33, i32 63
  %28 = ptrtoint ptr %completed to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %completed, align 1
  %conv4 = zext i8 %29 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.122, i64 noundef %19, i32 noundef %23, i32 noundef %25, i32 noundef %conv, i32 noundef %conv4) #12
  %30 = ptrtoint ptr %.pn33 to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pn = load ptr, ptr %.pn33, align 4
  %cmp.not = icmp eq ptr %.pn, %cs_list
  br i1 %cmp.not, label %if.end.for.end_crit_edge, label %if.end.if.end_crit_edge, !llvm.loop !400

if.end.if.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %if.end.peel.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %cs_spinlock) #12
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.116) #12
  br label %if.end13

if.end13.critedge:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock(ptr noundef %cs_spinlock) #12
  br label %if.end13

if.end13:                                         ; preds = %if.end13.critedge, %for.end
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @command_submission_jobs_show(ptr noundef %s, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %dev_entry2 = getelementptr inbounds %struct.hl_debugfs_entry, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev_entry2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_entry2, align 4
  %cs_job_spinlock = getelementptr inbounds %struct.hl_dbg_device_entry, ptr %3, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %cs_job_spinlock) #12
  %cs_job_list = getelementptr inbounds %struct.hl_dbg_device_entry, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %cs_job_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn44 = load ptr, ptr %cs_job_list, align 4
  %cmp.not45 = icmp eq ptr %.pn44, %cs_job_list
  br i1 %cmp.not45, label %if.end21.critedge, label %if.end.peel

if.end.peel:                                      ; preds = %entry
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.116) #12
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.123) #12
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.124) #12
  %cs.peel = getelementptr i8, ptr %.pn44, i32 -64
  %5 = ptrtoint ptr %cs.peel to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cs.peel, align 4
  %tobool4.not.peel = icmp eq ptr %6, null
  %id8.peel = getelementptr i8, ptr %.pn44, i32 16
  %7 = ptrtoint ptr %id8.peel to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id8.peel, align 4
  br i1 %tobool4.not.peel, label %if.else.peel, label %if.then5.peel

if.then5.peel:                                    ; preds = %if.end.peel
  call void @__sanitizer_cov_trace_pc() #14
  %sequence.peel = getelementptr inbounds %struct.hl_cs, ptr %6, i32 0, i32 13
  %9 = ptrtoint ptr %sequence.peel to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %sequence.peel, align 8
  %ctx.peel = getelementptr inbounds %struct.hl_cs, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %ctx.peel to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ctx.peel, align 4
  %asid.peel = getelementptr inbounds %struct.hl_ctx, ptr %12, i32 0, i32 21
  %13 = ptrtoint ptr %asid.peel to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %asid.peel, align 8
  %refcount.peel = getelementptr i8, ptr %.pn44, i32 8
  %call.i.i.i.i.peel = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount.peel, i32 noundef 4) #12
  %15 = ptrtoint ptr %refcount.peel to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %refcount.peel, align 4
  %hw_queue_id.peel = getelementptr i8, ptr %.pn44, i32 20
  %17 = ptrtoint ptr %hw_queue_id.peel to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %hw_queue_id.peel, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.125, i32 noundef %8, i64 noundef %10, i32 noundef %14, i32 noundef %16, i32 noundef %18) #12
  br label %for.inc.peel

if.else.peel:                                     ; preds = %if.end.peel
  call void @__sanitizer_cov_trace_pc() #14
  %refcount9.peel = getelementptr i8, ptr %.pn44, i32 8
  %call.i.i.i.i43.peel = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount9.peel, i32 noundef 4) #12
  %19 = ptrtoint ptr %refcount9.peel to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %refcount9.peel, align 4
  %hw_queue_id11.peel = getelementptr i8, ptr %.pn44, i32 20
  %21 = ptrtoint ptr %hw_queue_id11.peel to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %hw_queue_id11.peel, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.126, i32 noundef %8, i32 noundef 0, i32 noundef %20, i32 noundef %22) #12
  br label %for.inc.peel

for.inc.peel:                                     ; preds = %if.else.peel, %if.then5.peel
  %23 = ptrtoint ptr %.pn44 to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pn.peel = load ptr, ptr %.pn44, align 4
  %cmp.not.peel = icmp eq ptr %.pn.peel, %cs_job_list
  br i1 %cmp.not.peel, label %for.inc.peel.for.end_crit_edge, label %for.inc.peel.if.end_crit_edge

for.inc.peel.if.end_crit_edge:                    ; preds = %for.inc.peel
  br label %if.end

for.inc.peel.for.end_crit_edge:                   ; preds = %for.inc.peel
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end:                                           ; preds = %for.inc.if.end_crit_edge, %for.inc.peel.if.end_crit_edge
  %.pn47 = phi ptr [ %.pn, %for.inc.if.end_crit_edge ], [ %.pn.peel, %for.inc.peel.if.end_crit_edge ]
  %cs = getelementptr i8, ptr %.pn47, i32 -64
  %24 = ptrtoint ptr %cs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cs, align 4
  %tobool4.not = icmp eq ptr %25, null
  %id8 = getelementptr i8, ptr %.pn47, i32 16
  %26 = ptrtoint ptr %id8 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %id8, align 4
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %sequence = getelementptr inbounds %struct.hl_cs, ptr %25, i32 0, i32 13
  %28 = ptrtoint ptr %sequence to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %sequence, align 8
  %ctx = getelementptr inbounds %struct.hl_cs, ptr %25, i32 0, i32 1
  %30 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ctx, align 4
  %asid = getelementptr inbounds %struct.hl_ctx, ptr %31, i32 0, i32 21
  %32 = ptrtoint ptr %asid to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %asid, align 8
  %refcount = getelementptr i8, ptr %.pn47, i32 8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount, i32 noundef 4) #12
  %34 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %refcount, align 4
  %hw_queue_id = getelementptr i8, ptr %.pn47, i32 20
  %36 = ptrtoint ptr %hw_queue_id to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %hw_queue_id, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.125, i32 noundef %27, i64 noundef %29, i32 noundef %33, i32 noundef %35, i32 noundef %37) #12
  br label %for.inc

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %refcount9 = getelementptr i8, ptr %.pn47, i32 8
  %call.i.i.i.i43 = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount9, i32 noundef 4) #12
  %38 = ptrtoint ptr %refcount9 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %refcount9, align 4
  %hw_queue_id11 = getelementptr i8, ptr %.pn47, i32 20
  %40 = ptrtoint ptr %hw_queue_id11 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %hw_queue_id11, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.126, i32 noundef %27, i32 noundef 0, i32 noundef %39, i32 noundef %41) #12
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then5
  %42 = ptrtoint ptr %.pn47 to i32
  call void @__asan_load4_noabort(i32 %42)
  %.pn = load ptr, ptr %.pn47, align 4
  %cmp.not = icmp eq ptr %.pn, %cs_job_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.if.end_crit_edge, !llvm.loop !401

for.inc.if.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.inc.peel.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %cs_job_spinlock) #12
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.116) #12
  br label %if.end21

if.end21.critedge:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock(ptr noundef %cs_job_spinlock) #12
  br label %if.end21

if.end21:                                         ; preds = %if.end21.critedge, %for.end
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @userptr_show(ptr noundef %s, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  %dma_dir = alloca [4 x [30 x i8]], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %dev_entry2 = getelementptr inbounds %struct.hl_debugfs_entry, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev_entry2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_entry2, align 4
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %dma_dir) #12
  %4 = call ptr @memcpy(ptr %dma_dir, ptr @__const.userptr_show.dma_dir, i32 120)
  %userptr_spinlock = getelementptr inbounds %struct.hl_dbg_device_entry, ptr %3, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %userptr_spinlock) #12
  %userptr_list = getelementptr inbounds %struct.hl_dbg_device_entry, ptr %3, i32 0, i32 11
  %5 = ptrtoint ptr %userptr_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn28 = load ptr, ptr %userptr_list, align 4
  %cmp.not29 = icmp eq ptr %.pn28, %userptr_list
  br i1 %cmp.not29, label %if.end12.critedge, label %if.end.peel

if.end.peel:                                      ; preds = %entry
  call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.116) #12
  call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.127) #12
  call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.128) #12
  %pid.peel = getelementptr i8, ptr %.pn28, i32 8
  %6 = ptrtoint ptr %pid.peel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pid.peel, align 4
  %addr.peel = getelementptr i8, ptr %.pn28, i32 12
  %8 = ptrtoint ptr %addr.peel to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %addr.peel, align 8
  %size.peel = getelementptr i8, ptr %.pn28, i32 20
  %10 = ptrtoint ptr %size.peel to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %size.peel, align 8
  %dir.peel = getelementptr i8, ptr %.pn28, i32 -4
  %12 = ptrtoint ptr %dir.peel to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dir.peel, align 8
  %arrayidx.peel = getelementptr [4 x [30 x i8]], ptr %dma_dir, i32 0, i32 %13
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.129, i32 noundef %7, i64 noundef %9, i64 noundef %11, ptr noundef %arrayidx.peel) #12
  %14 = ptrtoint ptr %.pn28 to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn.peel = load ptr, ptr %.pn28, align 4
  %cmp.not.peel = icmp eq ptr %.pn.peel, %userptr_list
  br i1 %cmp.not.peel, label %if.end.peel.for.end_crit_edge, label %if.end.peel.if.end_crit_edge

if.end.peel.if.end_crit_edge:                     ; preds = %if.end.peel
  br label %if.end

if.end.peel.for.end_crit_edge:                    ; preds = %if.end.peel
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end:                                           ; preds = %if.end.if.end_crit_edge, %if.end.peel.if.end_crit_edge
  %.pn31 = phi ptr [ %.pn, %if.end.if.end_crit_edge ], [ %.pn.peel, %if.end.peel.if.end_crit_edge ]
  %pid = getelementptr i8, ptr %.pn31, i32 8
  %15 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pid, align 4
  %addr = getelementptr i8, ptr %.pn31, i32 12
  %17 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %addr, align 8
  %size = getelementptr i8, ptr %.pn31, i32 20
  %19 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %size, align 8
  %dir = getelementptr i8, ptr %.pn31, i32 -4
  %21 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dir, align 8
  %arrayidx = getelementptr [4 x [30 x i8]], ptr %dma_dir, i32 0, i32 %22
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.129, i32 noundef %16, i64 noundef %18, i64 noundef %20, ptr noundef %arrayidx) #12
  %23 = ptrtoint ptr %.pn31 to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pn = load ptr, ptr %.pn31, align 4
  %cmp.not = icmp eq ptr %.pn, %userptr_list
  br i1 %cmp.not, label %if.end.for.end_crit_edge, label %if.end.if.end_crit_edge, !llvm.loop !402

if.end.if.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %if.end.peel.for.end_crit_edge
  call void @_raw_spin_unlock(ptr noundef %userptr_spinlock) #12
  call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.116) #12
  br label %if.end12

if.end12.critedge:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @_raw_spin_unlock(ptr noundef %userptr_spinlock) #12
  br label %if.end12

if.end12:                                         ; preds = %if.end12.critedge, %for.end
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %dma_dir) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vm_show(ptr noundef %s, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  %i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %dev_entry2 = getelementptr inbounds %struct.hl_debugfs_entry, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev_entry2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_entry2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i) #12
  %4 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %i, align 4, !annotation !396
  %hdev = getelementptr inbounds %struct.hl_dbg_device_entry, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hdev, align 4
  %mmu_enable = getelementptr inbounds %struct.hl_device, ptr %6, i32 0, i32 107
  %7 = ptrtoint ptr %mmu_enable to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %mmu_enable, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %ctx_mem_hash_spinlock = getelementptr inbounds %struct.hl_dbg_device_entry, ptr %3, i32 0, i32 14
  tail call void @_raw_spin_lock(ptr noundef %ctx_mem_hash_spinlock) #12
  %ctx_mem_hash_list = getelementptr inbounds %struct.hl_dbg_device_entry, ptr %3, i32 0, i32 13
  %9 = ptrtoint ptr %ctx_mem_hash_list to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn239 = load ptr, ptr %ctx_mem_hash_list, align 8
  %cmp.not241 = icmp eq ptr %.pn239, %ctx_mem_hash_list
  br i1 %cmp.not241, label %if.end.for.end94_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end94_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end94

for.body:                                         ; preds = %for.end86.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn242 = phi ptr [ %.pn, %for.end86.for.body_crit_edge ], [ %.pn239, %if.end.for.body_crit_edge ]
  %ctx.0243 = getelementptr i8, ptr %.pn242, i32 -1328
  call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.130) #12
  call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.131) #12
  %asid = getelementptr i8, ptr %.pn242, i32 248
  %10 = ptrtoint ptr %asid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %asid, align 8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.132, i32 noundef %11) #12
  call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.133) #12
  call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.134) #12
  call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.124) #12
  %mem_hash_lock = getelementptr i8, ptr %.pn242, i32 -276
  call void @mutex_lock_nested(ptr noundef %mem_hash_lock, i32 noundef 0) #12
  %12 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %i, align 4
  br label %for.body7

for.body7:                                        ; preds = %for.inc33.for.body7_crit_edge, %for.body
  %storemerge224230 = phi i32 [ 0, %for.body ], [ %inc, %for.inc33.for.body7_crit_edge ]
  %arrayidx = getelementptr [128 x %struct.hlist_head], ptr %ctx.0243, i32 0, i32 %storemerge224230
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %hnode.1227 = load ptr, ptr %arrayidx, align 4
  %tobool14.not228 = icmp eq ptr %hnode.1227, null
  br i1 %tobool14.not228, label %for.body7.for.inc33_crit_edge, label %for.body7.for.body15_crit_edge

for.body7.for.body15_crit_edge:                   ; preds = %for.body7
  br label %for.body15

for.body7.for.inc33_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc33

for.body15:                                       ; preds = %for.inc.for.body15_crit_edge, %for.body7.for.body15_crit_edge
  %hnode.1229 = phi ptr [ %hnode.1, %for.inc.for.body15_crit_edge ], [ %hnode.1227, %for.body7.for.body15_crit_edge ]
  %ptr = getelementptr inbounds %struct.hl_vm_hash_node, ptr %hnode.1229, i32 0, i32 2
  %14 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ptr, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp16 = icmp eq i32 %17, 1
  %vaddr = getelementptr inbounds %struct.hl_vm_hash_node, ptr %hnode.1229, i32 0, i32 1
  %18 = ptrtoint ptr %vaddr to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %vaddr, align 8
  br i1 %cmp16, label %if.then17, label %if.else

if.then17:                                        ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #14
  %size = getelementptr inbounds %struct.hl_userptr, ptr %15, i32 0, i32 9
  %20 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %size, align 8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.135, i64 noundef %19, i64 noundef %21) #12
  br label %for.inc

if.else:                                          ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #14
  %total_size = getelementptr inbounds %struct.hl_vm_phys_pg_pack, ptr %15, i32 0, i32 3
  %22 = ptrtoint ptr %total_size to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %total_size, align 8
  %handle = getelementptr inbounds %struct.hl_vm_phys_pg_pack, ptr %15, i32 0, i32 9
  %24 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %handle, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.136, i64 noundef %19, i64 noundef %23, i32 noundef %25) #12
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then17
  %26 = ptrtoint ptr %hnode.1229 to i32
  call void @__asan_load4_noabort(i32 %26)
  %hnode.1 = load ptr, ptr %hnode.1229, align 4
  %tobool14.not = icmp eq ptr %hnode.1, null
  br i1 %tobool14.not, label %for.inc.for.inc33_crit_edge, label %for.inc.for.body15_crit_edge

for.inc.for.body15_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body15

for.inc.for.inc33_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc33

for.inc33:                                        ; preds = %for.inc.for.inc33_crit_edge, %for.body7.for.inc33_crit_edge
  %27 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %i, align 4
  %inc = add i32 %28, 1
  store i32 %inc, ptr %i, align 4
  %cmp6 = icmp ult i32 %inc, 128
  br i1 %cmp6, label %for.inc33.for.body7_crit_edge, label %for.end34

for.inc33.for.body7_crit_edge:                    ; preds = %for.inc33
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body7

for.end34:                                        ; preds = %for.inc33
  call void @mutex_unlock(ptr noundef %mem_hash_lock) #12
  %29 = ptrtoint ptr %asid to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %asid, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp37.not = icmp eq i32 %30, 0
  br i1 %cmp37.not, label %for.end34.if.end61_crit_edge, label %land.lhs.true

for.end34.if.end61_crit_edge:                     ; preds = %for.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end61

land.lhs.true:                                    ; preds = %for.end34
  %hw_block_mem_list = getelementptr i8, ptr %.pn242, i32 8
  %31 = ptrtoint ptr %hw_block_mem_list to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %hw_block_mem_list, align 4
  %cmp.i.not = icmp eq ptr %32, %hw_block_mem_list
  br i1 %cmp.i.not, label %land.lhs.true.if.end61_crit_edge, label %if.then39

land.lhs.true.if.end61_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end61

if.then39:                                        ; preds = %land.lhs.true
  call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.137) #12
  call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.138) #12
  call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.139) #12
  %hw_block_list_lock = getelementptr i8, ptr %.pn242, i32 -92
  call void @mutex_lock_nested(ptr noundef %hw_block_list_lock, i32 noundef 0) #12
  %33 = ptrtoint ptr %hw_block_mem_list to i32
  call void @__asan_load4_noabort(i32 %33)
  %lnode.0231 = load ptr, ptr %hw_block_mem_list, align 4
  %cmp48.not232 = icmp eq ptr %lnode.0231, %hw_block_mem_list
  br i1 %cmp48.not232, label %if.then39.for.end59_crit_edge, label %if.then39.for.body50_crit_edge

if.then39.for.body50_crit_edge:                   ; preds = %if.then39
  br label %for.body50

if.then39.for.end59_crit_edge:                    ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end59

for.body50:                                       ; preds = %for.body50.for.body50_crit_edge, %if.then39.for.body50_crit_edge
  %lnode.0233 = phi ptr [ %lnode.0, %for.body50.for.body50_crit_edge ], [ %lnode.0231, %if.then39.for.body50_crit_edge ]
  %vaddr51 = getelementptr inbounds %struct.hl_vm_hw_block_list_node, ptr %lnode.0233, i32 0, i32 2
  %34 = ptrtoint ptr %vaddr51 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %vaddr51, align 4
  %size52 = getelementptr inbounds %struct.hl_vm_hw_block_list_node, ptr %lnode.0233, i32 0, i32 3
  %36 = ptrtoint ptr %size52 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %size52, align 4
  %id = getelementptr inbounds %struct.hl_vm_hw_block_list_node, ptr %lnode.0233, i32 0, i32 4
  %38 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %id, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.140, i32 noundef %35, i32 noundef %37, i32 noundef %39) #12
  %40 = ptrtoint ptr %lnode.0233 to i32
  call void @__asan_load4_noabort(i32 %40)
  %lnode.0 = load ptr, ptr %lnode.0233, align 4
  %cmp48.not = icmp eq ptr %lnode.0, %hw_block_mem_list
  br i1 %cmp48.not, label %for.body50.for.end59_crit_edge, label %for.body50.for.body50_crit_edge

for.body50.for.body50_crit_edge:                  ; preds = %for.body50
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body50

for.body50.for.end59_crit_edge:                   ; preds = %for.body50
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end59

for.end59:                                        ; preds = %for.body50.for.end59_crit_edge, %if.then39.for.end59_crit_edge
  call void @mutex_unlock(ptr noundef %hw_block_list_lock) #12
  br label %if.end61

if.end61:                                         ; preds = %for.end59, %land.lhs.true.if.end61_crit_edge, %for.end34.if.end61_crit_edge
  %hdev62 = getelementptr i8, ptr %.pn242, i32 -300
  %41 = ptrtoint ptr %hdev62 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hdev62, align 4
  %idr_lock = getelementptr inbounds %struct.hl_device, ptr %42, i32 0, i32 36, i32 2
  call void @_raw_spin_lock(ptr noundef %idr_lock) #12
  %phys_pg_pack_handles = getelementptr inbounds %struct.hl_device, ptr %42, i32 0, i32 36, i32 3
  %xa_head.i.i = getelementptr inbounds %struct.hl_device, ptr %42, i32 0, i32 36, i32 3, i32 0, i32 2
  %43 = ptrtoint ptr %xa_head.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %xa_head.i.i, align 4
  %cmp.i.i = icmp eq ptr %44, null
  br i1 %cmp.i.i, label %idr_is_empty.exit, label %if.end61.if.then65_crit_edge

if.end61.if.then65_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then65

idr_is_empty.exit:                                ; preds = %if.end61
  %call2.i = call i32 @radix_tree_tagged(ptr noundef %phys_pg_pack_handles, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.i.not = icmp eq i32 %call2.i, 0
  br i1 %tobool.i.not, label %idr_is_empty.exit.if.then65_crit_edge, label %idr_is_empty.exit.if.end66_crit_edge

idr_is_empty.exit.if.end66_crit_edge:             ; preds = %idr_is_empty.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end66

idr_is_empty.exit.if.then65_crit_edge:            ; preds = %idr_is_empty.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then65

if.then65:                                        ; preds = %idr_is_empty.exit.if.then65_crit_edge, %if.end61.if.then65_crit_edge
  call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.141) #12
  br label %if.end66

if.end66:                                         ; preds = %if.then65, %idr_is_empty.exit.if.end66_crit_edge
  %45 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %i, align 4
  %call69236 = call ptr @idr_get_next(ptr noundef %phys_pg_pack_handles, ptr noundef nonnull %i) #12
  %cmp70.not237 = icmp eq ptr %call69236, null
  br i1 %cmp70.not237, label %if.end66.for.end86_crit_edge, label %if.end66.for.body71_crit_edge

if.end66.for.body71_crit_edge:                    ; preds = %if.end66
  br label %for.body71

if.end66.for.end86_crit_edge:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end86

for.body71:                                       ; preds = %for.inc85.for.body71_crit_edge, %if.end66.for.body71_crit_edge
  %call69238 = phi ptr [ %call69, %for.inc85.for.body71_crit_edge ], [ %call69236, %if.end66.for.body71_crit_edge ]
  %asid72 = getelementptr inbounds %struct.hl_vm_phys_pg_pack, ptr %call69238, i32 0, i32 6
  %46 = ptrtoint ptr %asid72 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %asid72, align 8
  %48 = ptrtoint ptr %asid to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %asid, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %49)
  %cmp74.not = icmp eq i32 %47, %49
  br i1 %cmp74.not, label %if.end76, label %for.body71.for.inc85_crit_edge

for.body71.for.inc85_crit_edge:                   ; preds = %for.body71
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc85

if.end76:                                         ; preds = %for.body71
  %handle77 = getelementptr inbounds %struct.hl_vm_phys_pg_pack, ptr %call69238, i32 0, i32 9
  %50 = ptrtoint ptr %handle77 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %handle77, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.142, i32 noundef %51) #12
  %page_size = getelementptr inbounds %struct.hl_vm_phys_pg_pack, ptr %call69238, i32 0, i32 7
  %52 = ptrtoint ptr %page_size to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %page_size, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.143, i32 noundef %53) #12
  call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.144) #12
  call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.145) #12
  %npages = getelementptr inbounds %struct.hl_vm_phys_pg_pack, ptr %call69238, i32 0, i32 2
  %54 = ptrtoint ptr %npages to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %npages, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %55)
  %cmp79234.not = icmp eq i64 %55, 0
  br i1 %cmp79234.not, label %if.end76.for.inc85_crit_edge, label %for.body80.lr.ph

if.end76.for.inc85_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc85

for.body80.lr.ph:                                 ; preds = %if.end76
  %pages = getelementptr inbounds %struct.hl_vm_phys_pg_pack, ptr %call69238, i32 0, i32 1
  br label %for.body80

for.body80:                                       ; preds = %for.body80.for.body80_crit_edge, %for.body80.lr.ph
  %j.0235 = phi i64 [ 0, %for.body80.lr.ph ], [ %inc83, %for.body80.for.body80_crit_edge ]
  %56 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pages, align 4
  %idxprom = trunc i64 %j.0235 to i32
  %arrayidx81 = getelementptr i64, ptr %57, i32 %idxprom
  %58 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %arrayidx81, align 8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.146, i64 noundef %59) #12
  %inc83 = add nuw i64 %j.0235, 1
  %60 = ptrtoint ptr %npages to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %npages, align 8
  %cmp79 = icmp ult i64 %inc83, %61
  br i1 %cmp79, label %for.body80.for.body80_crit_edge, label %for.body80.for.inc85_crit_edge

for.body80.for.inc85_crit_edge:                   ; preds = %for.body80
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc85

for.body80.for.body80_crit_edge:                  ; preds = %for.body80
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body80

for.inc85:                                        ; preds = %for.body80.for.inc85_crit_edge, %if.end76.for.inc85_crit_edge, %for.body71.for.inc85_crit_edge
  %62 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %i, align 4
  %add = add i32 %63, 1
  store i32 %add, ptr %i, align 4
  %call69 = call ptr @idr_get_next(ptr noundef %phys_pg_pack_handles, ptr noundef nonnull %i) #12
  %cmp70.not = icmp eq ptr %call69, null
  br i1 %cmp70.not, label %for.inc85.for.end86_crit_edge, label %for.inc85.for.body71_crit_edge

for.inc85.for.body71_crit_edge:                   ; preds = %for.inc85
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body71

for.inc85.for.end86_crit_edge:                    ; preds = %for.inc85
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end86

for.end86:                                        ; preds = %for.inc85.for.end86_crit_edge, %if.end66.for.end86_crit_edge
  call void @_raw_spin_unlock(ptr noundef %idr_lock) #12
  %64 = ptrtoint ptr %.pn242 to i32
  call void @__asan_load4_noabort(i32 %64)
  %.pn = load ptr, ptr %.pn242, align 8
  %cmp.not = icmp eq ptr %.pn, %ctx_mem_hash_list
  br i1 %cmp.not, label %for.end86.for.end94_crit_edge, label %for.end86.for.body_crit_edge

for.end86.for.body_crit_edge:                     ; preds = %for.end86
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end86.for.end94_crit_edge:                    ; preds = %for.end86
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end94

for.end94:                                        ; preds = %for.end86.for.end94_crit_edge, %if.end.for.end94_crit_edge
  call void @_raw_spin_unlock(ptr noundef %ctx_mem_hash_spinlock) #12
  %65 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %hdev, align 4
  %call97 = call ptr @hl_get_compute_ctx(ptr noundef %66) #12
  %tobool98.not = icmp eq ptr %call97, null
  br i1 %tobool98.not, label %for.end94.if.end128_crit_edge, label %if.then99

for.end94.if.end128_crit_edge:                    ; preds = %for.end94
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end128

if.then99:                                        ; preds = %for.end94
  call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.147) #12
  %67 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %i, align 4
  br label %for.body102

for.body102:                                      ; preds = %for.end122.for.body102_crit_edge, %if.then99
  %storemerge247 = phi i32 [ 0, %if.then99 ], [ %inc125, %for.end122.for.body102_crit_edge ]
  %arrayidx104 = getelementptr %struct.hl_ctx, ptr %call97, i32 0, i32 6, i32 %storemerge247
  %68 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx104, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.148, i32 noundef %storemerge247) #12
  call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.145) #12
  call void @mutex_lock_nested(ptr noundef %69, i32 noundef 0) #12
  %list = getelementptr inbounds %struct.hl_va_range, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %70)
  %va_block.0244 = load ptr, ptr %list, align 4
  %cmp112.not245 = icmp eq ptr %va_block.0244, %list
  br i1 %cmp112.not245, label %for.body102.for.end122_crit_edge, label %for.body102.for.body114_crit_edge

for.body102.for.body114_crit_edge:                ; preds = %for.body102
  br label %for.body114

for.body102.for.end122_crit_edge:                 ; preds = %for.body102
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end122

for.body114:                                      ; preds = %for.body114.for.body114_crit_edge, %for.body102.for.body114_crit_edge
  %va_block.0246 = phi ptr [ %va_block.0, %for.body114.for.body114_crit_edge ], [ %va_block.0244, %for.body102.for.body114_crit_edge ]
  %start = getelementptr inbounds %struct.hl_vm_va_block, ptr %va_block.0246, i32 0, i32 1
  %71 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %start, align 8
  %end = getelementptr inbounds %struct.hl_vm_va_block, ptr %va_block.0246, i32 0, i32 2
  %73 = ptrtoint ptr %end to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %end, align 8
  %size115 = getelementptr inbounds %struct.hl_vm_va_block, ptr %va_block.0246, i32 0, i32 3
  %75 = ptrtoint ptr %size115 to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %size115, align 8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.149, i64 noundef %72, i64 noundef %74, i64 noundef %76) #12
  %77 = ptrtoint ptr %va_block.0246 to i32
  call void @__asan_load4_noabort(i32 %77)
  %va_block.0 = load ptr, ptr %va_block.0246, align 4
  %cmp112.not = icmp eq ptr %va_block.0, %list
  br i1 %cmp112.not, label %for.body114.for.end122_crit_edge, label %for.body114.for.body114_crit_edge

for.body114.for.body114_crit_edge:                ; preds = %for.body114
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body114

for.body114.for.end122_crit_edge:                 ; preds = %for.body114
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end122

for.end122:                                       ; preds = %for.body114.for.end122_crit_edge, %for.body102.for.end122_crit_edge
  call void @mutex_unlock(ptr noundef %69) #12
  call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.116) #12
  %78 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %i, align 4
  %inc125 = add i32 %79, 1
  store i32 %inc125, ptr %i, align 4
  %cmp101 = icmp slt i32 %inc125, 3
  br i1 %cmp101, label %for.end122.for.body102_crit_edge, label %for.end126

for.end122.for.body102_crit_edge:                 ; preds = %for.end122
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body102

for.end126:                                       ; preds = %for.end122
  call void @__sanitizer_cov_trace_pc() #14
  %call127 = call i32 @hl_ctx_put(ptr noundef nonnull %call97) #12
  br label %if.end128

if.end128:                                        ; preds = %for.end126, %for.end94.if.end128_crit_edge
  br i1 %cmp.not241, label %if.end128.cleanup_crit_edge, label %if.then130

if.end128.cleanup_crit_edge:                      ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then130:                                       ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #14
  call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.116) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then130, %if.end128.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @userptr_lookup_show(ptr noundef %s, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %dev_entry2 = getelementptr inbounds %struct.hl_debugfs_entry, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev_entry2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_entry2, align 4
  %userptr_spinlock = getelementptr inbounds %struct.hl_dbg_device_entry, ptr %3, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %userptr_spinlock) #12
  %userptr_list = getelementptr inbounds %struct.hl_dbg_device_entry, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %userptr_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn100 = load ptr, ptr %userptr_list, align 4
  %cmp.not101 = icmp eq ptr %.pn100, %userptr_list
  br i1 %cmp.not101, label %if.end49.critedge, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %userptr_lookup = getelementptr inbounds %struct.hl_dbg_device_entry, ptr %3, i32 0, i32 20
  br label %for.body

for.body:                                         ; preds = %for.inc39.for.body_crit_edge, %for.body.lr.ph
  %.pn103 = phi ptr [ %.pn100, %for.body.lr.ph ], [ %.pn, %for.inc39.for.body_crit_edge ]
  %first.0.off0102 = phi i1 [ true, %for.body.lr.ph ], [ %first.4.off0, %for.inc39.for.body_crit_edge ]
  %5 = ptrtoint ptr %userptr_lookup to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %userptr_lookup, align 8
  %addr = getelementptr i8, ptr %.pn103, i32 12
  %7 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %addr, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %6, i64 %8)
  %cmp4.not = icmp ult i64 %6, %8
  br i1 %cmp4.not, label %for.body.for.inc39_crit_edge, label %land.lhs.true

for.body.for.inc39_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc39

land.lhs.true:                                    ; preds = %for.body
  %size = getelementptr i8, ptr %.pn103, i32 20
  %9 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %size, align 8
  %add = add i64 %10, %8
  call void @__sanitizer_cov_trace_cmp8(i64 %6, i64 %add)
  %cmp7 = icmp ult i64 %6, %add
  br i1 %cmp7, label %if.then, label %land.lhs.true.for.inc39_crit_edge

land.lhs.true.for.inc39_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc39

if.then:                                          ; preds = %land.lhs.true
  %sgt = getelementptr i8, ptr %.pn103, i32 -8
  %11 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sgt, align 4
  %nents94 = getelementptr inbounds %struct.sg_table, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %nents94 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nents94, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp1095.not = icmp eq i32 %14, 0
  br i1 %cmp1095.not, label %if.then.for.inc39_crit_edge, label %for.body11.lr.ph

if.then.for.inc39_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc39

for.body11.lr.ph:                                 ; preds = %if.then
  %15 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sgt, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %pid = getelementptr i8, ptr %.pn103, i32 8
  br label %for.body11

for.body11:                                       ; preds = %if.end35.for.body11_crit_edge, %for.body11.lr.ph
  %sg.099 = phi ptr [ %18, %for.body11.lr.ph ], [ %call37, %if.end35.for.body11_crit_edge ]
  %first.1.off098 = phi i1 [ %first.0.off0102, %for.body11.lr.ph ], [ %first.3.off0, %if.end35.for.body11_crit_edge ]
  %i.097 = phi i32 [ 0, %for.body11.lr.ph ], [ %inc, %if.end35.for.body11_crit_edge ]
  %total_npages.096 = phi i64 [ 0, %for.body11.lr.ph ], [ %add15, %if.end35.for.body11_crit_edge ]
  %dma_address.i = getelementptr inbounds %struct.scatterlist, ptr %sg.099, i32 0, i32 3
  %19 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dma_address.i, align 4
  %and.i = and i32 %20, 4095
  %dma_length.i = getelementptr inbounds %struct.scatterlist, ptr %sg.099, i32 0, i32 4
  %21 = ptrtoint ptr %dma_length.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dma_length.i, align 4
  %add.i = add nuw nsw i32 %and.i, 4095
  %add1.i = add i32 %add.i, %22
  %shr.i = lshr i32 %add1.i, 12
  %conv = zext i32 %shr.i to i64
  %23 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %addr, align 8
  %mul = shl i64 %total_npages.096, 12
  %add13 = add i64 %24, %mul
  %add15 = add i64 %total_npages.096, %conv
  %25 = ptrtoint ptr %userptr_lookup to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %userptr_lookup, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %26, i64 %add13)
  %cmp19.not = icmp uge i64 %26, %add13
  %mul16 = shl i64 %add15, 12
  %add17 = add i64 %mul16, %24
  call void @__sanitizer_cov_trace_cmp8(i64 %26, i64 %add17)
  %cmp23 = icmp ult i64 %26, %add17
  %or.cond = select i1 %cmp19.not, i1 %cmp23, i1 false
  br i1 %or.cond, label %if.then25, label %for.body11.if.end35_crit_edge

for.body11.if.end35_crit_edge:                    ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

if.then25:                                        ; preds = %for.body11
  %sub = sub i64 %26, %add13
  %27 = trunc i64 %sub to i32
  %conv29 = add i32 %20, %27
  br i1 %first.1.off098, label %if.then30, label %if.then25.if.end_crit_edge

if.then25.if.end_crit_edge:                       ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then30:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.116) #12
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.150) #12
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.151) #12
  br label %if.end

if.end:                                           ; preds = %if.then30, %if.then25.if.end_crit_edge
  %28 = ptrtoint ptr %userptr_lookup to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %userptr_lookup, align 8
  %conv32 = zext i32 %conv29 to i64
  %30 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pid, align 4
  %32 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %addr, align 8
  %34 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %size, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.152, i64 noundef %29, i64 noundef %conv32, i32 noundef %31, i64 noundef %33, i64 noundef %35) #12
  br label %if.end35

if.end35:                                         ; preds = %if.end, %for.body11.if.end35_crit_edge
  %first.3.off0 = phi i1 [ false, %if.end ], [ %first.1.off098, %for.body11.if.end35_crit_edge ]
  %inc = add nuw i32 %i.097, 1
  %call37 = tail call ptr @sg_next(ptr noundef %sg.099) #12
  %36 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sgt, align 4
  %nents = getelementptr inbounds %struct.sg_table, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %nents, align 4
  %cmp10 = icmp ult i32 %inc, %39
  br i1 %cmp10, label %if.end35.for.body11_crit_edge, label %if.end35.for.inc39_crit_edge

if.end35.for.inc39_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc39

if.end35.for.body11_crit_edge:                    ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body11

for.inc39:                                        ; preds = %if.end35.for.inc39_crit_edge, %if.then.for.inc39_crit_edge, %land.lhs.true.for.inc39_crit_edge, %for.body.for.inc39_crit_edge
  %first.4.off0 = phi i1 [ %first.0.off0102, %land.lhs.true.for.inc39_crit_edge ], [ %first.0.off0102, %for.body.for.inc39_crit_edge ], [ %first.0.off0102, %if.then.for.inc39_crit_edge ], [ %first.3.off0, %if.end35.for.inc39_crit_edge ]
  %40 = ptrtoint ptr %.pn103 to i32
  call void @__asan_load4_noabort(i32 %40)
  %.pn = load ptr, ptr %.pn103, align 4
  %cmp.not = icmp eq ptr %.pn, %userptr_list
  br i1 %cmp.not, label %for.end45, label %for.inc39.for.body_crit_edge

for.inc39.for.body_crit_edge:                     ; preds = %for.inc39
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end45:                                        ; preds = %for.inc39
  tail call void @_raw_spin_unlock(ptr noundef %userptr_spinlock) #12
  br i1 %first.4.off0, label %for.end45.if.end49_crit_edge, label %if.then48

for.end45.if.end49_crit_edge:                     ; preds = %for.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49

if.then48:                                        ; preds = %for.end45
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.116) #12
  br label %if.end49

if.end49.critedge:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock(ptr noundef %userptr_spinlock) #12
  br label %if.end49

if.end49:                                         ; preds = %if.end49.critedge, %if.then48, %for.end45.if.end49_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @userptr_lookup_write(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %f_pos) #0 align 64 {
entry:
  %value = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  %dev_entry2 = getelementptr inbounds %struct.hl_debugfs_entry, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dev_entry2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_entry2, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %value) #12
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 -1, ptr %value, align 8, !annotation !396
  %call = call i32 @kstrtoull_from_user(ptr noundef %buf, i32 noundef %count, i32 noundef 16, ptr noundef nonnull %value) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %value to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %value, align 8
  %userptr_lookup = getelementptr inbounds %struct.hl_dbg_device_entry, ptr %5, i32 0, i32 20
  %9 = ptrtoint ptr %userptr_lookup to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %userptr_lookup, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %value) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmu_show(ptr noundef %s, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  %hops_info = alloca %struct.hl_mmu_hop_info, align 8
  %phys_addr = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %dev_entry2 = getelementptr inbounds %struct.hl_debugfs_entry, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev_entry2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_entry2, align 4
  %hdev3 = getelementptr inbounds %struct.hl_dbg_device_entry, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %hdev3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hdev3, align 4
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %hops_info) #12
  %6 = call ptr @memset(ptr %hops_info, i32 0, i32 144)
  %mmu_addr = getelementptr inbounds %struct.hl_dbg_device_entry, ptr %3, i32 0, i32 19
  %7 = ptrtoint ptr %mmu_addr to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %mmu_addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %phys_addr) #12
  %9 = ptrtoint ptr %phys_addr to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 -1, ptr %phys_addr, align 8, !annotation !396
  %mmu_enable = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 107
  %10 = ptrtoint ptr %mmu_enable to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %mmu_enable, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %mmu_asid = getelementptr inbounds %struct.hl_dbg_device_entry, ptr %3, i32 0, i32 21
  %12 = ptrtoint ptr %mmu_asid to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mmu_asid, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp = icmp eq i32 %13, 0
  br i1 %cmp, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %kernel_ctx = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 19
  %14 = ptrtoint ptr %kernel_ctx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %kernel_ctx, align 4
  br label %if.end5

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call ptr @hl_get_compute_ctx(ptr noundef %5) #12
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then4
  %ctx.0 = phi ptr [ %15, %if.then4 ], [ %call, %if.else ]
  %tobool6.not = icmp eq ptr %ctx.0, null
  br i1 %tobool6.not, label %do.end, label %if.end8

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 6
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.45) #16
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %call9 = call i32 @hl_mmu_get_tlb_info(ptr noundef nonnull %ctx.0, i64 noundef %8, ptr noundef nonnull %hops_info) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end16, label %do.end14

do.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %dev15 = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 6
  %18 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev15, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.51, i64 noundef %8) #16
  br label %cleanup

if.end16:                                         ; preds = %if.end8
  %call17 = call i32 @hl_mmu_va_to_pa(ptr noundef nonnull %ctx.0, i64 noundef %8, ptr noundef nonnull %phys_addr) #12
  %20 = ptrtoint ptr %hops_info to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %hops_info, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %21)
  %tobool18.not = icmp eq i64 %21, 0
  br i1 %tobool18.not, label %if.end16.if.else26_crit_edge, label %land.lhs.true

if.end16.if.else26_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else26

land.lhs.true:                                    ; preds = %if.end16
  %22 = ptrtoint ptr %mmu_addr to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %mmu_addr, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %23, i64 %21)
  %cmp21.not = icmp eq i64 %23, %21
  br i1 %cmp21.not, label %land.lhs.true.if.else26_crit_edge, label %if.then22

land.lhs.true.if.else26_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else26

if.then22:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %mmu_asid to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mmu_asid, align 8
  %unscrambled_paddr = getelementptr inbounds %struct.hl_mmu_hop_info, ptr %hops_info, i32 0, i32 1
  %26 = ptrtoint ptr %unscrambled_paddr to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %unscrambled_paddr, align 8
  %28 = ptrtoint ptr %phys_addr to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %phys_addr, align 8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.156, i32 noundef %25, i64 noundef %23, i64 noundef %21, i64 noundef %27, i64 noundef %29) #12
  br label %if.end29

if.else26:                                        ; preds = %land.lhs.true.if.else26_crit_edge, %if.end16.if.else26_crit_edge
  %30 = ptrtoint ptr %mmu_asid to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mmu_asid, align 8
  %32 = ptrtoint ptr %mmu_addr to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %mmu_addr, align 8
  %34 = ptrtoint ptr %phys_addr to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %phys_addr, align 8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.157, i32 noundef %31, i64 noundef %33, i64 noundef %35) #12
  br label %if.end29

if.end29:                                         ; preds = %if.else26, %if.then22
  %used_hops = getelementptr inbounds %struct.hl_mmu_hop_info, ptr %hops_info, i32 0, i32 3
  %36 = ptrtoint ptr %used_hops to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %used_hops, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp3070.not = icmp eq i32 %37, 0
  br i1 %cmp3070.not, label %if.end29.cleanup_crit_edge, label %if.end29.for.body_crit_edge

if.end29.for.body_crit_edge:                      ; preds = %if.end29
  br label %for.body

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end29.for.body_crit_edge
  %i.071 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end29.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.hl_mmu_hop_info, ptr %hops_info, i32 0, i32 2, i32 %i.071
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %arrayidx, align 8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.158, i32 noundef %i.071, i64 noundef %39) #12
  %hop_pte_addr = getelementptr %struct.hl_mmu_hop_info, ptr %hops_info, i32 0, i32 2, i32 %i.071, i32 1
  %40 = ptrtoint ptr %hop_pte_addr to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %hop_pte_addr, align 8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.159, i32 noundef %i.071, i64 noundef %41) #12
  %hop_pte_val = getelementptr %struct.hl_mmu_hop_info, ptr %hops_info, i32 0, i32 2, i32 %i.071, i32 2
  %42 = ptrtoint ptr %hop_pte_val to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %hop_pte_val, align 8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.160, i32 noundef %i.071, i64 noundef %43) #12
  %inc = add nuw i32 %i.071, 1
  %44 = ptrtoint ptr %used_hops to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %used_hops, align 8
  %cmp30 = icmp ult i32 %inc, %45
  br i1 %cmp30, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %do.end14, %do.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %phys_addr) #12
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %hops_info) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmu_asid_va_write(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %f_pos) #0 align 64 {
entry:
  %kbuf = alloca [50 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  %dev_entry2 = getelementptr inbounds %struct.hl_debugfs_entry, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dev_entry2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_entry2, align 4
  %hdev3 = getelementptr inbounds %struct.hl_dbg_device_entry, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %hdev3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hdev3, align 4
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %kbuf) #12
  %8 = call ptr @memset(ptr %kbuf, i32 255, i32 50)
  %mmu_enable = getelementptr inbounds %struct.hl_device, ptr %7, i32 0, i32 107
  %9 = ptrtoint ptr %mmu_enable to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %mmu_enable, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 49, i32 %count)
  %cmp = icmp ugt i32 %count, 49
  br i1 %cmp, label %if.end.do.end_crit_edge, label %if.then.i.i.i

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then.i.i.i:                                    ; preds = %if.end
  call void @__check_object_size(ptr noundef nonnull %kbuf, i32 noundef %count, i1 noundef zeroext false) #12
  call void @__might_fault(ptr noundef nonnull @.str.166, i32 noundef 156) #12
  %call.i.i = call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %11 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %count, i32 -1226833920) #19, !srcloc !403
  %asmresult.i.i = extractvalue { i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !404

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %kbuf, i32 noundef %count) #12
  %12 = call i32 @llvm.read_register.i32(metadata !386) #12
  %and.i.i.i.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 4
  %14 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #10, !srcloc !405
  %and.i.i.i.i = and i32 %14, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #12, !srcloc !406
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !407
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %kbuf, ptr noundef %buf, i32 noundef %count) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #12, !srcloc !406
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !407
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %count, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %count, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end8, label %if.then11.i.i, !prof !404

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = sub i32 %count, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %kbuf, i32 %sub.i.i
  %15 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %do.end

if.end8:                                          ; preds = %if.end.i.i
  %arrayidx = getelementptr [50 x i8], ptr %kbuf, i32 0, i32 %count
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %arrayidx, align 1
  %call10 = call ptr @strchr(ptr noundef nonnull %kbuf, i32 noundef 32)
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.end8.do.end_crit_edge, label %if.end13

if.end8.do.end_crit_edge:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.end13:                                         ; preds = %if.end8
  %17 = ptrtoint ptr %call10 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %call10, align 1
  %mmu_asid = getelementptr inbounds %struct.hl_dbg_device_entry, ptr %5, i32 0, i32 21
  %call15 = call i32 @kstrtouint(ptr noundef nonnull %kbuf, i32 noundef 10, ptr noundef %mmu_asid) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end13.do.end_crit_edge

if.end13.do.end_crit_edge:                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.end18:                                         ; preds = %if.end13
  %add.ptr = getelementptr i8, ptr %call10, i32 1
  %call19 = call i32 @strncmp(ptr noundef %add.ptr, ptr noundef nonnull dereferenceable(3) @.str.161, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end18.do.end_crit_edge

if.end18.do.end_crit_edge:                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.end22:                                         ; preds = %if.end18
  %add.ptr23 = getelementptr i8, ptr %call10, i32 3
  %mmu_addr = getelementptr inbounds %struct.hl_dbg_device_entry, ptr %5, i32 0, i32 19
  %call24 = call i32 @kstrtoull(ptr noundef %add.ptr23, i32 noundef 16, ptr noundef %mmu_addr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end22.cleanup_crit_edge, label %if.end22.do.end_crit_edge

if.end22.do.end_crit_edge:                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %if.end22.do.end_crit_edge, %if.end18.do.end_crit_edge, %if.end13.do.end_crit_edge, %if.end8.do.end_crit_edge, %if.then11.i.i, %if.end.do.end_crit_edge
  %dev = getelementptr inbounds %struct.hl_device, ptr %7, i32 0, i32 6
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.162) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end22.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %count, %entry.cleanup_crit_edge ], [ %count, %if.end22.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %kbuf) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @engines_show(ptr noundef %s, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %dev_entry2 = getelementptr inbounds %struct.hl_debugfs_entry, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev_entry2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_entry2, align 4
  %hdev3 = getelementptr inbounds %struct.hl_dbg_device_entry, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %hdev3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hdev3, align 4
  %in_reset = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 59, i32 4
  %6 = ptrtoint ptr %in_reset to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %in_reset, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end9, label %do.body

do.body:                                          ; preds = %entry
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @engines_show._rs, ptr noundef nonnull @__func__.engines_show) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 6
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.167) #16
  br label %cleanup

if.end9:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %asic_funcs = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 34
  %10 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %asic_funcs, align 8
  %is_device_idle = getelementptr inbounds %struct.hl_asic_funcs, ptr %11, i32 0, i32 48
  %12 = ptrtoint ptr %is_device_idle to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %is_device_idle, align 4
  %call10 = tail call zeroext i1 %13(ptr noundef %5, ptr noundef null, i8 noundef zeroext 0, ptr noundef %s) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %do.end, %do.body.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_get_next(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hl_ctx_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radix_tree_tagged(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hl_mmu_get_tlb_info(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoull(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hl_debugfs_write(ptr noundef %file, ptr noundef %buf, i32 noundef %count, ptr noundef %f_pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %write = getelementptr inbounds %struct.hl_info_list, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 %7(ptr noundef %file, ptr noundef %buf, i32 noundef %count, ptr noundef %f_pos) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hl_debugfs_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %show = getelementptr inbounds %struct.hl_info_list, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %show to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %show, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef %5, ptr noundef %1) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 197)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 197)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind readonly }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { cold nounwind }
attributes #17 = { nobuiltin }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !12, !14, !15, !17, !18, !20, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !72, !73, !74, !75, !76, !77, !78, !79, !81, !82, !83, !84, !86, !88, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !103, !104, !105, !107, !108, !109, !111, !113, !114, !115, !116, !118, !119, !121, !123, !124, !125, !126, !128, !129, !130, !132, !134, !136, !137, !138, !140, !142, !143, !144, !145, !147, !149, !150, !151, !152, !154, !155, !156, !158, !159, !160, !161, !163, !164, !165, !167, !168, !169, !171, !173, !174, !175, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !199, !200, !202, !204, !206, !207, !208, !209, !210, !212, !214, !216, !217, !218, !219, !220, !222, !224, !226, !227, !228, !229, !230, !232, !233, !234, !236, !237, !238, !240, !241, !242, !244, !245, !246, !248, !250, !251, !252, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !341, !343, !345, !347, !349, !350, !351, !353, !354, !356, !358, !360, !362, !364, !366, !368, !369, !370, !371, !373, !374, !376, !378, !380, !381, !382, !383, !384}
!llvm.named.register.sp = !{!386}
!llvm.module.flags = !{!387, !388, !389, !390, !391, !392, !393, !394}
!llvm.ident = !{!395}

!0 = !{ptr @hl_debugfs_add_device.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 1384, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @hl_debugfs_add_device.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 1385, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @hl_debugfs_add_device.__key.3, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 1386, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @hl_debugfs_add_device.__key.5, !10, !"__key", i1 false, i1 false}
!10 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 1387, i32 2}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @hl_debugfs_add_device.__key.7, !13, !"__key", i1 false, i1 false}
!13 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 1388, i32 2}
!14 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @hl_debugfs_add_device.__key.9, !16, !"__key", i1 false, i1 false}
!16 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 1389, i32 2}
!17 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @hl_debugfs_add_device.__key.11, !19, !"__key", i1 false, i1 false}
!19 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 1390, i32 2}
!20 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 1395, i32 21}
!23 = !{ptr @.str.14, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 1400, i32 22}
!25 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 1406, i32 22}
!27 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 1412, i32 22}
!29 = !{ptr @.str.17, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 1418, i32 20}
!31 = !{ptr @.str.18, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 1423, i32 20}
!33 = !{ptr @.str.19, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 1428, i32 20}
!35 = !{ptr @.str.20, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 1433, i32 20}
!37 = !{ptr @.str.21, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 1438, i32 22}
!39 = !{ptr @.str.22, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 1444, i32 22}
!41 = !{ptr @.str.23, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 1450, i32 22}
!43 = !{ptr @.str.24, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 1456, i32 22}
!45 = !{ptr @.str.25, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 1462, i32 22}
!47 = !{ptr @.str.26, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 1468, i32 22}
!49 = !{ptr @.str.27, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 1474, i32 22}
!51 = !{ptr @.str.28, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 1480, i32 22}
!53 = !{ptr @.str.29, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 1486, i32 22}
!55 = !{ptr @.str.30, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 1492, i32 22}
!57 = !{ptr @.str.31, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 1497, i32 20}
!59 = !{ptr @.str.32, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 1502, i32 22}
!61 = !{ptr @.str.33, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 1508, i32 22}
!63 = !{ptr @.str.34, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 1675, i32 37}
!65 = !{ptr @hl_debug_root, !66, !"hl_debug_root", i1 false, i1 false}
!66 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 20, i32 23}
!67 = !{ptr @hl_data32b_fops, !68, !"hl_data32b_fops", i1 false, i1 false}
!68 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 1243, i32 37}
!69 = !{ptr @.str.35, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 662, i32 3}
!71 = !{ptr @hl_data_read32._rs, !70, !"_rs", i1 false, i1 false}
!72 = !{ptr @__func__.hl_data_read32, !70, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.36, !70, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.37, !70, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.38, !70, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.39, !70, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @hl_data_read32._entry, !70, !"_entry", i1 false, i1 false}
!78 = !{ptr @hl_data_read32._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.41, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 678, i32 3}
!81 = !{ptr @.str.42, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @hl_data_read32._entry.40, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @hl_data_read32._entry_ptr.43, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.44, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 682, i32 19}
!86 = !{ptr @.str.45, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 606, i32 3}
!88 = !{ptr @.str.46, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @device_va_to_pa._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @device_va_to_pa._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.48, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 633, i32 3}
!93 = !{ptr @device_va_to_pa._entry.47, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @device_va_to_pa._entry_ptr.49, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.51, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 641, i32 3}
!97 = !{ptr @device_va_to_pa._entry.50, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @device_va_to_pa._entry_ptr.52, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @hl_data_write32._rs, !100, !"_rs", i1 false, i1 false}
!100 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 698, i32 3}
!101 = !{ptr @__func__.hl_data_write32, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.53, !100, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @hl_data_write32._entry, !100, !"_entry", i1 false, i1 false}
!104 = !{ptr @hl_data_write32._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.55, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 715, i32 3}
!107 = !{ptr @hl_data_write32._entry.54, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @hl_data_write32._entry_ptr.56, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @hl_data64b_fops, !110, !"hl_data64b_fops", i1 false, i1 false}
!110 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 1249, i32 37}
!111 = !{ptr @hl_data_read64._rs, !112, !"_rs", i1 false, i1 false}
!112 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 735, i32 3}
!113 = !{ptr @__func__.hl_data_read64, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @hl_data_read64._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @hl_data_read64._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @hl_data_read64._entry.57, !117, !"_entry", i1 false, i1 false}
!117 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 751, i32 3}
!118 = !{ptr @hl_data_read64._entry_ptr.58, !117, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.59, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 755, i32 19}
!121 = !{ptr @hl_data_write64._rs, !122, !"_rs", i1 false, i1 false}
!122 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 771, i32 3}
!123 = !{ptr @__func__.hl_data_write64, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @hl_data_write64._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @hl_data_write64._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.61, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 788, i32 3}
!128 = !{ptr @hl_data_write64._entry.60, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @hl_data_write64._entry_ptr.62, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @hl_power_fops, !131, !"hl_power_fops", i1 false, i1 false}
!131 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 1266, i32 37}
!132 = !{ptr @.str.63, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 872, i32 3}
!134 = !{ptr @.str.64, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 898, i32 3}
!136 = !{ptr @.str.65, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @hl_set_power_state.__UNIQUE_ID_ddebug299, !135, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!138 = !{ptr @hl_i2c_data_fops, !139, !"hl_i2c_data_fops", i1 false, i1 false}
!139 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 1260, i32 37}
!140 = !{ptr @.str.66, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 920, i32 3}
!142 = !{ptr @.str.67, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @hl_i2c_data_read._entry, !141, !"_entry", i1 false, i1 false}
!144 = !{ptr @hl_i2c_data_read._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.68, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 926, i32 19}
!147 = !{ptr @.str.69, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 32, i32 3}
!149 = !{ptr @.str.70, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @hl_debugfs_i2c_read._entry, !148, !"_entry", i1 false, i1 false}
!151 = !{ptr @hl_debugfs_i2c_read._entry_ptr, !148, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.72, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 49, i32 3}
!154 = !{ptr @hl_debugfs_i2c_read._entry.71, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @hl_debugfs_i2c_read._entry_ptr.73, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.74, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 948, i32 3}
!158 = !{ptr @.str.75, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @hl_i2c_data_write._entry, !157, !"_entry", i1 false, i1 false}
!160 = !{ptr @hl_i2c_data_write._entry_ptr, !157, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.76, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 64, i32 3}
!163 = !{ptr @hl_debugfs_i2c_write._entry, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @hl_debugfs_i2c_write._entry_ptr, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.78, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 83, i32 3}
!167 = !{ptr @hl_debugfs_i2c_write._entry.77, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @hl_debugfs_i2c_write._entry_ptr.79, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @hl_led0_fops, !170, !"hl_led0_fops", i1 false, i1 false}
!170 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 1272, i32 37}
!171 = !{ptr @.str.80, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 107, i32 3}
!173 = !{ptr @.str.81, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @hl_debugfs_led_set._entry, !172, !"_entry", i1 false, i1 false}
!175 = !{ptr @hl_debugfs_led_set._entry_ptr, !172, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @hl_led1_fops, !177, !"hl_led1_fops", i1 false, i1 false}
!177 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 1277, i32 37}
!178 = !{ptr @hl_led2_fops, !179, !"hl_led2_fops", i1 false, i1 false}
!179 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 1282, i32 37}
!180 = !{ptr @hl_device_fops, !181, !"hl_device_fops", i1 false, i1 false}
!181 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 1287, i32 37}
!182 = !{ptr @.str.82, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 1018, i32 3}
!184 = distinct !{null, !185, !"help", i1 false, i1 false}
!185 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 1017, i32 21}
!186 = !{ptr @.str.83, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 1035, i32 14}
!188 = !{ptr @.str.84, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 1037, i32 21}
!190 = !{ptr @.str.85, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 1039, i32 21}
!192 = !{ptr @.str.86, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 1041, i32 21}
!194 = !{ptr @.str.87, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 1043, i32 21}
!196 = !{ptr @.str.88, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 1046, i32 3}
!198 = !{ptr @hl_device_write._entry, !197, !"_entry", i1 false, i1 false}
!199 = !{ptr @hl_device_write._entry_ptr, !197, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @hl_clk_gate_fops, !201, !"hl_clk_gate_fops", i1 false, i1 false}
!201 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 1293, i32 37}
!202 = !{ptr @.str.89, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 1065, i32 19}
!204 = !{ptr @hl_clk_gate_write._rs, !205, !"_rs", i1 false, i1 false}
!205 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 1081, i32 3}
!206 = !{ptr @__func__.hl_clk_gate_write, !205, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @.str.90, !205, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @hl_clk_gate_write._entry, !205, !"_entry", i1 false, i1 false}
!209 = !{ptr @hl_clk_gate_write._entry_ptr, !205, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @hl_stop_on_err_fops, !211, !"hl_stop_on_err_fops", i1 false, i1 false}
!211 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 1299, i32 37}
!212 = !{ptr @.str.91, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 1107, i32 19}
!214 = !{ptr @hl_stop_on_err_write._rs, !215, !"_rs", i1 false, i1 false}
!215 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 1123, i32 3}
!216 = !{ptr @__func__.hl_stop_on_err_write, !215, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @.str.92, !215, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @hl_stop_on_err_write._entry, !215, !"_entry", i1 false, i1 false}
!219 = !{ptr @hl_stop_on_err_write._entry_ptr, !215, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @hl_security_violations_fops, !221, !"hl_security_violations_fops", i1 false, i1 false}
!221 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 1305, i32 37}
!222 = !{ptr @hl_dma_size_fops, !223, !"hl_dma_size_fops", i1 false, i1 false}
!223 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 1255, i32 37}
!224 = !{ptr @hl_dma_size_write._rs, !225, !"_rs", i1 false, i1 false}
!225 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 806, i32 3}
!226 = !{ptr @__func__.hl_dma_size_write, !225, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @.str.93, !225, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @hl_dma_size_write._entry, !225, !"_entry", i1 false, i1 false}
!229 = !{ptr @hl_dma_size_write._entry_ptr, !225, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @.str.95, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 814, i32 3}
!232 = !{ptr @hl_dma_size_write._entry.94, !231, !"_entry", i1 false, i1 false}
!233 = !{ptr @hl_dma_size_write._entry_ptr.96, !231, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @.str.98, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 819, i32 3}
!236 = !{ptr @hl_dma_size_write._entry.97, !235, !"_entry", i1 false, i1 false}
!237 = !{ptr @hl_dma_size_write._entry_ptr.99, !235, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @.str.101, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 825, i32 3}
!240 = !{ptr @hl_dma_size_write._entry.100, !239, !"_entry", i1 false, i1 false}
!241 = !{ptr @hl_dma_size_write._entry_ptr.102, !239, !"_entry_ptr", i1 false, i1 false}
!242 = !{ptr @.str.104, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 842, i32 3}
!244 = !{ptr @hl_dma_size_write._entry.103, !243, !"_entry", i1 false, i1 false}
!245 = !{ptr @hl_dma_size_write._entry_ptr.105, !243, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @hl_state_dump_fops, !247, !"hl_state_dump_fops", i1 false, i1 false}
!247 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 1310, i32 37}
!248 = !{ptr @.str.106, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 1183, i32 3}
!250 = !{ptr @.str.107, !249, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @hl_state_dump_write._entry, !249, !"_entry", i1 false, i1 false}
!252 = !{ptr @hl_state_dump_write._entry_ptr, !249, !"_entry_ptr", i1 false, i1 false}
!253 = !{ptr @hl_timeout_locked_fops, !254, !"hl_timeout_locked_fops", i1 false, i1 false}
!254 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 1316, i32 37}
!255 = !{ptr @.str.108, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 1323, i32 3}
!257 = !{ptr @.str.109, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 1324, i32 3}
!259 = !{ptr @.str.110, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 1325, i32 3}
!261 = !{ptr @.str.111, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 1326, i32 3}
!263 = !{ptr @.str.112, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 1327, i32 3}
!265 = !{ptr @.str.113, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 1328, i32 3}
!267 = !{ptr @.str.114, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 1329, i32 3}
!269 = !{ptr @.str.115, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 1330, i32 3}
!271 = !{ptr @hl_debugfs_list, !272, !"hl_debugfs_list", i1 false, i1 false}
!272 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 1322, i32 34}
!273 = !{ptr @.str.116, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 122, i32 16}
!275 = !{ptr @.str.117, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 123, i32 16}
!277 = !{ptr @.str.118, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 124, i32 16}
!279 = !{ptr @.str.119, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 127, i32 4}
!281 = !{ptr @.str.120, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 154, i32 16}
!283 = !{ptr @.str.121, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 155, i32 16}
!285 = !{ptr @.str.122, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 158, i32 4}
!287 = !{ptr @.str.123, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 185, i32 16}
!289 = !{ptr @.str.124, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 186, i32 16}
!291 = !{ptr @.str.125, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 190, i32 5}
!293 = !{ptr @.str.126, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 195, i32 5}
!295 = !{ptr @.str.127, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 223, i32 16}
!297 = !{ptr @.str.128, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 224, i32 16}
!299 = !{ptr @.str.129, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 226, i32 17}
!301 = !{ptr @.str.130, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 263, i32 15}
!303 = !{ptr @.str.131, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 264, i32 15}
!305 = !{ptr @.str.132, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 265, i32 17}
!307 = !{ptr @.str.133, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 267, i32 15}
!309 = !{ptr @.str.134, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 268, i32 15}
!311 = !{ptr @.str.135, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 277, i32 6}
!313 = !{ptr @.str.136, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 282, i32 6}
!315 = !{ptr @.str.137, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 291, i32 16}
!317 = !{ptr @.str.138, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 292, i32 16}
!319 = !{ptr @.str.139, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 293, i32 16}
!321 = !{ptr @.str.140, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 298, i32 6}
!323 = !{ptr @.str.141, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 308, i32 16}
!325 = !{ptr @.str.142, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 314, i32 18}
!327 = !{ptr @.str.143, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 315, i32 18}
!329 = !{ptr @.str.144, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 317, i32 16}
!331 = !{ptr @.str.145, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 318, i32 16}
!333 = !{ptr @.str.146, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 320, i32 19}
!335 = !{ptr @.str.147, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 332, i32 15}
!337 = !{ptr @.str.148, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 335, i32 18}
!339 = !{ptr @.str.149, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 339, i32 19}
!341 = !{ptr @.str.150, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 387, i32 19}
!343 = !{ptr @.str.151, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 388, i32 19}
!345 = !{ptr @.str.152, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 390, i32 20}
!347 = !{ptr @.str.153, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 445, i32 3}
!349 = !{ptr @mmu_show._entry, !348, !"_entry", i1 false, i1 false}
!350 = !{ptr @mmu_show._entry_ptr, !348, !"_entry_ptr", i1 false, i1 false}
!351 = !{ptr @mmu_show._entry.154, !352, !"_entry", i1 false, i1 false}
!352 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 450, i32 3}
!353 = !{ptr @mmu_show._entry_ptr.155, !352, !"_entry_ptr", i1 false, i1 false}
!354 = !{ptr @.str.156, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 460, i32 4}
!356 = !{ptr @.str.157, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 466, i32 4}
!358 = !{ptr @.str.158, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 470, i32 17}
!360 = !{ptr @.str.159, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 472, i32 17}
!362 = !{ptr @.str.160, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 474, i32 17}
!364 = !{ptr @.str.161, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 510, i32 19}
!366 = !{ptr @.str.162, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 519, i32 2}
!368 = !{ptr @.str.163, !367, !"<string literal>", i1 false, i1 false}
!369 = !{ptr @mmu_asid_va_write._entry, !367, !"_entry", i1 false, i1 false}
!370 = !{ptr @mmu_asid_va_write._entry_ptr, !367, !"_entry_ptr", i1 false, i1 false}
!371 = distinct !{null, !372, !"__already_done", i1 false, i1 false}
!372 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!373 = distinct !{null, !372, !"<string literal>", i1 false, i1 false}
!374 = distinct !{null, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!376 = !{ptr @.str.166, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!378 = !{ptr @engines_show._rs, !379, !"_rs", i1 false, i1 false}
!379 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 531, i32 3}
!380 = !{ptr @__func__.engines_show, !379, !"<string literal>", i1 false, i1 false}
!381 = !{ptr @.str.167, !379, !"<string literal>", i1 false, i1 false}
!382 = !{ptr @engines_show._entry, !379, !"_entry", i1 false, i1 false}
!383 = !{ptr @engines_show._entry_ptr, !379, !"_entry_ptr", i1 false, i1 false}
!384 = !{ptr @hl_debugfs_fops, !385, !"hl_debugfs_fops", i1 false, i1 false}
!385 = !{!"../drivers/misc/habanalabs/common/debugfs.c", i32 1352, i32 37}
!386 = !{!"sp"}
!387 = !{i32 1, !"wchar_size", i32 2}
!388 = !{i32 1, !"min_enum_size", i32 4}
!389 = !{i32 8, !"branch-target-enforcement", i32 0}
!390 = !{i32 8, !"sign-return-address", i32 0}
!391 = !{i32 8, !"sign-return-address-all", i32 0}
!392 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!393 = !{i32 7, !"uwtable", i32 1}
!394 = !{i32 7, !"frame-pointer", i32 2}
!395 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!396 = !{!"auto-init"}
!397 = !{i64 2149018292, i64 2149018297, i64 2149018310, i64 2149018354, i64 2149018388, i64 2149018409}
!398 = distinct !{!398, !399}
!399 = !{!"llvm.loop.peeled.count", i32 1}
!400 = distinct !{!400, !399}
!401 = distinct !{!401, !399}
!402 = distinct !{!402, !399}
!403 = !{i64 2152509496, i64 2152509521}
!404 = !{!"branch_weights", i32 2000, i32 1}
!405 = !{i64 5005051}
!406 = !{i64 5005248}
!407 = !{i64 2152490481}
