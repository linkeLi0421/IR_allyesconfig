; ModuleID = '/llk/IR_all_yes/drivers/misc/habanalabs/common/command_buffer.c_pt.bc'
source_filename = "../drivers/misc/habanalabs/common/command_buffer.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hl_ctx = type { [128 x %struct.hlist_head], [128 x %struct.hlist_head], ptr, ptr, %struct.kref, ptr, [3 x ptr], %struct.mutex, %struct.mutex, %struct.mutex, %struct.list_head, %struct.list_head, %struct.hl_cs_counters_atomic, ptr, %struct.hl_encaps_signals_mgr, i64, ptr, %struct.spinlock, %struct.atomic64_t, %struct.atomic_t, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.hl_cs_counters_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.hl_encaps_signals_mgr = type { %struct.spinlock, %struct.idr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.atomic64_t = type { i64 }
%struct.hl_device = type { ptr, [6 x i64], [6 x ptr], ptr, %struct.cdev, %struct.cdev, ptr, ptr, %struct.delayed_work, %struct.hl_device_reset_work, [32 x i8], [5 x [32 x i8]], i32, ptr, ptr, %struct.hl_user_interrupt, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.hl_cb_mgr, %struct.hl_eq, ptr, ptr, i32, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.asic_fixed_properties, ptr, ptr, %struct.hl_vm, ptr, ptr, %struct.hl_dbg_device_entry, %struct.list_head, %struct.spinlock, ptr, i32, ptr, i64, %struct.list_head, %struct.list_head, %struct.mutex, %struct.mutex, %struct.hl_cs_counters_atomic, %struct.hl_mmu_priv, [2 x %struct.hl_mmu_funcs], %struct.fw_load_mgr, [4 x %struct.pci_mem_region], %struct.hl_state_dump_specs, [2 x %struct.multi_cs_completion], %struct.hl_clk_throttle, %struct.last_error_session_info, %struct.hl_reset_info, ptr, %struct.atomic64_t, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.hl_cb = type { %struct.kref, ptr, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, i64, ptr, i32, i32, i32, %struct.atomic_t, i8, i8, i8, i8 }
%struct.gen_pool = type { %struct.spinlock, %struct.list_head, i32, ptr, ptr, ptr }
%struct.hl_vm_va_block = type { %struct.list_head, i64, i64, i64 }
%struct.hl_asic_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hl_cb_in = type { i64, i32, i32, i32, i32 }
%struct.hl_fpriv = type { ptr, ptr, ptr, ptr, %struct.hl_ctx_mgr, %struct.hl_cb_mgr, %struct.list_head, %struct.list_head, %struct.kref, %struct.mutex }
%struct.hl_ctx_mgr = type { %struct.mutex, %struct.idr }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.11, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }

@hl_cb_create._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.hl_cb_create = private unnamed_addr constant [13 x i8] c"hl_cb_create\00", align 1
@hl_cb_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.hl_cb_create, ptr @.str.2, i32 255, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Device is disabled or in reset. Can't create new CBs\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/misc/habanalabs/common/command_buffer.c\00", [48 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hl_cb_create._entry_ptr = internal global ptr @hl_cb_create._entry, section ".printk_index", align 4
@hl_cb_create._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @__func__.hl_cb_create, ptr @.str.2, i32 262, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"CB size %d must be less than %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@hl_cb_create._entry_ptr.8 = internal global ptr @hl_cb_create._entry.5, section ".printk_index", align 4
@hl_cb_create.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @__func__.hl_cb_create, ptr @.str.2, ptr @.str.10, i8 0, i8 71, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"habanalabs\00", [21 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"CB pool is empty\0A\00", [46 x i8] zeroinitializer }, align 32
@hl_cb_create._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @__func__.hl_cb_create, ptr @.str.2, i32 304, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"CB mapping is not supported for kernel context\0A\00", [48 x i8] zeroinitializer }, align 32
@hl_cb_create._entry_ptr.13 = internal global ptr @hl_cb_create._entry.11, section ".printk_index", align 4
@hl_cb_create._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @__func__.hl_cb_create, ptr @.str.2, i32 319, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to allocate IDR for a new CB\0A\00", [59 x i8] zeroinitializer }, align 32
@hl_cb_create._entry_ptr.16 = internal global ptr @hl_cb_create._entry.14, section ".printk_index", align 4
@hl_cb_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&cb->lock\00", [22 x i8] zeroinitializer }, align 32
@hl_cb_destroy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 374, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"CB destroy failed, no match to handle 0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hl_cb_destroy\00", [18 x i8] zeroinitializer }, align 32
@hl_cb_destroy._entry_ptr = internal global ptr @hl_cb_destroy._entry, section ".printk_index", align 4
@hl_cb_ioctl._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.hl_cb_ioctl = private unnamed_addr constant [12 x i8] c"hl_cb_ioctl\00", align 1
@hl_cb_ioctl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @__func__.hl_cb_ioctl, ptr @.str.2, i32 435, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Device is %s. Can't execute CB IOCTL\0A\00", [58 x i8] zeroinitializer }, align 32
@hl_cb_ioctl._entry_ptr = internal global ptr @hl_cb_ioctl._entry, section ".printk_index", align 4
@hl_cb_ioctl._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @__func__.hl_cb_ioctl, ptr @.str.2, i32 444, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"User requested CB size %d must be less than %d\0A\00", [48 x i8] zeroinitializer }, align 32
@hl_cb_ioctl._entry_ptr.23 = internal global ptr @hl_cb_ioctl._entry.21, section ".printk_index", align 4
@hl_cb_mmap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 525, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"CB mmap failed, no match to handle 0x%x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hl_cb_mmap\00", [21 x i8] zeroinitializer }, align 32
@hl_cb_mmap._entry_ptr = internal global ptr @hl_cb_mmap._entry, section ".printk_index", align 4
@hl_cb_mmap._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.2, i32 534, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"CB mmap failed, mmap size 0x%lx != 0x%x cb size\0A\00", [47 x i8] zeroinitializer }, align 32
@hl_cb_mmap._entry_ptr.28 = internal global ptr @hl_cb_mmap._entry.26, section ".printk_index", align 4
@hl_cb_mmap._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.25, ptr @.str.2, i32 543, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"user pointer is invalid - 0x%lx\0A\00", [63 x i8] zeroinitializer }, align 32
@hl_cb_mmap._entry_ptr.31 = internal global ptr @hl_cb_mmap._entry.29, section ".printk_index", align 4
@hl_cb_mmap._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.25, ptr @.str.2, i32 553, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"CB mmap failed, CB already mmaped to user\0A\00", [53 x i8] zeroinitializer }, align 32
@hl_cb_mmap._entry_ptr.34 = internal global ptr @hl_cb_mmap._entry.32, section ".printk_index", align 4
@cb_vm_ops = internal constant { %struct.vm_operations_struct, [40 x i8] } { %struct.vm_operations_struct { ptr null, ptr @cb_vm_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@hl_cb_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 602, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"CB get failed, no match to handle 0x%x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hl_cb_get\00", [22 x i8] zeroinitializer }, align 32
@hl_cb_get._entry_ptr = internal global ptr @hl_cb_get._entry, section ".printk_index", align 4
@hl_cb_mgr_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.37 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&mgr->cb_lock\00", [18 x i8] zeroinitializer }, align 32
@hl_cb_mgr_fini._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 637, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"CB %d for CTX ID %d is still alive\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hl_cb_mgr_fini\00", [17 x i8] zeroinitializer }, align 32
@hl_cb_mgr_fini._entry_ptr = internal global ptr @hl_cb_mgr_fini._entry, section ".printk_index", align 4
@hl_cb_kernel_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 654, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Failed to allocate CB for the kernel driver %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hl_cb_kernel_create\00", [44 x i8] zeroinitializer }, align 32
@hl_cb_kernel_create._entry_ptr = internal global ptr @hl_cb_kernel_create._entry, section ".printk_index", align 4
@hl_cb_kernel_create._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.2, i32 663, ptr @.str.44, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Kernel CB handle invalid 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\012\00", [29 x i8] zeroinitializer }, align 32
@hl_cb_kernel_create._entry_ptr.45 = internal global ptr @hl_cb_kernel_create._entry.42, section ".printk_index", align 4
@hl_cb_pool_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.46 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&hdev->cb_pool_lock\00", [44 x i8] zeroinitializer }, align 32
@hl_cb_va_pool_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.2, i32 722, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Failed to create VA gen pool for CB mapping\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hl_cb_va_pool_init\00", [45 x i8] zeroinitializer }, align 32
@hl_cb_va_pool_init._entry_ptr = internal global ptr @hl_cb_va_pool_init._entry, section ".printk_index", align 4
@hl_cb_va_pool_init._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.2, i32 730, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Failed to add memory to VA gen pool for CB mapping\0A\00", [44 x i8] zeroinitializer }, align 32
@hl_cb_va_pool_init._entry_ptr.51 = internal global ptr @hl_cb_va_pool_init._entry.49, section ".printk_index", align 4
@hl_cb_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.2, i32 230, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"failed to allocate %d of dma memory for CB\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hl_cb_alloc\00", [20 x i8] zeroinitializer }, align 32
@hl_cb_alloc._entry_ptr = internal global ptr @hl_cb_alloc._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@cb_map_mem._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.cb_map_mem = private unnamed_addr constant [11 x i8] c"cb_map_mem\00", align 1
@cb_map_mem._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @__func__.cb_map_mem, ptr @.str.2, i32 28, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"Cannot map CB because no VA range is allocated for CB mapping\0A\00", [33 x i8] zeroinitializer }, align 32
@cb_map_mem._entry_ptr = internal global ptr @cb_map_mem._entry, section ".printk_index", align 4
@cb_map_mem._rs.55 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cb_map_mem._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @__func__.cb_map_mem, ptr @.str.2, i32 34, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Cannot map CB because MMU is disabled\0A\00", [57 x i8] zeroinitializer }, align 32
@cb_map_mem._entry_ptr.58 = internal global ptr @cb_map_mem._entry.56, section ".printk_index", align 4
@cb_map_mem._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @__func__.cb_map_mem, ptr @.str.2, i32 47, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Failed to allocate device virtual address for CB\0A\00", [46 x i8] zeroinitializer }, align 32
@cb_map_mem._entry_ptr.61 = internal global ptr @cb_map_mem._entry.59, section ".printk_index", align 4
@cb_map_mem._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @__func__.cb_map_mem, ptr @.str.2, i32 75, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to map VA %#llx to CB\0A\00", [34 x i8] zeroinitializer }, align 32
@cb_map_mem._entry_ptr.64 = internal global ptr @cb_map_mem._entry.62, section ".printk_index", align 4
@cb_unmap_mem._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.cb_unmap_mem = private unnamed_addr constant [13 x i8] c"cb_unmap_mem\00", align 1
@cb_unmap_mem._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @__func__.cb_unmap_mem, ptr @.str.2, i32 127, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to unmap CB's va 0x%llx\0A\00", [32 x i8] zeroinitializer }, align 32
@cb_unmap_mem._entry_ptr = internal global ptr @cb_unmap_mem._entry, section ".printk_index", align 4
@hl_cb_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.2, i32 400, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"CB info failed, no match to handle 0x%x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hl_cb_info\00", [21 x i8] zeroinitializer }, align 32
@hl_cb_info._entry_ptr = internal global ptr @hl_cb_info._entry, section ".printk_index", align 4
@hl_cb_info._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.67, ptr @.str.2, i32 410, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"CB is not mapped to the device's MMU\0A\00", [58 x i8] zeroinitializer }, align 32
@hl_cb_info._entry_ptr.70 = internal global ptr @hl_cb_info._entry.68, section ".printk_index", align 4
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.71 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 254, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 261, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 284, i32 5 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 303, i32 4 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 319, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 326, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 373, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 433, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 442, i32 4 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 524, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 532, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 541, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 552, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant [10 x i8] c"cb_vm_ops\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 504, i32 42 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 601, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 621, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 635, i32 4 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 653, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 662, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 681, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 721, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 729, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 228, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 27, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 33, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 46, i32 4 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 74, i32 4 }
@___asan_gen_.282 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 125, i32 4 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 399, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.304 = private constant [51 x i8] c"../drivers/misc/habanalabs/common/command_buffer.c\00", align 1
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 410, i32 4 }
@___asan_gen_.306 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.309 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.310 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 378, i32 2 }
@llvm.compiler.used = appending global [105 x ptr] [ptr @cb_map_mem._entry, ptr @cb_map_mem._entry.56, ptr @cb_map_mem._entry.59, ptr @cb_map_mem._entry.62, ptr @cb_map_mem._entry_ptr, ptr @cb_map_mem._entry_ptr.58, ptr @cb_map_mem._entry_ptr.61, ptr @cb_map_mem._entry_ptr.64, ptr @cb_unmap_mem._entry, ptr @cb_unmap_mem._entry_ptr, ptr @hl_cb_alloc._entry, ptr @hl_cb_alloc._entry_ptr, ptr @hl_cb_create._entry, ptr @hl_cb_create._entry.11, ptr @hl_cb_create._entry.14, ptr @hl_cb_create._entry.5, ptr @hl_cb_create._entry_ptr, ptr @hl_cb_create._entry_ptr.13, ptr @hl_cb_create._entry_ptr.16, ptr @hl_cb_create._entry_ptr.8, ptr @hl_cb_destroy._entry, ptr @hl_cb_destroy._entry_ptr, ptr @hl_cb_get._entry, ptr @hl_cb_get._entry_ptr, ptr @hl_cb_info._entry, ptr @hl_cb_info._entry.68, ptr @hl_cb_info._entry_ptr, ptr @hl_cb_info._entry_ptr.70, ptr @hl_cb_ioctl._entry, ptr @hl_cb_ioctl._entry.21, ptr @hl_cb_ioctl._entry_ptr, ptr @hl_cb_ioctl._entry_ptr.23, ptr @hl_cb_kernel_create._entry, ptr @hl_cb_kernel_create._entry.42, ptr @hl_cb_kernel_create._entry_ptr, ptr @hl_cb_kernel_create._entry_ptr.45, ptr @hl_cb_mgr_fini._entry, ptr @hl_cb_mgr_fini._entry_ptr, ptr @hl_cb_mmap._entry, ptr @hl_cb_mmap._entry.26, ptr @hl_cb_mmap._entry.29, ptr @hl_cb_mmap._entry.32, ptr @hl_cb_mmap._entry_ptr, ptr @hl_cb_mmap._entry_ptr.28, ptr @hl_cb_mmap._entry_ptr.31, ptr @hl_cb_mmap._entry_ptr.34, ptr @hl_cb_va_pool_init._entry, ptr @hl_cb_va_pool_init._entry.49, ptr @hl_cb_va_pool_init._entry_ptr, ptr @hl_cb_va_pool_init._entry_ptr.51, ptr @hl_cb_create._rs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @hl_cb_create.__key, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @hl_cb_ioctl._rs, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @cb_vm_ops, ptr @.str.35, ptr @.str.36, ptr @hl_cb_mgr_init.__key, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @hl_cb_pool_init.__key, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @cb_map_mem._rs, ptr @.str.54, ptr @cb_map_mem._rs.55, ptr @.str.57, ptr @.str.60, ptr @.str.63, ptr @cb_unmap_mem._rs, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.69, ptr @xa_init_flags.__key, ptr @.str.71], section "llvm.metadata"
@0 = internal global [80 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_cb_create._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_cb_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_cb_create._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_cb_create._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_cb_create._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_cb_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_cb_destroy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_cb_ioctl._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_cb_ioctl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_cb_ioctl._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_cb_mmap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_cb_mmap._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_cb_mmap._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_cb_mmap._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cb_vm_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_cb_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_cb_mgr_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_cb_mgr_fini._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_cb_kernel_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_cb_kernel_create._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_cb_pool_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_cb_va_pool_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_cb_va_pool_init._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_cb_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cb_map_mem._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cb_map_mem._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cb_map_mem._rs.55 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cb_map_mem._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cb_map_mem._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cb_map_mem._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cb_unmap_mem._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cb_unmap_mem._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_cb_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_cb_info._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hl_cb_create(ptr noundef %hdev, ptr noundef %mgr, ptr noundef %ctx, i32 noundef %cb_size, i1 noundef zeroext %internal_cb, i1 noundef zeroext %map_cb, ptr nocapture noundef writeonly %handle) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %asid = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 21
  %0 = ptrtoint ptr %asid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %asid, align 8
  %disabled = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 78
  %2 = ptrtoint ptr %disabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %disabled, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

lor.lhs.false:                                    ; preds = %entry
  %in_reset = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 59, i32 4
  %4 = ptrtoint ptr %in_reset to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %in_reset, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not = icmp eq i8 %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  %or.cond = select i1 %tobool3.not, i1 true, i1 %cmp.not
  br i1 %or.cond, label %if.end10, label %lor.lhs.false.do.body_crit_edge

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %entry.do.body_crit_edge
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @hl_cb_create._rs, ptr noundef nonnull @__func__.hl_cb_create) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %do.body.out_err_crit_edge, label %do.end

