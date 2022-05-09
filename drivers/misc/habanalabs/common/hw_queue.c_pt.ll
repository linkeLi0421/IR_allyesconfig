; ModuleID = '/llk/IR_all_yes/drivers/misc/habanalabs/common/hw_queue.c_pt.bc'
source_filename = "../drivers/misc/habanalabs/common/hw_queue.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hl_cs = type { ptr, ptr, %struct.list_head, %struct.spinlock, %struct.kref, ptr, ptr, %struct.work_struct, %struct.delayed_work, %struct.list_head, %struct.list_head, %struct.list_head, ptr, i64, i64, i64, i64, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.hl_ctx = type { [128 x %struct.hlist_head], [128 x %struct.hlist_head], ptr, ptr, %struct.kref, ptr, [3 x ptr], %struct.mutex, %struct.mutex, %struct.mutex, %struct.list_head, %struct.list_head, %struct.hl_cs_counters_atomic, ptr, %struct.hl_encaps_signals_mgr, i64, ptr, %struct.spinlock, %struct.atomic64_t, %struct.atomic_t, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hl_cs_counters_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.hl_encaps_signals_mgr = type { %struct.spinlock, %struct.idr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.atomic64_t = type { i64 }
%struct.hl_device = type { ptr, [6 x i64], [6 x ptr], ptr, %struct.cdev, %struct.cdev, ptr, ptr, %struct.delayed_work, %struct.hl_device_reset_work, [32 x i8], [5 x [32 x i8]], i32, ptr, ptr, %struct.hl_user_interrupt, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.hl_cb_mgr, %struct.hl_eq, ptr, ptr, i32, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.asic_fixed_properties, ptr, ptr, %struct.hl_vm, ptr, ptr, %struct.hl_dbg_device_entry, %struct.list_head, %struct.spinlock, ptr, i32, ptr, i64, %struct.list_head, %struct.list_head, %struct.mutex, %struct.mutex, %struct.hl_cs_counters_atomic, %struct.hl_mmu_priv, [2 x %struct.hl_mmu_funcs], %struct.fw_load_mgr, [4 x %struct.pci_mem_region], %struct.hl_state_dump_specs, [2 x %struct.multi_cs_completion], %struct.hl_clk_throttle, %struct.last_error_session_info, %struct.hl_reset_info, ptr, %struct.atomic64_t, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.hl_device_reset_work = type { ptr, %struct.delayed_work, ptr, i32 }
%struct.hl_user_interrupt = type { ptr, %struct.list_head, %struct.spinlock, i32 }
%struct.hl_cb_mgr = type { %struct.spinlock, %struct.idr }
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
%struct.hl_state_dump_specs_funcs = type { ptr, ptr, ptr, ptr }
%struct.multi_cs_completion = type { %struct.completion, %struct.spinlock, i64, i32, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hl_clk_throttle = type { [2 x %struct.hl_clk_throttle_timestamp], %struct.mutex, i32, i32 }
%struct.hl_clk_throttle_timestamp = type { i64, i64 }
%struct.last_error_session_info = type { i64, i64, i64, %struct.atomic_t, %struct.atomic_t, i64, i64, i16, i16, i8, i8 }
%struct.hl_reset_info = type { %struct.spinlock, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.hl_hw_queue = type { ptr, %struct.hl_sync_stream_properties, i32, i32, ptr, i32, i32, %struct.atomic_t, i32, i32, i32, i16, i8, i8 }
%struct.hl_sync_stream_properties = type { [2 x %struct.hl_hw_sob], i16, i16, i16, [2 x i16], i16, i16, i8 }
%struct.hl_hw_sob = type { ptr, %struct.kref, i32, i32, i32, i8 }
%struct.hl_bd = type { i64, i32, i32 }
%struct.hl_asic_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hl_cq = type { ptr, ptr, i32, i32, i32, i32, i32, %struct.atomic_t }
%struct.hl_cs_encaps_sig_handle = type { %struct.kref, ptr, ptr, ptr, i64, i32, i32, i32, i32 }
%struct.hl_cs_compl = type { %struct.hl_fence, %struct.spinlock, ptr, ptr, ptr, i64, i32, i16, i16, i8 }
%struct.hl_fence = type { %struct.completion, %struct.kref, i64, i32, i32, i64, i8 }
%struct.hl_cs_job = type { %struct.list_head, ptr, ptr, ptr, %struct.work_struct, %struct.list_head, %struct.list_head, %struct.kref, i32, i32, i32, i32, i32, i32, i8, i8 }
%struct.hl_cb = type { %struct.kref, ptr, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, i64, ptr, i32, i32, i32, %struct.atomic_t, i8, i8, i8, i8 }
%struct.hw_queue_properties = type { i32, i32, i32, i8, i8 }
%struct.hl_gen_wait_properties = type { ptr, i32, i32, i16, i16, i16, i8 }

@hl_hw_queue_schedule_cs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 644, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"device is %s, CS rejected!\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"hl_hw_queue_schedule_cs\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/misc/habanalabs/common/hw_queue.c\00", [54 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hl_hw_queue_schedule_cs._entry_ptr = internal global ptr @hl_hw_queue_schedule_cs._entry, section ".printk_index", align 4
@hl_hw_queue_schedule_cs._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 671, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Queue type %d is invalid\0A\00", [38 x i8] zeroinitializer }, align 32
@hl_hw_queue_schedule_cs._entry_ptr.7 = internal global ptr @hl_hw_queue_schedule_cs._entry.5, section ".printk_index", align 4
@hl_hw_queue_schedule_cs._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 715, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Cannot find staged submission sequence %llu\00", [52 x i8] zeroinitializer }, align 32
@hl_hw_queue_schedule_cs._entry_ptr.10 = internal global ptr @hl_hw_queue_schedule_cs._entry.8, section ".printk_index", align 4
@hl_hw_queue_schedule_cs._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 723, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Staged submission sequence %llu already submitted\00", [46 x i8] zeroinitializer }, align 32
@hl_hw_queue_schedule_cs._entry_ptr.13 = internal global ptr @hl_hw_queue_schedule_cs._entry.11, section ".printk_index", align 4
@hl_hw_queues_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 1083, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Not enough memory for H/W queues\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hl_hw_queues_create\00", [44 x i8] zeroinitializer }, align 32
@hl_hw_queues_create._entry_ptr = internal global ptr @hl_hw_queues_create._entry, section ".printk_index", align 4
@hl_hw_queues_create._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.2, i32 1098, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to initialize queue %d\0A\00", [33 x i8] zeroinitializer }, align 32
@hl_hw_queues_create._entry_ptr.18 = internal global ptr @hl_hw_queues_create._entry.16, section ".printk_index", align 4
@ext_queue_sanity_checks.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.20, ptr @.str.2, ptr @.str.21, i8 0, i8 32, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"habanalabs\00", [21 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ext_queue_sanity_checks\00", [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Queue %d doesn't have room for %d CBs\0A\00", [57 x i8] zeroinitializer }, align 32
@ext_queue_sanity_checks.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.20, ptr @.str.2, ptr @.str.22, i8 0, i8 35, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"No space for %d on CQ %d\0A\00", [38 x i8] zeroinitializer }, align 32
@int_queue_sanity_checks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 174, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Cannot populate queue %u with %u jobs\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"int_queue_sanity_checks\00", [40 x i8] zeroinitializer }, align 32
@int_queue_sanity_checks._entry_ptr = internal global ptr @int_queue_sanity_checks._entry, section ".printk_index", align 4
@int_queue_sanity_checks.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.24, ptr @.str.2, ptr @.str.21, i8 0, i8 45, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@hw_queue_sanity_checks.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.25, ptr @.str.2, ptr @.str.21, i8 0, i8 52, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hw_queue_sanity_checks\00", [41 x i8] zeroinitializer }, align 32
@init_signal_cs.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.26, ptr @.str.2, ptr @.str.27, i8 0, i8 105, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"init_signal_cs\00", [17 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"generate signal CB, sob_id: %d, sob val: %u, q_idx: %d, seq: %llu\0A\00", [61 x i8] zeroinitializer }, align 32
@init_wait_cs.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.28, ptr @.str.2, ptr @.str.29, i8 0, i8 122, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"init_wait_cs\00", [19 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"Wait for encaps signals handle, qidx(%u), CS sequence(%llu), sob val: 0x%x, offset: %u\0A\00", [40 x i8] zeroinitializer }, align 32
@init_wait_cs.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.28, ptr @.str.2, ptr @.str.30, i8 0, i8 -126, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"generate wait CB, sob_id: %d, sob_val: 0x%x, mon_id: %d, q_idx: %d, seq: %llu\0A\00", [49 x i8] zeroinitializer }, align 32
@encaps_sig_first_staged_cs_handler.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.31, ptr @.str.2, ptr @.str.32, i8 0, i8 -105, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"encaps_sig_first_staged_cs_handler\00", [61 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [93 x i8], [35 x i8] } { [93 x i8] c"CS seq (%llu) added to encaps signal handler id (%u), count(%u), qidx(%u), sob(%u), val(%u)\0A\00", [35 x i8] zeroinitializer }, align 32
@encaps_sig_first_staged_cs_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.2, i32 611, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"encaps handle id(%u) wasn't found!\0A\00", [60 x i8] zeroinitializer }, align 32
@encaps_sig_first_staged_cs_handler._entry_ptr = internal global ptr @encaps_sig_first_staged_cs_handler._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@queue_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.2, i32 1011, ptr @.str.36, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"wrong queue type %d during init\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"queue_init\00", [21 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\012\00", [29 x i8] zeroinitializer }, align 32
@queue_init._entry_ptr = internal global ptr @queue_init._entry, section ".printk_index", align 4
@ext_and_cpu_queue_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 828, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Failed to allocate shadow queue for H/W queue %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ext_and_cpu_queue_init\00", [41 x i8] zeroinitializer }, align 32
@ext_and_cpu_queue_init._entry_ptr = internal global ptr @ext_and_cpu_queue_init._entry, section ".printk_index", align 4
@int_queue_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.2, i32 862, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Failed to get base address for internal queue %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"int_queue_init\00", [17 x i8] zeroinitializer }, align 32
@int_queue_init._entry_ptr = internal global ptr @int_queue_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.41 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.42 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.43 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 643, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 670, i32 5 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 713, i32 4 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 721, i32 4 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1083, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1097, i32 4 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 128, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 142, i32 4 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 172, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 209, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 418, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 484, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 518, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 602, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 610, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1010, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 826, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.174 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.175 = private constant [45 x i8] c"../drivers/misc/habanalabs/common/hw_queue.c\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 860, i32 3 }
@llvm.compiler.used = appending global [55 x ptr] [ptr @encaps_sig_first_staged_cs_handler._entry, ptr @encaps_sig_first_staged_cs_handler._entry_ptr, ptr @ext_and_cpu_queue_init._entry, ptr @ext_and_cpu_queue_init._entry_ptr, ptr @hl_hw_queue_schedule_cs._entry, ptr @hl_hw_queue_schedule_cs._entry.11, ptr @hl_hw_queue_schedule_cs._entry.5, ptr @hl_hw_queue_schedule_cs._entry.8, ptr @hl_hw_queue_schedule_cs._entry_ptr, ptr @hl_hw_queue_schedule_cs._entry_ptr.10, ptr @hl_hw_queue_schedule_cs._entry_ptr.13, ptr @hl_hw_queue_schedule_cs._entry_ptr.7, ptr @hl_hw_queues_create._entry, ptr @hl_hw_queues_create._entry.16, ptr @hl_hw_queues_create._entry_ptr, ptr @hl_hw_queues_create._entry_ptr.18, ptr @int_queue_init._entry, ptr @int_queue_init._entry_ptr, ptr @int_queue_sanity_checks._entry, ptr @int_queue_sanity_checks._entry_ptr, ptr @queue_init._entry, ptr @queue_init._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_hw_queue_schedule_cs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_hw_queue_schedule_cs._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_hw_queue_schedule_cs._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_hw_queue_schedule_cs._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_hw_queues_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_hw_queues_create._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @int_queue_sanity_checks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @encaps_sig_first_staged_cs_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @queue_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext_and_cpu_queue_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @int_queue_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @hl_hw_queue_add_ptr(i32 noundef %ptr, i16 noundef zeroext %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i16 %val to i32
  %add = add i32 %conv, %ptr
  %and = and i32 %add, 8191
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hl_hw_queue_update_ci(ptr noundef %cs) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx = getelementptr inbounds %struct.hl_cs, ptr %cs, i32 0, i32 1
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %hdev1 = getelementptr inbounds %struct.hl_ctx, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdev1, align 4
  %disabled = getelementptr inbounds %struct.hl_device, ptr %3, i32 0, i32 78
  %4 = ptrtoint ptr %disabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %disabled, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %max_queues = getelementptr inbounds %struct.hl_device, ptr %3, i32 0, i32 33, i32 49
  %6 = ptrtoint ptr %max_queues to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not = icmp eq i32 %7, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %kernel_queues = getelementptr inbounds %struct.hl_device, ptr %3, i32 0, i32 20
  %8 = ptrtoint ptr %kernel_queues to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %kernel_queues, align 8
  %queue_type = getelementptr inbounds %struct.hl_hw_queue, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %queue_type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %queue_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %11)
  %cmp = icmp eq i32 %11, 4
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %for.cond.preheader

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %lor.lhs.false
  %12 = ptrtoint ptr %max_queues to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp726.not = icmp eq i32 %13, 0
  br i1 %cmp726.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.028 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %q.027 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %9, %for.cond.preheader.for.body_crit_edge ]
  %call = tail call zeroext i1 @cs_needs_completion(ptr noundef %cs) #9
  br i1 %call, label %lor.lhs.false8, label %for.body.if.then11_crit_edge

for.body.if.then11_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11

lor.lhs.false8:                                   ; preds = %for.body
  %queue_type9 = getelementptr inbounds %struct.hl_hw_queue, ptr %q.027, i32 0, i32 2
  %14 = ptrtoint ptr %queue_type9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %queue_type9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp10 = icmp eq i32 %15, 2
  br i1 %cmp10, label %lor.lhs.false8.if.then11_crit_edge, label %lor.lhs.false8.for.inc_crit_edge

lor.lhs.false8.for.inc_crit_edge:                 ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

lor.lhs.false8.if.then11_crit_edge:               ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11

if.then11:                                        ; preds = %lor.lhs.false8.if.then11_crit_edge, %for.body.if.then11_crit_edge
  %16 = ptrtoint ptr %cs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cs, align 8
  %arrayidx12 = getelementptr i16, ptr %17, i32 %i.028
  %18 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx12, align 2
  %conv = zext i16 %19 to i32
  %ci = getelementptr inbounds %struct.hl_hw_queue, ptr %q.027, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ci, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %ci, i32 1, i32 3, i32 1) #9
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ci, ptr %ci, i32 %conv, ptr elementtype(i32) %ci) #9, !srcloc !91
  br label %for.inc

for.inc:                                          ; preds = %if.then11, %lor.lhs.false8.for.inc_crit_edge
  %inc = add nuw i32 %i.028, 1
  %incdec.ptr = getelementptr %struct.hl_hw_queue, ptr %q.027, i32 1
  %21 = ptrtoint ptr %max_queues to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %max_queues, align 4
  %cmp7 = icmp ult i32 %inc, %22
  br i1 %cmp7, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cs_needs_completion(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hl_hw_queue_submit_bd(ptr noundef %hdev, ptr nocapture noundef %q, i32 noundef %ctl, i32 noundef %len, i64 noundef %ptr) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %kernel_address = getelementptr inbounds %struct.hl_hw_queue, ptr %q, i32 0, i32 4
  %0 = ptrtoint ptr %kernel_address to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %kernel_address, align 4
  %pi = getelementptr inbounds %struct.hl_hw_queue, ptr %q, i32 0, i32 6
  %2 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pi, align 4
  %and = and i32 %3, 4095
  %add.ptr = getelementptr %struct.hl_bd, ptr %1, i32 %and
  %4 = tail call i32 @llvm.bswap.i32(i32 %ctl)
  %ctl1 = getelementptr %struct.hl_bd, ptr %1, i32 %and, i32 2
  %5 = ptrtoint ptr %ctl1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %ctl1, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %len)
  %len2 = getelementptr %struct.hl_bd, ptr %1, i32 %and, i32 1
  %7 = ptrtoint ptr %len2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %len2, align 8
  %8 = tail call i64 @llvm.bswap.i64(i64 %ptr)
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %add.ptr, align 8
  %10 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pi, align 4
  %add.i = add i32 %11, 1
  %and.i = and i32 %add.i, 8191
  store i32 %and.i, ptr %pi, align 4
  %asic_funcs = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %12 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %asic_funcs, align 8
  %ring_doorbell = getelementptr inbounds %struct.hl_asic_funcs, ptr %13, i32 0, i32 12
  %14 = ptrtoint ptr %ring_doorbell to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ring_doorbell, align 4
  %hw_queue_id = getelementptr inbounds %struct.hl_hw_queue, ptr %q, i32 0, i32 8
  %16 = ptrtoint ptr %hw_queue_id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %hw_queue_id, align 4
  tail call void %15(ptr noundef %hdev, i32 noundef %17, i32 noundef %and.i) #9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hl_hw_queue_send_cb_no_cmpl(ptr noundef %hdev, i32 noundef %hw_queue_id, i32 noundef %cb_size, i64 noundef %cb_ptr) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %kernel_queues = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 20
  %0 = ptrtoint ptr %kernel_queues to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %kernel_queues, align 8
  %asic_funcs = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %2 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %asic_funcs, align 8
  %hw_queues_lock = getelementptr inbounds %struct.hl_asic_funcs, ptr %3, i32 0, i32 50
  %4 = ptrtoint ptr %hw_queues_lock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw_queues_lock, align 4
  tail call void %5(ptr noundef %hdev) #9
  %disabled = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 78
  %6 = ptrtoint ptr %disabled to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %disabled, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %entry
  %queue_type = getelementptr %struct.hl_hw_queue, ptr %1, i32 %hw_queue_id, i32 2
  %8 = ptrtoint ptr %queue_type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %queue_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %cmp.not = icmp eq i32 %9, 4
  br i1 %cmp.not, label %if.end.if.end5_crit_edge, label %if.then1

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then1:                                         ; preds = %if.end
  %pi.i.i = getelementptr %struct.hl_hw_queue, ptr %1, i32 %hw_queue_id, i32 6
  %10 = ptrtoint ptr %pi.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pi.i.i, align 4
  %ci.i.i = getelementptr %struct.hl_hw_queue, ptr %1, i32 %hw_queue_id, i32 7
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ci.i.i, i32 noundef 4) #9
  %12 = ptrtoint ptr %ci.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %ci.i.i, align 4
  %and.i.i.i = and i32 %13, 8191
  %sub.i.i = sub i32 %11, %and.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp12.i.i = icmp slt i32 %sub.i.i, 0
  %retval.0.i47.v.i = select i1 %cmp12.i.i, i32 -4096, i32 4096
  %retval.0.i47.i = sub i32 %retval.0.i47.v.i, %sub.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %retval.0.i47.i)
  %cmp.i = icmp slt i32 %retval.0.i47.i, 1
  br i1 %cmp.i, label %do.body.i, label %if.then1.if.end5_crit_edge