do.body.out_err_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_err

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.1) #10
  br label %out_err

if.end10:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %cb_size)
  %cmp11 = icmp ugt i32 %cb_size, 2097152
  br i1 %cmp11, label %do.end16, label %if.end18

do.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %dev17 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %8 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev17, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.6, i32 noundef %cb_size, i32 noundef 2097152) #10
  br label %out_err

if.end18:                                         ; preds = %if.end10
  br i1 %internal_cb, label %if.end18.if.then53_crit_edge, label %if.then20

if.end18.if.then53_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then53

if.then20:                                        ; preds = %if.end18
  %10 = tail call i32 @llvm.umax.i32(i32 %cb_size, i32 4096)
  br i1 %cmp.not, label %land.lhs.true27, label %if.then20.if.then53_crit_edge

if.then20.if.then53_crit_edge:                    ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then53

land.lhs.true27:                                  ; preds = %if.then20
  %cb_pool_cb_size = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 47
  %11 = ptrtoint ptr %cb_pool_cb_size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cb_pool_cb_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp28.not = icmp ugt i32 %10, %12
  br i1 %cmp28.not, label %land.lhs.true27.if.then53_crit_edge, label %if.then30

land.lhs.true27.if.then53_crit_edge:              ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then53

if.then30:                                        ; preds = %land.lhs.true27
  %cb_pool_lock = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 41
  tail call void @_raw_spin_lock(ptr noundef %cb_pool_lock) #7
  %cb_pool = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 40
  %13 = ptrtoint ptr %cb_pool to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %cb_pool, align 4
  %cmp.i.not = icmp eq ptr %14, %cb_pool
  br i1 %cmp.i.not, label %if.else, label %if.then33

if.then33:                                        ; preds = %if.then30
  %add.ptr = getelementptr i8, ptr %14, i32 -64
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %14) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.then33.if.end59.thread_crit_edge

if.then33.if.end59.thread_crit_edge:              ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59.thread

if.end.i.i:                                       ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i, align 4
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %14, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev1.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %16, align 4
  br label %if.end59.thread

if.else:                                          ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock(ptr noundef %cb_pool_lock) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hl_cb_create.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hl_cb_create, %if.then44)) #7
          to label %if.then53 [label %if.then44], !srcloc !150

if.then44:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %dev45 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %21 = ptrtoint ptr %dev45 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev45, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hl_cb_create.__UNIQUE_ID_ddebug297, ptr noundef %22, ptr noundef nonnull @.str.10) #7
  br label %if.then53

if.then53:                                        ; preds = %if.then44, %if.else, %land.lhs.true27.if.then53_crit_edge, %if.then20.if.then53_crit_edge, %if.end18.if.then53_crit_edge
  %cb_size.addr.0160 = phi i32 [ %10, %if.else ], [ %10, %if.then20.if.then53_crit_edge ], [ %10, %land.lhs.true27.if.then53_crit_edge ], [ %10, %if.then44 ], [ %cb_size, %if.end18.if.then53_crit_edge ]
  %call55 = tail call fastcc ptr @hl_cb_alloc(ptr noundef %hdev, i32 noundef %cb_size.addr.0160, i32 noundef %1, i1 noundef zeroext %internal_cb)
  %tobool56.not = icmp eq ptr %call55, null
  br i1 %tobool56.not, label %if.then53.out_err_crit_edge, label %if.end59

if.then53.out_err_crit_edge:                      ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_err

if.end59:                                         ; preds = %if.then53
  %hdev60 = getelementptr inbounds %struct.hl_cb, ptr %call55, i32 0, i32 1
  %23 = ptrtoint ptr %hdev60 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %hdev, ptr %hdev60, align 4
  %ctx61 = getelementptr inbounds %struct.hl_cb, ptr %call55, i32 0, i32 2
  %24 = ptrtoint ptr %ctx61 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %ctx, ptr %ctx61, align 8
  tail call void @hl_ctx_get(ptr noundef %hdev, ptr noundef %ctx) #7
  br i1 %map_cb, label %if.then64, label %if.end59.if.end77_crit_edge

if.end59.if.end77_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end77

if.end59.thread:                                  ; preds = %if.end.i.i, %if.then33.if.end59.thread_crit_edge
  %25 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 256 to ptr), ptr %14, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %cb_pool_lock) #7
  %hdev60166 = getelementptr i8, ptr %14, i32 -60
  %27 = ptrtoint ptr %hdev60166 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %hdev, ptr %hdev60166, align 4
  %ctx61167 = getelementptr i8, ptr %14, i32 -56
  %28 = ptrtoint ptr %ctx61167 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %ctx, ptr %ctx61167, align 8
  tail call void @hl_ctx_get(ptr noundef %hdev, ptr noundef %ctx) #7
  br i1 %map_cb, label %if.end59.thread.do.end70_crit_edge, label %if.end59.thread.if.end77_crit_edge

if.end59.thread.if.end77_crit_edge:               ; preds = %if.end59.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end77

if.end59.thread.do.end70_crit_edge:               ; preds = %if.end59.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end70

if.then64:                                        ; preds = %if.end59
  br i1 %cmp.not, label %if.then64.do.end70_crit_edge, label %if.end72

if.then64.do.end70_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end70

do.end70:                                         ; preds = %if.then64.do.end70_crit_edge, %if.end59.thread.do.end70_crit_edge
  %cb.1170177 = phi ptr [ %call55, %if.then64.do.end70_crit_edge ], [ %add.ptr, %if.end59.thread.do.end70_crit_edge ]
  %ctx61173176 = phi ptr [ %ctx61, %if.then64.do.end70_crit_edge ], [ %ctx61167, %if.end59.thread.do.end70_crit_edge ]
  %dev71 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %29 = ptrtoint ptr %dev71 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev71, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.12) #10
  br label %release_cb

if.end72:                                         ; preds = %if.then64
  %hdev1.i = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 3
  %31 = ptrtoint ptr %hdev1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hdev1.i, align 4
  %page_size2.i = getelementptr inbounds %struct.hl_device, ptr %32, i32 0, i32 33, i32 5, i32 15
  %33 = ptrtoint ptr %page_size2.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %page_size2.i, align 8
  %supports_cb_mapping.i = getelementptr inbounds %struct.hl_device, ptr %32, i32 0, i32 97
  %35 = ptrtoint ptr %supports_cb_mapping.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %supports_cb_mapping.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not.i = icmp eq i8 %36, 0
  br i1 %tobool.not.i, label %do.body.i, label %if.end8.i

do.body.i:                                        ; preds = %if.end72
  %call.i = tail call i32 @___ratelimit(ptr noundef nonnull @cb_map_mem._rs, ptr noundef nonnull @__func__.cb_map_mem) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool3.not.i, label %do.body.i.release_cb_crit_edge, label %do.end.i

do.body.i.release_cb_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %release_cb

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.hl_device, ptr %32, i32 0, i32 6
  %37 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.54) #10
  br label %release_cb

if.end8.i:                                        ; preds = %if.end72
  %mmu_enable.i = getelementptr inbounds %struct.hl_device, ptr %32, i32 0, i32 107
  %39 = ptrtoint ptr %mmu_enable.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %mmu_enable.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool9.not.i = icmp eq i8 %40, 0
  br i1 %tobool9.not.i, label %do.body11.i, label %if.end22.i

do.body11.i:                                      ; preds = %if.end8.i
  %call12.i = tail call i32 @___ratelimit(ptr noundef nonnull @cb_map_mem._rs.55, ptr noundef nonnull @__func__.cb_map_mem) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %do.body11.i.release_cb_crit_edge, label %do.end17.i

do.body11.i.release_cb_crit_edge:                 ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %release_cb

do.end17.i:                                       ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev18.i = getelementptr inbounds %struct.hl_device, ptr %32, i32 0, i32 6
  %41 = ptrtoint ptr %dev18.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev18.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.57) #10
  br label %release_cb

if.end22.i:                                       ; preds = %if.end8.i
  %va_block_list.i = getelementptr inbounds %struct.hl_cb, ptr %call55, i32 0, i32 6
  %43 = ptrtoint ptr %va_block_list.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %va_block_list.i, ptr %va_block_list.i, align 4
  %prev.i.i152 = getelementptr inbounds %struct.hl_cb, ptr %call55, i32 0, i32 6, i32 1
  %44 = ptrtoint ptr %prev.i.i152 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %va_block_list.i, ptr %prev.i.i152, align 4
  %bus_address.i = getelementptr inbounds %struct.hl_cb, ptr %call55, i32 0, i32 9
  %45 = ptrtoint ptr %bus_address.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %bus_address.i, align 4
  %size.i = getelementptr inbounds %struct.hl_cb, ptr %call55, i32 0, i32 11
  %47 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %size.i, align 4
  %add241.i = add i32 %48, %46
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %add241.i)
  %cmp242.i = icmp ult i32 %46, %add241.i
  br i1 %cmp242.i, label %for.body.lr.ph.i, label %if.end22.i.for.end.i_crit_edge

if.end22.i.for.end.i_crit_edge:                   ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end22.i
  %cb_va_pool.i = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 13
  %conv38.i = zext i32 %34 to i64
  %add39.i = add nsw i64 %conv38.i, -1
  br label %for.body.i