if.then1.if.end5_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

do.body.i:                                        ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ext_queue_sanity_checks.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hl_hw_queue_send_cb_no_cmpl, %if.then6.i)) #9
          to label %out [label %if.then6.i], !srcloc !92

if.then6.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  %hw_queue_id.i = getelementptr %struct.hl_hw_queue, ptr %1, i32 %hw_queue_id, i32 8
  %16 = ptrtoint ptr %hw_queue_id.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %hw_queue_id.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ext_queue_sanity_checks.__UNIQUE_ID_ddebug297, ptr noundef %15, ptr noundef nonnull @.str.21, i32 noundef %17, i32 noundef 1) #9
  br label %out

if.end5:                                          ; preds = %if.then1.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %kernel_address.i = getelementptr %struct.hl_hw_queue, ptr %1, i32 %hw_queue_id, i32 4
  %18 = ptrtoint ptr %kernel_address.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %kernel_address.i, align 4
  %pi.i = getelementptr %struct.hl_hw_queue, ptr %1, i32 %hw_queue_id, i32 6
  %20 = ptrtoint ptr %pi.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pi.i, align 4
  %and.i = and i32 %21, 4095
  %add.ptr.i = getelementptr %struct.hl_bd, ptr %19, i32 %and.i
  %ctl1.i = getelementptr %struct.hl_bd, ptr %19, i32 %and.i, i32 2
  %22 = ptrtoint ptr %ctl1.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %ctl1.i, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %cb_size) #9
  %len2.i = getelementptr %struct.hl_bd, ptr %19, i32 %and.i, i32 1
  %24 = ptrtoint ptr %len2.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %len2.i, align 8
  %25 = tail call i64 @llvm.bswap.i64(i64 %cb_ptr) #9
  %26 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %add.ptr.i, align 8
  %27 = ptrtoint ptr %pi.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pi.i, align 4
  %add.i.i = add i32 %28, 1
  %and.i.i = and i32 %add.i.i, 8191
  store i32 %and.i.i, ptr %pi.i, align 4
  %29 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %asic_funcs, align 8
  %ring_doorbell.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %30, i32 0, i32 12
  %31 = ptrtoint ptr %ring_doorbell.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ring_doorbell.i, align 4
  %hw_queue_id.i17 = getelementptr %struct.hl_hw_queue, ptr %1, i32 %hw_queue_id, i32 8
  %33 = ptrtoint ptr %hw_queue_id.i17 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %hw_queue_id.i17, align 4
  tail call void %32(ptr noundef %hdev, i32 noundef %34, i32 noundef %and.i.i) #9
  br label %out

out:                                              ; preds = %if.end5, %if.then6.i, %do.body.i, %entry.out_crit_edge
  %rc.1 = phi i32 [ 0, %if.end5 ], [ -1, %entry.out_crit_edge ], [ -11, %if.then6.i ], [ -11, %do.body.i ]
  %35 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %asic_funcs, align 8
  %hw_queues_unlock = getelementptr inbounds %struct.hl_asic_funcs, ptr %36, i32 0, i32 51
  %37 = ptrtoint ptr %hw_queues_unlock to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hw_queues_unlock, align 4
  tail call void %38(ptr noundef %hdev) #9
  ret i32 %rc.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ext_queue_sanity_checks(ptr nocapture noundef readonly %hdev, ptr noundef %q, i32 noundef %num_of_entries, i1 noundef zeroext %reserve_cq_entry) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %completion_queue = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 13
  %0 = ptrtoint ptr %completion_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %completion_queue, align 4
  %cq_id = getelementptr inbounds %struct.hl_hw_queue, ptr %q, i32 0, i32 9
  %2 = ptrtoint ptr %cq_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cq_id, align 4
  %free_slots_cnt = getelementptr %struct.hl_cq, ptr %1, i32 %3, i32 7
  %pi.i = getelementptr inbounds %struct.hl_hw_queue, ptr %q, i32 0, i32 6
  %4 = ptrtoint ptr %pi.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pi.i, align 4
  %ci.i = getelementptr inbounds %struct.hl_hw_queue, ptr %q, i32 0, i32 7
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ci.i, i32 noundef 4) #9
  %6 = ptrtoint ptr %ci.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %ci.i, align 4
  %and.i.i = and i32 %7, 8191
  %sub.i = sub i32 %5, %and.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp12.i = icmp slt i32 %sub.i, 0
  %retval.0.i47.v = select i1 %cmp12.i, i32 -4096, i32 4096
  %retval.0.i47 = sub i32 %retval.0.i47.v, %sub.i
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i47, i32 %num_of_entries)
  %cmp = icmp slt i32 %retval.0.i47, %num_of_entries
  br i1 %cmp, label %do.body, label %if.end7

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ext_queue_sanity_checks.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ext_queue_sanity_checks, %if.then6)) #9
          to label %cleanup [label %if.then6], !srcloc !92

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %hw_queue_id = getelementptr inbounds %struct.hl_hw_queue, ptr %q, i32 0, i32 8
  %10 = ptrtoint ptr %hw_queue_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hw_queue_id, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ext_queue_sanity_checks.__UNIQUE_ID_ddebug297, ptr noundef %9, ptr noundef nonnull @.str.21, i32 noundef %11, i32 noundef %num_of_entries) #9
  br label %cleanup

if.end7:                                          ; preds = %entry
  br i1 %reserve_cq_entry, label %if.then9, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then9:                                         ; preds = %if.end7
  %mul = sub i32 0, %num_of_entries
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %free_slots_cnt, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !93
  tail call void @llvm.prefetch.p0(ptr %free_slots_cnt, i32 1, i32 3, i32 1) #9
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %free_slots_cnt, ptr %free_slots_cnt, i32 %mul, ptr elementtype(i32) %free_slots_cnt) #9, !srcloc !94
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %12, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !95
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i.i = icmp slt i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.i.i, label %do.body12, label %if.then9.cleanup_crit_edge

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body12:                                        ; preds = %if.then9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ext_queue_sanity_checks.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ext_queue_sanity_checks, %if.then24)) #9
          to label %do.end29 [label %if.then24], !srcloc !92

if.then24:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #11
  %dev25 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %13 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev25, align 4
  %hw_queue_id26 = getelementptr inbounds %struct.hl_hw_queue, ptr %q, i32 0, i32 8
  %15 = ptrtoint ptr %hw_queue_id26 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %hw_queue_id26, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ext_queue_sanity_checks.__UNIQUE_ID_ddebug298, ptr noundef %14, ptr noundef nonnull @.str.22, i32 noundef %num_of_entries, i32 noundef %16) #9
  br label %do.end29

do.end29:                                         ; preds = %if.then24, %do.body12
  %call.i.i46 = tail call zeroext i1 @__kasan_check_write(ptr noundef %free_slots_cnt, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %free_slots_cnt, i32 1, i32 3, i32 1) #9
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %free_slots_cnt, ptr %free_slots_cnt, i32 %num_of_entries, ptr elementtype(i32) %free_slots_cnt) #9, !srcloc !91
  br label %cleanup

cleanup:                                          ; preds = %do.end29, %if.then9.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.then6, %do.body
  %retval.0 = phi i32 [ -11, %do.end29 ], [ -11, %if.then6 ], [ 0, %if.then9.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ], [ -11, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @hl_hw_queue_encaps_sig_set_sob_info(ptr nocapture readnone %hdev, ptr nocapture noundef readonly %cs, ptr nocapture noundef readonly %job, ptr nocapture noundef writeonly %cs_cmpl) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %encaps_sig_hdl = getelementptr inbounds %struct.hl_cs, ptr %cs, i32 0, i32 12
  %0 = ptrtoint ptr %encaps_sig_hdl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encaps_sig_hdl, align 8
  %hw_sob = getelementptr inbounds %struct.hl_cs_encaps_sig_handle, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %hw_sob to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_sob, align 8
  %hw_sob1 = getelementptr inbounds %struct.hl_cs_compl, ptr %cs_cmpl, i32 0, i32 3
  %4 = ptrtoint ptr %hw_sob1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %hw_sob1, align 8
  %encaps_sig_wait_offset = getelementptr inbounds %struct.hl_cs_job, ptr %job, i32 0, i32 13
  %5 = ptrtoint ptr %encaps_sig_wait_offset to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %encaps_sig_wait_offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  %sub = add i32 %6, 65535
  %spec.select = select i1 %tobool.not, i32 0, i32 %sub
  %pre_sob_val = getelementptr inbounds %struct.hl_cs_encaps_sig_handle, ptr %1, i32 0, i32 7
  %7 = ptrtoint ptr %pre_sob_val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pre_sob_val, align 8
  %add = add i32 %spec.select, %8
  %conv = trunc i32 %add to i16
  %sob_val = getelementptr inbounds %struct.hl_cs_compl, ptr %cs_cmpl, i32 0, i32 7
  %9 = ptrtoint ptr %sob_val to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv, ptr %sob_val, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hl_hw_queue_schedule_cs(ptr noundef %cs) local_unnamed_addr #1 align 64 {
entry:
  %bd.i = alloca %struct.hl_bd, align 8
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #9
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %status, align 4, !annotation !96
  %ctx1 = getelementptr inbounds %struct.hl_cs, ptr %cs, i32 0, i32 1
  %1 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ctx1, align 4
  %hdev2 = getelementptr inbounds %struct.hl_ctx, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %hdev2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hdev2, align 4
  %asic_funcs = getelementptr inbounds %struct.hl_device, ptr %4, i32 0, i32 34
  %5 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %asic_funcs, align 8
  %hw_queues_lock = getelementptr inbounds %struct.hl_asic_funcs, ptr %6, i32 0, i32 50
  %7 = ptrtoint ptr %hw_queues_lock to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw_queues_lock, align 4
  tail call void %8(ptr noundef %4) #9
  %call = call zeroext i1 @hl_device_operational(ptr noundef %4, ptr noundef nonnull %status) #9
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %device_in_reset_drop_cnt = getelementptr inbounds %struct.hl_device, ptr %4, i32 0, i32 50, i32 3
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %device_in_reset_drop_cnt, i32 noundef 8) #9
  call void @generic_atomic64_add(i64 noundef 1, ptr noundef %device_in_reset_drop_cnt) #9
  %device_in_reset_drop_cnt3 = getelementptr inbounds %struct.hl_ctx, ptr %2, i32 0, i32 12, i32 3
  %call.i.i286 = call zeroext i1 @__kasan_check_write(ptr noundef %device_in_reset_drop_cnt3, i32 noundef 8) #9
  call void @generic_atomic64_add(i64 noundef 1, ptr noundef %device_in_reset_drop_cnt3) #9
  %dev = getelementptr inbounds %struct.hl_device, ptr %4, i32 0, i32 6
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %11 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %status, align 4
  %arrayidx = getelementptr %struct.hl_device, ptr %4, i32 0, i32 11, i32 %12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str, ptr noundef %arrayidx) #12
  br label %cleanup177

if.end:                                           ; preds = %entry
  %max_queues5 = getelementptr inbounds %struct.hl_device, ptr %4, i32 0, i32 33, i32 49
  %13 = ptrtoint ptr %max_queues5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %max_queues5, align 4
  %kernel_queues = getelementptr inbounds %struct.hl_device, ptr %4, i32 0, i32 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp387.not = icmp eq i32 %14, 0
  br i1 %cmp387.not, label %if.end.for.end_crit_edge, label %for.body.preheader

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.preheader:                               ; preds = %if.end
  %15 = ptrtoint ptr %kernel_queues to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %kernel_queues, align 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %q.0391 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %16, %for.body.preheader ]
  %i.0390 = phi i32 [ %inc41, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %cq_cnt.0388 = phi i32 [ %cq_cnt.1, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %17 = ptrtoint ptr %cs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cs, align 8
  %arrayidx7 = getelementptr i16, ptr %18, i32 %i.0390
  %19 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx7, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool.not = icmp eq i16 %20, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then8

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then8:                                         ; preds = %for.body
  %queue_type = getelementptr inbounds %struct.hl_hw_queue, ptr %q.0391, i32 0, i32 2
  %21 = ptrtoint ptr %queue_type to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %queue_type, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values)
  switch i32 %22, label %do.end27 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb15
    i32 4, label %sw.bb20
  ]

sw.bb:                                            ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i16 %20 to i32
  %call11 = call zeroext i1 @cs_needs_completion(ptr noundef %cs) #9
  %call14 = call fastcc i32 @ext_queue_sanity_checks(ptr noundef %4, ptr noundef %q.0391, i32 noundef %conv, i1 noundef zeroext %call11)
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.then8
  %int_queue_len.i = getelementptr inbounds %struct.hl_hw_queue, ptr %q.0391, i32 0, i32 11
  %24 = ptrtoint ptr %int_queue_len.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %int_queue_len.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %25, i16 %20)
  %cmp.i = icmp ult i16 %25, %20
  %conv18.le385 = zext i16 %20 to i32
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #11
  %conv18.le385.le = zext i16 %20 to i32
  %dev.i = getelementptr inbounds %struct.hl_device, ptr %4, i32 0, i32 6
  %26 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i, align 4
  %hw_queue_id.i = getelementptr inbounds %struct.hl_hw_queue, ptr %q.0391, i32 0, i32 8
  %28 = ptrtoint ptr %hw_queue_id.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %hw_queue_id.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.23, i32 noundef %29, i32 noundef %conv18.le385.le) #12
  br label %if.then31

if.end.i:                                         ; preds = %sw.bb15
  %conv.i = zext i16 %25 to i32
  %pi.i.i = getelementptr inbounds %struct.hl_hw_queue, ptr %q.0391, i32 0, i32 6
  %30 = ptrtoint ptr %pi.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pi.i.i, align 4
  %ci.i.i = getelementptr inbounds %struct.hl_hw_queue, ptr %q.0391, i32 0, i32 7
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %ci.i.i, i32 noundef 4) #9
  %32 = ptrtoint ptr %ci.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %ci.i.i, align 4
  %shl.i.i.i = shl nuw nsw i32 %conv.i, 1
  %sub.i.i.i = add nsw i32 %shl.i.i.i, -1
  %and.i.i.i = and i32 %33, %sub.i.i.i
  %sub.i.i = sub i32 %31, %and.i.i.i
  %sub1.i.i = sub i32 %conv.i, %sub.i.i
  %34 = add i32 %sub.i.i, %conv.i
  %sub4.i.i = sub i32 0, %34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp12.i.i = icmp slt i32 %sub.i.i, 0
  %retval.0.i26.i = select i1 %cmp12.i.i, i32 %sub4.i.i, i32 %sub1.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i26.i, i32 %conv18.le385)
  %cmp4.i = icmp slt i32 %retval.0.i26.i, %conv18.le385
  br i1 %cmp4.i, label %do.body7.i, label %if.end.i.if.end34_crit_edge

if.end.i.if.end34_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

do.body7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @int_queue_sanity_checks.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hl_hw_queue_schedule_cs, %if.then11.i)) #9
          to label %sw.epilog [label %if.then11.i], !srcloc !92

if.then11.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv18.le = zext i16 %20 to i32
  %dev12.i = getelementptr inbounds %struct.hl_device, ptr %4, i32 0, i32 6
  %35 = ptrtoint ptr %dev12.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev12.i, align 4
  %hw_queue_id13.i = getelementptr inbounds %struct.hl_hw_queue, ptr %q.0391, i32 0, i32 8
  %37 = ptrtoint ptr %hw_queue_id13.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %hw_queue_id13.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @int_queue_sanity_checks.__UNIQUE_ID_ddebug299, ptr noundef %36, ptr noundef nonnull @.str.21, i32 noundef %38, i32 noundef %conv18.le) #9
  br label %if.then31

sw.bb20:                                          ; preds = %if.then8
  %conv23 = zext i16 %20 to i32
  %pi.i.i290 = getelementptr inbounds %struct.hl_hw_queue, ptr %q.0391, i32 0, i32 6
  %39 = ptrtoint ptr %pi.i.i290 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pi.i.i290, align 4
  %ci.i.i291 = getelementptr inbounds %struct.hl_hw_queue, ptr %q.0391, i32 0, i32 7
  %call.i.i.i.i.i292 = call zeroext i1 @__kasan_check_read(ptr noundef %ci.i.i291, i32 noundef 4) #9
  %41 = ptrtoint ptr %ci.i.i291 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %ci.i.i291, align 4
  %and.i.i.i293 = and i32 %42, 8191
  %sub.i.i294 = sub i32 %40, %and.i.i.i293
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i294)
  %cmp12.i.i295 = icmp slt i32 %sub.i.i294, 0
  %retval.0.i8.v.i = select i1 %cmp12.i.i295, i32 -4096, i32 4096
  %retval.0.i8.i = sub i32 %retval.0.i8.v.i, %sub.i.i294
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i8.i, i32 %conv23)
  %cmp.i296 = icmp slt i32 %retval.0.i8.i, %conv23
  br i1 %cmp.i296, label %do.body.i, label %sw.bb20.if.end34_crit_edge

sw.bb20.if.end34_crit_edge:                       ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

do.body.i:                                        ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hw_queue_sanity_checks.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hl_hw_queue_schedule_cs, %if.then4.i)) #9
          to label %sw.epilog [label %if.then4.i], !srcloc !92

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv23.le = zext i16 %20 to i32
  %dev.i297 = getelementptr inbounds %struct.hl_device, ptr %4, i32 0, i32 6
  %43 = ptrtoint ptr %dev.i297 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev.i297, align 4
  %hw_queue_id.i298 = getelementptr inbounds %struct.hl_hw_queue, ptr %q.0391, i32 0, i32 8
  %45 = ptrtoint ptr %hw_queue_id.i298 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %hw_queue_id.i298, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hw_queue_sanity_checks.__UNIQUE_ID_ddebug300, ptr noundef %44, ptr noundef nonnull @.str.21, i32 noundef %46, i32 noundef %conv23.le) #9
  br label %if.then31

do.end27:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  %dev28 = getelementptr inbounds %struct.hl_device, ptr %4, i32 0, i32 6
  %47 = ptrtoint ptr %dev28 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev28, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.6, i32 noundef %22) #12
  br label %if.then31

sw.epilog:                                        ; preds = %do.body.i, %do.body7.i, %sw.bb
  %rc.1 = phi i32 [ %call14, %sw.bb ], [ -11, %do.body7.i ], [ -11, %do.body.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.1)
  %tobool30.not = icmp eq i32 %rc.1, 0
  br i1 %tobool30.not, label %sw.epilog.if.end34_crit_edge, label %sw.epilog.if.then31_crit_edge

sw.epilog.if.then31_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then31

sw.epilog.if.end34_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.then31:                                        ; preds = %sw.epilog.if.then31_crit_edge, %do.end27, %if.then4.i, %if.then11.i, %do.end.i
  %rc.1357 = phi i32 [ -11, %if.then4.i ], [ -11, %if.then11.i ], [ -12, %do.end.i ], [ -22, %do.end27 ], [ %rc.1, %sw.epilog.if.then31_crit_edge ]
  %queue_full_drop_cnt = getelementptr inbounds %struct.hl_ctx, ptr %2, i32 0, i32 12, i32 2
  %call.i.i287 = call zeroext i1 @__kasan_check_write(ptr noundef %queue_full_drop_cnt, i32 noundef 8) #9
  call void @generic_atomic64_add(i64 noundef 1, ptr noundef %queue_full_drop_cnt) #9
  %queue_full_drop_cnt33 = getelementptr inbounds %struct.hl_device, ptr %4, i32 0, i32 50, i32 2
  %call.i.i288 = call zeroext i1 @__kasan_check_write(ptr noundef %queue_full_drop_cnt33, i32 noundef 8) #9
  call void @generic_atomic64_add(i64 noundef 1, ptr noundef %queue_full_drop_cnt33) #9
  br label %unroll_cq_resv

if.end34:                                         ; preds = %sw.epilog.if.end34_crit_edge, %sw.bb20.if.end34_crit_edge, %if.end.i.if.end34_crit_edge
  %49 = ptrtoint ptr %queue_type to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %queue_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %50)
  %cmp36 = icmp eq i32 %50, 1
  %inc = zext i1 %cmp36 to i32
  %spec.select = add i32 %cq_cnt.0388, %inc
  br label %for.inc

for.inc:                                          ; preds = %if.end34, %for.body.for.inc_crit_edge
  %cq_cnt.1 = phi i32 [ %cq_cnt.0388, %for.body.for.inc_crit_edge ], [ %spec.select, %if.end34 ]
  %inc41 = add nuw i32 %i.0390, 1
  %incdec.ptr = getelementptr %struct.hl_hw_queue, ptr %q.0391, i32 1
  %exitcond.not = icmp eq i32 %inc41, %14
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %cq_cnt.0.lcssa = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %cq_cnt.1, %for.inc.for.end_crit_edge ]
  %type = getelementptr inbounds %struct.hl_cs, ptr %cs, i32 0, i32 17
  %51 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %type, align 8
  %53 = zext i32 %52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %52, label %for.end.if.end62_crit_edge [
    i32 1, label %for.end.if.then47_crit_edge
    i32 2, label %for.end.if.then47_crit_edge517
    i32 3, label %if.then55
  ]

for.end.if.then47_crit_edge517:                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then47

for.end.if.then47_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then47

for.end.if.end62_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

if.then47:                                        ; preds = %for.end.if.then47_crit_edge, %for.end.if.then47_crit_edge517
  %54 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ctx1, align 4
  %hdev2.i = getelementptr inbounds %struct.hl_ctx, ptr %55, i32 0, i32 3
  %56 = ptrtoint ptr %hdev2.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %hdev2.i, align 4
  %fence.i = getelementptr inbounds %struct.hl_cs, ptr %cs, i32 0, i32 5
  %58 = ptrtoint ptr %fence.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %fence.i, align 8
  %job_list.i = getelementptr inbounds %struct.hl_cs, ptr %cs, i32 0, i32 2
  %60 = ptrtoint ptr %job_list.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %job_list.i, align 8
  %and.i = and i32 %52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = call fastcc i32 @init_signal_cs(ptr noundef %57, ptr noundef %61, ptr noundef %59) #9
  br label %init_signal_wait_cs.exit

if.else.i:                                        ; preds = %if.then47
  %and7.i = and i32 %52, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %if.else.i.if.end62_crit_edge, label %if.then9.i

if.else.i.if.end62_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

if.then9.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %call10.i = call fastcc i32 @init_wait_cs(ptr noundef %57, ptr noundef %cs, ptr noundef %61, ptr noundef %59) #9
  br label %init_signal_wait_cs.exit

init_signal_wait_cs.exit:                         ; preds = %if.then9.i, %if.then.i
  %rc.0.i = phi i32 [ %call.i, %if.then.i ], [ %call10.i, %if.then9.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0.i)
  %tobool49.not = icmp eq i32 %rc.0.i, 0
  br i1 %tobool49.not, label %init_signal_wait_cs.exit.if.end62_crit_edge, label %init_signal_wait_cs.exit.unroll_cq_resv_crit_edge

init_signal_wait_cs.exit.unroll_cq_resv_crit_edge: ; preds = %init_signal_wait_cs.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %unroll_cq_resv

init_signal_wait_cs.exit.if.end62_crit_edge:      ; preds = %init_signal_wait_cs.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

if.then55:                                        ; preds = %for.end
  %62 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %asic_funcs, align 8
  %collective_wait_init_cs = getelementptr inbounds %struct.hl_asic_funcs, ptr %63, i32 0, i32 74
  %64 = ptrtoint ptr %collective_wait_init_cs to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %collective_wait_init_cs, align 4
  %call57 = call i32 %65(ptr noundef %cs) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.then55.if.end62_crit_edge, label %if.then55.unroll_cq_resv_crit_edge

if.then55.unroll_cq_resv_crit_edge:               ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #11
  br label %unroll_cq_resv

if.then55.if.end62_crit_edge:                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

if.end62:                                         ; preds = %if.then55.if.end62_crit_edge, %init_signal_wait_cs.exit.if.end62_crit_edge, %if.else.i.if.end62_crit_edge, %for.end.if.end62_crit_edge
  %encaps_signals = getelementptr inbounds %struct.hl_cs, ptr %cs, i32 0, i32 31
  %66 = ptrtoint ptr %encaps_signals to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %encaps_signals, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool64.not = icmp eq i8 %67, 0
  br i1 %tobool64.not, label %if.end62.if.end72_crit_edge, label %land.lhs.true

if.end62.if.end72_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end72

land.lhs.true:                                    ; preds = %if.end62
  %staged_first = getelementptr inbounds %struct.hl_cs, ptr %cs, i32 0, i32 28
  %68 = ptrtoint ptr %staged_first to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %staged_first, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool66.not = icmp eq i8 %69, 0
  br i1 %tobool66.not, label %land.lhs.true.if.end72_crit_edge, label %if.then67

land.lhs.true.if.end72_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end72

if.then67:                                        ; preds = %land.lhs.true
  %call68 = call fastcc i32 @encaps_sig_first_staged_cs_handler(ptr noundef %4, ptr noundef %cs)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.then67.if.end72_crit_edge, label %if.then67.unroll_cq_resv_crit_edge

if.then67.unroll_cq_resv_crit_edge:               ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #11
  br label %unroll_cq_resv

if.then67.if.end72_crit_edge:                     ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end72

if.end72:                                         ; preds = %if.then67.if.end72_crit_edge, %land.lhs.true.if.end72_crit_edge, %if.end62.if.end72_crit_edge
  %cs_mirror_lock = getelementptr inbounds %struct.hl_device, ptr %4, i32 0, i32 22
  call void @_raw_spin_lock(ptr noundef %cs_mirror_lock) #9
  %staged_cs = getelementptr inbounds %struct.hl_cs, ptr %cs, i32 0, i32 29
  %70 = ptrtoint ptr %staged_cs to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %staged_cs, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool74.not = icmp eq i8 %71, 0
  br i1 %tobool74.not, label %if.end72.if.end103_crit_edge, label %land.lhs.true75

if.end72.if.end103_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end103

land.lhs.true75:                                  ; preds = %if.end72
  %staged_first76 = getelementptr inbounds %struct.hl_cs, ptr %cs, i32 0, i32 28
  %72 = ptrtoint ptr %staged_first76 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %staged_first76, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool77.not = icmp eq i8 %73, 0
  br i1 %tobool77.not, label %if.then78, label %land.lhs.true75.if.end103_crit_edge

land.lhs.true75.if.end103_crit_edge:              ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end103

if.then78:                                        ; preds = %land.lhs.true75
  %staged_sequence = getelementptr inbounds %struct.hl_cs, ptr %cs, i32 0, i32 14
  %74 = ptrtoint ptr %staged_sequence to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %staged_sequence, align 8
  %call80 = call ptr @hl_staged_cs_find_first(ptr noundef %4, i64 noundef %75) #9
  %tobool81.not = icmp eq ptr %call80, null
  br i1 %tobool81.not, label %if.then78.unlock_cs_mirror_crit_edge, label %if.end88

if.then78.unlock_cs_mirror_crit_edge:             ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock_cs_mirror

if.end88:                                         ; preds = %if.then78
  %call89 = call zeroext i1 @is_staged_cs_last_exists(ptr noundef %4, ptr noundef nonnull %call80) #9
  br i1 %call89, label %if.end88.unlock_cs_mirror_crit_edge, label %if.end96

if.end88.unlock_cs_mirror_crit_edge:              ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock_cs_mirror

if.end96:                                         ; preds = %if.end88
  %staged_cs_node = getelementptr inbounds %struct.hl_cs, ptr %cs, i32 0, i32 10
  %staged_cs_node97 = getelementptr inbounds %struct.hl_cs, ptr %call80, i32 0, i32 10
  %prev.i = getelementptr inbounds %struct.hl_cs, ptr %call80, i32 0, i32 10, i32 1
  %76 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %prev.i, align 4
  %call.i.i300 = call zeroext i1 @__list_add_valid(ptr noundef %staged_cs_node, ptr noundef %77, ptr noundef %staged_cs_node97) #9
  br i1 %call.i.i300, label %if.end.i.i, label %if.end96.list_add_tail.exit_crit_edge

if.end96.list_add_tail.exit_crit_edge:            ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #11
  %78 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %staged_cs_node, ptr %prev.i, align 4
  %79 = ptrtoint ptr %staged_cs_node to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %staged_cs_node97, ptr %staged_cs_node, align 4
  %prev3.i.i = getelementptr inbounds %struct.hl_cs, ptr %cs, i32 0, i32 10, i32 1
  %80 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %77, ptr %prev3.i.i, align 4
  %81 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile ptr %staged_cs_node, ptr %77, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end96.list_add_tail.exit_crit_edge
  %supports_wait_for_multi_cs = getelementptr inbounds %struct.hl_device, ptr %4, i32 0, i32 102
  %82 = ptrtoint ptr %supports_wait_for_multi_cs to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %supports_wait_for_multi_cs, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool98.not = icmp eq i8 %83, 0
  br i1 %tobool98.not, label %list_add_tail.exit.if.end103_crit_edge, label %if.then99

list_add_tail.exit.if.end103_crit_edge:           ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end103

if.then99:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  %fence = getelementptr inbounds %struct.hl_cs, ptr %cs, i32 0, i32 5
  %84 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %fence, align 8
  %stream_master_qid_map = getelementptr inbounds %struct.hl_fence, ptr %85, i32 0, i32 3
  %86 = ptrtoint ptr %stream_master_qid_map to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %stream_master_qid_map, align 8
  %fence100 = getelementptr inbounds %struct.hl_cs, ptr %call80, i32 0, i32 5
  %88 = ptrtoint ptr %fence100 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %fence100, align 8
  %stream_master_qid_map101 = getelementptr inbounds %struct.hl_fence, ptr %89, i32 0, i32 3
  %90 = ptrtoint ptr %stream_master_qid_map101 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %stream_master_qid_map101, align 8
  %or = or i32 %91, %87
  store i32 %or, ptr %stream_master_qid_map101, align 8
  br label %if.end103

if.end103:                                        ; preds = %if.then99, %list_add_tail.exit.if.end103_crit_edge, %land.lhs.true75.if.end103_crit_edge, %if.end72.if.end103_crit_edge
  %mirror_node = getelementptr inbounds %struct.hl_cs, ptr %cs, i32 0, i32 9
  %cs_mirror_list = getelementptr inbounds %struct.hl_device, ptr %4, i32 0, i32 21
  %prev.i301 = getelementptr inbounds %struct.hl_device, ptr %4, i32 0, i32 21, i32 1
  %92 = ptrtoint ptr %prev.i301 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %prev.i301, align 4
  %call.i.i302 = call zeroext i1 @__list_add_valid(ptr noundef %mirror_node, ptr noundef %93, ptr noundef %cs_mirror_list) #9
  br i1 %call.i.i302, label %if.end.i.i304, label %if.end103.list_add_tail.exit305_crit_edge

if.end103.list_add_tail.exit305_crit_edge:        ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit305

if.end.i.i304:                                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #11
  %94 = ptrtoint ptr %prev.i301 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %mirror_node, ptr %prev.i301, align 4
  %95 = ptrtoint ptr %mirror_node to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %cs_mirror_list, ptr %mirror_node, align 4
  %prev3.i.i303 = getelementptr inbounds %struct.hl_cs, ptr %cs, i32 0, i32 9, i32 1
  %96 = ptrtoint ptr %prev3.i.i303 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %93, ptr %prev3.i.i303, align 4
  %97 = ptrtoint ptr %93 to i32
  call void @__asan_store4_noabort(i32 %97)
  store volatile ptr %mirror_node, ptr %93, align 4
  br label %list_add_tail.exit305

list_add_tail.exit305:                            ; preds = %if.end.i.i304, %if.end103.list_add_tail.exit305_crit_edge
  %timeout_jiffies = getelementptr inbounds %struct.hl_device, ptr %4, i32 0, i32 62
  %98 = ptrtoint ptr %timeout_jiffies to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %timeout_jiffies, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 2147483647, i64 %99)
  %cmp108.not = icmp eq i64 %99, 2147483647
  br i1 %cmp108.not, label %list_add_tail.exit305.if.end120_crit_edge, label %land.lhs.true110

list_add_tail.exit305.if.end120_crit_edge:        ; preds = %list_add_tail.exit305
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end120

land.lhs.true110:                                 ; preds = %list_add_tail.exit305
  %100 = ptrtoint ptr %cs_mirror_list to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %cs_mirror_list, align 4
  %add.ptr = getelementptr i8, ptr %101, i32 -216
  %cmp106 = icmp eq ptr %add.ptr, %cs
  br i1 %cmp106, label %land.lhs.true113, label %land.lhs.true110.if.end120_crit_edge

land.lhs.true110.if.end120_crit_edge:             ; preds = %land.lhs.true110
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end120

land.lhs.true113:                                 ; preds = %land.lhs.true110
  %call114 = call zeroext i1 @cs_needs_timeout(ptr noundef %cs) #9
  br i1 %call114, label %if.then116, label %land.lhs.true113.if.end120_crit_edge

land.lhs.true113.if.end120_crit_edge:             ; preds = %land.lhs.true113
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end120

if.then116:                                       ; preds = %land.lhs.true113
  call void @__sanitizer_cov_trace_pc() #11
  %tdr_active = getelementptr inbounds %struct.hl_cs, ptr %cs, i32 0, i32 24
  %102 = ptrtoint ptr %tdr_active to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 1, ptr %tdr_active, align 1
  %work_tdr = getelementptr inbounds %struct.hl_cs, ptr %cs, i32 0, i32 8
  %timeout_jiffies117 = getelementptr inbounds %struct.hl_cs, ptr %cs, i32 0, i32 15
  %103 = ptrtoint ptr %timeout_jiffies117 to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %timeout_jiffies117, align 8
  %conv118 = trunc i64 %104 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %105 = load ptr, ptr @system_wq, align 4
  %call.i.i306 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %105, ptr noundef %work_tdr, i32 noundef %conv118) #9
  br label %if.end120

if.end120:                                        ; preds = %if.then116, %land.lhs.true113.if.end120_crit_edge, %land.lhs.true110.if.end120_crit_edge, %list_add_tail.exit305.if.end120_crit_edge
  call void @_raw_spin_unlock(ptr noundef %cs_mirror_lock) #9
  %job_list = getelementptr inbounds %struct.hl_cs, ptr %cs, i32 0, i32 2
  %106 = ptrtoint ptr %job_list to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %job_list, align 8
  %cmp133.not396 = icmp eq ptr %107, %job_list
  br i1 %cmp133.not396, label %if.end120.for.end148_crit_edge, label %for.body135.lr.ph

if.end120.for.end148_crit_edge:                   ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end148

for.body135.lr.ph:                                ; preds = %if.end120
  %108 = getelementptr inbounds %struct.hl_bd, ptr %bd.i, i32 0, i32 1
  %109 = getelementptr inbounds %struct.hl_bd, ptr %bd.i, i32 0, i32 2
  br label %for.body135