for.body.i:                                       ; preds = %list_add_tail.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %bus_addr.0243.i = phi i32 [ %46, %for.body.lr.ph.i ], [ %add43.i, %list_add_tail.exit.i.for.body.i_crit_edge ]
  %49 = ptrtoint ptr %cb_va_pool.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %cb_va_pool.i, align 8
  %algo.i.i = getelementptr inbounds %struct.gen_pool, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %algo.i.i, align 4
  %data.i.i = getelementptr inbounds %struct.gen_pool, ptr %50, i32 0, i32 4
  %53 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %data.i.i, align 4
  %call.i.i.i = tail call i32 @gen_pool_alloc_algo_owner(ptr noundef %50, i32 noundef %34, ptr noundef %52, ptr noundef %54, ptr noundef null) #7
  %conv.i153 = zext i32 %call.i.i.i to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool25.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool25.not.i, label %do.end29.i, label %if.end31.i

do.end29.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev30.i = getelementptr inbounds %struct.hl_device, ptr %32, i32 0, i32 6
  %55 = ptrtoint ptr %dev30.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev30.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.60) #10
  br label %err_va_pool_free.i

if.end31.i:                                       ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %57 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %57, i32 noundef 3520, i32 noundef 32) #11
  %tobool33.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool33.not.i, label %if.then34.i, label %if.end37.i

if.then34.i:                                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #9
  %58 = ptrtoint ptr %cb_va_pool.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %cb_va_pool.i, align 8
  tail call void @gen_pool_free_owner(ptr noundef %59, i32 noundef %call.i.i.i, i32 noundef %34, ptr noundef null) #7
  br label %err_va_pool_free.i

if.end37.i:                                       ; preds = %if.end31.i
  %start.i = getelementptr inbounds %struct.hl_vm_va_block, ptr %call7.i.i.i, i32 0, i32 1
  %60 = ptrtoint ptr %start.i to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %conv.i153, ptr %start.i, align 8
  %sub.i = add nsw i64 %add39.i, %conv.i153
  %end.i = getelementptr inbounds %struct.hl_vm_va_block, ptr %call7.i.i.i, i32 0, i32 2
  %61 = ptrtoint ptr %end.i to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %sub.i, ptr %end.i, align 8
  %size41.i = getelementptr inbounds %struct.hl_vm_va_block, ptr %call7.i.i.i, i32 0, i32 3
  %62 = ptrtoint ptr %size41.i to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %conv38.i, ptr %size41.i, align 8
  %63 = ptrtoint ptr %prev.i.i152 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %prev.i.i152, align 4
  %call.i.i233.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %64, ptr noundef %va_block_list.i) #7
  br i1 %call.i.i233.i, label %if.end.i.i.i, label %if.end37.i.list_add_tail.exit.i_crit_edge

if.end37.i.list_add_tail.exit.i_crit_edge:        ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #9
  %65 = ptrtoint ptr %prev.i.i152 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call7.i.i.i, ptr %prev.i.i152, align 4
  %66 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %va_block_list.i, ptr %call7.i.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %67 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %64, ptr %prev3.i.i.i, align 4
  %68 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %call7.i.i.i, ptr %64, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end37.i.list_add_tail.exit.i_crit_edge
  %add43.i = add i32 %bus_addr.0243.i, %34
  %69 = ptrtoint ptr %bus_address.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %bus_address.i, align 4
  %71 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %size.i, align 4
  %add.i = add i32 %72, %70
  %cmp.i154 = icmp ult i32 %add43.i, %add.i
  br i1 %cmp.i154, label %list_add_tail.exit.i.for.body.i_crit_edge, label %list_add_tail.exit.i.for.end.i_crit_edge

list_add_tail.exit.i.for.end.i_crit_edge:         ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

list_add_tail.exit.i.for.body.i_crit_edge:        ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %list_add_tail.exit.i.for.end.i_crit_edge, %if.end22.i.for.end.i_crit_edge
  %mmu_lock.i = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mmu_lock.i, i32 noundef 0) #7
  %73 = ptrtoint ptr %va_block_list.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %va_block.0244.i = load ptr, ptr %va_block_list.i, align 8
  %cmp50.not245.i = icmp eq ptr %va_block.0244.i, %va_block_list.i
  br i1 %cmp50.not245.i, label %for.end.i.for.end84.i_crit_edge, label %for.body52.preheader.i

for.end.i.for.end84.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end84.i

for.body52.preheader.i:                           ; preds = %for.end.i
  %74 = ptrtoint ptr %bus_address.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %bus_address.i, align 4
  br label %for.body52.i

for.body52.i:                                     ; preds = %if.end69.i.for.body52.i_crit_edge, %for.body52.preheader.i
  %va_block.0248.i = phi ptr [ %va_block.0.i, %if.end69.i.for.body52.i_crit_edge ], [ %va_block.0244.i, %for.body52.preheader.i ]
  %bus_addr.1247.i = phi i32 [ %conv73.i, %if.end69.i.for.body52.i_crit_edge ], [ %75, %for.body52.preheader.i ]
  %offset.0246.i = phi i32 [ %conv77.i, %if.end69.i.for.body52.i_crit_edge ], [ 0, %for.body52.preheader.i ]
  %start53.i = getelementptr inbounds %struct.hl_vm_va_block, ptr %va_block.0248.i, i32 0, i32 1
  %76 = ptrtoint ptr %start53.i to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %start53.i, align 8
  %conv54.i = zext i32 %bus_addr.1247.i to i64
  %size55.i = getelementptr inbounds %struct.hl_vm_va_block, ptr %va_block.0248.i, i32 0, i32 3
  %78 = ptrtoint ptr %size55.i to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %size55.i, align 8
  %conv56.i = trunc i64 %79 to i32
  %80 = ptrtoint ptr %va_block.0248.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %va_block.0248.i, align 4
  %cmp.i.i = icmp eq ptr %81, %va_block_list.i
  %call61.i = tail call i32 @hl_mmu_map_page(ptr noundef %ctx, i64 noundef %77, i64 noundef %conv54.i, i32 noundef %conv56.i, i1 noundef zeroext %cmp.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61.i)
  %tobool62.not.i = icmp eq i32 %call61.i, 0
  br i1 %tobool62.not.i, label %if.end69.i, label %do.end66.i

do.end66.i:                                       ; preds = %for.body52.i
  %dev67.i = getelementptr inbounds %struct.hl_device, ptr %32, i32 0, i32 6
  %82 = ptrtoint ptr %dev67.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev67.i, align 4
  %84 = ptrtoint ptr %start53.i to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %start53.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %83, ptr noundef nonnull @.str.63, i64 noundef %85) #10
  %86 = ptrtoint ptr %va_block_list.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %va_block.1249.i = load ptr, ptr %va_block_list.i, align 8
  %cmp95.not250.i = icmp eq ptr %va_block.1249.i, %va_block_list.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %offset.0246.i)
  %cmp99251.i = icmp slt i32 %offset.0246.i, 1
  %or.cond252.i = select i1 %cmp95.not250.i, i1 true, i1 %cmp99251.i
  br i1 %or.cond252.i, label %do.end66.i.for.end121.i_crit_edge, label %do.end66.i.if.end102.i_crit_edge

do.end66.i.if.end102.i_crit_edge:                 ; preds = %do.end66.i
  br label %if.end102.i

do.end66.i.for.end121.i_crit_edge:                ; preds = %do.end66.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end121.i

if.end69.i:                                       ; preds = %for.body52.i
  %87 = ptrtoint ptr %size55.i to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %size55.i, align 8
  %89 = trunc i64 %88 to i32
  %conv73.i = add i32 %bus_addr.1247.i, %89
  %conv77.i = add i32 %offset.0246.i, %89
  %90 = ptrtoint ptr %va_block.0248.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %va_block.0.i = load ptr, ptr %va_block.0248.i, align 8
  %cmp50.not.i = icmp eq ptr %va_block.0.i, %va_block_list.i
  br i1 %cmp50.not.i, label %if.end69.i.for.end84.i_crit_edge, label %if.end69.i.for.body52.i_crit_edge

if.end69.i.for.body52.i_crit_edge:                ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body52.i

if.end69.i.for.end84.i_crit_edge:                 ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end84.i

for.end84.i:                                      ; preds = %if.end69.i.for.end84.i_crit_edge, %for.end.i.for.end84.i_crit_edge
  %call85.i = tail call i32 @hl_mmu_invalidate_cache(ptr noundef %32, i1 noundef zeroext false, i32 noundef 9) #7
  tail call void @mutex_unlock(ptr noundef %mmu_lock.i) #7
  %is_mmu_mapped.i = getelementptr inbounds %struct.hl_cb, ptr %call55, i32 0, i32 16
  %91 = ptrtoint ptr %is_mmu_mapped.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 1, ptr %is_mmu_mapped.i, align 1
  br label %cb_map_mem.exit

if.end102.i:                                      ; preds = %if.end102.i.if.end102.i_crit_edge, %do.end66.i.if.end102.i_crit_edge
  %va_block.1254.i = phi ptr [ %va_block.1.i, %if.end102.i.if.end102.i_crit_edge ], [ %va_block.1249.i, %do.end66.i.if.end102.i_crit_edge ]
  %offset.1253.i = phi i32 [ %conv114.i, %if.end102.i.if.end102.i_crit_edge ], [ %offset.0246.i, %do.end66.i.if.end102.i_crit_edge ]
  %start103.i = getelementptr inbounds %struct.hl_vm_va_block, ptr %va_block.1254.i, i32 0, i32 1
  %92 = ptrtoint ptr %start103.i to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %start103.i, align 8
  %size104.i = getelementptr inbounds %struct.hl_vm_va_block, ptr %va_block.1254.i, i32 0, i32 3
  %94 = ptrtoint ptr %size104.i to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %size104.i, align 8
  %conv105.i = trunc i64 %95 to i32
  %conv106237.i = zext i32 %offset.1253.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %95, i64 %conv106237.i)
  %cmp108.i = icmp uge i64 %95, %conv106237.i
  %call110.i = tail call i32 @hl_mmu_unmap_page(ptr noundef %ctx, i64 noundef %93, i32 noundef %conv105.i, i1 noundef zeroext %cmp108.i) #7
  %96 = ptrtoint ptr %size104.i to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %size104.i, align 8
  %98 = trunc i64 %97 to i32
  %conv114.i = sub i32 %offset.1253.i, %98
  %99 = ptrtoint ptr %va_block.1254.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %va_block.1.i = load ptr, ptr %va_block.1254.i, align 8
  %cmp95.not.i = icmp eq ptr %va_block.1.i, %va_block_list.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv114.i)
  %cmp99.i = icmp slt i32 %conv114.i, 1
  %or.cond.i = select i1 %cmp95.not.i, i1 true, i1 %cmp99.i
  br i1 %or.cond.i, label %if.end102.i.for.end121.i_crit_edge, label %if.end102.i.if.end102.i_crit_edge

if.end102.i.if.end102.i_crit_edge:                ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end102.i

if.end102.i.for.end121.i_crit_edge:               ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end121.i

for.end121.i:                                     ; preds = %if.end102.i.for.end121.i_crit_edge, %do.end66.i.for.end121.i_crit_edge
  %call122.i = tail call i32 @hl_mmu_invalidate_cache(ptr noundef %32, i1 noundef zeroext true, i32 noundef 1) #7
  tail call void @mutex_unlock(ptr noundef %mmu_lock.i) #7
  br label %err_va_pool_free.i

err_va_pool_free.i:                               ; preds = %for.end121.i, %if.then34.i, %do.end29.i
  %rc.0.i = phi i32 [ -12, %if.then34.i ], [ -12, %do.end29.i ], [ %call122.i, %for.end121.i ]
  %100 = ptrtoint ptr %va_block_list.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %va_block_list.i, align 8
  %cmp137.not255.i = icmp eq ptr %101, %va_block_list.i
  br i1 %cmp137.not255.i, label %err_va_pool_free.i.cb_map_mem.exit_crit_edge, label %for.body140.lr.ph.i

err_va_pool_free.i.cb_map_mem.exit_crit_edge:     ; preds = %err_va_pool_free.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cb_map_mem.exit

for.body140.lr.ph.i:                              ; preds = %err_va_pool_free.i
  %cb_va_pool141.i = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 13
  br label %for.body140.i

for.body140.i:                                    ; preds = %list_del.exit.i.for.body140.i_crit_edge, %for.body140.lr.ph.i
  %va_block.2256.i = phi ptr [ %101, %for.body140.lr.ph.i ], [ %tmp.0.i, %list_del.exit.i.for.body140.i_crit_edge ]
  %102 = ptrtoint ptr %va_block.2256.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %tmp.0.i = load ptr, ptr %va_block.2256.i, align 8
  %103 = ptrtoint ptr %cb_va_pool141.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %cb_va_pool141.i, align 8
  %start142.i = getelementptr inbounds %struct.hl_vm_va_block, ptr %va_block.2256.i, i32 0, i32 1
  %105 = ptrtoint ptr %start142.i to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %start142.i, align 8
  %conv143.i = trunc i64 %106 to i32
  %size144.i = getelementptr inbounds %struct.hl_vm_va_block, ptr %va_block.2256.i, i32 0, i32 3
  %107 = ptrtoint ptr %size144.i to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %size144.i, align 8
  %conv145.i = trunc i64 %108 to i32
  tail call void @gen_pool_free_owner(ptr noundef %104, i32 noundef %conv143.i, i32 noundef %conv145.i, ptr noundef null) #7
  %call.i.i234.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %va_block.2256.i) #7
  br i1 %call.i.i234.i, label %if.end.i.i235.i, label %for.body140.i.list_del.exit.i_crit_edge