for.body135:                                      ; preds = %for.inc142.for.body135_crit_edge, %for.body135.lr.ph
  %job.0397 = phi ptr [ %107, %for.body135.lr.ph ], [ %tmp.0398, %for.inc142.for.body135_crit_edge ]
  %110 = ptrtoint ptr %job.0397 to i32
  call void @__asan_load4_noabort(i32 %110)
  %tmp.0398 = load ptr, ptr %job.0397, align 4
  %queue_type136 = getelementptr inbounds %struct.hl_cs_job, ptr %job.0397, i32 0, i32 8
  %111 = ptrtoint ptr %queue_type136 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %queue_type136, align 4
  %113 = zext i32 %112 to i64
  call void @__sanitizer_cov_trace_switch(i64 %113, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %112, label %for.body135.for.inc142_crit_edge [
    i32 1, label %sw.bb137
    i32 2, label %sw.bb138
    i32 4, label %sw.bb139
  ]

for.body135.for.inc142_crit_edge:                 ; preds = %for.body135
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc142

sw.bb137:                                         ; preds = %for.body135
  %cs.i = getelementptr inbounds %struct.hl_cs_job, ptr %job.0397, i32 0, i32 1
  %114 = ptrtoint ptr %cs.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %cs.i, align 4
  %ctx.i = getelementptr inbounds %struct.hl_cs, ptr %115, i32 0, i32 1
  %116 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %ctx.i, align 4
  %hdev1.i = getelementptr inbounds %struct.hl_ctx, ptr %117, i32 0, i32 3
  %118 = ptrtoint ptr %hdev1.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %hdev1.i, align 4
  %kernel_queues.i = getelementptr inbounds %struct.hl_device, ptr %119, i32 0, i32 20
  %120 = ptrtoint ptr %kernel_queues.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %kernel_queues.i, align 8
  %hw_queue_id.i307 = getelementptr inbounds %struct.hl_cs_job, ptr %job.0397, i32 0, i32 10
  %122 = ptrtoint ptr %hw_queue_id.i307 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %hw_queue_id.i307, align 4
  %pi.i = getelementptr %struct.hl_hw_queue, ptr %121, i32 %123, i32 6
  %124 = ptrtoint ptr %pi.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %pi.i, align 4
  %patched_cb.i = getelementptr inbounds %struct.hl_cs_job, ptr %job.0397, i32 0, i32 3
  %126 = ptrtoint ptr %patched_cb.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %patched_cb.i, align 4
  %job_cb_size.i = getelementptr inbounds %struct.hl_cs_job, ptr %job.0397, i32 0, i32 12
  %128 = ptrtoint ptr %job_cb_size.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %job_cb_size.i, align 4
  %bus_address.i = getelementptr inbounds %struct.hl_cb, ptr %127, i32 0, i32 9
  %130 = ptrtoint ptr %bus_address.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %bus_address.i, align 4
  %call.i308 = call zeroext i1 @cs_needs_completion(ptr noundef %115) #9
  br i1 %call.i308, label %if.end.i309, label %sw.bb137.ext_queue_schedule_job.exit_crit_edge

sw.bb137.ext_queue_schedule_job.exit_crit_edge:   ; preds = %sw.bb137
  call void @__sanitizer_cov_trace_pc() #11
  br label %ext_queue_schedule_job.exit

if.end.i309:                                      ; preds = %sw.bb137
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr %struct.hl_hw_queue, ptr %121, i32 %123
  %132 = ptrtoint ptr %pi.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %pi.i, align 4
  %and5.i = and i32 %133, 4095
  %or34.i = or i32 %and5.i, -1073741824
  %completion_queue.i = getelementptr inbounds %struct.hl_device, ptr %119, i32 0, i32 13
  %134 = ptrtoint ptr %completion_queue.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %completion_queue.i, align 4
  %cq_id.i = getelementptr %struct.hl_hw_queue, ptr %121, i32 %123, i32 9
  %136 = ptrtoint ptr %cq_id.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %cq_id.i, align 4
  %bus_address36.i = getelementptr %struct.hl_cq, ptr %135, i32 %137, i32 2
  %138 = ptrtoint ptr %bus_address36.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %bus_address36.i, align 4
  %pi37.i = getelementptr %struct.hl_cq, ptr %135, i32 %137, i32 6
  %140 = ptrtoint ptr %pi37.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %pi37.i, align 4
  %mul.i = shl i32 %141, 2
  %add.i = add i32 %mul.i, %139
  %conv38.i = zext i32 %add.i to i64
  %asic_funcs.i = getelementptr inbounds %struct.hl_device, ptr %119, i32 0, i32 34
  %142 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %asic_funcs.i, align 8
  %add_end_of_cb_packets.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %143, i32 0, i32 27
  %144 = ptrtoint ptr %add_end_of_cb_packets.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %add_end_of_cb_packets.i, align 4
  %kernel_address.i = getelementptr inbounds %struct.hl_cb, ptr %127, i32 0, i32 8
  %146 = ptrtoint ptr %kernel_address.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %kernel_address.i, align 8
  %msi_vec.i = getelementptr %struct.hl_hw_queue, ptr %121, i32 %123, i32 10
  %148 = ptrtoint ptr %msi_vec.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %msi_vec.i, align 4
  %contains_dma_pkt.i = getelementptr inbounds %struct.hl_cs_job, ptr %job.0397, i32 0, i32 15
  %150 = ptrtoint ptr %contains_dma_pkt.i to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %contains_dma_pkt.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %151)
  %tobool.i = icmp ne i8 %151, 0
  call void %145(ptr noundef %119, ptr noundef %147, i32 noundef %129, i64 noundef %conv38.i, i32 noundef %or34.i, i32 noundef %149, i1 noundef zeroext %tobool.i) #9
  %152 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %arrayidx.i, align 4
  %154 = ptrtoint ptr %pi.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %pi.i, align 4
  %and41.i = and i32 %155, 4095
  %arrayidx42.i = getelementptr ptr, ptr %153, i32 %and41.i
  %156 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %job.0397, ptr %arrayidx42.i, align 4
  %157 = ptrtoint ptr %pi37.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %pi37.i, align 4
  %call44.i = call i32 @hl_cq_inc_ptr(i32 noundef %158) #9
  %159 = ptrtoint ptr %pi37.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %call44.i, ptr %pi37.i, align 4
  br label %ext_queue_schedule_job.exit

ext_queue_schedule_job.exit:                      ; preds = %if.end.i309, %sw.bb137.ext_queue_schedule_job.exit_crit_edge
  %conv.i310 = zext i32 %131 to i64
  %and.i311 = and i32 %125, 4095
  %kernel_address.i.i = getelementptr %struct.hl_hw_queue, ptr %121, i32 %123, i32 4
  %160 = ptrtoint ptr %kernel_address.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %kernel_address.i.i, align 4
  %162 = ptrtoint ptr %pi.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %pi.i, align 4
  %and.i.i = and i32 %163, 4095
  %add.ptr.i.i = getelementptr %struct.hl_bd, ptr %161, i32 %and.i.i
  %164 = call i32 @llvm.bswap.i32(i32 %and.i311) #9
  %ctl1.i.i = getelementptr %struct.hl_bd, ptr %161, i32 %and.i.i, i32 2
  %165 = ptrtoint ptr %ctl1.i.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %164, ptr %ctl1.i.i, align 4
  %166 = call i32 @llvm.bswap.i32(i32 %129) #9
  %len2.i.i = getelementptr %struct.hl_bd, ptr %161, i32 %and.i.i, i32 1
  %167 = ptrtoint ptr %len2.i.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %166, ptr %len2.i.i, align 8
  %168 = call i64 @llvm.bswap.i64(i64 %conv.i310) #9
  %169 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store8_noabort(i32 %169)
  store i64 %168, ptr %add.ptr.i.i, align 8
  %170 = ptrtoint ptr %pi.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %pi.i, align 4
  %add.i.i.i = add i32 %171, 1
  %and.i.i.i312 = and i32 %add.i.i.i, 8191
  store i32 %and.i.i.i312, ptr %pi.i, align 4
  %asic_funcs.i.i = getelementptr inbounds %struct.hl_device, ptr %119, i32 0, i32 34
  %172 = ptrtoint ptr %asic_funcs.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %asic_funcs.i.i, align 8
  %ring_doorbell.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %173, i32 0, i32 12
  %174 = ptrtoint ptr %ring_doorbell.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %ring_doorbell.i.i, align 4
  %hw_queue_id.i.i = getelementptr %struct.hl_hw_queue, ptr %121, i32 %123, i32 8
  %176 = ptrtoint ptr %hw_queue_id.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %hw_queue_id.i.i, align 4
  call void %175(ptr noundef %119, i32 noundef %177, i32 noundef %and.i.i.i312) #9
  br label %for.inc142

sw.bb138:                                         ; preds = %for.body135
  %cs.i313 = getelementptr inbounds %struct.hl_cs_job, ptr %job.0397, i32 0, i32 1
  %178 = ptrtoint ptr %cs.i313 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %cs.i313, align 4
  %ctx.i314 = getelementptr inbounds %struct.hl_cs, ptr %179, i32 0, i32 1
  %180 = ptrtoint ptr %ctx.i314 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %ctx.i314, align 4
  %hdev1.i315 = getelementptr inbounds %struct.hl_ctx, ptr %181, i32 0, i32 3
  %182 = ptrtoint ptr %hdev1.i315 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %hdev1.i315, align 4
  %kernel_queues.i316 = getelementptr inbounds %struct.hl_device, ptr %183, i32 0, i32 20
  %184 = ptrtoint ptr %kernel_queues.i316 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %kernel_queues.i316, align 8
  %hw_queue_id.i317 = getelementptr inbounds %struct.hl_cs_job, ptr %job.0397, i32 0, i32 10
  %186 = ptrtoint ptr %hw_queue_id.i317 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %hw_queue_id.i317, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %bd.i) #9
  %188 = ptrtoint ptr %109 to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 0, ptr %109, align 4
  %job_cb_size.i318 = getelementptr inbounds %struct.hl_cs_job, ptr %job.0397, i32 0, i32 12
  %189 = ptrtoint ptr %job_cb_size.i318 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %job_cb_size.i318, align 4
  %191 = call i32 @llvm.bswap.i32(i32 %190) #9
  %192 = ptrtoint ptr %108 to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 %191, ptr %108, align 8
  %is_kernel_allocated_cb.i = getelementptr inbounds %struct.hl_cs_job, ptr %job.0397, i32 0, i32 14
  %193 = ptrtoint ptr %is_kernel_allocated_cb.i to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %is_kernel_allocated_cb.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %194)
  %tobool.not.i319 = icmp eq i8 %194, 0
  %user_cb2.i = getelementptr inbounds %struct.hl_cs_job, ptr %job.0397, i32 0, i32 2
  %195 = ptrtoint ptr %user_cb2.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %user_cb2.i, align 4
  br i1 %tobool.not.i319, label %if.else.i322, label %if.then.i321

if.then.i321:                                     ; preds = %sw.bb138
  call void @__sanitizer_cov_trace_pc() #11
  %bus_address.i320 = getelementptr inbounds %struct.hl_cb, ptr %196, i32 0, i32 9
  %197 = ptrtoint ptr %bus_address.i320 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %bus_address.i320, align 4
  br label %int_queue_schedule_job.exit

if.else.i322:                                     ; preds = %sw.bb138
  call void @__sanitizer_cov_trace_pc() #11
  %199 = ptrtoint ptr %196 to i32
  br label %int_queue_schedule_job.exit

int_queue_schedule_job.exit:                      ; preds = %if.else.i322, %if.then.i321
  %.sink.i = phi i32 [ %199, %if.else.i322 ], [ %198, %if.then.i321 ]
  %conv3.i = zext i32 %.sink.i to i64
  %200 = call i64 @llvm.bswap.i64(i64 %conv3.i) #9
  %201 = ptrtoint ptr %bd.i to i32
  call void @__asan_store8_noabort(i32 %201)
  store i64 %200, ptr %bd.i, align 8
  %kernel_address.i323 = getelementptr %struct.hl_hw_queue, ptr %185, i32 %187, i32 4
  %202 = ptrtoint ptr %kernel_address.i323 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %kernel_address.i323, align 4
  %pi5.i = getelementptr %struct.hl_hw_queue, ptr %185, i32 %187, i32 6
  %204 = ptrtoint ptr %pi5.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %pi5.i, align 4
  %int_queue_len.i324 = getelementptr %struct.hl_hw_queue, ptr %185, i32 %187, i32 11
  %206 = ptrtoint ptr %int_queue_len.i324 to i32
  call void @__asan_load2_noabort(i32 %206)
  %207 = load i16, ptr %int_queue_len.i324, align 4
  %conv6.i = zext i16 %207 to i32
  %sub.i = add nuw nsw i32 %conv6.i, 268435455
  %and.i325 = and i32 %sub.i, %205
  %mul.i326 = shl i32 %and.i325, 4
  %add.ptr.i = getelementptr i8, ptr %203, i32 %mul.i326
  %inc.i = add i32 %205, 1
  %shl.i = shl nuw nsw i32 %conv6.i, 1
  %sub10.i = add nsw i32 %shl.i, -1
  %and12.i = and i32 %sub10.i, %inc.i
  store i32 %and12.i, ptr %pi5.i, align 4
  %asic_funcs.i327 = getelementptr inbounds %struct.hl_device, ptr %183, i32 0, i32 34
  %208 = ptrtoint ptr %asic_funcs.i327 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %asic_funcs.i327, align 8
  %pqe_write.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %209, i32 0, i32 13
  %210 = ptrtoint ptr %pqe_write.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %pqe_write.i, align 4
  call void %211(ptr noundef %183, ptr noundef %add.ptr.i, ptr noundef nonnull %bd.i) #9
  %212 = ptrtoint ptr %asic_funcs.i327 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %asic_funcs.i327, align 8
  %ring_doorbell.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %213, i32 0, i32 12
  %214 = ptrtoint ptr %ring_doorbell.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %ring_doorbell.i, align 4
  %hw_queue_id14.i = getelementptr %struct.hl_hw_queue, ptr %185, i32 %187, i32 8
  %216 = ptrtoint ptr %hw_queue_id14.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %hw_queue_id14.i, align 4
  %218 = ptrtoint ptr %pi5.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %pi5.i, align 4
  call void %215(ptr noundef %183, i32 noundef %217, i32 noundef %219) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %bd.i) #9
  br label %for.inc142

sw.bb139:                                         ; preds = %for.body135
  %cs.i329 = getelementptr inbounds %struct.hl_cs_job, ptr %job.0397, i32 0, i32 1
  %220 = ptrtoint ptr %cs.i329 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %cs.i329, align 4
  %ctx.i330 = getelementptr inbounds %struct.hl_cs, ptr %221, i32 0, i32 1
  %222 = ptrtoint ptr %ctx.i330 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %ctx.i330, align 4
  %hdev1.i331 = getelementptr inbounds %struct.hl_ctx, ptr %223, i32 0, i32 3
  %224 = ptrtoint ptr %hdev1.i331 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %hdev1.i331, align 4
  %kernel_queues.i332 = getelementptr inbounds %struct.hl_device, ptr %225, i32 0, i32 20
  %226 = ptrtoint ptr %kernel_queues.i332 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %kernel_queues.i332, align 8
  %hw_queue_id.i333 = getelementptr inbounds %struct.hl_cs_job, ptr %job.0397, i32 0, i32 10
  %228 = ptrtoint ptr %hw_queue_id.i333 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %hw_queue_id.i333, align 4
  %sequence.i = getelementptr inbounds %struct.hl_cs, ptr %221, i32 0, i32 13
  %230 = ptrtoint ptr %sequence.i to i32
  call void @__asan_load8_noabort(i32 %230)
  %231 = load i64, ptr %sequence.i, align 8
  %max_pending_cs.i = getelementptr inbounds %struct.hl_device, ptr %225, i32 0, i32 33, i32 48
  %232 = ptrtoint ptr %max_pending_cs.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %max_pending_cs.i, align 8
  %pi.i334 = getelementptr %struct.hl_hw_queue, ptr %227, i32 %229, i32 6
  %234 = ptrtoint ptr %pi.i334 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %pi.i334, align 4
  %job_cb_size.i335 = getelementptr inbounds %struct.hl_cs_job, ptr %job.0397, i32 0, i32 12
  %236 = ptrtoint ptr %job_cb_size.i335 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %job_cb_size.i335, align 4
  %patched_cb.i336 = getelementptr inbounds %struct.hl_cs_job, ptr %job.0397, i32 0, i32 3
  %238 = ptrtoint ptr %patched_cb.i336 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %patched_cb.i336, align 4
  %tobool.not.i337 = icmp eq ptr %239, null
  br i1 %tobool.not.i337, label %if.else.i341, label %if.then.i339

if.then.i339:                                     ; preds = %sw.bb139
  call void @__sanitizer_cov_trace_pc() #11
  %bus_address.i338 = getelementptr inbounds %struct.hl_cb, ptr %239, i32 0, i32 9
  %240 = ptrtoint ptr %bus_address.i338 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %bus_address.i338, align 4
  br label %hw_queue_schedule_job.exit

if.else.i341:                                     ; preds = %sw.bb139
  %is_kernel_allocated_cb.i340 = getelementptr inbounds %struct.hl_cs_job, ptr %job.0397, i32 0, i32 14
  %242 = ptrtoint ptr %is_kernel_allocated_cb.i340 to i32
  call void @__asan_load1_noabort(i32 %242)
  %243 = load i8, ptr %is_kernel_allocated_cb.i340, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %243)
  %tobool9.not.i = icmp eq i8 %243, 0
  %user_cb14.i = getelementptr inbounds %struct.hl_cs_job, ptr %job.0397, i32 0, i32 2
  %244 = ptrtoint ptr %user_cb14.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %user_cb14.i, align 4
  br i1 %tobool9.not.i, label %if.else13.i, label %if.then10.i

if.then10.i:                                      ; preds = %if.else.i341
  call void @__sanitizer_cov_trace_pc() #11
  %bus_address11.i = getelementptr inbounds %struct.hl_cb, ptr %245, i32 0, i32 9
  %246 = ptrtoint ptr %bus_address11.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %bus_address11.i, align 4
  br label %hw_queue_schedule_job.exit

if.else13.i:                                      ; preds = %if.else.i341
  call void @__sanitizer_cov_trace_pc() #11
  %248 = ptrtoint ptr %245 to i32
  br label %hw_queue_schedule_job.exit