for.body140.i.list_del.exit.i_crit_edge:          ; preds = %for.body140.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit.i

if.end.i.i235.i:                                  ; preds = %for.body140.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %va_block.2256.i, i32 0, i32 1
  %109 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %prev.i.i.i, align 4
  %111 = ptrtoint ptr %va_block.2256.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %va_block.2256.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %112, i32 0, i32 1
  %113 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %110, ptr %prev1.i.i.i.i, align 4
  %114 = ptrtoint ptr %110 to i32
  call void @__asan_store4_noabort(i32 %114)
  store volatile ptr %112, ptr %110, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i235.i, %for.body140.i.list_del.exit.i_crit_edge
  %115 = ptrtoint ptr %va_block.2256.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr inttoptr (i32 256 to ptr), ptr %va_block.2256.i, align 4
  %prev.i236.i = getelementptr inbounds %struct.list_head, ptr %va_block.2256.i, i32 0, i32 1
  %116 = ptrtoint ptr %prev.i236.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i236.i, align 4
  tail call void @kfree(ptr noundef %va_block.2256.i) #7
  %cmp137.not.i = icmp eq ptr %tmp.0.i, %va_block_list.i
  br i1 %cmp137.not.i, label %list_del.exit.i.cb_map_mem.exit_crit_edge, label %list_del.exit.i.for.body140.i_crit_edge

list_del.exit.i.for.body140.i_crit_edge:          ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body140.i

list_del.exit.i.cb_map_mem.exit_crit_edge:        ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cb_map_mem.exit

cb_map_mem.exit:                                  ; preds = %list_del.exit.i.cb_map_mem.exit_crit_edge, %err_va_pool_free.i.cb_map_mem.exit_crit_edge, %for.end84.i
  %retval.0.i155 = phi i32 [ %call85.i, %for.end84.i ], [ %rc.0.i, %err_va_pool_free.i.cb_map_mem.exit_crit_edge ], [ %rc.0.i, %list_del.exit.i.cb_map_mem.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i155)
  %tobool74.not = icmp eq i32 %retval.0.i155, 0
  br i1 %tobool74.not, label %cb_map_mem.exit.if.end77_crit_edge, label %cb_map_mem.exit.release_cb_crit_edge

cb_map_mem.exit.release_cb_crit_edge:             ; preds = %cb_map_mem.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %release_cb

cb_map_mem.exit.if.end77_crit_edge:               ; preds = %cb_map_mem.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end77

if.end77:                                         ; preds = %cb_map_mem.exit.if.end77_crit_edge, %if.end59.thread.if.end77_crit_edge, %if.end59.if.end77_crit_edge
  %ctx61172 = phi ptr [ %ctx61167, %if.end59.thread.if.end77_crit_edge ], [ %ctx61, %cb_map_mem.exit.if.end77_crit_edge ], [ %ctx61, %if.end59.if.end77_crit_edge ]
  %cb.1169 = phi ptr [ %add.ptr, %if.end59.thread.if.end77_crit_edge ], [ %call55, %cb_map_mem.exit.if.end77_crit_edge ], [ %call55, %if.end59.if.end77_crit_edge ]
  tail call void @_raw_spin_lock(ptr noundef %mgr) #7
  %cb_handles = getelementptr inbounds %struct.hl_cb_mgr, ptr %mgr, i32 0, i32 1
  %call78 = tail call i32 @idr_alloc(ptr noundef %cb_handles, ptr noundef %cb.1169, i32 noundef 1, i32 noundef 0, i32 noundef 2592) #7
  tail call void @_raw_spin_unlock(ptr noundef %mgr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %cmp80 = icmp slt i32 %call78, 0
  br i1 %cmp80, label %do.end85, label %if.end87

do.end85:                                         ; preds = %if.end77
  %dev86 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %117 = ptrtoint ptr %dev86 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %dev86, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %118, ptr noundef nonnull @.str.15) #10
  %is_mmu_mapped = getelementptr inbounds %struct.hl_cb, ptr %cb.1169, i32 0, i32 16
  %119 = ptrtoint ptr %is_mmu_mapped to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %is_mmu_mapped, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %tobool94.not = icmp eq i8 %120, 0
  br i1 %tobool94.not, label %do.end85.release_cb_crit_edge, label %if.then95

do.end85.release_cb_crit_edge:                    ; preds = %do.end85
  call void @__sanitizer_cov_trace_pc() #9
  br label %release_cb

if.end87:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #9
  %conv88180 = zext i32 %call78 to i64
  %id = getelementptr inbounds %struct.hl_cb, ptr %cb.1169, i32 0, i32 7
  %121 = ptrtoint ptr %id to i32
  call void @__asan_store8_noabort(i32 %121)
  store i64 %conv88180, ptr %id, align 8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %cb.1169, i32 noundef 4) #7
  %122 = ptrtoint ptr %cb.1169 to i32
  call void @__asan_store4_noabort(i32 %122)
  store volatile i32 1, ptr %cb.1169, align 4
  %lock = getelementptr inbounds %struct.hl_cb, ptr %cb.1169, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.17, ptr noundef nonnull @hl_cb_create.__key, i16 noundef signext 3) #7
  %123 = ptrtoint ptr %id to i32
  call void @__asan_load8_noabort(i32 %123)
  %124 = load i64, ptr %id, align 8
  %or = shl i64 %124, 12
  %shl = or i64 %or, 4611686018427387904
  %125 = ptrtoint ptr %handle to i32
  call void @__asan_store8_noabort(i32 %125)
  store i64 %shl, ptr %handle, align 8
  tail call void @hl_debugfs_add_cb(ptr noundef %cb.1169) #7
  br label %cleanup

if.then95:                                        ; preds = %do.end85
  call void @__sanitizer_cov_trace_pc() #9
  %126 = ptrtoint ptr %ctx61172 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %ctx61172, align 8
  tail call fastcc void @cb_unmap_mem(ptr noundef %127, ptr noundef %cb.1169)
  br label %release_cb

release_cb:                                       ; preds = %if.then95, %do.end85.release_cb_crit_edge, %cb_map_mem.exit.release_cb_crit_edge, %do.end17.i, %do.body11.i.release_cb_crit_edge, %do.end.i, %do.body.i.release_cb_crit_edge, %do.end70
  %ctx61171 = phi ptr [ %ctx61173176, %do.end70 ], [ %ctx61, %cb_map_mem.exit.release_cb_crit_edge ], [ %ctx61172, %if.then95 ], [ %ctx61172, %do.end85.release_cb_crit_edge ], [ %ctx61, %do.end.i ], [ %ctx61, %do.body.i.release_cb_crit_edge ], [ %ctx61, %do.end17.i ], [ %ctx61, %do.body11.i.release_cb_crit_edge ]
  %cb.1168 = phi ptr [ %cb.1170177, %do.end70 ], [ %call55, %cb_map_mem.exit.release_cb_crit_edge ], [ %cb.1169, %if.then95 ], [ %cb.1169, %do.end85.release_cb_crit_edge ], [ %call55, %do.end.i ], [ %call55, %do.body.i.release_cb_crit_edge ], [ %call55, %do.end17.i ], [ %call55, %do.body11.i.release_cb_crit_edge ]
  %rc.0 = phi i32 [ -22, %do.end70 ], [ %retval.0.i155, %cb_map_mem.exit.release_cb_crit_edge ], [ %call78, %if.then95 ], [ %call78, %do.end85.release_cb_crit_edge ], [ -22, %do.end.i ], [ -22, %do.body.i.release_cb_crit_edge ], [ -22, %do.end17.i ], [ -22, %do.body11.i.release_cb_crit_edge ]
  %128 = ptrtoint ptr %ctx61171 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %ctx61171, align 8
  %call99 = tail call i32 @hl_ctx_put(ptr noundef %129) #7
  tail call fastcc void @cb_do_release(ptr noundef %hdev, ptr noundef %cb.1168)
  br label %out_err

out_err:                                          ; preds = %release_cb, %if.then53.out_err_crit_edge, %do.end16, %do.end, %do.body.out_err_crit_edge
  %rc.1 = phi i32 [ -22, %do.end16 ], [ %rc.0, %release_cb ], [ -16, %do.end ], [ -16, %do.body.out_err_crit_edge ], [ -12, %if.then53.out_err_crit_edge ]
  %130 = ptrtoint ptr %handle to i32
  call void @__asan_store8_noabort(i32 %130)
  store i64 0, ptr %handle, align 8
  br label %cleanup

cleanup:                                          ; preds = %out_err, %if.end87
  %retval.0 = phi i32 [ %rc.1, %out_err ], [ 0, %if.end87 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @hl_cb_alloc(ptr noundef %hdev, i32 noundef %cb_size, i32 noundef %ctx_id, i1 noundef zeroext %internal_cb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ctx_id)
  %cmp = icmp eq i32 %ctx_id, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

land.lhs.true:                                    ; preds = %entry
  %disabled = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 78
  %0 = ptrtoint ptr %disabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %disabled, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %land.lhs.true.if.end4_crit_edge

land.lhs.true.if.end4_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.end:                                           ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 2848, i32 noundef 112) #11
  %tobool1.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %if.end7.thread

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.end4:                                          ; preds = %if.end.if.end4_crit_edge, %land.lhs.true.if.end4_crit_edge, %entry.if.end4_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i70 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 112) #11
  %tobool5.not = icmp eq ptr %call7.i.i70, null
  br i1 %tobool5.not, label %if.end4.cleanup_crit_edge, label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  br i1 %internal_cb, label %if.end7.if.then9_crit_edge, label %if.else

if.end7.if.then9_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then9

if.end7.thread:                                   ; preds = %if.end
  br i1 %internal_cb, label %if.end7.thread.if.then9_crit_edge, label %if.end7.thread.if.then17_crit_edge

if.end7.thread.if.then17_crit_edge:               ; preds = %if.end7.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then17

if.end7.thread.if.then9_crit_edge:                ; preds = %if.end7.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then9

if.then9:                                         ; preds = %if.end7.thread.if.then9_crit_edge, %if.end7.if.then9_crit_edge
  %cb.17579 = phi ptr [ %call7.i.i, %if.end7.thread.if.then9_crit_edge ], [ %call7.i.i70, %if.end7.if.then9_crit_edge ]
  %internal_cb_pool = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 44
  %4 = ptrtoint ptr %internal_cb_pool to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %internal_cb_pool, align 4
  %algo.i = getelementptr inbounds %struct.gen_pool, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %algo.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %algo.i, align 4
  %data.i = getelementptr inbounds %struct.gen_pool, ptr %5, i32 0, i32 4
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i, align 4
  %call.i.i = tail call i32 @gen_pool_alloc_algo_owner(ptr noundef %5, i32 noundef %cb_size, ptr noundef %7, ptr noundef %9, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool11.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool11.not, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %cb.17579) #7
  br label %cleanup

if.end13:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  %10 = inttoptr i32 %call.i.i to ptr
  %internal_cb_pool_virt_addr = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 42
  %11 = ptrtoint ptr %internal_cb_pool_virt_addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %internal_cb_pool_virt_addr, align 4
  %sub.ptr.rhs.cast = ptrtoint ptr %12 to i32
  %sub.ptr.sub = sub i32 %call.i.i, %sub.ptr.rhs.cast
  %is_internal = getelementptr inbounds %struct.hl_cb, ptr %cb.17579, i32 0, i32 15
  %13 = ptrtoint ptr %is_internal to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %is_internal, align 2
  %internal_cb_va_base = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 45
  %14 = ptrtoint ptr %internal_cb_va_base to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %internal_cb_va_base, align 8
  %16 = trunc i64 %15 to i32
  %conv14 = add i32 %sub.ptr.sub, %16
  %bus_address = getelementptr inbounds %struct.hl_cb, ptr %cb.17579, i32 0, i32 9
  %17 = ptrtoint ptr %bus_address to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv14, ptr %bus_address, align 4
  br label %if.end33

if.else:                                          ; preds = %if.end7
  br i1 %cmp, label %if.else.if.then17_crit_edge, label %if.else27

if.else.if.then17_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then17