hw_queue_schedule_job.exit:                       ; preds = %if.else13.i, %if.then10.i, %if.then.i339
  %ptr.0.in.i = phi i32 [ %241, %if.then.i339 ], [ %247, %if.then10.i ], [ %248, %if.else13.i ]
  %ptr.0.i = zext i32 %ptr.0.in.i to i64
  %sub.i342 = add i32 %233, 4095
  %249 = trunc i64 %231 to i32
  %conv3.i343 = and i32 %sub.i342, %249
  %shl.i344 = shl i32 %conv3.i343, 16
  %and4.i = and i32 %shl.i344, 268369920
  %and6.i = and i32 %235, 65535
  %or.i = or i32 %and4.i, %and6.i
  %kernel_address.i.i345 = getelementptr %struct.hl_hw_queue, ptr %227, i32 %229, i32 4
  %250 = ptrtoint ptr %kernel_address.i.i345 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %kernel_address.i.i345, align 4
  %and.i.i346 = and i32 %235, 4095
  %add.ptr.i.i347 = getelementptr %struct.hl_bd, ptr %251, i32 %and.i.i346
  %252 = call i32 @llvm.bswap.i32(i32 %or.i) #9
  %ctl1.i.i348 = getelementptr %struct.hl_bd, ptr %251, i32 %and.i.i346, i32 2
  %253 = ptrtoint ptr %ctl1.i.i348 to i32
  call void @__asan_store4_noabort(i32 %253)
  store i32 %252, ptr %ctl1.i.i348, align 4
  %254 = call i32 @llvm.bswap.i32(i32 %237) #9
  %len2.i.i349 = getelementptr %struct.hl_bd, ptr %251, i32 %and.i.i346, i32 1
  %255 = ptrtoint ptr %len2.i.i349 to i32
  call void @__asan_store4_noabort(i32 %255)
  store i32 %254, ptr %len2.i.i349, align 8
  %256 = call i64 @llvm.bswap.i64(i64 %ptr.0.i) #9
  %257 = ptrtoint ptr %add.ptr.i.i347 to i32
  call void @__asan_store8_noabort(i32 %257)
  store i64 %256, ptr %add.ptr.i.i347, align 8
  %258 = ptrtoint ptr %pi.i334 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %pi.i334, align 4
  %add.i.i.i350 = add i32 %259, 1
  %and.i.i.i351 = and i32 %add.i.i.i350, 8191
  store i32 %and.i.i.i351, ptr %pi.i334, align 4
  %asic_funcs.i.i352 = getelementptr inbounds %struct.hl_device, ptr %225, i32 0, i32 34
  %260 = ptrtoint ptr %asic_funcs.i.i352 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %asic_funcs.i.i352, align 8
  %ring_doorbell.i.i353 = getelementptr inbounds %struct.hl_asic_funcs, ptr %261, i32 0, i32 12
  %262 = ptrtoint ptr %ring_doorbell.i.i353 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %ring_doorbell.i.i353, align 4
  %hw_queue_id.i.i354 = getelementptr %struct.hl_hw_queue, ptr %227, i32 %229, i32 8
  %264 = ptrtoint ptr %hw_queue_id.i.i354 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %hw_queue_id.i.i354, align 4
  call void %263(ptr noundef %225, i32 noundef %265, i32 noundef %and.i.i.i351) #9
  br label %for.inc142

for.inc142:                                       ; preds = %hw_queue_schedule_job.exit, %int_queue_schedule_job.exit, %ext_queue_schedule_job.exit, %for.body135.for.inc142_crit_edge
  %cmp133.not = icmp eq ptr %tmp.0398, %job_list
  br i1 %cmp133.not, label %for.inc142.for.end148_crit_edge, label %for.inc142.for.body135_crit_edge

for.inc142.for.body135_crit_edge:                 ; preds = %for.inc142
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body135

for.inc142.for.end148_crit_edge:                  ; preds = %for.inc142
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end148

for.end148:                                       ; preds = %for.inc142.for.end148_crit_edge, %if.end120.for.end148_crit_edge
  %submitted = getelementptr inbounds %struct.hl_cs, ptr %cs, i32 0, i32 21
  %266 = ptrtoint ptr %submitted to i32
  call void @__asan_store1_noabort(i32 %266)
  store i8 1, ptr %submitted, align 2
  br label %cleanup177

unlock_cs_mirror:                                 ; preds = %if.end88.unlock_cs_mirror_crit_edge, %if.then78.unlock_cs_mirror_crit_edge
  %.str.9.sink = phi ptr [ @.str.9, %if.then78.unlock_cs_mirror_crit_edge ], [ @.str.12, %if.end88.unlock_cs_mirror_crit_edge ]
  %dev86 = getelementptr inbounds %struct.hl_device, ptr %4, i32 0, i32 6
  %267 = ptrtoint ptr %dev86 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %dev86, align 4
  %269 = ptrtoint ptr %staged_sequence to i32
  call void @__asan_load8_noabort(i32 %269)
  %270 = load i64, ptr %staged_sequence, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %268, ptr noundef nonnull %.str.9.sink, i64 noundef %270) #12
  call void @_raw_spin_unlock(ptr noundef %cs_mirror_lock) #9
  br label %unroll_cq_resv

unroll_cq_resv:                                   ; preds = %unlock_cs_mirror, %if.then67.unroll_cq_resv_crit_edge, %if.then55.unroll_cq_resv_crit_edge, %init_signal_wait_cs.exit.unroll_cq_resv_crit_edge, %if.then31
  %cq_cnt.0377 = phi i32 [ %cq_cnt.0388, %if.then31 ], [ %cq_cnt.0.lcssa, %init_signal_wait_cs.exit.unroll_cq_resv_crit_edge ], [ %cq_cnt.0.lcssa, %if.then67.unroll_cq_resv_crit_edge ], [ %cq_cnt.0.lcssa, %unlock_cs_mirror ], [ %cq_cnt.0.lcssa, %if.then55.unroll_cq_resv_crit_edge ]
  %rc.7 = phi i32 [ %rc.1357, %if.then31 ], [ %rc.0.i, %init_signal_wait_cs.exit.unroll_cq_resv_crit_edge ], [ %call68, %if.then67.unroll_cq_resv_crit_edge ], [ -22, %unlock_cs_mirror ], [ %call57, %if.then55.unroll_cq_resv_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp153399 = icmp ne i32 %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cq_cnt.0377)
  %cmp155400 = icmp sgt i32 %cq_cnt.0377, 0
  %or.cond401 = select i1 %cmp153399, i1 %cmp155400, i1 false
  br i1 %or.cond401, label %for.body157.lr.ph, label %unroll_cq_resv.cleanup177_crit_edge

unroll_cq_resv.cleanup177_crit_edge:              ; preds = %unroll_cq_resv
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup177

for.body157.lr.ph:                                ; preds = %unroll_cq_resv
  %271 = ptrtoint ptr %kernel_queues to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %kernel_queues, align 8
  %completion_queue = getelementptr inbounds %struct.hl_device, ptr %4, i32 0, i32 13
  br label %for.body157

for.body157:                                      ; preds = %for.inc172.for.body157_crit_edge, %for.body157.lr.ph
  %q.1405 = phi ptr [ %272, %for.body157.lr.ph ], [ %incdec.ptr174, %for.inc172.for.body157_crit_edge ]
  %i.1403 = phi i32 [ 0, %for.body157.lr.ph ], [ %inc173, %for.inc172.for.body157_crit_edge ]
  %cq_cnt.2402 = phi i32 [ %cq_cnt.0377, %for.body157.lr.ph ], [ %cq_cnt.3, %for.inc172.for.body157_crit_edge ]
  %queue_type158 = getelementptr inbounds %struct.hl_hw_queue, ptr %q.1405, i32 0, i32 2
  %273 = ptrtoint ptr %queue_type158 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %queue_type158, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %274)
  %cmp159 = icmp eq i32 %274, 1
  br i1 %cmp159, label %land.lhs.true161, label %for.body157.for.inc172_crit_edge

for.body157.for.inc172_crit_edge:                 ; preds = %for.body157
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc172

land.lhs.true161:                                 ; preds = %for.body157
  %275 = ptrtoint ptr %cs to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %cs, align 8
  %arrayidx163 = getelementptr i16, ptr %276, i32 %i.1403
  %277 = ptrtoint ptr %arrayidx163 to i32
  call void @__asan_load2_noabort(i32 %277)
  %278 = load i16, ptr %arrayidx163, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %278)
  %tobool165.not = icmp eq i16 %278, 0
  br i1 %tobool165.not, label %land.lhs.true161.for.inc172_crit_edge, label %if.then166

land.lhs.true161.for.inc172_crit_edge:            ; preds = %land.lhs.true161
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc172

if.then166:                                       ; preds = %land.lhs.true161
  call void @__sanitizer_cov_trace_pc() #11
  %conv164 = zext i16 %278 to i32
  %279 = ptrtoint ptr %completion_queue to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %completion_queue, align 4
  %free_slots_cnt = getelementptr %struct.hl_cq, ptr %280, i32 %i.1403, i32 7
  %call.i.i289 = call zeroext i1 @__kasan_check_write(ptr noundef %free_slots_cnt, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %free_slots_cnt, i32 1, i32 3, i32 1) #9
  %281 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %free_slots_cnt, ptr %free_slots_cnt, i32 %conv164, ptr elementtype(i32) %free_slots_cnt) #9, !srcloc !91
  %dec = add nsw i32 %cq_cnt.2402, -1
  br label %for.inc172

for.inc172:                                       ; preds = %if.then166, %land.lhs.true161.for.inc172_crit_edge, %for.body157.for.inc172_crit_edge
  %cq_cnt.3 = phi i32 [ %dec, %if.then166 ], [ %cq_cnt.2402, %land.lhs.true161.for.inc172_crit_edge ], [ %cq_cnt.2402, %for.body157.for.inc172_crit_edge ]
  %inc173 = add nuw i32 %i.1403, 1
  %incdec.ptr174 = getelementptr %struct.hl_hw_queue, ptr %q.1405, i32 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc173, i32 %14)
  %cmp153 = icmp ult i32 %inc173, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cq_cnt.3)
  %cmp155 = icmp sgt i32 %cq_cnt.3, 0
  %or.cond = select i1 %cmp153, i1 %cmp155, i1 false
  br i1 %or.cond, label %for.inc172.for.body157_crit_edge, label %for.inc172.cleanup177_crit_edge

for.inc172.cleanup177_crit_edge:                  ; preds = %for.inc172
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup177

for.inc172.for.body157_crit_edge:                 ; preds = %for.inc172
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body157

cleanup177:                                       ; preds = %for.inc172.cleanup177_crit_edge, %unroll_cq_resv.cleanup177_crit_edge, %for.end148, %if.then
  %rc.8 = phi i32 [ 0, %for.end148 ], [ -1, %if.then ], [ %rc.7, %unroll_cq_resv.cleanup177_crit_edge ], [ %rc.7, %for.inc172.cleanup177_crit_edge ]
  %282 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %asic_funcs, align 8
  %hw_queues_unlock = getelementptr inbounds %struct.hl_asic_funcs, ptr %283, i32 0, i32 51
  %284 = ptrtoint ptr %hw_queues_unlock to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %hw_queues_unlock, align 4
  call void %285(ptr noundef %4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #9
  ret i32 %rc.8
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @hl_device_operational(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @encaps_sig_first_staged_cs_handler(ptr nocapture noundef readonly %hdev, ptr nocapture noundef readonly %cs) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fence = getelementptr inbounds %struct.hl_cs, ptr %cs, i32 0, i32 5
  %0 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fence, align 8
  %ctx = getelementptr inbounds %struct.hl_cs, ptr %cs, i32 0, i32 1
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx, align 4
  %sig_mgr = getelementptr inbounds %struct.hl_ctx, ptr %3, i32 0, i32 14
  tail call void @_raw_spin_lock(ptr noundef %sig_mgr) #9
  %handles = getelementptr inbounds %struct.hl_ctx, ptr %3, i32 0, i32 14, i32 1
  %encaps_sig_hdl_id = getelementptr inbounds %struct.hl_cs, ptr %cs, i32 0, i32 18
  %4 = ptrtoint ptr %encaps_sig_hdl_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %encaps_sig_hdl_id, align 4
  %call = tail call ptr @idr_find(ptr noundef %handles, i32 noundef %5) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end16, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sequence = getelementptr inbounds %struct.hl_cs, ptr %cs, i32 0, i32 13
  %6 = ptrtoint ptr %sequence to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %sequence, align 8
  %cs_seq = getelementptr inbounds %struct.hl_cs_encaps_sig_handle, ptr %call, i32 0, i32 4
  %8 = ptrtoint ptr %cs_seq to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %cs_seq, align 8
  %encaps_signals = getelementptr inbounds %struct.hl_cs_compl, ptr %1, i32 0, i32 9
  %9 = ptrtoint ptr %encaps_signals to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %encaps_signals, align 8
  %encaps_sig_hdl1 = getelementptr inbounds %struct.hl_cs_compl, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %encaps_sig_hdl1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call, ptr %encaps_sig_hdl1, align 4
  %hw_sob = getelementptr inbounds %struct.hl_cs_encaps_sig_handle, ptr %call, i32 0, i32 2
  %11 = ptrtoint ptr %hw_sob to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw_sob, align 8
  %hw_sob2 = getelementptr inbounds %struct.hl_cs_compl, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %hw_sob2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %hw_sob2, align 8
  %pre_sob_val = getelementptr inbounds %struct.hl_cs_encaps_sig_handle, ptr %call, i32 0, i32 7
  %14 = ptrtoint ptr %pre_sob_val to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pre_sob_val, align 8
  %count = getelementptr inbounds %struct.hl_cs_encaps_sig_handle, ptr %call, i32 0, i32 8
  %16 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %count, align 4
  %add = add i32 %17, %15
  %conv = trunc i32 %add to i16
  %sob_val = getelementptr inbounds %struct.hl_cs_compl, ptr %1, i32 0, i32 7
  %18 = ptrtoint ptr %sob_val to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv, ptr %sob_val, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @encaps_sig_first_staged_cs_handler.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@encaps_sig_first_staged_cs_handler, %if.then8)) #9
          to label %if.end19 [label %if.then8], !srcloc !92

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  %21 = ptrtoint ptr %sequence to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %sequence, align 8
  %id = getelementptr inbounds %struct.hl_cs_encaps_sig_handle, ptr %call, i32 0, i32 5
  %23 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %id, align 8
  %25 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %count, align 4
  %q_idx = getelementptr inbounds %struct.hl_cs_encaps_sig_handle, ptr %call, i32 0, i32 6
  %27 = ptrtoint ptr %q_idx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %q_idx, align 4
  %29 = ptrtoint ptr %hw_sob2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hw_sob2, align 8
  %sob_id = getelementptr inbounds %struct.hl_hw_sob, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %sob_id to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %sob_id, align 4
  %33 = ptrtoint ptr %sob_val to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %sob_val, align 4
  %conv13 = zext i16 %34 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @encaps_sig_first_staged_cs_handler.__UNIQUE_ID_ddebug314, ptr noundef %20, ptr noundef nonnull @.str.32, i64 noundef %22, i32 noundef %24, i32 noundef %26, i32 noundef %28, i32 noundef %32, i32 noundef %conv13) #9
  br label %if.end19

do.end16:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev17 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %35 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev17, align 4
  %37 = ptrtoint ptr %encaps_sig_hdl_id to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %encaps_sig_hdl_id, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.33, i32 noundef %38) #12
  br label %if.end19

if.end19:                                         ; preds = %do.end16, %if.then8, %if.then
  %rc.0 = phi i32 [ 0, %if.then8 ], [ -22, %do.end16 ], [ 0, %if.then ]
  tail call void @_raw_spin_unlock(ptr noundef %sig_mgr) #9
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hl_staged_cs_find_first(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_staged_cs_last_exists(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cs_needs_timeout(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hl_hw_queue_inc_ci_kernel(ptr nocapture noundef readonly %hdev, i32 noundef %hw_queue_id) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %kernel_queues = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 20
  %0 = ptrtoint ptr %kernel_queues to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %kernel_queues, align 8
  %ci = getelementptr %struct.hl_hw_queue, ptr %1, i32 %hw_queue_id, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ci, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %ci, i32 1, i32 3, i32 1) #9
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ci, ptr %ci, i32 1, ptr elementtype(i32) %ci) #9, !srcloc !91
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hl_hw_queues_create(ptr noundef %hdev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %asic_prop = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33
  %max_queues = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 49
  %0 = ptrtoint ptr %max_queues to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_queues, align 4
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 108) #9
  %3 = extractvalue { i32, i1 } %2, 1
  br i1 %3, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !97

kcalloc.exit.thread:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %kernel_queues65 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 20
  %4 = ptrtoint ptr %kernel_queues65 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %kernel_queues65, align 8
  br label %do.end

if.end7.i.i:                                      ; preds = %entry
  %5 = extractvalue { i32, i1 } %2, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %5, i32 noundef 3520) #13
  %kernel_queues = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 20
  %6 = ptrtoint ptr %kernel_queues to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call8.i.i, ptr %kernel_queues, align 8
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.do.end_crit_edge, label %for.cond.preheader

if.end7.i.i.do.end_crit_edge:                     ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

for.cond.preheader:                               ; preds = %if.end7.i.i
  %7 = ptrtoint ptr %max_queues to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %max_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp71.not = icmp eq i32 %8, 0
  br i1 %cmp71.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %asic_funcs.i41.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %dev.i.i33.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %collective_mon_idx24.i.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 95
  %collective_first_mon26.i.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 57
  %sync_stream_queue_idx.i.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 94
  %sync_stream_first_sob.i.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 58
  %sync_stream_first_mon.i.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 59
  br label %for.body

do.end:                                           ; preds = %if.end7.i.i.do.end_crit_edge, %kcalloc.exit.thread
  %dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.14) #12
  br label %cleanup

for.body:                                         ; preds = %queue_init.exit.thread.for.body_crit_edge, %for.body.lr.ph
  %q_ready_cnt.077 = phi i32 [ 0, %for.body.lr.ph ], [ %inc18, %queue_init.exit.thread.for.body_crit_edge ]
  %q.072 = phi ptr [ %call8.i.i, %for.body.lr.ph ], [ %incdec.ptr, %queue_init.exit.thread.for.body_crit_edge ]
  %11 = ptrtoint ptr %asic_prop to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %asic_prop, align 8
  %arrayidx = getelementptr %struct.hw_queue_properties, ptr %12, i32 %q_ready_cnt.077
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  %queue_type = getelementptr inbounds %struct.hl_hw_queue, ptr %q.072, i32 0, i32 2
  %15 = ptrtoint ptr %queue_type to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %queue_type, align 4
  %supports_sync_stream = getelementptr %struct.hw_queue_properties, ptr %12, i32 %q_ready_cnt.077, i32 4
  %16 = ptrtoint ptr %supports_sync_stream to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %supports_sync_stream, align 1
  %supports_sync_stream6 = getelementptr inbounds %struct.hl_hw_queue, ptr %q.072, i32 0, i32 13
  %18 = ptrtoint ptr %supports_sync_stream6 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %supports_sync_stream6, align 1
  %19 = load ptr, ptr %asic_prop, align 8
  %collective_mode = getelementptr %struct.hw_queue_properties, ptr %19, i32 %q_ready_cnt.077, i32 2
  %20 = ptrtoint ptr %collective_mode to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %collective_mode, align 4
  %collective_mode9 = getelementptr inbounds %struct.hl_hw_queue, ptr %q.072, i32 0, i32 3
  %22 = ptrtoint ptr %collective_mode9 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %collective_mode9, align 4
  %hw_queue_id1.i = getelementptr inbounds %struct.hl_hw_queue, ptr %q.072, i32 0, i32 8
  %23 = ptrtoint ptr %hw_queue_id1.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %q_ready_cnt.077, ptr %hw_queue_id1.i, align 4
  %24 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %14, label %do.end.i [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb2.i
    i32 3, label %sw.bb4.i
    i32 4, label %sw.bb6.i
    i32 0, label %for.body.queue_init.exit.thread_crit_edge
  ]

for.body.queue_init.exit.thread_crit_edge:        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %queue_init.exit.thread

sw.bb.i:                                          ; preds = %for.body
  %25 = ptrtoint ptr %asic_funcs.i41.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %asic_funcs.i41.i, align 8
  %asic_dma_alloc_coherent.i.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %26, i32 0, i32 14
  %27 = ptrtoint ptr %asic_dma_alloc_coherent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %asic_dma_alloc_coherent.i.i.i, align 4
  %bus_address2.i.i.i = getelementptr inbounds %struct.hl_hw_queue, ptr %q.072, i32 0, i32 5
  %call3.i.i.i = tail call ptr %28(ptr noundef %hdev, i32 noundef 65536, ptr noundef %bus_address2.i.i.i, i32 noundef 3520) #9
  %tobool4.not.i.i.i = icmp eq ptr %call3.i.i.i, null
  br i1 %tobool4.not.i.i.i, label %sw.bb.i.sw.epilog.i_crit_edge, label %if.end6.i.i.i

sw.bb.i.sw.epilog.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

if.end6.i.i.i:                                    ; preds = %sw.bb.i
  %kernel_address.i.i.i = getelementptr inbounds %struct.hl_hw_queue, ptr %q.072, i32 0, i32 4
  %29 = ptrtoint ptr %kernel_address.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call3.i.i.i, ptr %kernel_address.i.i.i, align 4
  %call1.i.i.i.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 16384, i32 noundef 3264, i32 noundef 2) #13
  %30 = ptrtoint ptr %q.072 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call1.i.i.i.i.i.i, ptr %q.072, align 4
  %tobool9.not.i.i.i = icmp eq ptr %call1.i.i.i.i.i.i, null
  br i1 %tobool9.not.i.i.i, label %do.end.i.i.i, label %if.end11.i.i.i

do.end.i.i.i:                                     ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %dev.i.i33.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i.i33.i, align 4
  %33 = ptrtoint ptr %hw_queue_id1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %hw_queue_id1.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.37, i32 noundef %34) #12
  %35 = ptrtoint ptr %asic_funcs.i41.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %asic_funcs.i41.i, align 8
  %asic_dma_free_coherent.i.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %36, i32 0, i32 15
  %37 = ptrtoint ptr %asic_dma_free_coherent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %asic_dma_free_coherent.i.i.i, align 4
  %39 = ptrtoint ptr %kernel_address.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %kernel_address.i.i.i, align 4
  %41 = ptrtoint ptr %bus_address2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %bus_address2.i.i.i, align 4
  tail call void %38(ptr noundef %hdev, i32 noundef 65536, ptr noundef %40, i32 noundef %42) #9
  br label %sw.epilog.i

if.end11.i.i.i:                                   ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %ci.i.i.i = getelementptr inbounds %struct.hl_hw_queue, ptr %q.072, i32 0, i32 7
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ci.i.i.i, i32 noundef 4) #9
  %43 = ptrtoint ptr %ci.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile i32 0, ptr %ci.i.i.i, align 4
  %pi.i.i.i = getelementptr inbounds %struct.hl_hw_queue, ptr %q.072, i32 0, i32 6
  %44 = ptrtoint ptr %pi.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %pi.i.i.i, align 4
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %for.body
  %45 = ptrtoint ptr %asic_funcs.i41.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %asic_funcs.i41.i, align 8
  %get_int_queue_base.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %46, i32 0, i32 17
  %47 = ptrtoint ptr %get_int_queue_base.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %get_int_queue_base.i.i, align 4
  %bus_address.i.i = getelementptr inbounds %struct.hl_hw_queue, ptr %q.072, i32 0, i32 5
  %int_queue_len.i.i = getelementptr inbounds %struct.hl_hw_queue, ptr %q.072, i32 0, i32 11
  %call.i.i = tail call ptr %48(ptr noundef %hdev, i32 noundef %q_ready_cnt.077, ptr noundef %bus_address.i.i, ptr noundef %int_queue_len.i.i) #9
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %do.end.i.i, label %if.end.i.i61

do.end.i.i:                                       ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %dev.i.i33.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev.i.i33.i, align 4
  %51 = ptrtoint ptr %hw_queue_id1.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %hw_queue_id1.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.39, i32 noundef %52) #12
  br label %sw.epilog.i

if.end.i.i61:                                     ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #11
  %kernel_address.i.i = getelementptr inbounds %struct.hl_hw_queue, ptr %q.072, i32 0, i32 4
  %53 = ptrtoint ptr %kernel_address.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call.i.i, ptr %kernel_address.i.i, align 4
  %pi.i.i = getelementptr inbounds %struct.hl_hw_queue, ptr %q.072, i32 0, i32 6
  %54 = ptrtoint ptr %pi.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %pi.i.i, align 4
  %ci.i.i = getelementptr inbounds %struct.hl_hw_queue, ptr %q.072, i32 0, i32 7
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ci.i.i, i32 noundef 4) #9
  %55 = ptrtoint ptr %ci.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile i32 0, ptr %ci.i.i, align 4
  br label %sw.epilog.i

sw.bb4.i:                                         ; preds = %for.body
  %56 = ptrtoint ptr %asic_funcs.i41.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %asic_funcs.i41.i, align 8
  %cpu_accessible_dma_pool_alloc.i.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %57, i32 0, i32 21
  %58 = ptrtoint ptr %cpu_accessible_dma_pool_alloc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %cpu_accessible_dma_pool_alloc.i.i.i, align 4
  %bus_address.i.i.i = getelementptr inbounds %struct.hl_hw_queue, ptr %q.072, i32 0, i32 5
  %call.i.i.i = tail call ptr %59(ptr noundef %hdev, i32 noundef 65536, ptr noundef %bus_address.i.i.i) #9
  %tobool4.not.i.i28.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool4.not.i.i28.i, label %sw.bb4.i.sw.epilog.i_crit_edge, label %if.end6.i.i32.i

sw.bb4.i.sw.epilog.i_crit_edge:                   ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

if.end6.i.i32.i:                                  ; preds = %sw.bb4.i
  %kernel_address.i.i29.i = getelementptr inbounds %struct.hl_hw_queue, ptr %q.072, i32 0, i32 4
  %60 = ptrtoint ptr %kernel_address.i.i29.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call.i.i.i, ptr %kernel_address.i.i29.i, align 4
  %call1.i.i.i.i.i30.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 16384, i32 noundef 3264, i32 noundef 2) #13
  %61 = ptrtoint ptr %q.072 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call1.i.i.i.i.i30.i, ptr %q.072, align 4
  %tobool9.not.i.i31.i = icmp eq ptr %call1.i.i.i.i.i30.i, null
  br i1 %tobool9.not.i.i31.i, label %do.end.i.i35.i, label %if.end11.i.i39.i

do.end.i.i35.i:                                   ; preds = %if.end6.i.i32.i
  call void @__sanitizer_cov_trace_pc() #11
  %62 = ptrtoint ptr %dev.i.i33.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev.i.i33.i, align 4
  %64 = ptrtoint ptr %hw_queue_id1.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %hw_queue_id1.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.37, i32 noundef %65) #12
  %66 = ptrtoint ptr %asic_funcs.i41.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %asic_funcs.i41.i, align 8
  %cpu_accessible_dma_pool_free.i.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %67, i32 0, i32 22
  %68 = ptrtoint ptr %cpu_accessible_dma_pool_free.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %cpu_accessible_dma_pool_free.i.i.i, align 4
  %70 = ptrtoint ptr %kernel_address.i.i29.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %kernel_address.i.i29.i, align 4
  tail call void %69(ptr noundef %hdev, i32 noundef 65536, ptr noundef %71) #9
  br label %sw.epilog.i

if.end11.i.i39.i:                                 ; preds = %if.end6.i.i32.i
  call void @__sanitizer_cov_trace_pc() #11
  %ci.i.i36.i = getelementptr inbounds %struct.hl_hw_queue, ptr %q.072, i32 0, i32 7
  %call.i.i.i.i37.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ci.i.i36.i, i32 noundef 4) #9
  %72 = ptrtoint ptr %ci.i.i36.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile i32 0, ptr %ci.i.i36.i, align 4
  %pi.i.i38.i = getelementptr inbounds %struct.hl_hw_queue, ptr %q.072, i32 0, i32 6
  %73 = ptrtoint ptr %pi.i.i38.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %pi.i.i38.i, align 4
  br label %sw.epilog.i

sw.bb6.i:                                         ; preds = %for.body
  %74 = ptrtoint ptr %asic_funcs.i41.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %asic_funcs.i41.i, align 8
  %asic_dma_alloc_coherent.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %75, i32 0, i32 14
  %76 = ptrtoint ptr %asic_dma_alloc_coherent.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %asic_dma_alloc_coherent.i.i, align 4
  %bus_address.i42.i = getelementptr inbounds %struct.hl_hw_queue, ptr %q.072, i32 0, i32 5
  %call.i43.i = tail call ptr %77(ptr noundef %hdev, i32 noundef 65536, ptr noundef %bus_address.i42.i, i32 noundef 3520) #9
  %tobool.not.i44.i = icmp eq ptr %call.i43.i, null
  br i1 %tobool.not.i44.i, label %sw.bb6.i.sw.epilog.i_crit_edge, label %if.end.i49.i

sw.bb6.i.sw.epilog.i_crit_edge:                   ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

if.end.i49.i:                                     ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #11
  %kernel_address.i45.i = getelementptr inbounds %struct.hl_hw_queue, ptr %q.072, i32 0, i32 4
  %78 = ptrtoint ptr %kernel_address.i45.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call.i43.i, ptr %kernel_address.i45.i, align 4
  %ci.i46.i = getelementptr inbounds %struct.hl_hw_queue, ptr %q.072, i32 0, i32 7
  %call.i.i.i47.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ci.i46.i, i32 noundef 4) #9
  %79 = ptrtoint ptr %ci.i46.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile i32 0, ptr %ci.i46.i, align 4
  %pi.i48.i = getelementptr inbounds %struct.hl_hw_queue, ptr %q.072, i32 0, i32 6
  %80 = ptrtoint ptr %pi.i48.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %pi.i48.i, align 4
  br label %sw.epilog.i

do.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %81 = ptrtoint ptr %dev.i.i33.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev.i.i33.i, align 4
  tail call void (ptr, ptr, ...) @_dev_crit(ptr noundef %82, ptr noundef nonnull @.str.34, i32 noundef %14) #12
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %do.end.i, %if.end.i49.i, %sw.bb6.i.sw.epilog.i_crit_edge, %if.end11.i.i39.i, %do.end.i.i35.i, %sw.bb4.i.sw.epilog.i_crit_edge, %if.end.i.i61, %do.end.i.i, %if.end11.i.i.i, %do.end.i.i.i, %sw.bb.i.sw.epilog.i_crit_edge
  %tobool.not.i = phi i1 [ true, %if.end.i49.i ], [ false, %sw.bb6.i.sw.epilog.i_crit_edge ], [ true, %if.end11.i.i39.i ], [ false, %do.end.i.i35.i ], [ false, %sw.bb4.i.sw.epilog.i_crit_edge ], [ true, %if.end.i.i61 ], [ false, %do.end.i.i ], [ true, %if.end11.i.i.i ], [ false, %do.end.i.i.i ], [ false, %sw.bb.i.sw.epilog.i_crit_edge ], [ false, %do.end.i ]
  %rc.0.i = phi i32 [ 0, %if.end.i49.i ], [ -12, %sw.bb6.i.sw.epilog.i_crit_edge ], [ 0, %if.end11.i.i39.i ], [ -12, %do.end.i.i35.i ], [ -12, %sw.bb4.i.sw.epilog.i_crit_edge ], [ 0, %if.end.i.i61 ], [ -14, %do.end.i.i ], [ 0, %if.end11.i.i.i ], [ -12, %do.end.i.i.i ], [ -12, %sw.bb.i.sw.epilog.i_crit_edge ], [ -22, %do.end.i ]
  %83 = ptrtoint ptr %hw_queue_id1.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %hw_queue_id1.i, align 4
  %85 = ptrtoint ptr %kernel_queues to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %kernel_queues, align 8
  %sync_stream_prop1.i.i = getelementptr %struct.hl_hw_queue, ptr %86, i32 %84, i32 1
  %collective_mode.i.i = getelementptr %struct.hl_hw_queue, ptr %86, i32 %84, i32 3
  %87 = ptrtoint ptr %collective_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %collective_mode.i.i, align 4
  %89 = zext i32 %88 to i64
  call void @__sanitizer_cov_trace_switch(i64 %89, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %88, label %sw.epilog.i.if.end30.i.i_crit_edge [
    i32 1, label %if.then.i.i
    i32 2, label %if.then23.i.i
  ]

sw.epilog.i.if.end30.i.i_crit_edge:               ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30.i.i

if.then.i.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  %90 = ptrtoint ptr %collective_mon_idx24.i.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %collective_mon_idx24.i.i, align 1
  %conv.i.i = zext i8 %91 to i16
  %92 = ptrtoint ptr %collective_first_mon26.i.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %collective_first_mon26.i.i, align 2
  %conv5.i.i = add i16 %93, %conv.i.i
  %collective_mstr_mon_id.i.i = getelementptr %struct.hl_hw_queue, ptr %86, i32 %84, i32 1, i32 4
  %94 = ptrtoint ptr %collective_mstr_mon_id.i.i to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 %conv5.i.i, ptr %collective_mstr_mon_id.i.i, align 2
  %95 = load i16, ptr %collective_first_mon26.i.i, align 2
  %add9.i.i = add nuw nsw i16 %conv.i.i, 1
  %add10.i.i = add i16 %add9.i.i, %95
  %arrayidx13.i.i = getelementptr %struct.hl_hw_queue, ptr %86, i32 %84, i32 1, i32 4, i32 1
  %96 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 %add10.i.i, ptr %arrayidx13.i.i, align 2
  %97 = load i8, ptr %collective_mon_idx24.i.i, align 1
  %add16.i.i = add i8 %97, 2
  store i8 %add16.i.i, ptr %collective_mon_idx24.i.i, align 1
  br label %if.end30.i.i

if.then23.i.i:                                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  %98 = ptrtoint ptr %collective_mon_idx24.i.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %collective_mon_idx24.i.i, align 1
  %inc.i.i = add i8 %99, 1
  store i8 %inc.i.i, ptr %collective_mon_idx24.i.i, align 1
  %conv25.i.i = zext i8 %99 to i16
  %100 = ptrtoint ptr %collective_first_mon26.i.i to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %collective_first_mon26.i.i, align 2
  %add28.i.i = add i16 %101, %conv25.i.i
  %collective_slave_mon_id.i.i = getelementptr %struct.hl_hw_queue, ptr %86, i32 %84, i32 1, i32 5
  %102 = ptrtoint ptr %collective_slave_mon_id.i.i to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 %add28.i.i, ptr %collective_slave_mon_id.i.i, align 2
  br label %if.end30.i.i

if.end30.i.i:                                     ; preds = %if.then23.i.i, %if.then.i.i, %sw.epilog.i.if.end30.i.i_crit_edge
  %103 = ptrtoint ptr %kernel_queues to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %kernel_queues, align 8
  %supports_sync_stream.i.i = getelementptr %struct.hl_hw_queue, ptr %104, i32 %84, i32 13
  %105 = ptrtoint ptr %supports_sync_stream.i.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %supports_sync_stream.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool.not.i51.i = icmp eq i8 %106, 0
  br i1 %tobool.not.i51.i, label %if.end30.i.i.sync_stream_queue_init.exit.i_crit_edge, label %if.end34.i.i

if.end30.i.i.sync_stream_queue_init.exit.i_crit_edge: ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sync_stream_queue_init.exit.i

if.end34.i.i:                                     ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %107 = ptrtoint ptr %sync_stream_queue_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %sync_stream_queue_idx.i.i, align 2
  %inc35.i.i = add i8 %108, 1
  store i8 %inc35.i.i, ptr %sync_stream_queue_idx.i.i, align 2
  %conv36.i.i = zext i8 %108 to i16
  %109 = ptrtoint ptr %sync_stream_first_sob.i.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %sync_stream_first_sob.i.i, align 4
  %111 = shl nuw nsw i16 %conv36.i.i, 1
  %conv39.i.i = add i16 %111, %110
  %base_sob_id.i.i = getelementptr %struct.hl_hw_queue, ptr %86, i32 %84, i32 1, i32 2
  %112 = ptrtoint ptr %base_sob_id.i.i to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 %conv39.i.i, ptr %base_sob_id.i.i, align 2
  %113 = ptrtoint ptr %sync_stream_first_mon.i.i to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %sync_stream_first_mon.i.i, align 2
  %add42.i.i = add i16 %114, %conv36.i.i
  %base_mon_id.i.i = getelementptr %struct.hl_hw_queue, ptr %86, i32 %84, i32 1, i32 3
  %115 = ptrtoint ptr %base_mon_id.i.i to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 %add42.i.i, ptr %base_mon_id.i.i, align 4
  %next_sob_val.i.i = getelementptr %struct.hl_hw_queue, ptr %86, i32 %84, i32 1, i32 1
  %116 = ptrtoint ptr %next_sob_val.i.i to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 1, ptr %next_sob_val.i.i, align 4
  %curr_sob_offset.i.i = getelementptr %struct.hl_hw_queue, ptr %86, i32 %84, i32 1, i32 7
  %117 = ptrtoint ptr %curr_sob_offset.i.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 0, ptr %curr_sob_offset.i.i, align 2
  %118 = ptrtoint ptr %sync_stream_prop1.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %hdev, ptr %sync_stream_prop1.i.i, align 4
  %conv50.i.i = zext i16 %conv39.i.i to i32
  %sob_id.i.i = getelementptr [2 x %struct.hl_hw_sob], ptr %sync_stream_prop1.i.i, i32 0, i32 0, i32 2
  %119 = ptrtoint ptr %sob_id.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %conv50.i.i, ptr %sob_id.i.i, align 4
  %120 = ptrtoint ptr %asic_funcs.i41.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %asic_funcs.i41.i, align 8
  %get_sob_addr.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %121, i32 0, i32 87
  %122 = ptrtoint ptr %get_sob_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %get_sob_addr.i.i, align 4
  %call.i53.i = tail call i32 %123(ptr noundef %hdev, i32 noundef %conv50.i.i) #9
  %sob_addr.i.i = getelementptr [2 x %struct.hl_hw_sob], ptr %sync_stream_prop1.i.i, i32 0, i32 0, i32 3
  %124 = ptrtoint ptr %sob_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %call.i53.i, ptr %sob_addr.i.i, align 4
  %q_idx53.i.i = getelementptr [2 x %struct.hl_hw_sob], ptr %sync_stream_prop1.i.i, i32 0, i32 0, i32 4
  %125 = ptrtoint ptr %q_idx53.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %84, ptr %q_idx53.i.i, align 4
  %kref.i.i = getelementptr [2 x %struct.hl_hw_sob], ptr %sync_stream_prop1.i.i, i32 0, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i.i, i32 noundef 4) #9
  %126 = ptrtoint ptr %kref.i.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store volatile i32 1, ptr %kref.i.i, align 4
  %arrayidx47.1.i.i = getelementptr [2 x %struct.hl_hw_sob], ptr %sync_stream_prop1.i.i, i32 0, i32 1
  %127 = ptrtoint ptr %arrayidx47.1.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %hdev, ptr %arrayidx47.1.i.i, align 4
  %128 = ptrtoint ptr %base_sob_id.i.i to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %base_sob_id.i.i, align 2
  %conv50.1.i.i = zext i16 %129 to i32
  %add51.1.i.i = add nuw nsw i32 %conv50.1.i.i, 1
  %sob_id.1.i.i = getelementptr [2 x %struct.hl_hw_sob], ptr %sync_stream_prop1.i.i, i32 0, i32 1, i32 2
  %130 = ptrtoint ptr %sob_id.1.i.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %add51.1.i.i, ptr %sob_id.1.i.i, align 4
  %131 = ptrtoint ptr %asic_funcs.i41.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %asic_funcs.i41.i, align 8
  %get_sob_addr.1.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %132, i32 0, i32 87
  %133 = ptrtoint ptr %get_sob_addr.1.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %get_sob_addr.1.i.i, align 4
  %call.1.i.i = tail call i32 %134(ptr noundef %hdev, i32 noundef %add51.1.i.i) #9
  %sob_addr.1.i.i = getelementptr [2 x %struct.hl_hw_sob], ptr %sync_stream_prop1.i.i, i32 0, i32 1, i32 3
  %135 = ptrtoint ptr %sob_addr.1.i.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %call.1.i.i, ptr %sob_addr.1.i.i, align 4
  %q_idx53.1.i.i = getelementptr [2 x %struct.hl_hw_sob], ptr %sync_stream_prop1.i.i, i32 0, i32 1, i32 4
  %136 = ptrtoint ptr %q_idx53.1.i.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %84, ptr %q_idx53.1.i.i, align 4
  %kref.1.i.i = getelementptr [2 x %struct.hl_hw_sob], ptr %sync_stream_prop1.i.i, i32 0, i32 1, i32 1
  %call.i.i.i.i.1.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.1.i.i, i32 noundef 4) #9
  %137 = ptrtoint ptr %kref.1.i.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store volatile i32 1, ptr %kref.1.i.i, align 4
  br label %sync_stream_queue_init.exit.i