if.then17:                                        ; preds = %if.else.if.then17_crit_edge, %if.end7.thread.if.then17_crit_edge
  %cb.1757881 = phi ptr [ %call7.i.i70, %if.else.if.then17_crit_edge ], [ %call7.i.i, %if.end7.thread.if.then17_crit_edge ]
  %asic_funcs = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %18 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %asic_funcs, align 8
  %asic_dma_alloc_coherent = getelementptr inbounds %struct.hl_asic_funcs, ptr %19, i32 0, i32 14
  %20 = ptrtoint ptr %asic_dma_alloc_coherent to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %asic_dma_alloc_coherent, align 4
  %bus_address18 = getelementptr inbounds %struct.hl_cb, ptr %cb.1757881, i32 0, i32 9
  %call19 = tail call ptr %21(ptr noundef %hdev, i32 noundef %cb_size, ptr noundef %bus_address18, i32 noundef 2592) #7
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %if.then21, label %if.then17.if.end36_crit_edge

if.then17.if.end36_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.then21:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %asic_funcs, align 8
  %asic_dma_alloc_coherent23 = getelementptr inbounds %struct.hl_asic_funcs, ptr %23, i32 0, i32 14
  %24 = ptrtoint ptr %asic_dma_alloc_coherent23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %asic_dma_alloc_coherent23, align 4
  %call25 = tail call ptr %25(ptr noundef %hdev, i32 noundef %cb_size, ptr noundef %bus_address18, i32 noundef 3264) #7
  br label %if.end33

if.else27:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %asic_funcs28 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %26 = ptrtoint ptr %asic_funcs28 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %asic_funcs28, align 8
  %asic_dma_alloc_coherent29 = getelementptr inbounds %struct.hl_asic_funcs, ptr %27, i32 0, i32 14
  %28 = ptrtoint ptr %asic_dma_alloc_coherent29 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %asic_dma_alloc_coherent29, align 4
  %bus_address30 = getelementptr inbounds %struct.hl_cb, ptr %call7.i.i70, i32 0, i32 9
  %call31 = tail call ptr %29(ptr noundef %hdev, i32 noundef %cb_size, ptr noundef %bus_address30, i32 noundef 1052096) #7
  br label %if.end33

if.end33:                                         ; preds = %if.else27, %if.then21, %if.end13
  %cb.176 = phi ptr [ %cb.17579, %if.end13 ], [ %cb.1757881, %if.then21 ], [ %call7.i.i70, %if.else27 ]
  %p.0 = phi ptr [ %10, %if.end13 ], [ %call25, %if.then21 ], [ %call31, %if.else27 ]
  %tobool34.not = icmp eq ptr %p.0, null
  br i1 %tobool34.not, label %do.end, label %if.end33.if.end36_crit_edge

if.end33.if.end36_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

do.end:                                           ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %30 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.52, i32 noundef %cb_size) #10
  tail call void @kfree(ptr noundef nonnull %cb.176) #7
  br label %cleanup

if.end36:                                         ; preds = %if.end33.if.end36_crit_edge, %if.then17.if.end36_crit_edge
  %p.086 = phi ptr [ %p.0, %if.end33.if.end36_crit_edge ], [ %call19, %if.then17.if.end36_crit_edge ]
  %cb.17685 = phi ptr [ %cb.176, %if.end33.if.end36_crit_edge ], [ %cb.1757881, %if.then17.if.end36_crit_edge ]
  %kernel_address = getelementptr inbounds %struct.hl_cb, ptr %cb.17685, i32 0, i32 8
  %32 = ptrtoint ptr %kernel_address to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %p.086, ptr %kernel_address, align 8
  %size = getelementptr inbounds %struct.hl_cb, ptr %cb.17685, i32 0, i32 11
  %33 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %cb_size, ptr %size, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %do.end, %if.then12, %if.end4.cleanup_crit_edge
  %retval.0 = phi ptr [ %cb.17685, %if.end36 ], [ null, %do.end ], [ null, %if.then12 ], [ null, %if.end4.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hl_ctx_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hl_debugfs_add_cb(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cb_unmap_mem(ptr noundef %ctx, ptr noundef readonly %cb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hdev1 = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 3
  %0 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev1, align 4
  %mmu_lock = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mmu_lock, i32 noundef 0) #7
  %va_block_list = getelementptr inbounds %struct.hl_cb, ptr %cb, i32 0, i32 6
  %2 = ptrtoint ptr %va_block_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %va_block.073 = load ptr, ptr %va_block_list, align 8
  %cmp.not74 = icmp eq ptr %va_block.073, %va_block_list
  br i1 %cmp.not74, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %dev = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %va_block.075 = phi ptr [ %va_block.073, %for.body.lr.ph ], [ %va_block.0, %for.inc.for.body_crit_edge ]
  %start = getelementptr inbounds %struct.hl_vm_va_block, ptr %va_block.075, i32 0, i32 1
  %3 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %start, align 8
  %size = getelementptr inbounds %struct.hl_vm_va_block, ptr %va_block.075, i32 0, i32 3
  %5 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %size, align 8
  %conv = trunc i64 %6 to i32
  %7 = ptrtoint ptr %va_block.075 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %va_block.075, align 4
  %cmp.i = icmp eq ptr %8, %va_block_list
  %call6 = tail call i32 @hl_mmu_unmap_page(ptr noundef %ctx, i64 noundef %4, i32 noundef %conv, i1 noundef zeroext %cmp.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %for.body.for.inc_crit_edge, label %do.body

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.body:                                          ; preds = %for.body
  %call8 = tail call i32 @___ratelimit(ptr noundef nonnull @cb_unmap_mem._rs, ptr noundef nonnull @__func__.cb_unmap_mem) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %do.body.for.inc_crit_edge, label %do.end

do.body.for.inc_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %11 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %start, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %10, ptr noundef nonnull @.str.65, i64 noundef %12) #10
  br label %for.inc

for.inc:                                          ; preds = %do.end, %do.body.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %13 = ptrtoint ptr %va_block.075 to i32
  call void @__asan_load4_noabort(i32 %13)
  %va_block.0 = load ptr, ptr %va_block.075, align 8
  %cmp.not = icmp eq ptr %va_block.0, %va_block_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %call21 = tail call i32 @hl_mmu_invalidate_cache(ptr noundef %1, i1 noundef zeroext true, i32 noundef 1) #7
  tail call void @mutex_unlock(ptr noundef %mmu_lock) #7
  %14 = ptrtoint ptr %va_block_list to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %va_block_list, align 8
  %cmp36.not76 = icmp eq ptr %15, %va_block_list
  br i1 %cmp36.not76, label %for.end.for.end51_crit_edge, label %for.body39.lr.ph

for.end.for.end51_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end51

for.body39.lr.ph:                                 ; preds = %for.end
  %cb_va_pool = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 13
  br label %for.body39

for.body39:                                       ; preds = %list_del.exit.for.body39_crit_edge, %for.body39.lr.ph
  %va_block.177 = phi ptr [ %15, %for.body39.lr.ph ], [ %tmp.0, %list_del.exit.for.body39_crit_edge ]
  %16 = ptrtoint ptr %va_block.177 to i32
  call void @__asan_load4_noabort(i32 %16)
  %tmp.0 = load ptr, ptr %va_block.177, align 8
  %17 = ptrtoint ptr %cb_va_pool to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cb_va_pool, align 8
  %start40 = getelementptr inbounds %struct.hl_vm_va_block, ptr %va_block.177, i32 0, i32 1
  %19 = ptrtoint ptr %start40 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %start40, align 8
  %conv41 = trunc i64 %20 to i32
  %size42 = getelementptr inbounds %struct.hl_vm_va_block, ptr %va_block.177, i32 0, i32 3
  %21 = ptrtoint ptr %size42 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %size42, align 8
  %conv43 = trunc i64 %22 to i32
  tail call void @gen_pool_free_owner(ptr noundef %18, i32 noundef %conv41, i32 noundef %conv43, ptr noundef null) #7
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %va_block.177) #7
  br i1 %call.i.i, label %if.end.i.i, label %for.body39.list_del.exit_crit_edge

for.body39.list_del.exit_crit_edge:               ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %va_block.177, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i.i, align 4
  %25 = ptrtoint ptr %va_block.177 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %va_block.177, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev1.i.i.i, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %26, ptr %24, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body39.list_del.exit_crit_edge
  %29 = ptrtoint ptr %va_block.177 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 256 to ptr), ptr %va_block.177, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %va_block.177, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %va_block.177) #7
  %cmp36.not = icmp eq ptr %tmp.0, %va_block_list
  br i1 %cmp36.not, label %list_del.exit.for.end51_crit_edge, label %list_del.exit.for.body39_crit_edge

list_del.exit.for.body39_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body39

list_del.exit.for.end51_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end51

for.end51:                                        ; preds = %list_del.exit.for.end51_crit_edge, %for.end.for.end51_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hl_ctx_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cb_do_release(ptr noundef %hdev, ptr noundef %cb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %is_pool = getelementptr inbounds %struct.hl_cb, ptr %cb, i32 0, i32 14
  %0 = ptrtoint ptr %is_pool to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_pool, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %cb_pool_lock = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 41
  tail call void @_raw_spin_lock(ptr noundef %cb_pool_lock) #7
  %pool_list = getelementptr inbounds %struct.hl_cb, ptr %cb, i32 0, i32 5
  %cb_pool = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 40
  %2 = ptrtoint ptr %cb_pool to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cb_pool, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %pool_list, ptr noundef %cb_pool, ptr noundef %3) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_add.exit_crit_edge

if.then.list_add.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %pool_list, ptr %prev1.i.i, align 4
  %5 = ptrtoint ptr %pool_list to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %3, ptr %pool_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.hl_cb, ptr %cb, i32 0, i32 5, i32 1
  %6 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %cb_pool, ptr %prev3.i.i, align 4
  %7 = ptrtoint ptr %cb_pool to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %pool_list, ptr %cb_pool, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.then.list_add.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %cb_pool_lock) #7
  br label %if.end

if.else:                                          ; preds = %entry
  %is_internal.i = getelementptr inbounds %struct.hl_cb, ptr %cb, i32 0, i32 15
  %8 = ptrtoint ptr %is_internal.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %is_internal.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %internal_cb_pool.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 44
  %10 = ptrtoint ptr %internal_cb_pool.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %internal_cb_pool.i, align 4
  %kernel_address.i = getelementptr inbounds %struct.hl_cb, ptr %cb, i32 0, i32 8
  %12 = ptrtoint ptr %kernel_address.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %kernel_address.i, align 8
  %14 = ptrtoint ptr %13 to i32
  %size.i = getelementptr inbounds %struct.hl_cb, ptr %cb, i32 0, i32 11
  %15 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %size.i, align 4
  tail call void @gen_pool_free_owner(ptr noundef %11, i32 noundef %14, i32 noundef %16, ptr noundef null) #7
  br label %cb_fini.exit

if.else.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %asic_funcs.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %17 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %asic_funcs.i, align 8
  %asic_dma_free_coherent.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %18, i32 0, i32 15
  %19 = ptrtoint ptr %asic_dma_free_coherent.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %asic_dma_free_coherent.i, align 4
  %size1.i = getelementptr inbounds %struct.hl_cb, ptr %cb, i32 0, i32 11
  %21 = ptrtoint ptr %size1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %size1.i, align 4
  %kernel_address2.i = getelementptr inbounds %struct.hl_cb, ptr %cb, i32 0, i32 8
  %23 = ptrtoint ptr %kernel_address2.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %kernel_address2.i, align 8
  %bus_address.i = getelementptr inbounds %struct.hl_cb, ptr %cb, i32 0, i32 9
  %25 = ptrtoint ptr %bus_address.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bus_address.i, align 4
  tail call void %20(ptr noundef %hdev, i32 noundef %22, ptr noundef %24, i32 noundef %26) #7
  br label %cb_fini.exit

cb_fini.exit:                                     ; preds = %if.else.i, %if.then.i
  tail call void @kfree(ptr noundef %cb) #7
  br label %if.end

if.end:                                           ; preds = %cb_fini.exit, %list_add.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hl_cb_destroy(ptr nocapture noundef readonly %hdev, ptr noundef %mgr, i64 noundef %cb_handle) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i64 %cb_handle, 12
  %conv = trunc i64 %shr to i32
  tail call void @_raw_spin_lock(ptr noundef %mgr) #7
  %cb_handles = getelementptr inbounds %struct.hl_cb_mgr, ptr %mgr, i32 0, i32 1
  %call = tail call ptr @idr_find(ptr noundef %cb_handles, i32 noundef %conv) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call2 = tail call ptr @idr_remove(ptr noundef %cb_handles, i32 noundef %conv) #7
  tail call void @_raw_spin_unlock(ptr noundef %mgr) #7
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !151
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #7
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #7, !srcloc !152
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i, !prof !153

if.end5.i.i.i.i.if.end_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call, i32 noundef 3) #7
  br label %if.end

if.then.i:                                        ; preds = %if.then
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !154
  %hdev1.i.i = getelementptr inbounds %struct.hl_cb, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %hdev1.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hdev1.i.i, align 4
  tail call void @hl_debugfs_remove_cb(ptr noundef nonnull %call) #7
  %is_mmu_mapped.i.i = getelementptr inbounds %struct.hl_cb, ptr %call, i32 0, i32 16
  %3 = ptrtoint ptr %is_mmu_mapped.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %is_mmu_mapped.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i.i, label %if.then.i.cb_release.exit.i_crit_edge, label %if.then.i.i