sync_stream_queue_init.exit.i:                    ; preds = %if.end34.i.i, %if.end30.i.i.sync_stream_queue_init.exit.i_crit_edge
  br i1 %tobool.not.i, label %sync_stream_queue_init.exit.i.queue_init.exit.thread_crit_edge, label %do.end15

sync_stream_queue_init.exit.i.queue_init.exit.thread_crit_edge: ; preds = %sync_stream_queue_init.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %queue_init.exit.thread

queue_init.exit.thread:                           ; preds = %sync_stream_queue_init.exit.i.queue_init.exit.thread_crit_edge, %for.body.queue_init.exit.thread_crit_edge
  %.sink.i = phi i8 [ 0, %for.body.queue_init.exit.thread_crit_edge ], [ 1, %sync_stream_queue_init.exit.i.queue_init.exit.thread_crit_edge ]
  %valid11.i = getelementptr inbounds %struct.hl_hw_queue, ptr %q.072, i32 0, i32 12
  %138 = ptrtoint ptr %valid11.i to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 %.sink.i, ptr %valid11.i, align 2
  %inc18 = add nuw i32 %q_ready_cnt.077, 1
  %incdec.ptr = getelementptr %struct.hl_hw_queue, ptr %q.072, i32 1
  %139 = ptrtoint ptr %max_queues to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %max_queues, align 4
  %cmp = icmp ult i32 %inc18, %140
  br i1 %cmp, label %queue_init.exit.thread.for.body_crit_edge, label %queue_init.exit.thread.cleanup_crit_edge

queue_init.exit.thread.cleanup_crit_edge:         ; preds = %queue_init.exit.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

queue_init.exit.thread.for.body_crit_edge:        ; preds = %queue_init.exit.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

do.end15:                                         ; preds = %sync_stream_queue_init.exit.i
  %141 = ptrtoint ptr %dev.i.i33.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %dev.i.i33.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %142, ptr noundef nonnull @.str.17, i32 noundef %q_ready_cnt.077) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %q_ready_cnt.077)
  %cmp2179 = icmp sgt i32 %q_ready_cnt.077, 0
  br i1 %cmp2179, label %for.body22.lr.ph, label %do.end15.for.end26_crit_edge

do.end15.for.end26_crit_edge:                     ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end26

for.body22.lr.ph:                                 ; preds = %do.end15
  %143 = ptrtoint ptr %kernel_queues to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %kernel_queues, align 8
  br label %for.body22

for.body22:                                       ; preds = %queue_fini.exit.for.body22_crit_edge, %for.body22.lr.ph
  %i.182 = phi i32 [ 0, %for.body22.lr.ph ], [ %inc24, %queue_fini.exit.for.body22_crit_edge ]
  %q.180 = phi ptr [ %144, %for.body22.lr.ph ], [ %incdec.ptr25, %queue_fini.exit.for.body22_crit_edge ]
  %valid.i = getelementptr inbounds %struct.hl_hw_queue, ptr %q.180, i32 0, i32 12
  %145 = ptrtoint ptr %valid.i to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %valid.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %146)
  %tobool.not.i62 = icmp eq i8 %146, 0
  br i1 %tobool.not.i62, label %for.body22.queue_fini.exit_crit_edge, label %if.end.i

for.body22.queue_fini.exit_crit_edge:             ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #11
  br label %queue_fini.exit

if.end.i:                                         ; preds = %for.body22
  %queue_type.i63 = getelementptr inbounds %struct.hl_hw_queue, ptr %q.180, i32 0, i32 2
  %147 = ptrtoint ptr %queue_type.i63 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %queue_type.i63, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %148)
  %cmp.i = icmp eq i32 %148, 2
  br i1 %cmp.i, label %if.end.i.queue_fini.exit_crit_edge, label %if.end2.i

if.end.i.queue_fini.exit_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %queue_fini.exit

if.end2.i:                                        ; preds = %if.end.i
  %149 = ptrtoint ptr %q.180 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %q.180, align 4
  tail call void @kfree(ptr noundef %150) #9
  %151 = ptrtoint ptr %queue_type.i63 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %queue_type.i63, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %152)
  %cmp4.i = icmp eq i32 %152, 3
  %153 = ptrtoint ptr %asic_funcs.i41.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %asic_funcs.i41.i, align 8
  br i1 %cmp4.i, label %if.then5.i, label %if.else.i

if.then5.i:                                       ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #11
  %cpu_accessible_dma_pool_free.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %154, i32 0, i32 22
  %155 = ptrtoint ptr %cpu_accessible_dma_pool_free.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %cpu_accessible_dma_pool_free.i, align 4
  %kernel_address.i = getelementptr inbounds %struct.hl_hw_queue, ptr %q.180, i32 0, i32 4
  %157 = ptrtoint ptr %kernel_address.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %kernel_address.i, align 4
  tail call void %156(ptr noundef %hdev, i32 noundef 65536, ptr noundef %158) #9
  br label %queue_fini.exit

if.else.i:                                        ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #11
  %asic_dma_free_coherent.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %154, i32 0, i32 15
  %159 = ptrtoint ptr %asic_dma_free_coherent.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %asic_dma_free_coherent.i, align 4
  %kernel_address7.i = getelementptr inbounds %struct.hl_hw_queue, ptr %q.180, i32 0, i32 4
  %161 = ptrtoint ptr %kernel_address7.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %kernel_address7.i, align 4
  %bus_address.i = getelementptr inbounds %struct.hl_hw_queue, ptr %q.180, i32 0, i32 5
  %163 = ptrtoint ptr %bus_address.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %bus_address.i, align 4
  tail call void %160(ptr noundef %hdev, i32 noundef 65536, ptr noundef %162, i32 noundef %164) #9
  br label %queue_fini.exit

queue_fini.exit:                                  ; preds = %if.else.i, %if.then5.i, %if.end.i.queue_fini.exit_crit_edge, %for.body22.queue_fini.exit_crit_edge
  %inc24 = add nuw nsw i32 %i.182, 1
  %incdec.ptr25 = getelementptr %struct.hl_hw_queue, ptr %q.180, i32 1
  %exitcond.not = icmp eq i32 %inc24, %q_ready_cnt.077
  br i1 %exitcond.not, label %queue_fini.exit.for.end26_crit_edge, label %queue_fini.exit.for.body22_crit_edge

queue_fini.exit.for.body22_crit_edge:             ; preds = %queue_fini.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body22

queue_fini.exit.for.end26_crit_edge:              ; preds = %queue_fini.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end26

for.end26:                                        ; preds = %queue_fini.exit.for.end26_crit_edge, %do.end15.for.end26_crit_edge
  %165 = ptrtoint ptr %kernel_queues to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %kernel_queues, align 8
  tail call void @kfree(ptr noundef %166) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end26, %queue_init.exit.thread.cleanup_crit_edge, %do.end, %for.cond.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0.i, %for.end26 ], [ -12, %do.end ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %queue_init.exit.thread.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hl_hw_queues_destroy(ptr noundef %hdev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %max_queues1 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 49
  %0 = ptrtoint ptr %max_queues1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_queues1, align 4
  %kernel_queues = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp8.not = icmp eq i32 %1, 0
  br i1 %cmp8.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %2 = ptrtoint ptr %kernel_queues to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %kernel_queues, align 8
  %asic_funcs.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  br label %for.body

for.body:                                         ; preds = %queue_fini.exit.for.body_crit_edge, %for.body.lr.ph
  %i.011 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %queue_fini.exit.for.body_crit_edge ]
  %q.09 = phi ptr [ %3, %for.body.lr.ph ], [ %incdec.ptr, %queue_fini.exit.for.body_crit_edge ]
  %valid.i = getelementptr inbounds %struct.hl_hw_queue, ptr %q.09, i32 0, i32 12
  %4 = ptrtoint ptr %valid.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %valid.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %for.body.queue_fini.exit_crit_edge, label %if.end.i

for.body.queue_fini.exit_crit_edge:               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %queue_fini.exit

if.end.i:                                         ; preds = %for.body
  %queue_type.i = getelementptr inbounds %struct.hl_hw_queue, ptr %q.09, i32 0, i32 2
  %6 = ptrtoint ptr %queue_type.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %queue_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp.i = icmp eq i32 %7, 2
  br i1 %cmp.i, label %if.end.i.queue_fini.exit_crit_edge, label %if.end2.i

if.end.i.queue_fini.exit_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %queue_fini.exit

if.end2.i:                                        ; preds = %if.end.i
  %8 = ptrtoint ptr %q.09 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %q.09, align 4
  tail call void @kfree(ptr noundef %9) #9
  %10 = ptrtoint ptr %queue_type.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %queue_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %cmp4.i = icmp eq i32 %11, 3
  %12 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %asic_funcs.i, align 8
  br i1 %cmp4.i, label %if.then5.i, label %if.else.i

if.then5.i:                                       ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #11
  %cpu_accessible_dma_pool_free.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %13, i32 0, i32 22
  %14 = ptrtoint ptr %cpu_accessible_dma_pool_free.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cpu_accessible_dma_pool_free.i, align 4
  %kernel_address.i = getelementptr inbounds %struct.hl_hw_queue, ptr %q.09, i32 0, i32 4
  %16 = ptrtoint ptr %kernel_address.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %kernel_address.i, align 4
  tail call void %15(ptr noundef %hdev, i32 noundef 65536, ptr noundef %17) #9
  br label %queue_fini.exit

if.else.i:                                        ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #11
  %asic_dma_free_coherent.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %13, i32 0, i32 15
  %18 = ptrtoint ptr %asic_dma_free_coherent.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %asic_dma_free_coherent.i, align 4
  %kernel_address7.i = getelementptr inbounds %struct.hl_hw_queue, ptr %q.09, i32 0, i32 4
  %20 = ptrtoint ptr %kernel_address7.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %kernel_address7.i, align 4
  %bus_address.i = getelementptr inbounds %struct.hl_hw_queue, ptr %q.09, i32 0, i32 5
  %22 = ptrtoint ptr %bus_address.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bus_address.i, align 4
  tail call void %19(ptr noundef %hdev, i32 noundef 65536, ptr noundef %21, i32 noundef %23) #9
  br label %queue_fini.exit

queue_fini.exit:                                  ; preds = %if.else.i, %if.then5.i, %if.end.i.queue_fini.exit_crit_edge, %for.body.queue_fini.exit_crit_edge
  %inc = add nuw i32 %i.011, 1
  %incdec.ptr = getelementptr %struct.hl_hw_queue, ptr %q.09, i32 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %queue_fini.exit.for.end_crit_edge, label %queue_fini.exit.for.body_crit_edge

queue_fini.exit.for.body_crit_edge:               ; preds = %queue_fini.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

queue_fini.exit.for.end_crit_edge:                ; preds = %queue_fini.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %queue_fini.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %24 = ptrtoint ptr %kernel_queues to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %kernel_queues, align 8
  tail call void @kfree(ptr noundef %25) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hl_hw_queue_reset(ptr nocapture noundef readonly %hdev, i1 noundef zeroext %hard_reset) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %max_queues1 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 49
  %0 = ptrtoint ptr %max_queues1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_queues1, align 4
  %kernel_queues = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp16.not = icmp eq i32 %1, 0
  br i1 %cmp16.not, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %2 = ptrtoint ptr %kernel_queues to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %kernel_queues, align 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.020 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %q.017 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %3, %for.body.preheader ]
  %valid = getelementptr inbounds %struct.hl_hw_queue, ptr %q.017, i32 0, i32 12
  %4 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %valid, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %lor.lhs.false

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  br i1 %hard_reset, label %lor.lhs.false.if.end_crit_edge, label %land.lhs.true

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %queue_type = getelementptr inbounds %struct.hl_hw_queue, ptr %q.017, i32 0, i32 2
  %6 = ptrtoint ptr %queue_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %queue_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp3 = icmp eq i32 %7, 3
  br i1 %cmp3, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %pi = getelementptr inbounds %struct.hl_hw_queue, ptr %q.017, i32 0, i32 6
  %8 = ptrtoint ptr %pi to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %pi, align 4
  %ci = getelementptr inbounds %struct.hl_hw_queue, ptr %q.017, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ci, i32 noundef 4) #9
  %9 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 0, ptr %ci, align 4
  %supports_sync_stream = getelementptr inbounds %struct.hl_hw_queue, ptr %q.017, i32 0, i32 13
  %10 = ptrtoint ptr %supports_sync_stream to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %supports_sync_stream, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool4.not = icmp eq i8 %11, 0
  br i1 %tobool4.not, label %if.end.for.inc_crit_edge, label %if.then5

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %hw_queue_id = getelementptr inbounds %struct.hl_hw_queue, ptr %q.017, i32 0, i32 8
  %12 = ptrtoint ptr %hw_queue_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hw_queue_id, align 4
  %14 = ptrtoint ptr %kernel_queues to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %kernel_queues, align 8
  %sync_stream_prop.i = getelementptr %struct.hl_hw_queue, ptr %15, i32 %13, i32 1
  %curr_sob_offset.i = getelementptr %struct.hl_hw_queue, ptr %15, i32 %13, i32 1, i32 7
  %16 = ptrtoint ptr %curr_sob_offset.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %curr_sob_offset.i, align 2
  %idxprom.i = zext i8 %17 to i32
  %kref.i = getelementptr [2 x %struct.hl_hw_sob], ptr %sync_stream_prop.i, i32 0, i32 %idxprom.i, i32 1
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #9
  %18 = ptrtoint ptr %kref.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile i32 1, ptr %kref.i, align 4
  %19 = ptrtoint ptr %curr_sob_offset.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %curr_sob_offset.i, align 2
  %next_sob_val.i = getelementptr %struct.hl_hw_queue, ptr %15, i32 %13, i32 1, i32 1
  %20 = ptrtoint ptr %next_sob_val.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 1, ptr %next_sob_val.i, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then5, %if.end.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.020, 1
  %incdec.ptr = getelementptr %struct.hl_hw_queue, ptr %q.017, i32 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_add(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @init_signal_cs(ptr noundef %hdev, ptr nocapture noundef readonly %job, ptr nocapture noundef %cs_cmpl) unnamed_addr #1 align 64 {
entry:
  %hw_sob = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hw_sob) #9
  %hw_queue_id = getelementptr inbounds %struct.hl_cs_job, ptr %job, i32 0, i32 10
  %0 = ptrtoint ptr %hw_queue_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hw_queue_id, align 4
  %kernel_queues = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 20
  %2 = ptrtoint ptr %kernel_queues to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %kernel_queues, align 8
  %sync_stream_prop = getelementptr %struct.hl_hw_queue, ptr %3, i32 %1, i32 1
  %curr_sob_offset = getelementptr %struct.hl_hw_queue, ptr %3, i32 %1, i32 1, i32 7
  %4 = ptrtoint ptr %curr_sob_offset to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %curr_sob_offset, align 2
  %idxprom = zext i8 %5 to i32
  %arrayidx2 = getelementptr [2 x %struct.hl_hw_sob], ptr %sync_stream_prop, i32 0, i32 %idxprom
  %6 = ptrtoint ptr %hw_sob to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %arrayidx2, ptr %hw_sob, align 4
  %hw_sob3 = getelementptr inbounds %struct.hl_cs_compl, ptr %cs_cmpl, i32 0, i32 3
  %7 = ptrtoint ptr %hw_sob3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %arrayidx2, ptr %hw_sob3, align 8
  %next_sob_val = getelementptr %struct.hl_hw_queue, ptr %3, i32 %1, i32 1, i32 1
  %8 = ptrtoint ptr %next_sob_val to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %next_sob_val, align 4
  %sob_val = getelementptr inbounds %struct.hl_cs_compl, ptr %cs_cmpl, i32 0, i32 7
  %10 = ptrtoint ptr %sob_val to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %sob_val, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @init_signal_cs.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@init_signal_cs, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !92

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %13 = ptrtoint ptr %hw_sob3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw_sob3, align 8
  %sob_id = getelementptr inbounds %struct.hl_hw_sob, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %sob_id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sob_id, align 4
  %17 = ptrtoint ptr %sob_val to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %sob_val, align 4
  %conv = zext i16 %18 to i32
  %cs_seq = getelementptr inbounds %struct.hl_cs_compl, ptr %cs_cmpl, i32 0, i32 5
  %19 = ptrtoint ptr %cs_seq to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %cs_seq, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @init_signal_cs.__UNIQUE_ID_ddebug311, ptr noundef %12, ptr noundef nonnull @.str.27, i32 noundef %16, i32 noundef %conv, i32 noundef %1, i64 noundef %20) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %asic_funcs = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %21 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %asic_funcs, align 8
  %gen_signal_cb = getelementptr inbounds %struct.hl_asic_funcs, ptr %22, i32 0, i32 68
  %23 = ptrtoint ptr %gen_signal_cb to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %gen_signal_cb, align 4
  %patched_cb = getelementptr inbounds %struct.hl_cs_job, ptr %job, i32 0, i32 3
  %25 = ptrtoint ptr %patched_cb to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %patched_cb, align 4
  %27 = ptrtoint ptr %hw_sob3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hw_sob3, align 8
  %sob_id9 = getelementptr inbounds %struct.hl_hw_sob, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %sob_id9 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sob_id9, align 4
  %conv10 = trunc i32 %30 to i16
  %call11 = tail call i32 %24(ptr noundef %hdev, ptr noundef %26, i16 noundef zeroext %conv10, i32 noundef 0, i1 noundef zeroext true) #9
  %call12 = call i32 @hl_cs_signal_sob_wraparound_handler(ptr noundef %hdev, i32 noundef %1, ptr noundef nonnull %hw_sob, i32 noundef 1, i1 noundef zeroext false) #9
  %31 = ptrtoint ptr %hw_sob to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hw_sob, align 4
  %sob_addr = getelementptr inbounds %struct.hl_hw_sob, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %sob_addr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sob_addr, align 4
  %cs = getelementptr inbounds %struct.hl_cs_job, ptr %job, i32 0, i32 1
  %35 = ptrtoint ptr %cs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cs, align 4
  %sob_addr_offset = getelementptr inbounds %struct.hl_cs, ptr %36, i32 0, i32 19
  %37 = ptrtoint ptr %sob_addr_offset to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %34, ptr %sob_addr_offset, align 8
  %38 = ptrtoint ptr %next_sob_val to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %next_sob_val, align 4
  %sub = add i16 %39, -1
  %40 = load ptr, ptr %cs, align 4
  %initial_sob_count = getelementptr inbounds %struct.hl_cs, ptr %40, i32 0, i32 20
  %41 = ptrtoint ptr %initial_sob_count to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %sub, ptr %initial_sob_count, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hw_sob) #9
  ret i32 %call12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @init_wait_cs(ptr noundef %hdev, ptr nocapture noundef %cs, ptr nocapture noundef readonly %job, ptr nocapture noundef %cs_cmpl) unnamed_addr #1 align 64 {