if.then.i.cb_release.exit.i_crit_edge:            ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cb_release.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %ctx.i.i = getelementptr inbounds %struct.hl_cb, ptr %call, i32 0, i32 2
  %5 = ptrtoint ptr %ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ctx.i.i, align 8
  tail call fastcc void @cb_unmap_mem(ptr noundef %6, ptr noundef nonnull %call) #7
  br label %cb_release.exit.i

cb_release.exit.i:                                ; preds = %if.then.i.i, %if.then.i.cb_release.exit.i_crit_edge
  %ctx2.i.i = getelementptr inbounds %struct.hl_cb, ptr %call, i32 0, i32 2
  %7 = ptrtoint ptr %ctx2.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ctx2.i.i, align 8
  %call.i.i = tail call i32 @hl_ctx_put(ptr noundef %8) #7
  tail call fastcc void @cb_do_release(ptr noundef %2, ptr noundef nonnull %call) #7
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock(ptr noundef %mgr) #7
  %dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.18, i32 noundef %conv) #10
  br label %if.end

if.end:                                           ; preds = %if.else, %cb_release.exit.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end_crit_edge
  %rc.0 = phi i32 [ -22, %if.else ], [ 0, %if.end5.i.i.i.i.if.end_crit_edge ], [ 0, %if.then10.i.i.i.i ], [ 0, %cb_release.exit.i ]
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hl_cb_ioctl(ptr noundef %hpriv, ptr nocapture noundef %data) local_unnamed_addr #0 align 64 {
entry:
  %status = alloca i32, align 4
  %handle = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hpriv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hpriv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #7
  %2 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %status, align 4, !annotation !155
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %handle) #7
  %3 = ptrtoint ptr %handle to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %handle, align 8
  %call = call zeroext i1 @hl_device_operational(ptr noundef %1, ptr noundef nonnull %status) #7
  br i1 %call, label %if.end8, label %do.body

do.body:                                          ; preds = %entry
  %call2 = call i32 @___ratelimit(ptr noundef nonnull @hl_cb_ioctl._rs, ptr noundef nonnull @__func__.hl_cb_ioctl) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status, align 4
  %arrayidx = getelementptr %struct.hl_device, ptr %1, i32 0, i32 11, i32 %7
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.20, ptr noundef %arrayidx) #10
  br label %cleanup

if.end8:                                          ; preds = %entry
  %op = getelementptr inbounds %struct.hl_cb_in, ptr %data, i32 0, i32 1
  %8 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %op, align 8
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %if.end8.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb20
    i32 2, label %sw.bb23
  ]

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end8
  %cb_size = getelementptr inbounds %struct.hl_cb_in, ptr %data, i32 0, i32 2
  %11 = ptrtoint ptr %cb_size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cb_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097120, i32 %12)
  %cmp = icmp ugt i32 %12, 2097120
  br i1 %cmp, label %do.end12, label %if.else

do.end12:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %dev13 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %13 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev13, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.22, i32 noundef %12, i32 noundef 2097120) #10
  br label %if.end19

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %cb_mgr = getelementptr inbounds %struct.hl_fpriv, ptr %hpriv, i32 0, i32 5
  %ctx = getelementptr inbounds %struct.hl_fpriv, ptr %hpriv, i32 0, i32 3
  %15 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ctx, align 4
  %flags = getelementptr inbounds %struct.hl_cb_in, ptr %data, i32 0, i32 4
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags, align 4
  %and = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16 = icmp ne i32 %and, 0
  %call18 = call i32 @hl_cb_create(ptr noundef %1, ptr noundef %cb_mgr, ptr noundef %16, i32 noundef %12, i1 noundef zeroext false, i1 noundef zeroext %tobool16, ptr noundef nonnull %handle)
  br label %if.end19

if.end19:                                         ; preds = %if.else, %do.end12
  %rc.0 = phi i32 [ -22, %do.end12 ], [ %call18, %if.else ]
  %19 = getelementptr inbounds i8, ptr %data, i32 8
  %20 = call ptr @memset(ptr %19, i32 0, i32 16)
  %21 = ptrtoint ptr %handle to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %handle, align 8
  %23 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %data, align 8
  br label %cleanup

sw.bb20:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %cb_mgr21 = getelementptr inbounds %struct.hl_fpriv, ptr %hpriv, i32 0, i32 5
  %24 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %data, align 8
  %call22 = call i32 @hl_cb_destroy(ptr noundef %1, ptr noundef %cb_mgr21, i64 noundef %25)
  br label %cleanup

sw.bb23:                                          ; preds = %if.end8
  %cb_mgr24 = getelementptr inbounds %struct.hl_fpriv, ptr %hpriv, i32 0, i32 5
  %26 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %data, align 8
  %flags26 = getelementptr inbounds %struct.hl_cb_in, ptr %data, i32 0, i32 4
  %28 = ptrtoint ptr %flags26 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags26, align 4
  %shr.i = lshr i64 %27, 12
  %conv.i = trunc i64 %shr.i to i32
  call void @_raw_spin_lock(ptr noundef %cb_mgr24) #7
  %cb_handles.i = getelementptr inbounds %struct.hl_fpriv, ptr %hpriv, i32 0, i32 5, i32 1
  %call.i = call ptr @idr_find(ptr noundef %cb_handles.i, i32 noundef %conv.i) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %30 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.66, i32 noundef %conv.i) #10
  br label %hl_cb_info.exit

if.end.i:                                         ; preds = %sw.bb23
  %and.i = and i32 %29, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %if.else10.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  %va_block_list.i = getelementptr inbounds %struct.hl_cb, ptr %call.i, i32 0, i32 6
  %32 = ptrtoint ptr %va_block_list.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %va_block_list.i, align 8
  %tobool3.not.i = icmp eq ptr %33, null
  br i1 %tobool3.not.i, label %do.end7.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  %start.i = getelementptr inbounds %struct.hl_vm_va_block, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %start.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %start.i, align 8
  br label %hl_cb_info.exit

do.end7.i:                                        ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev8.i = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %36 = ptrtoint ptr %dev8.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev8.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.69) #10
  br label %hl_cb_info.exit

if.else10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %cs_cnt.i = getelementptr inbounds %struct.hl_cb, ptr %call.i, i32 0, i32 12
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %cs_cnt.i, i32 noundef 4) #7
  %38 = ptrtoint ptr %cs_cnt.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %cs_cnt.i, align 4
  br label %hl_cb_info.exit

hl_cb_info.exit:                                  ; preds = %if.else10.i, %do.end7.i, %if.then4.i, %do.end.i
  %device_va.0 = phi i64 [ -1, %do.end.i ], [ -1, %if.else10.i ], [ -1, %do.end7.i ], [ %35, %if.then4.i ]
  %usage_cnt.0 = phi i32 [ 0, %do.end.i ], [ %39, %if.else10.i ], [ 0, %do.end7.i ], [ 0, %if.then4.i ]
  %rc.0.i = phi i32 [ -22, %do.end.i ], [ 0, %if.else10.i ], [ -22, %do.end7.i ], [ 0, %if.then4.i ]
  call void @_raw_spin_unlock(ptr noundef %cb_mgr24) #7
  %40 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 0, ptr %data, align 8
  %41 = ptrtoint ptr %flags26 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flags26, align 4
  %and29 = and i32 %42, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.else32, label %if.then31

if.then31:                                        ; preds = %hl_cb_info.exit
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %device_va.0, ptr %data, align 8
  br label %cleanup

if.else32:                                        ; preds = %hl_cb_info.exit
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %usage_cnt.0, ptr %data, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.else32, %if.then31, %sw.bb20, %if.end19, %if.end8.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %do.end ], [ -16, %do.body.cleanup_crit_edge ], [ %rc.0.i, %if.then31 ], [ %rc.0.i, %if.else32 ], [ %call22, %sw.bb20 ], [ %rc.0, %if.end19 ], [ -22, %if.end8.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %handle) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @hl_device_operational(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hl_cb_mmap(ptr noundef %hpriv, ptr noundef %vma) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hpriv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hpriv, align 4
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %2 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vm_pgoff, align 4
  store i32 0, ptr %vm_pgoff, align 4
  %cb_mgr = getelementptr inbounds %struct.hl_fpriv, ptr %hpriv, i32 0, i32 5
  %call = tail call ptr @hl_cb_get(ptr noundef %1, ptr noundef %cb_mgr, i32 noundef %3)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.24, i32 noundef %3) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %6 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vm_end, align 4
  %8 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vma, align 4
  %sub = sub i32 %7, %9
  %size = getelementptr inbounds %struct.hl_cb, ptr %call, i32 0, i32 11
  %10 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size, align 4
  %add = add i32 %11, 4095
  %and = and i32 %add, -4096
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %and)
  %cmp.not = icmp eq i32 %sub, %and
  br i1 %cmp.not, label %if.end12, label %do.end6

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev7 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.27, i32 noundef %sub, i32 noundef %11) #10
  br label %put_cb

if.end12:                                         ; preds = %if.end
  %14 = inttoptr i32 %9 to ptr
  %15 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %14, i32 %sub, i32 -1226833920) #12, !srcloc !156
  %asmresult = extractvalue { i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %cmp15 = icmp eq i32 %asmresult, 0
  br i1 %cmp15, label %if.end22, label %do.end19

do.end19:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %dev20 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %16 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev20, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.30, i32 noundef %9) #10
  br label %put_cb

if.end22:                                         ; preds = %if.end12
  %lock = getelementptr inbounds %struct.hl_cb, ptr %call, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock) #7
  %mmap = getelementptr inbounds %struct.hl_cb, ptr %call, i32 0, i32 13
  %18 = ptrtoint ptr %mmap to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %mmap, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool23.not = icmp eq i8 %19, 0
  br i1 %tobool23.not, label %if.end29, label %do.end27

do.end27:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %dev28 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %20 = ptrtoint ptr %dev28 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev28, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.33) #10
  br label %release_lock

if.end29:                                         ; preds = %if.end22
  %22 = ptrtoint ptr %mmap to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %mmap, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #7
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 12
  %23 = ptrtoint ptr %vm_ops to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @cb_vm_ops, ptr %vm_ops, align 4
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 15
  %24 = ptrtoint ptr %vm_private_data to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call, ptr %vm_private_data, align 4
  %asic_funcs = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 34
  %25 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %asic_funcs, align 8
  %mmap32 = getelementptr inbounds %struct.hl_asic_funcs, ptr %26, i32 0, i32 11
  %27 = ptrtoint ptr %mmap32 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mmap32, align 4
  %kernel_address = getelementptr inbounds %struct.hl_cb, ptr %call, i32 0, i32 8
  %29 = ptrtoint ptr %kernel_address to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %kernel_address, align 8
  %bus_address = getelementptr inbounds %struct.hl_cb, ptr %call, i32 0, i32 9
  %31 = ptrtoint ptr %bus_address to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %bus_address, align 4
  %33 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %size, align 4
  %call34 = tail call i32 %28(ptr noundef %1, ptr noundef %vma, ptr noundef %30, i32 noundef %32, i32 noundef %34) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end39, label %if.then36

if.then36:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_lock(ptr noundef %lock) #7
  %35 = ptrtoint ptr %mmap to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %mmap, align 4
  br label %release_lock

if.end39:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %size, align 4
  %mmap_size = getelementptr inbounds %struct.hl_cb, ptr %call, i32 0, i32 10
  %38 = ptrtoint ptr %mmap_size to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %mmap_size, align 8
  %39 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %3, ptr %vm_pgoff, align 4
  br label %cleanup

release_lock:                                     ; preds = %if.then36, %do.end27
  %rc.0 = phi i32 [ -22, %do.end27 ], [ %call34, %if.then36 ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #7
  br label %put_cb

put_cb:                                           ; preds = %release_lock, %do.end19, %do.end6
  %rc.1 = phi i32 [ -22, %do.end6 ], [ %rc.0, %release_lock ], [ -22, %do.end19 ]
  tail call void @hl_cb_put(ptr noundef nonnull %call)
  br label %cleanup

cleanup:                                          ; preds = %put_cb, %if.end39, %do.end
  %retval.0 = phi i32 [ %rc.1, %put_cb ], [ 0, %if.end39 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @hl_cb_get(ptr nocapture noundef readonly %hdev, ptr noundef %mgr, i32 noundef %handle) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef %mgr) #7
  %cb_handles = getelementptr inbounds %struct.hl_cb_mgr, ptr %mgr, i32 0, i32 1
  %call = tail call ptr @idr_find(ptr noundef %cb_handles, i32 noundef %handle) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock(ptr noundef %mgr) #7
  %dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.35, i32 noundef %handle) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #7
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #7, !srcloc !157
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !158

if.end.if.end15.sink.split.i.i.i.i_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %3 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !153

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call, i32 noundef %.sink.i.i.i.i) #7
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %mgr) #7
  br label %cleanup

cleanup:                                          ; preds = %kref_get.exit, %if.then
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hl_cb_put(ptr noundef %cb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %cb, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !151
  tail call void @llvm.prefetch.p0(ptr %cb, i32 1, i32 3, i32 1) #7
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cb, ptr %cb, i32 1, ptr elementtype(i32) %cb) #7, !srcloc !152
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !153

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %cb, i32 noundef 3) #7
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !154
  %hdev1.i.i = getelementptr inbounds %struct.hl_cb, ptr %cb, i32 0, i32 1
  %1 = ptrtoint ptr %hdev1.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hdev1.i.i, align 4
  tail call void @hl_debugfs_remove_cb(ptr noundef %cb) #7
  %is_mmu_mapped.i.i = getelementptr inbounds %struct.hl_cb, ptr %cb, i32 0, i32 16
  %3 = ptrtoint ptr %is_mmu_mapped.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %is_mmu_mapped.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i.i, label %if.then.i.cb_release.exit.i_crit_edge, label %if.then.i.i

if.then.i.cb_release.exit.i_crit_edge:            ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cb_release.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %ctx.i.i = getelementptr inbounds %struct.hl_cb, ptr %cb, i32 0, i32 2
  %5 = ptrtoint ptr %ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ctx.i.i, align 8
  tail call fastcc void @cb_unmap_mem(ptr noundef %6, ptr noundef %cb) #7
  br label %cb_release.exit.i

cb_release.exit.i:                                ; preds = %if.then.i.i, %if.then.i.cb_release.exit.i_crit_edge
  %ctx2.i.i = getelementptr inbounds %struct.hl_cb, ptr %cb, i32 0, i32 2
  %7 = ptrtoint ptr %ctx2.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ctx2.i.i, align 8
  %call.i.i = tail call i32 @hl_ctx_put(ptr noundef %8) #7
  tail call fastcc void @cb_do_release(ptr noundef %2, ptr noundef %cb) #7
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %cb_release.exit.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hl_cb_mgr_init(ptr noundef %mgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__raw_spin_lock_init(ptr noundef %mgr, ptr noundef nonnull @.str.37, ptr noundef nonnull @hl_cb_mgr_init.__key, i16 noundef signext 3) #7
  %cb_handles = getelementptr inbounds %struct.hl_cb_mgr, ptr %mgr, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %cb_handles, ptr noundef nonnull @.str.71, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #7
  %xa_flags.i.i.i = getelementptr inbounds %struct.hl_cb_mgr, ptr %mgr, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %xa_flags.i.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 67108868, ptr %xa_flags.i.i.i, align 4
  %xa_head.i.i.i = getelementptr inbounds %struct.hl_cb_mgr, ptr %mgr, i32 0, i32 1, i32 0, i32 2
  %1 = ptrtoint ptr %xa_head.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %xa_head.i.i.i, align 4
  %idr_base.i.i = getelementptr inbounds %struct.hl_cb_mgr, ptr %mgr, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %idr_base.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %idr_base.i.i, align 4
  %idr_next.i.i = getelementptr inbounds %struct.hl_cb_mgr, ptr %mgr, i32 0, i32 1, i32 2
  %3 = ptrtoint ptr %idr_next.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %idr_next.i.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hl_cb_mgr_fini(ptr nocapture noundef readonly %hdev, ptr noundef %mgr) local_unnamed_addr #0 align 64 {
entry:
  %id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #7
  %cb_handles = getelementptr inbounds %struct.hl_cb_mgr, ptr %mgr, i32 0, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %id, align 4
  %call8 = call ptr @idr_get_next(ptr noundef %cb_handles, ptr noundef nonnull %id) #7
  %cmp.not9 = icmp eq ptr %call8, null
  br i1 %cmp.not9, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %call10 = phi ptr [ %call8, %for.body.lr.ph ], [ %call, %for.inc.for.body_crit_edge ]
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call10, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !151
  call void @llvm.prefetch.p0(ptr nonnull %call10, i32 1, i32 3, i32 1) #7
  %1 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call10, ptr nonnull %call10, i32 1, ptr nonnull elementtype(i32) %call10) #7, !srcloc !152
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.do.end_crit_edge, label %if.then10.i.i.i.i, !prof !153

if.end5.i.i.i.i.do.end_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @refcount_warn_saturate(ptr noundef nonnull %call10, i32 noundef 3) #7
  br label %do.end

if.then.i:                                        ; preds = %for.body
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !154
  %hdev1.i.i = getelementptr inbounds %struct.hl_cb, ptr %call10, i32 0, i32 1
  %2 = ptrtoint ptr %hdev1.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdev1.i.i, align 4
  call void @hl_debugfs_remove_cb(ptr noundef nonnull %call10) #7
  %is_mmu_mapped.i.i = getelementptr inbounds %struct.hl_cb, ptr %call10, i32 0, i32 16
  %4 = ptrtoint ptr %is_mmu_mapped.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_mmu_mapped.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i.i, label %if.then.i.kref_put.exit_crit_edge, label %if.then.i.i

if.then.i.kref_put.exit_crit_edge:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %kref_put.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %ctx.i.i = getelementptr inbounds %struct.hl_cb, ptr %call10, i32 0, i32 2
  %6 = ptrtoint ptr %ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctx.i.i, align 8
  call fastcc void @cb_unmap_mem(ptr noundef %7, ptr noundef nonnull %call10) #7
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i.i, %if.then.i.kref_put.exit_crit_edge
  %ctx2.i.i = getelementptr inbounds %struct.hl_cb, ptr %call10, i32 0, i32 2
  %8 = ptrtoint ptr %ctx2.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctx2.i.i, align 8
  %call.i.i = call i32 @hl_ctx_put(ptr noundef %9) #7
  call fastcc void @cb_do_release(ptr noundef %3, ptr noundef nonnull %call10) #7
  br label %for.inc

do.end:                                           ; preds = %if.then10.i.i.i.i, %if.end5.i.i.i.i.do.end_crit_edge
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %12 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id, align 4
  %ctx = getelementptr inbounds %struct.hl_cb, ptr %call10, i32 0, i32 2
  %14 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ctx, align 8
  %asid = getelementptr inbounds %struct.hl_ctx, ptr %15, i32 0, i32 21
  %16 = ptrtoint ptr %asid to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %asid, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.38, i32 noundef %13, i32 noundef %17) #10
  br label %for.inc

for.inc:                                          ; preds = %do.end, %kref_put.exit
  %18 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %id, align 4
  %add = add i32 %19, 1
  store i32 %add, ptr %id, align 4
  %call = call ptr @idr_get_next(ptr noundef %cb_handles, ptr noundef nonnull %id) #7
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  call void @idr_destroy(ptr noundef %cb_handles) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_get_next(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @hl_cb_kernel_create(ptr noundef %hdev, i32 noundef %cb_size, i1 noundef zeroext %internal_cb) local_unnamed_addr #0 align 64 {
entry:
  %cb_handle = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cb_handle) #7
  %0 = ptrtoint ptr %cb_handle to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %cb_handle, align 8, !annotation !155
  %kernel_cb_mgr = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 23
  %kernel_ctx = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 19
  %1 = ptrtoint ptr %kernel_ctx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %kernel_ctx, align 4
  %call = call i32 @hl_cb_create(ptr noundef %hdev, ptr noundef %kernel_cb_mgr, ptr noundef %2, i32 noundef %cb_size, i1 noundef zeroext %internal_cb, i1 noundef zeroext false, ptr noundef nonnull %cb_handle)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.40, i32 noundef %call) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %cb_handle to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %cb_handle, align 8
  %shr = lshr i64 %6, 12
  %conv = trunc i64 %shr to i32
  %call3 = tail call ptr @hl_cb_get(ptr noundef %hdev, ptr noundef %kernel_cb_mgr, i32 noundef %conv)
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %do.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev9 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %7 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev9, align 4
  tail call void (ptr, ptr, ...) @_dev_crit(ptr noundef %8, ptr noundef nonnull @.str.43, i32 noundef %conv) #10
  %shl = and i64 %6, -4096
  %call13 = tail call i32 @hl_cb_destroy(ptr noundef %hdev, ptr noundef %kernel_cb_mgr, i64 noundef %shl)
  br label %cleanup

cleanup:                                          ; preds = %do.end8, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ null, %do.end8 ], [ %call3, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cb_handle) #7
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_crit(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hl_cb_pool_init(ptr noundef %hdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cb_pool = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 40
  %0 = ptrtoint ptr %cb_pool to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %cb_pool, ptr %cb_pool, align 4
  %prev.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 40, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %cb_pool, ptr %prev.i, align 4
  %cb_pool_lock = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 41
  tail call void @__raw_spin_lock_init(ptr noundef %cb_pool_lock, ptr noundef nonnull @.str.46, ptr noundef nonnull @hl_cb_pool_init.__key, i16 noundef signext 3) #7
  %cb_pool_cb_cnt = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 46
  %2 = ptrtoint ptr %cb_pool_cb_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cb_pool_cb_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp15.not = icmp eq i32 %3, 0
  br i1 %cmp15.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %cb_pool_cb_size = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 47
  br label %for.body

for.body:                                         ; preds = %list_add.exit.for.body_crit_edge, %for.body.lr.ph
  %i.016 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %list_add.exit.for.body_crit_edge ]
  %4 = ptrtoint ptr %cb_pool_cb_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cb_pool_cb_size, align 4
  %call2 = tail call fastcc ptr @hl_cb_alloc(ptr noundef %hdev, i32 noundef %5, i32 noundef 0, i1 noundef zeroext false)
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  %is_pool = getelementptr inbounds %struct.hl_cb, ptr %call2, i32 0, i32 14
  %6 = ptrtoint ptr %is_pool to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %is_pool, align 1
  %pool_list = getelementptr inbounds %struct.hl_cb, ptr %call2, i32 0, i32 5
  %7 = ptrtoint ptr %cb_pool to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cb_pool, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %pool_list, ptr noundef %cb_pool, ptr noundef %8) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_add.exit_crit_edge

if.then.list_add.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %pool_list, ptr %prev1.i.i, align 4
  %10 = ptrtoint ptr %pool_list to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %8, ptr %pool_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.hl_cb, ptr %call2, i32 0, i32 5, i32 1
  %11 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %cb_pool, ptr %prev3.i.i, align 4
  %12 = ptrtoint ptr %cb_pool to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %pool_list, ptr %cb_pool, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.then.list_add.exit_crit_edge
  %inc = add nuw i32 %i.016, 1
  %13 = ptrtoint ptr %cb_pool_cb_cnt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cb_pool_cb_cnt, align 8
  %cmp = icmp ult i32 %inc, %14
  br i1 %cmp, label %list_add.exit.for.body_crit_edge, label %list_add.exit.cleanup_crit_edge

list_add.exit.cleanup_crit_edge:                  ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