entry:
  %wait_prop = alloca %struct.hl_gen_wait_properties, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait_prop) #9
  %0 = call ptr @memset(ptr %wait_prop, i32 255, i32 20)
  %hw_queue_id = getelementptr inbounds %struct.hl_cs_job, ptr %job, i32 0, i32 10
  %1 = ptrtoint ptr %hw_queue_id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %hw_queue_id, align 4
  %kernel_queues = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 20
  %3 = ptrtoint ptr %kernel_queues to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %kernel_queues, align 8
  %signal_fence = getelementptr inbounds %struct.hl_cs, ptr %cs, i32 0, i32 6
  %5 = ptrtoint ptr %signal_fence to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %signal_fence, align 4
  %encaps_signals = getelementptr inbounds %struct.hl_cs, ptr %cs, i32 0, i32 31
  %7 = ptrtoint ptr %encaps_signals to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %encaps_signals, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %encaps_sig_hdl.i = getelementptr inbounds %struct.hl_cs, ptr %cs, i32 0, i32 12
  %9 = ptrtoint ptr %encaps_sig_hdl.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %encaps_sig_hdl.i, align 8
  %hw_sob.i = getelementptr inbounds %struct.hl_cs_encaps_sig_handle, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %hw_sob.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw_sob.i, align 8
  %hw_sob1.i = getelementptr inbounds %struct.hl_cs_compl, ptr %cs_cmpl, i32 0, i32 3
  %13 = ptrtoint ptr %hw_sob1.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %hw_sob1.i, align 8
  %encaps_sig_wait_offset.i = getelementptr inbounds %struct.hl_cs_job, ptr %job, i32 0, i32 13
  %14 = ptrtoint ptr %encaps_sig_wait_offset.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %encaps_sig_wait_offset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  %sub.i = add i32 %15, 65535
  %spec.select.i = select i1 %tobool.not.i, i32 0, i32 %sub.i
  %pre_sob_val.i = getelementptr inbounds %struct.hl_cs_encaps_sig_handle, ptr %10, i32 0, i32 7
  %16 = ptrtoint ptr %pre_sob_val.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pre_sob_val.i, align 8
  %add.i = add i32 %spec.select.i, %17
  %conv.i = trunc i32 %add.i to i16
  %sob_val.i = getelementptr inbounds %struct.hl_cs_compl, ptr %cs_cmpl, i32 0, i32 7
  %18 = ptrtoint ptr %sob_val.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv.i, ptr %sob_val.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @init_wait_cs.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@init_wait_cs, %if.then5)) #9
          to label %if.end11 [label %if.then5], !srcloc !92

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  %21 = ptrtoint ptr %encaps_sig_hdl.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %encaps_sig_hdl.i, align 8
  %q_idx6 = getelementptr inbounds %struct.hl_cs_encaps_sig_handle, ptr %22, i32 0, i32 6
  %23 = ptrtoint ptr %q_idx6 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %q_idx6, align 4
  %cs_seq = getelementptr inbounds %struct.hl_cs_encaps_sig_handle, ptr %22, i32 0, i32 4
  %25 = ptrtoint ptr %cs_seq to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %cs_seq, align 8
  %27 = ptrtoint ptr %sob_val.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %sob_val.i, align 4
  %conv = zext i16 %28 to i32
  %29 = ptrtoint ptr %encaps_sig_wait_offset.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %encaps_sig_wait_offset.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @init_wait_cs.__UNIQUE_ID_ddebug312, ptr noundef %20, ptr noundef nonnull @.str.29, i32 noundef %24, i64 noundef %26, i32 noundef %conv, i32 noundef %30) #9
  br label %if.end11

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %hw_sob = getelementptr inbounds %struct.hl_cs_compl, ptr %6, i32 0, i32 3
  %31 = ptrtoint ptr %hw_sob to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hw_sob, align 8
  %hw_sob8 = getelementptr inbounds %struct.hl_cs_compl, ptr %cs_cmpl, i32 0, i32 3
  %33 = ptrtoint ptr %hw_sob8 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %hw_sob8, align 8
  %sob_val9 = getelementptr inbounds %struct.hl_cs_compl, ptr %6, i32 0, i32 7
  %34 = ptrtoint ptr %sob_val9 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %sob_val9, align 4
  %sob_val10 = getelementptr inbounds %struct.hl_cs_compl, ptr %cs_cmpl, i32 0, i32 7
  %36 = ptrtoint ptr %sob_val10 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %sob_val10, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then5, %if.then
  %lock = getelementptr inbounds %struct.hl_cs_compl, ptr %6, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  %37 = ptrtoint ptr %signal_fence to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %signal_fence, align 4
  %call13 = tail call zeroext i1 @completion_done(ptr noundef %38) #9
  br i1 %call13, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  %hw_sob17 = getelementptr inbounds %struct.hl_cs_compl, ptr %cs_cmpl, i32 0, i32 3
  %39 = ptrtoint ptr %hw_sob17 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hw_sob17, align 8
  %kref = getelementptr inbounds %struct.hl_hw_sob, ptr %40, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #9
  %41 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #9, !srcloc !98
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %41, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end16.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !97

if.end16.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end16
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %42 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %42)
  %.not.i.i.i.i = icmp sgt i32 %42, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !99

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end16.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end16.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef %.sink.i.i.i.i) #9
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @init_wait_cs.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@init_wait_cs, %if.then31)) #9
          to label %do.end39 [label %if.then31], !srcloc !92

if.then31:                                        ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #11
  %dev32 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %43 = ptrtoint ptr %dev32 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev32, align 4
  %45 = ptrtoint ptr %hw_sob17 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hw_sob17, align 8
  %sob_id = getelementptr inbounds %struct.hl_hw_sob, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %sob_id to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %sob_id, align 4
  %sob_val34 = getelementptr inbounds %struct.hl_cs_compl, ptr %cs_cmpl, i32 0, i32 7
  %49 = ptrtoint ptr %sob_val34 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %sob_val34, align 4
  %conv35 = zext i16 %50 to i32
  %base_mon_id = getelementptr %struct.hl_hw_queue, ptr %4, i32 %2, i32 1, i32 3
  %51 = ptrtoint ptr %base_mon_id to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %base_mon_id, align 4
  %conv36 = zext i16 %52 to i32
  %sequence = getelementptr inbounds %struct.hl_cs, ptr %cs, i32 0, i32 13
  %53 = ptrtoint ptr %sequence to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %sequence, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @init_wait_cs.__UNIQUE_ID_ddebug313, ptr noundef %44, ptr noundef nonnull @.str.30, i32 noundef %48, i32 noundef %conv35, i32 noundef %conv36, i32 noundef %2, i64 noundef %54) #9
  br label %do.end39

do.end39:                                         ; preds = %if.then31, %kref_get.exit
  %patched_cb = getelementptr inbounds %struct.hl_cs_job, ptr %job, i32 0, i32 3
  %55 = ptrtoint ptr %patched_cb to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %patched_cb, align 4
  %57 = ptrtoint ptr %wait_prop to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %56, ptr %wait_prop, align 4
  %58 = ptrtoint ptr %hw_sob17 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %hw_sob17, align 8
  %sob_id41 = getelementptr inbounds %struct.hl_hw_sob, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %sob_id41 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %sob_id41, align 4
  %conv42 = trunc i32 %61 to i16
  %sob_base = getelementptr inbounds %struct.hl_gen_wait_properties, ptr %wait_prop, i32 0, i32 3
  %62 = ptrtoint ptr %sob_base to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %conv42, ptr %sob_base, align 4
  %sob_mask = getelementptr inbounds %struct.hl_gen_wait_properties, ptr %wait_prop, i32 0, i32 6
  %63 = ptrtoint ptr %sob_mask to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 1, ptr %sob_mask, align 2
  %sob_val43 = getelementptr inbounds %struct.hl_cs_compl, ptr %cs_cmpl, i32 0, i32 7
  %64 = ptrtoint ptr %sob_val43 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %sob_val43, align 4
  %sob_val44 = getelementptr inbounds %struct.hl_gen_wait_properties, ptr %wait_prop, i32 0, i32 4
  %66 = ptrtoint ptr %sob_val44 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %65, ptr %sob_val44, align 2
  %base_mon_id45 = getelementptr %struct.hl_hw_queue, ptr %4, i32 %2, i32 1, i32 3
  %67 = ptrtoint ptr %base_mon_id45 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %base_mon_id45, align 4
  %mon_id = getelementptr inbounds %struct.hl_gen_wait_properties, ptr %wait_prop, i32 0, i32 5
  %69 = ptrtoint ptr %mon_id to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %68, ptr %mon_id, align 4
  %q_idx46 = getelementptr inbounds %struct.hl_gen_wait_properties, ptr %wait_prop, i32 0, i32 1
  %70 = ptrtoint ptr %q_idx46 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %2, ptr %q_idx46, align 4
  %size = getelementptr inbounds %struct.hl_gen_wait_properties, ptr %wait_prop, i32 0, i32 2
  %71 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %size, align 4
  %asic_funcs = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %72 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %asic_funcs, align 8
  %gen_wait_cb = getelementptr inbounds %struct.hl_asic_funcs, ptr %73, i32 0, i32 69
  %74 = ptrtoint ptr %gen_wait_cb to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %gen_wait_cb, align 4
  %call47 = call i32 %75(ptr noundef %hdev, ptr noundef nonnull %wait_prop) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  call void @arm_heavy_mb() #9
  %76 = ptrtoint ptr %signal_fence to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %signal_fence, align 4
  call void @hl_fence_put(ptr noundef %77) #9
  %78 = ptrtoint ptr %signal_fence to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr null, ptr %signal_fence, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end39, %if.then14
  %retval.0 = phi i32 [ -22, %if.then14 ], [ 0, %do.end39 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait_prop) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hl_cs_signal_sob_wraparound_handler(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @completion_done(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hl_fence_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hl_cq_inc_ptr(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_crit(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

attributes #0 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !34, !36, !37, !39, !40, !41, !42, !44, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !71, !72, !74, !75, !76, !77, !79, !80, !81}
!llvm.module.flags = !{!82, !83, !84, !85, !86, !87, !88, !89}
!llvm.ident = !{!90}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/misc/habanalabs/common/hw_queue.c", i32 643, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @hl_hw_queue_schedule_cs._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @hl_hw_queue_schedule_cs._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/misc/habanalabs/common/hw_queue.c", i32 670, i32 5}
!10 = !{ptr @hl_hw_queue_schedule_cs._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @hl_hw_queue_schedule_cs._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/misc/habanalabs/common/hw_queue.c", i32 713, i32 4}
!14 = !{ptr @hl_hw_queue_schedule_cs._entry.8, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @hl_hw_queue_schedule_cs._entry_ptr.10, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.12, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/misc/habanalabs/common/hw_queue.c", i32 721, i32 4}
!18 = !{ptr @hl_hw_queue_schedule_cs._entry.11, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @hl_hw_queue_schedule_cs._entry_ptr.13, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.14, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/misc/habanalabs/common/hw_queue.c", i32 1083, i32 3}
!22 = !{ptr @.str.15, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @hl_hw_queues_create._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @hl_hw_queues_create._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.17, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/misc/habanalabs/common/hw_queue.c", i32 1097, i32 4}
!27 = !{ptr @hl_hw_queues_create._entry.16, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @hl_hw_queues_create._entry_ptr.18, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.19, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/misc/habanalabs/common/hw_queue.c", i32 128, i32 3}
!31 = !{ptr @.str.20, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.21, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @ext_queue_sanity_checks.__UNIQUE_ID_ddebug297, !30, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!34 = !{ptr @.str.22, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/misc/habanalabs/common/hw_queue.c", i32 142, i32 4}
!36 = !{ptr @ext_queue_sanity_checks.__UNIQUE_ID_ddebug298, !35, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!37 = !{ptr @.str.23, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/misc/habanalabs/common/hw_queue.c", i32 172, i32 3}
!39 = !{ptr @.str.24, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @int_queue_sanity_checks._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @int_queue_sanity_checks._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @int_queue_sanity_checks.__UNIQUE_ID_ddebug299, !43, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!43 = !{!"../drivers/misc/habanalabs/common/hw_queue.c", i32 182, i32 3}
!44 = !{ptr @.str.25, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/misc/habanalabs/common/hw_queue.c", i32 209, i32 3}
!46 = !{ptr @hw_queue_sanity_checks.__UNIQUE_ID_ddebug300, !45, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!47 = !{ptr @.str.26, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/misc/habanalabs/common/hw_queue.c", i32 418, i32 2}
!49 = !{ptr @.str.27, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @init_signal_cs.__UNIQUE_ID_ddebug311, !48, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!51 = !{ptr @.str.28, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/misc/habanalabs/common/hw_queue.c", i32 484, i32 3}
!53 = !{ptr @.str.29, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @init_wait_cs.__UNIQUE_ID_ddebug312, !52, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!55 = !{ptr @.str.30, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/misc/habanalabs/common/hw_queue.c", i32 518, i32 2}
!57 = !{ptr @init_wait_cs.__UNIQUE_ID_ddebug313, !56, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!58 = !{ptr @.str.31, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/misc/habanalabs/common/hw_queue.c", i32 602, i32 3}
!60 = !{ptr @.str.32, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @encaps_sig_first_staged_cs_handler.__UNIQUE_ID_ddebug314, !59, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!62 = !{ptr @.str.33, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/misc/habanalabs/common/hw_queue.c", i32 610, i32 3}
!64 = !{ptr @encaps_sig_first_staged_cs_handler._entry, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @encaps_sig_first_staged_cs_handler._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.34, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/misc/habanalabs/common/hw_queue.c", i32 1010, i32 3}
!68 = !{ptr @.str.35, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.36, !67, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @queue_init._entry, !67, !"_entry", i1 false, i1 false}
!71 = !{ptr @queue_init._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.37, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/misc/habanalabs/common/hw_queue.c", i32 826, i32 3}
!74 = !{ptr @.str.38, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @ext_and_cpu_queue_init._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @ext_and_cpu_queue_init._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.39, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/misc/habanalabs/common/hw_queue.c", i32 860, i32 3}
!79 = !{ptr @.str.40, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @int_queue_init._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @int_queue_init._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{i32 1, !"wchar_size", i32 2}
!83 = !{i32 1, !"min_enum_size", i32 4}
!84 = !{i32 8, !"branch-target-enforcement", i32 0}
!85 = !{i32 8, !"sign-return-address", i32 0}
!86 = !{i32 8, !"sign-return-address-all", i32 0}
!87 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!88 = !{i32 7, !"uwtable", i32 1}
!89 = !{i32 7, !"frame-pointer", i32 2}
!90 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!91 = !{i64 2148525829, i64 2148525855, i64 2148525884, i64 2148525918, i64 2148525949, i64 2148525972}
!92 = !{i64 2149007644, i64 2149007649, i64 2149007662, i64 2149007706, i64 2149007740, i64 2149007761}
!93 = !{i64 2148611240}
!94 = !{i64 2148526549, i64 2148526581, i64 2148526610, i64 2148526644, i64 2148526675, i64 2148526698}
!95 = !{i64 2148611469}
!96 = !{!"auto-init"}
!97 = !{!"branch_weights", i32 1, i32 2000}
!98 = !{i64 2148527359, i64 2148527391, i64 2148527420, i64 2148527454, i64 2148527485, i64 2148527508}
!99 = !{!"branch_weights", i32 2000, i32 1}
!100 = !{i64 2155900186}