list_add.exit.for.body_crit_edge:                 ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = tail call i32 @hl_cb_pool_fini(ptr noundef %hdev)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %list_add.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.else ], [ 0, %entry.cleanup_crit_edge ], [ 0, %list_add.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hl_cb_pool_fini(ptr noundef %hdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cb_pool = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 40
  %0 = ptrtoint ptr %cb_pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cb_pool, align 8
  %cmp.not21 = icmp eq ptr %1, %cb_pool
  br i1 %cmp.not21, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %internal_cb_pool.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 44
  %asic_funcs.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  br label %for.body

for.body:                                         ; preds = %cb_fini.exit.for.body_crit_edge, %for.body.lr.ph
  %.pn.in22 = phi ptr [ %1, %for.body.lr.ph ], [ %.pn, %cb_fini.exit.for.body_crit_edge ]
  %cb.0 = getelementptr i8, ptr %.pn.in22, i32 -64
  %2 = ptrtoint ptr %.pn.in22 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in22, align 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in22) #7
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in22, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %.pn.in22 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %.pn.in22, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %.pn.in22 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in22, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in22, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %is_internal.i = getelementptr i8, ptr %.pn.in22, i32 46
  %11 = ptrtoint ptr %is_internal.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %is_internal.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %internal_cb_pool.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %internal_cb_pool.i, align 4
  %kernel_address.i = getelementptr i8, ptr %.pn.in22, i32 24
  %15 = ptrtoint ptr %kernel_address.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %kernel_address.i, align 8
  %17 = ptrtoint ptr %16 to i32
  %size.i = getelementptr i8, ptr %.pn.in22, i32 36
  %18 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %size.i, align 4
  tail call void @gen_pool_free_owner(ptr noundef %14, i32 noundef %17, i32 noundef %19, ptr noundef null) #7
  br label %cb_fini.exit

if.else.i:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %asic_funcs.i, align 8
  %asic_dma_free_coherent.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %21, i32 0, i32 15
  %22 = ptrtoint ptr %asic_dma_free_coherent.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %asic_dma_free_coherent.i, align 4
  %size1.i = getelementptr i8, ptr %.pn.in22, i32 36
  %24 = ptrtoint ptr %size1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %size1.i, align 4
  %kernel_address2.i = getelementptr i8, ptr %.pn.in22, i32 24
  %26 = ptrtoint ptr %kernel_address2.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %kernel_address2.i, align 8
  %bus_address.i = getelementptr i8, ptr %.pn.in22, i32 28
  %28 = ptrtoint ptr %bus_address.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bus_address.i, align 4
  tail call void %23(ptr noundef %hdev, i32 noundef %25, ptr noundef %27, i32 noundef %29) #7
  br label %cb_fini.exit

cb_fini.exit:                                     ; preds = %if.else.i, %if.then.i
  tail call void @kfree(ptr noundef %cb.0) #7
  %cmp.not = icmp eq ptr %.pn, %cb_pool
  br i1 %cmp.not, label %cb_fini.exit.for.end_crit_edge, label %cb_fini.exit.for.body_crit_edge

cb_fini.exit.for.body_crit_edge:                  ; preds = %cb_fini.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cb_fini.exit.for.end_crit_edge:                   ; preds = %cb_fini.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %cb_fini.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hl_cb_va_pool_init(ptr nocapture noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hdev1 = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 3
  %0 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev1, align 4
  %supports_cb_mapping = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 97
  %2 = ptrtoint ptr %supports_cb_mapping to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %supports_cb_mapping, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %page_size = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 5, i32 15
  %4 = ptrtoint ptr %page_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %page_size, align 8
  %6 = tail call i32 @llvm.cttz.i32(i32 %5, i1 false) #7, !range !159
  %call2 = tail call ptr @gen_pool_create(i32 noundef %6, i32 noundef -1) #7
  %cb_va_pool = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 13
  %7 = ptrtoint ptr %cb_va_pool to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call2, ptr %cb_va_pool, align 8
  %tobool4.not = icmp eq ptr %call2, null
  br i1 %tobool4.not, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.47) #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %cb_va_start_addr = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 25
  %10 = ptrtoint ptr %cb_va_start_addr to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %cb_va_start_addr, align 8
  %conv = trunc i64 %11 to i32
  %cb_va_end_addr = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 26
  %12 = ptrtoint ptr %cb_va_end_addr to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %cb_va_end_addr, align 8
  %sub = sub i64 %13, %11
  %conv9 = trunc i64 %sub to i32
  %call.i.i = tail call i32 @gen_pool_add_owner(ptr noundef nonnull %call2, i32 noundef %conv, i32 noundef -1, i32 noundef %conv9, i32 noundef -1, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool11.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool11.not, label %if.end6.cleanup_crit_edge, label %do.end15

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end15:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %dev16 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev16, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.50) #10
  %16 = ptrtoint ptr %cb_va_pool to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cb_va_pool, align 8
  tail call void @gen_pool_destroy(ptr noundef %17) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end15, %if.end6.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %do.end15 ], [ -12, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gen_pool_create(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gen_pool_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hl_cb_va_pool_fini(ptr nocapture noundef readonly %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hdev1 = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 3
  %0 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev1, align 4
  %supports_cb_mapping = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 97
  %2 = ptrtoint ptr %supports_cb_mapping to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %supports_cb_mapping, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %cb_va_pool = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 13
  %4 = ptrtoint ptr %cb_va_pool to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cb_va_pool, align 8
  tail call void @gen_pool_destroy(ptr noundef %5) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gen_pool_alloc_algo_owner(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hl_mmu_map_page(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hl_mmu_invalidate_cache(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hl_mmu_unmap_page(ptr noundef, i64 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gen_pool_free_owner(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @hl_debugfs_remove_cb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cb_vm_close(ptr nocapture noundef %vma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 15
  %0 = ptrtoint ptr %vm_private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vm_private_data, align 4
  %mmap_size = getelementptr inbounds %struct.hl_cb, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %mmap_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mmap_size, align 8
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %4 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vm_end, align 4
  %6 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vma, align 4
  %sub.neg = sub i32 %7, %5
  %sub1 = add i32 %sub.neg, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub1)
  %cmp = icmp sgt i32 %sub1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %mmap_size to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %sub1, ptr %mmap_size, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %lock = getelementptr inbounds %struct.hl_cb, ptr %1, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock) #7
  %mmap = getelementptr inbounds %struct.hl_cb, ptr %1, i32 0, i32 13
  %9 = ptrtoint ptr %mmap to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %mmap, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #7
  tail call void @hl_cb_put(ptr noundef %1)
  %10 = ptrtoint ptr %vm_private_data to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %vm_private_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gen_pool_add_owner(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 80)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 80)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !15, !17, !18, !19, !21, !22, !23, !25, !26, !27, !29, !30, !32, !33, !34, !35, !37, !38, !39, !40, !41, !43, !44, !45, !47, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !67, !69, !70, !72, !73, !74, !75, !77, !78, !79, !80, !82, !83, !84, !85, !87, !88, !90, !91, !92, !93, !95, !96, !97, !99, !100, !101, !102, !104, !105, !106, !107, !108, !110, !111, !112, !113, !115, !116, !117, !119, !120, !121, !123, !124, !125, !126, !127, !129, !130, !131, !132, !134, !135, !136, !138, !140}
!llvm.module.flags = !{!141, !142, !143, !144, !145, !146, !147, !148}
!llvm.ident = !{!149}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/misc/habanalabs/common/command_buffer.c", i32 254, i32 3}
!2 = !{ptr @hl_cb_create._rs, !1, !"_rs", i1 false, i1 false}
!3 = !{ptr @__func__.hl_cb_create, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @hl_cb_create._entry, !1, !"_entry", i1 false, i1 false}
!9 = !{ptr @hl_cb_create._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/misc/habanalabs/common/command_buffer.c", i32 261, i32 3}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @hl_cb_create._entry.5, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @hl_cb_create._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/misc/habanalabs/common/command_buffer.c", i32 284, i32 5}
!17 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @hl_cb_create.__UNIQUE_ID_ddebug297, !16, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!19 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/misc/habanalabs/common/command_buffer.c", i32 303, i32 4}
!21 = !{ptr @hl_cb_create._entry.11, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @hl_cb_create._entry_ptr.13, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.15, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/misc/habanalabs/common/command_buffer.c", i32 319, i32 3}
!25 = !{ptr @hl_cb_create._entry.14, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @hl_cb_create._entry_ptr.16, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @hl_cb_create.__key, !28, !"__key", i1 false, i1 false}
!28 = !{!"../drivers/misc/habanalabs/common/command_buffer.c", i32 326, i32 2}
!29 = !{ptr @.str.17, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/misc/habanalabs/common/command_buffer.c", i32 373, i32 3}
!32 = !{ptr @.str.19, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @hl_cb_destroy._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @hl_cb_destroy._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @hl_cb_ioctl._rs, !36, !"_rs", i1 false, i1 false}
!36 = !{!"../drivers/misc/habanalabs/common/command_buffer.c", i32 433, i32 3}
!37 = !{ptr @__func__.hl_cb_ioctl, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.20, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @hl_cb_ioctl._entry, !36, !"_entry", i1 false, i1 false}
!40 = !{ptr @hl_cb_ioctl._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.22, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/misc/habanalabs/common/command_buffer.c", i32 442, i32 4}
!43 = !{ptr @hl_cb_ioctl._entry.21, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @hl_cb_ioctl._entry_ptr.23, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.24, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/misc/habanalabs/common/command_buffer.c", i32 524, i32 3}
!47 = !{ptr @.str.25, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @hl_cb_mmap._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @hl_cb_mmap._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.27, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/misc/habanalabs/common/command_buffer.c", i32 532, i32 3}
!52 = !{ptr @hl_cb_mmap._entry.26, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @hl_cb_mmap._entry_ptr.28, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.30, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/misc/habanalabs/common/command_buffer.c", i32 541, i32 3}
!56 = !{ptr @hl_cb_mmap._entry.29, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @hl_cb_mmap._entry_ptr.31, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.33, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/misc/habanalabs/common/command_buffer.c", i32 552, i32 3}
!60 = !{ptr @hl_cb_mmap._entry.32, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @hl_cb_mmap._entry_ptr.34, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.35, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/misc/habanalabs/common/command_buffer.c", i32 601, i32 3}
!64 = !{ptr @.str.36, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @hl_cb_get._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @hl_cb_get._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @hl_cb_mgr_init.__key, !68, !"__key", i1 false, i1 false}
!68 = !{!"../drivers/misc/habanalabs/common/command_buffer.c", i32 621, i32 2}
!69 = !{ptr @.str.37, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.38, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/misc/habanalabs/common/command_buffer.c", i32 635, i32 4}
!72 = !{ptr @.str.39, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @hl_cb_mgr_fini._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @hl_cb_mgr_fini._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.40, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/misc/habanalabs/common/command_buffer.c", i32 653, i32 3}
!77 = !{ptr @.str.41, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @hl_cb_kernel_create._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @hl_cb_kernel_create._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.43, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/misc/habanalabs/common/command_buffer.c", i32 662, i32 3}
!82 = !{ptr @.str.44, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @hl_cb_kernel_create._entry.42, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @hl_cb_kernel_create._entry_ptr.45, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @hl_cb_pool_init.__key, !86, !"__key", i1 false, i1 false}
!86 = !{!"../drivers/misc/habanalabs/common/command_buffer.c", i32 681, i32 2}
!87 = !{ptr @.str.46, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.47, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/misc/habanalabs/common/command_buffer.c", i32 721, i32 3}
!90 = !{ptr @.str.48, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @hl_cb_va_pool_init._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @hl_cb_va_pool_init._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.50, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/misc/habanalabs/common/command_buffer.c", i32 729, i32 3}
!95 = !{ptr @hl_cb_va_pool_init._entry.49, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @hl_cb_va_pool_init._entry_ptr.51, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.52, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/misc/habanalabs/common/command_buffer.c", i32 228, i32 3}
!99 = !{ptr @.str.53, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @hl_cb_alloc._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @hl_cb_alloc._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @cb_map_mem._rs, !103, !"_rs", i1 false, i1 false}
!103 = !{!"../drivers/misc/habanalabs/common/command_buffer.c", i32 27, i32 3}
!104 = !{ptr @__func__.cb_map_mem, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.54, !103, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @cb_map_mem._entry, !103, !"_entry", i1 false, i1 false}
!107 = !{ptr @cb_map_mem._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @cb_map_mem._rs.55, !109, !"_rs", i1 false, i1 false}
!109 = !{!"../drivers/misc/habanalabs/common/command_buffer.c", i32 33, i32 3}
!110 = !{ptr @.str.57, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @cb_map_mem._entry.56, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @cb_map_mem._entry_ptr.58, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.60, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/misc/habanalabs/common/command_buffer.c", i32 46, i32 4}
!115 = !{ptr @cb_map_mem._entry.59, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @cb_map_mem._entry_ptr.61, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.63, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/misc/habanalabs/common/command_buffer.c", i32 74, i32 4}
!119 = !{ptr @cb_map_mem._entry.62, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @cb_map_mem._entry_ptr.64, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @cb_unmap_mem._rs, !122, !"_rs", i1 false, i1 false}
!122 = !{!"../drivers/misc/habanalabs/common/command_buffer.c", i32 125, i32 4}
!123 = !{ptr @__func__.cb_unmap_mem, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @.str.65, !122, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @cb_unmap_mem._entry, !122, !"_entry", i1 false, i1 false}
!126 = !{ptr @cb_unmap_mem._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.66, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/misc/habanalabs/common/command_buffer.c", i32 399, i32 3}
!129 = !{ptr @.str.67, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @hl_cb_info._entry, !128, !"_entry", i1 false, i1 false}
!131 = !{ptr @hl_cb_info._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.69, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/misc/habanalabs/common/command_buffer.c", i32 410, i32 4}
!134 = !{ptr @hl_cb_info._entry.68, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @hl_cb_info._entry_ptr.70, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @cb_vm_ops, !137, !"cb_vm_ops", i1 false, i1 false}
!137 = !{!"../drivers/misc/habanalabs/common/command_buffer.c", i32 504, i32 42}
!138 = !{ptr @xa_init_flags.__key, !139, !"__key", i1 false, i1 false}
!139 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!140 = !{ptr @.str.71, !139, !"<string literal>", i1 false, i1 false}
!141 = !{i32 1, !"wchar_size", i32 2}
!142 = !{i32 1, !"min_enum_size", i32 4}
!143 = !{i32 8, !"branch-target-enforcement", i32 0}
!144 = !{i32 8, !"sign-return-address", i32 0}
!145 = !{i32 8, !"sign-return-address-all", i32 0}
!146 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!147 = !{i32 7, !"uwtable", i32 1}
!148 = !{i32 7, !"frame-pointer", i32 2}
!149 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!150 = !{i64 2149045203, i64 2149045208, i64 2149045221, i64 2149045265, i64 2149045299, i64 2149045320}
!151 = !{i64 2148652919}
!152 = !{i64 2148567383, i64 2148567415, i64 2148567444, i64 2148567478, i64 2148567509, i64 2148567532}
!153 = !{!"branch_weights", i32 2000, i32 1}
!154 = !{i64 2150734572}
!155 = !{!"auto-init"}
!156 = !{i64 2155883851, i64 2155883876}
!157 = !{i64 2148564918, i64 2148564950, i64 2148564979, i64 2148565013, i64 2148565044, i64 2148565067}
!158 = !{!"branch_weights", i32 1, i32 2000}
!159 = !{i32 0, i32 33}
