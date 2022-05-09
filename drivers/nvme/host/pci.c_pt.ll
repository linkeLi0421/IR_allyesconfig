; ModuleID = '/llk/IR_all_yes/drivers/nvme/host/pci.c_pt.bc'
source_filename = "../drivers/nvme/host/pci.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.83 }
%union.anon.83 = type { ptr }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pci_error_handlers = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvme_ctrl_ops = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.84 }
%struct.atomic_t = type { i32 }
%union.anon.84 = type { i32 }
%struct.blk_mq_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.92, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.92 = type { ptr }
%struct.nvme_dev = type { ptr, %struct.blk_mq_tag_set, %struct.blk_mq_tag_set, ptr, ptr, ptr, ptr, i32, i32, [3 x i32], i32, i32, i32, i32, ptr, i32, %struct.work_struct, %struct.mutex, i8, i64, i8, i32, i32, %struct.nvme_ctrl, i32, i8, ptr, ptr, i32, ptr, i32, i64, i32, i32, ptr, ptr, i32, i32, i32, i8 }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.nvme_ctrl = type { i8, i32, i8, %struct.spinlock, %struct.mutex, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.list_head, %struct.rw_semaphore, %struct.device, ptr, ptr, %struct.cdev, %struct.work_struct, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.list_head, ptr, [12 x i8], i16, i32, i16, i32, i64, i32, i32, i32, i32, i32, i32, i32, [3 x i16], i16, i16, i16, i16, i16, i32, %struct.atomic_t, i8, i32, i32, i16, i8, i8, i16, i16, i32, i32, i32, i32, i32, i8, i32, [32 x %struct.nvme_id_power_state], ptr, %struct.xarray, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.nvme_command, %struct.work_struct, i32, i8, i8, i32, i32, %struct.mutex, ptr, i32, %struct.timer_list, %struct.work_struct, i64, i8, i32, i32, i32, i16, i32, i32, i16, i16, i32, i32, ptr, ptr, i32, %struct.nvme_fault_inject }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.nvme_id_power_state = type { i16, i8, i8, i32, i32, i8, i8, i8, i8, i16, i8, i8, i16, i8, [9 x i8] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.nvme_command = type { %union.anon.93 }
%union.anon.93 = type { %struct.nvme_common_command }
%struct.nvme_common_command = type { i8, i8, i16, i32, [2 x i32], i64, %union.nvme_data_ptr, i32, i32, i32, i32, i32, i32 }
%union.nvme_data_ptr = type { %struct.anon.94 }
%struct.anon.94 = type { i64, i64 }
%struct.nvme_fault_inject = type { %struct.fault_attr, ptr, i8, i16 }
%struct.fault_attr = type { i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i8, i32, i32, i32, i32, i32, i32, %struct.ratelimit_state, ptr }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.irq_affinity = type { i32, i32, i32, [4 x i32], ptr, ptr }
%struct.pci_bus_region = type { i32, i32 }
%struct.nvme_queue = type { ptr, %struct.spinlock, ptr, [76 x i8], %struct.spinlock, ptr, i32, i32, ptr, i32, i16, i16, i16, i16, i16, i8, i8, i32, ptr, ptr, ptr, ptr, %struct.completion, [104 x i8] }
%struct.nvme_create_cq = type { i8, i8, i16, [5 x i32], i64, i64, i16, i16, i16, i16, [4 x i32] }
%struct.nvme_create_sq = type { i8, i8, i16, [5 x i32], i64, i64, i16, i16, i16, i16, [4 x i32] }
%struct.nvme_delete_queue = type { i8, i8, i16, [9 x i32], i16, i16, [5 x i32] }
%struct.nvme_dbbuf = type { i8, i8, i16, [5 x i32], i64, i64, [6 x i32] }
%struct.nvme_host_mem_buf_desc = type { i64, i32, i32 }
%struct.nvme_features = type { i8, i8, i16, i32, [2 x i64], %union.nvme_data_ptr, i32, i32, i32, i32, i32, i32 }
%struct.request = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, %union.anon.41, ptr, i64, i64, i64, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, %struct.atomic_t, i32, %union.anon.42, %union.anon.43, %union.anon.44, %union.anon.49, ptr, ptr }
%union.anon.41 = type { %struct.list_head }
%union.anon.42 = type { %struct.hlist_node }
%union.anon.43 = type { %struct.rb_node }
%union.anon.44 = type { %struct.anon.48 }
%struct.anon.48 = type { i32, %struct.list_head, ptr }
%union.anon.49 = type { i64, [8 x i8] }
%struct.nvme_completion = type { %union.nvme_result, i16, i16, i16, i16 }
%union.nvme_result = type { i64 }
%struct.io_comp_batch = type { ptr, i8, ptr }
%struct.blk_mq_tags = type { i32, i32, %struct.atomic_t, %struct.sbitmap_queue, %struct.sbitmap_queue, ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.sbitmap_queue = type { %struct.sbitmap, i32, %struct.atomic_t, ptr, %struct.atomic_t, i32 }
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.40, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.40 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.bio_integrity_payload = type { ptr, %struct.bvec_iter, i16, i16, i16, %struct.bvec_iter, %struct.work_struct, ptr, [0 x %struct.bio_vec] }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.nvme_sgl_desc = type { i64, i32, [3 x i8], i8 }
%struct.blk_mq_hw_ctx = type { %struct.anon.89, %struct.delayed_work, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, %struct.sbitmap, ptr, i32, i16, i16, ptr, %struct.spinlock, %struct.wait_queue_entry, %struct.atomic_t, ptr, ptr, i32, i32, i32, i32, %struct.atomic_t, %struct.hlist_node, %struct.hlist_node, %struct.kobject, ptr, ptr, %struct.list_head, [76 x i8] }
%struct.anon.89 = type { %struct.spinlock, %struct.list_head, i32, [72 x i8] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.blk_mq_queue_data = type { ptr, i8 }
%struct.nvme_request = type { ptr, %union.nvme_result, i8, i8, i8, i16, ptr }
%struct.nvme_abort_cmd = type { i8, i8, i16, [9 x i32], i16, i16, [5 x i32] }
%struct.nvme_rw_command = type { i8, i8, i16, i32, i64, i64, %union.nvme_data_ptr, i64, i16, i16, i32, i32, i16, i16 }

@__param_str_use_threaded_interrupts = internal constant [29 x i8] c"nvme.use_threaded_interrupts\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@use_threaded_interrupts = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_use_threaded_interrupts = internal constant %struct.kernel_param { ptr @__param_str_use_threaded_interrupts, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.83 { ptr @use_threaded_interrupts } }, section "__param", align 4
@__UNIQUE_ID_use_threaded_interruptstype365 = internal constant [42 x i8] c"nvme.parmtype=use_threaded_interrupts:int\00", section ".modinfo", align 1
@__param_str_use_cmb_sqes = internal constant [18 x i8] c"nvme.use_cmb_sqes\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@use_cmb_sqes = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_use_cmb_sqes = internal constant %struct.kernel_param { ptr @__param_str_use_cmb_sqes, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.83 { ptr @use_cmb_sqes } }, section "__param", align 4
@__UNIQUE_ID_use_cmb_sqestype366 = internal constant [32 x i8] c"nvme.parmtype=use_cmb_sqes:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_use_cmb_sqes367 = internal constant [67 x i8] c"nvme.parm=use_cmb_sqes:use controller's memory buffer for I/O SQes\00", section ".modinfo", align 1
@__param_str_max_host_mem_size_mb = internal constant [26 x i8] c"nvme.max_host_mem_size_mb\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@max_host_mem_size_mb = internal global { i32, [28 x i8] } { i32 128, [28 x i8] zeroinitializer }, align 32
@__param_max_host_mem_size_mb = internal constant %struct.kernel_param { ptr @__param_str_max_host_mem_size_mb, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.83 { ptr @max_host_mem_size_mb } }, section "__param", align 4
@__UNIQUE_ID_max_host_mem_size_mbtype368 = internal constant [40 x i8] c"nvme.parmtype=max_host_mem_size_mb:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_max_host_mem_size_mb369 = internal constant [93 x i8] c"nvme.parm=max_host_mem_size_mb:Maximum Host Memory Buffer (HMB) size per controller (in MiB)\00", section ".modinfo", align 1
@__param_str_sgl_threshold = internal constant [19 x i8] c"nvme.sgl_threshold\00", align 1
@sgl_threshold = internal global { i32, [28 x i8] } { i32 32768, [28 x i8] zeroinitializer }, align 32
@__param_sgl_threshold = internal constant %struct.kernel_param { ptr @__param_str_sgl_threshold, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.83 { ptr @sgl_threshold } }, section "__param", align 4
@__UNIQUE_ID_sgl_thresholdtype370 = internal constant [33 x i8] c"nvme.parmtype=sgl_threshold:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_sgl_threshold371 = internal constant [123 x i8] c"nvme.parm=sgl_threshold:Use SGLs when average request segment size is larger or equal to this size. Use 0 to disable SGLs.\00", section ".modinfo", align 1
@__param_str_io_queue_depth = internal constant [20 x i8] c"nvme.io_queue_depth\00", align 1
@io_queue_depth_ops = internal constant { %struct.kernel_param_ops, [16 x i8] } { %struct.kernel_param_ops { i32 0, ptr @io_queue_depth_set, ptr @param_get_uint, ptr null }, [16 x i8] zeroinitializer }, align 32
@io_queue_depth = internal global { i32, [28 x i8] } { i32 1024, [28 x i8] zeroinitializer }, align 32
@__param_io_queue_depth = internal constant %struct.kernel_param { ptr @__param_str_io_queue_depth, ptr null, ptr @io_queue_depth_ops, i16 420, i8 -1, i8 0, %union.anon.83 { ptr @io_queue_depth } }, section "__param", align 4
@__UNIQUE_ID_io_queue_depth372 = internal constant [68 x i8] c"nvme.parm=io_queue_depth:set io queue depth, should >= 2 and < 4096\00", section ".modinfo", align 1
@__param_str_write_queues = internal constant [18 x i8] c"nvme.write_queues\00", align 1
@io_queue_count_ops = internal constant { %struct.kernel_param_ops, [16 x i8] } { %struct.kernel_param_ops { i32 0, ptr @io_queue_count_set, ptr @param_get_uint, ptr null }, [16 x i8] zeroinitializer }, align 32
@write_queues = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_write_queues = internal constant %struct.kernel_param { ptr @__param_str_write_queues, ptr null, ptr @io_queue_count_ops, i16 420, i8 -1, i8 0, %union.anon.83 { ptr @write_queues } }, section "__param", align 4
@__UNIQUE_ID_write_queues373 = internal constant [112 x i8] c"nvme.parm=write_queues:Number of queues to use for writes. If not set, reads and writes will share a queue set.\00", section ".modinfo", align 1
@__param_str_poll_queues = internal constant [17 x i8] c"nvme.poll_queues\00", align 1
@poll_queues = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_poll_queues = internal constant %struct.kernel_param { ptr @__param_str_poll_queues, ptr null, ptr @io_queue_count_ops, i16 420, i8 -1, i8 0, %union.anon.83 { ptr @poll_queues } }, section "__param", align 4
@__UNIQUE_ID_poll_queues374 = internal constant [61 x i8] c"nvme.parm=poll_queues:Number of queues to use for polled IO.\00", section ".modinfo", align 1
@__param_str_noacpi = internal constant [12 x i8] c"nvme.noacpi\00", align 1
@noacpi = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_noacpi = internal constant %struct.kernel_param { ptr @__param_str_noacpi, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.83 { ptr @noacpi } }, section "__param", align 4
@__UNIQUE_ID_noacpitype375 = internal constant [26 x i8] c"nvme.parmtype=noacpi:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_noacpi376 = internal constant [42 x i8] c"nvme.parm=noacpi:disable acpi bios quirks\00", section ".modinfo", align 1
@nvme_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @nvme_id_table, ptr @nvme_probe, ptr @nvme_remove, ptr null, ptr null, ptr @nvme_shutdown, ptr @pci_sriov_configure_simple, ptr null, ptr null, ptr @nvme_err_handler, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nvme_dev_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@nvme_wq = external dso_local local_unnamed_addr global ptr, align 4
@__UNIQUE_ID_author405 = internal constant [51 x i8] c"nvme.author=Matthew Wilcox <willy@linux.intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file406 = internal constant [33 x i8] c"nvme.file=drivers/nvme/host/nvme\00", section ".modinfo", align 1
@__UNIQUE_ID_license407 = internal constant [17 x i8] c"nvme.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version408 = internal constant [17 x i8] c"nvme.version=1.0\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"nvme\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.0\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__initcall__kmod_nvme__409_3506_nvme_init6 = internal global ptr @nvme_init, section ".initcall6.init", align 4
@__exitcall_nvme_exit = internal global ptr @nvme_exit, section ".exitcall.exit", align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@nvme_id_table = internal constant { [34 x %struct.pci_device_id], [256 x i8] } { [34 x %struct.pci_device_id] [%struct.pci_device_id { i32 32902, i32 2387, i32 -1, i32 -1, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id { i32 32902, i32 2643, i32 -1, i32 -1, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id { i32 32902, i32 2644, i32 -1, i32 -1, i32 0, i32 0, i32 261, i32 0 }, %struct.pci_device_id { i32 32902, i32 2645, i32 -1, i32 -1, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id { i32 32902, i32 61861, i32 -1, i32 -1, i32 0, i32 0, i32 17056, i32 0 }, %struct.pci_device_id { i32 32902, i32 61862, i32 -1, i32 -1, i32 0, i32 0, i32 256, i32 0 }, %struct.pci_device_id { i32 32902, i32 22597, i32 -1, i32 -1, i32 0, i32 0, i32 514, i32 0 }, %struct.pci_device_id { i32 4719, i32 8803, i32 -1, i32 -1, i32 0, i32 0, i32 32768, i32 0 }, %struct.pci_device_id { i32 7089, i32 256, i32 -1, i32 -1, i32 0, i32 0, i32 32776, i32 0 }, %struct.pci_device_id { i32 7256, i32 3, i32 -1, i32 -1, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 7256, i32 35, i32 -1, i32 -1, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 7263, i32 1344, i32 -1, i32 -1, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 5197, i32 43041, i32 -1, i32 -1, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 5197, i32 43042, i32 -1, i32 -1, i32 0, i32 0, i32 776, i32 0 }, %struct.pci_device_id { i32 6535, i32 20502, i32 -1, i32 -1, i32 0, i32 0, i32 256, i32 0 }, %struct.pci_device_id { i32 6987, i32 4242, i32 -1, i32 -1, i32 0, i32 0, i32 33024, i32 0 }, %struct.pci_device_id { i32 4332, i32 22370, i32 -1, i32 -1, i32 0, i32 0, i32 256, i32 0 }, %struct.pci_device_id { i32 7361, i32 33281, i32 -1, i32 -1, i32 0, i32 0, i32 288, i32 0 }, %struct.pci_device_id { i32 7260, i32 5380, i32 -1, i32 -1, i32 0, i32 0, i32 512, i32 0 }, %struct.pci_device_id { i32 5559, i32 8193, i32 -1, i32 -1, i32 0, i32 0, i32 512, i32 0 }, %struct.pci_device_id { i32 7575, i32 8803, i32 -1, i32 -1, i32 0, i32 0, i32 512, i32 0 }, %struct.pci_device_id { i32 9798, i32 8802, i32 -1, i32 -1, i32 0, i32 0, i32 32, i32 0 }, %struct.pci_device_id { i32 9798, i32 8803, i32 -1, i32 -1, i32 0, i32 0, i32 32, i32 0 }, %struct.pci_device_id { i32 7439, i32 97, i32 -1, i32 -1, i32 0, i32 0, i32 65536, i32 0 }, %struct.pci_device_id { i32 7439, i32 101, i32 -1, i32 -1, i32 0, i32 0, i32 65536, i32 0 }, %struct.pci_device_id { i32 7439, i32 32865, i32 -1, i32 -1, i32 0, i32 0, i32 65536, i32 0 }, %struct.pci_device_id { i32 7439, i32 52480, i32 -1, i32 -1, i32 0, i32 0, i32 65536, i32 0 }, %struct.pci_device_id { i32 7439, i32 52481, i32 -1, i32 -1, i32 0, i32 0, i32 65536, i32 0 }, %struct.pci_device_id { i32 7439, i32 52482, i32 -1, i32 -1, i32 0, i32 0, i32 65536, i32 0 }, %struct.pci_device_id { i32 4203, i32 8193, i32 -1, i32 -1, i32 0, i32 0, i32 2048, i32 0 }, %struct.pci_device_id { i32 4203, i32 8195, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4203, i32 8197, i32 -1, i32 -1, i32 0, i32 0, i32 145408, i32 0 }, %struct.pci_device_id { i32 -1, i32 -1, i32 -1, i32 -1, i32 67586, i32 16777215, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [256 x i8] zeroinitializer }, align 32
@nvme_err_handler = internal constant { %struct.pci_error_handlers, [40 x i8] } { %struct.pci_error_handlers { ptr @nvme_error_detected, ptr null, ptr @nvme_slot_reset, ptr @nvme_reset_prepare, ptr @nvme_reset_done, ptr @nvme_error_resume }, [40 x i8] zeroinitializer }, align 32
@nvme_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @nvme_suspend, ptr @nvme_resume, ptr @nvme_simple_suspend, ptr @nvme_simple_resume, ptr @nvme_simple_suspend, ptr @nvme_simple_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@nvme_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"(work_completion)(&dev->ctrl.reset_work)\00", [55 x i8] zeroinitializer }, align 32
@nvme_probe.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(work_completion)(&dev->remove_work)\00", [59 x i8] zeroinitializer }, align 32
@nvme_probe.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&dev->shutdown_lock\00", [44 x i8] zeroinitializer }, align 32
@nvme_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.10, i32 3095, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"platform quirk: setting simple suspend\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"nvme_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/nvme/host/pci.c\00", [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nvme_probe._entry_ptr = internal global ptr @nvme_probe._entry, section ".printk_index", align 4
@nvme_pci_ctrl_ops = internal constant { %struct.nvme_ctrl_ops, [56 x i8] } { %struct.nvme_ctrl_ops { ptr @.str.118, ptr null, i32 6, ptr @nvme_pci_reg_read32, ptr @nvme_pci_reg_write32, ptr @nvme_pci_reg_read64, ptr @nvme_pci_free_ctrl, ptr @nvme_pci_submit_async_event, ptr null, ptr @nvme_pci_get_address }, [56 x i8] zeroinitializer }, align 32
@nvme_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.9, ptr @.str.10, i32 3120, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pci function %s\0A\00", [47 x i8] zeroinitializer }, align 32
@nvme_probe._entry_ptr.15 = internal global ptr @nvme_probe._entry.13, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nvme_reset_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.10, i32 2799, ptr @.str.18, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ctrl state %d is not RESETTING\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nvme_reset_work\00", [16 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@nvme_reset_work._entry_ptr = internal global ptr @nvme_reset_work._entry, section ".printk_index", align 4
@nvme_reset_work._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.17, ptr @.str.10, i32 2847, ptr @.str.18, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to mark controller CONNECTING\0A\00", [58 x i8] zeroinitializer }, align 32
@nvme_reset_work._entry_ptr.21 = internal global ptr @nvme_reset_work._entry.19, section ".printk_index", align 4
@nvme_reset_work._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.17, ptr @.str.10, i32 2877, ptr @.str.18, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"unable to allocate dma for dbbuf\0A\00", [62 x i8] zeroinitializer }, align 32
@nvme_reset_work._entry_ptr.24 = internal global ptr @nvme_reset_work._entry.22, section ".printk_index", align 4
@nvme_reset_work._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.17, ptr @.str.10, i32 2895, ptr @.str.18, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"IO queues not created\0A\00", [41 x i8] zeroinitializer }, align 32
@nvme_reset_work._entry_ptr.27 = internal global ptr @nvme_reset_work._entry.25, section ".printk_index", align 4
@nvme_reset_work._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.17, ptr @.str.10, i32 2912, ptr @.str.18, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to mark controller live state\0A\00", [58 x i8] zeroinitializer }, align 32
@nvme_reset_work._entry_ptr.30 = internal global ptr @nvme_reset_work._entry.28, section ".printk_index", align 4
@nvme_pci_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr @nvme_pci_attrs_are_visible, ptr null, ptr @nvme_pci_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@nvme_reset_work._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.17, ptr @.str.10, i32 2929, ptr @.str.18, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Removing after probe failure status: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@nvme_reset_work._entry_ptr.33 = internal global ptr @nvme_reset_work._entry.31, section ".printk_index", align 4
@nvme_io_timeout = external dso_local local_unnamed_addr global i32, align 4
@admin_timeout = external dso_local local_unnamed_addr global i32, align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@nvme_poll_irqdisable.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@nvme_handle_cqe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.10, i32 1100, ptr @.str.18, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"invalid id %d completed on queue %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nvme_handle_cqe\00", [16 x i8] zeroinitializer }, align 32
@nvme_handle_cqe._entry_ptr = internal global ptr @nvme_handle_cqe._entry, section ".printk_index", align 4
@nvme_find_rq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.39, i32 524, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013could not locate request for tag %#x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nvme_find_rq\00", [19 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/nvme/host/nvme.h\00", [39 x i8] zeroinitializer }, align 32
@nvme_find_rq._entry_ptr = internal global ptr @nvme_find_rq._entry, section ".printk_index", align 4
@nvme_find_rq._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.38, ptr @.str.39, i32 530, ptr @.str.42, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"request %#x genctr mismatch (got %#x expected %#x)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@nvme_find_rq._entry_ptr.43 = internal global ptr @nvme_find_rq._entry.40, section ".printk_index", align 4
@__tracepoint_nvme_sq = external dso_local global %struct.tracepoint, align 4
@.str.44 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/nvme/host/trace.h\00", [38 x i8] zeroinitializer }, align 32
@trace_nvme_sq.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.45 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.46 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@rq_integrity_vec.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.47 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"include/linux/blk-integrity.h\00", [34 x i8] zeroinitializer }, align 32
@nvme_unmap_data.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@nvme_pci_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.10, i32 2617, ptr @.str.18, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"detected Apple NVMe controller, set queue depth=%u to work around controller resets\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nvme_pci_enable\00", [16 x i8] zeroinitializer }, align 32
@nvme_pci_enable._entry_ptr = internal global ptr @nvme_pci_enable._entry, section ".printk_index", align 4
@nvme_pci_enable._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.49, ptr @.str.10, i32 2623, ptr @.str.42, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"detected PM1725 NVMe controller, set queue depth=%u\0A\00", [43 x i8] zeroinitializer }, align 32
@nvme_pci_enable._entry_ptr.52 = internal global ptr @nvme_pci_enable._entry.50, section ".printk_index", align 4
@nvme_pci_enable._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.49, ptr @.str.10, i32 2634, ptr @.str.18, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"IO queue depth clamped to %d\0A\00", [34 x i8] zeroinitializer }, align 32
@nvme_pci_enable._entry_ptr.55 = internal global ptr @nvme_pci_enable._entry.53, section ".printk_index", align 4
@nvme_map_cmb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.10, i32 1960, ptr @.str.18, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to register the CMB\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nvme_map_cmb\00", [19 x i8] zeroinitializer }, align 32
@nvme_map_cmb._entry_ptr = internal global ptr @nvme_map_cmb._entry, section ".printk_index", align 4
@nvme_alloc_queue.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.58 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&nvmeq->sq_lock\00", [16 x i8] zeroinitializer }, align 32
@nvme_alloc_queue.__key.59 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.60 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&nvmeq->cq_poll_lock\00", [43 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"nvme%dq%d\00", [22 x i8] zeroinitializer }, align 32
@nvme_mq_admin_ops = internal constant { %struct.blk_mq_ops, [56 x i8] } { %struct.blk_mq_ops { ptr @nvme_queue_rq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nvme_timeout, ptr null, ptr @nvme_pci_complete_rq, ptr @nvme_admin_init_hctx, ptr null, ptr @nvme_init_request, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@nvme_pci_setup_prps.___done = internal global i8 0, section ".data.once", align 1
@nvme_pci_setup_prps.___once_key = internal global { { { %struct.atomic_t, { ptr } } }, [24 x i8] } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } }, [24 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Invalid SGL for payload:%d nents:%d\0A\00", [59 x i8] zeroinitializer }, align 32
@nvme_print_sgl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.10, i32 621, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\014sg[%d] phys_addr:%pad offset:%d length:%d dma_address:%pad dma_length:%d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nvme_print_sgl\00", [17 x i8] zeroinitializer }, align 32
@nvme_print_sgl._entry_ptr = internal global ptr @nvme_print_sgl._entry, section ".printk_index", align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@nvme_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.10, i32 1374, ptr @.str.18, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"I/O %d QID %d timeout, completion polled\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nvme_timeout\00", [19 x i8] zeroinitializer }, align 32
@nvme_timeout._entry_ptr = internal global ptr @nvme_timeout._entry, section ".printk_index", align 4
@nvme_timeout._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.67, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@nvme_timeout._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.66, ptr @.str.10, i32 1391, ptr @.str.18, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"I/O %d QID %d timeout, disable controller\0A\00", [53 x i8] zeroinitializer }, align 32
@nvme_timeout._entry_ptr.70 = internal global ptr @nvme_timeout._entry.68, section ".printk_index", align 4
@nvme_timeout._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.66, ptr @.str.10, i32 1409, ptr @.str.18, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"I/O %d QID %d timeout, reset controller\0A\00", [55 x i8] zeroinitializer }, align 32
@nvme_timeout._entry_ptr.73 = internal global ptr @nvme_timeout._entry.71, section ".printk_index", align 4
@nvme_timeout._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.66, ptr @.str.10, i32 1429, ptr @.str.18, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"I/O %d QID %d timeout, aborting\0A\00", [63 x i8] zeroinitializer }, align 32
@nvme_timeout._entry_ptr.76 = internal global ptr @nvme_timeout._entry.74, section ".printk_index", align 4
@nvme_warn_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.10, i32 1330, ptr @.str.18, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"controller is down; will reset: CSTS=0x%x, PCI_STATUS=0x%hx\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nvme_warn_reset\00", [16 x i8] zeroinitializer }, align 32
@nvme_warn_reset._entry_ptr = internal global ptr @nvme_warn_reset._entry, section ".printk_index", align 4
@nvme_warn_reset._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.78, ptr @.str.10, i32 1334, ptr @.str.18, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"controller is down; will reset: CSTS=0x%x, PCI_STATUS read failed (%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@nvme_warn_reset._entry_ptr.81 = internal global ptr @nvme_warn_reset._entry.79, section ".printk_index", align 4
@abort_endio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.10, i32 1289, ptr @.str.18, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Abort status: 0x%x\00", [45 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"abort_endio\00", [20 x i8] zeroinitializer }, align 32
@abort_endio._entry_ptr = internal global ptr @abort_endio._entry, section ".printk_index", align 4
@dma_set_min_align_mask.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.84 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@nvme_setup_host_mem._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.10, i32 2118, ptr @.str.18, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"min host memory (%lld MiB) above limit (%d MiB).\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nvme_setup_host_mem\00", [44 x i8] zeroinitializer }, align 32
@nvme_setup_host_mem._entry_ptr = internal global ptr @nvme_setup_host_mem._entry, section ".printk_index", align 4
@nvme_setup_host_mem._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.86, ptr @.str.10, i32 2136, ptr @.str.18, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to allocate host memory buffer.\0A\00", [56 x i8] zeroinitializer }, align 32
@nvme_setup_host_mem._entry_ptr.89 = internal global ptr @nvme_setup_host_mem._entry.87, section ".printk_index", align 4
@nvme_setup_host_mem._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.86, ptr @.str.10, i32 2142, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"allocated %lld MiB host memory buffer.\0A\00", [56 x i8] zeroinitializer }, align 32
@nvme_setup_host_mem._entry_ptr.92 = internal global ptr @nvme_setup_host_mem._entry.90, section ".printk_index", align 4
@nvme_set_host_mem._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.94, ptr @.str.10, i32 1991, ptr @.str.18, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"failed to set host mem (err %d, flags %#x).\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nvme_set_host_mem\00", [46 x i8] zeroinitializer }, align 32
@nvme_set_host_mem._entry_ptr = internal global ptr @nvme_set_host_mem._entry, section ".printk_index", align 4
@nvme_setup_io_queues._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.96, ptr @.str.10, i32 2444, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%d/%d/%d default/read/poll queues\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nvme_setup_io_queues\00", [43 x i8] zeroinitializer }, align 32
@nvme_setup_io_queues._entry_ptr = internal global ptr @nvme_setup_io_queues._entry, section ".printk_index", align 4
@nvme_mq_ops = internal constant { %struct.blk_mq_ops, [56 x i8] } { %struct.blk_mq_ops { ptr @nvme_queue_rq, ptr @nvme_commit_rqs, ptr @nvme_queue_rqs, ptr null, ptr null, ptr null, ptr null, ptr @nvme_timeout, ptr @nvme_poll, ptr @nvme_pci_complete_rq, ptr @nvme_init_hctx, ptr null, ptr @nvme_init_request, ptr null, ptr null, ptr null, ptr @nvme_pci_map_queues, ptr null }, [56 x i8] zeroinitializer }, align 32
@nvme_dev_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.98, ptr @.str.10, i32 2547, ptr @.str.18, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"IO queues tagset allocation failed %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nvme_dev_add\00", [19 x i8] zeroinitializer }, align 32
@nvme_dev_add._entry_ptr = internal global ptr @nvme_dev_add._entry, section ".printk_index", align 4
@nvme_dbbuf_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.100, ptr @.str.10, i32 328, ptr @.str.18, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"unable to set dbbuf\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nvme_dbbuf_set\00", [17 x i8] zeroinitializer }, align 32
@nvme_dbbuf_set._entry_ptr = internal global ptr @nvme_dbbuf_set._entry, section ".printk_index", align 4
@nvme_pci_attrs = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @dev_attr_cmb, ptr @dev_attr_cmbloc, ptr @dev_attr_cmbsz, ptr @dev_attr_hmb, ptr null], [44 x i8] zeroinitializer }, align 32
@dev_attr_cmb = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.101, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cmb_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_cmbloc = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.103, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cmbloc_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_cmbsz = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.105, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cmbsz_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_hmb = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.106, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @hmb_show, ptr @hmb_store }, [36 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cmb\00", [28 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cmbloc : x%08x\0Acmbsz  : x%08x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cmbloc\00", [25 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"cmbsz\00", [26 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"hmb\00", [28 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"prp list page\00", [18 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"prp list 256\00", [19 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pcie\00", [27 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@nvme_error_detected._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.121, ptr @.str.10, i32 3349, ptr @.str.18, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"frozen state error detected, reset controller\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nvme_error_detected\00", [44 x i8] zeroinitializer }, align 32
@nvme_error_detected._entry_ptr = internal global ptr @nvme_error_detected._entry, section ".printk_index", align 4
@nvme_error_detected._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.121, ptr @.str.10, i32 3354, ptr @.str.18, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"failure state error detected, request disconnect\0A\00", [46 x i8] zeroinitializer }, align 32
@nvme_error_detected._entry_ptr.124 = internal global ptr @nvme_error_detected._entry.122, section ".printk_index", align 4
@nvme_slot_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.126, ptr @.str.10, i32 3364, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"restart after slot reset\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nvme_slot_reset\00", [16 x i8] zeroinitializer }, align 32
@nvme_slot_reset._entry_ptr = internal global ptr @nvme_slot_reset._entry, section ".printk_index", align 4
@pm_suspend_global_flags = external dso_local local_unnamed_addr global i32, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 4203, i64 5197]
@__sancov_gen_cov_switch_values.127 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.128 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.129 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.130 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.131 = private unnamed_addr constant [24 x i8] c"use_threaded_interrupts\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 46, i32 12 }
@___asan_gen_.134 = private unnamed_addr constant [13 x i8] c"use_cmb_sqes\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 49, i32 13 }
@___asan_gen_.137 = private unnamed_addr constant [21 x i8] c"max_host_mem_size_mb\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 53, i32 21 }
@___asan_gen_.140 = private unnamed_addr constant [14 x i8] c"sgl_threshold\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 58, i32 21 }
@___asan_gen_.143 = private unnamed_addr constant [19 x i8] c"io_queue_depth_ops\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 67, i32 38 }
@___asan_gen_.146 = private unnamed_addr constant [15 x i8] c"io_queue_depth\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 72, i32 21 }
@___asan_gen_.149 = private unnamed_addr constant [19 x i8] c"io_queue_count_ops\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 87, i32 38 }
@___asan_gen_.152 = private unnamed_addr constant [13 x i8] c"write_queues\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 92, i32 21 }
@___asan_gen_.155 = private unnamed_addr constant [12 x i8] c"poll_queues\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 98, i32 21 }
@___asan_gen_.158 = private unnamed_addr constant [7 x i8] c"noacpi\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 102, i32 13 }
@___asan_gen_.161 = private unnamed_addr constant [12 x i8] c"nvme_driver\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 3472, i32 26 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 3505, i32 1 }
@___asan_gen_.173 = private unnamed_addr constant [14 x i8] c"nvme_id_table\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 3385, i32 35 }
@___asan_gen_.176 = private unnamed_addr constant [17 x i8] c"nvme_err_handler\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 3377, i32 40 }
@___asan_gen_.179 = private unnamed_addr constant [16 x i8] c"nvme_dev_pm_ops\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 3324, i32 32 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 3079, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 3080, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 3081, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 3094, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant [18 x i8] c"nvme_pci_ctrl_ops\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 2968, i32 35 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 3120, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 2798, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 2846, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 2876, i32 4 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 2895, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 2911, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant [20 x i8] c"nvme_pci_attr_group\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 2242, i32 37 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 2928, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 87, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1098, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 523, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant [28 x i8] c"../drivers/nvme/host/nvme.h\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 528, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant [29 x i8] c"../drivers/nvme/host/trace.h\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 144, i32 1 }
@___asan_gen_.315 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 108, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant [33 x i8] c"../include/linux/blk-integrity.h\00", align 1
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 112, i32 6 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 2615, i32 3 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 2622, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 2633, i32 3 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1959, i32 3 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1601, i32 2 }
@___asan_gen_.356 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1602, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1625, i32 22 }
@___asan_gen_.365 = private unnamed_addr constant [18 x i8] c"nvme_mq_admin_ops\00", align 1
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1721, i32 32 }
@___asan_gen_.368 = private unnamed_addr constant [12 x i8] c"___once_key\00", align 1
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 711, i32 2 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 618, i32 3 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1372, i32 3 }
@___asan_gen_.392 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1389, i32 3 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1407, i32 3 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1427, i32 2 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1328, i32 3 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1332, i32 3 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1288, i32 2 }
@___asan_gen_.441 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 535, i32 6 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 2116, i32 3 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 2135, i32 4 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 2140, i32 3 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1989, i32 3 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 2441, i32 2 }
@___asan_gen_.482 = private unnamed_addr constant [12 x i8] c"nvme_mq_ops\00", align 1
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1729, i32 32 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 2546, i32 4 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 328, i32 3 }
@___asan_gen_.503 = private unnamed_addr constant [15 x i8] c"nvme_pci_attrs\00", align 1
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 2234, i32 26 }
@___asan_gen_.506 = private unnamed_addr constant [13 x i8] c"dev_attr_cmb\00", align 1
@___asan_gen_.509 = private unnamed_addr constant [16 x i8] c"dev_attr_cmbloc\00", align 1
@___asan_gen_.512 = private unnamed_addr constant [15 x i8] c"dev_attr_cmbsz\00", align 1
@___asan_gen_.515 = private unnamed_addr constant [13 x i8] c"dev_attr_hmb\00", align 1
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 2159, i32 8 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 2156, i32 25 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 2168, i32 8 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 2166, i32 25 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 2177, i32 8 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 2213, i32 8 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 2184, i32 25 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 2732, i32 39 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 2739, i32 40 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 2969, i32 12 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 2965, i32 29 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 3348, i32 3 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 3353, i32 3 }
@___asan_gen_.566 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.572 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.573 = private constant [27 x i8] c"../drivers/nvme/host/pci.c\00", align 1
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 3364, i32 2 }
@llvm.compiler.used = appending global [209 x ptr] [ptr @__UNIQUE_ID_author405, ptr @__UNIQUE_ID_file406, ptr @__UNIQUE_ID_io_queue_depth372, ptr @__UNIQUE_ID_license407, ptr @__UNIQUE_ID_max_host_mem_size_mb369, ptr @__UNIQUE_ID_max_host_mem_size_mbtype368, ptr @__UNIQUE_ID_noacpi376, ptr @__UNIQUE_ID_noacpitype375, ptr @__UNIQUE_ID_poll_queues374, ptr @__UNIQUE_ID_sgl_threshold371, ptr @__UNIQUE_ID_sgl_thresholdtype370, ptr @__UNIQUE_ID_use_cmb_sqes367, ptr @__UNIQUE_ID_use_cmb_sqestype366, ptr @__UNIQUE_ID_use_threaded_interruptstype365, ptr @__UNIQUE_ID_version408, ptr @__UNIQUE_ID_write_queues373, ptr @__exitcall_nvme_exit, ptr @__initcall__kmod_nvme__409_3506_nvme_init6, ptr @__modver_attr, ptr @__param_io_queue_depth, ptr @__param_max_host_mem_size_mb, ptr @__param_noacpi, ptr @__param_poll_queues, ptr @__param_sgl_threshold, ptr @__param_use_cmb_sqes, ptr @__param_use_threaded_interrupts, ptr @__param_write_queues, ptr @abort_endio._entry, ptr @abort_endio._entry_ptr, ptr @nvme_dbbuf_set._entry, ptr @nvme_dbbuf_set._entry_ptr, ptr @nvme_dev_add._entry, ptr @nvme_dev_add._entry_ptr, ptr @nvme_error_detected._entry, ptr @nvme_error_detected._entry.122, ptr @nvme_error_detected._entry_ptr, ptr @nvme_error_detected._entry_ptr.124, ptr @nvme_exit, ptr @nvme_find_rq._entry, ptr @nvme_find_rq._entry.40, ptr @nvme_find_rq._entry_ptr, ptr @nvme_find_rq._entry_ptr.43, ptr @nvme_handle_cqe._entry, ptr @nvme_handle_cqe._entry_ptr, ptr @nvme_map_cmb._entry, ptr @nvme_map_cmb._entry_ptr, ptr @nvme_pci_enable._entry, ptr @nvme_pci_enable._entry.50, ptr @nvme_pci_enable._entry.53, ptr @nvme_pci_enable._entry_ptr, ptr @nvme_pci_enable._entry_ptr.52, ptr @nvme_pci_enable._entry_ptr.55, ptr @nvme_print_sgl._entry, ptr @nvme_print_sgl._entry_ptr, ptr @nvme_probe._entry, ptr @nvme_probe._entry.13, ptr @nvme_probe._entry_ptr, ptr @nvme_probe._entry_ptr.15, ptr @nvme_reset_work._entry, ptr @nvme_reset_work._entry.19, ptr @nvme_reset_work._entry.22, ptr @nvme_reset_work._entry.25, ptr @nvme_reset_work._entry.28, ptr @nvme_reset_work._entry.31, ptr @nvme_reset_work._entry_ptr, ptr @nvme_reset_work._entry_ptr.21, ptr @nvme_reset_work._entry_ptr.24, ptr @nvme_reset_work._entry_ptr.27, ptr @nvme_reset_work._entry_ptr.30, ptr @nvme_reset_work._entry_ptr.33, ptr @nvme_set_host_mem._entry, ptr @nvme_set_host_mem._entry_ptr, ptr @nvme_setup_host_mem._entry, ptr @nvme_setup_host_mem._entry.87, ptr @nvme_setup_host_mem._entry.90, ptr @nvme_setup_host_mem._entry_ptr, ptr @nvme_setup_host_mem._entry_ptr.89, ptr @nvme_setup_host_mem._entry_ptr.92, ptr @nvme_setup_io_queues._entry, ptr @nvme_setup_io_queues._entry_ptr, ptr @nvme_slot_reset._entry, ptr @nvme_slot_reset._entry_ptr, ptr @nvme_timeout._entry, ptr @nvme_timeout._entry.68, ptr @nvme_timeout._entry.71, ptr @nvme_timeout._entry.74, ptr @nvme_timeout._entry_ptr, ptr @nvme_timeout._entry_ptr.70, ptr @nvme_timeout._entry_ptr.73, ptr @nvme_timeout._entry_ptr.76, ptr @nvme_warn_reset._entry, ptr @nvme_warn_reset._entry.79, ptr @nvme_warn_reset._entry_ptr, ptr @nvme_warn_reset._entry_ptr.81, ptr @use_threaded_interrupts, ptr @use_cmb_sqes, ptr @max_host_mem_size_mb, ptr @sgl_threshold, ptr @io_queue_depth_ops, ptr @io_queue_depth, ptr @io_queue_count_ops, ptr @write_queues, ptr @poll_queues, ptr @noacpi, ptr @nvme_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @nvme_id_table, ptr @nvme_err_handler, ptr @nvme_dev_pm_ops, ptr @nvme_probe.__key, ptr @.str.3, ptr @nvme_probe.__key.4, ptr @.str.5, ptr @nvme_probe.__key.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @nvme_pci_ctrl_ops, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @nvme_pci_attr_group, ptr @.str.32, ptr @init_completion.__key, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @nvme_alloc_queue.__key, ptr @.str.58, ptr @nvme_alloc_queue.__key.59, ptr @.str.60, ptr @.str.61, ptr @nvme_mq_admin_ops, ptr @nvme_pci_setup_prps.___once_key, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @nvme_timeout._rs, ptr @.str.67, ptr @.str.69, ptr @.str.72, ptr @.str.75, ptr @.str.77, ptr @.str.78, ptr @.str.80, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.88, ptr @.str.91, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @nvme_mq_ops, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @nvme_pci_attrs, ptr @dev_attr_cmb, ptr @dev_attr_cmbloc, ptr @dev_attr_cmbsz, ptr @dev_attr_hmb, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.123, ptr @.str.125, ptr @.str.126], section "llvm.metadata"
@0 = internal global [148 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @use_threaded_interrupts to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @use_cmb_sqes to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_host_mem_size_mb to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgl_threshold to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @io_queue_depth_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @io_queue_depth to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @io_queue_count_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_queues to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @poll_queues to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @noacpi to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_id_table to i32), i32 1088, i32 1344, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_err_handler to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_probe.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_probe.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_pci_ctrl_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_reset_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_reset_work._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_reset_work._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_reset_work._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_reset_work._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_pci_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_reset_work._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_handle_cqe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_find_rq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_find_rq._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_pci_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_pci_enable._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_pci_enable._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_map_cmb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_alloc_queue.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_alloc_queue.__key.59 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_mq_admin_ops to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_pci_setup_prps.___once_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_print_sgl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_timeout._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_timeout._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_timeout._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_timeout._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_warn_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_warn_reset._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abort_endio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_setup_host_mem._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_setup_host_mem._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_setup_host_mem._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_set_host_mem._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_setup_io_queues._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_mq_ops to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_dev_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_dbbuf_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_pci_attrs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_cmb to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_cmbloc to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_cmbsz to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_hmb to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_error_detected._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_error_detected._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_slot_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nvme_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @pci_unregister_driver(ptr noundef nonnull @nvme_driver) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nvme_wq to i32))
  %0 = load ptr, ptr @nvme_wq, align 4
  tail call void @flush_workqueue(ptr noundef %0) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nvme_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @nvme_driver, ptr noundef null, ptr noundef nonnull @.str.1) #16
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @io_queue_depth_set(ptr noundef %val, ptr noundef %kp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @param_set_uint_minmax(ptr noundef %val, ptr noundef %kp, i32 noundef 2, i32 noundef 4095) #16
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @param_get_uint(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @param_set_uint_minmax(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @io_queue_count_set(ptr noundef %val, ptr noundef %kp) #2 align 64 {
entry:
  %n = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #16
  %0 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %n, align 4, !annotation !349
  %call = call i32 @kstrtouint(ptr noundef %val, i32 noundef 10, ptr noundef nonnull %n) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %1 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %n, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %3 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i = call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_possible_mask, i32 noundef %3) #16
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %call4.i.i)
  %cmp2 = icmp ugt i32 %2, %call4.i.i
  br i1 %cmp2, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  %call3 = call i32 @param_set_uint(ptr noundef %val, ptr noundef %kp) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #16
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @param_set_uint(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvme_probe(ptr noundef %pdev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 4232) #19
  %tobool.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end5

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end5:                                          ; preds = %entry
  %3 = load i32, ptr @write_queues, align 4
  %nr_write_queues = getelementptr inbounds %struct.nvme_dev, ptr %call.i.i.i, i32 0, i32 37
  %4 = ptrtoint ptr %nr_write_queues to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %nr_write_queues, align 4
  %5 = load i32, ptr @poll_queues, align 4
  %nr_poll_queues = getelementptr inbounds %struct.nvme_dev, ptr %call.i.i.i, i32 0, i32 38
  %6 = ptrtoint ptr %nr_poll_queues to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %nr_poll_queues, align 8
  %quirks.i = getelementptr inbounds %struct.nvme_dev, ptr %call.i.i.i, i32 0, i32 23, i32 61
  %7 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %quirks.i, align 8
  %and.i = and i32 %8, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i.i.i, label %if.end5.nvme_max_io_queues.exit_crit_edge

if.end5.nvme_max_io_queues.exit_crit_edge:        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  br label %nvme_max_io_queues.exit

if.end.i.i.i:                                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %9 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i.i = tail call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_possible_mask, i32 noundef %9) #16
  %10 = ptrtoint ptr %nr_write_queues to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nr_write_queues, align 4
  %add.i = add i32 %11, %call4.i.i.i
  %12 = ptrtoint ptr %nr_poll_queues to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nr_poll_queues, align 8
  %add1.i = add i32 %add.i, %13
  %phi.bo = add i32 %add1.i, 1
  br label %nvme_max_io_queues.exit

nvme_max_io_queues.exit:                          ; preds = %if.end.i.i.i, %if.end5.nvme_max_io_queues.exit_crit_edge
  %retval.0.i = phi i32 [ %phi.bo, %if.end.i.i.i ], [ 2, %if.end5.nvme_max_io_queues.exit_crit_edge ]
  %nr_allocated_queues = getelementptr inbounds %struct.nvme_dev, ptr %call.i.i.i, i32 0, i32 36
  %14 = ptrtoint ptr %nr_allocated_queues to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %retval.0.i, ptr %nr_allocated_queues, align 8
  %15 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %retval.0.i, i32 384) #16
  %16 = extractvalue { i32, i1 } %15, 1
  br i1 %16, label %kcalloc_node.exit.thread, label %if.end7.i.i, !prof !350

kcalloc_node.exit.thread:                         ; preds = %nvme_max_io_queues.exit
  call void @__sanitizer_cov_trace_pc() #18
  %17 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %call.i.i.i, align 8
  br label %free

if.end7.i.i:                                      ; preds = %nvme_max_io_queues.exit
  %18 = extractvalue { i32, i1 } %15, 0
  %call.i.i.i185 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %18, i32 noundef 3520) #20
  %19 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i.i.i185, ptr %call.i.i.i, align 8
  %tobool10.not = icmp eq ptr %call.i.i.i185, null
  br i1 %tobool10.not, label %if.end7.i.i.free_crit_edge, label %if.end12

if.end7.i.i.free_crit_edge:                       ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %free

if.end12:                                         ; preds = %if.end7.i.i
  %call14 = tail call ptr @get_device(ptr noundef %dev1) #16
  %dev15 = getelementptr inbounds %struct.nvme_dev, ptr %call.i.i.i, i32 0, i32 4
  %20 = ptrtoint ptr %dev15 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call14, ptr %dev15, align 8
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %21 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i.i.i, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call14, i32 -136
  %call.i.i = tail call i32 @pci_select_bars(ptr noundef %add.ptr.i, i32 noundef 512) #16
  %call1.i.i = tail call i32 @pci_request_selected_regions(ptr noundef %add.ptr.i, i32 noundef %call.i.i, ptr noundef nonnull @.str.1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i186 = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i186, label %if.end.i187, label %if.end12.put_pci_crit_edge

if.end12.put_pci_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  br label %put_pci

if.end.i187:                                      ; preds = %if.end12
  %bar_mapped_size.i.i = getelementptr inbounds %struct.nvme_dev, ptr %call.i.i.i, i32 0, i32 15
  %22 = ptrtoint ptr %bar_mapped_size.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bar_mapped_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %23)
  %cmp.not.i.i = icmp ult i32 %23, 8192
  br i1 %cmp.not.i.i, label %if.end.i.i188, label %if.end.i187.do.body_crit_edge

if.end.i187.do.body_crit_edge:                    ; preds = %if.end.i187
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

if.end.i.i188:                                    ; preds = %if.end.i187
  %24 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev15, align 8
  %resource.i.i = getelementptr i8, ptr %25, i32 936
  %end.i.i = getelementptr i8, ptr %25, i32 940
  %26 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %end.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp2.i.i = icmp eq i32 %27, 0
  br i1 %cmp2.i.i, label %if.end.i.i188.put_pci.sink.split_crit_edge, label %cond.end.i.i

if.end.i.i188.put_pci.sink.split_crit_edge:       ; preds = %if.end.i.i188
  call void @__sanitizer_cov_trace_pc() #18
  br label %put_pci.sink.split

cond.end.i.i:                                     ; preds = %if.end.i.i188
  %28 = ptrtoint ptr %resource.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %resource.i.i, align 8
  %sub.i.i = add i32 %27, 1
  %add.i.i = sub i32 %sub.i.i, %29
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %add.i.i)
  %cmp8.i.i = icmp ult i32 %add.i.i, 8192
  br i1 %cmp8.i.i, label %cond.end.i.i.put_pci.sink.split_crit_edge, label %if.end10.i.i

cond.end.i.i.put_pci.sink.split_crit_edge:        ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %put_pci.sink.split

if.end10.i.i:                                     ; preds = %cond.end.i.i
  %bar.i.i = getelementptr inbounds %struct.nvme_dev, ptr %call.i.i.i, i32 0, i32 14
  %30 = ptrtoint ptr %bar.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bar.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %31, null
  br i1 %tobool.not.i.i, label %if.end10.i.i.if.end13.i.i_crit_edge, label %if.then11.i.i

if.end10.i.i.if.end13.i.i_crit_edge:              ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13.i.i

if.then11.i.i:                                    ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @iounmap(ptr noundef nonnull %31) #16
  br label %if.end13.i.i

if.end13.i.i:                                     ; preds = %if.then11.i.i, %if.end10.i.i.if.end13.i.i_crit_edge
  %32 = ptrtoint ptr %resource.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %resource.i.i, align 8
  %call.i8.i = tail call ptr @ioremap(i32 noundef %33, i32 noundef 8192) #16
  %34 = ptrtoint ptr %bar.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call.i8.i, ptr %bar.i.i, align 8
  %tobool19.not.i.i = icmp eq ptr %call.i8.i, null
  br i1 %tobool19.not.i.i, label %if.then20.i.i, label %if.end22.i.i

if.then20.i.i:                                    ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %35 = ptrtoint ptr %bar_mapped_size.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %bar_mapped_size.i.i, align 4
  br label %put_pci.sink.split

if.end22.i.i:                                     ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %36 = ptrtoint ptr %bar_mapped_size.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 8192, ptr %bar_mapped_size.i.i, align 4
  %add.ptr25.i.i = getelementptr i8, ptr %call.i8.i, i32 4096
  %dbs.i.i = getelementptr inbounds %struct.nvme_dev, ptr %call.i.i.i, i32 0, i32 3
  %37 = ptrtoint ptr %dbs.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %add.ptr25.i.i, ptr %dbs.i.i, align 4
  br label %do.body

do.body:                                          ; preds = %if.end22.i.i, %if.end.i187.do.body_crit_edge
  %ctrl = getelementptr inbounds %struct.nvme_dev, ptr %call.i.i.i, i32 0, i32 23
  %reset_work = getelementptr inbounds %struct.nvme_dev, ptr %call.i.i.i, i32 0, i32 23, i32 20
  tail call void @__init_work(ptr noundef %reset_work, i32 noundef 0) #16
  %38 = ptrtoint ptr %reset_work to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -64, ptr %reset_work, align 8
  %lockdep_map = getelementptr inbounds %struct.nvme_dev, ptr %call.i.i.i, i32 0, i32 23, i32 20, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.3, ptr noundef nonnull @nvme_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #16
  %entry26 = getelementptr inbounds %struct.nvme_dev, ptr %call.i.i.i, i32 0, i32 23, i32 20, i32 1
  %39 = ptrtoint ptr %entry26 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %entry26, ptr %entry26, align 4
  %prev.i = getelementptr inbounds %struct.nvme_dev, ptr %call.i.i.i, i32 0, i32 23, i32 20, i32 1, i32 1
  %40 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %entry26, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.nvme_dev, ptr %call.i.i.i, i32 0, i32 23, i32 20, i32 2
  %41 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @nvme_reset_work, ptr %func, align 4
  %remove_work = getelementptr inbounds %struct.nvme_dev, ptr %call.i.i.i, i32 0, i32 16
  tail call void @__init_work(ptr noundef %remove_work, i32 noundef 0) #16
  %42 = ptrtoint ptr %remove_work to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -64, ptr %remove_work, align 8
  %lockdep_map35 = getelementptr inbounds %struct.nvme_dev, ptr %call.i.i.i, i32 0, i32 16, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map35, ptr noundef nonnull @.str.5, ptr noundef nonnull @nvme_probe.__key.4, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #16
  %entry37 = getelementptr inbounds %struct.nvme_dev, ptr %call.i.i.i, i32 0, i32 16, i32 1
  %43 = ptrtoint ptr %entry37 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %entry37, ptr %entry37, align 4
  %prev.i190 = getelementptr inbounds %struct.nvme_dev, ptr %call.i.i.i, i32 0, i32 16, i32 1, i32 1
  %44 = ptrtoint ptr %prev.i190 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %entry37, ptr %prev.i190, align 8
  %func39 = getelementptr inbounds %struct.nvme_dev, ptr %call.i.i.i, i32 0, i32 16, i32 2
  %45 = ptrtoint ptr %func39 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @nvme_remove_dead_ctrl_work, ptr %func39, align 4
  %shutdown_lock = getelementptr inbounds %struct.nvme_dev, ptr %call.i.i.i, i32 0, i32 17
  tail call void @__mutex_init(ptr noundef %shutdown_lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @nvme_probe.__key.6) #16
  %46 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev15, align 8
  %call.i = tail call ptr @dma_pool_create(ptr noundef nonnull @.str.108, ptr noundef %47, i32 noundef 4096, i32 noundef 4096, i32 noundef 0) #16
  %prp_page_pool.i = getelementptr inbounds %struct.nvme_dev, ptr %call.i.i.i, i32 0, i32 5
  %48 = ptrtoint ptr %prp_page_pool.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call.i, ptr %prp_page_pool.i, align 4
  %tobool.not.i192 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i192, label %do.body.unmap_crit_edge, label %if.end.i193

do.body.unmap_crit_edge:                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %unmap

if.end.i193:                                      ; preds = %do.body
  %49 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev15, align 8
  %call4.i = tail call ptr @dma_pool_create(ptr noundef nonnull @.str.109, ptr noundef %50, i32 noundef 256, i32 noundef 256, i32 noundef 0) #16
  %prp_small_pool.i = getelementptr inbounds %struct.nvme_dev, ptr %call.i.i.i, i32 0, i32 6
  %51 = ptrtoint ptr %prp_small_pool.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call4.i, ptr %prp_small_pool.i, align 8
  %tobool6.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool6.not.i, label %if.end.i193.unmap.sink.split_crit_edge, label %if.end94

if.end.i193.unmap.sink.split_crit_edge:           ; preds = %if.end.i193
  call void @__sanitizer_cov_trace_pc() #18
  br label %unmap.sink.split

if.end94:                                         ; preds = %if.end.i193
  %call102 = tail call ptr @mempool_create_node(i32 noundef 1, ptr noundef nonnull @mempool_kmalloc, ptr noundef nonnull @mempool_kfree, ptr noundef nonnull inttoptr (i32 2544 to ptr), i32 noundef 3264, i32 noundef -1) #16
  %iod_mempool = getelementptr inbounds %struct.nvme_dev, ptr %call.i.i.i, i32 0, i32 26
  %52 = ptrtoint ptr %iod_mempool to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call102, ptr %iod_mempool, align 8
  %tobool104.not = icmp eq ptr %call102, null
  br i1 %tobool104.not, label %if.end94.release_pools_crit_edge, label %if.end106

if.end94.release_pools_crit_edge:                 ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #18
  br label %release_pools

if.end106:                                        ; preds = %if.end94
  %call109 = tail call i32 @nvme_init_ctrl(ptr noundef %ctrl, ptr noundef %dev1, ptr noundef nonnull @nvme_pci_ctrl_ops, i32 noundef %1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %do.end115, label %release_mempool

do.end115:                                        ; preds = %if.end106
  %device = getelementptr inbounds %struct.nvme_dev, ptr %call.i.i.i, i32 0, i32 23, i32 17
  %53 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %device, align 8
  %init_name.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %55 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i195 = icmp eq ptr %56, null
  br i1 %tobool.not.i195, label %if.end.i196, label %do.end115.dev_name.exit_crit_edge

do.end115.dev_name.exit_crit_edge:                ; preds = %do.end115
  call void @__sanitizer_cov_trace_pc() #18
  br label %dev_name.exit

if.end.i196:                                      ; preds = %do.end115
  call void @__sanitizer_cov_trace_pc() #18
  %57 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i196, %do.end115.dev_name.exit_crit_edge
  %retval.0.i197 = phi ptr [ %58, %if.end.i196 ], [ %56, %do.end115.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %54, ptr noundef nonnull @.str.14, ptr noundef %retval.0.i197) #21
  %call120 = tail call i32 @nvme_reset_ctrl(ptr noundef %ctrl) #16
  %call.i198 = tail call i64 @async_schedule_node(ptr noundef nonnull @nvme_async_probe, ptr noundef nonnull %call.i.i.i, i32 noundef -1) #16
  br label %cleanup

release_mempool:                                  ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #18
  %59 = ptrtoint ptr %iod_mempool to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %iod_mempool, align 8
  tail call void @mempool_destroy(ptr noundef %60) #16
  br label %release_pools

release_pools:                                    ; preds = %release_mempool, %if.end94.release_pools_crit_edge
  %result.0 = phi i32 [ %call109, %release_mempool ], [ -12, %if.end94.release_pools_crit_edge ]
  %61 = ptrtoint ptr %prp_page_pool.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %prp_page_pool.i, align 4
  tail call void @dma_pool_destroy(ptr noundef %62) #16
  br label %unmap.sink.split

unmap.sink.split:                                 ; preds = %release_pools, %if.end.i193.unmap.sink.split_crit_edge
  %.sink.in = phi ptr [ %prp_small_pool.i, %release_pools ], [ %prp_page_pool.i, %if.end.i193.unmap.sink.split_crit_edge ]
  %result.1.ph = phi i32 [ %result.0, %release_pools ], [ -12, %if.end.i193.unmap.sink.split_crit_edge ]
  %63 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %63)
  %.sink = load ptr, ptr %.sink.in, align 4
  tail call void @dma_pool_destroy(ptr noundef %.sink) #16
  br label %unmap

unmap:                                            ; preds = %unmap.sink.split, %do.body.unmap_crit_edge
  %result.1 = phi i32 [ -12, %do.body.unmap_crit_edge ], [ %result.1.ph, %unmap.sink.split ]
  %bar.i = getelementptr inbounds %struct.nvme_dev, ptr %call.i.i.i, i32 0, i32 14
  %64 = ptrtoint ptr %bar.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %bar.i, align 8
  %tobool.not.i201 = icmp eq ptr %65, null
  br i1 %tobool.not.i201, label %unmap.nvme_dev_unmap.exit_crit_edge, label %if.then.i

unmap.nvme_dev_unmap.exit_crit_edge:              ; preds = %unmap
  call void @__sanitizer_cov_trace_pc() #18
  br label %nvme_dev_unmap.exit

if.then.i:                                        ; preds = %unmap
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @iounmap(ptr noundef nonnull %65) #16
  br label %nvme_dev_unmap.exit

nvme_dev_unmap.exit:                              ; preds = %if.then.i, %unmap.nvme_dev_unmap.exit_crit_edge
  %66 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev15, align 8
  %add.ptr.i202 = getelementptr i8, ptr %67, i32 -136
  br label %put_pci.sink.split

put_pci.sink.split:                               ; preds = %nvme_dev_unmap.exit, %if.then20.i.i, %cond.end.i.i.put_pci.sink.split_crit_edge, %if.end.i.i188.put_pci.sink.split_crit_edge
  %add.ptr.i.sink214 = phi ptr [ %add.ptr.i202, %nvme_dev_unmap.exit ], [ %add.ptr.i, %if.then20.i.i ], [ %add.ptr.i, %cond.end.i.i.put_pci.sink.split_crit_edge ], [ %add.ptr.i, %if.end.i.i188.put_pci.sink.split_crit_edge ]
  %result.2.ph = phi i32 [ %result.1, %nvme_dev_unmap.exit ], [ -19, %if.then20.i.i ], [ -19, %cond.end.i.i.put_pci.sink.split_crit_edge ], [ -19, %if.end.i.i188.put_pci.sink.split_crit_edge ]
  %call.i9.i = tail call i32 @pci_select_bars(ptr noundef %add.ptr.i.sink214, i32 noundef 512) #16
  tail call void @pci_release_selected_regions(ptr noundef %add.ptr.i.sink214, i32 noundef %call.i9.i) #16
  br label %put_pci

put_pci:                                          ; preds = %put_pci.sink.split, %if.end12.put_pci_crit_edge
  %result.2 = phi i32 [ -19, %if.end12.put_pci_crit_edge ], [ %result.2.ph, %put_pci.sink.split ]
  %68 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev15, align 8
  tail call void @put_device(ptr noundef %69) #16
  br label %free

free:                                             ; preds = %put_pci, %if.end7.i.i.free_crit_edge, %kcalloc_node.exit.thread
  %result.3 = phi i32 [ %result.2, %put_pci ], [ -12, %if.end7.i.i.free_crit_edge ], [ -12, %kcalloc_node.exit.thread ]
  %70 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %call.i.i.i, align 8
  tail call void @kfree(ptr noundef %71) #16
  tail call void @kfree(ptr noundef nonnull %call.i.i.i) #16
  br label %cleanup

cleanup:                                          ; preds = %free, %dev_name.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %result.3, %free ], [ 0, %dev_name.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvme_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %ctrl = getelementptr inbounds %struct.nvme_dev, ptr %1, i32 0, i32 23
  %call1 = tail call zeroext i1 @nvme_change_ctrl_state(ptr noundef %ctrl, i32 noundef 4) #16
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %driver_data.i.i, align 4
  %call2 = tail call zeroext i1 @pci_device_is_present(ptr noundef %pdev) #16
  br i1 %call2, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call4 = tail call zeroext i1 @nvme_change_ctrl_state(ptr noundef %ctrl, i32 noundef 6) #16
  tail call fastcc void @nvme_dev_disable(ptr noundef %1, i1 noundef zeroext true)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %reset_work = getelementptr inbounds %struct.nvme_dev, ptr %1, i32 0, i32 23, i32 20
  %call6 = tail call zeroext i1 @flush_work(ptr noundef %reset_work) #16
  tail call void @nvme_stop_ctrl(ptr noundef %ctrl) #16
  tail call void @nvme_remove_namespaces(ptr noundef %ctrl) #16
  tail call fastcc void @nvme_dev_disable(ptr noundef %1, i1 noundef zeroext true)
  %attrs_added.i = getelementptr inbounds %struct.nvme_dev, ptr %1, i32 0, i32 39
  %3 = ptrtoint ptr %attrs_added.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %attrs_added.i, align 4, !range !351
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %if.end.nvme_remove_attrs.exit_crit_edge, label %if.then.i

if.end.nvme_remove_attrs.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %nvme_remove_attrs.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %device.i = getelementptr inbounds %struct.nvme_dev, ptr %1, i32 0, i32 23, i32 17
  %5 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %device.i, align 8
  tail call void @sysfs_remove_group(ptr noundef %6, ptr noundef nonnull @nvme_pci_attr_group) #16
  br label %nvme_remove_attrs.exit

nvme_remove_attrs.exit:                           ; preds = %if.then.i, %if.end.nvme_remove_attrs.exit_crit_edge
  tail call fastcc void @nvme_free_host_mem(ptr noundef %1)
  %admin_q.i = getelementptr inbounds %struct.nvme_dev, ptr %1, i32 0, i32 23, i32 6
  %7 = ptrtoint ptr %admin_q.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %admin_q.i, align 8
  %tobool.not.i26 = icmp eq ptr %8, null
  br i1 %tobool.not.i26, label %nvme_remove_attrs.exit.nvme_dev_remove_admin.exit_crit_edge, label %land.lhs.true.i

nvme_remove_attrs.exit.nvme_dev_remove_admin.exit_crit_edge: ; preds = %nvme_remove_attrs.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %nvme_dev_remove_admin.exit

land.lhs.true.i:                                  ; preds = %nvme_remove_attrs.exit
  %queue_flags.i = getelementptr inbounds %struct.request_queue, ptr %8, i32 0, i32 11
  %9 = ptrtoint ptr %queue_flags.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %queue_flags.i, align 4
  %11 = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool3.not.i = icmp eq i32 %11, 0
  br i1 %tobool3.not.i, label %if.then.i27, label %land.lhs.true.i.nvme_dev_remove_admin.exit_crit_edge

land.lhs.true.i.nvme_dev_remove_admin.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %nvme_dev_remove_admin.exit

if.then.i27:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @nvme_start_admin_queue(ptr noundef %ctrl) #16
  %12 = ptrtoint ptr %admin_q.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %admin_q.i, align 8
  tail call void @blk_cleanup_queue(ptr noundef %13) #16
  %admin_tagset.i = getelementptr inbounds %struct.nvme_dev, ptr %1, i32 0, i32 2
  tail call void @blk_mq_free_tag_set(ptr noundef %admin_tagset.i) #16
  br label %nvme_dev_remove_admin.exit

nvme_dev_remove_admin.exit:                       ; preds = %if.then.i27, %land.lhs.true.i.nvme_dev_remove_admin.exit_crit_edge, %nvme_remove_attrs.exit.nvme_dev_remove_admin.exit_crit_edge
  tail call fastcc void @nvme_free_queues(ptr noundef %1, i32 noundef 0)
  %prp_page_pool.i = getelementptr inbounds %struct.nvme_dev, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %prp_page_pool.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prp_page_pool.i, align 4
  tail call void @dma_pool_destroy(ptr noundef %15) #16
  %prp_small_pool.i = getelementptr inbounds %struct.nvme_dev, ptr %1, i32 0, i32 6
  %16 = ptrtoint ptr %prp_small_pool.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prp_small_pool.i, align 8
  tail call void @dma_pool_destroy(ptr noundef %17) #16
  %bar.i = getelementptr inbounds %struct.nvme_dev, ptr %1, i32 0, i32 14
  %18 = ptrtoint ptr %bar.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bar.i, align 8
  %tobool.not.i28 = icmp eq ptr %19, null
  br i1 %tobool.not.i28, label %nvme_dev_remove_admin.exit.nvme_dev_unmap.exit_crit_edge, label %if.then.i29

nvme_dev_remove_admin.exit.nvme_dev_unmap.exit_crit_edge: ; preds = %nvme_dev_remove_admin.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %nvme_dev_unmap.exit

if.then.i29:                                      ; preds = %nvme_dev_remove_admin.exit
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @iounmap(ptr noundef nonnull %19) #16
  br label %nvme_dev_unmap.exit

nvme_dev_unmap.exit:                              ; preds = %if.then.i29, %nvme_dev_remove_admin.exit.nvme_dev_unmap.exit_crit_edge
  %dev2.i = getelementptr inbounds %struct.nvme_dev, ptr %1, i32 0, i32 4
  %20 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev2.i, align 8
  %add.ptr.i = getelementptr i8, ptr %21, i32 -136
  %call.i.i = tail call i32 @pci_select_bars(ptr noundef %add.ptr.i, i32 noundef 512) #16
  tail call void @pci_release_selected_regions(ptr noundef %add.ptr.i, i32 noundef %call.i.i) #16
  tail call void @nvme_uninit_ctrl(ptr noundef %ctrl) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvme_shutdown(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %ctrl.i = getelementptr inbounds %struct.nvme_dev, ptr %1, i32 0, i32 23
  %call.i = tail call zeroext i1 @nvme_wait_reset(ptr noundef %ctrl.i) #16
  br i1 %call.i, label %if.end.i, label %entry.nvme_disable_prepare_reset.exit_crit_edge

entry.nvme_disable_prepare_reset.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %nvme_disable_prepare_reset.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @nvme_dev_disable(ptr noundef %1, i1 noundef zeroext true) #16
  br label %nvme_disable_prepare_reset.exit

nvme_disable_prepare_reset.exit:                  ; preds = %if.end.i, %entry.nvme_disable_prepare_reset.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_sriov_configure_simple(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvme_reset_work(ptr noundef %work) #2 align 64 {
entry:
  %c.i.i = alloca %struct.nvme_command, align 8
  %c.i.i83.i.i.i = alloca %struct.nvme_command, align 8
  %c.i.i.i.i.i = alloca %struct.nvme_command, align 8
  %c.i69.i.i.i = alloca %struct.nvme_command, align 8
  %c.i.i.i.i = alloca %struct.nvme_command, align 8
  %affd.i.i = alloca %struct.irq_affinity, align 4
  %nr_io_queues.i = alloca i32, align 4
  %region.i.i.i = alloca %struct.pci_bus_region, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1984
  %ctrl = getelementptr i8, ptr %work, i32 -1384
  %ctrl_config = getelementptr i8, ptr %work, i32 172
  %0 = ptrtoint ptr %ctrl_config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ctrl_config, align 4
  %and = and i32 %1, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %state = getelementptr i8, ptr %work, i32 -1380
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.not = icmp eq i32 %3, 2
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %device = getelementptr i8, ptr %work, i32 -168
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.16, i32 noundef %3) #21
  br label %do.end140

if.end:                                           ; preds = %entry
  %and8 = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end.if.end11_crit_edge, label %if.then10

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @nvme_dev_disable(ptr noundef %add.ptr, i1 noundef zeroext false)
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end.if.end11_crit_edge
  tail call void @nvme_sync_queues(ptr noundef %ctrl) #16
  %shutdown_lock = getelementptr i8, ptr %work, i32 -1508
  tail call void @mutex_lock_nested(ptr noundef %shutdown_lock, i32 noundef 0) #16
  %dev1.i = getelementptr i8, ptr %work, i32 -1608
  %6 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev1.i, align 8
  %add.ptr.i = getelementptr i8, ptr %7, i32 -136
  %call.i = tail call i32 @pci_enable_device_mem(ptr noundef %add.ptr.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end11.out_unlock_crit_edge

if.end11.out_unlock_crit_edge:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_unlock

if.end.i:                                         ; preds = %if.end11
  tail call void @pci_set_master(ptr noundef %add.ptr.i) #16
  %quirks.i = getelementptr i8, ptr %work, i32 288
  %8 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %quirks.i, align 8
  %and.i = and i32 %9, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  %10 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev1.i, align 8
  %spec.select.i = select i1 %tobool2.not.i, i64 -1, i64 281474976710655
  %call.i.i = tail call i32 @dma_set_mask(ptr noundef %11, i64 noundef %spec.select.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end9.i, label %if.end.i.disable.i_crit_edge

if.end.i.disable.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %disable.i

if.end9.i:                                        ; preds = %if.end.i
  %call1.i.i = tail call i32 @dma_set_coherent_mask(ptr noundef %11, i64 noundef %spec.select.i) #16
  %bar.i = getelementptr i8, ptr %work, i32 -1560
  %12 = ptrtoint ptr %bar.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bar.i, align 8
  %add.ptr10.i = getelementptr i8, ptr %13, i32 28
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i) #16, !srcloc !352
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !353
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %cmp14.i = icmp eq i32 %14, -1
  br i1 %cmp14.i, label %if.end9.i.disable.i_crit_edge, label %if.end16.i

if.end9.i.disable.i_crit_edge:                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %disable.i

if.end16.i:                                       ; preds = %if.end9.i
  %call.i160.i = tail call i32 @pci_alloc_irq_vectors_affinity(ptr noundef %add.ptr.i, i32 noundef 1, i32 noundef 1, i32 noundef 7, ptr noundef null) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i160.i)
  %cmp18.i = icmp slt i32 %call.i160.i, 0
  br i1 %cmp18.i, label %if.end16.i.out_unlock_crit_edge, label %if.end20.i

if.end16.i.out_unlock_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_unlock

if.end20.i:                                       ; preds = %if.end16.i
  %15 = ptrtoint ptr %bar.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bar.i, align 8
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #16, !srcloc !352
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !354
  %add.ptr.i.i = getelementptr i32, ptr %16, i32 1
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #16, !srcloc !352
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !355
  %19 = zext i32 %18 to i64
  %20 = zext i32 %17 to i64
  %21 = shl nuw i64 %20, 32
  %22 = or i64 %21, %19
  %23 = tail call i64 @llvm.bswap.i64(i64 %22) #16
  %cap.i = getelementptr i8, ptr %work, i32 184
  %24 = ptrtoint ptr %cap.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %cap.i, align 8
  %25 = trunc i64 %23 to i32
  %26 = and i32 %25, 65535
  %conv.i = add nuw nsw i32 %26, 1
  %27 = load i32, ptr @io_queue_depth, align 4
  %28 = tail call i32 @llvm.umin.i32(i32 %conv.i, i32 %27) #16
  %q_depth.i = getelementptr i8, ptr %work, i32 -1572
  %29 = ptrtoint ptr %q_depth.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %q_depth.i, align 4
  %30 = trunc i32 %28 to i16
  %conv37.i = add i16 %30, -1
  %sqsize.i = getelementptr i8, ptr %work, i32 234
  %31 = ptrtoint ptr %sqsize.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv37.i, ptr %sqsize.i, align 2
  %shr.i = lshr i64 %23, 32
  %32 = trunc i64 %shr.i to i32
  %sh_prom42.i = and i32 %32, 15
  %shl43.i = shl nuw nsw i32 1, %sh_prom42.i
  %db_stride.i = getelementptr i8, ptr %work, i32 -1564
  %33 = ptrtoint ptr %db_stride.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %shl43.i, ptr %db_stride.i, align 4
  %34 = ptrtoint ptr %bar.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bar.i, align 8
  %add.ptr45.i = getelementptr i8, ptr %35, i32 4096
  %dbs.i = getelementptr i8, ptr %work, i32 -1612
  %36 = ptrtoint ptr %dbs.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %add.ptr45.i, ptr %dbs.i, align 4
  %37 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %quirks.i, align 8
  %and48.i = and i32 %38, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48.i)
  %tobool49.not.i = icmp eq i32 %and48.i, 0
  %spec.select164.i = select i1 %tobool49.not.i, i32 6, i32 7
  %39 = getelementptr i8, ptr %work, i32 -1568
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %spec.select164.i, ptr %39, align 8
  %vendor.i = getelementptr i8, ptr %7, i32 -104
  %41 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %vendor.i, align 8
  %43 = zext i16 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values)
  switch i16 %42, label %if.end20.i.if.end93.i_crit_edge [
    i16 4203, label %land.lhs.true.i
    i16 5197, label %land.lhs.true69.i
  ]

if.end20.i.if.end93.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end93.i

land.lhs.true.i:                                  ; preds = %if.end20.i
  %device.i = getelementptr i8, ptr %7, i32 -102
  %44 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %device.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8193, i16 %45)
  %cmp57.i = icmp eq i16 %45, 8193
  br i1 %cmp57.i, label %if.then59.i, label %land.lhs.true.i.if.end93.i_crit_edge

land.lhs.true.i.if.end93.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end93.i

if.then59.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  %46 = ptrtoint ptr %q_depth.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 2, ptr %q_depth.i, align 4
  %device62.i = getelementptr i8, ptr %work, i32 -168
  %47 = ptrtoint ptr %device62.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %device62.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %48, ptr noundef nonnull @.str.48, i32 noundef 2) #21
  br label %if.end93.i

land.lhs.true69.i:                                ; preds = %if.end20.i
  %device70.i = getelementptr i8, ptr %7, i32 -102
  %49 = ptrtoint ptr %device70.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %device70.i, align 2
  %.off.i = add i16 %50, 22495
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %.off.i)
  %switch.i = icmp ult i16 %.off.i, 2
  %and81.i = and i64 %23, 65535
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and81.i)
  %cmp82.i = icmp eq i64 %and81.i, 0
  %or.cond.i = select i1 %switch.i, i1 %cmp82.i, i1 false
  br i1 %or.cond.i, label %if.then84.i, label %land.lhs.true69.i.if.end93.i_crit_edge

land.lhs.true69.i.if.end93.i_crit_edge:           ; preds = %land.lhs.true69.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end93.i

if.then84.i:                                      ; preds = %land.lhs.true69.i
  call void @__sanitizer_cov_trace_pc() #18
  %51 = ptrtoint ptr %q_depth.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 64, ptr %q_depth.i, align 4
  %device90.i = getelementptr i8, ptr %work, i32 -168
  %52 = ptrtoint ptr %device90.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %device90.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.51, i32 noundef 64) #21
  br label %if.end93.i

if.end93.i:                                       ; preds = %if.then84.i, %land.lhs.true69.i.if.end93.i_crit_edge, %if.then59.i, %land.lhs.true.i.if.end93.i_crit_edge, %if.end20.i.if.end93.i_crit_edge
  %54 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %quirks.i, align 8
  %and96.i = and i32 %55, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96.i)
  %tobool97.not.i = icmp eq i32 %and96.i, 0
  br i1 %tobool97.not.i, label %if.end93.i.if.end110.i_crit_edge, label %land.lhs.true98.i

if.end93.i.if.end110.i_crit_edge:                 ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end110.i

land.lhs.true98.i:                                ; preds = %if.end93.i
  %56 = ptrtoint ptr %q_depth.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %q_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %57)
  %cmp100.i = icmp ult i32 %57, 34
  br i1 %cmp100.i, label %if.then102.i, label %land.lhs.true98.i.if.end110.i_crit_edge

land.lhs.true98.i.if.end110.i_crit_edge:          ; preds = %land.lhs.true98.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end110.i

if.then102.i:                                     ; preds = %land.lhs.true98.i
  call void @__sanitizer_cov_trace_pc() #18
  %58 = ptrtoint ptr %q_depth.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 34, ptr %q_depth.i, align 4
  %device108.i = getelementptr i8, ptr %work, i32 -168
  %59 = ptrtoint ptr %device108.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %device108.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %60, ptr noundef nonnull @.str.54, i32 noundef 34) #21
  br label %if.end110.i

if.end110.i:                                      ; preds = %if.then102.i, %land.lhs.true98.i.if.end110.i_crit_edge, %if.end93.i.if.end110.i_crit_edge
  %61 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev1.i, align 8
  %add.ptr.i161.i = getelementptr i8, ptr %62, i32 -136
  %cmb_size.i.i = getelementptr i8, ptr %work, i32 -1408
  %63 = ptrtoint ptr %cmb_size.i.i to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %cmb_size.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %64)
  %tobool.not.i.i = icmp eq i64 %64, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end110.i.if.end15_crit_edge

if.end110.i.if.end15_crit_edge:                   ; preds = %if.end110.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15

if.end.i.i:                                       ; preds = %if.end110.i
  %65 = ptrtoint ptr %cap.i to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %cap.i, align 8
  %67 = and i64 %66, 144115188075855872
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %67)
  %tobool2.not.i.i = icmp eq i64 %67, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.end6.i.i_crit_edge, label %do.body.i.i

if.end.i.i.if.end6.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6.i.i

do.body.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !356
  tail call void @arm_heavy_mb() #16
  %68 = ptrtoint ptr %bar.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %bar.i, align 8
  %add.ptr5.i.i = getelementptr i8, ptr %69, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i, i32 16777216) #16, !srcloc !357
  br label %if.end6.i.i

if.end6.i.i:                                      ; preds = %do.body.i.i, %if.end.i.i.if.end6.i.i_crit_edge
  %70 = ptrtoint ptr %bar.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %bar.i, align 8
  %add.ptr8.i.i = getelementptr i8, ptr %71, i32 60
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i.i) #16, !srcloc !352
  %73 = tail call i32 @llvm.bswap.i32(i32 %72) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !358
  %cmbsz.i.i = getelementptr i8, ptr %work, i32 -1396
  %74 = ptrtoint ptr %cmbsz.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %cmbsz.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool12.not.i.i = icmp eq i32 %72, 0
  br i1 %tobool12.not.i.i, label %if.end6.i.i.if.end15_crit_edge, label %if.end14.i.i

if.end6.i.i.if.end15_crit_edge:                   ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15

if.end14.i.i:                                     ; preds = %if.end6.i.i
  %75 = ptrtoint ptr %bar.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %bar.i, align 8
  %add.ptr18.i.i = getelementptr i8, ptr %76, i32 56
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18.i.i) #16, !srcloc !352
  %78 = tail call i32 @llvm.bswap.i32(i32 %77) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !359
  %cmbloc.i.i = getelementptr i8, ptr %work, i32 -1392
  %79 = ptrtoint ptr %cmbloc.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %cmbloc.i.i, align 8
  %80 = ptrtoint ptr %cmbsz.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %cmbsz.i.i, align 4
  %82 = lshr i32 %81, 6
  %mul.i.i.i = and i32 %82, 60
  %add.i.i.i = add nuw nsw i32 %mul.i.i.i, 12
  %sh_prom.i.i.i = zext i32 %add.i.i.i to i64
  %shr26.i.i = lshr i32 %78, 12
  %conv28.i.i = zext i32 %shr26.i.i to i64
  %mul29.i.i = shl i64 %conv28.i.i, %sh_prom.i.i.i
  %and31.i.i = and i32 %78, 7
  %resource.i.i = getelementptr i8, ptr %62, i32 936
  %arrayidx.i.i = getelementptr [17 x %struct.resource], ptr %resource.i.i, i32 0, i32 %and31.i.i
  %end.i.i = getelementptr inbounds %struct.resource, ptr %arrayidx.i.i, i32 0, i32 1
  %83 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %end.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %cmp.i162.i = icmp eq i32 %84, 0
  br i1 %cmp.i162.i, label %if.end14.i.i.cond.end.i.i_crit_edge, label %cond.false.i.i

if.end14.i.i.cond.end.i.i_crit_edge:              ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end.i.i

cond.false.i.i:                                   ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %85 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx.i.i, align 8
  %sub.i.i = add i32 %84, 1
  %add.i.i = sub i32 %sub.i.i, %86
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.false.i.i, %if.end14.i.i.cond.end.i.i_crit_edge
  %cond.i.i = phi i32 [ %add.i.i, %cond.false.i.i ], [ 0, %if.end14.i.i.cond.end.i.i_crit_edge ]
  %conv38.i.i = zext i32 %cond.i.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %mul29.i.i, i64 %conv38.i.i)
  %cmp39.i.i = icmp ugt i64 %mul29.i.i, %conv38.i.i
  br i1 %cmp39.i.i, label %cond.end.i.i.if.end15_crit_edge, label %if.end42.i.i

cond.end.i.i.if.end15_crit_edge:                  ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15

if.end42.i.i:                                     ; preds = %cond.end.i.i
  %87 = ptrtoint ptr %cap.i to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %cap.i, align 8
  %89 = and i64 %88, 144115188075855872
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %89)
  %tobool47.not.i.i = icmp eq i64 %89, 0
  br i1 %tobool47.not.i.i, label %if.end42.i.i.if.end54.i.i_crit_edge, label %if.then48.i.i

if.end42.i.i.if.end54.i.i_crit_edge:              ; preds = %if.end42.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end54.i.i

if.then48.i.i:                                    ; preds = %if.end42.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %region.i.i.i) #16
  %90 = ptrtoint ptr %region.i.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 -1, ptr %region.i.i.i, align 4, !annotation !349
  %91 = getelementptr inbounds %struct.pci_bus_region, ptr %region.i.i.i, i32 0, i32 1
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 -1, ptr %91, align 4, !annotation !349
  %bus.i.i.i = getelementptr i8, ptr %62, i32 -128
  %93 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %bus.i.i.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.pci_dev, ptr %add.ptr.i161.i, i32 0, i32 47, i32 %and31.i.i
  call void @pcibios_resource_to_bus(ptr noundef %94, ptr noundef nonnull %region.i.i.i, ptr noundef %arrayidx.i.i.i) #16
  %95 = ptrtoint ptr %region.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %region.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %region.i.i.i) #16
  %conv50.i.i = zext i32 %96 to i64
  %add51.i.i = add i64 %mul29.i.i, %conv50.i.i
  %or.i.i = or i64 %add51.i.i, 3
  %97 = ptrtoint ptr %bar.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %bar.i, align 8
  %add.ptr53.i.i = getelementptr i8, ptr %98, i32 80
  call fastcc void @hi_lo_writeq(i64 noundef %or.i.i, ptr noundef %add.ptr53.i.i) #16
  br label %if.end54.i.i

if.end54.i.i:                                     ; preds = %if.then48.i.i, %if.end42.i.i.if.end54.i.i_crit_edge
  %device.i.i = getelementptr i8, ptr %work, i32 -168
  %99 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %device.i.i, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %100, ptr noundef nonnull @.str.56) #21
  br label %if.end15

disable.i:                                        ; preds = %if.end9.i.disable.i_crit_edge, %if.end.i.disable.i_crit_edge
  %result.0.i = phi i32 [ -19, %if.end9.i.disable.i_crit_edge ], [ -12, %if.end.i.disable.i_crit_edge ]
  tail call void @pci_disable_device(ptr noundef %add.ptr.i) #16
  br label %out_unlock

if.end15:                                         ; preds = %if.end54.i.i, %cond.end.i.i.if.end15_crit_edge, %if.end6.i.i.if.end15_crit_edge, %if.end110.i.if.end15_crit_edge
  %call111.i = call i32 @pci_enable_pcie_error_reporting(ptr noundef %add.ptr.i) #16
  %call112.i = call i32 @pci_save_state(ptr noundef %add.ptr.i) #16
  %101 = ptrtoint ptr %db_stride.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %db_stride.i, align 4
  %mul1.i.i = shl i32 %102, 3
  %add2.i.i = add i32 %mul1.i.i, 4096
  %bar_mapped_size.i.i = getelementptr i8, ptr %work, i32 -1556
  %103 = ptrtoint ptr %bar_mapped_size.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %bar_mapped_size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %104, i32 %add2.i.i)
  %cmp.not.i.i = icmp ult i32 %104, %add2.i.i
  br i1 %cmp.not.i.i, label %if.end.i.i210, label %if.end15.if.end.i220_crit_edge

if.end15.if.end.i220_crit_edge:                   ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i220

if.end.i.i210:                                    ; preds = %if.end15
  %105 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dev1.i, align 8
  %resource.i.i208 = getelementptr i8, ptr %106, i32 936
  %end.i.i209 = getelementptr i8, ptr %106, i32 940
  %107 = ptrtoint ptr %end.i.i209 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %end.i.i209, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %cmp2.i.i = icmp eq i32 %108, 0
  br i1 %cmp2.i.i, label %if.end.i.i210.cond.end.i.i215_crit_edge, label %cond.false.i.i213

if.end.i.i210.cond.end.i.i215_crit_edge:          ; preds = %if.end.i.i210
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end.i.i215

cond.false.i.i213:                                ; preds = %if.end.i.i210
  call void @__sanitizer_cov_trace_pc() #18
  %109 = ptrtoint ptr %resource.i.i208 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %resource.i.i208, align 8
  %sub.i.i211 = add i32 %108, 1
  %add.i.i212 = sub i32 %sub.i.i211, %110
  br label %cond.end.i.i215

cond.end.i.i215:                                  ; preds = %cond.false.i.i213, %if.end.i.i210.cond.end.i.i215_crit_edge
  %cond.i.i214 = phi i32 [ %add.i.i212, %cond.false.i.i213 ], [ 0, %if.end.i.i210.cond.end.i.i215_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i.i214, i32 %add2.i.i)
  %cmp8.i.i = icmp ult i32 %cond.i.i214, %add2.i.i
  br i1 %cmp8.i.i, label %cond.end.i.i215.out_unlock_crit_edge, label %if.end10.i.i

cond.end.i.i215.out_unlock_crit_edge:             ; preds = %cond.end.i.i215
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_unlock

if.end10.i.i:                                     ; preds = %cond.end.i.i215
  %111 = ptrtoint ptr %bar.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %bar.i, align 8
  %tobool.not.i.i216 = icmp eq ptr %112, null
  br i1 %tobool.not.i.i216, label %if.end10.i.i.if.end13.i.i_crit_edge, label %if.then11.i.i

if.end10.i.i.if.end13.i.i_crit_edge:              ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13.i.i

if.then11.i.i:                                    ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @iounmap(ptr noundef nonnull %112) #16
  br label %if.end13.i.i

if.end13.i.i:                                     ; preds = %if.then11.i.i, %if.end10.i.i.if.end13.i.i_crit_edge
  %113 = ptrtoint ptr %resource.i.i208 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %resource.i.i208, align 8
  %call.i.i217 = call ptr @ioremap(i32 noundef %114, i32 noundef %add2.i.i) #16
  %115 = ptrtoint ptr %bar.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %call.i.i217, ptr %bar.i, align 8
  %tobool19.not.i.i = icmp eq ptr %call.i.i217, null
  br i1 %tobool19.not.i.i, label %if.then20.i.i, label %if.end22.i.i

if.then20.i.i:                                    ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %116 = ptrtoint ptr %bar_mapped_size.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 0, ptr %bar_mapped_size.i.i, align 4
  br label %out_unlock

if.end22.i.i:                                     ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %117 = ptrtoint ptr %bar_mapped_size.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %add2.i.i, ptr %bar_mapped_size.i.i, align 4
  %add.ptr25.i.i = getelementptr i8, ptr %call.i.i217, i32 4096
  %118 = ptrtoint ptr %dbs.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %add.ptr25.i.i, ptr %dbs.i, align 4
  br label %if.end.i220

if.end.i220:                                      ; preds = %if.end22.i.i, %if.end15.if.end.i220_crit_edge
  %119 = ptrtoint ptr %bar.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %bar.i, align 8
  %add.ptr.i219 = getelementptr i8, ptr %120, i32 8
  %121 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i219) #16, !srcloc !352
  %122 = call i32 @llvm.bswap.i32(i32 %121) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !360
  call void @__sanitizer_cov_trace_const_cmp4(i32 65791, i32 %122)
  %cmp4.i = icmp ugt i32 %122, 65791
  br i1 %cmp4.i, label %cond.true.i, label %if.end19.critedge.i

cond.true.i:                                      ; preds = %if.end.i220
  %123 = ptrtoint ptr %cap.i to i32
  call void @__asan_load8_noabort(i32 %123)
  %124 = load i64, ptr %cap.i, align 8
  %125 = and i64 %124, 68719476736
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %125)
  %phi.cmp.not.i = icmp eq i64 %125, 0
  %subsystem.i = getelementptr i8, ptr %work, i32 -1416
  %.lobit.i = lshr exact i64 %125, 36
  %126 = trunc i64 %.lobit.i to i8
  %127 = ptrtoint ptr %subsystem.i to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 %126, ptr %subsystem.i, align 8
  br i1 %phi.cmp.not.i, label %cond.true.i.if.end19.i_crit_edge, label %land.lhs.true.i223

cond.true.i.if.end19.i_crit_edge:                 ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end19.i

land.lhs.true.i223:                               ; preds = %cond.true.i
  %128 = ptrtoint ptr %bar.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %bar.i, align 8
  %add.ptr10.i222 = getelementptr i8, ptr %129, i32 28
  %130 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i222) #16, !srcloc !352
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !361
  %131 = and i32 %130, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %tobool15.not.i = icmp eq i32 %131, 0
  br i1 %tobool15.not.i, label %land.lhs.true.i223.if.end19.i_crit_edge, label %do.body.i

land.lhs.true.i223.if.end19.i_crit_edge:          ; preds = %land.lhs.true.i223
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end19.i

do.body.i:                                        ; preds = %land.lhs.true.i223
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !362
  call void @arm_heavy_mb() #16
  %132 = ptrtoint ptr %bar.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %bar.i, align 8
  %add.ptr18.i = getelementptr i8, ptr %133, i32 28
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.i, i32 268435456) #16, !srcloc !357
  br label %if.end19.i

if.end19.critedge.i:                              ; preds = %if.end.i220
  call void @__sanitizer_cov_trace_pc() #18
  %subsystem.c.i = getelementptr i8, ptr %work, i32 -1416
  %134 = ptrtoint ptr %subsystem.c.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 0, ptr %subsystem.c.i, align 8
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.end19.critedge.i, %do.body.i, %land.lhs.true.i223.if.end19.i_crit_edge, %cond.true.i.if.end19.i_crit_edge
  %call21.i = call i32 @nvme_disable_ctrl(ptr noundef %ctrl) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %cmp22.i = icmp slt i32 %call21.i, 0
  br i1 %cmp22.i, label %if.end19.i.out_unlock_crit_edge, label %if.end24.i

if.end19.i.out_unlock_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_unlock

if.end24.i:                                       ; preds = %if.end19.i
  %call25.i = call fastcc i32 @nvme_alloc_queue(ptr noundef %add.ptr, i32 noundef 0, i32 noundef 32) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %if.end28.i, label %if.end24.i.out_unlock_crit_edge

if.end24.i.out_unlock_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_unlock

if.end28.i:                                       ; preds = %if.end24.i
  %numa_node.i = getelementptr i8, ptr %work, i32 -1212
  %135 = ptrtoint ptr %numa_node.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 -1, ptr %numa_node.i, align 4
  %136 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %add.ptr, align 8
  %q_depth.i224 = getelementptr inbounds %struct.nvme_queue, ptr %137, i32 0, i32 9
  %138 = ptrtoint ptr %q_depth.i224 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %q_depth.i224, align 4
  %sub.i = add i32 %139, -1
  %shl.i = shl i32 %sub.i, 16
  %or.i = or i32 %shl.i, %sub.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !363
  call void @arm_heavy_mb() #16
  %140 = call i32 @llvm.bswap.i32(i32 %or.i) #16
  %141 = ptrtoint ptr %bar.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %bar.i, align 8
  %add.ptr36.i = getelementptr i8, ptr %142, i32 36
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36.i, i32 %140) #16, !srcloc !357
  %sq_dma_addr.i = getelementptr inbounds %struct.nvme_queue, ptr %137, i32 0, i32 6
  %143 = ptrtoint ptr %sq_dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %sq_dma_addr.i, align 16
  %145 = ptrtoint ptr %bar.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %bar.i, align 8
  %add.ptr38.i = getelementptr i8, ptr %146, i32 40
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !364
  call void @arm_heavy_mb() #16
  %147 = call i32 @llvm.bswap.i32(i32 %144) #16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38.i, i32 %147) #16, !srcloc !357
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !365
  call void @arm_heavy_mb() #16
  %add.ptr.i.i225 = getelementptr i8, ptr %146, i32 44
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i225, i32 0) #16, !srcloc !357
  %cq_dma_addr.i = getelementptr inbounds %struct.nvme_queue, ptr %137, i32 0, i32 7
  %148 = ptrtoint ptr %cq_dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %cq_dma_addr.i, align 4
  %150 = ptrtoint ptr %bar.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %bar.i, align 8
  %add.ptr41.i = getelementptr i8, ptr %151, i32 48
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !364
  call void @arm_heavy_mb() #16
  %152 = call i32 @llvm.bswap.i32(i32 %149) #16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41.i, i32 %152) #16, !srcloc !357
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !365
  call void @arm_heavy_mb() #16
  %add.ptr.i88.i = getelementptr i8, ptr %151, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i88.i, i32 0) #16, !srcloc !357
  %call43.i = call i32 @nvme_enable_ctrl(ptr noundef %ctrl) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i)
  %tobool44.not.i = icmp eq i32 %call43.i, 0
  br i1 %tobool44.not.i, label %if.end46.i, label %if.end28.i.out_unlock_crit_edge

if.end28.i.out_unlock_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_unlock

if.end46.i:                                       ; preds = %if.end28.i
  %cq_vector.i = getelementptr inbounds %struct.nvme_queue, ptr %137, i32 0, i32 10
  %153 = ptrtoint ptr %cq_vector.i to i32
  call void @__asan_store2_noabort(i32 %153)
  store i16 0, ptr %cq_vector.i, align 64
  %154 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %137, align 128
  %sq_tail.i.i = getelementptr inbounds %struct.nvme_queue, ptr %137, i32 0, i32 11
  %156 = ptrtoint ptr %sq_tail.i.i to i32
  call void @__asan_store2_noabort(i32 %156)
  store i16 0, ptr %sq_tail.i.i, align 2
  %last_sq_tail.i.i = getelementptr inbounds %struct.nvme_queue, ptr %137, i32 0, i32 12
  %157 = ptrtoint ptr %last_sq_tail.i.i to i32
  call void @__asan_store2_noabort(i32 %157)
  store i16 0, ptr %last_sq_tail.i.i, align 4
  %cq_head.i.i = getelementptr inbounds %struct.nvme_queue, ptr %137, i32 0, i32 13
  %158 = ptrtoint ptr %cq_head.i.i to i32
  call void @__asan_store2_noabort(i32 %158)
  store i16 0, ptr %cq_head.i.i, align 2
  %cq_phase.i.i = getelementptr inbounds %struct.nvme_queue, ptr %137, i32 0, i32 15
  %159 = ptrtoint ptr %cq_phase.i.i to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 1, ptr %cq_phase.i.i, align 2
  %dbs.i89.i = getelementptr inbounds %struct.nvme_dev, ptr %155, i32 0, i32 3
  %160 = ptrtoint ptr %dbs.i89.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %dbs.i89.i, align 4
  %q_db.i.i = getelementptr inbounds %struct.nvme_queue, ptr %137, i32 0, i32 8
  %162 = ptrtoint ptr %q_db.i.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %161, ptr %q_db.i.i, align 8
  %cqes.i.i = getelementptr inbounds %struct.nvme_queue, ptr %137, i32 0, i32 5
  %163 = ptrtoint ptr %cqes.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %cqes.i.i, align 4
  %165 = ptrtoint ptr %q_depth.i224 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %q_depth.i224, align 4
  %mul3.i.i = shl i32 %166, 4
  %167 = call ptr @memset(ptr %164, i32 0, i32 %mul3.i.i)
  %online_queues.i.i = getelementptr inbounds %struct.nvme_dev, ptr %155, i32 0, i32 7
  %168 = ptrtoint ptr %online_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %online_queues.i.i, align 4
  %inc.i.i = add i32 %169, 1
  store i32 %inc.i.i, ptr %online_queues.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !366
  call void @arm_heavy_mb() #16
  %170 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %137, align 128
  %dev1.i91.i = getelementptr inbounds %struct.nvme_dev, ptr %171, i32 0, i32 4
  %172 = ptrtoint ptr %dev1.i91.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %dev1.i91.i, align 8
  %add.ptr.i92.i = getelementptr i8, ptr %173, i32 -136
  %instance.i.i = getelementptr inbounds %struct.nvme_dev, ptr %171, i32 0, i32 23, i32 10
  %174 = ptrtoint ptr %instance.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %instance.i.i, align 8
  %176 = load i32, ptr @use_threaded_interrupts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %176)
  %tobool.not.i93.i = icmp eq i32 %176, 0
  %177 = ptrtoint ptr %cq_vector.i to i32
  call void @__asan_load2_noabort(i32 %177)
  %178 = load i16, ptr %cq_vector.i, align 64
  %conv5.i.i = zext i16 %178 to i32
  %qid6.i.i = getelementptr inbounds %struct.nvme_queue, ptr %137, i32 0, i32 14
  %179 = ptrtoint ptr %qid6.i.i to i32
  call void @__asan_load2_noabort(i32 %179)
  %180 = load i16, ptr %qid6.i.i, align 8
  %conv7.i.i = zext i16 %180 to i32
  br i1 %tobool.not.i93.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i94.i = call i32 (ptr, i32, ptr, ptr, ptr, ptr, ...) @pci_request_irq(ptr noundef %add.ptr.i92.i, i32 noundef %conv5.i.i, ptr noundef nonnull @nvme_irq_check, ptr noundef nonnull @nvme_irq, ptr noundef %137, ptr noundef nonnull @.str.61, i32 noundef %175, i32 noundef %conv7.i.i) #16
  br label %queue_request_irq.exit.i

if.else.i.i:                                      ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #18
  %call8.i.i = call i32 (ptr, i32, ptr, ptr, ptr, ptr, ...) @pci_request_irq(ptr noundef %add.ptr.i92.i, i32 noundef %conv5.i.i, ptr noundef nonnull @nvme_irq, ptr noundef null, ptr noundef %137, ptr noundef nonnull @.str.61, i32 noundef %175, i32 noundef %conv7.i.i) #16
  br label %queue_request_irq.exit.i

queue_request_irq.exit.i:                         ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i95.i = phi i32 [ %call.i94.i, %if.then.i.i ], [ %call8.i.i, %if.else.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i95.i)
  %tobool48.not.i = icmp eq i32 %retval.0.i95.i, 0
  br i1 %tobool48.not.i, label %if.end19, label %if.then49.i

if.then49.i:                                      ; preds = %queue_request_irq.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %online_queues.i = getelementptr i8, ptr %work, i32 -1596
  %181 = ptrtoint ptr %online_queues.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %online_queues.i, align 4
  %dec.i = add i32 %182, -1
  store i32 %dec.i, ptr %online_queues.i, align 4
  br label %out_unlock

if.end19:                                         ; preds = %queue_request_irq.exit.i
  %flags.i = getelementptr inbounds %struct.nvme_queue, ptr %137, i32 0, i32 17
  call void @_set_bit(i32 noundef 0, ptr noundef %flags.i) #16
  %admin_q.i = getelementptr i8, ptr %work, i32 -1232
  %183 = ptrtoint ptr %admin_q.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %admin_q.i, align 8
  %tobool.not.i227 = icmp eq ptr %184, null
  br i1 %tobool.not.i227, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end19
  %admin_tagset.i = getelementptr i8, ptr %work, i32 -1796
  %ops.i = getelementptr i8, ptr %work, i32 -1756
  %185 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store ptr @nvme_mq_admin_ops, ptr %ops.i, align 4
  %nr_hw_queues.i = getelementptr i8, ptr %work, i32 -1752
  %186 = ptrtoint ptr %nr_hw_queues.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 1, ptr %nr_hw_queues.i, align 4
  %queue_depth.i = getelementptr i8, ptr %work, i32 -1748
  %187 = ptrtoint ptr %queue_depth.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 30, ptr %queue_depth.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @admin_timeout to i32))
  %188 = load i32, ptr @admin_timeout, align 4
  %mul.i = mul i32 %188, 100
  %timeout.i = getelementptr i8, ptr %work, i32 -1732
  %189 = ptrtoint ptr %timeout.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 %mul.i, ptr %timeout.i, align 4
  %190 = ptrtoint ptr %numa_node.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %numa_node.i, align 4
  %numa_node6.i = getelementptr i8, ptr %work, i32 -1736
  %192 = ptrtoint ptr %numa_node6.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 %191, ptr %numa_node6.i, align 4
  %cmd_size.i = getelementptr i8, ptr %work, i32 -1740
  %193 = ptrtoint ptr %cmd_size.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 136, ptr %cmd_size.i, align 4
  %flags.i229 = getelementptr i8, ptr %work, i32 -1728
  %194 = ptrtoint ptr %flags.i229 to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 64, ptr %flags.i229, align 4
  %driver_data.i = getelementptr i8, ptr %work, i32 -1724
  %195 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr %add.ptr, ptr %driver_data.i, align 4
  %call.i230 = call i32 @blk_mq_alloc_tag_set(ptr noundef %admin_tagset.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i230)
  %tobool11.not.i = icmp eq i32 %call.i230, 0
  br i1 %tobool11.not.i, label %if.end.i232, label %if.then.i.out_unlock_crit_edge

if.then.i.out_unlock_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_unlock

if.end.i232:                                      ; preds = %if.then.i
  %admin_tagset15.i = getelementptr i8, ptr %work, i32 -1204
  %196 = ptrtoint ptr %admin_tagset15.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store ptr %admin_tagset.i, ptr %admin_tagset15.i, align 4
  %call17.i = call ptr @blk_mq_init_queue(ptr noundef %admin_tagset.i) #16
  %197 = ptrtoint ptr %admin_q.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store ptr %call17.i, ptr %admin_q.i, align 8
  %cmp.i.i231 = icmp ugt ptr %call17.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i231, label %if.then23.i, label %if.end25.i

if.then23.i:                                      ; preds = %if.end.i232
  call void @__sanitizer_cov_trace_pc() #18
  call void @blk_mq_free_tag_set(ptr noundef %admin_tagset.i) #16
  br label %out_unlock

if.end25.i:                                       ; preds = %if.end.i232
  %call28.i = call zeroext i1 @blk_get_queue(ptr noundef %call17.i) #16
  br i1 %call28.i, label %if.end25.i.if.end23_crit_edge, label %if.then29.i

if.end25.i.if.end23_crit_edge:                    ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end23

if.then29.i:                                      ; preds = %if.end25.i
  %198 = ptrtoint ptr %admin_q.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %admin_q.i, align 8
  %tobool.not.i.i233 = icmp eq ptr %199, null
  br i1 %tobool.not.i.i233, label %if.then29.i.nvme_dev_remove_admin.exit.i_crit_edge, label %land.lhs.true.i.i

if.then29.i.nvme_dev_remove_admin.exit.i_crit_edge: ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %nvme_dev_remove_admin.exit.i

land.lhs.true.i.i:                                ; preds = %if.then29.i
  %queue_flags.i.i = getelementptr inbounds %struct.request_queue, ptr %199, i32 0, i32 11
  %200 = ptrtoint ptr %queue_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load volatile i32, ptr %queue_flags.i.i, align 4
  %202 = and i32 %201, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %202)
  %tobool3.not.i.i = icmp eq i32 %202, 0
  br i1 %tobool3.not.i.i, label %if.then.i.i234, label %land.lhs.true.i.i.nvme_dev_remove_admin.exit.i_crit_edge

land.lhs.true.i.i.nvme_dev_remove_admin.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %nvme_dev_remove_admin.exit.i

if.then.i.i234:                                   ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @nvme_start_admin_queue(ptr noundef %ctrl) #16
  %203 = ptrtoint ptr %admin_q.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %admin_q.i, align 8
  call void @blk_cleanup_queue(ptr noundef %204) #16
  call void @blk_mq_free_tag_set(ptr noundef %admin_tagset.i) #16
  br label %nvme_dev_remove_admin.exit.i

nvme_dev_remove_admin.exit.i:                     ; preds = %if.then.i.i234, %land.lhs.true.i.i.nvme_dev_remove_admin.exit.i_crit_edge, %if.then29.i.nvme_dev_remove_admin.exit.i_crit_edge
  %205 = ptrtoint ptr %admin_q.i to i32
  call void @__asan_store4_noabort(i32 %205)
  store ptr null, ptr %admin_q.i, align 8
  br label %out_unlock

if.else.i:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #18
  call void @nvme_start_admin_queue(ptr noundef %ctrl) #16
  br label %if.end23

if.end23:                                         ; preds = %if.else.i, %if.end25.i.if.end23_crit_edge
  %206 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %dev1.i, align 8
  %call25 = call i32 @dma_max_mapping_size(ptr noundef %207) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194815, i32 %call25)
  %cmp27 = icmp ugt i32 %call25, 4194815
  %shr = lshr i32 %call25, 9
  %cond = select i1 %cmp27, i32 8192, i32 %shr
  %max_hw_sectors = getelementptr i8, ptr %work, i32 192
  %208 = ptrtoint ptr %max_hw_sectors to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 %cond, ptr %max_hw_sectors, align 8
  %max_segments = getelementptr i8, ptr %work, i32 196
  %209 = ptrtoint ptr %max_segments to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 127, ptr %max_segments, align 4
  %210 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %dev1.i, align 8
  %dma_parms.i = getelementptr inbounds %struct.device, ptr %211, i32 0, i32 22
  %212 = ptrtoint ptr %dma_parms.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %dma_parms.i, align 4
  %tobool.not.i236 = icmp eq ptr %213, null
  br i1 %tobool.not.i236, label %if.end23.dma_set_max_seg_size.exit_crit_edge, label %if.then.i237

if.end23.dma_set_max_seg_size.exit_crit_edge:     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #18
  br label %dma_set_max_seg_size.exit

if.then.i237:                                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #18
  %214 = ptrtoint ptr %213 to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 -1, ptr %213, align 4
  br label %dma_set_max_seg_size.exit

dma_set_max_seg_size.exit:                        ; preds = %if.then.i237, %if.end23.dma_set_max_seg_size.exit_crit_edge
  %215 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %dev1.i, align 8
  %dma_parms.i238 = getelementptr inbounds %struct.device, ptr %216, i32 0, i32 22
  %217 = ptrtoint ptr %dma_parms.i238 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %dma_parms.i238, align 4
  %tobool.not.i239 = icmp eq ptr %218, null
  br i1 %tobool.not.i239, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %dma_set_max_seg_size.exit
  %.b1.i = load i1, ptr @dma_set_min_align_mask.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_set_min_align_mask.exit_crit_edge, label %if.then.i240, !prof !367

land.rhs.i.dma_set_min_align_mask.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %dma_set_min_align_mask.exit

if.then.i240:                                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @dma_set_min_align_mask.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.84, i32 noundef 535, i32 noundef 9, ptr noundef null) #16
  br label %dma_set_min_align_mask.exit

if.end39.i:                                       ; preds = %dma_set_max_seg_size.exit
  call void @__sanitizer_cov_trace_pc() #18
  %min_align_mask41.i = getelementptr inbounds %struct.device_dma_parameters, ptr %218, i32 0, i32 1
  %219 = ptrtoint ptr %min_align_mask41.i to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 4095, ptr %min_align_mask41.i, align 4
  br label %dma_set_min_align_mask.exit

dma_set_min_align_mask.exit:                      ; preds = %if.end39.i, %if.then.i240, %land.rhs.i.dma_set_min_align_mask.exit_crit_edge
  call void @mutex_unlock(ptr noundef %shutdown_lock) #16
  %call36 = call zeroext i1 @nvme_change_ctrl_state(ptr noundef %ctrl, i32 noundef 3) #16
  br i1 %call36, label %if.end43, label %do.end40

do.end40:                                         ; preds = %dma_set_min_align_mask.exit
  call void @__sanitizer_cov_trace_pc() #18
  %device42 = getelementptr i8, ptr %work, i32 -168
  %220 = ptrtoint ptr %device42 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %device42, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %221, ptr noundef nonnull @.str.20) #21
  br label %do.end140

if.end43:                                         ; preds = %dma_set_min_align_mask.exit
  %max_integrity_segments = getelementptr i8, ptr %work, i32 200
  %222 = ptrtoint ptr %max_integrity_segments to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 1, ptr %max_integrity_segments, align 8
  %call46 = call i32 @nvme_init_ctrl_finish(ptr noundef %ctrl) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end49, label %if.end43.do.end140_crit_edge

if.end43.do.end140_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end140

if.end49:                                         ; preds = %if.end43
  %oacs = getelementptr i8, ptr %work, i32 228
  %223 = ptrtoint ptr %oacs to i32
  call void @__asan_load2_noabort(i32 %223)
  %224 = load i16, ptr %oacs, align 4
  %225 = and i16 %224, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %225)
  %tobool52.not = icmp eq i16 %225, 0
  %opal_dev70 = getelementptr i8, ptr %work, i32 152
  %226 = ptrtoint ptr %opal_dev70 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %opal_dev70, align 8
  br i1 %tobool52.not, label %if.else68, label %if.then53

if.then53:                                        ; preds = %if.end49
  %tobool55.not = icmp eq ptr %227, null
  br i1 %tobool55.not, label %if.then56, label %if.else

if.then56:                                        ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #18
  %call58 = call ptr @init_opal_dev(ptr noundef %ctrl, ptr noundef nonnull @nvme_sec_submit) #16
  %228 = ptrtoint ptr %opal_dev70 to i32
  call void @__asan_store4_noabort(i32 %228)
  store ptr %call58, ptr %opal_dev70, align 8
  br label %if.end73

if.else:                                          ; preds = %if.then53
  br i1 %tobool.not, label %if.else.if.end73_crit_edge, label %if.then62

if.else.if.end73_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end73

if.then62:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %call65 = call zeroext i1 @opal_unlock_from_suspend(ptr noundef nonnull %227) #16
  br label %if.end73

if.else68:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #18
  call void @free_opal_dev(ptr noundef %227) #16
  %229 = ptrtoint ptr %opal_dev70 to i32
  call void @__asan_store4_noabort(i32 %229)
  store ptr null, ptr %opal_dev70, align 8
  br label %if.end73

if.end73:                                         ; preds = %if.else68, %if.then62, %if.else.if.end73_crit_edge, %if.then56
  %230 = ptrtoint ptr %oacs to i32
  call void @__asan_load2_noabort(i32 %230)
  %231 = load i16, ptr %oacs, align 4
  %232 = and i16 %231, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %232)
  %tobool78.not = icmp eq i16 %232, 0
  br i1 %tobool78.not, label %if.end73.if.end88_crit_edge, label %if.then79

if.end73.if.end88_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end88

if.then79:                                        ; preds = %if.end73
  %nr_allocated_queues.i.i = getelementptr i8, ptr %work, i32 2232
  %233 = ptrtoint ptr %nr_allocated_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %nr_allocated_queues.i.i, align 8
  %mul.i.i = shl i32 %234, 3
  %235 = ptrtoint ptr %db_stride.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %db_stride.i, align 4
  %mul1.i.i242 = mul i32 %mul.i.i, %236
  %dbbuf_dbs.i = getelementptr i8, ptr %work, i32 2188
  %237 = ptrtoint ptr %dbbuf_dbs.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %dbbuf_dbs.i, align 4
  %tobool.not.i243 = icmp eq ptr %238, null
  br i1 %tobool.not.i243, label %if.end.i246, label %if.then.i244

if.then.i244:                                     ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #18
  %239 = call ptr @memset(ptr %238, i32 0, i32 %mul1.i.i242)
  %dbbuf_eis.i = getelementptr i8, ptr %work, i32 2196
  %240 = ptrtoint ptr %dbbuf_eis.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %dbbuf_eis.i, align 4
  %242 = call ptr @memset(ptr %241, i32 0, i32 %mul1.i.i242)
  br label %if.end88

if.end.i246:                                      ; preds = %if.then79
  %243 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %dev1.i, align 8
  %dbbuf_dbs_dma_addr.i = getelementptr i8, ptr %work, i32 2192
  %call.i.i245 = call ptr @dma_alloc_attrs(ptr noundef %244, i32 noundef %mul1.i.i242, ptr noundef %dbbuf_dbs_dma_addr.i, i32 noundef 3264, i32 noundef 0) #16
  %245 = ptrtoint ptr %dbbuf_dbs.i to i32
  call void @__asan_store4_noabort(i32 %245)
  store ptr %call.i.i245, ptr %dbbuf_dbs.i, align 4
  %tobool6.not.i = icmp eq ptr %call.i.i245, null
  br i1 %tobool6.not.i, label %if.end.i246.do.end85_crit_edge, label %if.end8.i

if.end.i246.do.end85_crit_edge:                   ; preds = %if.end.i246
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end85

if.end8.i:                                        ; preds = %if.end.i246
  %246 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %dev1.i, align 8
  %dbbuf_eis_dma_addr.i = getelementptr i8, ptr %work, i32 2200
  %call.i39.i = call ptr @dma_alloc_attrs(ptr noundef %247, i32 noundef %mul1.i.i242, ptr noundef %dbbuf_eis_dma_addr.i, i32 noundef 3264, i32 noundef 0) #16
  %dbbuf_eis11.i = getelementptr i8, ptr %work, i32 2196
  %248 = ptrtoint ptr %dbbuf_eis11.i to i32
  call void @__asan_store4_noabort(i32 %248)
  store ptr %call.i39.i, ptr %dbbuf_eis11.i, align 4
  %tobool13.not.i = icmp eq ptr %call.i39.i, null
  br i1 %tobool13.not.i, label %if.then14.i, label %if.end8.i.if.end88_crit_edge

if.end8.i.if.end88_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end88

if.then14.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #18
  %249 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %dev1.i, align 8
  %251 = ptrtoint ptr %dbbuf_dbs.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %dbbuf_dbs.i, align 4
  %253 = ptrtoint ptr %dbbuf_dbs_dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %dbbuf_dbs_dma_addr.i, align 8
  call void @dma_free_attrs(ptr noundef %250, i32 noundef %mul1.i.i242, ptr noundef %252, i32 noundef %254, i32 noundef 0) #16
  %255 = ptrtoint ptr %dbbuf_dbs.i to i32
  call void @__asan_store4_noabort(i32 %255)
  store ptr null, ptr %dbbuf_dbs.i, align 4
  br label %do.end85

do.end85:                                         ; preds = %if.then14.i, %if.end.i246.do.end85_crit_edge
  %256 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %dev1.i, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %257, ptr noundef nonnull @.str.23) #21
  br label %if.end88

if.end88:                                         ; preds = %do.end85, %if.end8.i.if.end88_crit_edge, %if.then.i244, %if.end73.if.end88_crit_edge
  %hmpre = getelementptr i8, ptr %work, i32 1996
  %258 = ptrtoint ptr %hmpre to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %hmpre, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %259)
  %tobool90.not = icmp eq i32 %259, 0
  br i1 %tobool90.not, label %if.end88.if.end97_crit_edge, label %if.then91

if.end88.if.end97_crit_edge:                      ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end97

if.then91:                                        ; preds = %if.end88
  %call92 = call fastcc i32 @nvme_setup_host_mem(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %cmp93 = icmp slt i32 %call92, 0
  br i1 %cmp93, label %if.then91.do.end140_crit_edge, label %if.then91.if.end97_crit_edge

if.then91.if.end97_crit_edge:                     ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end97

if.then91.do.end140_crit_edge:                    ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end140

if.end97:                                         ; preds = %if.then91.if.end97_crit_edge, %if.end88.if.end97_crit_edge
  %260 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %add.ptr, align 8
  %262 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %dev1.i, align 8
  %add.ptr.i249 = getelementptr i8, ptr %263, i32 -136
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nr_io_queues.i) #16
  %264 = load i32, ptr @write_queues, align 4
  %nr_write_queues.i = getelementptr i8, ptr %work, i32 2236
  %265 = ptrtoint ptr %nr_write_queues.i to i32
  call void @__asan_store4_noabort(i32 %265)
  store i32 %264, ptr %nr_write_queues.i, align 4
  %266 = load i32, ptr @poll_queues, align 4
  %nr_poll_queues.i = getelementptr i8, ptr %work, i32 2240
  %267 = ptrtoint ptr %nr_poll_queues.i to i32
  call void @__asan_store4_noabort(i32 %267)
  store i32 %266, ptr %nr_poll_queues.i, align 8
  %nr_allocated_queues.i = getelementptr i8, ptr %work, i32 2232
  %268 = ptrtoint ptr %nr_allocated_queues.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %nr_allocated_queues.i, align 8
  %sub.i250 = add i32 %269, -1
  %270 = ptrtoint ptr %nr_io_queues.i to i32
  call void @__asan_store4_noabort(i32 %270)
  store i32 %sub.i250, ptr %nr_io_queues.i, align 4
  %call.i252 = call i32 @nvme_set_queue_count(ptr noundef %ctrl, ptr noundef nonnull %nr_io_queues.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i252)
  %cmp.i = icmp slt i32 %call.i252, 0
  br i1 %cmp.i, label %if.end97.nvme_setup_io_queues.exit.thread_crit_edge, label %if.end.i253

if.end97.nvme_setup_io_queues.exit.thread_crit_edge: ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #18
  br label %nvme_setup_io_queues.exit.thread

if.end.i253:                                      ; preds = %if.end97
  %271 = ptrtoint ptr %nr_io_queues.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %nr_io_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %272)
  %cmp2.i = icmp eq i32 %272, 0
  br i1 %cmp2.i, label %if.end.i253.if.end101_crit_edge, label %if.end4.i

if.end.i253.if.end101_crit_edge:                  ; preds = %if.end.i253
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end101

if.end4.i:                                        ; preds = %if.end.i253
  %call.i.i254 = call i32 @mutex_trylock(ptr noundef %shutdown_lock) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i254)
  %tobool.not.i.i255 = icmp eq i32 %call.i.i254, 0
  br i1 %tobool.not.i.i255, label %if.end4.i.nvme_setup_io_queues.exit.thread_crit_edge, label %if.end.i.i257

if.end4.i.nvme_setup_io_queues.exit.thread_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %nvme_setup_io_queues.exit.thread

if.end.i.i257:                                    ; preds = %if.end4.i
  %273 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %274)
  %cmp.not.i.i256 = icmp eq i32 %274, 3
  br i1 %cmp.not.i.i256, label %if.end7.i, label %if.end.i.i257.nvme_setup_io_queues.exit.thread.sink.split_crit_edge

if.end.i.i257.nvme_setup_io_queues.exit.thread.sink.split_crit_edge: ; preds = %if.end.i.i257
  call void @__sanitizer_cov_trace_pc() #18
  br label %nvme_setup_io_queues.exit.thread.sink.split

if.end7.i:                                        ; preds = %if.end.i.i257
  %flags.i258 = getelementptr inbounds %struct.nvme_queue, ptr %261, i32 0, i32 17
  %call8.i = call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %flags.i258) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end7.i.if.end11.i_crit_edge, label %if.then10.i

if.end7.i.if.end11.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11.i

if.then10.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @pci_free_irq(ptr noundef %add.ptr.i249, i32 noundef 0, ptr noundef %261) #16
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then10.i, %if.end7.i.if.end11.i_crit_edge
  %cmb_use_sqes.i = getelementptr i8, ptr %work, i32 -1400
  %275 = ptrtoint ptr %cmb_use_sqes.i to i32
  call void @__asan_load1_noabort(i32 %275)
  %276 = load i8, ptr %cmb_use_sqes.i, align 8, !range !351
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %276)
  %tobool12.not.i = icmp eq i8 %276, 0
  br i1 %tobool12.not.i, label %if.end11.i.do.body.i274.preheader_crit_edge, label %if.then13.i

if.end11.i.do.body.i274.preheader_crit_edge:      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i274.preheader

if.then13.i:                                      ; preds = %if.end11.i
  %277 = ptrtoint ptr %nr_io_queues.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %nr_io_queues.i, align 4
  %279 = ptrtoint ptr %q_depth.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %q_depth.i, align 4
  %mul.i.i259 = shl i32 %280, 6
  %add.i.i260 = add i32 %mul.i.i259, 4095
  %div.i.i = sdiv i32 %add.i.i260, 4096
  %mul2.i.i = shl i32 %278, 12
  %mul3.i.i261 = mul i32 %mul2.i.i, %div.i.i
  %conv.i.i = zext i32 %mul3.i.i261 to i64
  %281 = ptrtoint ptr %cmb_size.i.i to i32
  call void @__asan_load8_noabort(i32 %281)
  %282 = load i64, ptr %cmb_size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %282, i64 %conv.i.i)
  %cmp.i.i263 = icmp ult i64 %282, %conv.i.i
  br i1 %cmp.i.i263, label %if.else162.i.i.i.i, label %nvme_cmb_qdepth.exit.i

if.else162.i.i.i.i:                               ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %282)
  %cmp164.i.i.i.i = icmp ult i64 %282, 4294967296
  br i1 %cmp164.i.i.i.i, label %if.then168.i.i.i.i, label %if.else174.i.i.i.i, !prof !367

if.then168.i.i.i.i:                               ; preds = %if.else162.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %conv169.i.i.i.i = trunc i64 %282 to i32
  %div172.i.i.i.i = udiv i32 %conv169.i.i.i.i, %278
  %283 = lshr i32 %div172.i.i.i.i, 6
  br label %div_u64.exit.i.i

if.else174.i.i.i.i:                               ; preds = %if.else162.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %284 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %278, i64 %282) #22, !srcloc !368
  %asmresult1.i.i.i.i.i = extractvalue { i64, i64 } %284, 1
  %extract7.i.i = lshr i64 %asmresult1.i.i.i.i.i, 6
  %extract.t8.i.i = trunc i64 %extract7.i.i to i32
  br label %div_u64.exit.i.i

div_u64.exit.i.i:                                 ; preds = %if.else174.i.i.i.i, %if.then168.i.i.i.i
  %dividend.addr.0.i.i.off6.i.i = phi i32 [ %283, %if.then168.i.i.i.i ], [ %extract.t8.i.i, %if.else174.i.i.i.i ]
  %conv7.i.i265 = and i32 %dividend.addr.0.i.i.off6.i.i, -64
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %conv7.i.i265)
  %cmp8.i.i266 = icmp slt i32 %conv7.i.i265, 64
  br i1 %cmp8.i.i266, label %div_u64.exit.i.i.if.else.i267_crit_edge, label %div_u64.exit.i.i.if.then16.i_crit_edge

div_u64.exit.i.i.if.then16.i_crit_edge:           ; preds = %div_u64.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then16.i

div_u64.exit.i.i.if.else.i267_crit_edge:          ; preds = %div_u64.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else.i267

nvme_cmb_qdepth.exit.i:                           ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %280)
  %cmp15.i = icmp sgt i32 %280, 0
  br i1 %cmp15.i, label %nvme_cmb_qdepth.exit.i.if.then16.i_crit_edge, label %nvme_cmb_qdepth.exit.i.if.else.i267_crit_edge

nvme_cmb_qdepth.exit.i.if.else.i267_crit_edge:    ; preds = %nvme_cmb_qdepth.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else.i267

nvme_cmb_qdepth.exit.i.if.then16.i_crit_edge:     ; preds = %nvme_cmb_qdepth.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then16.i

if.then16.i:                                      ; preds = %nvme_cmb_qdepth.exit.i.if.then16.i_crit_edge, %div_u64.exit.i.i.if.then16.i_crit_edge
  %q_depth.0.i190.i = phi i32 [ %280, %nvme_cmb_qdepth.exit.i.if.then16.i_crit_edge ], [ %conv7.i.i265, %div_u64.exit.i.i.if.then16.i_crit_edge ]
  %285 = ptrtoint ptr %q_depth.i to i32
  call void @__asan_store4_noabort(i32 %285)
  store i32 %q_depth.0.i190.i, ptr %q_depth.i, align 4
  br label %do.body.i274.preheader

if.else.i267:                                     ; preds = %nvme_cmb_qdepth.exit.i.if.else.i267_crit_edge, %div_u64.exit.i.i.if.else.i267_crit_edge
  %286 = ptrtoint ptr %cmb_use_sqes.i to i32
  call void @__asan_store1_noabort(i32 %286)
  store i8 0, ptr %cmb_use_sqes.i, align 8
  br label %do.body.i274.preheader

do.body.i274.preheader:                           ; preds = %if.else.i267, %if.then16.i, %if.end11.i.do.body.i274.preheader_crit_edge
  br label %do.body.i274

do.body.i274:                                     ; preds = %if.end24.i291.do.body.i274_crit_edge, %do.body.i274.preheader
  %287 = ptrtoint ptr %nr_io_queues.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %nr_io_queues.i, align 4
  %add.i135.i = shl i32 %288, 3
  %mul.i136.i = add i32 %add.i135.i, 8
  %289 = ptrtoint ptr %db_stride.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %db_stride.i, align 4
  %mul1.i.i272 = mul i32 %mul.i136.i, %290
  %add2.i.i273 = add i32 %mul1.i.i272, 4096
  %291 = ptrtoint ptr %bar_mapped_size.i.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %bar_mapped_size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %292, i32 %add2.i.i273)
  %cmp.not.i137.i = icmp ult i32 %292, %add2.i.i273
  br i1 %cmp.not.i137.i, label %if.end.i138.i, label %do.body.i274.do.end.i_crit_edge

do.body.i274.do.end.i_crit_edge:                  ; preds = %do.body.i274
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

if.end.i138.i:                                    ; preds = %do.body.i274
  %293 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %dev1.i, align 8
  %resource.i.i275 = getelementptr i8, ptr %294, i32 936
  %end.i.i276 = getelementptr i8, ptr %294, i32 940
  %295 = ptrtoint ptr %end.i.i276 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %end.i.i276, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %296)
  %cmp2.i.i277 = icmp eq i32 %296, 0
  br i1 %cmp2.i.i277, label %if.end.i138.i.cond.end.i.i281_crit_edge, label %cond.false.i.i279

if.end.i138.i.cond.end.i.i281_crit_edge:          ; preds = %if.end.i138.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end.i.i281

cond.false.i.i279:                                ; preds = %if.end.i138.i
  call void @__sanitizer_cov_trace_pc() #18
  %297 = ptrtoint ptr %resource.i.i275 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %resource.i.i275, align 8
  %sub.i.i278 = add i32 %296, 1
  %add.i139.i = sub i32 %sub.i.i278, %298
  br label %cond.end.i.i281

cond.end.i.i281:                                  ; preds = %cond.false.i.i279, %if.end.i138.i.cond.end.i.i281_crit_edge
  %cond.i.i280 = phi i32 [ %add.i139.i, %cond.false.i.i279 ], [ 0, %if.end.i138.i.cond.end.i.i281_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i.i280, i32 %add2.i.i273)
  %cmp8.i140.i = icmp ult i32 %cond.i.i280, %add2.i.i273
  br i1 %cmp8.i140.i, label %cond.end.i.i281.if.end24.i291_crit_edge, label %if.end10.i.i282

cond.end.i.i281.if.end24.i291_crit_edge:          ; preds = %cond.end.i.i281
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end24.i291

if.end10.i.i282:                                  ; preds = %cond.end.i.i281
  %299 = ptrtoint ptr %bar.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %bar.i, align 8
  %tobool.not.i141.i = icmp eq ptr %300, null
  br i1 %tobool.not.i141.i, label %if.end10.i.i282.if.end13.i.i285_crit_edge, label %if.then11.i.i283

if.end10.i.i282.if.end13.i.i285_crit_edge:        ; preds = %if.end10.i.i282
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13.i.i285

if.then11.i.i283:                                 ; preds = %if.end10.i.i282
  call void @__sanitizer_cov_trace_pc() #18
  call void @iounmap(ptr noundef nonnull %300) #16
  br label %if.end13.i.i285

if.end13.i.i285:                                  ; preds = %if.then11.i.i283, %if.end10.i.i282.if.end13.i.i285_crit_edge
  %301 = ptrtoint ptr %resource.i.i275 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %resource.i.i275, align 8
  %call.i142.i = call ptr @ioremap(i32 noundef %302, i32 noundef %add2.i.i273) #16
  %303 = ptrtoint ptr %bar.i to i32
  call void @__asan_store4_noabort(i32 %303)
  store ptr %call.i142.i, ptr %bar.i, align 8
  %tobool19.not.i.i284 = icmp eq ptr %call.i142.i, null
  br i1 %tobool19.not.i.i284, label %if.then20.i.i286, label %if.end22.i.i289

if.then20.i.i286:                                 ; preds = %if.end13.i.i285
  call void @__sanitizer_cov_trace_pc() #18
  %304 = ptrtoint ptr %bar_mapped_size.i.i to i32
  call void @__asan_store4_noabort(i32 %304)
  store i32 0, ptr %bar_mapped_size.i.i, align 4
  br label %if.end24.i291

if.end22.i.i289:                                  ; preds = %if.end13.i.i285
  call void @__sanitizer_cov_trace_pc() #18
  %305 = ptrtoint ptr %bar_mapped_size.i.i to i32
  call void @__asan_store4_noabort(i32 %305)
  store i32 %add2.i.i273, ptr %bar_mapped_size.i.i, align 4
  %add.ptr25.i.i287 = getelementptr i8, ptr %call.i142.i, i32 4096
  %306 = ptrtoint ptr %dbs.i to i32
  call void @__asan_store4_noabort(i32 %306)
  store ptr %add.ptr25.i.i287, ptr %dbs.i, align 4
  br label %do.end.i

if.end24.i291:                                    ; preds = %if.then20.i.i286, %cond.end.i.i281.if.end24.i291_crit_edge
  %307 = ptrtoint ptr %nr_io_queues.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %nr_io_queues.i, align 4
  %dec.i290 = add i32 %308, -1
  store i32 %dec.i290, ptr %nr_io_queues.i, align 4
  %tobool25.not.i = icmp eq i32 %dec.i290, 0
  br i1 %tobool25.not.i, label %if.end24.i291.nvme_setup_io_queues.exit.thread.sink.split_crit_edge, label %if.end24.i291.do.body.i274_crit_edge

if.end24.i291.do.body.i274_crit_edge:             ; preds = %if.end24.i291
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i274

if.end24.i291.nvme_setup_io_queues.exit.thread.sink.split_crit_edge: ; preds = %if.end24.i291
  call void @__sanitizer_cov_trace_pc() #18
  br label %nvme_setup_io_queues.exit.thread.sink.split

do.end.i:                                         ; preds = %if.end22.i.i289, %do.body.i274.do.end.i_crit_edge
  %309 = ptrtoint ptr %dbs.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %dbs.i, align 4
  %q_db.i = getelementptr inbounds %struct.nvme_queue, ptr %261, i32 0, i32 8
  %311 = ptrtoint ptr %q_db.i to i32
  call void @__asan_store4_noabort(i32 %311)
  store ptr %310, ptr %q_db.i, align 8
  %post_vectors.i.i = getelementptr inbounds %struct.irq_affinity, ptr %affd.i.i, i32 0, i32 1
  %calc_sets.i.i = getelementptr inbounds %struct.irq_affinity, ptr %affd.i.i, i32 0, i32 4
  %priv.i.i = getelementptr inbounds %struct.irq_affinity, ptr %affd.i.i, i32 0, i32 5
  %io_queues.i.i = getelementptr i8, ptr %work, i32 -1588
  %arrayidx.i.i293 = getelementptr i8, ptr %work, i32 -1580
  %arrayidx6.i.i = getelementptr i8, ptr %work, i32 -1584
  %num_vecs.i = getelementptr i8, ptr %work, i32 -1576
  %max_qid.i = getelementptr i8, ptr %work, i32 -1592
  %cq_vector4.i.i = getelementptr inbounds %struct.nvme_queue, ptr %261, i32 0, i32 10
  %qid6.i.i294 = getelementptr inbounds %struct.nvme_queue, ptr %261, i32 0, i32 14
  %queue_count.i.i = getelementptr i8, ptr %work, i32 180
  %online_queues.i.i295 = getelementptr i8, ptr %work, i32 -1596
  %prp1.i.i.i.i = getelementptr inbounds %struct.nvme_create_cq, ptr %c.i.i.i.i, i32 0, i32 4
  %cqid.i.i.i.i = getelementptr inbounds %struct.nvme_create_cq, ptr %c.i.i.i.i, i32 0, i32 6
  %qsize.i.i.i.i = getelementptr inbounds %struct.nvme_create_cq, ptr %c.i.i.i.i, i32 0, i32 7
  %cq_flags.i.i.i.i = getelementptr inbounds %struct.nvme_create_cq, ptr %c.i.i.i.i, i32 0, i32 8
  %irq_vector.i.i.i.i = getelementptr inbounds %struct.nvme_create_cq, ptr %c.i.i.i.i, i32 0, i32 9
  %prp1.i73.i.i.i = getelementptr inbounds %struct.nvme_create_sq, ptr %c.i69.i.i.i, i32 0, i32 4
  %sqid.i.i.i.i = getelementptr inbounds %struct.nvme_create_sq, ptr %c.i69.i.i.i, i32 0, i32 6
  %qsize.i76.i.i.i = getelementptr inbounds %struct.nvme_create_sq, ptr %c.i69.i.i.i, i32 0, i32 7
  %sq_flags.i.i.i.i = getelementptr inbounds %struct.nvme_create_sq, ptr %c.i69.i.i.i, i32 0, i32 8
  %cqid.i77.i.i.i = getelementptr inbounds %struct.nvme_create_sq, ptr %c.i69.i.i.i, i32 0, i32 9
  %qid.i.i.i.i.i = getelementptr inbounds %struct.nvme_delete_queue, ptr %c.i.i.i.i.i, i32 0, i32 4
  %qid.i.i84.i.i.i = getelementptr inbounds %struct.nvme_delete_queue, ptr %c.i.i83.i.i.i, i32 0, i32 4
  br label %retry.i

retry.i:                                          ; preds = %retry.i.backedge, %do.end.i
  %call29.i = call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %flags.i258) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool30.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool30.not.i, label %retry.i.if.end32.i_crit_edge, label %if.then31.i

retry.i.if.end32.i_crit_edge:                     ; preds = %retry.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end32.i

if.then31.i:                                      ; preds = %retry.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @pci_free_irq(ptr noundef %add.ptr.i249, i32 noundef 0, ptr noundef %261) #16
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then31.i, %retry.i.if.end32.i_crit_edge
  call void @pci_free_irq_vectors(ptr noundef %add.ptr.i249) #16
  %312 = ptrtoint ptr %nr_io_queues.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %nr_io_queues.i, align 4
  %314 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %dev1.i, align 8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %affd.i.i) #16
  %316 = ptrtoint ptr %affd.i.i to i32
  call void @__asan_store4_noabort(i32 %316)
  store i32 1, ptr %affd.i.i, align 4
  %317 = call ptr @memset(ptr %post_vectors.i.i, i32 0, i32 24)
  %318 = ptrtoint ptr %calc_sets.i.i to i32
  call void @__asan_store4_noabort(i32 %318)
  store ptr @nvme_calc_irq_sets, ptr %calc_sets.i.i, align 4
  %319 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_store4_noabort(i32 %319)
  store ptr %add.ptr, ptr %priv.i.i, align 4
  %320 = ptrtoint ptr %nr_poll_queues.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %nr_poll_queues.i, align 8
  %sub.i145.i = add i32 %313, -1
  %322 = call i32 @llvm.umin.i32(i32 %321, i32 %sub.i145.i) #16
  %323 = ptrtoint ptr %arrayidx.i.i293 to i32
  call void @__asan_store4_noabort(i32 %323)
  store i32 %322, ptr %arrayidx.i.i293, align 4
  %324 = ptrtoint ptr %io_queues.i.i to i32
  call void @__asan_store4_noabort(i32 %324)
  store i32 1, ptr %io_queues.i.i, align 4
  %325 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_store4_noabort(i32 %325)
  store i32 0, ptr %arrayidx6.i.i, align 4
  %326 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %quirks.i, align 8
  %and.i.i = and i32 %327, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i146.i = icmp eq i32 %and.i.i, 0
  %sub7.i.i = add i32 %313, 1
  %add.i147.i = sub i32 %sub7.i.i, %322
  %irq_queues.0.i.i = select i1 %tobool.not.i146.i, i32 %add.i147.i, i32 1
  %add.ptr.i.i296 = getelementptr i8, ptr %315, i32 -136
  %call.i148.i = call i32 @pci_alloc_irq_vectors_affinity(ptr noundef %add.ptr.i.i296, i32 noundef 1, i32 noundef %irq_queues.0.i.i, i32 noundef 15, ptr noundef nonnull %affd.i.i) #16
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %affd.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i148.i)
  %cmp34.i = icmp slt i32 %call.i148.i, 1
  br i1 %cmp34.i, label %if.end32.i.nvme_setup_io_queues.exit.thread.sink.split_crit_edge, label %if.end36.i

if.end32.i.nvme_setup_io_queues.exit.thread.sink.split_crit_edge: ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %nvme_setup_io_queues.exit.thread.sink.split

if.end36.i:                                       ; preds = %if.end32.i
  %328 = ptrtoint ptr %num_vecs.i to i32
  call void @__asan_store4_noabort(i32 %328)
  store i32 %call.i148.i, ptr %num_vecs.i, align 8
  %sub37.i = add nsw i32 %call.i148.i, -1
  %329 = call i32 @llvm.umax.i32(i32 %sub37.i, i32 1) #16
  %330 = ptrtoint ptr %arrayidx.i.i293 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %arrayidx.i.i293, align 4
  %add.i = add i32 %331, %329
  %332 = ptrtoint ptr %max_qid.i to i32
  call void @__asan_store4_noabort(i32 %332)
  store i32 %add.i, ptr %max_qid.i, align 8
  %333 = ptrtoint ptr %261 to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %261, align 128
  %dev1.i149.i = getelementptr inbounds %struct.nvme_dev, ptr %334, i32 0, i32 4
  %335 = ptrtoint ptr %dev1.i149.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %dev1.i149.i, align 8
  %add.ptr.i150.i = getelementptr i8, ptr %336, i32 -136
  %instance.i.i297 = getelementptr inbounds %struct.nvme_dev, ptr %334, i32 0, i32 23, i32 10
  %337 = ptrtoint ptr %instance.i.i297 to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load i32, ptr %instance.i.i297, align 8
  %339 = load i32, ptr @use_threaded_interrupts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %339)
  %tobool.not.i151.i = icmp eq i32 %339, 0
  %340 = ptrtoint ptr %cq_vector4.i.i to i32
  call void @__asan_load2_noabort(i32 %340)
  %341 = load i16, ptr %cq_vector4.i.i, align 64
  %conv5.i.i298 = zext i16 %341 to i32
  %342 = ptrtoint ptr %qid6.i.i294 to i32
  call void @__asan_load2_noabort(i32 %342)
  %343 = load i16, ptr %qid6.i.i294, align 8
  %conv7.i152.i = zext i16 %343 to i32
  br i1 %tobool.not.i151.i, label %if.else.i.i300, label %if.then.i154.i

if.then.i154.i:                                   ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i153.i = call i32 (ptr, i32, ptr, ptr, ptr, ptr, ...) @pci_request_irq(ptr noundef %add.ptr.i150.i, i32 noundef %conv5.i.i298, ptr noundef nonnull @nvme_irq_check, ptr noundef nonnull @nvme_irq, ptr noundef %261, ptr noundef nonnull @.str.61, i32 noundef %338, i32 noundef %conv7.i152.i) #16
  br label %queue_request_irq.exit.i301

if.else.i.i300:                                   ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #18
  %call8.i.i299 = call i32 (ptr, i32, ptr, ptr, ptr, ptr, ...) @pci_request_irq(ptr noundef %add.ptr.i150.i, i32 noundef %conv5.i.i298, ptr noundef nonnull @nvme_irq, ptr noundef null, ptr noundef %261, ptr noundef nonnull @.str.61, i32 noundef %338, i32 noundef %conv7.i152.i) #16
  br label %queue_request_irq.exit.i301

queue_request_irq.exit.i301:                      ; preds = %if.else.i.i300, %if.then.i154.i
  %retval.0.i155.i = phi i32 [ %call.i153.i, %if.then.i154.i ], [ %call8.i.i299, %if.else.i.i300 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i155.i)
  %tobool42.not.i = icmp eq i32 %retval.0.i155.i, 0
  br i1 %tobool42.not.i, label %if.end44.i, label %queue_request_irq.exit.i301.nvme_setup_io_queues.exit.thread.sink.split_crit_edge

queue_request_irq.exit.i301.nvme_setup_io_queues.exit.thread.sink.split_crit_edge: ; preds = %queue_request_irq.exit.i301
  call void @__sanitizer_cov_trace_pc() #18
  br label %nvme_setup_io_queues.exit.thread.sink.split

if.end44.i:                                       ; preds = %queue_request_irq.exit.i301
  call void @_set_bit(i32 noundef 0, ptr noundef %flags.i258) #16
  call void @mutex_unlock(ptr noundef %shutdown_lock) #16
  %344 = ptrtoint ptr %queue_count.i.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load i32, ptr %queue_count.i.i, align 4
  %346 = ptrtoint ptr %max_qid.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %max_qid.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %345, i32 %347)
  %cmp.not88.i.i = icmp ugt i32 %345, %347
  br i1 %cmp.not88.i.i, label %if.end44.i.for.end.i.i_crit_edge, label %if.end44.i.for.body.i.i_crit_edge

if.end44.i.for.body.i.i_crit_edge:                ; preds = %if.end44.i
  br label %for.body.i.i

if.end44.i.for.end.i.i_crit_edge:                 ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i302 = add i32 %i.089.i.i, 1
  %348 = ptrtoint ptr %max_qid.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %max_qid.i, align 8
  %cmp.not.i156.i = icmp ugt i32 %inc.i.i302, %349
  br i1 %cmp.not.i156.i, label %for.cond.i.i.for.end.i.i_crit_edge, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i

for.cond.i.i.for.end.i.i_crit_edge:               ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %if.end44.i.for.body.i.i_crit_edge
  %i.089.i.i = phi i32 [ %inc.i.i302, %for.cond.i.i.for.body.i.i_crit_edge ], [ %345, %if.end44.i.for.body.i.i_crit_edge ]
  %350 = ptrtoint ptr %q_depth.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load i32, ptr %q_depth.i, align 4
  %call.i157.i = call fastcc i32 @nvme_alloc_queue(ptr noundef %add.ptr, i32 noundef %i.089.i.i, i32 noundef %351) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i157.i)
  %tobool.not.i158.i = icmp eq i32 %call.i157.i, 0
  br i1 %tobool.not.i158.i, label %for.cond.i.i, label %for.body.i.i.for.end.i.i_crit_edge

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.body.i.i.for.end.i.i_crit_edge, %for.cond.i.i.for.end.i.i_crit_edge, %if.end44.i.for.end.i.i_crit_edge
  %ret.0.i.i = phi i32 [ 0, %if.end44.i.for.end.i.i_crit_edge ], [ -12, %for.body.i.i.for.end.i.i_crit_edge ], [ 0, %for.cond.i.i.for.end.i.i_crit_edge ]
  %352 = ptrtoint ptr %max_qid.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load i32, ptr %max_qid.i, align 8
  %354 = ptrtoint ptr %queue_count.i.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load i32, ptr %queue_count.i.i, align 4
  %sub.i159.i = add i32 %355, -1
  %356 = call i32 @llvm.umin.i32(i32 %353, i32 %sub.i159.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %356)
  %cmp5.not.i.i = icmp eq i32 %356, 1
  br i1 %cmp5.not.i.i, label %for.end.i.i.if.end12.i.i_crit_edge, label %land.lhs.true.i.i303

for.end.i.i.if.end12.i.i_crit_edge:               ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12.i.i

land.lhs.true.i.i303:                             ; preds = %for.end.i.i
  %357 = ptrtoint ptr %arrayidx.i.i293 to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load i32, ptr %arrayidx.i.i293, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %358)
  %tobool6.not.i.i = icmp eq i32 %358, 0
  br i1 %tobool6.not.i.i, label %land.lhs.true.i.i303.if.end12.i.i_crit_edge, label %if.then7.i.i

land.lhs.true.i.i303.if.end12.i.i_crit_edge:      ; preds = %land.lhs.true.i.i303
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12.i.i

if.then7.i.i:                                     ; preds = %land.lhs.true.i.i303
  call void @__sanitizer_cov_trace_pc() #18
  %359 = ptrtoint ptr %io_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load i32, ptr %io_queues.i.i, align 4
  %361 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load i32, ptr %arrayidx6.i.i, align 4
  %add.i162.i = add i32 %362, %360
  br label %if.end12.i.i

if.end12.i.i:                                     ; preds = %if.then7.i.i, %land.lhs.true.i.i303.if.end12.i.i_crit_edge, %for.end.i.i.if.end12.i.i_crit_edge
  %rw_queues.0.i.i = phi i32 [ %add.i162.i, %if.then7.i.i ], [ %356, %land.lhs.true.i.i303.if.end12.i.i_crit_edge ], [ 1, %for.end.i.i.if.end12.i.i_crit_edge ]
  %363 = ptrtoint ptr %online_queues.i.i295 to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load i32, ptr %online_queues.i.i295, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %364, i32 %356)
  %cmp14.not91.i.i = icmp ugt i32 %364, %356
  br i1 %cmp14.not91.i.i, label %if.end12.i.i.for.end25.i.i_crit_edge, label %if.end12.i.i.for.body15.i.i_crit_edge

if.end12.i.i.for.body15.i.i_crit_edge:            ; preds = %if.end12.i.i
  br label %for.body15.i.i

if.end12.i.i.for.end25.i.i_crit_edge:             ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end25.i.i

for.body15.i.i:                                   ; preds = %nvme_create_queue.exit.i.i.for.body15.i.i_crit_edge, %if.end12.i.i.for.body15.i.i_crit_edge
  %i.192.i.i = phi i32 [ %inc24.i.i, %nvme_create_queue.exit.i.i.for.body15.i.i_crit_edge ], [ %364, %if.end12.i.i.for.body15.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.192.i.i, i32 %rw_queues.0.i.i)
  %cmp16.i.i = icmp ugt i32 %i.192.i.i, %rw_queues.0.i.i
  %365 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %add.ptr, align 8
  %arrayidx17.i.i = getelementptr %struct.nvme_queue, ptr %366, i32 %i.192.i.i
  %367 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %arrayidx17.i.i, align 128
  %flags.i.i.i = getelementptr %struct.nvme_queue, ptr %366, i32 %i.192.i.i, i32 17
  call void @_clear_bit(i32 noundef 2, ptr noundef %flags.i.i.i) #16
  br i1 %cmp16.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.body15.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %num_vecs.i.i.i = getelementptr inbounds %struct.nvme_dev, ptr %368, i32 0, i32 10
  %369 = ptrtoint ptr %num_vecs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load i32, ptr %num_vecs.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %370)
  %cmp.i.i.i = icmp eq i32 %370, 1
  %phi.cast.i.i.i = trunc i32 %i.192.i.i to i16
  %spec.select.i.i.i = select i1 %cmp.i.i.i, i16 0, i16 %phi.cast.i.i.i
  br label %if.end.i.i.i

if.else.i.i.i:                                    ; preds = %for.body15.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @_set_bit(i32 noundef 3, ptr noundef %flags.i.i.i) #16
  %.pre.i.i.i = trunc i32 %i.192.i.i to i16
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.else.i.i.i, %if.then.i.i.i
  %conv3.pre-phi.i.i.i = phi i16 [ %.pre.i.i.i, %if.else.i.i.i ], [ %phi.cast.i.i.i, %if.then.i.i.i ]
  %vector.0.i.i.i = phi i16 [ 0, %if.else.i.i.i ], [ %spec.select.i.i.i, %if.then.i.i.i ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %c.i.i.i.i) #16
  %371 = call ptr @memset(ptr %c.i.i.i.i, i32 0, i32 64)
  %372 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load volatile i32, ptr %flags.i.i.i, align 4
  %374 = and i32 %373, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %374)
  %tobool.not.i.i.i163.i = icmp eq i32 %374, 0
  %spec.select.i.i.i.i = select i1 %tobool.not.i.i.i163.i, i16 768, i16 256
  %375 = ptrtoint ptr %c.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %375)
  store i8 5, ptr %c.i.i.i.i, align 8
  %cq_dma_addr.i.i.i.i = getelementptr %struct.nvme_queue, ptr %366, i32 %i.192.i.i, i32 7
  %376 = ptrtoint ptr %cq_dma_addr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load i32, ptr %cq_dma_addr.i.i.i.i, align 4
  %conv.i.i.i.i = zext i32 %377 to i64
  %378 = call i64 @llvm.bswap.i64(i64 %conv.i.i.i.i) #16
  %379 = ptrtoint ptr %prp1.i.i.i.i to i32
  call void @__asan_store8_noabort(i32 %379)
  store i64 %378, ptr %prp1.i.i.i.i, align 8
  %380 = call i16 @llvm.bswap.i16(i16 %conv3.pre-phi.i.i.i) #16
  %381 = ptrtoint ptr %cqid.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %381)
  store i16 %380, ptr %cqid.i.i.i.i, align 8
  %q_depth.i.i.i.i = getelementptr %struct.nvme_queue, ptr %366, i32 %i.192.i.i, i32 9
  %382 = ptrtoint ptr %q_depth.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load i32, ptr %q_depth.i.i.i.i, align 4
  %384 = trunc i32 %383 to i16
  %conv2.i.i.i.i = add i16 %384, -1
  %385 = call i16 @llvm.bswap.i16(i16 %conv2.i.i.i.i) #16
  %386 = ptrtoint ptr %qsize.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %386)
  store i16 %385, ptr %qsize.i.i.i.i, align 2
  %387 = ptrtoint ptr %cq_flags.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %387)
  store i16 %spec.select.i.i.i.i, ptr %cq_flags.i.i.i.i, align 4
  %388 = call i16 @llvm.bswap.i16(i16 %vector.0.i.i.i) #16
  %389 = ptrtoint ptr %irq_vector.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %389)
  store i16 %388, ptr %irq_vector.i.i.i.i, align 2
  %admin_q.i.i.i.i = getelementptr inbounds %struct.nvme_dev, ptr %368, i32 0, i32 23, i32 6
  %390 = ptrtoint ptr %admin_q.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %admin_q.i.i.i.i, align 8
  %call4.i.i.i.i = call i32 @nvme_submit_sync_cmd(ptr noundef %391, ptr noundef nonnull %c.i.i.i.i, ptr noundef null, i32 noundef 0) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %c.i.i.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call4.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end6.i.i.i, label %if.end.i.i.i.for.end25.i.i_crit_edge

if.end.i.i.i.for.end25.i.i_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end25.i.i

if.end6.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %c.i69.i.i.i) #16
  %392 = call ptr @memset(ptr %c.i69.i.i.i, i32 0, i32 64)
  %quirks.i.i.i.i = getelementptr inbounds %struct.nvme_dev, ptr %368, i32 0, i32 23, i32 61
  %393 = ptrtoint ptr %quirks.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load i32, ptr %quirks.i.i.i.i, align 8
  %and.i.i.i.i = and i32 %394, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i70.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  %spec.select.i71.i.i.i = select i1 %tobool.not.i70.i.i.i, i16 256, i16 1280
  %395 = ptrtoint ptr %c.i69.i.i.i to i32
  call void @__asan_store1_noabort(i32 %395)
  store i8 1, ptr %c.i69.i.i.i, align 8
  %sq_dma_addr.i.i.i.i = getelementptr %struct.nvme_queue, ptr %366, i32 %i.192.i.i, i32 6
  %396 = ptrtoint ptr %sq_dma_addr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load i32, ptr %sq_dma_addr.i.i.i.i, align 16
  %conv.i72.i.i.i = zext i32 %397 to i64
  %398 = call i64 @llvm.bswap.i64(i64 %conv.i72.i.i.i) #16
  %399 = ptrtoint ptr %prp1.i73.i.i.i to i32
  call void @__asan_store8_noabort(i32 %399)
  store i64 %398, ptr %prp1.i73.i.i.i, align 8
  %400 = ptrtoint ptr %sqid.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %400)
  store i16 %380, ptr %sqid.i.i.i.i, align 8
  %401 = ptrtoint ptr %q_depth.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load i32, ptr %q_depth.i.i.i.i, align 4
  %403 = trunc i32 %402 to i16
  %conv2.i75.i.i.i = add i16 %403, -1
  %404 = call i16 @llvm.bswap.i16(i16 %conv2.i75.i.i.i) #16
  %405 = ptrtoint ptr %qsize.i76.i.i.i to i32
  call void @__asan_store2_noabort(i32 %405)
  store i16 %404, ptr %qsize.i76.i.i.i, align 2
  %406 = ptrtoint ptr %sq_flags.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %406)
  store i16 %spec.select.i71.i.i.i, ptr %sq_flags.i.i.i.i, align 4
  %407 = ptrtoint ptr %cqid.i77.i.i.i to i32
  call void @__asan_store2_noabort(i32 %407)
  store i16 %380, ptr %cqid.i77.i.i.i, align 2
  %408 = ptrtoint ptr %admin_q.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %admin_q.i.i.i.i, align 8
  %call.i.i.i.i = call i32 @nvme_submit_sync_cmd(ptr noundef %409, ptr noundef nonnull %c.i69.i.i.i, ptr noundef null, i32 noundef 0) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %c.i69.i.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp9.i.i.i = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp9.i.i.i, label %if.end6.i.i.i.nvme_setup_io_queues.exit.thread_crit_edge, label %if.end12.i.i.i

if.end6.i.i.i.nvme_setup_io_queues.exit.thread_crit_edge: ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %nvme_setup_io_queues.exit.thread

if.end12.i.i.i:                                   ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool13.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool13.not.i.i.i, label %if.end15.i.i.i, label %if.end12.i.i.i.release_cq.i.i.i_crit_edge

if.end12.i.i.i.release_cq.i.i.i_crit_edge:        ; preds = %if.end12.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %release_cq.i.i.i

if.end15.i.i.i:                                   ; preds = %if.end12.i.i.i
  %cq_vector.i.i.i = getelementptr %struct.nvme_queue, ptr %366, i32 %i.192.i.i, i32 10
  %410 = ptrtoint ptr %cq_vector.i.i.i to i32
  call void @__asan_store2_noabort(i32 %410)
  store i16 %vector.0.i.i.i, ptr %cq_vector.i.i.i, align 64
  %shutdown_lock.i.i.i.i = getelementptr inbounds %struct.nvme_dev, ptr %368, i32 0, i32 17
  %call.i79.i.i.i = call i32 @mutex_trylock(ptr noundef %shutdown_lock.i.i.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i79.i.i.i)
  %tobool.not.i80.i.i.i = icmp eq i32 %call.i79.i.i.i, 0
  br i1 %tobool.not.i80.i.i.i, label %if.end15.i.i.i.nvme_setup_io_queues.exit.thread_crit_edge, label %if.end.i.i.i.i

if.end15.i.i.i.nvme_setup_io_queues.exit.thread_crit_edge: ; preds = %if.end15.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %nvme_setup_io_queues.exit.thread

if.end.i.i.i.i:                                   ; preds = %if.end15.i.i.i
  %state.i.i.i.i = getelementptr inbounds %struct.nvme_dev, ptr %368, i32 0, i32 23, i32 1
  %411 = ptrtoint ptr %state.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load i32, ptr %state.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %412)
  %cmp.not.i.i.i.i = icmp eq i32 %412, 3
  br i1 %cmp.not.i.i.i.i, label %if.end19.i.i.i, label %if.end.i.i.i.i.nvme_setup_io_queues.exit.thread.sink.split_crit_edge

if.end.i.i.i.i.nvme_setup_io_queues.exit.thread.sink.split_crit_edge: ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %nvme_setup_io_queues.exit.thread.sink.split

if.end19.i.i.i:                                   ; preds = %if.end.i.i.i.i
  %413 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load ptr, ptr %arrayidx17.i.i, align 128
  %sq_tail.i.i.i.i = getelementptr %struct.nvme_queue, ptr %366, i32 %i.192.i.i, i32 11
  %415 = ptrtoint ptr %sq_tail.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %415)
  store i16 0, ptr %sq_tail.i.i.i.i, align 2
  %last_sq_tail.i.i.i.i = getelementptr %struct.nvme_queue, ptr %366, i32 %i.192.i.i, i32 12
  %416 = ptrtoint ptr %last_sq_tail.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %416)
  store i16 0, ptr %last_sq_tail.i.i.i.i, align 4
  %cq_head.i.i.i.i = getelementptr %struct.nvme_queue, ptr %366, i32 %i.192.i.i, i32 13
  %417 = ptrtoint ptr %cq_head.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %417)
  store i16 0, ptr %cq_head.i.i.i.i, align 2
  %cq_phase.i.i.i.i = getelementptr %struct.nvme_queue, ptr %366, i32 %i.192.i.i, i32 15
  %418 = ptrtoint ptr %cq_phase.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %418)
  store i8 1, ptr %cq_phase.i.i.i.i, align 2
  %dbs.i.i.i.i = getelementptr inbounds %struct.nvme_dev, ptr %414, i32 0, i32 3
  %419 = ptrtoint ptr %dbs.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load ptr, ptr %dbs.i.i.i.i, align 4
  %conv.i81.i.i.i = shl i32 %i.192.i.i, 1
  %mul.i.i.i164.i = and i32 %conv.i81.i.i.i, 131070
  %db_stride.i.i.i.i = getelementptr inbounds %struct.nvme_dev, ptr %414, i32 0, i32 13
  %421 = ptrtoint ptr %db_stride.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load i32, ptr %db_stride.i.i.i.i, align 4
  %mul2.i.i.i.i = mul i32 %422, %mul.i.i.i164.i
  %arrayidx.i.i.i.i = getelementptr i32, ptr %420, i32 %mul2.i.i.i.i
  %q_db.i.i.i.i = getelementptr %struct.nvme_queue, ptr %366, i32 %i.192.i.i, i32 8
  %423 = ptrtoint ptr %q_db.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %423)
  store ptr %arrayidx.i.i.i.i, ptr %q_db.i.i.i.i, align 8
  %cqes.i.i.i.i = getelementptr %struct.nvme_queue, ptr %366, i32 %i.192.i.i, i32 5
  %424 = ptrtoint ptr %cqes.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load ptr, ptr %cqes.i.i.i.i, align 4
  %426 = ptrtoint ptr %q_depth.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load i32, ptr %q_depth.i.i.i.i, align 4
  %mul3.i.i.i.i = shl i32 %427, 4
  %428 = call ptr @memset(ptr %425, i32 0, i32 %mul3.i.i.i.i)
  %dbbuf_dbs.i.i.i.i.i = getelementptr inbounds %struct.nvme_dev, ptr %414, i32 0, i32 27
  %429 = ptrtoint ptr %dbbuf_dbs.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load ptr, ptr %dbbuf_dbs.i.i.i.i.i, align 4
  %tobool.not.i.i.i.i.i = icmp eq ptr %430, null
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv3.pre-phi.i.i.i)
  %tobool1.not.i.i.i.i165.i = icmp eq i16 %conv3.pre-phi.i.i.i, 0
  %or.cond.i.i.i.i.i = or i1 %tobool1.not.i.i.i.i165.i, %tobool.not.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %if.end19.i.i.i.nvme_init_queue.exit.i.i.i_crit_edge, label %if.end.i.i.i.i.i

if.end19.i.i.i.nvme_init_queue.exit.i.i.i_crit_edge: ; preds = %if.end19.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %nvme_init_queue.exit.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.end19.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %431 = ptrtoint ptr %db_stride.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load i32, ptr %db_stride.i.i.i.i, align 4
  %mul1.i.i.i.i.i.i = mul i32 %432, %mul.i.i.i164.i
  %arrayidx.i.i.i.i.i = getelementptr i32, ptr %430, i32 %mul1.i.i.i.i.i.i
  %dbbuf_sq_db.i.i.i.i.i = getelementptr %struct.nvme_queue, ptr %366, i32 %i.192.i.i, i32 18
  %433 = ptrtoint ptr %dbbuf_sq_db.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %433)
  store ptr %arrayidx.i.i.i.i.i, ptr %dbbuf_sq_db.i.i.i.i.i, align 16
  %434 = ptrtoint ptr %dbbuf_dbs.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load ptr, ptr %dbbuf_dbs.i.i.i.i.i, align 4
  %436 = load i32, ptr %db_stride.i.i.i.i, align 4
  %add.i.i.i.i.i.i = or i32 %mul.i.i.i164.i, 1
  %mul1.i30.i.i.i.i.i = mul i32 %436, %add.i.i.i.i.i.i
  %arrayidx6.i.i.i.i.i = getelementptr i32, ptr %435, i32 %mul1.i30.i.i.i.i.i
  %dbbuf_cq_db.i.i.i.i.i = getelementptr %struct.nvme_queue, ptr %366, i32 %i.192.i.i, i32 19
  %437 = ptrtoint ptr %dbbuf_cq_db.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %437)
  store ptr %arrayidx6.i.i.i.i.i, ptr %dbbuf_cq_db.i.i.i.i.i, align 4
  %dbbuf_eis.i.i.i.i.i = getelementptr inbounds %struct.nvme_dev, ptr %414, i32 0, i32 29
  %438 = ptrtoint ptr %dbbuf_eis.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load ptr, ptr %dbbuf_eis.i.i.i.i.i, align 4
  %440 = load i32, ptr %db_stride.i.i.i.i, align 4
  %mul1.i32.i.i.i.i.i = mul i32 %440, %mul.i.i.i164.i
  %arrayidx9.i.i.i.i.i = getelementptr i32, ptr %439, i32 %mul1.i32.i.i.i.i.i
  %dbbuf_sq_ei.i.i.i.i.i = getelementptr %struct.nvme_queue, ptr %366, i32 %i.192.i.i, i32 20
  %441 = ptrtoint ptr %dbbuf_sq_ei.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %441)
  store ptr %arrayidx9.i.i.i.i.i, ptr %dbbuf_sq_ei.i.i.i.i.i, align 8
  %442 = load ptr, ptr %dbbuf_eis.i.i.i.i.i, align 4
  %443 = load i32, ptr %db_stride.i.i.i.i, align 4
  %mul1.i35.i.i.i.i.i = mul i32 %443, %add.i.i.i.i.i.i
  %arrayidx13.i.i.i.i.i = getelementptr i32, ptr %442, i32 %mul1.i35.i.i.i.i.i
  %dbbuf_cq_ei.i.i.i.i.i = getelementptr %struct.nvme_queue, ptr %366, i32 %i.192.i.i, i32 21
  %444 = ptrtoint ptr %dbbuf_cq_ei.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %444)
  store ptr %arrayidx13.i.i.i.i.i, ptr %dbbuf_cq_ei.i.i.i.i.i, align 4
  br label %nvme_init_queue.exit.i.i.i

nvme_init_queue.exit.i.i.i:                       ; preds = %if.end.i.i.i.i.i, %if.end19.i.i.i.nvme_init_queue.exit.i.i.i_crit_edge
  %online_queues.i.i.i.i = getelementptr inbounds %struct.nvme_dev, ptr %414, i32 0, i32 7
  %445 = ptrtoint ptr %online_queues.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load i32, ptr %online_queues.i.i.i.i, align 4
  %inc.i.i.i.i = add i32 %446, 1
  store i32 %inc.i.i.i.i, ptr %online_queues.i.i.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !366
  call void @arm_heavy_mb() #16
  br i1 %cmp16.i.i, label %nvme_init_queue.exit.i.i.i.nvme_create_queue.exit.i.i_crit_edge, label %if.then22.i.i.i

nvme_init_queue.exit.i.i.i.nvme_create_queue.exit.i.i_crit_edge: ; preds = %nvme_init_queue.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %nvme_create_queue.exit.i.i

if.then22.i.i.i:                                  ; preds = %nvme_init_queue.exit.i.i.i
  %447 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load ptr, ptr %arrayidx17.i.i, align 128
  %dev1.i.i.i = getelementptr inbounds %struct.nvme_dev, ptr %448, i32 0, i32 4
  %449 = ptrtoint ptr %dev1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load ptr, ptr %dev1.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %450, i32 -136
  %instance.i.i.i = getelementptr inbounds %struct.nvme_dev, ptr %448, i32 0, i32 23, i32 10
  %451 = ptrtoint ptr %instance.i.i.i to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load i32, ptr %instance.i.i.i, align 8
  %453 = load i32, ptr @use_threaded_interrupts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %453)
  %tobool.not.i.i.i = icmp eq i32 %453, 0
  %454 = ptrtoint ptr %cq_vector.i.i.i to i32
  call void @__asan_load2_noabort(i32 %454)
  %455 = load i16, ptr %cq_vector.i.i.i, align 64
  %conv5.i.i.i = zext i16 %455 to i32
  %qid6.i.i.i = getelementptr %struct.nvme_queue, ptr %366, i32 %i.192.i.i, i32 14
  %456 = ptrtoint ptr %qid6.i.i.i to i32
  call void @__asan_load2_noabort(i32 %456)
  %457 = load i16, ptr %qid6.i.i.i, align 8
  %conv7.i.i.i = zext i16 %457 to i32
  br i1 %tobool.not.i.i.i, label %if.else.i59.i.i, label %if.then.i58.i.i

if.then.i58.i.i:                                  ; preds = %if.then22.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i.i = call i32 (ptr, i32, ptr, ptr, ptr, ptr, ...) @pci_request_irq(ptr noundef %add.ptr.i.i.i, i32 noundef %conv5.i.i.i, ptr noundef nonnull @nvme_irq_check, ptr noundef nonnull @nvme_irq, ptr noundef %arrayidx17.i.i, ptr noundef nonnull @.str.61, i32 noundef %452, i32 noundef %conv7.i.i.i) #16
  br label %queue_request_irq.exit.i.i

if.else.i59.i.i:                                  ; preds = %if.then22.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %call8.i.i.i = call i32 (ptr, i32, ptr, ptr, ptr, ptr, ...) @pci_request_irq(ptr noundef %add.ptr.i.i.i, i32 noundef %conv5.i.i.i, ptr noundef nonnull @nvme_irq, ptr noundef null, ptr noundef %arrayidx17.i.i, ptr noundef nonnull @.str.61, i32 noundef %452, i32 noundef %conv7.i.i.i) #16
  br label %queue_request_irq.exit.i.i

queue_request_irq.exit.i.i:                       ; preds = %if.else.i59.i.i, %if.then.i58.i.i
  %retval.0.i60.i.i = phi i32 [ %call.i.i.i, %if.then.i58.i.i ], [ %call8.i.i.i, %if.else.i59.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i60.i.i)
  %cmp24.i.i.i = icmp slt i32 %retval.0.i60.i.i, 0
  br i1 %cmp24.i.i.i, label %release_sq.i.i.i, label %queue_request_irq.exit.i.i.nvme_create_queue.exit.i.i_crit_edge

queue_request_irq.exit.i.i.nvme_create_queue.exit.i.i_crit_edge: ; preds = %queue_request_irq.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %nvme_create_queue.exit.i.i

release_sq.i.i.i:                                 ; preds = %queue_request_irq.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %online_queues.i.i.i = getelementptr inbounds %struct.nvme_dev, ptr %368, i32 0, i32 7
  %458 = ptrtoint ptr %online_queues.i.i.i to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load i32, ptr %online_queues.i.i.i, align 4
  %dec.i.i.i = add i32 %459, -1
  store i32 %dec.i.i.i, ptr %online_queues.i.i.i, align 4
  call void @mutex_unlock(ptr noundef %shutdown_lock.i.i.i.i) #16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %c.i.i.i.i.i) #16
  %460 = call ptr @memset(ptr %c.i.i.i.i.i, i32 0, i32 64)
  %461 = ptrtoint ptr %qid.i.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %461)
  store i16 %380, ptr %qid.i.i.i.i.i, align 8
  %462 = ptrtoint ptr %admin_q.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load ptr, ptr %admin_q.i.i.i.i, align 8
  %call.i.i.i.i.i = call i32 @nvme_submit_sync_cmd(ptr noundef %463, ptr noundef nonnull %c.i.i.i.i.i, ptr noundef null, i32 noundef 0) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %c.i.i.i.i.i) #16
  br label %release_cq.i.i.i

release_cq.i.i.i:                                 ; preds = %release_sq.i.i.i, %if.end12.i.i.i.release_cq.i.i.i_crit_edge
  %result.1.i.i.i = phi i32 [ %retval.0.i60.i.i, %release_sq.i.i.i ], [ %call.i.i.i.i, %if.end12.i.i.i.release_cq.i.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %c.i.i83.i.i.i) #16
  %464 = call ptr @memset(ptr %c.i.i83.i.i.i, i32 0, i32 64)
  %465 = ptrtoint ptr %c.i.i83.i.i.i to i32
  call void @__asan_store1_noabort(i32 %465)
  store i8 4, ptr %c.i.i83.i.i.i, align 8
  %466 = ptrtoint ptr %qid.i.i84.i.i.i to i32
  call void @__asan_store2_noabort(i32 %466)
  store i16 %380, ptr %qid.i.i84.i.i.i, align 8
  %467 = ptrtoint ptr %admin_q.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load ptr, ptr %admin_q.i.i.i.i, align 8
  %call.i.i86.i.i.i = call i32 @nvme_submit_sync_cmd(ptr noundef %468, ptr noundef nonnull %c.i.i83.i.i.i, ptr noundef null, i32 noundef 0) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %c.i.i83.i.i.i) #16
  br label %for.end25.i.i

nvme_create_queue.exit.i.i:                       ; preds = %queue_request_irq.exit.i.i.nvme_create_queue.exit.i.i_crit_edge, %nvme_init_queue.exit.i.i.i.nvme_create_queue.exit.i.i_crit_edge
  %result.0.i.i.i = phi i32 [ 0, %nvme_init_queue.exit.i.i.i.nvme_create_queue.exit.i.i_crit_edge ], [ %retval.0.i60.i.i, %queue_request_irq.exit.i.i.nvme_create_queue.exit.i.i_crit_edge ]
  call void @_set_bit(i32 noundef 0, ptr noundef %flags.i.i.i) #16
  call void @mutex_unlock(ptr noundef %shutdown_lock.i.i.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.0.i.i.i)
  %tobool20.not.i.i = icmp ne i32 %result.0.i.i.i, 0
  %inc24.i.i = add i32 %i.192.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc24.i.i, i32 %356)
  %cmp14.not.i.i = icmp ugt i32 %inc24.i.i, %356
  %or.cond.i.i = select i1 %tobool20.not.i.i, i1 true, i1 %cmp14.not.i.i
  br i1 %or.cond.i.i, label %nvme_create_queue.exit.i.i.lor.lhs.false.i_crit_edge, label %nvme_create_queue.exit.i.i.for.body15.i.i_crit_edge

nvme_create_queue.exit.i.i.for.body15.i.i_crit_edge: ; preds = %nvme_create_queue.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body15.i.i

nvme_create_queue.exit.i.i.lor.lhs.false.i_crit_edge: ; preds = %nvme_create_queue.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false.i

for.end25.i.i:                                    ; preds = %release_cq.i.i.i, %if.end.i.i.i.for.end25.i.i_crit_edge, %if.end12.i.i.for.end25.i.i_crit_edge
  %ret.2.i.i = phi i32 [ %result.1.i.i.i, %release_cq.i.i.i ], [ %ret.0.i.i, %if.end12.i.i.for.end25.i.i_crit_edge ], [ %call4.i.i.i.i, %if.end.i.i.i.for.end25.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ret.2.i.i)
  %cmp26.i.i = icmp sgt i32 %ret.2.i.i, -1
  br i1 %cmp26.i.i, label %for.end25.i.i.lor.lhs.false.i_crit_edge, label %for.end25.i.i.nvme_setup_io_queues.exit.thread_crit_edge

for.end25.i.i.nvme_setup_io_queues.exit.thread_crit_edge: ; preds = %for.end25.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %nvme_setup_io_queues.exit.thread

for.end25.i.i.lor.lhs.false.i_crit_edge:          ; preds = %for.end25.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %for.end25.i.i.lor.lhs.false.i_crit_edge, %nvme_create_queue.exit.i.i.lor.lhs.false.i_crit_edge
  %469 = ptrtoint ptr %online_queues.i.i295 to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load i32, ptr %online_queues.i.i295, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %470)
  %cmp48.i = icmp ult i32 %470, 2
  br i1 %cmp48.i, label %lor.lhs.false.i.if.end101_crit_edge, label %if.end50.i304

lor.lhs.false.i.if.end101_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end101

if.end50.i304:                                    ; preds = %lor.lhs.false.i
  %sub52.i = add i32 %470, -1
  %471 = ptrtoint ptr %max_qid.i to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load i32, ptr %max_qid.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub52.i, i32 %472)
  %cmp54.i = icmp ult i32 %sub52.i, %472
  br i1 %cmp54.i, label %if.then55.i, label %do.end65.i

if.then55.i:                                      ; preds = %if.end50.i304
  %473 = ptrtoint ptr %nr_io_queues.i to i32
  call void @__asan_store4_noabort(i32 %473)
  store i32 %sub52.i, ptr %nr_io_queues.i, align 4
  %call.i166.i = call fastcc zeroext i1 @__nvme_disable_io_queues(ptr noundef %add.ptr, i8 noundef zeroext 0) #16
  br i1 %call.i166.i, label %if.then.i167.i, label %if.then55.i.nvme_disable_io_queues.exit.i_crit_edge

if.then55.i.nvme_disable_io_queues.exit.i_crit_edge: ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %nvme_disable_io_queues.exit.i

if.then.i167.i:                                   ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #18
  %call1.i.i305 = call fastcc zeroext i1 @__nvme_disable_io_queues(ptr noundef %add.ptr, i8 noundef zeroext 4) #16
  br label %nvme_disable_io_queues.exit.i

nvme_disable_io_queues.exit.i:                    ; preds = %if.then.i167.i, %if.then55.i.nvme_disable_io_queues.exit.i_crit_edge
  %call.i170.i = call i32 @mutex_trylock(ptr noundef %shutdown_lock) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i170.i)
  %tobool.not.i171.i = icmp eq i32 %call.i170.i, 0
  br i1 %tobool.not.i171.i, label %nvme_disable_io_queues.exit.i.nvme_setup_io_queues.exit.thread_crit_edge, label %if.end.i174.i

nvme_disable_io_queues.exit.i.nvme_setup_io_queues.exit.thread_crit_edge: ; preds = %nvme_disable_io_queues.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %nvme_setup_io_queues.exit.thread

if.end.i174.i:                                    ; preds = %nvme_disable_io_queues.exit.i
  %474 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %475)
  %cmp.not.i173.i = icmp eq i32 %475, 3
  br i1 %cmp.not.i173.i, label %if.end61.i, label %if.end.i174.i.nvme_setup_io_queues.exit.thread.sink.split_crit_edge

if.end.i174.i.nvme_setup_io_queues.exit.thread.sink.split_crit_edge: ; preds = %if.end.i174.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %nvme_setup_io_queues.exit.thread.sink.split

if.end61.i:                                       ; preds = %if.end.i174.i
  %476 = ptrtoint ptr %queue_count.i.i to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load i32, ptr %queue_count.i.i, align 4
  %i.04.i.i = add i32 %477, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.04.i.i)
  %cmp5.i.i = icmp sgt i32 %i.04.i.i, 0
  br i1 %cmp5.i.i, label %if.end61.i.for.body.i181.i_crit_edge, label %if.end61.i.retry.i.backedge_crit_edge

if.end61.i.retry.i.backedge_crit_edge:            ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %retry.i.backedge

if.end61.i.for.body.i181.i_crit_edge:             ; preds = %if.end61.i
  br label %for.body.i181.i

retry.i.backedge:                                 ; preds = %for.body.i181.i.retry.i.backedge_crit_edge, %if.end61.i.retry.i.backedge_crit_edge
  br label %retry.i

for.body.i181.i:                                  ; preds = %for.body.i181.i.for.body.i181.i_crit_edge, %if.end61.i.for.body.i181.i_crit_edge
  %i.06.i.i = phi i32 [ %i.0.i.i, %for.body.i181.i.for.body.i181.i_crit_edge ], [ %i.04.i.i, %if.end61.i.for.body.i181.i_crit_edge ]
  %478 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load ptr, ptr %add.ptr, align 8
  %arrayidx.i179.i = getelementptr %struct.nvme_queue, ptr %479, i32 %i.06.i.i
  call fastcc void @nvme_suspend_queue(ptr noundef %arrayidx.i179.i) #16
  %i.0.i.i = add nsw i32 %i.06.i.i, -1
  %cmp.not.i180.i = icmp eq i32 %i.0.i.i, 0
  br i1 %cmp.not.i180.i, label %for.body.i181.i.retry.i.backedge_crit_edge, label %for.body.i181.i.for.body.i181.i_crit_edge

for.body.i181.i.for.body.i181.i_crit_edge:        ; preds = %for.body.i181.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i181.i

for.body.i181.i.retry.i.backedge_crit_edge:       ; preds = %for.body.i181.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %retry.i.backedge

do.end65.i:                                       ; preds = %if.end50.i304
  call void @__sanitizer_cov_trace_pc() #18
  %device.i306 = getelementptr i8, ptr %work, i32 -168
  %480 = ptrtoint ptr %device.i306 to i32
  call void @__asan_load4_noabort(i32 %480)
  %481 = load ptr, ptr %device.i306, align 8
  %482 = ptrtoint ptr %io_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load i32, ptr %io_queues.i.i, align 4
  %484 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load i32, ptr %arrayidx6.i.i, align 4
  %486 = ptrtoint ptr %arrayidx.i.i293 to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load i32, ptr %arrayidx.i.i293, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %481, ptr noundef nonnull @.str.95, i32 noundef %483, i32 noundef %485, i32 noundef %487) #21
  br label %if.end101

nvme_setup_io_queues.exit.thread.sink.split:      ; preds = %if.end.i174.i.nvme_setup_io_queues.exit.thread.sink.split_crit_edge, %if.end.i.i.i.i.nvme_setup_io_queues.exit.thread.sink.split_crit_edge, %queue_request_irq.exit.i301.nvme_setup_io_queues.exit.thread.sink.split_crit_edge, %if.end32.i.nvme_setup_io_queues.exit.thread.sink.split_crit_edge, %if.end24.i291.nvme_setup_io_queues.exit.thread.sink.split_crit_edge, %if.end.i.i257.nvme_setup_io_queues.exit.thread.sink.split_crit_edge
  %shutdown_lock.sink = phi ptr [ %shutdown_lock, %if.end.i.i257.nvme_setup_io_queues.exit.thread.sink.split_crit_edge ], [ %shutdown_lock.i.i.i.i, %if.end.i.i.i.i.nvme_setup_io_queues.exit.thread.sink.split_crit_edge ], [ %shutdown_lock, %if.end.i174.i.nvme_setup_io_queues.exit.thread.sink.split_crit_edge ], [ %shutdown_lock, %queue_request_irq.exit.i301.nvme_setup_io_queues.exit.thread.sink.split_crit_edge ], [ %shutdown_lock, %if.end32.i.nvme_setup_io_queues.exit.thread.sink.split_crit_edge ], [ %shutdown_lock, %if.end24.i291.nvme_setup_io_queues.exit.thread.sink.split_crit_edge ]
  %retval.0.i308.ph.ph = phi i32 [ -19, %if.end.i.i257.nvme_setup_io_queues.exit.thread.sink.split_crit_edge ], [ -19, %if.end.i.i.i.i.nvme_setup_io_queues.exit.thread.sink.split_crit_edge ], [ -5, %if.end32.i.nvme_setup_io_queues.exit.thread.sink.split_crit_edge ], [ %retval.0.i155.i, %queue_request_irq.exit.i301.nvme_setup_io_queues.exit.thread.sink.split_crit_edge ], [ -19, %if.end.i174.i.nvme_setup_io_queues.exit.thread.sink.split_crit_edge ], [ -12, %if.end24.i291.nvme_setup_io_queues.exit.thread.sink.split_crit_edge ]
  call void @mutex_unlock(ptr noundef %shutdown_lock.sink) #16
  br label %nvme_setup_io_queues.exit.thread

nvme_setup_io_queues.exit.thread:                 ; preds = %nvme_setup_io_queues.exit.thread.sink.split, %nvme_disable_io_queues.exit.i.nvme_setup_io_queues.exit.thread_crit_edge, %for.end25.i.i.nvme_setup_io_queues.exit.thread_crit_edge, %if.end15.i.i.i.nvme_setup_io_queues.exit.thread_crit_edge, %if.end6.i.i.i.nvme_setup_io_queues.exit.thread_crit_edge, %if.end4.i.nvme_setup_io_queues.exit.thread_crit_edge, %if.end97.nvme_setup_io_queues.exit.thread_crit_edge
  %retval.0.i308.ph = phi i32 [ -19, %if.end4.i.nvme_setup_io_queues.exit.thread_crit_edge ], [ %call.i252, %if.end97.nvme_setup_io_queues.exit.thread_crit_edge ], [ %retval.0.i308.ph.ph, %nvme_setup_io_queues.exit.thread.sink.split ], [ -19, %if.end15.i.i.i.nvme_setup_io_queues.exit.thread_crit_edge ], [ %call.i.i.i.i, %if.end6.i.i.i.nvme_setup_io_queues.exit.thread_crit_edge ], [ -19, %nvme_disable_io_queues.exit.i.nvme_setup_io_queues.exit.thread_crit_edge ], [ %ret.2.i.i, %for.end25.i.i.nvme_setup_io_queues.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nr_io_queues.i) #16
  br label %do.end140

if.end101:                                        ; preds = %do.end65.i, %lor.lhs.false.i.if.end101_crit_edge, %if.end.i253.if.end101_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nr_io_queues.i) #16
  %online_queues = getelementptr i8, ptr %work, i32 -1596
  %488 = ptrtoint ptr %online_queues to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load i32, ptr %online_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %489)
  %cmp102 = icmp ult i32 %489, 2
  br i1 %cmp102, label %do.end107, label %if.else112

do.end107:                                        ; preds = %if.end101
  %device109 = getelementptr i8, ptr %work, i32 -168
  %490 = ptrtoint ptr %device109 to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load ptr, ptr %device109, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %491, ptr noundef nonnull @.str.26) #21
  call void @nvme_kill_queues(ptr noundef %ctrl) #16
  call void @nvme_remove_namespaces(ptr noundef %ctrl) #16
  %tags.i = getelementptr i8, ptr %work, i32 -1904
  %492 = ptrtoint ptr %tags.i to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load ptr, ptr %tags.i, align 4
  %tobool.not.i309 = icmp eq ptr %493, null
  br i1 %tobool.not.i309, label %do.end107.nvme_free_tagset.exit_crit_edge, label %if.then.i310

do.end107.nvme_free_tagset.exit_crit_edge:        ; preds = %do.end107
  call void @__sanitizer_cov_trace_pc() #18
  br label %nvme_free_tagset.exit

if.then.i310:                                     ; preds = %do.end107
  call void @__sanitizer_cov_trace_pc() #18
  %tagset.i = getelementptr i8, ptr %work, i32 -1980
  call void @blk_mq_free_tag_set(ptr noundef %tagset.i) #16
  br label %nvme_free_tagset.exit

nvme_free_tagset.exit:                            ; preds = %if.then.i310, %do.end107.nvme_free_tagset.exit_crit_edge
  %tagset2.i = getelementptr i8, ptr %work, i32 -1208
  %494 = ptrtoint ptr %tagset2.i to i32
  call void @__asan_store4_noabort(i32 %494)
  store ptr null, ptr %tagset2.i, align 8
  br label %if.end116

if.else112:                                       ; preds = %if.end101
  call void @nvme_start_queues(ptr noundef %ctrl) #16
  call void @nvme_wait_freeze(ptr noundef %ctrl) #16
  %tagset.i312 = getelementptr i8, ptr %work, i32 -1208
  %495 = ptrtoint ptr %tagset.i312 to i32
  call void @__asan_load4_noabort(i32 %495)
  %496 = load ptr, ptr %tagset.i312, align 8
  %tobool.not.i313 = icmp eq ptr %496, null
  %tagset1.i = getelementptr i8, ptr %work, i32 -1980
  br i1 %tobool.not.i313, label %if.then.i328, label %if.else.i332

if.then.i328:                                     ; preds = %if.else112
  %ops.i314 = getelementptr i8, ptr %work, i32 -1940
  %497 = ptrtoint ptr %ops.i314 to i32
  call void @__asan_store4_noabort(i32 %497)
  store ptr @nvme_mq_ops, ptr %ops.i314, align 4
  %498 = ptrtoint ptr %online_queues to i32
  call void @__asan_load4_noabort(i32 %498)
  %499 = load i32, ptr %online_queues, align 4
  %sub.i316 = add i32 %499, -1
  %nr_hw_queues.i317 = getelementptr i8, ptr %work, i32 -1936
  %500 = ptrtoint ptr %nr_hw_queues.i317 to i32
  call void @__asan_store4_noabort(i32 %500)
  store i32 %sub.i316, ptr %nr_hw_queues.i317, align 4
  %nr_maps.i = getelementptr i8, ptr %work, i32 -1944
  %arrayidx.i = getelementptr i8, ptr %work, i32 -1580
  %501 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %501)
  %502 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %502)
  %tobool4.not.i = icmp eq i32 %502, 0
  %spec.store.select.i = select i1 %tobool4.not.i, i32 2, i32 3
  %503 = ptrtoint ptr %nr_maps.i to i32
  call void @__asan_store4_noabort(i32 %503)
  store i32 %spec.store.select.i, ptr %nr_maps.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nvme_io_timeout to i32))
  %504 = load i32, ptr @nvme_io_timeout, align 4
  %mul.i318 = mul i32 %504, 100
  %timeout.i319 = getelementptr i8, ptr %work, i32 -1916
  %505 = ptrtoint ptr %timeout.i319 to i32
  call void @__asan_store4_noabort(i32 %505)
  store i32 %mul.i318, ptr %timeout.i319, align 4
  %506 = ptrtoint ptr %numa_node.i to i32
  call void @__asan_load4_noabort(i32 %506)
  %507 = load i32, ptr %numa_node.i, align 4
  %numa_node11.i = getelementptr i8, ptr %work, i32 -1920
  %508 = ptrtoint ptr %numa_node11.i to i32
  call void @__asan_store4_noabort(i32 %508)
  store i32 %507, ptr %numa_node11.i, align 4
  %509 = ptrtoint ptr %q_depth.i to i32
  call void @__asan_load4_noabort(i32 %509)
  %510 = load i32, ptr %q_depth.i, align 4
  %phi.bo.i = add i32 %510, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 10239, i32 %510)
  %cmp.inv.i = icmp ugt i32 %510, 10239
  %cond.i = select i1 %cmp.inv.i, i32 10239, i32 %phi.bo.i
  %queue_depth.i322 = getelementptr i8, ptr %work, i32 -1932
  %511 = ptrtoint ptr %queue_depth.i322 to i32
  call void @__asan_store4_noabort(i32 %511)
  store i32 %cond.i, ptr %queue_depth.i322, align 4
  %cmd_size.i323 = getelementptr i8, ptr %work, i32 -1924
  %512 = ptrtoint ptr %cmd_size.i323 to i32
  call void @__asan_store4_noabort(i32 %512)
  store i32 136, ptr %cmd_size.i323, align 4
  %flags.i324 = getelementptr i8, ptr %work, i32 -1912
  %513 = ptrtoint ptr %flags.i324 to i32
  call void @__asan_store4_noabort(i32 %513)
  store i32 1, ptr %flags.i324, align 4
  %driver_data.i325 = getelementptr i8, ptr %work, i32 -1908
  %514 = ptrtoint ptr %driver_data.i325 to i32
  call void @__asan_store4_noabort(i32 %514)
  store ptr %add.ptr, ptr %driver_data.i325, align 4
  %515 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %515)
  %516 = load i32, ptr %quirks.i, align 8
  %and.i327 = and i32 %516, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i327)
  %tobool18.not.i = icmp eq i32 %and.i327, 0
  br i1 %tobool18.not.i, label %if.then.i328.if.end21.i_crit_edge, label %if.then19.i

if.then.i328.if.end21.i_crit_edge:                ; preds = %if.then.i328
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end21.i

if.then19.i:                                      ; preds = %if.then.i328
  call void @__sanitizer_cov_trace_pc() #18
  %reserved_tags.i = getelementptr i8, ptr %work, i32 -1928
  %517 = ptrtoint ptr %reserved_tags.i to i32
  call void @__asan_store4_noabort(i32 %517)
  store i32 32, ptr %reserved_tags.i, align 4
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then19.i, %if.then.i328.if.end21.i_crit_edge
  %call.i329 = call i32 @blk_mq_alloc_tag_set(ptr noundef %tagset1.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i329)
  %tobool23.not.i = icmp eq i32 %call.i329, 0
  br i1 %tobool23.not.i, label %if.end26.i, label %do.end.i331

do.end.i331:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #18
  %device.i330 = getelementptr i8, ptr %work, i32 -168
  %518 = ptrtoint ptr %device.i330 to i32
  call void @__asan_load4_noabort(i32 %518)
  %519 = load ptr, ptr %device.i330, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %519, ptr noundef nonnull @.str.97, i32 noundef %call.i329) #21
  br label %nvme_dev_add.exit

if.end26.i:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #18
  %520 = ptrtoint ptr %tagset.i312 to i32
  call void @__asan_store4_noabort(i32 %520)
  store ptr %tagset1.i, ptr %tagset.i312, align 8
  br label %if.end34.i

if.else.i332:                                     ; preds = %if.else112
  call void @__sanitizer_cov_trace_pc() #18
  %521 = ptrtoint ptr %online_queues to i32
  call void @__asan_load4_noabort(i32 %521)
  %522 = load i32, ptr %online_queues, align 4
  %sub32.i = add i32 %522, -1
  call void @blk_mq_update_nr_hw_queues(ptr noundef %tagset1.i, i32 noundef %sub32.i) #16
  %523 = ptrtoint ptr %online_queues to i32
  call void @__asan_load4_noabort(i32 %523)
  %524 = load i32, ptr %online_queues, align 4
  call fastcc void @nvme_free_queues(ptr noundef %add.ptr, i32 noundef %524) #16
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.else.i332, %if.end26.i
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %c.i.i) #16
  %525 = call ptr @memset(ptr %c.i.i, i32 0, i32 64)
  %dbbuf_dbs.i.i = getelementptr i8, ptr %work, i32 2188
  %526 = ptrtoint ptr %dbbuf_dbs.i.i to i32
  call void @__asan_load4_noabort(i32 %526)
  %527 = load ptr, ptr %dbbuf_dbs.i.i, align 4
  %tobool.not.i.i333 = icmp eq ptr %527, null
  br i1 %tobool.not.i.i333, label %if.end34.i.nvme_dbbuf_set.exit.i_crit_edge, label %if.end.i.i337

if.end34.i.nvme_dbbuf_set.exit.i_crit_edge:       ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %nvme_dbbuf_set.exit.i

if.end.i.i337:                                    ; preds = %if.end34.i
  %528 = ptrtoint ptr %c.i.i to i32
  call void @__asan_store1_noabort(i32 %528)
  store i8 124, ptr %c.i.i, align 8
  %dbbuf_dbs_dma_addr.i.i = getelementptr i8, ptr %work, i32 2192
  %529 = ptrtoint ptr %dbbuf_dbs_dma_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %529)
  %530 = load i32, ptr %dbbuf_dbs_dma_addr.i.i, align 8
  %conv.i.i334 = zext i32 %530 to i64
  %531 = call i64 @llvm.bswap.i64(i64 %conv.i.i334) #16
  %prp1.i.i = getelementptr inbounds %struct.nvme_dbbuf, ptr %c.i.i, i32 0, i32 4
  %532 = ptrtoint ptr %prp1.i.i to i32
  call void @__asan_store8_noabort(i32 %532)
  store i64 %531, ptr %prp1.i.i, align 8
  %dbbuf_eis_dma_addr.i.i = getelementptr i8, ptr %work, i32 2200
  %533 = ptrtoint ptr %dbbuf_eis_dma_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %533)
  %534 = load i32, ptr %dbbuf_eis_dma_addr.i.i, align 8
  %conv1.i.i = zext i32 %534 to i64
  %535 = call i64 @llvm.bswap.i64(i64 %conv1.i.i) #16
  %prp2.i.i = getelementptr inbounds %struct.nvme_dbbuf, ptr %c.i.i, i32 0, i32 5
  %536 = ptrtoint ptr %prp2.i.i to i32
  call void @__asan_store8_noabort(i32 %536)
  store i64 %535, ptr %prp2.i.i, align 8
  %537 = ptrtoint ptr %admin_q.i to i32
  call void @__asan_load4_noabort(i32 %537)
  %538 = load ptr, ptr %admin_q.i, align 8
  %call.i.i335 = call i32 @nvme_submit_sync_cmd(ptr noundef %538, ptr noundef nonnull %c.i.i, ptr noundef null, i32 noundef 0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i335)
  %tobool2.not.i.i336 = icmp eq i32 %call.i.i335, 0
  br i1 %tobool2.not.i.i336, label %if.end.i.i337.nvme_dbbuf_set.exit.i_crit_edge, label %do.end.i.i

if.end.i.i337.nvme_dbbuf_set.exit.i_crit_edge:    ; preds = %if.end.i.i337
  call void @__sanitizer_cov_trace_pc() #18
  br label %nvme_dbbuf_set.exit.i

do.end.i.i:                                       ; preds = %if.end.i.i337
  %device.i.i338 = getelementptr i8, ptr %work, i32 -168
  %539 = ptrtoint ptr %device.i.i338 to i32
  call void @__asan_load4_noabort(i32 %539)
  %540 = load ptr, ptr %device.i.i338, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %540, ptr noundef nonnull @.str.99) #21
  %541 = ptrtoint ptr %nr_allocated_queues.i to i32
  call void @__asan_load4_noabort(i32 %541)
  %542 = load i32, ptr %nr_allocated_queues.i, align 8
  %mul.i.i.i.i339 = shl i32 %542, 3
  %543 = ptrtoint ptr %db_stride.i to i32
  call void @__asan_load4_noabort(i32 %543)
  %544 = load i32, ptr %db_stride.i, align 4
  %mul1.i.i.i.i = mul i32 %mul.i.i.i.i339, %544
  %545 = ptrtoint ptr %dbbuf_dbs.i.i to i32
  call void @__asan_load4_noabort(i32 %545)
  %546 = load ptr, ptr %dbbuf_dbs.i.i, align 4
  %tobool.not.i.i.i341 = icmp eq ptr %546, null
  br i1 %tobool.not.i.i.i341, label %do.end.i.i.if.end.i.i.i345_crit_edge, label %if.then.i.i.i343

do.end.i.i.if.end.i.i.i345_crit_edge:             ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i.i345

if.then.i.i.i343:                                 ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %547 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %547)
  %548 = load ptr, ptr %dev1.i, align 8
  %549 = ptrtoint ptr %dbbuf_dbs_dma_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %549)
  %550 = load i32, ptr %dbbuf_dbs_dma_addr.i.i, align 8
  call void @dma_free_attrs(ptr noundef %548, i32 noundef %mul1.i.i.i.i, ptr noundef nonnull %546, i32 noundef %550, i32 noundef 0) #16
  %551 = ptrtoint ptr %dbbuf_dbs.i.i to i32
  call void @__asan_store4_noabort(i32 %551)
  store ptr null, ptr %dbbuf_dbs.i.i, align 4
  br label %if.end.i.i.i345

if.end.i.i.i345:                                  ; preds = %if.then.i.i.i343, %do.end.i.i.if.end.i.i.i345_crit_edge
  %dbbuf_eis.i.i.i = getelementptr i8, ptr %work, i32 2196
  %552 = ptrtoint ptr %dbbuf_eis.i.i.i to i32
  call void @__asan_load4_noabort(i32 %552)
  %553 = load ptr, ptr %dbbuf_eis.i.i.i, align 4
  %tobool4.not.i.i.i344 = icmp eq ptr %553, null
  br i1 %tobool4.not.i.i.i344, label %if.end.i.i.i345.nvme_dbbuf_dma_free.exit.i.i_crit_edge, label %if.then5.i.i.i

if.end.i.i.i345.nvme_dbbuf_dma_free.exit.i.i_crit_edge: ; preds = %if.end.i.i.i345
  call void @__sanitizer_cov_trace_pc() #18
  br label %nvme_dbbuf_dma_free.exit.i.i

if.then5.i.i.i:                                   ; preds = %if.end.i.i.i345
  call void @__sanitizer_cov_trace_pc() #18
  %554 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %554)
  %555 = load ptr, ptr %dev1.i, align 8
  %556 = ptrtoint ptr %dbbuf_eis_dma_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %556)
  %557 = load i32, ptr %dbbuf_eis_dma_addr.i.i, align 8
  call void @dma_free_attrs(ptr noundef %555, i32 noundef %mul1.i.i.i.i, ptr noundef nonnull %553, i32 noundef %557, i32 noundef 0) #16
  %558 = ptrtoint ptr %dbbuf_eis.i.i.i to i32
  call void @__asan_store4_noabort(i32 %558)
  store ptr null, ptr %dbbuf_eis.i.i.i, align 4
  br label %nvme_dbbuf_dma_free.exit.i.i

nvme_dbbuf_dma_free.exit.i.i:                     ; preds = %if.then5.i.i.i, %if.end.i.i.i345.nvme_dbbuf_dma_free.exit.i.i_crit_edge
  %559 = ptrtoint ptr %online_queues to i32
  call void @__asan_load4_noabort(i32 %559)
  %560 = load i32, ptr %online_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %560)
  %cmp.not19.i.i = icmp eq i32 %560, 0
  br i1 %cmp.not19.i.i, label %nvme_dbbuf_dma_free.exit.i.i.nvme_dbbuf_set.exit.i_crit_edge, label %nvme_dbbuf_dma_free.exit.i.i.for.body.i.i347_crit_edge

nvme_dbbuf_dma_free.exit.i.i.for.body.i.i347_crit_edge: ; preds = %nvme_dbbuf_dma_free.exit.i.i
  br label %for.body.i.i347

nvme_dbbuf_dma_free.exit.i.i.nvme_dbbuf_set.exit.i_crit_edge: ; preds = %nvme_dbbuf_dma_free.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %nvme_dbbuf_set.exit.i

for.body.i.i347:                                  ; preds = %nvme_dbbuf_free.exit.i.i.for.body.i.i347_crit_edge, %nvme_dbbuf_dma_free.exit.i.i.for.body.i.i347_crit_edge
  %i.020.i.i = phi i32 [ %inc.i.i348, %nvme_dbbuf_free.exit.i.i.for.body.i.i347_crit_edge ], [ 1, %nvme_dbbuf_dma_free.exit.i.i.for.body.i.i347_crit_edge ]
  %561 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %561)
  %562 = load ptr, ptr %add.ptr, align 8
  %qid.i.i.i = getelementptr %struct.nvme_queue, ptr %562, i32 %i.020.i.i, i32 14
  %563 = ptrtoint ptr %qid.i.i.i to i32
  call void @__asan_load2_noabort(i32 %563)
  %564 = load i16, ptr %qid.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %564)
  %tobool.not.i17.i.i = icmp eq i16 %564, 0
  br i1 %tobool.not.i17.i.i, label %for.body.i.i347.nvme_dbbuf_free.exit.i.i_crit_edge, label %if.end.i18.i.i

for.body.i.i347.nvme_dbbuf_free.exit.i.i_crit_edge: ; preds = %for.body.i.i347
  call void @__sanitizer_cov_trace_pc() #18
  br label %nvme_dbbuf_free.exit.i.i

if.end.i18.i.i:                                   ; preds = %for.body.i.i347
  call void @__sanitizer_cov_trace_pc() #18
  %dbbuf_sq_db.i.i.i = getelementptr %struct.nvme_queue, ptr %562, i32 %i.020.i.i, i32 18
  %565 = call ptr @memset(ptr %dbbuf_sq_db.i.i.i, i32 0, i32 16)
  br label %nvme_dbbuf_free.exit.i.i

nvme_dbbuf_free.exit.i.i:                         ; preds = %if.end.i18.i.i, %for.body.i.i347.nvme_dbbuf_free.exit.i.i_crit_edge
  %inc.i.i348 = add i32 %i.020.i.i, 1
  %566 = ptrtoint ptr %online_queues to i32
  call void @__asan_load4_noabort(i32 %566)
  %567 = load i32, ptr %online_queues, align 4
  %cmp.not.i.i349 = icmp ugt i32 %inc.i.i348, %567
  br i1 %cmp.not.i.i349, label %nvme_dbbuf_free.exit.i.i.nvme_dbbuf_set.exit.i_crit_edge, label %nvme_dbbuf_free.exit.i.i.for.body.i.i347_crit_edge

nvme_dbbuf_free.exit.i.i.for.body.i.i347_crit_edge: ; preds = %nvme_dbbuf_free.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i347

nvme_dbbuf_free.exit.i.i.nvme_dbbuf_set.exit.i_crit_edge: ; preds = %nvme_dbbuf_free.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %nvme_dbbuf_set.exit.i

nvme_dbbuf_set.exit.i:                            ; preds = %nvme_dbbuf_free.exit.i.i.nvme_dbbuf_set.exit.i_crit_edge, %nvme_dbbuf_dma_free.exit.i.i.nvme_dbbuf_set.exit.i_crit_edge, %if.end.i.i337.nvme_dbbuf_set.exit.i_crit_edge, %if.end34.i.nvme_dbbuf_set.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %c.i.i) #16
  br label %nvme_dev_add.exit

nvme_dev_add.exit:                                ; preds = %nvme_dbbuf_set.exit.i, %do.end.i331
  call void @nvme_unfreeze(ptr noundef %ctrl) #16
  br label %if.end116

if.end116:                                        ; preds = %nvme_dev_add.exit, %nvme_free_tagset.exit
  %call118 = call zeroext i1 @nvme_change_ctrl_state(ptr noundef %ctrl, i32 noundef 1) #16
  br i1 %call118, label %if.end125, label %do.end122

do.end122:                                        ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #18
  %device124 = getelementptr i8, ptr %work, i32 -168
  %568 = ptrtoint ptr %device124 to i32
  call void @__asan_load4_noabort(i32 %568)
  %569 = load ptr, ptr %device124, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %569, ptr noundef nonnull @.str.29) #21
  br label %do.end140

if.end125:                                        ; preds = %if.end116
  %attrs_added = getelementptr i8, ptr %work, i32 2244
  %570 = ptrtoint ptr %attrs_added to i32
  call void @__asan_load1_noabort(i32 %570)
  %571 = load i8, ptr %attrs_added, align 4, !range !351
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %571)
  %tobool126.not = icmp eq i8 %571, 0
  br i1 %tobool126.not, label %land.lhs.true, label %if.end125.if.end133_crit_edge

if.end125.if.end133_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end133

land.lhs.true:                                    ; preds = %if.end125
  %device128 = getelementptr i8, ptr %work, i32 -168
  %572 = ptrtoint ptr %device128 to i32
  call void @__asan_load4_noabort(i32 %572)
  %573 = load ptr, ptr %device128, align 8
  %call129 = call i32 @sysfs_create_group(ptr noundef %573, ptr noundef nonnull @nvme_pci_attr_group) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129)
  %tobool130.not = icmp eq i32 %call129, 0
  br i1 %tobool130.not, label %if.then131, label %land.lhs.true.if.end133_crit_edge

land.lhs.true.if.end133_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end133

if.then131:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %574 = ptrtoint ptr %attrs_added to i32
  call void @__asan_store1_noabort(i32 %574)
  store i8 1, ptr %attrs_added, align 4
  br label %if.end133

if.end133:                                        ; preds = %if.then131, %land.lhs.true.if.end133_crit_edge, %if.end125.if.end133_crit_edge
  call void @nvme_start_ctrl(ptr noundef %ctrl) #16
  br label %cleanup

out_unlock:                                       ; preds = %nvme_dev_remove_admin.exit.i, %if.then23.i, %if.then.i.out_unlock_crit_edge, %if.then49.i, %if.end28.i.out_unlock_crit_edge, %if.end24.i.out_unlock_crit_edge, %if.end19.i.out_unlock_crit_edge, %if.then20.i.i, %cond.end.i.i215.out_unlock_crit_edge, %disable.i, %if.end16.i.out_unlock_crit_edge, %if.end11.out_unlock_crit_edge
  %result.0 = phi i32 [ %call.i160.i, %if.end16.i.out_unlock_crit_edge ], [ -12, %if.end11.out_unlock_crit_edge ], [ %result.0.i, %disable.i ], [ -12, %cond.end.i.i215.out_unlock_crit_edge ], [ -12, %if.then20.i.i ], [ %call43.i, %if.end28.i.out_unlock_crit_edge ], [ %call25.i, %if.end24.i.out_unlock_crit_edge ], [ %call21.i, %if.end19.i.out_unlock_crit_edge ], [ %retval.0.i95.i, %if.then49.i ], [ -12, %if.then.i.out_unlock_crit_edge ], [ -19, %nvme_dev_remove_admin.exit.i ], [ -12, %if.then23.i ]
  call void @mutex_unlock(ptr noundef %shutdown_lock) #16
  br label %do.end140

do.end140:                                        ; preds = %out_unlock, %do.end122, %nvme_setup_io_queues.exit.thread, %if.then91.do.end140_crit_edge, %if.end43.do.end140_crit_edge, %do.end40, %do.end
  %result.1 = phi i32 [ -19, %do.end ], [ %result.0, %out_unlock ], [ %call46, %if.end43.do.end140_crit_edge ], [ %call92, %if.then91.do.end140_crit_edge ], [ -19, %do.end122 ], [ -16, %do.end40 ], [ %retval.0.i308.ph, %nvme_setup_io_queues.exit.thread ]
  %device142 = getelementptr i8, ptr %work, i32 -168
  %575 = ptrtoint ptr %device142 to i32
  call void @__asan_load4_noabort(i32 %575)
  %576 = load ptr, ptr %device142, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %576, ptr noundef nonnull @.str.32, i32 noundef %result.1) #21
  %call.i351 = call zeroext i1 @nvme_change_ctrl_state(ptr noundef %ctrl, i32 noundef 4) #16
  %577 = ptrtoint ptr %device142 to i32
  call void @__asan_load4_noabort(i32 %577)
  %578 = load ptr, ptr %device142, align 8
  %call.i.i353 = call ptr @get_device(ptr noundef %578) #16
  call fastcc void @nvme_dev_disable(ptr noundef %add.ptr, i1 noundef zeroext false) #16
  call void @nvme_kill_queues(ptr noundef %ctrl) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nvme_wq to i32))
  %579 = load ptr, ptr @nvme_wq, align 4
  %remove_work.i = getelementptr i8, ptr %work, i32 -1552
  %call.i10.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %579, ptr noundef %remove_work.i) #16
  br i1 %call.i10.i, label %do.end140.cleanup_crit_edge, label %if.then.i354

do.end140.cleanup_crit_edge:                      ; preds = %do.end140
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then.i354:                                     ; preds = %do.end140
  call void @__sanitizer_cov_trace_pc() #18
  %580 = ptrtoint ptr %device142 to i32
  call void @__asan_load4_noabort(i32 %580)
  %581 = load ptr, ptr %device142, align 8
  call void @put_device(ptr noundef %581) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then.i354, %do.end140.cleanup_crit_edge, %if.end133
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvme_remove_dead_ctrl_work(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %dev2 = getelementptr i8, ptr %work, i32 -56
  %0 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev2, align 8
  %driver_data.i.i = getelementptr i8, ptr %1, i32 164
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @device_release_driver(ptr noundef %1) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %device.i = getelementptr i8, ptr %work, i32 1384
  %4 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device.i, align 8
  tail call void @put_device(ptr noundef %5) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mempool_create_node(i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mempool_kmalloc(i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_kfree(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvme_init_ctrl(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvme_reset_ctrl(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvme_async_probe(ptr noundef %data, i64 noundef %cookie) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %reset_work = getelementptr inbounds %struct.nvme_dev, ptr %data, i32 0, i32 23, i32 20
  %call = tail call zeroext i1 @flush_work(ptr noundef %reset_work) #16
  %scan_work = getelementptr inbounds %struct.nvme_dev, ptr %data, i32 0, i32 23, i32 65
  %call2 = tail call zeroext i1 @flush_work(ptr noundef %scan_work) #16
  %device.i = getelementptr inbounds %struct.nvme_dev, ptr %data, i32 0, i32 23, i32 17
  %0 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device.i, align 8
  tail call void @put_device(ptr noundef %1) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_selected_regions(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_select_bars(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_selected_regions(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nvme_dev_disable(ptr noundef %dev, i1 noundef zeroext %shutdown) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.nvme_dev, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %shutdown_lock = getelementptr inbounds %struct.nvme_dev, ptr %dev, i32 0, i32 17
  tail call void @mutex_lock_nested(ptr noundef %shutdown_lock, i32 noundef 0) #16
  %enable_cnt.i = getelementptr i8, ptr %1, i32 1488
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %enable_cnt.i, i32 noundef 4) #16
  %2 = ptrtoint ptr %enable_cnt.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %enable_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp slt i32 %3, 1
  br i1 %cmp.i, label %entry.if.end26.thread_crit_edge, label %if.then

entry.if.end26.thread_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end26.thread

if.then:                                          ; preds = %entry
  %bar = getelementptr inbounds %struct.nvme_dev, ptr %dev, i32 0, i32 14
  %4 = ptrtoint ptr %bar to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bar, align 8
  %add.ptr2 = getelementptr i8, ptr %5, i32 28
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #16, !srcloc !352
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !369
  %state = getelementptr inbounds %struct.nvme_dev, ptr %dev, i32 0, i32 23, i32 1
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state, align 4
  %.off = add i32 %8, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then9, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %ctrl = getelementptr inbounds %struct.nvme_dev, ptr %dev, i32 0, i32 23
  tail call void @nvme_start_freeze(ptr noundef %ctrl) #16
  br label %if.end

if.end:                                           ; preds = %if.then9, %if.then.if.end_crit_edge
  %9 = and i32 %6, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %9)
  %.not = icmp eq i32 %9, 16777216
  br i1 %.not, label %if.end18, label %if.end.if.end26.thread_crit_edge

if.end.if.end26.thread_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end26.thread

if.end26.thread:                                  ; preds = %if.end.if.end26.thread_crit_edge, %entry.if.end26.thread_crit_edge
  %ctrl27104 = getelementptr inbounds %struct.nvme_dev, ptr %dev, i32 0, i32 23
  tail call void @nvme_stop_queues(ptr noundef %ctrl27104) #16
  br label %if.end34

if.end18:                                         ; preds = %if.end
  %error_state = getelementptr i8, ptr %1, i32 -4
  %10 = ptrtoint ptr %error_state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %error_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp15 = icmp ne i32 %11, 1
  %12 = and i1 %switch, %shutdown
  %13 = xor i1 %12, true
  %brmerge86 = or i1 %cmp15, %13
  %ctrl27 = getelementptr inbounds %struct.nvme_dev, ptr %dev, i32 0, i32 23
  br i1 %brmerge86, label %if.end26, label %if.then23

if.then23:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nvme_io_timeout to i32))
  %14 = load i32, ptr @nvme_io_timeout, align 4
  %mul = mul i32 %14, 100
  %call25 = tail call i32 @nvme_wait_freeze_timeout(ptr noundef %ctrl27, i32 noundef %mul) #16
  tail call void @nvme_stop_queues(ptr noundef %ctrl27) #16
  br label %land.lhs.true29

if.end26:                                         ; preds = %if.end18
  tail call void @nvme_stop_queues(ptr noundef %ctrl27) #16
  br i1 %cmp15, label %if.end26.if.end34_crit_edge, label %if.end26.land.lhs.true29_crit_edge

if.end26.land.lhs.true29_crit_edge:               ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true29

if.end26.if.end34_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end34

land.lhs.true29:                                  ; preds = %if.end26.land.lhs.true29_crit_edge, %if.then23
  %queue_count = getelementptr inbounds %struct.nvme_dev, ptr %dev, i32 0, i32 23, i32 30
  %15 = ptrtoint ptr %queue_count to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %queue_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp31.not = icmp eq i32 %16, 0
  br i1 %cmp31.not, label %land.lhs.true29.if.end34_crit_edge, label %if.then32

land.lhs.true29.if.end34_crit_edge:               ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end34

if.then32:                                        ; preds = %land.lhs.true29
  %call.i = tail call fastcc zeroext i1 @__nvme_disable_io_queues(ptr noundef %dev, i8 noundef zeroext 0) #16
  br i1 %call.i, label %if.then.i, label %if.then32.nvme_disable_io_queues.exit_crit_edge

if.then32.nvme_disable_io_queues.exit_crit_edge:  ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #18
  br label %nvme_disable_io_queues.exit

if.then.i:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #18
  %call1.i = tail call fastcc zeroext i1 @__nvme_disable_io_queues(ptr noundef %dev, i8 noundef zeroext 4) #16
  br label %nvme_disable_io_queues.exit

nvme_disable_io_queues.exit:                      ; preds = %if.then.i, %if.then32.nvme_disable_io_queues.exit_crit_edge
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 8
  br i1 %shutdown, label %if.then.i88, label %if.else.i

if.then.i88:                                      ; preds = %nvme_disable_io_queues.exit
  call void @__sanitizer_cov_trace_pc() #18
  %call.i87 = tail call i32 @nvme_shutdown_ctrl(ptr noundef %ctrl27) #16
  br label %nvme_disable_admin_queue.exit

if.else.i:                                        ; preds = %nvme_disable_io_queues.exit
  call void @__sanitizer_cov_trace_pc() #18
  %call2.i = tail call i32 @nvme_disable_ctrl(ptr noundef %ctrl27) #16
  br label %nvme_disable_admin_queue.exit

nvme_disable_admin_queue.exit:                    ; preds = %if.else.i, %if.then.i88
  tail call fastcc void @nvme_poll_irqdisable(ptr noundef %18) #16
  br label %if.end34

if.end34:                                         ; preds = %nvme_disable_admin_queue.exit, %land.lhs.true29.if.end34_crit_edge, %if.end26.if.end34_crit_edge, %if.end26.thread
  %ctrl27105 = phi ptr [ %ctrl27104, %if.end26.thread ], [ %ctrl27, %nvme_disable_admin_queue.exit ], [ %ctrl27, %land.lhs.true29.if.end34_crit_edge ], [ %ctrl27, %if.end26.if.end34_crit_edge ]
  %queue_count.i = getelementptr inbounds %struct.nvme_dev, ptr %dev, i32 0, i32 23, i32 30
  %19 = ptrtoint ptr %queue_count.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %queue_count.i, align 4
  %i.04.i = add i32 %20, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.04.i)
  %cmp5.i = icmp sgt i32 %i.04.i, 0
  br i1 %cmp5.i, label %if.end34.for.body.i_crit_edge, label %if.end34.nvme_suspend_io_queues.exit_crit_edge

if.end34.nvme_suspend_io_queues.exit_crit_edge:   ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #18
  br label %nvme_suspend_io_queues.exit

if.end34.for.body.i_crit_edge:                    ; preds = %if.end34
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end34.for.body.i_crit_edge
  %i.06.i = phi i32 [ %i.0.i, %for.body.i.for.body.i_crit_edge ], [ %i.04.i, %if.end34.for.body.i_crit_edge ]
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 8
  %arrayidx.i = getelementptr %struct.nvme_queue, ptr %22, i32 %i.06.i
  tail call fastcc void @nvme_suspend_queue(ptr noundef %arrayidx.i) #16
  %i.0.i = add nsw i32 %i.06.i, -1
  %cmp.not.i = icmp eq i32 %i.0.i, 0
  br i1 %cmp.not.i, label %for.body.i.nvme_suspend_io_queues.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.body.i.nvme_suspend_io_queues.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %nvme_suspend_io_queues.exit

nvme_suspend_io_queues.exit:                      ; preds = %for.body.i.nvme_suspend_io_queues.exit_crit_edge, %if.end34.nvme_suspend_io_queues.exit_crit_edge
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 8
  tail call fastcc void @nvme_suspend_queue(ptr noundef %24)
  %25 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev1, align 8
  %add.ptr.i = getelementptr i8, ptr %26, i32 -136
  tail call void @pci_free_irq_vectors(ptr noundef %add.ptr.i) #16
  %enable_cnt.i.i = getelementptr i8, ptr %26, i32 1488
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %enable_cnt.i.i, i32 noundef 4) #16
  %27 = ptrtoint ptr %enable_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %enable_cnt.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %28)
  %cmp.i.i = icmp slt i32 %28, 1
  br i1 %cmp.i.i, label %nvme_suspend_io_queues.exit.nvme_pci_disable.exit_crit_edge, label %if.then.i90

nvme_suspend_io_queues.exit.nvme_pci_disable.exit_crit_edge: ; preds = %nvme_suspend_io_queues.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %nvme_pci_disable.exit

if.then.i90:                                      ; preds = %nvme_suspend_io_queues.exit
  call void @__sanitizer_cov_trace_pc() #18
  %call2.i89 = tail call i32 @pci_disable_pcie_error_reporting(ptr noundef %add.ptr.i) #16
  tail call void @pci_disable_device(ptr noundef %add.ptr.i) #16
  br label %nvme_pci_disable.exit

nvme_pci_disable.exit:                            ; preds = %if.then.i90, %nvme_suspend_io_queues.exit.nvme_pci_disable.exit_crit_edge
  %29 = ptrtoint ptr %queue_count.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %queue_count.i, align 4
  %i.013.i = add i32 %30, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.013.i)
  %cmp14.i = icmp sgt i32 %i.013.i, 0
  br i1 %cmp14.i, label %nvme_pci_disable.exit.for.body.i95_crit_edge, label %nvme_pci_disable.exit.nvme_reap_pending_cqes.exit_crit_edge

nvme_pci_disable.exit.nvme_reap_pending_cqes.exit_crit_edge: ; preds = %nvme_pci_disable.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %nvme_reap_pending_cqes.exit

nvme_pci_disable.exit.for.body.i95_crit_edge:     ; preds = %nvme_pci_disable.exit
  br label %for.body.i95

for.body.i95:                                     ; preds = %for.body.i95.for.body.i95_crit_edge, %nvme_pci_disable.exit.for.body.i95_crit_edge
  %i.015.i = phi i32 [ %i.0.i93, %for.body.i95.for.body.i95_crit_edge ], [ %i.013.i, %nvme_pci_disable.exit.for.body.i95_crit_edge ]
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev, align 8
  %cq_poll_lock.i = getelementptr %struct.nvme_queue, ptr %32, i32 %i.015.i, i32 4
  tail call void @_raw_spin_lock(ptr noundef %cq_poll_lock.i) #16
  %33 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev, align 8
  %arrayidx2.i = getelementptr %struct.nvme_queue, ptr %34, i32 %i.015.i
  %call.i92 = tail call fastcc i32 @nvme_poll_cq(ptr noundef %arrayidx2.i, ptr noundef null) #16
  %35 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev, align 8
  %cq_poll_lock5.i = getelementptr %struct.nvme_queue, ptr %36, i32 %i.015.i, i32 4
  tail call void @_raw_spin_unlock(ptr noundef %cq_poll_lock5.i) #16
  %i.0.i93 = add nsw i32 %i.015.i, -1
  %cmp.not.i94 = icmp eq i32 %i.0.i93, 0
  br i1 %cmp.not.i94, label %for.body.i95.nvme_reap_pending_cqes.exit_crit_edge, label %for.body.i95.for.body.i95_crit_edge

for.body.i95.for.body.i95_crit_edge:              ; preds = %for.body.i95
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i95

for.body.i95.nvme_reap_pending_cqes.exit_crit_edge: ; preds = %for.body.i95
  call void @__sanitizer_cov_trace_pc() #18
  br label %nvme_reap_pending_cqes.exit

nvme_reap_pending_cqes.exit:                      ; preds = %for.body.i95.nvme_reap_pending_cqes.exit_crit_edge, %nvme_pci_disable.exit.nvme_reap_pending_cqes.exit_crit_edge
  %tagset = getelementptr inbounds %struct.nvme_dev, ptr %dev, i32 0, i32 1
  tail call void @blk_mq_tagset_busy_iter(ptr noundef %tagset, ptr noundef nonnull @nvme_cancel_request, ptr noundef %ctrl27105) #16
  %admin_tagset = getelementptr inbounds %struct.nvme_dev, ptr %dev, i32 0, i32 2
  tail call void @blk_mq_tagset_busy_iter(ptr noundef %admin_tagset, ptr noundef nonnull @nvme_cancel_request, ptr noundef %ctrl27105) #16
  tail call void @blk_mq_tagset_wait_completed_request(ptr noundef %tagset) #16
  tail call void @blk_mq_tagset_wait_completed_request(ptr noundef %admin_tagset) #16
  br i1 %shutdown, label %if.then41, label %nvme_reap_pending_cqes.exit.if.end53_crit_edge

nvme_reap_pending_cqes.exit.if.end53_crit_edge:   ; preds = %nvme_reap_pending_cqes.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end53

if.then41:                                        ; preds = %nvme_reap_pending_cqes.exit
  tail call void @nvme_start_queues(ptr noundef %ctrl27105) #16
  %admin_q = getelementptr inbounds %struct.nvme_dev, ptr %dev, i32 0, i32 23, i32 6
  %37 = ptrtoint ptr %admin_q to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %admin_q, align 8
  %tobool44.not = icmp eq ptr %38, null
  br i1 %tobool44.not, label %if.then41.if.end53_crit_edge, label %land.lhs.true45

if.then41.if.end53_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end53

land.lhs.true45:                                  ; preds = %if.then41
  %queue_flags = getelementptr inbounds %struct.request_queue, ptr %38, i32 0, i32 11
  %39 = ptrtoint ptr %queue_flags to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %queue_flags, align 4
  %41 = and i32 %40, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool49.not = icmp eq i32 %41, 0
  br i1 %tobool49.not, label %if.then50, label %land.lhs.true45.if.end53_crit_edge

land.lhs.true45.if.end53_crit_edge:               ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end53

if.then50:                                        ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @nvme_start_admin_queue(ptr noundef %ctrl27105) #16
  br label %if.end53

if.end53:                                         ; preds = %if.then50, %land.lhs.true45.if.end53_crit_edge, %if.then41.if.end53_crit_edge, %nvme_reap_pending_cqes.exit.if.end53_crit_edge
  tail call void @mutex_unlock(ptr noundef %shutdown_lock) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvme_sync_queues(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_max_mapping_size(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nvme_change_ctrl_state(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvme_init_ctrl_finish(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @init_opal_dev(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvme_sec_submit(ptr noundef, i16 noundef zeroext, i8 noundef zeroext, ptr noundef, i32 noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @opal_unlock_from_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_opal_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nvme_setup_host_mem(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %c.i = alloca %struct.nvme_command, align 8
  %descs_dma.i.i = alloca i32, align 4
  %dma_addr.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @max_host_mem_size_mb, align 4
  %conv = zext i32 %0 to i64
  %mul = shl nuw nsw i64 %conv, 20
  %hmpre = getelementptr inbounds %struct.nvme_dev, ptr %dev, i32 0, i32 23, i32 83
  %1 = ptrtoint ptr %hmpre to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %hmpre, align 4
  %conv1 = zext i32 %2 to i64
  %mul2 = shl nuw nsw i64 %conv1, 12
  %hmmin = getelementptr inbounds %struct.nvme_dev, ptr %dev, i32 0, i32 23, i32 84
  %3 = ptrtoint ptr %hmmin to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %hmmin, align 8
  %conv4 = zext i32 %4 to i64
  %mul5 = shl nuw nsw i64 %conv4, 12
  %5 = tail call i64 @llvm.umin.i64(i64 %mul2, i64 %mul)
  call void @__sanitizer_cov_trace_cmp8(i64 %mul5, i64 %mul)
  %cmp7 = icmp ugt i64 %mul5, %mul
  br i1 %cmp7, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %device = getelementptr inbounds %struct.nvme_dev, ptr %dev, i32 0, i32 23, i32 17
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 8
  %shr = lshr i64 %conv4, 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.85, i64 noundef %shr, i32 noundef %0) #21
  tail call fastcc void @nvme_free_host_mem(ptr noundef %dev)
  br label %cleanup

if.end:                                           ; preds = %entry
  %host_mem_descs = getelementptr inbounds %struct.nvme_dev, ptr %dev, i32 0, i32 34
  %8 = ptrtoint ptr %host_mem_descs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %host_mem_descs, align 8
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.end.if.then18_crit_edge, label %if.then10

if.end.if.then18_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then18

if.then10:                                        ; preds = %if.end
  %host_mem_size = getelementptr inbounds %struct.nvme_dev, ptr %dev, i32 0, i32 31
  %10 = ptrtoint ptr %host_mem_size to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %host_mem_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %mul5)
  %cmp11.not = icmp ult i64 %11, %mul5
  br i1 %cmp11.not, label %if.else, label %if.then10.if.end15_crit_edge

if.then10.if.end15_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15

if.else:                                          ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @nvme_free_host_mem(ptr noundef %dev)
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then10.if.end15_crit_edge
  %enable_bits.0.ph = phi i32 [ 3, %if.then10.if.end15_crit_edge ], [ 1, %if.else ]
  %12 = ptrtoint ptr %host_mem_descs to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pr = load ptr, ptr %host_mem_descs, align 8
  %tobool17.not = icmp eq ptr %.pr, null
  br i1 %tobool17.not, label %if.end15.if.then18_crit_edge, label %if.end15.if.end34_crit_edge

if.end15.if.end34_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end34

if.end15.if.then18_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then18

if.then18:                                        ; preds = %if.end15.if.then18_crit_edge, %if.end.if.then18_crit_edge
  %enable_bits.070 = phi i32 [ %enable_bits.0.ph, %if.end15.if.then18_crit_edge ], [ 1, %if.end.if.then18_crit_edge ]
  %13 = tail call i64 @llvm.umin.i64(i64 %5, i64 8388608) #16
  %hmminds1.i = getelementptr inbounds %struct.nvme_dev, ptr %dev, i32 0, i32 23, i32 85
  %14 = ptrtoint ptr %hmminds1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %hmminds1.i, align 4
  %mul.i = shl i32 %15, 12
  %16 = tail call i32 @llvm.umax.i32(i32 %mul.i, i32 8192) #16
  %conv.i = zext i32 %16 to i64
  %nr_host_mem_descs.i.i = getelementptr inbounds %struct.nvme_dev, ptr %dev, i32 0, i32 32
  %host_mem_size.i = getelementptr inbounds %struct.nvme_dev, ptr %dev, i32 0, i32 31
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %conv.i)
  %cmp8.not35.i = icmp ult i64 %13, %conv.i
  br i1 %cmp8.not35.i, label %if.then18.do.end23_crit_edge, label %for.body.lr.ph.i

if.then18.do.end23_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end23

for.body.lr.ph.i:                                 ; preds = %if.then18
  %hmmaxd.i.i = getelementptr inbounds %struct.nvme_dev, ptr %dev, i32 0, i32 23, i32 86
  %dev199.i.i = getelementptr inbounds %struct.nvme_dev, ptr %dev, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %cmp209430.i.i = icmp ne i64 %5, 0
  %host_mem_descs_dma.i.i = getelementptr inbounds %struct.nvme_dev, ptr %dev, i32 0, i32 33
  %host_mem_desc_bufs.i.i = getelementptr inbounds %struct.nvme_dev, ptr %dev, i32 0, i32 35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool11.not.i = icmp ne i32 %4, 0
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %chunk_size.036.i = phi i64 [ %13, %for.body.lr.ph.i ], [ %div29.i, %for.inc.i.for.body.i_crit_edge ]
  %conv10.i = trunc i64 %chunk_size.036.i to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %descs_dma.i.i) #16
  %17 = ptrtoint ptr %descs_dma.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %descs_dma.i.i, align 4, !annotation !349
  %add.i.i = add nsw i64 %chunk_size.036.i, -1
  %sub.i.i = add nsw i64 %add.i.i, %5
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub.i.i)
  %cmp169.i.i = icmp ult i64 %sub.i.i, 4294967296
  br i1 %cmp169.i.i, label %if.then173.i.i, label %if.else179.i.i, !prof !367

if.then173.i.i:                                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %conv174.i.i = trunc i64 %sub.i.i to i32
  %div177.i.i = udiv i32 %conv174.i.i, %conv10.i
  br label %if.end183.i.i

if.else179.i.i:                                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %18 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv10.i, i64 %sub.i.i) #22, !srcloc !368
  %asmresult1.i.i.i = extractvalue { i64, i64 } %18, 1
  %extract.t425.i.i = trunc i64 %asmresult1.i.i.i to i32
  br label %if.end183.i.i

if.end183.i.i:                                    ; preds = %if.else179.i.i, %if.then173.i.i
  %tmp.0.off0.i.i = phi i32 [ %div177.i.i, %if.then173.i.i ], [ %extract.t425.i.i, %if.else179.i.i ]
  %19 = ptrtoint ptr %hmmaxd.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %hmmaxd.i.i, align 8
  %conv186.i.i = zext i16 %20 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool187.not.i.i = icmp ne i16 %20, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %tmp.0.off0.i.i, i32 %conv186.i.i)
  %cmp192.i.i = icmp ugt i32 %tmp.0.off0.i.i, %conv186.i.i
  %or.cond.i.i = select i1 %tobool187.not.i.i, i1 %cmp192.i.i, i1 false
  %max_entries.0.i.i = select i1 %or.cond.i.i, i32 %conv186.i.i, i32 %tmp.0.off0.i.i
  %21 = ptrtoint ptr %dev199.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev199.i.i, align 8
  %mul200.i.i = shl i32 %max_entries.0.i.i, 4
  %call.i.i.i = call ptr @dma_alloc_attrs(ptr noundef %22, i32 noundef %mul200.i.i, ptr noundef nonnull %descs_dma.i.i, i32 noundef 3264, i32 noundef 0) #16
  %tobool202.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool202.not.i.i, label %if.end183.i.i.__nvme_alloc_host_mem.exit.i_crit_edge, label %if.end204.i.i

if.end183.i.i.__nvme_alloc_host_mem.exit.i_crit_edge: ; preds = %if.end183.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__nvme_alloc_host_mem.exit.i

if.end204.i.i:                                    ; preds = %if.end183.i.i
  %23 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %max_entries.0.i.i, i32 4) #16
  %24 = extractvalue { i32, i1 } %23, 1
  br i1 %24, label %if.end204.i.i.out_free_descs.i.i_crit_edge, label %if.end7.i.i.i.i, !prof !350

if.end204.i.i.out_free_descs.i.i_crit_edge:       ; preds = %if.end204.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_free_descs.i.i

if.end7.i.i.i.i:                                  ; preds = %if.end204.i.i
  %25 = extractvalue { i32, i1 } %23, 0
  %call8.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %25, i32 noundef 3520) #20
  %tobool206.not.i.i = icmp eq ptr %call8.i.i.i.i, null
  br i1 %tobool206.not.i.i, label %if.end7.i.i.i.i.out_free_descs.i.i_crit_edge, label %for.cond.preheader.i.i

if.end7.i.i.i.i.out_free_descs.i.i_crit_edge:     ; preds = %if.end7.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_free_descs.i.i

for.cond.preheader.i.i:                           ; preds = %if.end7.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max_entries.0.i.i)
  %cmp211431.i.i = icmp ne i32 %max_entries.0.i.i, 0
  %or.cond391432.i.i = select i1 %cmp209430.i.i, i1 %cmp211431.i.i, i1 false
  br i1 %or.cond391432.i.i, label %for.cond.preheader.i.i.for.body.i.i_crit_edge, label %for.cond.preheader.i.i.while.end.i.i_crit_edge

for.cond.preheader.i.i.while.end.i.i_crit_edge:   ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i.i

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %size.0434.i.i = phi i64 [ %add235.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %i.0433.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma_addr.i.i) #16
  %26 = ptrtoint ptr %dma_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %dma_addr.i.i, align 4, !annotation !349
  %sub214.i.i = sub i64 %5, %size.0434.i.i
  %27 = call i64 @llvm.umin.i64(i64 %sub214.i.i, i64 %chunk_size.036.i) #16
  %28 = trunc i64 %27 to i32
  %29 = ptrtoint ptr %dev199.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev199.i.i, align 8
  %call224.i.i = call ptr @dma_alloc_attrs(ptr noundef %30, i32 noundef %28, ptr noundef nonnull %dma_addr.i.i, i32 noundef 3264, i32 noundef 272) #16
  %arrayidx.i.i = getelementptr ptr, ptr %call8.i.i.i.i, i32 %i.0433.i.i
  %31 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call224.i.i, ptr %arrayidx.i.i, align 4
  %tobool226.not.i.i = icmp eq ptr %call224.i.i, null
  br i1 %tobool226.not.i.i, label %cleanup.i.i, label %for.inc.i.i

cleanup.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_addr.i.i) #16
  br label %for.end.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %32 = ptrtoint ptr %dma_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dma_addr.i.i, align 4
  %conv229.i.i = zext i32 %33 to i64
  %34 = call i64 @llvm.bswap.i64(i64 %conv229.i.i) #16
  %arrayidx230.i.i = getelementptr %struct.nvme_host_mem_buf_desc, ptr %call.i.i.i, i32 %i.0433.i.i
  %35 = ptrtoint ptr %arrayidx230.i.i to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %34, ptr %arrayidx230.i.i, align 8
  %div231390.i.i = lshr i32 %28, 12
  %36 = call i32 @llvm.bswap.i32(i32 %div231390.i.i) #16
  %size233.i.i = getelementptr %struct.nvme_host_mem_buf_desc, ptr %call.i.i.i, i32 %i.0433.i.i, i32 1
  %37 = ptrtoint ptr %size233.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %size233.i.i, align 8
  %inc.i.i = add nuw i32 %i.0433.i.i, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_addr.i.i) #16
  %add235.i.i = add i64 %27, %size.0434.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add235.i.i, i64 %5)
  %cmp209.i.i = icmp ult i64 %add235.i.i, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i, i32 %max_entries.0.i.i)
  %cmp211.i.i = icmp ult i32 %inc.i.i, %max_entries.0.i.i
  %or.cond391.i.i = select i1 %cmp209.i.i, i1 %cmp211.i.i, i1 false
  br i1 %or.cond391.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.for.end.i.i_crit_edge

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %cleanup.i.i
  %i.0429.i.i = phi i32 [ %i.0433.i.i, %cleanup.i.i ], [ %inc.i.i, %for.inc.i.i.for.end.i.i_crit_edge ]
  %size.0427.i.i = phi i64 [ %size.0434.i.i, %cleanup.i.i ], [ %add235.i.i, %for.inc.i.i.for.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %size.0427.i.i)
  %tobool236.not.i.i = icmp eq i64 %size.0427.i.i, 0
  br i1 %tobool236.not.i.i, label %while.cond.preheader.i.i, label %if.then.i

while.cond.preheader.i.i:                         ; preds = %for.end.i.i
  %dec436.i.i = add i32 %i.0429.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dec436.i.i)
  %cmp239437.i.i = icmp sgt i32 %dec436.i.i, -1
  br i1 %cmp239437.i.i, label %while.cond.preheader.i.i.while.body.i.i_crit_edge, label %while.cond.preheader.i.i.while.end.i.i_crit_edge

while.cond.preheader.i.i.while.end.i.i_crit_edge: ; preds = %while.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i.i

while.cond.preheader.i.i.while.body.i.i_crit_edge: ; preds = %while.cond.preheader.i.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.cond.preheader.i.i.while.body.i.i_crit_edge
  %dec438.i.i = phi i32 [ %dec.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %dec436.i.i, %while.cond.preheader.i.i.while.body.i.i_crit_edge ]
  %arrayidx242.i.i = getelementptr %struct.nvme_host_mem_buf_desc, ptr %call.i.i.i, i32 %dec438.i.i
  %size243.i.i = getelementptr %struct.nvme_host_mem_buf_desc, ptr %call.i.i.i, i32 %dec438.i.i, i32 1
  %38 = ptrtoint ptr %size243.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %size243.i.i, align 8
  %40 = call i32 @llvm.bswap.i32(i32 %39) #16
  %mul244.i.i = shl i32 %40, 12
  %41 = ptrtoint ptr %dev199.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev199.i.i, align 8
  %arrayidx246.i.i = getelementptr ptr, ptr %call8.i.i.i.i, i32 %dec438.i.i
  %43 = ptrtoint ptr %arrayidx246.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx246.i.i, align 4
  %45 = ptrtoint ptr %arrayidx242.i.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %arrayidx242.i.i, align 8
  %47 = call i64 @llvm.bswap.i64(i64 %46) #16
  %conv249.i.i = trunc i64 %47 to i32
  call void @dma_free_attrs(ptr noundef %42, i32 noundef %mul244.i.i, ptr noundef %44, i32 noundef %conv249.i.i, i32 noundef 272) #16
  %dec.i.i = add nsw i32 %dec438.i.i, -1
  %cmp239.i.not.i = icmp eq i32 %dec438.i.i, 0
  br i1 %cmp239.i.not.i, label %while.body.i.i.while.end.i.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i.i

while.body.i.i.while.end.i.i_crit_edge:           ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %while.body.i.i.while.end.i.i_crit_edge, %while.cond.preheader.i.i.while.end.i.i_crit_edge, %for.cond.preheader.i.i.while.end.i.i_crit_edge
  call void @kfree(ptr noundef nonnull %call8.i.i.i.i) #16
  br label %out_free_descs.i.i

out_free_descs.i.i:                               ; preds = %while.end.i.i, %if.end7.i.i.i.i.out_free_descs.i.i_crit_edge, %if.end204.i.i.out_free_descs.i.i_crit_edge
  %48 = ptrtoint ptr %dev199.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev199.i.i, align 8
  %50 = ptrtoint ptr %descs_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %descs_dma.i.i, align 4
  call void @dma_free_attrs(ptr noundef %49, i32 noundef %mul200.i.i, ptr noundef nonnull %call.i.i.i, i32 noundef %51, i32 noundef 0) #16
  br label %__nvme_alloc_host_mem.exit.i

__nvme_alloc_host_mem.exit.i:                     ; preds = %out_free_descs.i.i, %if.end183.i.i.__nvme_alloc_host_mem.exit.i_crit_edge
  %52 = ptrtoint ptr %host_mem_descs to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %host_mem_descs, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %descs_dma.i.i) #16
  br label %for.inc.i

if.then.i:                                        ; preds = %for.end.i.i
  %53 = ptrtoint ptr %nr_host_mem_descs.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %i.0429.i.i, ptr %nr_host_mem_descs.i.i, align 8
  %54 = ptrtoint ptr %host_mem_size.i to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %size.0427.i.i, ptr %host_mem_size.i, align 8
  %55 = ptrtoint ptr %host_mem_descs to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call.i.i.i, ptr %host_mem_descs, align 8
  %56 = ptrtoint ptr %descs_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %descs_dma.i.i, align 4
  %58 = ptrtoint ptr %host_mem_descs_dma.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %host_mem_descs_dma.i.i, align 4
  %59 = ptrtoint ptr %host_mem_desc_bufs.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call8.i.i.i.i, ptr %host_mem_desc_bufs.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %descs_dma.i.i) #16
  call void @__sanitizer_cov_trace_cmp8(i64 %size.0427.i.i, i64 %mul5)
  %cmp12.not.i = icmp ult i64 %size.0427.i.i, %mul5
  %or.cond = select i1 %tobool11.not.i, i1 %cmp12.not.i, i1 false
  br i1 %or.cond, label %if.end.i, label %do.end29

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  call fastcc void @nvme_free_host_mem(ptr noundef %dev) #16
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %__nvme_alloc_host_mem.exit.i
  %div29.i = lshr i64 %chunk_size.036.i, 1
  %cmp8.not.i = icmp ult i64 %div29.i, %conv.i
  br i1 %cmp8.not.i, label %for.inc.i.do.end23_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.inc.i.do.end23_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end23

do.end23:                                         ; preds = %for.inc.i.do.end23_crit_edge, %if.then18.do.end23_crit_edge
  %device25 = getelementptr inbounds %struct.nvme_dev, ptr %dev, i32 0, i32 23, i32 17
  %60 = ptrtoint ptr %device25 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %device25, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %61, ptr noundef nonnull @.str.88) #21
  br label %cleanup

do.end29:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  %device31 = getelementptr inbounds %struct.nvme_dev, ptr %dev, i32 0, i32 23, i32 17
  %62 = ptrtoint ptr %device31 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %device31, align 8
  %64 = ptrtoint ptr %host_mem_size.i to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %host_mem_size.i, align 8
  %shr33 = lshr i64 %65, 20
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %63, ptr noundef nonnull @.str.91, i64 noundef %shr33) #21
  br label %if.end34

if.end34:                                         ; preds = %do.end29, %if.end15.if.end34_crit_edge
  %enable_bits.069 = phi i32 [ %enable_bits.070, %do.end29 ], [ %enable_bits.0.ph, %if.end15.if.end34_crit_edge ]
  %host_mem_size1.i = getelementptr inbounds %struct.nvme_dev, ptr %dev, i32 0, i32 31
  %66 = ptrtoint ptr %host_mem_size1.i to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %host_mem_size1.i, align 8
  %shr.i = lshr i64 %67, 12
  %conv.i65 = trunc i64 %shr.i to i32
  %host_mem_descs_dma.i = getelementptr inbounds %struct.nvme_dev, ptr %dev, i32 0, i32 33
  %68 = ptrtoint ptr %host_mem_descs_dma.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %host_mem_descs_dma.i, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %c.i) #16
  %70 = call ptr @memset(ptr %c.i, i32 0, i32 40)
  %71 = ptrtoint ptr %c.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 9, ptr %c.i, align 8
  %fid.i = getelementptr inbounds %struct.nvme_features, ptr %c.i, i32 0, i32 6
  %72 = ptrtoint ptr %fid.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 218103808, ptr %fid.i, align 8
  %73 = call i32 @llvm.bswap.i32(i32 %enable_bits.069) #16
  %dword11.i = getelementptr inbounds %struct.nvme_features, ptr %c.i, i32 0, i32 7
  %74 = ptrtoint ptr %dword11.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %dword11.i, align 4
  %75 = call i32 @llvm.bswap.i32(i32 %conv.i65) #16
  %dword12.i = getelementptr inbounds %struct.nvme_features, ptr %c.i, i32 0, i32 8
  %76 = ptrtoint ptr %dword12.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %dword12.i, align 8
  %77 = call i32 @llvm.bswap.i32(i32 %69) #16
  %dword13.i = getelementptr inbounds %struct.nvme_features, ptr %c.i, i32 0, i32 9
  %78 = ptrtoint ptr %dword13.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %dword13.i, align 4
  %dword14.i = getelementptr inbounds %struct.nvme_features, ptr %c.i, i32 0, i32 10
  %79 = ptrtoint ptr %dword14.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %dword14.i, align 8
  %nr_host_mem_descs.i = getelementptr inbounds %struct.nvme_dev, ptr %dev, i32 0, i32 32
  %80 = ptrtoint ptr %nr_host_mem_descs.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %nr_host_mem_descs.i, align 8
  %82 = call i32 @llvm.bswap.i32(i32 %81) #16
  %dword15.i = getelementptr inbounds %struct.nvme_features, ptr %c.i, i32 0, i32 11
  %83 = ptrtoint ptr %dword15.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %dword15.i, align 4
  %admin_q.i = getelementptr inbounds %struct.nvme_dev, ptr %dev, i32 0, i32 23, i32 6
  %84 = ptrtoint ptr %admin_q.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %admin_q.i, align 8
  %call.i = call i32 @nvme_submit_sync_cmd(ptr noundef %85, ptr noundef nonnull %c.i, ptr noundef null, i32 noundef 0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %nvme_set_host_mem.exit.thread, label %if.then37

nvme_set_host_mem.exit.thread:                    ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #18
  %hmb.i = getelementptr inbounds %struct.nvme_dev, ptr %dev, i32 0, i32 25
  %86 = trunc i32 %enable_bits.069 to i8
  %87 = and i8 %86, 1
  %88 = ptrtoint ptr %hmb.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %87, ptr %hmb.i, align 4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %c.i) #16
  br label %cleanup

if.then37:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #18
  %device.i = getelementptr inbounds %struct.nvme_dev, ptr %dev, i32 0, i32 23, i32 17
  %89 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %device.i, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %90, ptr noundef nonnull @.str.93, i32 noundef %call.i, i32 noundef %enable_bits.069) #21
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %c.i) #16
  call fastcc void @nvme_free_host_mem(ptr noundef %dev)
  br label %cleanup

cleanup:                                          ; preds = %if.then37, %nvme_set_host_mem.exit.thread, %do.end23, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %do.end23 ], [ %call.i, %if.then37 ], [ 0, %nvme_set_host_mem.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvme_kill_queues(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvme_remove_namespaces(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvme_start_queues(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvme_wait_freeze(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvme_unfreeze(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvme_start_ctrl(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvme_start_freeze(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvme_wait_freeze_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvme_stop_queues(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nvme_suspend_queue(ptr noundef %nvmeq) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.nvme_queue, ptr %nvmeq, i32 0, i32 17
  %call = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %flags) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %do.body

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !370
  tail call void @arm_heavy_mb() #16
  %0 = ptrtoint ptr %nvmeq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nvmeq, align 128
  %online_queues = getelementptr inbounds %struct.nvme_dev, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %online_queues to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %online_queues, align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr %online_queues, align 4
  %qid = getelementptr inbounds %struct.nvme_queue, ptr %nvmeq, i32 0, i32 14
  %4 = ptrtoint ptr %qid to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %qid, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool1.not = icmp eq i16 %5, 0
  br i1 %tobool1.not, label %land.lhs.true, label %do.body.if.end7_crit_edge

do.body.if.end7_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7

land.lhs.true:                                    ; preds = %do.body
  %6 = ptrtoint ptr %nvmeq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %nvmeq, align 128
  %admin_q = getelementptr inbounds %struct.nvme_dev, ptr %7, i32 0, i32 23, i32 6
  %8 = ptrtoint ptr %admin_q to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %admin_q, align 8
  %tobool3.not = icmp eq ptr %9, null
  br i1 %tobool3.not, label %land.lhs.true.if.end7_crit_edge, label %if.then4

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %ctrl = getelementptr inbounds %struct.nvme_dev, ptr %7, i32 0, i32 23
  tail call void @nvme_stop_admin_queue(ptr noundef %ctrl) #16
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %land.lhs.true.if.end7_crit_edge, %do.body.if.end7_crit_edge
  %call9 = tail call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %flags) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then11, label %if.end7.return_crit_edge

if.end7.return_crit_edge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  %10 = ptrtoint ptr %nvmeq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %nvmeq, align 128
  %dev13 = getelementptr inbounds %struct.nvme_dev, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev13, align 8
  %add.ptr = getelementptr i8, ptr %13, i32 -136
  %cq_vector = getelementptr inbounds %struct.nvme_queue, ptr %nvmeq, i32 0, i32 10
  %14 = ptrtoint ptr %cq_vector to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %cq_vector, align 64
  %conv = zext i16 %15 to i32
  tail call void @pci_free_irq(ptr noundef %add.ptr, i32 noundef %conv, ptr noundef %nvmeq) #16
  br label %return

return:                                           ; preds = %if.then11, %if.end7.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_tagset_busy_iter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nvme_cancel_request(ptr noundef, ptr noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_tagset_wait_completed_request(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvme_start_admin_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @__nvme_disable_io_queues(ptr nocapture noundef readonly %dev, i8 noundef zeroext %opcode) unnamed_addr #2 align 64 {
entry:
  %cmd.i = alloca %struct.nvme_command, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %online_queues = getelementptr inbounds %struct.nvme_dev, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %online_queues to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %online_queues, align 4
  %sub = add i32 %1, -1
  %qid2.i = getelementptr inbounds %struct.nvme_delete_queue, ptr %cmd.i, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %opcode)
  %cmp.i = icmp eq i8 %opcode, 4
  %cond.i = select i1 %cmp.i, ptr @nvme_del_cq_end, ptr @nvme_del_queue_end
  br label %retry

retry:                                            ; preds = %while.body3.retry_crit_edge, %entry
  %nr_queues.0 = phi i32 [ %sub, %entry ], [ %nr_queues.13345, %while.body3.retry_crit_edge ]
  %sent.0 = phi i32 [ 0, %entry ], [ %sent.3, %while.body3.retry_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @admin_timeout to i32))
  %2 = load i32, ptr @admin_timeout, align 4
  %mul = mul i32 %2, 100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_queues.0)
  %cmp35 = icmp sgt i32 %nr_queues.0, 0
  br i1 %cmp35, label %while.body.preheader, label %while.end

while.body.preheader:                             ; preds = %retry
  %3 = add i32 %nr_queues.0, %sent.0
  br label %while.body

while.body:                                       ; preds = %nvme_delete_queue.exit.thread.while.body_crit_edge, %while.body.preheader
  %sent.137 = phi i32 [ %inc, %nvme_delete_queue.exit.thread.while.body_crit_edge ], [ %sent.0, %while.body.preheader ]
  %nr_queues.136 = phi i32 [ %dec, %nvme_delete_queue.exit.thread.while.body_crit_edge ], [ %nr_queues.0, %while.body.preheader ]
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  %arrayidx = getelementptr %struct.nvme_queue, ptr %5, i32 %nr_queues.136
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 128
  %admin_q.i = getelementptr inbounds %struct.nvme_dev, ptr %7, i32 0, i32 23, i32 6
  %8 = ptrtoint ptr %admin_q.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %admin_q.i, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd.i) #16
  %10 = call ptr @memset(ptr %cmd.i, i32 0, i32 64)
  %11 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %opcode, ptr %cmd.i, align 8
  %qid.i = getelementptr %struct.nvme_queue, ptr %5, i32 %nr_queues.136, i32 14
  %12 = ptrtoint ptr %qid.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %qid.i, align 8
  %14 = call i16 @llvm.bswap.i16(i16 %13) #16
  %15 = ptrtoint ptr %qid2.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %qid2.i, align 8
  %call.i = call ptr @nvme_alloc_request(ptr noundef %9, ptr noundef nonnull %cmd.i, i32 noundef 1) #16
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %while.end.thread49, label %nvme_delete_queue.exit.thread

nvme_delete_queue.exit.thread:                    ; preds = %while.body
  %end_io_data.i = getelementptr inbounds %struct.request, ptr %call.i, i32 0, i32 33
  %16 = ptrtoint ptr %end_io_data.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %arrayidx, ptr %end_io_data.i, align 4
  %delete_done.i = getelementptr %struct.nvme_queue, ptr %5, i32 %nr_queues.136, i32 22
  %17 = ptrtoint ptr %delete_done.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %delete_done.i, align 4
  %wait.i.i = getelementptr %struct.nvme_queue, ptr %5, i32 %nr_queues.136, i32 22, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.34, ptr noundef nonnull @init_completion.__key) #16
  call void @blk_execute_rq_nowait(ptr noundef %call.i, i1 noundef zeroext false, ptr noundef nonnull %cond.i) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd.i) #16
  %dec = add nsw i32 %nr_queues.136, -1
  %inc = add i32 %sent.137, 1
  %cmp = icmp sgt i32 %nr_queues.136, 1
  br i1 %cmp, label %nvme_delete_queue.exit.thread.while.body_crit_edge, label %nvme_delete_queue.exit.thread.while.end.thread_crit_edge

nvme_delete_queue.exit.thread.while.end.thread_crit_edge: ; preds = %nvme_delete_queue.exit.thread
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.thread

nvme_delete_queue.exit.thread.while.body_crit_edge: ; preds = %nvme_delete_queue.exit.thread
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body

while.end.thread49:                               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd.i) #16
  br label %18

while.end:                                        ; preds = %retry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_queues.0)
  %tobool11.not = icmp eq i32 %nr_queues.0, 0
  br i1 %tobool11.not, label %while.end.while.end.thread_crit_edge, label %while.end._crit_edge

while.end._crit_edge:                             ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %18

while.end.while.end.thread_crit_edge:             ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.thread

while.end.thread:                                 ; preds = %while.end.while.end.thread_crit_edge, %nvme_delete_queue.exit.thread.while.end.thread_crit_edge
  %sent.13148 = phi i32 [ %sent.0, %while.end.while.end.thread_crit_edge ], [ %3, %nvme_delete_queue.exit.thread.while.end.thread_crit_edge ]
  br label %18

18:                                               ; preds = %while.end.thread, %while.end._crit_edge, %while.end.thread49
  %sent.13147 = phi i32 [ %sent.13148, %while.end.thread ], [ %sent.0, %while.end._crit_edge ], [ %sent.137, %while.end.thread49 ]
  %nr_queues.13345 = phi i32 [ 0, %while.end.thread ], [ %nr_queues.0, %while.end._crit_edge ], [ %nr_queues.136, %while.end.thread49 ]
  %19 = phi i32 [ 0, %while.end.thread ], [ 2, %while.end._crit_edge ], [ 2, %while.end.thread49 ]
  br label %while.cond1

while.cond1:                                      ; preds = %while.body3.while.cond1_crit_edge, %18
  %sent.2 = phi i32 [ %sent.13147, %18 ], [ %sent.3, %while.body3.while.cond1_crit_edge ]
  %timeout.0 = phi i32 [ %mul, %18 ], [ %call6, %while.body3.while.cond1_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sent.2)
  %tobool2.not = icmp eq i32 %sent.2, 0
  br i1 %tobool2.not, label %while.cond1.cleanup15_crit_edge, label %while.body3

while.cond1.cleanup15_crit_edge:                  ; preds = %while.cond1
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup15

while.body3:                                      ; preds = %while.cond1
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 8
  %add = add i32 %sent.2, %nr_queues.13345
  %delete_done = getelementptr %struct.nvme_queue, ptr %21, i32 %add, i32 22
  %call6 = call i32 @wait_for_completion_io_timeout(ptr noundef %delete_done, i32 noundef %timeout.0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp eq i32 %call6, 0
  %not.cmp7 = xor i1 %cmp7, true
  %dec10 = sext i1 %not.cmp7 to i32
  %sent.3 = add i32 %sent.2, %dec10
  %cleanup.dest.slot.0 = select i1 %cmp7, i32 1, i32 %19
  %22 = zext i32 %cleanup.dest.slot.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.127)
  switch i32 %cleanup.dest.slot.0, label %while.body3.cleanup15_crit_edge [
    i32 0, label %while.body3.while.cond1_crit_edge
    i32 2, label %while.body3.retry_crit_edge
  ]

while.body3.retry_crit_edge:                      ; preds = %while.body3
  call void @__sanitizer_cov_trace_pc() #18
  br label %retry

while.body3.while.cond1_crit_edge:                ; preds = %while.body3
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond1

while.body3.cleanup15_crit_edge:                  ; preds = %while.body3
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup15

cleanup15:                                        ; preds = %while.body3.cleanup15_crit_edge, %while.cond1.cleanup15_crit_edge
  ret i1 %tobool2.not
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_io_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvme_alloc_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_execute_rq_nowait(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvme_del_cq_end(ptr noundef %req, i8 noundef zeroext %error) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %error)
  %tobool.not = icmp eq i8 %error, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %end_io_data = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 33
  %0 = ptrtoint ptr %end_io_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %end_io_data, align 4
  %flags = getelementptr inbounds %struct.nvme_queue, ptr %1, i32 0, i32 17
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %end_io_data.i = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 33
  %2 = ptrtoint ptr %end_io_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %end_io_data.i, align 4
  tail call void @blk_mq_free_request(ptr noundef %req) #16
  %delete_done.i = getelementptr inbounds %struct.nvme_queue, ptr %3, i32 0, i32 22
  tail call void @complete(ptr noundef %delete_done.i) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvme_del_queue_end(ptr noundef %req, i8 noundef zeroext %error) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %end_io_data = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 33
  %0 = ptrtoint ptr %end_io_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %end_io_data, align 4
  tail call void @blk_mq_free_request(ptr noundef %req) #16
  %delete_done = getelementptr inbounds %struct.nvme_queue, ptr %1, i32 0, i32 22
  tail call void @complete(ptr noundef %delete_done) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_free_request(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvme_shutdown_ctrl(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvme_disable_ctrl(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nvme_poll_irqdisable(ptr noundef %nvmeq) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %nvmeq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nvmeq, align 128
  %dev1 = getelementptr inbounds %struct.nvme_dev, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 8
  %flags = getelementptr inbounds %struct.nvme_queue, ptr %nvmeq, i32 0, i32 17
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags, align 4
  %6 = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.if.end30_crit_edge, label %land.rhs

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end30

land.rhs:                                         ; preds = %entry
  %.b50 = load i1, ptr @nvme_poll_irqdisable.__already_done, align 1
  br i1 %.b50, label %land.rhs.if.end30_crit_edge, label %if.then, !prof !367

land.rhs.if.end30_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end30

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @nvme_poll_irqdisable.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 1174, i32 noundef 9, ptr noundef null) #16
  br label %if.end30

if.end30:                                         ; preds = %if.then, %land.rhs.if.end30_crit_edge, %entry.if.end30_crit_edge
  %add.ptr = getelementptr i8, ptr %3, i32 -136
  %cq_vector = getelementptr inbounds %struct.nvme_queue, ptr %nvmeq, i32 0, i32 10
  %7 = ptrtoint ptr %cq_vector to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %cq_vector, align 64
  %conv = zext i16 %8 to i32
  %call38 = tail call i32 @pci_irq_vector(ptr noundef %add.ptr, i32 noundef %conv) #16
  tail call void @disable_irq(i32 noundef %call38) #16
  %call39 = tail call fastcc i32 @nvme_poll_cq(ptr noundef %nvmeq, ptr noundef null)
  %9 = ptrtoint ptr %cq_vector to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %cq_vector, align 64
  %conv41 = zext i16 %10 to i32
  %call42 = tail call i32 @pci_irq_vector(ptr noundef %add.ptr, i32 noundef %conv41) #16
  tail call void @enable_irq(i32 noundef %call42) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_irq_vector(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nvme_poll_cq(ptr nocapture noundef %nvmeq, ptr noundef %iob) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %cqes.i = getelementptr inbounds %struct.nvme_queue, ptr %nvmeq, i32 0, i32 5
  %cq_head.i = getelementptr inbounds %struct.nvme_queue, ptr %nvmeq, i32 0, i32 13
  %cq_phase.i = getelementptr inbounds %struct.nvme_queue, ptr %nvmeq, i32 0, i32 15
  %0 = ptrtoint ptr %cqes.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cqes.i, align 4
  %2 = ptrtoint ptr %cq_head.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %cq_head.i, align 2
  %idxprom.i24 = zext i16 %3 to i32
  %status.i25 = getelementptr %struct.nvme_completion, ptr %1, i32 %idxprom.i24, i32 4
  %4 = ptrtoint ptr %status.i25 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load volatile i16, ptr %status.i25, align 2
  %6 = lshr i16 %5, 8
  %7 = and i16 %6, 1
  %8 = ptrtoint ptr %cq_phase.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %cq_phase.i, align 2
  %10 = zext i8 %9 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %10)
  %cmp.i26 = icmp eq i16 %7, %10
  br i1 %cmp.i26, label %while.body.lr.ph, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

while.body.lr.ph:                                 ; preds = %entry
  %qid.i = getelementptr inbounds %struct.nvme_queue, ptr %nvmeq, i32 0, i32 14
  %sq_tail.i = getelementptr inbounds %struct.nvme_queue, ptr %nvmeq, i32 0, i32 11
  %tobool.not.i61.i = icmp eq ptr %iob, null
  %complete6.i.i = getelementptr inbounds %struct.io_comp_batch, ptr %iob, i32 0, i32 2
  %need_ts.i.i = getelementptr inbounds %struct.io_comp_batch, ptr %iob, i32 0, i32 1
  %q_depth.i = getelementptr inbounds %struct.nvme_queue, ptr %nvmeq, i32 0, i32 9
  br label %while.body

while.body:                                       ; preds = %nvme_update_cq_head.exit.while.body_crit_edge, %while.body.lr.ph
  %found.027 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %nvme_update_cq_head.exit.while.body_crit_edge ]
  %inc = add i32 %found.027, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !371
  %11 = ptrtoint ptr %cq_head.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %cq_head.i, align 2
  %13 = ptrtoint ptr %cqes.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cqes.i, align 4
  %idxprom.i8 = zext i16 %12 to i32
  %arrayidx.i = getelementptr %struct.nvme_completion, ptr %14, i32 %idxprom.i8
  %command_id1.i = getelementptr %struct.nvme_completion, ptr %14, i32 %idxprom.i8, i32 3
  %15 = ptrtoint ptr %command_id1.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load volatile i16, ptr %command_id1.i, align 4
  %17 = ptrtoint ptr %qid.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %qid.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool.not.i.i = icmp eq i16 %18, 0
  %19 = and i16 %16, 4095
  call void @__sanitizer_cov_trace_const_cmp2(i16 30, i16 %19)
  %cmp.i.i = icmp ugt i16 %19, 30
  %20 = and i1 %tobool.not.i.i, %cmp.i.i
  %21 = ptrtoint ptr %nvmeq to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %nvmeq, align 128
  br i1 %20, label %if.then.i, label %if.end.i, !prof !350

if.then.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  %ctrl.i = getelementptr inbounds %struct.nvme_dev, ptr %22, i32 0, i32 23
  %status.i9 = getelementptr %struct.nvme_completion, ptr %14, i32 %idxprom.i8, i32 4
  %23 = ptrtoint ptr %status.i9 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %status.i9, align 2
  tail call void @nvme_complete_async_event(ptr noundef %ctrl.i, i16 noundef zeroext %24, ptr noundef %arrayidx.i) #16
  br label %nvme_handle_cqe.exit

if.end.i:                                         ; preds = %while.body
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %tags.i.i = getelementptr inbounds %struct.nvme_dev, ptr %22, i32 0, i32 2, i32 11
  %25 = ptrtoint ptr %tags.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tags.i.i, align 4
  br label %nvme_queue_tagset.exit.i

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %tags2.i.i = getelementptr inbounds %struct.nvme_dev, ptr %22, i32 0, i32 1, i32 11
  %27 = ptrtoint ptr %tags2.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tags2.i.i, align 4
  %conv.i.i = zext i16 %18 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -1
  %arrayidx4.i.i = getelementptr ptr, ptr %28, i32 %sub.i.i
  br label %nvme_queue_tagset.exit.i

nvme_queue_tagset.exit.i:                         ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.in.i.i = phi ptr [ %arrayidx4.i.i, %if.end.i.i ], [ %26, %if.then.i.i ]
  %29 = ptrtoint ptr %retval.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %retval.0.i.i = load ptr, ptr %retval.0.in.i.i, align 4
  %conv5.i.i = zext i16 %19 to i32
  %30 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %retval.0.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %conv5.i.i)
  %cmp.i.i.i = icmp ugt i32 %31, %conv5.i.i
  br i1 %cmp.i.i.i, label %blk_mq_tag_to_rq.exit.i.i, label %nvme_queue_tagset.exit.i.do.end.i.i_crit_edge

nvme_queue_tagset.exit.i.do.end.i.i_crit_edge:    ; preds = %nvme_queue_tagset.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i.i

blk_mq_tag_to_rq.exit.i.i:                        ; preds = %nvme_queue_tagset.exit.i
  %rqs.i.i.i = getelementptr inbounds %struct.blk_mq_tags, ptr %retval.0.i.i, i32 0, i32 5
  %32 = ptrtoint ptr %rqs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rqs.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr ptr, ptr %33, i32 %conv5.i.i
  %34 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i.i.i, align 4
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %35) #16, !srcloc !372
  %36 = ptrtoint ptr %rqs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rqs.i.i.i, align 4
  %arrayidx2.i.i.i = getelementptr ptr, ptr %37, i32 %conv5.i.i
  %38 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx2.i.i.i, align 4
  %tobool.not.i53.i = icmp eq ptr %39, null
  br i1 %tobool.not.i53.i, label %blk_mq_tag_to_rq.exit.i.i.do.end.i.i_crit_edge, label %if.end.i54.i, !prof !350

blk_mq_tag_to_rq.exit.i.i.do.end.i.i_crit_edge:   ; preds = %blk_mq_tag_to_rq.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %blk_mq_tag_to_rq.exit.i.i.do.end.i.i_crit_edge, %nvme_queue_tagset.exit.i.do.end.i.i_crit_edge
  %call10.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %conv5.i.i) #21
  br label %do.end17.i

if.end.i54.i:                                     ; preds = %blk_mq_tag_to_rq.exit.i.i
  %40 = lshr i16 %16, 12
  %genctr12.i.i = getelementptr %struct.request, ptr %39, i32 1, i32 4
  %41 = ptrtoint ptr %genctr12.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %genctr12.i.i, align 8
  %43 = and i8 %42, 15
  %44 = zext i8 %43 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %40, i16 %44)
  %cmp.not.i.i = icmp eq i16 %40, %44
  br i1 %cmp.not.i.i, label %if.end21.i, label %do.end26.i.i, !prof !367

do.end26.i.i:                                     ; preds = %if.end.i54.i
  call void @__sanitizer_cov_trace_pc() #18
  %conv1.i.i = zext i16 %40 to i32
  %ctrl.i.i = getelementptr %struct.request, ptr %39, i32 1, i32 6
  %45 = ptrtoint ptr %ctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ctrl.i.i, align 8
  %device.i.i = getelementptr inbounds %struct.nvme_ctrl, ptr %46, i32 0, i32 17
  %47 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %device.i.i, align 8
  %and33.i.i = zext i8 %43 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.41, i32 noundef %conv5.i.i, i32 noundef %conv1.i.i, i32 noundef %and33.i.i) #21
  br label %do.end17.i

do.end17.i:                                       ; preds = %do.end26.i.i, %do.end.i.i
  %49 = ptrtoint ptr %nvmeq to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %nvmeq, align 128
  %device.i = getelementptr inbounds %struct.nvme_dev, ptr %50, i32 0, i32 23, i32 17
  %51 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %device.i, align 8
  %conv.i = zext i16 %16 to i32
  %sq_id.i = getelementptr %struct.nvme_completion, ptr %14, i32 %idxprom.i8, i32 2
  %53 = ptrtoint ptr %sq_id.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %sq_id.i, align 2
  %55 = tail call i16 @llvm.bswap.i16(i16 %54) #16
  %conv20.i = zext i16 %55 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %52, ptr noundef nonnull @.str.35, i32 noundef %conv.i, i32 noundef %conv20.i) #21
  br label %nvme_handle_cqe.exit

if.end21.i:                                       ; preds = %if.end.i54.i
  %sq_head.i = getelementptr %struct.nvme_completion, ptr %14, i32 %idxprom.i8, i32 1
  %56 = ptrtoint ptr %sq_head.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %sq_head.i, align 8
  %58 = ptrtoint ptr %sq_tail.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %sq_tail.i, align 2
  %conv22.i = zext i16 %59 to i32
  tail call fastcc void @trace_nvme_sq(ptr noundef nonnull %39, i16 noundef zeroext %57, i32 noundef %conv22.i) #16
  %status23.i = getelementptr %struct.nvme_completion, ptr %14, i32 %idxprom.i8, i32 4
  %60 = ptrtoint ptr %status23.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %status23.i, align 2
  %62 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %62)
  %.unpack.i = load i64, ptr %arrayidx.i, align 8
  %ctrl1.i.i = getelementptr %struct.request, ptr %39, i32 1, i32 6
  %63 = ptrtoint ptr %ctrl1.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ctrl1.i.i, align 8
  %quirks.i.i = getelementptr inbounds %struct.nvme_ctrl, ptr %64, i32 0, i32 61
  %65 = ptrtoint ptr %quirks.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %quirks.i.i, align 8
  %and.i.i = and i32 %66, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i56.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i56.i, label %if.then.i57.i, label %if.end21.i.if.end.i58.i_crit_edge

if.end21.i.if.end.i58.i_crit_edge:                ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i58.i

if.then.i57.i:                                    ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #18
  %67 = ptrtoint ptr %genctr12.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %genctr12.i.i, align 8
  %inc.i.i = add i8 %68, 1
  store i8 %inc.i.i, ptr %genctr12.i.i, align 8
  br label %if.end.i58.i

if.end.i58.i:                                     ; preds = %if.then.i57.i, %if.end21.i.if.end.i58.i_crit_edge
  %69 = tail call i16 @llvm.bswap.i16(i16 %61) #16
  %70 = lshr i16 %69, 1
  %status3.i.i = getelementptr %struct.request, ptr %39, i32 1, i32 5
  %71 = ptrtoint ptr %status3.i.i to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %70, ptr %status3.i.i, align 4
  %result4.i.i = getelementptr %struct.request, ptr %39, i32 1, i32 2
  %72 = ptrtoint ptr %result4.i.i to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %.unpack.i, ptr %result4.i.i, align 8
  tail call void @nvme_should_fail(ptr noundef nonnull %39) #16
  %73 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %39, align 8
  %queue_flags.i.i.i = getelementptr inbounds %struct.request_queue, ptr %74, i32 0, i32 11
  %75 = ptrtoint ptr %queue_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %queue_flags.i.i.i, align 4
  %77 = and i32 %76, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool.not.i.i.i = icmp eq i32 %77, 0
  br i1 %tobool.not.i.i.i, label %if.end.i58.i.nvme_try_complete_req.exit.i_crit_edge, label %blk_should_fake_timeout.exit.i.i

if.end.i58.i.nvme_try_complete_req.exit.i_crit_edge: ; preds = %if.end.i58.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %nvme_try_complete_req.exit.i

blk_should_fake_timeout.exit.i.i:                 ; preds = %if.end.i58.i
  %call1.i.i.i = tail call zeroext i1 @__blk_should_fake_timeout(ptr noundef %74) #16
  br i1 %call1.i.i.i, label %blk_should_fake_timeout.exit.i.i.nvme_handle_cqe.exit_crit_edge, label %blk_should_fake_timeout.exit.i.i.nvme_try_complete_req.exit.i_crit_edge, !prof !350

blk_should_fake_timeout.exit.i.i.nvme_try_complete_req.exit.i_crit_edge: ; preds = %blk_should_fake_timeout.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %nvme_try_complete_req.exit.i

blk_should_fake_timeout.exit.i.i.nvme_handle_cqe.exit_crit_edge: ; preds = %blk_should_fake_timeout.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %nvme_handle_cqe.exit

nvme_try_complete_req.exit.i:                     ; preds = %blk_should_fake_timeout.exit.i.i.nvme_try_complete_req.exit.i_crit_edge, %if.end.i58.i.nvme_try_complete_req.exit.i_crit_edge
  %call10.i59.i = tail call zeroext i1 @blk_mq_complete_request_remote(ptr noundef nonnull %39) #16
  br i1 %call10.i59.i, label %nvme_try_complete_req.exit.i.nvme_handle_cqe.exit_crit_edge, label %land.lhs.true.i

nvme_try_complete_req.exit.i.nvme_handle_cqe.exit_crit_edge: ; preds = %nvme_try_complete_req.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %nvme_handle_cqe.exit

land.lhs.true.i:                                  ; preds = %nvme_try_complete_req.exit.i
  %78 = ptrtoint ptr %status3.i.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %status3.i.i, align 4
  br i1 %tobool.not.i61.i, label %land.lhs.true.i.if.then30.i_crit_edge, label %lor.lhs.false.i.i

land.lhs.true.i.if.then30.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then30.i

lor.lhs.false.i.i:                                ; preds = %land.lhs.true.i
  %rq_flags.i.i = getelementptr inbounds %struct.request, ptr %39, i32 0, i32 4
  %80 = ptrtoint ptr %rq_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %rq_flags.i.i, align 8
  %and.i62.i = and i32 %81, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i62.i)
  %tobool1.not.i.i = icmp eq i32 %and.i62.i, 0
  br i1 %tobool1.not.i.i, label %lor.lhs.false2.i.i, label %lor.lhs.false.i.i.if.then30.i_crit_edge

lor.lhs.false.i.i.if.then30.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then30.i

lor.lhs.false2.i.i:                               ; preds = %lor.lhs.false.i.i
  %end_io.i.i = getelementptr inbounds %struct.request, ptr %39, i32 0, i32 32
  %82 = ptrtoint ptr %end_io.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %end_io.i.i, align 8
  %tobool3.not.i.i = icmp eq ptr %83, null
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %79)
  %tobool5.not.i.i = icmp eq i16 %79, 0
  %or.cond.i.i = and i1 %tobool5.not.i.i, %tobool3.not.i.i
  br i1 %or.cond.i.i, label %if.end.i63.i, label %lor.lhs.false2.i.i.if.then30.i_crit_edge

lor.lhs.false2.i.i.if.then30.i_crit_edge:         ; preds = %lor.lhs.false2.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then30.i

if.end.i63.i:                                     ; preds = %lor.lhs.false2.i.i
  %84 = ptrtoint ptr %complete6.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %complete6.i.i, align 4
  %tobool7.not.i.i = icmp eq ptr %85, null
  br i1 %tobool7.not.i.i, label %if.then8.i.i, label %if.else.i.i

if.then8.i.i:                                     ; preds = %if.end.i63.i
  call void @__sanitizer_cov_trace_pc() #18
  %86 = ptrtoint ptr %complete6.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @nvme_pci_complete_batch, ptr %complete6.i.i, align 4
  br label %blk_mq_add_to_batch.exit.i

if.else.i.i:                                      ; preds = %if.end.i63.i
  %cmp.not.i64.i = icmp eq ptr %85, @nvme_pci_complete_batch
  br i1 %cmp.not.i64.i, label %if.else.i.i.blk_mq_add_to_batch.exit.i_crit_edge, label %if.else.i.i.if.then30.i_crit_edge

if.else.i.i.if.then30.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then30.i

if.else.i.i.blk_mq_add_to_batch.exit.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %blk_mq_add_to_batch.exit.i

blk_mq_add_to_batch.exit.i:                       ; preds = %if.else.i.i.blk_mq_add_to_batch.exit.i_crit_edge, %if.then8.i.i
  %87 = ptrtoint ptr %rq_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %rq_flags.i.i, align 8
  %and.i.i.i = and i32 %88, 4333568
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.i.i = icmp ne i32 %and.i.i.i, 0
  %conv.i65.i = zext i1 %tobool.i.i.i to i8
  %89 = ptrtoint ptr %need_ts.i.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %need_ts.i.i, align 4, !range !351
  %or.i.i = or i8 %90, %conv.i65.i
  store i8 %or.i.i, ptr %need_ts.i.i, align 4
  %91 = ptrtoint ptr %iob to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %iob, align 4
  %93 = getelementptr inbounds %struct.request, ptr %39, i32 0, i32 12
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %92, ptr %93, align 8
  store ptr %39, ptr %iob, align 4
  br label %nvme_handle_cqe.exit

if.then30.i:                                      ; preds = %if.else.i.i.if.then30.i_crit_edge, %lor.lhs.false2.i.i.if.then30.i_crit_edge, %lor.lhs.false.i.i.if.then30.i_crit_edge, %land.lhs.true.i.if.then30.i_crit_edge
  tail call void @nvme_pci_complete_rq(ptr noundef nonnull %39) #16
  br label %nvme_handle_cqe.exit

nvme_handle_cqe.exit:                             ; preds = %if.then30.i, %blk_mq_add_to_batch.exit.i, %nvme_try_complete_req.exit.i.nvme_handle_cqe.exit_crit_edge, %blk_should_fake_timeout.exit.i.i.nvme_handle_cqe.exit_crit_edge, %do.end17.i, %if.then.i
  %95 = ptrtoint ptr %cq_head.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %cq_head.i, align 2
  %conv.i11 = zext i16 %96 to i32
  %add.i = add nuw nsw i32 %conv.i11, 1
  %97 = ptrtoint ptr %q_depth.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %q_depth.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %98)
  %cmp.i12 = icmp eq i32 %add.i, %98
  br i1 %cmp.i12, label %if.then.i14, label %if.else.i

if.then.i14:                                      ; preds = %nvme_handle_cqe.exit
  call void @__sanitizer_cov_trace_pc() #18
  %99 = ptrtoint ptr %cq_head.i to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 0, ptr %cq_head.i, align 2
  %100 = ptrtoint ptr %cq_phase.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %cq_phase.i, align 2
  %102 = xor i8 %101, 1
  store i8 %102, ptr %cq_phase.i, align 2
  br label %nvme_update_cq_head.exit

if.else.i:                                        ; preds = %nvme_handle_cqe.exit
  call void @__sanitizer_cov_trace_pc() #18
  %conv5.i = trunc i32 %add.i to i16
  %103 = ptrtoint ptr %cq_head.i to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 %conv5.i, ptr %cq_head.i, align 2
  br label %nvme_update_cq_head.exit

nvme_update_cq_head.exit:                         ; preds = %if.else.i, %if.then.i14
  %104 = ptrtoint ptr %cqes.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %cqes.i, align 4
  %106 = ptrtoint ptr %cq_head.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %cq_head.i, align 2
  %idxprom.i = zext i16 %107 to i32
  %status.i = getelementptr %struct.nvme_completion, ptr %105, i32 %idxprom.i, i32 4
  %108 = ptrtoint ptr %status.i to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load volatile i16, ptr %status.i, align 2
  %110 = lshr i16 %109, 8
  %111 = and i16 %110, 1
  %112 = ptrtoint ptr %cq_phase.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %cq_phase.i, align 2
  %114 = zext i8 %113 to i16
  %cmp.i = icmp eq i16 %111, %114
  br i1 %cmp.i, label %nvme_update_cq_head.exit.while.body_crit_edge, label %while.end

nvme_update_cq_head.exit.while.body_crit_edge:    ; preds = %nvme_update_cq_head.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body

while.end:                                        ; preds = %nvme_update_cq_head.exit
  %idxprom.i.le = zext i16 %107 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc)
  %tobool.not = icmp eq i32 %inc, 0
  br i1 %tobool.not, label %while.end.if.end_crit_edge, label %if.then

while.end.if.end_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %while.end
  %dbbuf_cq_db.i = getelementptr inbounds %struct.nvme_queue, ptr %nvmeq, i32 0, i32 19
  %115 = ptrtoint ptr %dbbuf_cq_db.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %dbbuf_cq_db.i, align 4
  %tobool.not.i.i17 = icmp eq ptr %116, null
  br i1 %tobool.not.i.i17, label %if.then.do.body.i_crit_edge, label %if.then.i.i21

if.then.do.body.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i

if.then.i.i21:                                    ; preds = %if.then
  %dbbuf_cq_ei.i = getelementptr inbounds %struct.nvme_queue, ptr %nvmeq, i32 0, i32 21
  %117 = ptrtoint ptr %dbbuf_cq_ei.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %dbbuf_cq_ei.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !373
  tail call void @arm_heavy_mb() #16
  %119 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %116, align 4
  %conv.i.i18 = trunc i32 %120 to i16
  store i32 %idxprom.i.le, ptr %116, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !374
  tail call void @arm_heavy_mb() #16
  %121 = ptrtoint ptr %118 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load volatile i32, ptr %118, align 4
  %conv5.i.i20 = trunc i32 %122 to i16
  %123 = xor i16 %conv5.i.i20, -1
  %sub2.i.i.i = add i16 %107, %123
  %sub7.i.i.i = sub i16 %107, %conv.i.i18
  call void @__sanitizer_cov_trace_cmp2(i16 %sub2.i.i.i, i16 %sub7.i.i.i)
  %cmp.i.not.i.i = icmp ult i16 %sub2.i.i.i, %sub7.i.i.i
  br i1 %cmp.i.not.i.i, label %if.then.i.i21.do.body.i_crit_edge, label %if.then.i.i21.if.end_crit_edge

if.then.i.i21.if.end_crit_edge:                   ; preds = %if.then.i.i21
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then.i.i21.do.body.i_crit_edge:                ; preds = %if.then.i.i21
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i

do.body.i:                                        ; preds = %if.then.i.i21.do.body.i_crit_edge, %if.then.do.body.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !375
  tail call void @arm_heavy_mb() #16
  %124 = tail call i32 @llvm.bswap.i32(i32 %idxprom.i.le) #16
  %q_db.i = getelementptr inbounds %struct.nvme_queue, ptr %nvmeq, i32 0, i32 8
  %125 = ptrtoint ptr %q_db.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %q_db.i, align 8
  %127 = ptrtoint ptr %nvmeq to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %nvmeq, align 128
  %db_stride.i = getelementptr inbounds %struct.nvme_dev, ptr %128, i32 0, i32 13
  %129 = ptrtoint ptr %db_stride.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %db_stride.i, align 4
  %add.ptr.i = getelementptr i32, ptr %126, i32 %130
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %124) #16, !srcloc !357
  br label %if.end

if.end:                                           ; preds = %do.body.i, %if.then.i.i21.if.end_crit_edge, %while.end.if.end_crit_edge, %entry.if.end_crit_edge
  %found.0.lcssa34 = phi i32 [ %inc, %do.body.i ], [ %inc, %if.then.i.i21.if.end_crit_edge ], [ 0, %while.end.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %found.0.lcssa34
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvme_complete_async_event(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nvme_sq(ptr noundef %req, i16 noundef zeroext %sq_head, i32 noundef %sq_tail) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nvme_sq, i32 0, i32 1), ptr blockaddress(@trace_nvme_sq, %do.body)) #16
          to label %if.end48 [label %do.body], !srcloc !376

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !339) #16
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !367

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.46, i32 noundef 108, i32 noundef 9, ptr noundef null) #16
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #18
  %9 = tail call i32 @llvm.read_register.i32(metadata !339) #16
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !377
  %call42 = tail call i32 @__traceiter_nvme_sq(ptr noundef null, ptr noundef %req, i16 noundef zeroext %sq_head, i32 noundef %sq_tail) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !378
  %13 = tail call i32 @llvm.read_register.i32(metadata !339) #16
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !339) #16
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !367

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.46, i32 noundef 108, i32 noundef 9, ptr noundef null) #16
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !339) #16
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !379
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nvme_sq, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nvme_sq, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_nvme_sq.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @trace_nvme_sq.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.44, i32 noundef 165, ptr noundef nonnull @.str.45) #16
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !380
  %31 = tail call i32 @llvm.read_register.i32(metadata !339) #16
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvme_pci_complete_batch(ptr noundef %iob) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %iob, null
  br i1 %tobool.not.i, label %entry.nvme_complete_batch.exit_crit_edge, label %if.end.i

entry.nvme_complete_batch.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %nvme_complete_batch.exit

if.end.i:                                         ; preds = %entry
  %0 = ptrtoint ptr %iob to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iob, align 4
  %tobool4.not1.i = icmp eq ptr %1, null
  br i1 %tobool4.not1.i, label %if.end.i.nvme_complete_batch.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.nvme_complete_batch.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %nvme_complete_batch.exit

for.body.i:                                       ; preds = %nvme_pci_unmap_rq.exit.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %req.02.i = phi ptr [ %34, %nvme_pci_unmap_rq.exit.i.for.body.i_crit_edge ], [ %1, %if.end.i.for.body.i_crit_edge ]
  %nvmeq.i.i = getelementptr %struct.request, ptr %req.02.i, i32 1, i32 17
  %2 = ptrtoint ptr %nvmeq.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nvmeq.i.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 128
  %cmd_flags.i.i.i = getelementptr inbounds %struct.request, ptr %req.02.i, i32 0, i32 3
  %6 = ptrtoint ptr %cmd_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cmd_flags.i.i.i, align 4
  %8 = and i32 %7, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not.i.i = icmp eq i32 %8, 0
  br i1 %tobool.i.not.i.i, label %for.body.i.if.end.i.i_crit_edge, label %if.then.i.i

for.body.i.if.end.i.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %for.body.i
  %dev3.i.i = getelementptr inbounds %struct.nvme_dev, ptr %5, i32 0, i32 4
  %9 = ptrtoint ptr %dev3.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev3.i.i, align 8
  %meta_dma.i.i = getelementptr %struct.request, ptr %req.02.i, i32 1, i32 27
  %11 = ptrtoint ptr %meta_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %meta_dma.i.i, align 4
  %13 = ptrtoint ptr %req.02.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %req.02.i, align 8
  %max_integrity_segments.i.i.i.i = getelementptr inbounds %struct.request_queue, ptr %14, i32 0, i32 37, i32 22
  %15 = ptrtoint ptr %max_integrity_segments.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %max_integrity_segments.i.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %16)
  %cmp.i.i.i = icmp ugt i16 %16, 1
  br i1 %cmp.i.i.i, label %land.rhs.i.i.i, label %if.end39.i.i.i

land.rhs.i.i.i:                                   ; preds = %if.then.i.i
  %.b43.i.i.i = load i1, ptr @rq_integrity_vec.__already_done, align 1
  br i1 %.b43.i.i.i, label %land.rhs.i.i.i.rq_integrity_vec.exit.i.i_crit_edge, label %if.then.i.i.i, !prof !367

land.rhs.i.i.i.rq_integrity_vec.exit.i.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rq_integrity_vec.exit.i.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rq_integrity_vec.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.47, i32 noundef 112, i32 noundef 9, ptr noundef null) #16
  br label %rq_integrity_vec.exit.i.i

if.end39.i.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %bio.i.i.i = getelementptr inbounds %struct.request, ptr %req.02.i, i32 0, i32 10
  %17 = ptrtoint ptr %bio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bio.i.i.i, align 8
  %19 = getelementptr inbounds %struct.bio, ptr %18, i32 0, i32 16
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %bip_vec.i.i.i = getelementptr inbounds %struct.bio_integrity_payload, ptr %21, i32 0, i32 7
  %22 = ptrtoint ptr %bip_vec.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bip_vec.i.i.i, align 4
  br label %rq_integrity_vec.exit.i.i

rq_integrity_vec.exit.i.i:                        ; preds = %if.end39.i.i.i, %if.then.i.i.i, %land.rhs.i.i.i.rq_integrity_vec.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %23, %if.end39.i.i.i ], [ null, %if.then.i.i.i ], [ null, %land.rhs.i.i.i.rq_integrity_vec.exit.i.i_crit_edge ]
  %bv_len.i.i = getelementptr inbounds %struct.bio_vec, ptr %retval.0.i.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bv_len.i.i, align 4
  %26 = ptrtoint ptr %cmd_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cmd_flags.i.i.i, align 4
  %and.i.i.i = and i32 %27, 1
  tail call void @dma_unmap_page_attrs(ptr noundef %10, i32 noundef %12, i32 noundef %25, i32 noundef %and.i.i.i, i32 noundef 0) #16
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %rq_integrity_vec.exit.i.i, %for.body.i.if.end.i.i_crit_edge
  %rq_flags.i.i.i = getelementptr inbounds %struct.request, ptr %req.02.i, i32 0, i32 4
  %28 = ptrtoint ptr %rq_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rq_flags.i.i.i, align 8
  %and.i17.i.i = and i32 %29, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i17.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i17.i.i, 0
  br i1 %tobool.not.i.i.i, label %blk_rq_nr_phys_segments.exit.i.i, label %if.end.i.i.if.then7.i.i_crit_edge

if.end.i.i.if.then7.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then7.i.i

blk_rq_nr_phys_segments.exit.i.i:                 ; preds = %if.end.i.i
  %nr_phys_segments.i.i.i = getelementptr inbounds %struct.request, ptr %req.02.i, i32 0, i32 19
  %30 = ptrtoint ptr %nr_phys_segments.i.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %nr_phys_segments.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool.not.i.i = icmp eq i16 %31, 0
  br i1 %tobool.not.i.i, label %blk_rq_nr_phys_segments.exit.i.i.nvme_pci_unmap_rq.exit.i_crit_edge, label %blk_rq_nr_phys_segments.exit.i.i.if.then7.i.i_crit_edge

blk_rq_nr_phys_segments.exit.i.i.if.then7.i.i_crit_edge: ; preds = %blk_rq_nr_phys_segments.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then7.i.i

blk_rq_nr_phys_segments.exit.i.i.nvme_pci_unmap_rq.exit.i_crit_edge: ; preds = %blk_rq_nr_phys_segments.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %nvme_pci_unmap_rq.exit.i

if.then7.i.i:                                     ; preds = %blk_rq_nr_phys_segments.exit.i.i.if.then7.i.i_crit_edge, %if.end.i.i.if.then7.i.i_crit_edge
  tail call fastcc void @nvme_unmap_data(ptr noundef %5, ptr noundef nonnull %req.02.i) #16
  br label %nvme_pci_unmap_rq.exit.i

nvme_pci_unmap_rq.exit.i:                         ; preds = %if.then7.i.i, %blk_rq_nr_phys_segments.exit.i.i.nvme_pci_unmap_rq.exit.i_crit_edge
  tail call void @nvme_complete_batch_req(ptr noundef nonnull %req.02.i) #16
  %32 = getelementptr inbounds %struct.request, ptr %req.02.i, i32 0, i32 12
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 8
  %tobool4.not.i = icmp eq ptr %34, null
  br i1 %tobool4.not.i, label %nvme_pci_unmap_rq.exit.i.nvme_complete_batch.exit_crit_edge, label %nvme_pci_unmap_rq.exit.i.for.body.i_crit_edge

nvme_pci_unmap_rq.exit.i.for.body.i_crit_edge:    ; preds = %nvme_pci_unmap_rq.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

nvme_pci_unmap_rq.exit.i.nvme_complete_batch.exit_crit_edge: ; preds = %nvme_pci_unmap_rq.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %nvme_complete_batch.exit

nvme_complete_batch.exit:                         ; preds = %nvme_pci_unmap_rq.exit.i.nvme_complete_batch.exit_crit_edge, %if.end.i.nvme_complete_batch.exit_crit_edge, %entry.nvme_complete_batch.exit_crit_edge
  tail call void @blk_mq_end_request_batch(ptr noundef %iob) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvme_pci_complete_rq(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %nvmeq.i = getelementptr %struct.request, ptr %req, i32 1, i32 17
  %0 = ptrtoint ptr %nvmeq.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nvmeq.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %cmd_flags.i.i = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 3
  %4 = ptrtoint ptr %cmd_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cmd_flags.i.i, align 4
  %6 = and i32 %5, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i.not.i = icmp eq i32 %6, 0
  br i1 %tobool.i.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  %dev3.i = getelementptr inbounds %struct.nvme_dev, ptr %3, i32 0, i32 4
  %7 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev3.i, align 8
  %meta_dma.i = getelementptr %struct.request, ptr %req, i32 1, i32 27
  %9 = ptrtoint ptr %meta_dma.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %meta_dma.i, align 4
  %11 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %req, align 8
  %max_integrity_segments.i.i.i = getelementptr inbounds %struct.request_queue, ptr %12, i32 0, i32 37, i32 22
  %13 = ptrtoint ptr %max_integrity_segments.i.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %max_integrity_segments.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %14)
  %cmp.i.i = icmp ugt i16 %14, 1
  br i1 %cmp.i.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %if.then.i
  %.b43.i.i = load i1, ptr @rq_integrity_vec.__already_done, align 1
  br i1 %.b43.i.i, label %land.rhs.i.i.rq_integrity_vec.exit.i_crit_edge, label %if.then.i.i, !prof !367

land.rhs.i.i.rq_integrity_vec.exit.i_crit_edge:   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rq_integrity_vec.exit.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rq_integrity_vec.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.47, i32 noundef 112, i32 noundef 9, ptr noundef null) #16
  br label %rq_integrity_vec.exit.i

if.end39.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  %bio.i.i = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 10
  %15 = ptrtoint ptr %bio.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bio.i.i, align 8
  %17 = getelementptr inbounds %struct.bio, ptr %16, i32 0, i32 16
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %bip_vec.i.i = getelementptr inbounds %struct.bio_integrity_payload, ptr %19, i32 0, i32 7
  %20 = ptrtoint ptr %bip_vec.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bip_vec.i.i, align 4
  br label %rq_integrity_vec.exit.i

rq_integrity_vec.exit.i:                          ; preds = %if.end39.i.i, %if.then.i.i, %land.rhs.i.i.rq_integrity_vec.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %21, %if.end39.i.i ], [ null, %if.then.i.i ], [ null, %land.rhs.i.i.rq_integrity_vec.exit.i_crit_edge ]
  %bv_len.i = getelementptr inbounds %struct.bio_vec, ptr %retval.0.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bv_len.i, align 4
  %24 = ptrtoint ptr %cmd_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cmd_flags.i.i, align 4
  %and.i.i = and i32 %25, 1
  tail call void @dma_unmap_page_attrs(ptr noundef %8, i32 noundef %10, i32 noundef %23, i32 noundef %and.i.i, i32 noundef 0) #16
  br label %if.end.i

if.end.i:                                         ; preds = %rq_integrity_vec.exit.i, %entry.if.end.i_crit_edge
  %rq_flags.i.i = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 4
  %26 = ptrtoint ptr %rq_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rq_flags.i.i, align 8
  %and.i17.i = and i32 %27, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i17.i)
  %tobool.not.i.i = icmp eq i32 %and.i17.i, 0
  br i1 %tobool.not.i.i, label %blk_rq_nr_phys_segments.exit.i, label %if.end.i.if.then7.i_crit_edge

if.end.i.if.then7.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then7.i

blk_rq_nr_phys_segments.exit.i:                   ; preds = %if.end.i
  %nr_phys_segments.i.i = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 19
  %28 = ptrtoint ptr %nr_phys_segments.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %nr_phys_segments.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool.not.i = icmp eq i16 %29, 0
  br i1 %tobool.not.i, label %blk_rq_nr_phys_segments.exit.i.nvme_pci_unmap_rq.exit_crit_edge, label %blk_rq_nr_phys_segments.exit.i.if.then7.i_crit_edge

blk_rq_nr_phys_segments.exit.i.if.then7.i_crit_edge: ; preds = %blk_rq_nr_phys_segments.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then7.i

blk_rq_nr_phys_segments.exit.i.nvme_pci_unmap_rq.exit_crit_edge: ; preds = %blk_rq_nr_phys_segments.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %nvme_pci_unmap_rq.exit

if.then7.i:                                       ; preds = %blk_rq_nr_phys_segments.exit.i.if.then7.i_crit_edge, %if.end.i.if.then7.i_crit_edge
  tail call fastcc void @nvme_unmap_data(ptr noundef %3, ptr noundef %req) #16
  br label %nvme_pci_unmap_rq.exit

nvme_pci_unmap_rq.exit:                           ; preds = %if.then7.i, %blk_rq_nr_phys_segments.exit.i.nvme_pci_unmap_rq.exit_crit_edge
  tail call void @nvme_complete_rq(ptr noundef %req) #16
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nvme_sq(ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvme_should_fail(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @blk_mq_complete_request_remote(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__blk_should_fake_timeout(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvme_complete_batch_req(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_end_request_batch(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nvme_unmap_data(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %req) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_len = getelementptr %struct.request, ptr %req, i32 1, i32 26
  %0 = ptrtoint ptr %dma_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dma_len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %dev1 = getelementptr inbounds %struct.nvme_dev, ptr %dev, i32 0, i32 4
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 8
  %first_dma = getelementptr %struct.request, ptr %req, i32 1, i32 25
  %4 = ptrtoint ptr %first_dma to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %first_dma, align 4
  %cmd_flags = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 3
  %6 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cmd_flags, align 4
  %and.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %cond = select i1 %tobool.i.not, i32 2, i32 1
  tail call void @dma_unmap_page_attrs(ptr noundef %3, i32 noundef %5, i32 noundef %1, i32 noundef %cond, i32 noundef 0) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %nents = getelementptr %struct.request, ptr %req, i32 1, i32 23
  %8 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nents, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool4.not = icmp eq i32 %9, 0
  br i1 %tobool4.not, label %land.rhs, label %if.end.if.end35_crit_edge

if.end.if.end35_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end35

land.rhs:                                         ; preds = %if.end
  %.b70 = load i1, ptr @nvme_unmap_data.__already_done, align 1
  br i1 %.b70, label %land.rhs.if.end35_crit_edge, label %if.then13, !prof !367

land.rhs.if.end35_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end35

if.then13:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @nvme_unmap_data.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 598, i32 noundef 9, ptr noundef null) #16
  br label %if.end35

if.end35:                                         ; preds = %if.then13, %land.rhs.if.end35_crit_edge, %if.end.if.end35_crit_edge
  %sg.i = getelementptr %struct.request, ptr %req, i32 1, i32 28
  %10 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sg.i, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %and.i.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %nvme_unmap_sg.exit, label %do.body2.i.i, !prof !367

do.body2.i.i:                                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #16, !srcloc !381
  unreachable

nvme_unmap_sg.exit:                               ; preds = %if.end35
  %dev6.i = getelementptr inbounds %struct.nvme_dev, ptr %dev, i32 0, i32 4
  %14 = ptrtoint ptr %dev6.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev6.i, align 8
  %16 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nents, align 8
  %cmd_flags9.i = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 3
  %18 = ptrtoint ptr %cmd_flags9.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cmd_flags9.i, align 4
  %and.i20.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i20.i)
  %tobool.i.not.i = icmp eq i32 %and.i20.i, 0
  %cond12.i = select i1 %tobool.i.not.i, i32 2, i32 1
  tail call void @dma_unmap_sg_attrs(ptr noundef %15, ptr noundef %11, i32 noundef %17, i32 noundef %cond12.i, i32 noundef 0) #16
  %npages = getelementptr %struct.request, ptr %req, i32 1, i32 22
  %20 = ptrtoint ptr %npages to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %npages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp = icmp eq i32 %21, 0
  br i1 %cmp, label %if.then43, label %if.else

if.then43:                                        ; preds = %nvme_unmap_sg.exit
  %prp_small_pool = getelementptr inbounds %struct.nvme_dev, ptr %dev, i32 0, i32 6
  %22 = ptrtoint ptr %prp_small_pool to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prp_small_pool, align 8
  %24 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sg.i, align 8
  %rq_flags.i.i = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 4
  %26 = ptrtoint ptr %rq_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rq_flags.i.i, align 8
  %and.i.i = and i32 %27, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then43.nvme_pci_iod_list.exit_crit_edge

if.then43.nvme_pci_iod_list.exit_crit_edge:       ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #18
  br label %nvme_pci_iod_list.exit

if.end.i.i:                                       ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #18
  %nr_phys_segments.i.i = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 19
  %28 = ptrtoint ptr %nr_phys_segments.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %nr_phys_segments.i.i, align 4
  %phi.cast.i = zext i16 %29 to i32
  br label %nvme_pci_iod_list.exit

nvme_pci_iod_list.exit:                           ; preds = %if.end.i.i, %if.then43.nvme_pci_iod_list.exit_crit_edge
  %retval.0.i.i = phi i32 [ %phi.cast.i, %if.end.i.i ], [ 1, %if.then43.nvme_pci_iod_list.exit_crit_edge ]
  %add.ptr.i72 = getelementptr %struct.scatterlist, ptr %25, i32 %retval.0.i.i
  %30 = ptrtoint ptr %add.ptr.i72 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr.i72, align 4
  %first_dma45 = getelementptr %struct.request, ptr %req, i32 1, i32 25
  %32 = ptrtoint ptr %first_dma45 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %first_dma45, align 4
  tail call void @dma_pool_free(ptr noundef %23, ptr noundef %31, i32 noundef %33) #16
  br label %if.end50

if.else:                                          ; preds = %nvme_unmap_sg.exit
  %use_sgl = getelementptr %struct.request, ptr %req, i32 1, i32 19
  %34 = ptrtoint ptr %use_sgl to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %use_sgl, align 4, !range !351
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool46.not = icmp eq i8 %35, 0
  %36 = ptrtoint ptr %npages to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %npages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp9.i75 = icmp sgt i32 %37, 0
  br i1 %tobool46.not, label %if.else48, label %if.then47

if.then47:                                        ; preds = %if.else
  br i1 %cmp9.i75, label %for.body.lr.ph.i, label %if.then47.if.end50_crit_edge

if.then47.if.end50_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end50

for.body.lr.ph.i:                                 ; preds = %if.then47
  %first_dma.i = getelementptr %struct.request, ptr %req, i32 1, i32 25
  %38 = ptrtoint ptr %first_dma.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %first_dma.i, align 4
  %rq_flags.i.i.i = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 4
  %nr_phys_segments.i.i.i = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 19
  %prp_page_pool.i = getelementptr inbounds %struct.nvme_dev, ptr %dev, i32 0, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %nvme_pci_iod_list.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %dma_addr.011.i = phi i32 [ %39, %for.body.lr.ph.i ], [ %conv.i, %nvme_pci_iod_list.exit.i.for.body.i_crit_edge ]
  %i.010.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %nvme_pci_iod_list.exit.i.for.body.i_crit_edge ]
  %40 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sg.i, align 8
  %42 = ptrtoint ptr %rq_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rq_flags.i.i.i, align 8
  %and.i.i.i73 = and i32 %43, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i73)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i73, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %for.body.i.nvme_pci_iod_list.exit.i_crit_edge

for.body.i.nvme_pci_iod_list.exit.i_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %nvme_pci_iod_list.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %44 = ptrtoint ptr %nr_phys_segments.i.i.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %nr_phys_segments.i.i.i, align 4
  %phi.cast.i.i = zext i16 %45 to i32
  br label %nvme_pci_iod_list.exit.i

nvme_pci_iod_list.exit.i:                         ; preds = %if.end.i.i.i, %for.body.i.nvme_pci_iod_list.exit.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %phi.cast.i.i, %if.end.i.i.i ], [ 1, %for.body.i.nvme_pci_iod_list.exit.i_crit_edge ]
  %add.ptr.i8.i = getelementptr %struct.scatterlist, ptr %41, i32 %retval.0.i.i.i
  %arrayidx.i = getelementptr ptr, ptr %add.ptr.i8.i, i32 %i.010.i
  %46 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx2.i = getelementptr %struct.nvme_sgl_desc, ptr %47, i32 255
  %48 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %arrayidx2.i, align 8
  %50 = tail call i64 @llvm.bswap.i64(i64 %49) #16
  %conv.i = trunc i64 %50 to i32
  %51 = ptrtoint ptr %prp_page_pool.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %prp_page_pool.i, align 4
  tail call void @dma_pool_free(ptr noundef %52, ptr noundef %47, i32 noundef %dma_addr.011.i) #16
  %inc.i = add nuw nsw i32 %i.010.i, 1
  %53 = ptrtoint ptr %npages to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %npages, align 4
  %cmp.i = icmp slt i32 %inc.i, %54
  br i1 %cmp.i, label %nvme_pci_iod_list.exit.i.for.body.i_crit_edge, label %nvme_pci_iod_list.exit.i.if.end50_crit_edge

nvme_pci_iod_list.exit.i.if.end50_crit_edge:      ; preds = %nvme_pci_iod_list.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end50

nvme_pci_iod_list.exit.i.for.body.i_crit_edge:    ; preds = %nvme_pci_iod_list.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

if.else48:                                        ; preds = %if.else
  br i1 %cmp9.i75, label %for.body.lr.ph.i81, label %if.else48.if.end50_crit_edge

if.else48.if.end50_crit_edge:                     ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end50

for.body.lr.ph.i81:                               ; preds = %if.else48
  %first_dma.i76 = getelementptr %struct.request, ptr %req, i32 1, i32 25
  %55 = ptrtoint ptr %first_dma.i76 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %first_dma.i76, align 4
  %rq_flags.i.i.i78 = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 4
  %nr_phys_segments.i.i.i79 = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 19
  %prp_page_pool.i80 = getelementptr inbounds %struct.nvme_dev, ptr %dev, i32 0, i32 5
  br label %for.body.i86

for.body.i86:                                     ; preds = %nvme_pci_iod_list.exit.i96.for.body.i86_crit_edge, %for.body.lr.ph.i81
  %dma_addr.011.i82 = phi i32 [ %56, %for.body.lr.ph.i81 ], [ %conv.i93, %nvme_pci_iod_list.exit.i96.for.body.i86_crit_edge ]
  %i.010.i83 = phi i32 [ 0, %for.body.lr.ph.i81 ], [ %inc.i94, %nvme_pci_iod_list.exit.i96.for.body.i86_crit_edge ]
  %57 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %sg.i, align 8
  %59 = ptrtoint ptr %rq_flags.i.i.i78 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %rq_flags.i.i.i78, align 8
  %and.i.i.i84 = and i32 %60, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i84)
  %tobool.not.i.i.i85 = icmp eq i32 %and.i.i.i84, 0
  br i1 %tobool.not.i.i.i85, label %if.end.i.i.i88, label %for.body.i86.nvme_pci_iod_list.exit.i96_crit_edge

for.body.i86.nvme_pci_iod_list.exit.i96_crit_edge: ; preds = %for.body.i86
  call void @__sanitizer_cov_trace_pc() #18
  br label %nvme_pci_iod_list.exit.i96

if.end.i.i.i88:                                   ; preds = %for.body.i86
  call void @__sanitizer_cov_trace_pc() #18
  %61 = ptrtoint ptr %nr_phys_segments.i.i.i79 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %nr_phys_segments.i.i.i79, align 4
  %phi.cast.i.i87 = zext i16 %62 to i32
  br label %nvme_pci_iod_list.exit.i96

nvme_pci_iod_list.exit.i96:                       ; preds = %if.end.i.i.i88, %for.body.i86.nvme_pci_iod_list.exit.i96_crit_edge
  %retval.0.i.i.i89 = phi i32 [ %phi.cast.i.i87, %if.end.i.i.i88 ], [ 1, %for.body.i86.nvme_pci_iod_list.exit.i96_crit_edge ]
  %add.ptr.i8.i90 = getelementptr %struct.scatterlist, ptr %58, i32 %retval.0.i.i.i89
  %arrayidx.i91 = getelementptr ptr, ptr %add.ptr.i8.i90, i32 %i.010.i83
  %63 = ptrtoint ptr %arrayidx.i91 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx.i91, align 4
  %arrayidx2.i92 = getelementptr i64, ptr %64, i32 511
  %65 = ptrtoint ptr %arrayidx2.i92 to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %arrayidx2.i92, align 8
  %67 = tail call i64 @llvm.bswap.i64(i64 %66) #16
  %conv.i93 = trunc i64 %67 to i32
  %68 = ptrtoint ptr %prp_page_pool.i80 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %prp_page_pool.i80, align 4
  tail call void @dma_pool_free(ptr noundef %69, ptr noundef %64, i32 noundef %dma_addr.011.i82) #16
  %inc.i94 = add nuw nsw i32 %i.010.i83, 1
  %70 = ptrtoint ptr %npages to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %npages, align 4
  %cmp.i95 = icmp slt i32 %inc.i94, %71
  br i1 %cmp.i95, label %nvme_pci_iod_list.exit.i96.for.body.i86_crit_edge, label %nvme_pci_iod_list.exit.i96.if.end50_crit_edge

nvme_pci_iod_list.exit.i96.if.end50_crit_edge:    ; preds = %nvme_pci_iod_list.exit.i96
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end50

nvme_pci_iod_list.exit.i96.for.body.i86_crit_edge: ; preds = %nvme_pci_iod_list.exit.i96
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i86

if.end50:                                         ; preds = %nvme_pci_iod_list.exit.i96.if.end50_crit_edge, %if.else48.if.end50_crit_edge, %nvme_pci_iod_list.exit.i.if.end50_crit_edge, %if.then47.if.end50_crit_edge, %nvme_pci_iod_list.exit
  %72 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %sg.i, align 8
  %iod_mempool = getelementptr inbounds %struct.nvme_dev, ptr %dev, i32 0, i32 26
  %74 = ptrtoint ptr %iod_mempool to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %iod_mempool, align 8
  tail call void @mempool_free(ptr noundef %73, ptr noundef %75) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvme_complete_rq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvme_stop_admin_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_free_irq_vectors(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_disable_pcie_error_reporting(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device_mem(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_pcie_error_reporting(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_save_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_alloc_irq_vectors_affinity(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hi_lo_writeq(i64 noundef %val, ptr noundef %addr) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !382
  tail call void @arm_heavy_mb() #16
  %shr = lshr i64 %val, 32
  %conv = trunc i64 %shr to i32
  %0 = tail call i32 @llvm.bswap.i32(i32 %conv)
  %add.ptr = getelementptr i8, ptr %addr, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #16, !srcloc !357
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !383
  tail call void @arm_heavy_mb() #16
  %conv3 = trunc i64 %val to i32
  %1 = tail call i32 @llvm.bswap.i32(i32 %conv3)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %addr, i32 %1) #16, !srcloc !357
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcibios_resource_to_bus(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nvme_alloc_queue(ptr noundef %dev, i32 noundef %qid, i32 noundef %depth) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %arrayidx = getelementptr %struct.nvme_queue, ptr %1, i32 %qid
  %queue_count = getelementptr inbounds %struct.nvme_dev, ptr %dev, i32 0, i32 23, i32 30
  %2 = ptrtoint ptr %queue_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %queue_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %qid)
  %cmp = icmp ugt i32 %3, %qid
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %qid)
  %tobool.not = icmp eq i32 %qid, 0
  br i1 %tobool.not, label %if.end.cond.end_crit_edge, label %cond.true

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %io_sqes = getelementptr inbounds %struct.nvme_dev, ptr %dev, i32 0, i32 12
  %4 = ptrtoint ptr %io_sqes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %io_sqes, align 8
  %phi.cast = trunc i32 %5 to i8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end.cond.end_crit_edge
  %cond = phi i8 [ %phi.cast, %cond.true ], [ 6, %if.end.cond.end_crit_edge ]
  %sqes = getelementptr %struct.nvme_queue, ptr %1, i32 %qid, i32 16
  %6 = ptrtoint ptr %sqes to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %cond, ptr %sqes, align 1
  %q_depth = getelementptr %struct.nvme_queue, ptr %1, i32 %qid, i32 9
  %7 = ptrtoint ptr %q_depth to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %depth, ptr %q_depth, align 4
  %dev1 = getelementptr inbounds %struct.nvme_dev, ptr %dev, i32 0, i32 4
  %8 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev1, align 8
  %mul = shl i32 %depth, 4
  %cq_dma_addr = getelementptr %struct.nvme_queue, ptr %1, i32 %qid, i32 7
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %9, i32 noundef %mul, ptr noundef %cq_dma_addr, i32 noundef 3264, i32 noundef 0) #16
  %cqes = getelementptr %struct.nvme_queue, ptr %1, i32 %qid, i32 5
  %10 = ptrtoint ptr %cqes to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %cqes, align 4
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %cond.end.cleanup_crit_edge, label %if.end6

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end6:                                          ; preds = %cond.end
  br i1 %tobool.not, label %if.end6.nvme_alloc_sq_cmds.exit_crit_edge, label %land.lhs.true.i

if.end6.nvme_alloc_sq_cmds.exit_crit_edge:        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  br label %nvme_alloc_sq_cmds.exit

land.lhs.true.i:                                  ; preds = %if.end6
  %cmb_use_sqes.i = getelementptr inbounds %struct.nvme_dev, ptr %dev, i32 0, i32 20
  %11 = ptrtoint ptr %cmb_use_sqes.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %cmb_use_sqes.i, align 8, !range !351
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool2.not.i = icmp eq i8 %12, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.nvme_alloc_sq_cmds.exit_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.nvme_alloc_sq_cmds.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %nvme_alloc_sq_cmds.exit

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %cmbsz.i = getelementptr inbounds %struct.nvme_dev, ptr %dev, i32 0, i32 21
  %13 = ptrtoint ptr %cmbsz.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cmbsz.i, align 4
  %and.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true3.i.nvme_alloc_sq_cmds.exit_crit_edge, label %if.then.i

land.lhs.true3.i.nvme_alloc_sq_cmds.exit_crit_edge: ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %nvme_alloc_sq_cmds.exit

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #18
  %sq_cmds.i = getelementptr %struct.nvme_queue, ptr %1, i32 %qid, i32 2
  %15 = ptrtoint ptr %sq_cmds.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %sq_cmds.i, align 16
  br label %nvme_alloc_sq_cmds.exit

nvme_alloc_sq_cmds.exit:                          ; preds = %if.then.i, %land.lhs.true3.i.nvme_alloc_sq_cmds.exit_crit_edge, %land.lhs.true.i.nvme_alloc_sq_cmds.exit_crit_edge, %if.end6.nvme_alloc_sq_cmds.exit_crit_edge
  %16 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev1, align 8
  %18 = ptrtoint ptr %q_depth to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %q_depth, align 4
  %20 = ptrtoint ptr %sqes to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %sqes, align 1
  %conv23.i = zext i8 %21 to i32
  %shl24.i = shl i32 %19, %conv23.i
  %sq_dma_addr25.i = getelementptr %struct.nvme_queue, ptr %1, i32 %qid, i32 6
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %17, i32 noundef %shl24.i, ptr noundef %sq_dma_addr25.i, i32 noundef 3264, i32 noundef 0) #16
  %sq_cmds27.i = getelementptr %struct.nvme_queue, ptr %1, i32 %qid, i32 2
  %22 = ptrtoint ptr %sq_cmds27.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i.i, ptr %sq_cmds27.i, align 16
  %tobool29.not.i.not = icmp eq ptr %call.i.i, null
  br i1 %tobool29.not.i.not, label %free_cqdma, label %if.end10

if.end10:                                         ; preds = %nvme_alloc_sq_cmds.exit
  call void @__sanitizer_cov_trace_pc() #18
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %dev, ptr %arrayidx, align 128
  %sq_lock = getelementptr %struct.nvme_queue, ptr %1, i32 %qid, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %sq_lock, ptr noundef nonnull @.str.58, ptr noundef nonnull @nvme_alloc_queue.__key, i16 noundef signext 3) #16
  %cq_poll_lock = getelementptr %struct.nvme_queue, ptr %1, i32 %qid, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %cq_poll_lock, ptr noundef nonnull @.str.60, ptr noundef nonnull @nvme_alloc_queue.__key.59, i16 noundef signext 3) #16
  %cq_head = getelementptr %struct.nvme_queue, ptr %1, i32 %qid, i32 13
  %24 = ptrtoint ptr %cq_head to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 0, ptr %cq_head, align 2
  %cq_phase = getelementptr %struct.nvme_queue, ptr %1, i32 %qid, i32 15
  %25 = ptrtoint ptr %cq_phase to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %cq_phase, align 2
  %dbs = getelementptr inbounds %struct.nvme_dev, ptr %dev, i32 0, i32 3
  %26 = ptrtoint ptr %dbs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dbs, align 4
  %mul17 = shl i32 %qid, 1
  %db_stride = getelementptr inbounds %struct.nvme_dev, ptr %dev, i32 0, i32 13
  %28 = ptrtoint ptr %db_stride to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %db_stride, align 4
  %mul18 = mul i32 %mul17, %29
  %arrayidx19 = getelementptr i32, ptr %27, i32 %mul18
  %q_db = getelementptr %struct.nvme_queue, ptr %1, i32 %qid, i32 8
  %30 = ptrtoint ptr %q_db to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %arrayidx19, ptr %q_db, align 8
  %conv20 = trunc i32 %qid to i16
  %qid21 = getelementptr %struct.nvme_queue, ptr %1, i32 %qid, i32 14
  %31 = ptrtoint ptr %qid21 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv20, ptr %qid21, align 8
  %32 = ptrtoint ptr %queue_count to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %queue_count, align 4
  %inc = add i32 %33, 1
  store i32 %inc, ptr %queue_count, align 4
  br label %cleanup

free_cqdma:                                       ; preds = %nvme_alloc_sq_cmds.exit
  call void @__sanitizer_cov_trace_pc() #18
  %34 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev1, align 8
  %36 = ptrtoint ptr %q_depth to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %q_depth, align 4
  %mul26 = shl i32 %37, 4
  %38 = ptrtoint ptr %cqes to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cqes, align 4
  %40 = ptrtoint ptr %cq_dma_addr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cq_dma_addr, align 4
  tail call void @dma_free_attrs(ptr noundef %35, i32 noundef %mul26, ptr noundef %39, i32 noundef %41, i32 noundef 0) #16
  br label %cleanup

cleanup:                                          ; preds = %free_cqdma, %if.end10, %cond.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end10 ], [ 0, %entry.cleanup_crit_edge ], [ -12, %cond.end.cleanup_crit_edge ], [ -12, %free_cqdma ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvme_enable_ctrl(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nvme_irq_check(i32 noundef %irq, ptr nocapture noundef readonly %data) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %cqes.i = getelementptr inbounds %struct.nvme_queue, ptr %data, i32 0, i32 5
  %0 = ptrtoint ptr %cqes.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cqes.i, align 4
  %cq_head.i = getelementptr inbounds %struct.nvme_queue, ptr %data, i32 0, i32 13
  %2 = ptrtoint ptr %cq_head.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %cq_head.i, align 2
  %idxprom.i = zext i16 %3 to i32
  %status.i = getelementptr %struct.nvme_completion, ptr %1, i32 %idxprom.i, i32 4
  %4 = ptrtoint ptr %status.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load volatile i16, ptr %status.i, align 2
  %6 = lshr i16 %5, 8
  %7 = and i16 %6, 1
  %cq_phase.i = getelementptr inbounds %struct.nvme_queue, ptr %data, i32 0, i32 15
  %8 = ptrtoint ptr %cq_phase.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %cq_phase.i, align 2
  %10 = zext i8 %9 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %10)
  %cmp.i = icmp eq i16 %7, %10
  %. = select i1 %cmp.i, i32 2, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvme_irq(i32 noundef %irq, ptr nocapture noundef %data) #2 align 64 {
entry:
  %iob = alloca %struct.io_comp_batch, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %iob) #16
  %0 = call ptr @memset(ptr %iob, i32 0, i32 12)
  %call = call fastcc i32 @nvme_poll_cq(ptr noundef %data, ptr noundef nonnull %iob)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then:                                          ; preds = %entry
  %1 = ptrtoint ptr %iob to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %iob, align 4
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.then1

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  call void @nvme_pci_complete_batch(ptr noundef nonnull %iob)
  br label %cleanup

cleanup:                                          ; preds = %if.then1, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then1 ], [ 1, %if.then.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %iob) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_mq_alloc_tag_set(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @blk_mq_init_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_free_tag_set(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @blk_get_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @nvme_queue_rq(ptr nocapture noundef readonly %hctx, ptr nocapture noundef readonly %bd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 9
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 128
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %4 = ptrtoint ptr %bd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bd, align 4
  %flags = getelementptr inbounds %struct.nvme_queue, ptr %1, i32 0, i32 17
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !350

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %ctrl = getelementptr inbounds %struct.nvme_dev, ptr %3, i32 0, i32 23
  %state.i = getelementptr inbounds %struct.nvme_dev, ptr %3, i32 0, i32 23, i32 1
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.i = icmp eq i32 %9, 1
  br i1 %cmp.i, label %if.end.if.end18_crit_edge, label %if.end.i, !prof !367

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18

if.end.i:                                         ; preds = %if.end
  %ops.i = getelementptr inbounds %struct.nvme_dev, ptr %3, i32 0, i32 23, i32 5
  %10 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i, align 4
  %flags.i = getelementptr inbounds %struct.nvme_ctrl_ops, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp ne i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %cmp4.i = icmp eq i32 %9, 4
  %or.cond.i = select i1 %tobool2.not.i, i1 %cmp4.i, i1 false
  br i1 %or.cond.i, label %if.end.i.if.end18_crit_edge, label %nvme_check_ready.exit

if.end.i.if.end18_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18

nvme_check_ready.exit:                            ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__nvme_check_ready(ptr noundef %ctrl, ptr noundef %5, i1 noundef zeroext true) #16
  br i1 %call.i, label %nvme_check_ready.exit.if.end18_crit_edge, label %if.then15, !prof !367

nvme_check_ready.exit.if.end18_crit_edge:         ; preds = %nvme_check_ready.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18

if.then15:                                        ; preds = %nvme_check_ready.exit
  call void @__sanitizer_cov_trace_pc() #18
  %call17 = tail call zeroext i8 @nvme_fail_nonready_command(ptr noundef %ctrl, ptr noundef %5) #16
  br label %cleanup

if.end18:                                         ; preds = %nvme_check_ready.exit.if.end18_crit_edge, %if.end.i.if.end18_crit_edge, %if.end.if.end18_crit_edge
  %call19 = tail call fastcc zeroext i8 @nvme_prep_rq(ptr noundef %3, ptr noundef %5)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call19)
  %tobool20.not = icmp eq i8 %call19, 0
  br i1 %tobool20.not, label %if.end28, label %if.end18.cleanup_crit_edge, !prof !367

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end28:                                         ; preds = %if.end18
  %sq_lock = getelementptr inbounds %struct.nvme_queue, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %sq_lock) #16
  %cmd = getelementptr %struct.request, ptr %5, i32 1, i32 8
  %sq_cmds.i = getelementptr inbounds %struct.nvme_queue, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %sq_cmds.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sq_cmds.i, align 16
  %sq_tail.i = getelementptr inbounds %struct.nvme_queue, ptr %1, i32 0, i32 11
  %16 = ptrtoint ptr %sq_tail.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %sq_tail.i, align 2
  %conv.i = zext i16 %17 to i32
  %sqes.i = getelementptr inbounds %struct.nvme_queue, ptr %1, i32 0, i32 16
  %18 = ptrtoint ptr %sqes.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %sqes.i, align 1
  %conv1.i = zext i8 %19 to i32
  %shl.i = shl i32 %conv.i, %conv1.i
  %add.ptr.i47 = getelementptr i8, ptr %15, i32 %shl.i
  %20 = call ptr @memcpy(ptr %add.ptr.i47, ptr %cmd, i32 64)
  %21 = load i16, ptr %sq_tail.i, align 2
  %inc.i = add i16 %21, 1
  %conv3.i = zext i16 %inc.i to i32
  %q_depth.i = getelementptr inbounds %struct.nvme_queue, ptr %1, i32 0, i32 9
  %22 = ptrtoint ptr %q_depth.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %q_depth.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %conv3.i)
  %cmp.i48 = icmp eq i32 %23, %conv3.i
  %spec.store.select.i = select i1 %cmp.i48, i16 0, i16 %inc.i
  %24 = ptrtoint ptr %sq_tail.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %spec.store.select.i, ptr %sq_tail.i, align 2
  %last = getelementptr inbounds %struct.blk_mq_queue_data, ptr %bd, i32 0, i32 1
  %25 = ptrtoint ptr %last to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %last, align 4, !range !351
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool29.not = icmp eq i8 %26, 0
  br i1 %tobool29.not, label %if.then.i, label %if.end28.if.end11.i_crit_edge

if.end28.if.end11.i_crit_edge:                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11.i

if.then.i:                                        ; preds = %if.end28
  %add.i = add i16 %spec.store.select.i, 1
  %conv2.i = zext i16 %add.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %conv2.i)
  %cmp.i51 = icmp eq i32 %23, %conv2.i
  %conv5.i = select i1 %cmp.i51, i32 0, i32 %conv2.i
  %last_sq_tail.i = getelementptr inbounds %struct.nvme_queue, ptr %1, i32 0, i32 12
  %27 = ptrtoint ptr %last_sq_tail.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %last_sq_tail.i, align 4
  %conv6.i = zext i16 %28 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv5.i, i32 %conv6.i)
  %cmp7.not.i = icmp eq i32 %conv5.i, %conv6.i
  br i1 %cmp7.not.i, label %if.then.i.if.end11.i_crit_edge, label %if.then.i.nvme_write_sq_db.exit_crit_edge

if.then.i.nvme_write_sq_db.exit_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %nvme_write_sq_db.exit

if.then.i.if.end11.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then.i.if.end11.i_crit_edge, %if.end28.if.end11.i_crit_edge
  %dbbuf_sq_db.i = getelementptr inbounds %struct.nvme_queue, ptr %1, i32 0, i32 18
  %29 = ptrtoint ptr %dbbuf_sq_db.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dbbuf_sq_db.i, align 16
  %tobool.not.i.i = icmp eq ptr %30, null
  br i1 %tobool.not.i.i, label %if.end11.i.do.body.i_crit_edge, label %if.then.i.i

if.end11.i.do.body.i_crit_edge:                   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i

if.then.i.i:                                      ; preds = %if.end11.i
  %dbbuf_sq_ei.i = getelementptr inbounds %struct.nvme_queue, ptr %1, i32 0, i32 20
  %31 = ptrtoint ptr %dbbuf_sq_ei.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dbbuf_sq_ei.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !373
  tail call void @arm_heavy_mb() #16
  %33 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %30, align 4
  %conv.i.i = trunc i32 %34 to i16
  %conv1.i.i = zext i16 %spec.store.select.i to i32
  store i32 %conv1.i.i, ptr %30, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !374
  tail call void @arm_heavy_mb() #16
  %35 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %32, align 4
  %conv5.i.i = trunc i32 %36 to i16
  %37 = xor i16 %conv5.i.i, -1
  %sub2.i.i.i = add i16 %spec.store.select.i, %37
  %sub7.i.i.i = sub i16 %spec.store.select.i, %conv.i.i
  call void @__sanitizer_cov_trace_cmp2(i16 %sub2.i.i.i, i16 %sub7.i.i.i)
  %cmp.i.not.i.i = icmp ult i16 %sub2.i.i.i, %sub7.i.i.i
  br i1 %cmp.i.not.i.i, label %if.then.i.i.do.body.i_crit_edge, label %if.then.i.i.if.end16.i_crit_edge

if.then.i.i.if.end16.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16.i

if.then.i.i.do.body.i_crit_edge:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i

do.body.i:                                        ; preds = %if.then.i.i.do.body.i_crit_edge, %if.end11.i.do.body.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !384
  tail call void @arm_heavy_mb() #16
  %38 = ptrtoint ptr %sq_tail.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %sq_tail.i, align 2
  %conv15.i = zext i16 %39 to i32
  %40 = tail call i32 @llvm.bswap.i32(i32 %conv15.i) #16
  %q_db.i = getelementptr inbounds %struct.nvme_queue, ptr %1, i32 0, i32 8
  %41 = ptrtoint ptr %q_db.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %q_db.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %40) #16, !srcloc !357
  br label %if.end16.i

if.end16.i:                                       ; preds = %do.body.i, %if.then.i.i.if.end16.i_crit_edge
  %43 = ptrtoint ptr %sq_tail.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %sq_tail.i, align 2
  %last_sq_tail18.i = getelementptr inbounds %struct.nvme_queue, ptr %1, i32 0, i32 12
  %45 = ptrtoint ptr %last_sq_tail18.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %last_sq_tail18.i, align 4
  br label %nvme_write_sq_db.exit

nvme_write_sq_db.exit:                            ; preds = %if.end16.i, %if.then.i.nvme_write_sq_db.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %sq_lock) #16
  br label %cleanup

cleanup:                                          ; preds = %nvme_write_sq_db.exit, %if.end18.cleanup_crit_edge, %if.then15, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ %call17, %if.then15 ], [ 0, %nvme_write_sq_db.exit ], [ 10, %entry.cleanup_crit_edge ], [ %call19, %if.end18.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvme_timeout(ptr noundef %req, i1 noundef zeroext %reserved) #2 align 64 {
entry:
  %pci_status.i = alloca i16, align 2
  %cmd = alloca %struct.nvme_command, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr %struct.request, ptr %req, i32 1
  %nvmeq1 = getelementptr %struct.request, ptr %req, i32 1, i32 17
  %0 = ptrtoint ptr %nvmeq1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nvmeq1, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #16
  %4 = call ptr @memset(ptr %cmd, i32 0, i32 64)
  %bar = getelementptr inbounds %struct.nvme_dev, ptr %3, i32 0, i32 14
  %5 = ptrtoint ptr %bar to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bar, align 8
  %add.ptr = getelementptr i8, ptr %6, i32 28
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #16, !srcloc !352
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !385
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !386
  tail call void @arm_heavy_mb() #16
  %dev5 = getelementptr inbounds %struct.nvme_dev, ptr %3, i32 0, i32 4
  %9 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev5, align 8
  %add.ptr7 = getelementptr i8, ptr %10, i32 -136
  %error_state.i = getelementptr i8, ptr %10, i32 -4
  %11 = ptrtoint ptr %error_state.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %error_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp.i.not = icmp eq i32 %12, 1
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %state.i = getelementptr inbounds %struct.nvme_dev, ptr %3, i32 0, i32 23, i32 1
  %13 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %state.i, align 4
  %15 = and i32 %14, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %switch.i = icmp eq i32 %15, 2
  br i1 %switch.i, label %if.end.if.end12_crit_edge, label %nvme_should_reset.exit

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12

nvme_should_reset.exit:                           ; preds = %if.end
  %subsystem.i = getelementptr inbounds %struct.nvme_dev, ptr %3, i32 0, i32 18
  %16 = ptrtoint ptr %subsystem.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %subsystem.i, align 8, !range !351
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i = icmp ne i8 %17, 0
  %and.i = and i32 %8, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.i = icmp ne i32 %and.i, 0
  %18 = and i1 %tobool1.i, %tobool.not.i
  %and2.i = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp ne i32 %and2.i, 0
  %brmerge.i = select i1 %tobool3.not.i, i1 true, i1 %18
  br i1 %brmerge.i, label %if.then10, label %nvme_should_reset.exit.if.end12_crit_edge

nvme_should_reset.exit.if.end12_crit_edge:        ; preds = %nvme_should_reset.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12

if.then10:                                        ; preds = %nvme_should_reset.exit
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %pci_status.i) #16
  %19 = ptrtoint ptr %pci_status.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 -1, ptr %pci_status.i, align 2, !annotation !349
  %call.i = call i32 @pci_read_config_word(ptr noundef %add.ptr7, i32 noundef 6, ptr noundef nonnull %pci_status.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i144 = icmp eq i32 %call.i, 0
  %device.i = getelementptr inbounds %struct.nvme_dev, ptr %3, i32 0, i32 23, i32 17
  %20 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %device.i, align 8
  br i1 %cmp.i144, label %do.end.i, label %do.end4.i

do.end.i:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #18
  %22 = ptrtoint ptr %pci_status.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %pci_status.i, align 2
  %conv.i145 = zext i16 %23 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %21, ptr noundef nonnull @.str.77, i32 noundef %8, i32 noundef %conv.i145) #21
  br label %nvme_warn_reset.exit

do.end4.i:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %21, ptr noundef nonnull @.str.80, i32 noundef %8, i32 noundef %call.i) #21
  br label %nvme_warn_reset.exit

nvme_warn_reset.exit:                             ; preds = %do.end4.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %pci_status.i) #16
  call fastcc void @nvme_dev_disable(ptr noundef %3, i1 noundef zeroext false)
  %ctrl = getelementptr inbounds %struct.nvme_dev, ptr %3, i32 0, i32 23
  %call11 = call i32 @nvme_reset_ctrl(ptr noundef %ctrl) #16
  br label %cleanup

if.end12:                                         ; preds = %nvme_should_reset.exit.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %flags = getelementptr inbounds %struct.nvme_queue, ptr %1, i32 0, i32 17
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %flags, align 4
  %26 = and i32 %25, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool14.not = icmp eq i32 %26, 0
  br i1 %tobool14.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.end12
  %mq_hctx = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 2
  %27 = ptrtoint ptr %mq_hctx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mq_hctx, align 8
  %driver_data.i = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %28, i32 0, i32 9
  %29 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %driver_data.i, align 128
  %cqes.i.i = getelementptr inbounds %struct.nvme_queue, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %cqes.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cqes.i.i, align 4
  %cq_head.i.i = getelementptr inbounds %struct.nvme_queue, ptr %30, i32 0, i32 13
  %33 = ptrtoint ptr %cq_head.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %cq_head.i.i, align 2
  %idxprom.i.i = zext i16 %34 to i32
  %status.i.i = getelementptr %struct.nvme_completion, ptr %32, i32 %idxprom.i.i, i32 4
  %35 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load volatile i16, ptr %status.i.i, align 2
  %37 = lshr i16 %36, 8
  %38 = and i16 %37, 1
  %cq_phase.i.i = getelementptr inbounds %struct.nvme_queue, ptr %30, i32 0, i32 15
  %39 = ptrtoint ptr %cq_phase.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %cq_phase.i.i, align 2
  %41 = zext i8 %40 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %38, i16 %41)
  %cmp.i.i = icmp eq i16 %38, %41
  br i1 %cmp.i.i, label %if.end.i, label %if.then15.if.end17_crit_edge

if.then15.if.end17_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end17

if.end.i:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #18
  %cq_poll_lock.i = getelementptr inbounds %struct.nvme_queue, ptr %30, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %cq_poll_lock.i) #16
  %call1.i = tail call fastcc i32 @nvme_poll_cq(ptr noundef %30, ptr noundef null) #16
  tail call void @_raw_spin_unlock(ptr noundef %cq_poll_lock.i) #16
  br label %if.end17

if.else:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @nvme_poll_irqdisable(ptr noundef %1)
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end.i, %if.then15.if.end17_crit_edge
  %state.i.i = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 25
  %42 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %43)
  %cmp.i148.not = icmp eq i32 %43, 2
  br i1 %cmp.i148.not, label %do.end23, label %if.end25

do.end23:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #18
  %device = getelementptr inbounds %struct.nvme_dev, ptr %3, i32 0, i32 23, i32 17
  %44 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %device, align 8
  %tag = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 5
  %46 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %tag, align 4
  %qid = getelementptr inbounds %struct.nvme_queue, ptr %1, i32 0, i32 14
  %48 = ptrtoint ptr %qid to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %qid, align 8
  %conv = zext i16 %49 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %45, ptr noundef nonnull @.str.65, i32 noundef %47, i32 noundef %conv) #21
  br label %cleanup

if.end25:                                         ; preds = %if.end17
  %ctrl26 = getelementptr inbounds %struct.nvme_dev, ptr %3, i32 0, i32 23
  %50 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %state.i, align 4
  %52 = zext i32 %51 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.128)
  switch i32 %51, label %sw.epilog [
    i32 3, label %sw.bb
    i32 4, label %if.end25.do.body30_crit_edge
    i32 2, label %if.end25.cleanup_crit_edge
  ]

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end25.do.body30_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body30

sw.bb:                                            ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #18
  %call28 = tail call zeroext i1 @nvme_change_ctrl_state(ptr noundef %ctrl26, i32 noundef 4) #16
  br label %do.body30

do.body30:                                        ; preds = %sw.bb, %if.end25.do.body30_crit_edge
  %call31 = tail call i32 @___ratelimit(ptr noundef nonnull @nvme_timeout._rs, ptr noundef nonnull @.str.66) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %do.body30.do.end44_crit_edge, label %do.end36

do.body30.do.end44_crit_edge:                     ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end44

do.end36:                                         ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #18
  %device38 = getelementptr inbounds %struct.nvme_dev, ptr %3, i32 0, i32 23, i32 17
  %53 = ptrtoint ptr %device38 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %device38, align 8
  %tag39 = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 5
  %55 = ptrtoint ptr %tag39 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %tag39, align 4
  %qid40 = getelementptr inbounds %struct.nvme_queue, ptr %1, i32 0, i32 14
  %57 = ptrtoint ptr %qid40 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %qid40, align 8
  %conv41 = zext i16 %58 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %54, ptr noundef nonnull @.str.69, i32 noundef %56, i32 noundef %conv41) #21
  br label %do.end44

do.end44:                                         ; preds = %do.end36, %do.body30.do.end44_crit_edge
  %flags46 = getelementptr inbounds %struct.nvme_request, ptr %add.ptr.i, i32 0, i32 4
  %59 = ptrtoint ptr %flags46 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %flags46, align 2
  %61 = or i8 %60, 1
  store i8 %61, ptr %flags46, align 2
  tail call fastcc void @nvme_dev_disable(ptr noundef %3, i1 noundef zeroext true)
  br label %cleanup

sw.epilog:                                        ; preds = %if.end25
  %qid50 = getelementptr inbounds %struct.nvme_queue, ptr %1, i32 0, i32 14
  %62 = ptrtoint ptr %qid50 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %qid50, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %63)
  %tobool51.not = icmp eq i16 %63, 0
  br i1 %tobool51.not, label %sw.epilog.do.end56_crit_edge, label %lor.lhs.false

sw.epilog.do.end56_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end56

lor.lhs.false:                                    ; preds = %sw.epilog
  %aborted = getelementptr %struct.request, ptr %req, i32 1, i32 21
  %64 = ptrtoint ptr %aborted to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %aborted, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool52.not = icmp eq i32 %65, 0
  br i1 %tobool52.not, label %if.end69, label %lor.lhs.false.do.end56_crit_edge

lor.lhs.false.do.end56_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end56

do.end56:                                         ; preds = %lor.lhs.false.do.end56_crit_edge, %sw.epilog.do.end56_crit_edge
  %device58 = getelementptr inbounds %struct.nvme_dev, ptr %3, i32 0, i32 23, i32 17
  %66 = ptrtoint ptr %device58 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %device58, align 8
  %tag59 = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 5
  %68 = ptrtoint ptr %tag59 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %tag59, align 4
  %conv61 = zext i16 %63 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %67, ptr noundef nonnull @.str.72, i32 noundef %69, i32 noundef %conv61) #21
  %flags63 = getelementptr inbounds %struct.nvme_request, ptr %add.ptr.i, i32 0, i32 4
  %70 = ptrtoint ptr %flags63 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %flags63, align 2
  %72 = or i8 %71, 1
  store i8 %72, ptr %flags63, align 2
  tail call fastcc void @nvme_dev_disable(ptr noundef %3, i1 noundef zeroext false)
  %call68 = tail call i32 @nvme_reset_ctrl(ptr noundef %ctrl26) #16
  br label %cleanup

if.end69:                                         ; preds = %lor.lhs.false
  %abort_limit = getelementptr inbounds %struct.nvme_dev, ptr %3, i32 0, i32 23, i32 46
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %abort_limit, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !387
  tail call void @llvm.prefetch.p0(ptr %abort_limit, i32 1, i32 3, i32 1) #16
  %73 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %abort_limit, ptr %abort_limit, i32 1, ptr elementtype(i32) %abort_limit) #16, !srcloc !388
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %73, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !389
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp = icmp slt i32 %asmresult.i.i.i.i, 0
  br i1 %cmp, label %if.then73, label %if.end76

if.then73:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i141 = tail call zeroext i1 @__kasan_check_write(ptr noundef %abort_limit, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %abort_limit, i32 1, i32 3, i32 1) #16
  %74 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %abort_limit, ptr %abort_limit, i32 1, ptr elementtype(i32) %abort_limit) #16, !srcloc !390
  br label %cleanup

if.end76:                                         ; preds = %if.end69
  %75 = ptrtoint ptr %aborted to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 1, ptr %aborted, align 8
  %76 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 8, ptr %cmd, align 8
  %genctr.i = getelementptr %struct.request, ptr %req, i32 1, i32 4
  %77 = ptrtoint ptr %genctr.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %genctr.i, align 8
  %and.i151 = zext i8 %78 to i32
  %shl.i = shl nuw nsw i32 %and.i151, 12
  %tag.i = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 5
  %79 = ptrtoint ptr %tag.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %tag.i, align 4
  %or.i = or i32 %shl.i, %80
  %conv1.i = trunc i32 %or.i to i16
  %cid = getelementptr inbounds %struct.nvme_abort_cmd, ptr %cmd, i32 0, i32 5
  %81 = ptrtoint ptr %cid to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 %conv1.i, ptr %cid, align 2
  %82 = ptrtoint ptr %qid50 to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %qid50, align 8
  %84 = tail call i16 @llvm.bswap.i16(i16 %83)
  %sqid = getelementptr inbounds %struct.nvme_abort_cmd, ptr %cmd, i32 0, i32 4
  %85 = ptrtoint ptr %sqid to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %84, ptr %sqid, align 8
  %86 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %1, align 128
  %device85 = getelementptr inbounds %struct.nvme_dev, ptr %87, i32 0, i32 23, i32 17
  %88 = ptrtoint ptr %device85 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %device85, align 8
  %conv88 = zext i16 %83 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %89, ptr noundef nonnull @.str.75, i32 noundef %80, i32 noundef %conv88) #21
  %admin_q = getelementptr inbounds %struct.nvme_dev, ptr %3, i32 0, i32 23, i32 6
  %90 = ptrtoint ptr %admin_q to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %admin_q, align 8
  %call90 = call ptr @nvme_alloc_request(ptr noundef %91, ptr noundef nonnull %cmd, i32 noundef 1) #16
  %cmp.i152 = icmp ugt ptr %call90, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i152, label %if.then92, label %if.end95

if.then92:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i142 = call zeroext i1 @__kasan_check_write(ptr noundef %abort_limit, i32 noundef 4) #16
  call void @llvm.prefetch.p0(ptr %abort_limit, i32 1, i32 3, i32 1) #16
  %92 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %abort_limit, ptr %abort_limit, i32 1, ptr elementtype(i32) %abort_limit) #16, !srcloc !390
  br label %cleanup

if.end95:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #18
  %end_io_data = getelementptr inbounds %struct.request, ptr %call90, i32 0, i32 33
  %93 = ptrtoint ptr %end_io_data to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr null, ptr %end_io_data, align 4
  call void @blk_execute_rq_nowait(ptr noundef %call90, i1 noundef zeroext false, ptr noundef nonnull @abort_endio) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end95, %if.then92, %if.then73, %do.end56, %do.end44, %if.end25.cleanup_crit_edge, %do.end23, %nvme_warn_reset.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %nvme_warn_reset.exit ], [ 0, %do.end23 ], [ 0, %do.end56 ], [ 1, %if.then73 ], [ 1, %if.then92 ], [ 1, %if.end95 ], [ 0, %do.end44 ], [ 1, %entry.cleanup_crit_edge ], [ 1, %if.end25.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvme_admin_init_hctx(ptr nocapture noundef %hctx, ptr nocapture noundef readonly %data, i32 noundef %hctx_idx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hctx_idx)
  %cmp.not = icmp eq i32 %hctx_idx, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end, !prof !367

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 409, i32 noundef 9, ptr noundef null) #16
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %tags = getelementptr inbounds %struct.nvme_dev, ptr %data, i32 0, i32 2, i32 11
  %2 = ptrtoint ptr %tags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tags, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tags21 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 19
  %6 = ptrtoint ptr %tags21 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tags21, align 16
  %cmp22.not = icmp eq ptr %5, %7
  br i1 %cmp22.not, label %if.end.if.end44_crit_edge, label %do.end38, !prof !367

if.end.if.end44_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end44

do.end38:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 410, i32 noundef 9, ptr noundef null) #16
  br label %if.end44

if.end44:                                         ; preds = %do.end38, %if.end.if.end44_crit_edge
  %driver_data = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 9
  %8 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %1, ptr %driver_data, align 128
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvme_init_request(ptr noundef readonly %set, ptr noundef %req, i32 noundef %hctx_idx, i32 noundef %numa_node) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.blk_mq_tag_set, ptr %set, i32 0, i32 10
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %tagset = getelementptr inbounds %struct.nvme_dev, ptr %1, i32 0, i32 1
  %cmp = icmp eq ptr %tagset, %set
  %add = add i32 %hctx_idx, 1
  %spec.select = select i1 %cmp, i32 %add, i32 0
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %arrayidx = getelementptr %struct.nvme_queue, ptr %3, i32 %spec.select
  %tobool.not = icmp eq ptr %arrayidx, null
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !350

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/nvme/host/pci.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 435, 0\0A.popsection", ""() #16, !srcloc !391
  unreachable

do.end9:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i = getelementptr %struct.request, ptr %req, i32 1
  %nvmeq10 = getelementptr %struct.request, ptr %req, i32 1, i32 17
  %4 = ptrtoint ptr %nvmeq10 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %arrayidx, ptr %nvmeq10, align 8
  %ctrl = getelementptr inbounds %struct.nvme_dev, ptr %1, i32 0, i32 23
  %ctrl12 = getelementptr %struct.request, ptr %req, i32 1, i32 6
  %5 = ptrtoint ptr %ctrl12 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %ctrl, ptr %ctrl12, align 8
  %cmd = getelementptr %struct.request, ptr %req, i32 1, i32 8
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %cmd, ptr %add.ptr.i, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @nvme_fail_nonready_command(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @nvme_prep_rq(ptr nocapture noundef readonly %dev, ptr noundef %req) unnamed_addr #2 align 64 {
entry:
  %sgl_dma.i.i = alloca i32, align 4
  %last_sg.i.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %aborted = getelementptr %struct.request, ptr %req, i32 1, i32 21
  %0 = ptrtoint ptr %aborted to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %aborted, align 8
  %npages = getelementptr %struct.request, ptr %req, i32 1, i32 22
  %1 = ptrtoint ptr %npages to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %npages, align 4
  %nents = getelementptr %struct.request, ptr %req, i32 1, i32 23
  %2 = ptrtoint ptr %nents to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %nents, align 8
  %3 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %req, align 8
  %queuedata = getelementptr inbounds %struct.request_queue, ptr %4, i32 0, i32 10
  %5 = ptrtoint ptr %queuedata to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %queuedata, align 4
  %call1 = tail call zeroext i8 @nvme_setup_cmd(ptr noundef %6, ptr noundef %req) #16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call1)
  %tobool.not = icmp eq i8 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %rq_flags.i = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 4
  %7 = ptrtoint ptr %rq_flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rq_flags.i, align 8
  %and.i = and i32 %8, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %blk_rq_nr_phys_segments.exit, label %if.then.i.i

blk_rq_nr_phys_segments.exit:                     ; preds = %if.end
  %nr_phys_segments.i = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 19
  %9 = ptrtoint ptr %nr_phys_segments.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %nr_phys_segments.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool3.not = icmp eq i16 %10, 0
  br i1 %tobool3.not, label %blk_rq_nr_phys_segments.exit.if.end9_crit_edge, label %blk_rq_nr_phys_segments.exit.i

blk_rq_nr_phys_segments.exit.if.end9_crit_edge:   ; preds = %blk_rq_nr_phys_segments.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9

blk_rq_nr_phys_segments.exit.i:                   ; preds = %blk_rq_nr_phys_segments.exit
  %cmd50 = getelementptr %struct.request, ptr %req, i32 1, i32 8
  %11 = ptrtoint ptr %nr_phys_segments.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %nr_phys_segments.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %12)
  %cmp.i = icmp eq i16 %12, 1
  br i1 %cmp.i, label %if.end.i121.i, label %blk_rq_nr_phys_segments.exit.i.if.end18.i_crit_edge

blk_rq_nr_phys_segments.exit.i.if.end18.i_crit_edge: ; preds = %blk_rq_nr_phys_segments.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18.i

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %cmd = getelementptr %struct.request, ptr %req, i32 1, i32 8
  %13 = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 29
  %bv.sroa.7.0..sroa_idx.i = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 29, i32 0, i32 1
  %14 = ptrtoint ptr %bv.sroa.7.0..sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %bv.sroa.7.0.copyload.i = load i32, ptr %bv.sroa.7.0..sroa_idx.i, align 4
  %bv.sroa.15.0..sroa_idx.i = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 29, i32 0, i32 2
  %15 = ptrtoint ptr %bv.sroa.15.0..sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %bv.sroa.15.0.copyload.i = load i32, ptr %bv.sroa.15.0..sroa_idx.i, align 8
  br label %req_bvec.exit.i

if.end.i121.i:                                    ; preds = %blk_rq_nr_phys_segments.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %bio.i.i = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 10
  %16 = ptrtoint ptr %bio.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bio.i.i, align 8, !noalias !392
  %bi_io_vec.i.i = getelementptr inbounds %struct.bio, ptr %17, i32 0, i32 20
  %18 = ptrtoint ptr %bi_io_vec.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bi_io_vec.i.i, align 8, !noalias !392
  %bi_idx.i.i = getelementptr inbounds %struct.bio, ptr %17, i32 0, i32 8, i32 2
  %20 = ptrtoint ptr %bi_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bi_idx.i.i, align 4, !noalias !392
  %arrayidx.i.i = getelementptr %struct.bio_vec, ptr %19, i32 %21
  %bi_size.i.i = getelementptr inbounds %struct.bio, ptr %17, i32 0, i32 8, i32 1
  %22 = ptrtoint ptr %bi_size.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bi_size.i.i, align 8, !noalias !392
  %bv_len11.i.i = getelementptr %struct.bio_vec, ptr %19, i32 %21, i32 1
  %24 = ptrtoint ptr %bv_len11.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bv_len11.i.i, align 4, !noalias !392
  %bi_bvec_done.i.i = getelementptr inbounds %struct.bio, ptr %17, i32 0, i32 8, i32 3
  %26 = ptrtoint ptr %bi_bvec_done.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bi_bvec_done.i.i, align 8, !noalias !392
  %sub.i.i = sub i32 %25, %27
  %28 = tail call i32 @llvm.umin.i32(i32 %23, i32 %sub.i.i) #16
  %bv_offset20.i.i = getelementptr %struct.bio_vec, ptr %19, i32 %21, i32 2
  %29 = ptrtoint ptr %bv_offset20.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %bv_offset20.i.i, align 4, !noalias !392
  %add.i.i = add i32 %30, %27
  br label %req_bvec.exit.i

req_bvec.exit.i:                                  ; preds = %if.end.i121.i, %if.then.i.i
  %cmd51 = phi ptr [ %cmd50, %if.end.i121.i ], [ %cmd, %if.then.i.i ]
  %bv.sroa.15.0.i = phi i32 [ %add.i.i, %if.end.i121.i ], [ %bv.sroa.15.0.copyload.i, %if.then.i.i ]
  %bv.sroa.7.0.i = phi i32 [ %28, %if.end.i121.i ], [ %bv.sroa.7.0.copyload.i, %if.then.i.i ]
  %bv.sroa.0.0.in.i = phi ptr [ %arrayidx.i.i, %if.end.i121.i ], [ %13, %if.then.i.i ]
  %31 = ptrtoint ptr %bv.sroa.0.0.in.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %bv.sroa.0.0.i = load ptr, ptr %bv.sroa.0.0.in.i, align 4
  %add.i = add i32 %bv.sroa.7.0.i, %bv.sroa.15.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8193, i32 %add.i)
  %cmp5.i = icmp ult i32 %add.i, 8193
  br i1 %cmp5.i, label %if.then7.i, label %if.end.i39

if.then7.i:                                       ; preds = %req_bvec.exit.i
  %and.i123.i = and i32 %bv.sroa.15.0.i, 4095
  %sub.i124.i = sub nuw nsw i32 4096, %and.i123.i
  %dev1.i.i = getelementptr inbounds %struct.nvme_dev, ptr %dev, i32 0, i32 4
  %32 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev1.i.i, align 8
  %cmd_flags.i.i = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 3
  %34 = ptrtoint ptr %cmd_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cmd_flags.i.i, align 4
  %and.i.i.i = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  %cond.i.i = select i1 %tobool.i.not.i.i, i32 2, i32 1
  %call5.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %33, ptr noundef %bv.sroa.0.0.i, i32 noundef %bv.sroa.15.0.i, i32 noundef %bv.sroa.7.0.i, i32 noundef %cond.i.i, i32 noundef 0) #16
  %first_dma.i.i = getelementptr %struct.request, ptr %req, i32 1, i32 25
  %36 = ptrtoint ptr %first_dma.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %call5.i.i, ptr %first_dma.i.i, align 4
  %37 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev1.i.i, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %38, i32 noundef %call5.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call5.i.i)
  %cmp.i.not.i.i = icmp eq i32 %call5.i.i, -1
  br i1 %cmp.i.not.i.i, label %if.then7.i.out_free_cmd_crit_edge, label %if.end.i126.i

if.then7.i.out_free_cmd_crit_edge:                ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_free_cmd

if.end.i126.i:                                    ; preds = %if.then7.i
  %dma_len.i.i = getelementptr %struct.request, ptr %req, i32 1, i32 26
  %39 = ptrtoint ptr %dma_len.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %bv.sroa.7.0.i, ptr %dma_len.i.i, align 8
  %40 = ptrtoint ptr %first_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %first_dma.i.i, align 4
  %conv.i.i = zext i32 %41 to i64
  %42 = tail call i64 @llvm.bswap.i64(i64 %conv.i.i) #16
  %dptr.i.i = getelementptr %struct.request, ptr %req, i32 1, i32 12
  %43 = ptrtoint ptr %dptr.i.i to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %42, ptr %dptr.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %bv.sroa.7.0.i, i32 %sub.i124.i)
  %cmp.i.i = icmp ugt i32 %bv.sroa.7.0.i, %sub.i124.i
  br i1 %cmp.i.i, label %if.then13.i.i, label %if.end.i126.i.if.end9_crit_edge

if.end.i126.i.if.end9_crit_edge:                  ; preds = %if.end.i126.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9

if.then13.i.i:                                    ; preds = %if.end.i126.i
  call void @__sanitizer_cov_trace_pc() #18
  %add.i127.i = add i32 %41, %sub.i124.i
  %conv15.i.i = zext i32 %add.i127.i to i64
  %44 = tail call i64 @llvm.bswap.i64(i64 %conv15.i.i) #16
  %prp2.i.i = getelementptr %struct.request, ptr %req, i32 1, i32 13
  %45 = ptrtoint ptr %prp2.i.i to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %44, ptr %prp2.i.i, align 8
  br label %if.end9

if.end.i39:                                       ; preds = %req_bvec.exit.i
  %nvmeq.i = getelementptr %struct.request, ptr %req, i32 1, i32 17
  %46 = ptrtoint ptr %nvmeq.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %nvmeq.i, align 8
  %qid.i = getelementptr inbounds %struct.nvme_queue, ptr %47, i32 0, i32 14
  %48 = ptrtoint ptr %qid.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %qid.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %tobool.not.i38 = icmp eq i16 %49, 0
  br i1 %tobool.not.i38, label %if.end.i39.if.end18.i_crit_edge, label %land.lhs.true.i

if.end.i39.if.end18.i_crit_edge:                  ; preds = %if.end.i39
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18.i

land.lhs.true.i:                                  ; preds = %if.end.i39
  %50 = load i32, ptr @sgl_threshold, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool10.not.i = icmp eq i32 %50, 0
  br i1 %tobool10.not.i, label %land.lhs.true.i.if.end18.i_crit_edge, label %land.lhs.true11.i

land.lhs.true.i.if.end18.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18.i

land.lhs.true11.i:                                ; preds = %land.lhs.true.i
  %sgls.i.i = getelementptr inbounds %struct.nvme_dev, ptr %dev, i32 0, i32 23, i32 49
  %51 = ptrtoint ptr %sgls.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %sgls.i.i, align 4
  %and.i129.i = and i32 %52, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i129.i)
  %tobool.i.not.i = icmp eq i32 %and.i129.i, 0
  br i1 %tobool.i.not.i, label %land.lhs.true11.i.if.end18.i_crit_edge, label %if.then14.i

land.lhs.true11.i.if.end18.i_crit_edge:           ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18.i

if.then14.i:                                      ; preds = %land.lhs.true11.i
  %dev1.i130.i = getelementptr inbounds %struct.nvme_dev, ptr %dev, i32 0, i32 4
  %53 = ptrtoint ptr %dev1.i130.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev1.i130.i, align 8
  %cmd_flags.i133.i = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 3
  %55 = ptrtoint ptr %cmd_flags.i133.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %cmd_flags.i133.i, align 4
  %and.i.i134.i = and i32 %56, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i134.i)
  %tobool.i.not.i135.i = icmp eq i32 %and.i.i134.i, 0
  %cond.i136.i = select i1 %tobool.i.not.i135.i, i32 2, i32 1
  %call3.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %54, ptr noundef %bv.sroa.0.0.i, i32 noundef %bv.sroa.15.0.i, i32 noundef %bv.sroa.7.0.i, i32 noundef %cond.i136.i, i32 noundef 0) #16
  %first_dma.i137.i = getelementptr %struct.request, ptr %req, i32 1, i32 25
  %57 = ptrtoint ptr %first_dma.i137.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %call3.i.i, ptr %first_dma.i137.i, align 4
  %58 = ptrtoint ptr %dev1.i130.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev1.i130.i, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %59, i32 noundef %call3.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call3.i.i)
  %cmp.i.not.i138.i = icmp eq i32 %call3.i.i, -1
  br i1 %cmp.i.not.i138.i, label %if.then14.i.out_free_cmd_crit_edge, label %if.end.i142.i

if.then14.i.out_free_cmd_crit_edge:               ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_free_cmd

if.end.i142.i:                                    ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #18
  %60 = getelementptr %struct.request, ptr %req, i32 1, i32 8
  %dma_len.i139.i = getelementptr %struct.request, ptr %req, i32 1, i32 26
  %61 = ptrtoint ptr %dma_len.i139.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %bv.sroa.7.0.i, ptr %dma_len.i139.i, align 8
  %flags.i.i = getelementptr inbounds %struct.nvme_rw_command, ptr %60, i32 0, i32 1
  %62 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 64, ptr %flags.i.i, align 1
  %63 = ptrtoint ptr %first_dma.i137.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %first_dma.i137.i, align 4
  %conv.i140.i = zext i32 %64 to i64
  %65 = tail call i64 @llvm.bswap.i64(i64 %conv.i140.i) #16
  %dptr.i141.i = getelementptr %struct.request, ptr %req, i32 1, i32 12
  %66 = ptrtoint ptr %dptr.i141.i to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 %65, ptr %dptr.i141.i, align 8
  %67 = tail call i32 @llvm.bswap.i32(i32 %bv.sroa.7.0.i) #16
  %length.i.i = getelementptr %struct.request, ptr %req, i32 1, i32 13
  %68 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %length.i.i, align 8
  %type.i.i = getelementptr inbounds %struct.nvme_sgl_desc, ptr %dptr.i141.i, i32 0, i32 3
  %69 = ptrtoint ptr %type.i.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %type.i.i, align 1
  br label %if.end9

if.end18.i:                                       ; preds = %land.lhs.true11.i.if.end18.i_crit_edge, %land.lhs.true.i.if.end18.i_crit_edge, %if.end.i39.if.end18.i_crit_edge, %blk_rq_nr_phys_segments.exit.i.if.end18.i_crit_edge
  %cmd53 = phi ptr [ %cmd51, %land.lhs.true11.i.if.end18.i_crit_edge ], [ %cmd51, %land.lhs.true.i.if.end18.i_crit_edge ], [ %cmd51, %if.end.i39.if.end18.i_crit_edge ], [ %cmd50, %blk_rq_nr_phys_segments.exit.i.if.end18.i_crit_edge ]
  %dma_len.i = getelementptr %struct.request, ptr %req, i32 1, i32 26
  %70 = ptrtoint ptr %dma_len.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %dma_len.i, align 8
  %iod_mempool.i = getelementptr inbounds %struct.nvme_dev, ptr %dev, i32 0, i32 26
  %71 = ptrtoint ptr %iod_mempool.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %iod_mempool.i, align 8
  %call19.i = tail call noalias ptr @mempool_alloc(ptr noundef %72, i32 noundef 2592) #16
  %sg.i = getelementptr %struct.request, ptr %req, i32 1, i32 28
  %73 = ptrtoint ptr %sg.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call19.i, ptr %sg.i, align 8
  %tobool21.not.i = icmp eq ptr %call19.i, null
  br i1 %tobool21.not.i, label %if.end18.i.out_free_cmd_crit_edge, label %if.end23.i

if.end18.i.out_free_cmd_crit_edge:                ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_free_cmd

if.end23.i:                                       ; preds = %if.end18.i
  %74 = ptrtoint ptr %rq_flags.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %rq_flags.i, align 8
  %and.i145.i = and i32 %75, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i145.i)
  %tobool.not.i146.i = icmp eq i32 %and.i145.i, 0
  br i1 %tobool.not.i146.i, label %if.end.i148.i, label %if.end23.i.blk_rq_nr_phys_segments.exit150.i_crit_edge

if.end23.i.blk_rq_nr_phys_segments.exit150.i_crit_edge: ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %blk_rq_nr_phys_segments.exit150.i

if.end.i148.i:                                    ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #18
  %nr_phys_segments.i147.i = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 19
  %76 = ptrtoint ptr %nr_phys_segments.i147.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %nr_phys_segments.i147.i, align 4
  %phi.cast.i = zext i16 %77 to i32
  br label %blk_rq_nr_phys_segments.exit150.i

blk_rq_nr_phys_segments.exit150.i:                ; preds = %if.end.i148.i, %if.end23.i.blk_rq_nr_phys_segments.exit150.i_crit_edge
  %retval.0.i149.i = phi i32 [ %phi.cast.i, %if.end.i148.i ], [ 1, %if.end23.i.blk_rq_nr_phys_segments.exit150.i_crit_edge ]
  tail call void @sg_init_table(ptr noundef nonnull %call19.i, i32 noundef %retval.0.i149.i) #16
  %78 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %req, align 8
  %80 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %sg.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %last_sg.i.i) #16
  %82 = ptrtoint ptr %last_sg.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr null, ptr %last_sg.i.i, align 4
  %call.i.i = call i32 @__blk_rq_map_sg(ptr noundef %79, ptr noundef %req, ptr noundef %81, ptr noundef nonnull %last_sg.i.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %last_sg.i.i) #16
  %83 = ptrtoint ptr %nents to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %call.i.i, ptr %nents, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool30.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool30.not.i, label %blk_rq_nr_phys_segments.exit150.i.out_free_sg.i_crit_edge, label %if.end32.i

blk_rq_nr_phys_segments.exit150.i.out_free_sg.i_crit_edge: ; preds = %blk_rq_nr_phys_segments.exit150.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_free_sg.i

if.end32.i:                                       ; preds = %blk_rq_nr_phys_segments.exit150.i
  %84 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %sg.i, align 8
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %85, align 4
  %and.i.i151.i = and i32 %87, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i151.i)
  %tobool.i.not.i152.i = icmp eq i32 %and.i.i151.i, 0
  br i1 %tobool.i.not.i152.i, label %sg_page.exit.i, label %do.body2.i.i, !prof !367

do.body2.i.i:                                     ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #16, !srcloc !381
  unreachable

sg_page.exit.i:                                   ; preds = %if.end32.i
  %dev43.i = getelementptr inbounds %struct.nvme_dev, ptr %dev, i32 0, i32 4
  %88 = ptrtoint ptr %dev43.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev43.i, align 8
  %cmd_flags46.i = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 3
  %90 = ptrtoint ptr %cmd_flags46.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %cmd_flags46.i, align 4
  %and.i154.i = and i32 %91, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i154.i)
  %tobool.i155.not.i = icmp eq i32 %and.i154.i, 0
  %cond50.i = select i1 %tobool.i155.not.i, i32 2, i32 1
  %call51.i = call i32 @dma_map_sg_attrs(ptr noundef %89, ptr noundef %85, i32 noundef %call.i.i, i32 noundef %cond50.i, i32 noundef 256) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.i)
  %tobool53.not.i = icmp eq i32 %call51.i, 0
  br i1 %tobool53.not.i, label %sg_page.exit.i.out_free_sg.i_crit_edge, label %if.end55.i

sg_page.exit.i.out_free_sg.i_crit_edge:           ; preds = %sg_page.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_free_sg.i

if.end55.i:                                       ; preds = %sg_page.exit.i
  %92 = ptrtoint ptr %rq_flags.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %rq_flags.i, align 8
  %and.i.i156.i = and i32 %93, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i156.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i156.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.end55.i.blk_rq_nr_phys_segments.exit.i.i_crit_edge

if.end55.i.blk_rq_nr_phys_segments.exit.i.i_crit_edge: ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %blk_rq_nr_phys_segments.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #18
  %nr_phys_segments.i.i.i = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 19
  %94 = ptrtoint ptr %nr_phys_segments.i.i.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %nr_phys_segments.i.i.i, align 4
  %phi.cast.i.i = zext i16 %95 to i32
  br label %blk_rq_nr_phys_segments.exit.i.i

blk_rq_nr_phys_segments.exit.i.i:                 ; preds = %if.end.i.i.i, %if.end55.i.blk_rq_nr_phys_segments.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %phi.cast.i.i, %if.end.i.i.i ], [ 1, %if.end55.i.blk_rq_nr_phys_segments.exit.i.i_crit_edge ]
  %bv_len.i.i.i = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 29, i32 0, i32 1
  %__data_len.i.i.i.i = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 8
  %retval.0.in.i.i.i = select i1 %tobool.not.i.i.i, ptr %__data_len.i.i.i.i, ptr %bv_len.i.i.i
  %96 = ptrtoint ptr %retval.0.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %retval.0.i18.i.i = load i32, ptr %retval.0.in.i.i.i, align 4
  %add.i157.i = add nsw i32 %retval.0.i.i.i, -1
  %sub.i158.i = add i32 %add.i157.i, %retval.0.i18.i.i
  %div.i.i = udiv i32 %sub.i158.i, %retval.0.i.i.i
  %sgls.i.i.i = getelementptr inbounds %struct.nvme_dev, ptr %dev, i32 0, i32 23, i32 49
  %97 = ptrtoint ptr %sgls.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %sgls.i.i.i, align 4
  %and.i19.i.i = and i32 %98, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i19.i.i)
  %tobool.i.not.i159.i = icmp eq i32 %and.i19.i.i, 0
  br i1 %tobool.i.not.i159.i, label %blk_rq_nr_phys_segments.exit.i.i.nvme_pci_use_sgls.exit.thread.i_crit_edge, label %if.end.i161.i

blk_rq_nr_phys_segments.exit.i.i.nvme_pci_use_sgls.exit.thread.i_crit_edge: ; preds = %blk_rq_nr_phys_segments.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %nvme_pci_use_sgls.exit.thread.i

if.end.i161.i:                                    ; preds = %blk_rq_nr_phys_segments.exit.i.i
  %nvmeq.i.i = getelementptr %struct.request, ptr %req, i32 1, i32 17
  %99 = ptrtoint ptr %nvmeq.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %nvmeq.i.i, align 8
  %qid.i.i = getelementptr inbounds %struct.nvme_queue, ptr %100, i32 0, i32 14
  %101 = ptrtoint ptr %qid.i.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %qid.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %102)
  %tobool.not.i160.i = icmp eq i16 %102, 0
  br i1 %tobool.not.i160.i, label %if.end.i161.i.nvme_pci_use_sgls.exit.thread.i_crit_edge, label %nvme_pci_use_sgls.exit.i

if.end.i161.i.nvme_pci_use_sgls.exit.thread.i_crit_edge: ; preds = %if.end.i161.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %nvme_pci_use_sgls.exit.thread.i

nvme_pci_use_sgls.exit.thread.i:                  ; preds = %if.end.i161.i.nvme_pci_use_sgls.exit.thread.i_crit_edge, %blk_rq_nr_phys_segments.exit.i.i.nvme_pci_use_sgls.exit.thread.i_crit_edge
  %use_sgl188.i = getelementptr %struct.request, ptr %req, i32 1, i32 19
  %103 = ptrtoint ptr %use_sgl188.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 0, ptr %use_sgl188.i, align 4
  br label %if.else61.i

nvme_pci_use_sgls.exit.i:                         ; preds = %if.end.i161.i
  %104 = load i32, ptr @sgl_threshold, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool6.not.i.i = icmp ne i32 %104, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i.i, i32 %104)
  %cmp.i162.i = icmp uge i32 %div.i.i, %104
  %or.cond.i.i = select i1 %tobool6.not.i.i, i1 %cmp.i162.i, i1 false
  %use_sgl.i = getelementptr %struct.request, ptr %req, i32 1, i32 19
  %frombool.i = zext i1 %or.cond.i.i to i8
  %105 = ptrtoint ptr %use_sgl.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %frombool.i, ptr %use_sgl.i, align 4
  br i1 %or.cond.i.i, label %if.then59.i, label %nvme_pci_use_sgls.exit.i.if.else61.i_crit_edge

nvme_pci_use_sgls.exit.i.if.else61.i_crit_edge:   ; preds = %nvme_pci_use_sgls.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else61.i

if.then59.i:                                      ; preds = %nvme_pci_use_sgls.exit.i
  %106 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %sg.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sgl_dma.i.i) #16
  %108 = ptrtoint ptr %sgl_dma.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 -1, ptr %sgl_dma.i.i, align 4, !annotation !349
  %flags.i164.i = getelementptr inbounds %struct.nvme_rw_command, ptr %cmd53, i32 0, i32 1
  %109 = ptrtoint ptr %flags.i164.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 64, ptr %flags.i164.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call51.i)
  %cmp.i165.i = icmp eq i32 %call51.i, 1
  br i1 %cmp.i165.i, label %if.then.i167.i, label %if.end.i169.i

if.then.i167.i:                                   ; preds = %if.then59.i
  call void @__sanitizer_cov_trace_pc() #18
  %dptr.i166.i = getelementptr inbounds %struct.nvme_rw_command, ptr %cmd53, i32 0, i32 6
  %dma_address.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %107, i32 0, i32 3
  %110 = ptrtoint ptr %dma_address.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %dma_address.i.i.i, align 4
  %conv.i.i.i = zext i32 %111 to i64
  %112 = call i64 @llvm.bswap.i64(i64 %conv.i.i.i) #16
  %113 = ptrtoint ptr %dptr.i166.i to i32
  call void @__asan_store8_noabort(i32 %113)
  store i64 %112, ptr %dptr.i166.i, align 8
  %dma_length.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %107, i32 0, i32 4
  %114 = ptrtoint ptr %dma_length.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %dma_length.i.i.i, align 4
  %116 = call i32 @llvm.bswap.i32(i32 %115) #16
  %length.i.i.i = getelementptr inbounds %struct.nvme_rw_command, ptr %cmd53, i32 0, i32 6, i32 0, i32 1
  %117 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %length.i.i.i, align 8
  %type.i.i.i = getelementptr inbounds %struct.nvme_sgl_desc, ptr %dptr.i166.i, i32 0, i32 3
  %118 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 0, ptr %type.i.i.i, align 1
  br label %nvme_pci_setup_sgls.exit.i

if.end.i169.i:                                    ; preds = %if.then59.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %call51.i)
  %cmp2.i.i = icmp ult i32 %call51.i, 17
  %prp_small_pool.i.i = getelementptr inbounds %struct.nvme_dev, ptr %dev, i32 0, i32 6
  %prp_page_pool.i.i = getelementptr inbounds %struct.nvme_dev, ptr %dev, i32 0, i32 5
  %not.cmp2.i.i = xor i1 %cmp2.i.i, true
  %.sink.i.i = zext i1 %not.cmp2.i.i to i32
  %pool.0.in.i.i = select i1 %cmp2.i.i, ptr %prp_small_pool.i.i, ptr %prp_page_pool.i.i
  %119 = ptrtoint ptr %pool.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %pool.0.i.i = load ptr, ptr %pool.0.in.i.i, align 4
  %120 = ptrtoint ptr %npages to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %.sink.i.i, ptr %npages, align 4
  %call6.i.i = call ptr @dma_pool_alloc(ptr noundef %pool.0.i.i, i32 noundef 2592, ptr noundef nonnull %sgl_dma.i.i) #16
  %tobool.not.i168.i = icmp eq ptr %call6.i.i, null
  br i1 %tobool.not.i168.i, label %if.then7.i.i, label %if.end9.i.i

if.then7.i.i:                                     ; preds = %if.end.i169.i
  call void @__sanitizer_cov_trace_pc() #18
  %121 = ptrtoint ptr %npages to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 -1, ptr %npages, align 4
  br label %nvme_pci_setup_sgls.exit.i

if.end9.i.i:                                      ; preds = %if.end.i169.i
  %122 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %sg.i, align 8
  %124 = ptrtoint ptr %rq_flags.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %rq_flags.i, align 8
  %and.i.i.i.i = and i32 %125, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.i, label %if.end9.i.i.nvme_pci_iod_list.exit.i.i_crit_edge

if.end9.i.i.nvme_pci_iod_list.exit.i.i_crit_edge: ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %nvme_pci_iod_list.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %nr_phys_segments.i.i.i.i = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 19
  %126 = ptrtoint ptr %nr_phys_segments.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %nr_phys_segments.i.i.i.i, align 4
  %phi.cast.i.i.i = zext i16 %127 to i32
  br label %nvme_pci_iod_list.exit.i.i

nvme_pci_iod_list.exit.i.i:                       ; preds = %if.end.i.i.i.i, %if.end9.i.i.nvme_pci_iod_list.exit.i.i_crit_edge
  %retval.0.i.i.i.i = phi i32 [ %phi.cast.i.i.i, %if.end.i.i.i.i ], [ 1, %if.end9.i.i.nvme_pci_iod_list.exit.i.i_crit_edge ]
  %add.ptr.i66.i.i = getelementptr %struct.scatterlist, ptr %123, i32 %retval.0.i.i.i.i
  %128 = ptrtoint ptr %add.ptr.i66.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %call6.i.i, ptr %add.ptr.i66.i.i, align 4
  %129 = ptrtoint ptr %sgl_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %sgl_dma.i.i, align 4
  %first_dma.i170.i = getelementptr %struct.request, ptr %req, i32 1, i32 25
  %131 = ptrtoint ptr %first_dma.i170.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %130, ptr %first_dma.i170.i, align 4
  %dptr11.i.i = getelementptr inbounds %struct.nvme_rw_command, ptr %cmd53, i32 0, i32 6
  %conv.i67.i.i = zext i32 %130 to i64
  %132 = call i64 @llvm.bswap.i64(i64 %conv.i67.i.i) #16
  %133 = ptrtoint ptr %dptr11.i.i to i32
  call void @__asan_store8_noabort(i32 %133)
  store i64 %132, ptr %dptr11.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %call51.i)
  %cmp.i.i.i = icmp ult i32 %call51.i, 256
  %mul.i.i.i = shl nuw nsw i32 %call51.i, 4
  %134 = call i32 @llvm.bswap.i32(i32 %mul.i.i.i) #16
  %.sink9.i.i.i = select i1 %cmp.i.i.i, i32 %134, i32 1048576
  %.sink.i.i.i = select i1 %cmp.i.i.i, i8 48, i8 32
  %135 = getelementptr inbounds %struct.nvme_rw_command, ptr %cmd53, i32 0, i32 6, i32 0, i32 1
  %136 = ptrtoint ptr %135 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %.sink9.i.i.i, ptr %135, align 8
  %137 = getelementptr inbounds %struct.nvme_sgl_desc, ptr %dptr11.i.i, i32 0, i32 3
  %138 = ptrtoint ptr %137 to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 %.sink.i.i.i, ptr %137, align 1
  %nr_phys_segments.i.i72.i.i = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 19
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end25.i.i.do.body.i.i_crit_edge, %nvme_pci_iod_list.exit.i.i
  %entries.addr.0.i.i = phi i32 [ %call51.i, %nvme_pci_iod_list.exit.i.i ], [ %dec.i.i, %if.end25.i.i.do.body.i.i_crit_edge ]
  %sg_list.0.i.i = phi ptr [ %call6.i.i, %nvme_pci_iod_list.exit.i.i ], [ %sg_list.1.i.i, %if.end25.i.i.do.body.i.i_crit_edge ]
  %sg.0.i.i = phi ptr [ %107, %nvme_pci_iod_list.exit.i.i ], [ %call28.i.i, %if.end25.i.i.do.body.i.i_crit_edge ]
  %i.0.i.i = phi i32 [ 0, %nvme_pci_iod_list.exit.i.i ], [ %inc26.i.i, %if.end25.i.i.do.body.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %i.0.i.i)
  %cmp12.i.i = icmp eq i32 %i.0.i.i, 256
  br i1 %cmp12.i.i, label %if.then13.i171.i, label %do.body.i.i.if.end25.i.i_crit_edge

do.body.i.i.if.end25.i.i_crit_edge:               ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end25.i.i

if.then13.i171.i:                                 ; preds = %do.body.i.i
  %call15.i.i = call ptr @dma_pool_alloc(ptr noundef %pool.0.i.i, i32 noundef 2592, ptr noundef nonnull %sgl_dma.i.i) #16
  %tobool16.not.i.i = icmp eq ptr %call15.i.i, null
  br i1 %tobool16.not.i.i, label %free_sgls.i.i, label %if.end18.i.i

if.end18.i.i:                                     ; preds = %if.then13.i171.i
  %arrayidx14.i.i = getelementptr %struct.nvme_sgl_desc, ptr %sg_list.0.i.i, i32 255
  %139 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %sg.i, align 8
  %141 = ptrtoint ptr %rq_flags.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %rq_flags.i, align 8
  %and.i.i70.i.i = and i32 %142, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i70.i.i)
  %tobool.not.i.i71.i.i = icmp eq i32 %and.i.i70.i.i, 0
  br i1 %tobool.not.i.i71.i.i, label %if.end.i.i74.i.i, label %if.end18.i.i.cleanup.thread.i.i_crit_edge

if.end18.i.i.cleanup.thread.i.i_crit_edge:        ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.thread.i.i

if.end.i.i74.i.i:                                 ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %143 = ptrtoint ptr %nr_phys_segments.i.i72.i.i to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %nr_phys_segments.i.i72.i.i, align 4
  %phi.cast.i73.i.i = zext i16 %144 to i32
  br label %cleanup.thread.i.i

cleanup.thread.i.i:                               ; preds = %if.end.i.i74.i.i, %if.end18.i.i.cleanup.thread.i.i_crit_edge
  %retval.0.i.i75.i.i = phi i32 [ %phi.cast.i73.i.i, %if.end.i.i74.i.i ], [ 1, %if.end18.i.i.cleanup.thread.i.i_crit_edge ]
  %add.ptr.i76.i.i = getelementptr %struct.scatterlist, ptr %140, i32 %retval.0.i.i75.i.i
  %145 = ptrtoint ptr %npages to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %npages, align 4
  %inc.i.i = add i32 %146, 1
  store i32 %inc.i.i, ptr %npages, align 4
  %arrayidx21.i.i = getelementptr ptr, ptr %add.ptr.i76.i.i, i32 %146
  %147 = ptrtoint ptr %arrayidx21.i.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %call15.i.i, ptr %arrayidx21.i.i, align 4
  %148 = call ptr @memcpy(ptr %call15.i.i, ptr %arrayidx14.i.i, i32 16)
  %149 = ptrtoint ptr %sgl_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %sgl_dma.i.i, align 4
  %conv.i78.i.i = zext i32 %150 to i64
  %151 = call i64 @llvm.bswap.i64(i64 %conv.i78.i.i) #16
  %152 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_store8_noabort(i32 %152)
  store i64 %151, ptr %arrayidx14.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %entries.addr.0.i.i)
  %cmp.i79.i.i = icmp ult i32 %entries.addr.0.i.i, 256
  %mul.i80.i.i = shl nuw nsw i32 %entries.addr.0.i.i, 4
  %153 = call i32 @llvm.bswap.i32(i32 %mul.i80.i.i) #16
  %.sink9.i81.i.i = select i1 %cmp.i79.i.i, i32 %153, i32 1048576
  %.sink.i82.i.i = select i1 %cmp.i79.i.i, i8 48, i8 32
  %154 = getelementptr %struct.nvme_sgl_desc, ptr %sg_list.0.i.i, i32 255, i32 1
  %155 = ptrtoint ptr %154 to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %.sink9.i81.i.i, ptr %154, align 8
  %156 = getelementptr %struct.nvme_sgl_desc, ptr %sg_list.0.i.i, i32 255, i32 3
  %157 = ptrtoint ptr %156 to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 %.sink.i82.i.i, ptr %156, align 1
  br label %if.end25.i.i

if.end25.i.i:                                     ; preds = %cleanup.thread.i.i, %do.body.i.i.if.end25.i.i_crit_edge
  %sg_list.1.i.i = phi ptr [ %sg_list.0.i.i, %do.body.i.i.if.end25.i.i_crit_edge ], [ %call15.i.i, %cleanup.thread.i.i ]
  %i.2.i.i = phi i32 [ %i.0.i.i, %do.body.i.i.if.end25.i.i_crit_edge ], [ 1, %cleanup.thread.i.i ]
  %inc26.i.i = add i32 %i.2.i.i, 1
  %arrayidx27.i.i = getelementptr %struct.nvme_sgl_desc, ptr %sg_list.1.i.i, i32 %i.2.i.i
  %dma_address.i83.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg.0.i.i, i32 0, i32 3
  %158 = ptrtoint ptr %dma_address.i83.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %dma_address.i83.i.i, align 4
  %conv.i84.i.i = zext i32 %159 to i64
  %160 = call i64 @llvm.bswap.i64(i64 %conv.i84.i.i) #16
  %161 = ptrtoint ptr %arrayidx27.i.i to i32
  call void @__asan_store8_noabort(i32 %161)
  store i64 %160, ptr %arrayidx27.i.i, align 8
  %dma_length.i85.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg.0.i.i, i32 0, i32 4
  %162 = ptrtoint ptr %dma_length.i85.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %dma_length.i85.i.i, align 4
  %164 = call i32 @llvm.bswap.i32(i32 %163) #16
  %length.i86.i.i = getelementptr %struct.nvme_sgl_desc, ptr %sg_list.1.i.i, i32 %i.2.i.i, i32 1
  %165 = ptrtoint ptr %length.i86.i.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %164, ptr %length.i86.i.i, align 8
  %type.i87.i.i = getelementptr %struct.nvme_sgl_desc, ptr %sg_list.1.i.i, i32 %i.2.i.i, i32 3
  %166 = ptrtoint ptr %type.i87.i.i to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 0, ptr %type.i87.i.i, align 1
  %call28.i.i = call ptr @sg_next(ptr noundef %sg.0.i.i) #16
  %dec.i.i = add i32 %entries.addr.0.i.i, -1
  %cmp29.i.i = icmp sgt i32 %dec.i.i, 0
  br i1 %cmp29.i.i, label %if.end25.i.i.do.body.i.i_crit_edge, label %if.end25.i.i.nvme_pci_setup_sgls.exit.i_crit_edge

if.end25.i.i.nvme_pci_setup_sgls.exit.i_crit_edge: ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %nvme_pci_setup_sgls.exit.i

if.end25.i.i.do.body.i.i_crit_edge:               ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i.i

free_sgls.i.i:                                    ; preds = %if.then13.i171.i
  %167 = ptrtoint ptr %npages to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %npages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %168)
  %cmp9.i.i.i = icmp sgt i32 %168, 0
  br i1 %cmp9.i.i.i, label %for.body.lr.ph.i.i.i, label %free_sgls.i.i.nvme_pci_setup_sgls.exit.i_crit_edge

free_sgls.i.i.nvme_pci_setup_sgls.exit.i_crit_edge: ; preds = %free_sgls.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %nvme_pci_setup_sgls.exit.i

for.body.lr.ph.i.i.i:                             ; preds = %free_sgls.i.i
  %169 = ptrtoint ptr %first_dma.i170.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %first_dma.i170.i, align 4
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %nvme_pci_iod_list.exit.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %dma_addr.011.i.i.i = phi i32 [ %170, %for.body.lr.ph.i.i.i ], [ %conv.i88.i.i, %nvme_pci_iod_list.exit.i.i.i.for.body.i.i.i_crit_edge ]
  %i.010.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %inc.i.i.i, %nvme_pci_iod_list.exit.i.i.i.for.body.i.i.i_crit_edge ]
  %171 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %sg.i, align 8
  %173 = ptrtoint ptr %rq_flags.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %rq_flags.i, align 8
  %and.i.i.i.i.i = and i32 %174, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %if.end.i.i.i.i.i, label %for.body.i.i.i.nvme_pci_iod_list.exit.i.i.i_crit_edge

for.body.i.i.i.nvme_pci_iod_list.exit.i.i.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %nvme_pci_iod_list.exit.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %175 = ptrtoint ptr %nr_phys_segments.i.i72.i.i to i32
  call void @__asan_load2_noabort(i32 %175)
  %176 = load i16, ptr %nr_phys_segments.i.i72.i.i, align 4
  %phi.cast.i.i.i.i = zext i16 %176 to i32
  br label %nvme_pci_iod_list.exit.i.i.i

nvme_pci_iod_list.exit.i.i.i:                     ; preds = %if.end.i.i.i.i.i, %for.body.i.i.i.nvme_pci_iod_list.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i.i = phi i32 [ %phi.cast.i.i.i.i, %if.end.i.i.i.i.i ], [ 1, %for.body.i.i.i.nvme_pci_iod_list.exit.i.i.i_crit_edge ]
  %add.ptr.i8.i.i.i = getelementptr %struct.scatterlist, ptr %172, i32 %retval.0.i.i.i.i.i
  %arrayidx.i.i.i = getelementptr ptr, ptr %add.ptr.i8.i.i.i, i32 %i.010.i.i.i
  %177 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %arrayidx.i.i.i, align 4
  %arrayidx2.i.i.i = getelementptr %struct.nvme_sgl_desc, ptr %178, i32 255
  %179 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_load8_noabort(i32 %179)
  %180 = load i64, ptr %arrayidx2.i.i.i, align 8
  %181 = call i64 @llvm.bswap.i64(i64 %180) #16
  %conv.i88.i.i = trunc i64 %181 to i32
  %182 = ptrtoint ptr %prp_page_pool.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %prp_page_pool.i.i, align 4
  call void @dma_pool_free(ptr noundef %183, ptr noundef %178, i32 noundef %dma_addr.011.i.i.i) #16
  %inc.i.i.i = add nuw nsw i32 %i.010.i.i.i, 1
  %184 = ptrtoint ptr %npages to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %npages, align 4
  %cmp.i89.i.i = icmp slt i32 %inc.i.i.i, %185
  br i1 %cmp.i89.i.i, label %nvme_pci_iod_list.exit.i.i.i.for.body.i.i.i_crit_edge, label %nvme_pci_iod_list.exit.i.i.i.nvme_pci_setup_sgls.exit.i_crit_edge

nvme_pci_iod_list.exit.i.i.i.nvme_pci_setup_sgls.exit.i_crit_edge: ; preds = %nvme_pci_iod_list.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %nvme_pci_setup_sgls.exit.i

nvme_pci_iod_list.exit.i.i.i.for.body.i.i.i_crit_edge: ; preds = %nvme_pci_iod_list.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i.i

nvme_pci_setup_sgls.exit.i:                       ; preds = %nvme_pci_iod_list.exit.i.i.i.nvme_pci_setup_sgls.exit.i_crit_edge, %free_sgls.i.i.nvme_pci_setup_sgls.exit.i_crit_edge, %if.end25.i.i.nvme_pci_setup_sgls.exit.i_crit_edge, %if.then7.i.i, %if.then.i167.i
  %retval.0.i172.i = phi i8 [ 0, %if.then.i167.i ], [ 9, %if.then7.i.i ], [ 9, %free_sgls.i.i.nvme_pci_setup_sgls.exit.i_crit_edge ], [ 9, %nvme_pci_iod_list.exit.i.i.i.nvme_pci_setup_sgls.exit.i_crit_edge ], [ 0, %if.end25.i.i.nvme_pci_setup_sgls.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sgl_dma.i.i) #16
  br label %if.end63.i

if.else61.i:                                      ; preds = %nvme_pci_use_sgls.exit.i.if.else61.i_crit_edge, %nvme_pci_use_sgls.exit.thread.i
  %call62.i = call fastcc zeroext i8 @nvme_pci_setup_prps(ptr noundef %dev, ptr noundef %req, ptr noundef %cmd53) #16
  br label %if.end63.i

if.end63.i:                                       ; preds = %if.else61.i, %nvme_pci_setup_sgls.exit.i
  %ret.0.i = phi i8 [ %retval.0.i172.i, %nvme_pci_setup_sgls.exit.i ], [ %call62.i, %if.else61.i ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %ret.0.i)
  %cmp65.not.i = icmp eq i8 %ret.0.i, 0
  br i1 %cmp65.not.i, label %if.end63.i.if.end9_crit_edge, label %out_unmap_sg.i

if.end63.i.if.end9_crit_edge:                     ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9

out_unmap_sg.i:                                   ; preds = %if.end63.i
  %186 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %sg.i, align 8
  %188 = ptrtoint ptr %187 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %187, align 4
  %and.i.i.i173.i = and i32 %189, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i173.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i173.i, 0
  br i1 %tobool.i.not.i.i.i, label %nvme_unmap_sg.exit.i, label %do.body2.i.i.i, !prof !367

do.body2.i.i.i:                                   ; preds = %out_unmap_sg.i
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #16, !srcloc !381
  unreachable

nvme_unmap_sg.exit.i:                             ; preds = %out_unmap_sg.i
  call void @__sanitizer_cov_trace_pc() #18
  %190 = ptrtoint ptr %dev43.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %dev43.i, align 8
  %192 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %nents, align 8
  %194 = ptrtoint ptr %cmd_flags46.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %cmd_flags46.i, align 4
  %and.i20.i.i = and i32 %195, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i20.i.i)
  %tobool.i.not.i174.i = icmp eq i32 %and.i20.i.i, 0
  %cond12.i.i = select i1 %tobool.i.not.i174.i, i32 2, i32 1
  call void @dma_unmap_sg_attrs(ptr noundef %191, ptr noundef %187, i32 noundef %193, i32 noundef %cond12.i.i, i32 noundef 0) #16
  br label %out_free_sg.i

out_free_sg.i:                                    ; preds = %nvme_unmap_sg.exit.i, %sg_page.exit.i.out_free_sg.i_crit_edge, %blk_rq_nr_phys_segments.exit150.i.out_free_sg.i_crit_edge
  %ret.1.i = phi i8 [ %ret.0.i, %nvme_unmap_sg.exit.i ], [ 9, %sg_page.exit.i.out_free_sg.i_crit_edge ], [ 9, %blk_rq_nr_phys_segments.exit150.i.out_free_sg.i_crit_edge ]
  %196 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %sg.i, align 8
  %198 = ptrtoint ptr %iod_mempool.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %iod_mempool.i, align 8
  call void @mempool_free(ptr noundef %197, ptr noundef %199) #16
  br label %out_free_cmd

if.end9:                                          ; preds = %if.end63.i.if.end9_crit_edge, %if.end.i142.i, %if.then13.i.i, %if.end.i126.i.if.end9_crit_edge, %blk_rq_nr_phys_segments.exit.if.end9_crit_edge
  %cmd_flags.i = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 3
  %200 = ptrtoint ptr %cmd_flags.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %cmd_flags.i, align 4
  %202 = and i32 %201, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %202)
  %tobool.i.not = icmp eq i32 %202, 0
  br i1 %tobool.i.not, label %if.end9.if.end17_crit_edge, label %if.then11

if.end9.if.end17_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end17

if.then11:                                        ; preds = %if.end9
  %dev1.i = getelementptr inbounds %struct.nvme_dev, ptr %dev, i32 0, i32 4
  %203 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %dev1.i, align 8
  %205 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %req, align 8
  %max_integrity_segments.i.i.i = getelementptr inbounds %struct.request_queue, ptr %206, i32 0, i32 37, i32 22
  %207 = ptrtoint ptr %max_integrity_segments.i.i.i to i32
  call void @__asan_load2_noabort(i32 %207)
  %208 = load i16, ptr %max_integrity_segments.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %208)
  %cmp.i.i40 = icmp ugt i16 %208, 1
  br i1 %cmp.i.i40, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %if.then11
  %.b43.i.i = load i1, ptr @rq_integrity_vec.__already_done, align 1
  br i1 %.b43.i.i, label %land.rhs.i.i.rq_integrity_vec.exit.i_crit_edge, label %if.then.i.i41, !prof !367

land.rhs.i.i.rq_integrity_vec.exit.i_crit_edge:   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rq_integrity_vec.exit.i

if.then.i.i41:                                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rq_integrity_vec.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.47, i32 noundef 112, i32 noundef 9, ptr noundef null) #16
  br label %rq_integrity_vec.exit.i

if.end39.i.i:                                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #18
  %bio.i.i42 = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 10
  %209 = ptrtoint ptr %bio.i.i42 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %bio.i.i42, align 8
  %211 = getelementptr inbounds %struct.bio, ptr %210, i32 0, i32 16
  %212 = ptrtoint ptr %211 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %211, align 4
  %bip_vec.i.i = getelementptr inbounds %struct.bio_integrity_payload, ptr %213, i32 0, i32 7
  %214 = ptrtoint ptr %bip_vec.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %bip_vec.i.i, align 4
  br label %rq_integrity_vec.exit.i

rq_integrity_vec.exit.i:                          ; preds = %if.end39.i.i, %if.then.i.i41, %land.rhs.i.i.rq_integrity_vec.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %215, %if.end39.i.i ], [ null, %if.then.i.i41 ], [ null, %land.rhs.i.i.rq_integrity_vec.exit.i_crit_edge ]
  %216 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %retval.0.i.i, align 4
  %218 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %req, align 8
  %max_integrity_segments.i.i18.i = getelementptr inbounds %struct.request_queue, ptr %219, i32 0, i32 37, i32 22
  %220 = ptrtoint ptr %max_integrity_segments.i.i18.i to i32
  call void @__asan_load2_noabort(i32 %220)
  %221 = load i16, ptr %max_integrity_segments.i.i18.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %221)
  %cmp.i19.i = icmp ugt i16 %221, 1
  br i1 %cmp.i19.i, label %land.rhs.i21.i, label %if.end39.i25.i

land.rhs.i21.i:                                   ; preds = %rq_integrity_vec.exit.i
  %.b43.i20.i = load i1, ptr @rq_integrity_vec.__already_done, align 1
  br i1 %.b43.i20.i, label %land.rhs.i21.i.rq_integrity_vec.exit27.i_crit_edge, label %if.then.i22.i, !prof !367

land.rhs.i21.i.rq_integrity_vec.exit27.i_crit_edge: ; preds = %land.rhs.i21.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rq_integrity_vec.exit27.i

if.then.i22.i:                                    ; preds = %land.rhs.i21.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rq_integrity_vec.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.47, i32 noundef 112, i32 noundef 9, ptr noundef null) #16
  br label %rq_integrity_vec.exit27.i

if.end39.i25.i:                                   ; preds = %rq_integrity_vec.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %bio.i23.i = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 10
  %222 = ptrtoint ptr %bio.i23.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %bio.i23.i, align 8
  %224 = getelementptr inbounds %struct.bio, ptr %223, i32 0, i32 16
  %225 = ptrtoint ptr %224 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %224, align 4
  %bip_vec.i24.i = getelementptr inbounds %struct.bio_integrity_payload, ptr %226, i32 0, i32 7
  %227 = ptrtoint ptr %bip_vec.i24.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %bip_vec.i24.i, align 4
  br label %rq_integrity_vec.exit27.i

rq_integrity_vec.exit27.i:                        ; preds = %if.end39.i25.i, %if.then.i22.i, %land.rhs.i21.i.rq_integrity_vec.exit27.i_crit_edge
  %retval.0.i26.i = phi ptr [ %228, %if.end39.i25.i ], [ null, %if.then.i22.i ], [ null, %land.rhs.i21.i.rq_integrity_vec.exit27.i_crit_edge ]
  %bv_offset.i = getelementptr inbounds %struct.bio_vec, ptr %retval.0.i26.i, i32 0, i32 2
  %229 = ptrtoint ptr %bv_offset.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %bv_offset.i, align 4
  %231 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %req, align 8
  %max_integrity_segments.i.i28.i = getelementptr inbounds %struct.request_queue, ptr %232, i32 0, i32 37, i32 22
  %233 = ptrtoint ptr %max_integrity_segments.i.i28.i to i32
  call void @__asan_load2_noabort(i32 %233)
  %234 = load i16, ptr %max_integrity_segments.i.i28.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %234)
  %cmp.i29.i = icmp ugt i16 %234, 1
  br i1 %cmp.i29.i, label %land.rhs.i31.i, label %if.end39.i35.i

land.rhs.i31.i:                                   ; preds = %rq_integrity_vec.exit27.i
  %.b43.i30.i = load i1, ptr @rq_integrity_vec.__already_done, align 1
  br i1 %.b43.i30.i, label %land.rhs.i31.i.rq_integrity_vec.exit37.i_crit_edge, label %if.then.i32.i, !prof !367

land.rhs.i31.i.rq_integrity_vec.exit37.i_crit_edge: ; preds = %land.rhs.i31.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rq_integrity_vec.exit37.i

if.then.i32.i:                                    ; preds = %land.rhs.i31.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rq_integrity_vec.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.47, i32 noundef 112, i32 noundef 9, ptr noundef null) #16
  br label %rq_integrity_vec.exit37.i

if.end39.i35.i:                                   ; preds = %rq_integrity_vec.exit27.i
  call void @__sanitizer_cov_trace_pc() #18
  %bio.i33.i = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 10
  %235 = ptrtoint ptr %bio.i33.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %bio.i33.i, align 8
  %237 = getelementptr inbounds %struct.bio, ptr %236, i32 0, i32 16
  %238 = ptrtoint ptr %237 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %237, align 4
  %bip_vec.i34.i = getelementptr inbounds %struct.bio_integrity_payload, ptr %239, i32 0, i32 7
  %240 = ptrtoint ptr %bip_vec.i34.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %bip_vec.i34.i, align 4
  br label %rq_integrity_vec.exit37.i

rq_integrity_vec.exit37.i:                        ; preds = %if.end39.i35.i, %if.then.i32.i, %land.rhs.i31.i.rq_integrity_vec.exit37.i_crit_edge
  %retval.0.i36.i = phi ptr [ %241, %if.end39.i35.i ], [ null, %if.then.i32.i ], [ null, %land.rhs.i31.i.rq_integrity_vec.exit37.i_crit_edge ]
  %bv_len.i = getelementptr inbounds %struct.bio_vec, ptr %retval.0.i36.i, i32 0, i32 1
  %242 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %bv_len.i, align 4
  %244 = ptrtoint ptr %cmd_flags.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %cmd_flags.i, align 4
  %and.i.i44 = and i32 %245, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i44)
  %tobool.i.not.i45 = icmp eq i32 %and.i.i44, 0
  %cond.i = select i1 %tobool.i.not.i45, i32 2, i32 1
  %call6.i = call i32 @dma_map_page_attrs(ptr noundef %204, ptr noundef %217, i32 noundef %230, i32 noundef %243, i32 noundef %cond.i, i32 noundef 0) #16
  %meta_dma.i = getelementptr %struct.request, ptr %req, i32 1, i32 27
  %246 = ptrtoint ptr %meta_dma.i to i32
  call void @__asan_store4_noabort(i32 %246)
  store i32 %call6.i, ptr %meta_dma.i, align 4
  %247 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %dev1.i, align 8
  call void @debug_dma_mapping_error(ptr noundef %248, i32 noundef %call6.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call6.i)
  %cmp.i38.not.i = icmp eq i32 %call6.i, -1
  br i1 %cmp.i38.not.i, label %out_unmap_data, label %nvme_map_metadata.exit.thread

nvme_map_metadata.exit.thread:                    ; preds = %rq_integrity_vec.exit37.i
  call void @__sanitizer_cov_trace_pc() #18
  %249 = ptrtoint ptr %meta_dma.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %meta_dma.i, align 4
  %conv.i = zext i32 %250 to i64
  %251 = call i64 @llvm.bswap.i64(i64 %conv.i) #16
  %metadata.i = getelementptr %struct.request, ptr %req, i32 1, i32 10
  %252 = ptrtoint ptr %metadata.i to i32
  call void @__asan_store8_noabort(i32 %252)
  store i64 %251, ptr %metadata.i, align 8
  br label %if.end17

if.end17:                                         ; preds = %nvme_map_metadata.exit.thread, %if.end9.if.end17_crit_edge
  call void @blk_mq_start_request(ptr noundef %req) #16
  br label %cleanup

out_unmap_data:                                   ; preds = %rq_integrity_vec.exit37.i
  call void @__sanitizer_cov_trace_pc() #18
  call fastcc void @nvme_unmap_data(ptr noundef %dev, ptr noundef %req)
  br label %out_free_cmd

out_free_cmd:                                     ; preds = %out_unmap_data, %out_free_sg.i, %if.end18.i.out_free_cmd_crit_edge, %if.then14.i.out_free_cmd_crit_edge, %if.then7.i.out_free_cmd_crit_edge
  %ret.0 = phi i8 [ 10, %out_unmap_data ], [ %ret.1.i, %out_free_sg.i ], [ 9, %if.end18.i.out_free_cmd_crit_edge ], [ 9, %if.then14.i.out_free_cmd_crit_edge ], [ 9, %if.then7.i.out_free_cmd_crit_edge ]
  call void @nvme_cleanup_cmd(ptr noundef %req) #16
  br label %cleanup

cleanup:                                          ; preds = %out_free_cmd, %if.end17, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ %ret.0, %out_free_cmd ], [ 0, %if.end17 ], [ %call1, %entry.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__nvme_check_ready(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @nvme_setup_cmd(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_start_request(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvme_cleanup_cmd(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @mempool_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @nvme_pci_setup_prps(ptr nocapture noundef readonly %dev, ptr nocapture noundef %req, ptr nocapture noundef writeonly %cmnd) unnamed_addr #2 align 64 {
entry:
  %prp_dma = alloca i32, align 4
  %___flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_flags.i = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 4
  %0 = ptrtoint ptr %rq_flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rq_flags.i, align 8
  %and.i = and i32 %1, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %bv_len.i = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 29, i32 0, i32 1
  %__data_len.i.i = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 8
  %retval.0.in.i = select i1 %tobool.not.i, ptr %__data_len.i.i, ptr %bv_len.i
  %2 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %retval.0.i207 = load i32, ptr %retval.0.in.i, align 4
  %sg2 = getelementptr %struct.request, ptr %req, i32 1, i32 28
  %3 = ptrtoint ptr %sg2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sg2, align 8
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dma_length, align 4
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %4, i32 0, i32 3
  %7 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dma_address, align 4
  %conv = zext i32 %8 to i64
  %and = and i32 %8, 4095
  br i1 %tobool.not.i, label %if.end.i.i, label %entry.nvme_pci_iod_list.exit_crit_edge

entry.nvme_pci_iod_list.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %nvme_pci_iod_list.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %nr_phys_segments.i.i = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 19
  %9 = ptrtoint ptr %nr_phys_segments.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %nr_phys_segments.i.i, align 4
  %phi.cast.i = zext i16 %10 to i32
  br label %nvme_pci_iod_list.exit

nvme_pci_iod_list.exit:                           ; preds = %if.end.i.i, %entry.nvme_pci_iod_list.exit_crit_edge
  %retval.0.i.i = phi i32 [ %phi.cast.i, %if.end.i.i ], [ 1, %entry.nvme_pci_iod_list.exit_crit_edge ]
  %add.ptr.i208 = getelementptr %struct.scatterlist, ptr %4, i32 %retval.0.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prp_dma) #16
  %11 = ptrtoint ptr %prp_dma to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %prp_dma, align 4, !annotation !349
  %sub = sub nuw nsw i32 4096, %and
  %sub5 = sub i32 %retval.0.i207, %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub5)
  %cmp = icmp slt i32 %sub5, 1
  br i1 %cmp, label %nvme_pci_iod_list.exit.done.sink.split_crit_edge, label %if.end

nvme_pci_iod_list.exit.done.sink.split_crit_edge: ; preds = %nvme_pci_iod_list.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %done.sink.split

if.end:                                           ; preds = %nvme_pci_iod_list.exit
  %sub8 = sub i32 %6, %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub8)
  %tobool.not = icmp eq i32 %sub8, 0
  br i1 %tobool.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %12 = zext i32 %sub to i64
  %add = add nuw nsw i64 %12, %conv
  br label %if.end16

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %call12 = tail call ptr @sg_next(ptr noundef %4) #16
  %dma_address13 = getelementptr inbounds %struct.scatterlist, ptr %call12, i32 0, i32 3
  %13 = ptrtoint ptr %dma_address13 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dma_address13, align 4
  %conv14 = zext i32 %14 to i64
  %dma_length15 = getelementptr inbounds %struct.scatterlist, ptr %call12, i32 0, i32 4
  %15 = ptrtoint ptr %dma_length15 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dma_length15, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then9
  %sg.0 = phi ptr [ %4, %if.then9 ], [ %call12, %if.else ]
  %dma_len.0 = phi i32 [ %sub8, %if.then9 ], [ %16, %if.else ]
  %dma_addr.0 = phi i64 [ %add, %if.then9 ], [ %conv14, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4097, i32 %sub5)
  %cmp17 = icmp ult i32 %sub5, 4097
  br i1 %cmp17, label %if.then19, label %if.end22

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #18
  %conv20 = trunc i64 %dma_addr.0 to i32
  br label %done.sink.split

if.end22:                                         ; preds = %if.end16
  %sub24 = add nuw i32 %sub5, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 135168, i32 %sub24)
  %cmp25 = icmp slt i32 %sub24, 135168
  %prp_small_pool = getelementptr inbounds %struct.nvme_dev, ptr %dev, i32 0, i32 6
  %prp_page_pool = getelementptr inbounds %struct.nvme_dev, ptr %dev, i32 0, i32 5
  %not.cmp25 = xor i1 %cmp25, true
  %.sink = zext i1 %not.cmp25 to i32
  %pool.0.in = select i1 %cmp25, ptr %prp_small_pool, ptr %prp_page_pool
  %17 = ptrtoint ptr %pool.0.in to i32
  call void @__asan_load4_noabort(i32 %17)
  %pool.0 = load ptr, ptr %pool.0.in, align 4
  %18 = getelementptr %struct.request, ptr %req, i32 1, i32 22
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %.sink, ptr %18, align 4
  %call31 = call ptr @dma_pool_alloc(ptr noundef %pool.0, i32 noundef 2592, ptr noundef nonnull %prp_dma) #16
  %tobool32.not = icmp eq ptr %call31, null
  br i1 %tobool32.not, label %if.then33, label %if.end37

if.then33:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #18
  %conv34 = trunc i64 %dma_addr.0 to i32
  %first_dma35 = getelementptr %struct.request, ptr %req, i32 1, i32 25
  %20 = ptrtoint ptr %first_dma35 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv34, ptr %first_dma35, align 4
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %18, align 4
  br label %cleanup138

if.end37:                                         ; preds = %if.end22
  %22 = ptrtoint ptr %add.ptr.i208 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call31, ptr %add.ptr.i208, align 4
  %23 = ptrtoint ptr %prp_dma to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %prp_dma, align 4
  %first_dma38 = getelementptr %struct.request, ptr %req, i32 1, i32 25
  %25 = ptrtoint ptr %first_dma38 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %first_dma38, align 4
  br label %for.cond.outer

for.cond.outer:                                   ; preds = %if.end73, %if.end37
  %sg.1.ph = phi ptr [ %call74, %if.end73 ], [ %sg.0, %if.end37 ]
  %dma_len.1.ph = phi i32 [ %42, %if.end73 ], [ %dma_len.0, %if.end37 ]
  %dma_addr.1.ph = phi i64 [ %conv76, %if.end73 ], [ %dma_addr.0, %if.end37 ]
  %prp_list.0.ph = phi ptr [ %prp_list.1, %if.end73 ], [ %call31, %if.end37 ]
  %i.0.ph = phi i32 [ %inc55, %if.end73 ], [ 0, %if.end37 ]
  %length.0.ph = phi i32 [ %sub59, %if.end73 ], [ %sub5, %if.end37 ]
  br label %for.cond

for.cond:                                         ; preds = %if.end63.for.cond_crit_edge, %for.cond.outer
  %dma_len.1 = phi i32 [ %sub57, %if.end63.for.cond_crit_edge ], [ %dma_len.1.ph, %for.cond.outer ]
  %dma_addr.1 = phi i64 [ %add58, %if.end63.for.cond_crit_edge ], [ %dma_addr.1.ph, %for.cond.outer ]
  %prp_list.0 = phi ptr [ %prp_list.1, %if.end63.for.cond_crit_edge ], [ %prp_list.0.ph, %for.cond.outer ]
  %i.0 = phi i32 [ %inc55, %if.end63.for.cond_crit_edge ], [ %i.0.ph, %for.cond.outer ]
  %length.0 = phi i32 [ %sub59, %if.end63.for.cond_crit_edge ], [ %length.0.ph, %for.cond.outer ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %i.0)
  %cmp39 = icmp eq i32 %i.0, 512
  br i1 %cmp39, label %if.then41, label %for.cond.if.end54_crit_edge

for.cond.if.end54_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end54

if.then41:                                        ; preds = %for.cond
  %call42 = call ptr @dma_pool_alloc(ptr noundef %pool.0, i32 noundef 2592, ptr noundef nonnull %prp_dma) #16
  %tobool43.not = icmp eq ptr %call42, null
  %26 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %18, align 4
  br i1 %tobool43.not, label %free_prps, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #18
  %inc = add i32 %27, 1
  %28 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %inc, ptr %18, align 4
  %arrayidx47 = getelementptr ptr, ptr %add.ptr.i208, i32 %27
  %29 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call42, ptr %arrayidx47, align 4
  %arrayidx49 = getelementptr i64, ptr %prp_list.0, i32 511
  %30 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %arrayidx49, align 8
  %32 = ptrtoint ptr %call42 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %31, ptr %call42, align 8
  %33 = ptrtoint ptr %prp_dma to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %prp_dma, align 4
  %conv51 = zext i32 %34 to i64
  %35 = call i64 @llvm.bswap.i64(i64 %conv51)
  %36 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %35, ptr %arrayidx49, align 8
  br label %if.end54

if.end54:                                         ; preds = %cleanup.thread, %for.cond.if.end54_crit_edge
  %prp_list.1 = phi ptr [ %prp_list.0, %for.cond.if.end54_crit_edge ], [ %call42, %cleanup.thread ]
  %i.2 = phi i32 [ %i.0, %for.cond.if.end54_crit_edge ], [ 1, %cleanup.thread ]
  %37 = call i64 @llvm.bswap.i64(i64 %dma_addr.1)
  %arrayidx56 = getelementptr i64, ptr %prp_list.1, i32 %i.2
  %38 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %37, ptr %arrayidx56, align 8
  %sub59 = add i32 %length.0, -4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub59)
  %cmp60 = icmp slt i32 %sub59, 1
  br i1 %cmp60, label %if.end54.done_crit_edge, label %if.end63

if.end54.done_crit_edge:                          ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #18
  br label %done

if.end63:                                         ; preds = %if.end54
  %sub57 = add i32 %dma_len.1, -4096
  %inc55 = add i32 %i.2, 1
  %add58 = add nuw nsw i64 %dma_addr.1, 4096
  %cmp64 = icmp sgt i32 %sub57, 0
  br i1 %cmp64, label %if.end63.for.cond_crit_edge, label %if.end67

if.end63.for.cond_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond

if.end67:                                         ; preds = %if.end63
  %cmp68 = icmp slt i32 %sub57, 0
  br i1 %cmp68, label %bad_sgl, label %if.end73, !prof !350

if.end73:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #18
  %call74 = call ptr @sg_next(ptr noundef %sg.1.ph) #16
  %dma_address75 = getelementptr inbounds %struct.scatterlist, ptr %call74, i32 0, i32 3
  %39 = ptrtoint ptr %dma_address75 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %dma_address75, align 4
  %conv76 = zext i32 %40 to i64
  %dma_length77 = getelementptr inbounds %struct.scatterlist, ptr %call74, i32 0, i32 4
  %41 = ptrtoint ptr %dma_length77 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %dma_length77, align 4
  br label %for.cond.outer

done.sink.split:                                  ; preds = %if.then19, %nvme_pci_iod_list.exit.done.sink.split_crit_edge
  %conv20.sink = phi i32 [ %conv20, %if.then19 ], [ 0, %nvme_pci_iod_list.exit.done.sink.split_crit_edge ]
  %first_dma21 = getelementptr %struct.request, ptr %req, i32 1, i32 25
  %43 = ptrtoint ptr %first_dma21 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %conv20.sink, ptr %first_dma21, align 4
  br label %done

done:                                             ; preds = %done.sink.split, %if.end54.done_crit_edge
  %44 = ptrtoint ptr %sg2 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %sg2, align 8
  %dma_address79 = getelementptr inbounds %struct.scatterlist, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %dma_address79 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %dma_address79, align 4
  %conv80 = zext i32 %47 to i64
  %48 = call i64 @llvm.bswap.i64(i64 %conv80)
  %dptr = getelementptr inbounds %struct.nvme_rw_command, ptr %cmnd, i32 0, i32 6
  %49 = ptrtoint ptr %dptr to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %48, ptr %dptr, align 8
  %first_dma81 = getelementptr %struct.request, ptr %req, i32 1, i32 25
  %50 = ptrtoint ptr %first_dma81 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %first_dma81, align 4
  %conv82 = zext i32 %51 to i64
  %52 = call i64 @llvm.bswap.i64(i64 %conv82)
  %prp2 = getelementptr inbounds %struct.nvme_rw_command, ptr %cmnd, i32 0, i32 6, i32 0, i32 1
  %53 = ptrtoint ptr %prp2 to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %52, ptr %prp2, align 8
  br label %cleanup138

free_prps:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp9.i = icmp sgt i32 %27, 0
  br i1 %cmp9.i, label %for.body.lr.ph.i, label %free_prps.cleanup138_crit_edge

free_prps.cleanup138_crit_edge:                   ; preds = %free_prps
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup138

for.body.lr.ph.i:                                 ; preds = %free_prps
  %54 = ptrtoint ptr %first_dma38 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %first_dma38, align 4
  %nr_phys_segments.i.i.i = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 19
  %prp_page_pool.i = getelementptr inbounds %struct.nvme_dev, ptr %dev, i32 0, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %nvme_pci_iod_list.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %dma_addr.011.i = phi i32 [ %55, %for.body.lr.ph.i ], [ %conv.i, %nvme_pci_iod_list.exit.i.for.body.i_crit_edge ]
  %i.010.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %nvme_pci_iod_list.exit.i.for.body.i_crit_edge ]
  %56 = ptrtoint ptr %sg2 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %sg2, align 8
  %58 = ptrtoint ptr %rq_flags.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %rq_flags.i, align 8
  %and.i.i.i = and i32 %59, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %for.body.i.nvme_pci_iod_list.exit.i_crit_edge

for.body.i.nvme_pci_iod_list.exit.i_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %nvme_pci_iod_list.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %60 = ptrtoint ptr %nr_phys_segments.i.i.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %nr_phys_segments.i.i.i, align 4
  %phi.cast.i.i = zext i16 %61 to i32
  br label %nvme_pci_iod_list.exit.i

nvme_pci_iod_list.exit.i:                         ; preds = %if.end.i.i.i, %for.body.i.nvme_pci_iod_list.exit.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %phi.cast.i.i, %if.end.i.i.i ], [ 1, %for.body.i.nvme_pci_iod_list.exit.i_crit_edge ]
  %add.ptr.i8.i = getelementptr %struct.scatterlist, ptr %57, i32 %retval.0.i.i.i
  %arrayidx.i = getelementptr ptr, ptr %add.ptr.i8.i, i32 %i.010.i
  %62 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx2.i = getelementptr i64, ptr %63, i32 511
  %64 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %arrayidx2.i, align 8
  %66 = call i64 @llvm.bswap.i64(i64 %65) #16
  %conv.i = trunc i64 %66 to i32
  %67 = ptrtoint ptr %prp_page_pool.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %prp_page_pool.i, align 4
  call void @dma_pool_free(ptr noundef %68, ptr noundef %63, i32 noundef %dma_addr.011.i) #16
  %inc.i = add nuw nsw i32 %i.010.i, 1
  %69 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %18, align 4
  %cmp.i = icmp slt i32 %inc.i, %70
  br i1 %cmp.i, label %nvme_pci_iod_list.exit.i.for.body.i_crit_edge, label %nvme_pci_iod_list.exit.i.cleanup138_crit_edge

nvme_pci_iod_list.exit.i.cleanup138_crit_edge:    ; preds = %nvme_pci_iod_list.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup138

nvme_pci_iod_list.exit.i.for.body.i_crit_edge:    ; preds = %nvme_pci_iod_list.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

bad_sgl:                                          ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09b ${1:l}\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @nvme_pci_setup_prps.___once_key, ptr blockaddress(@nvme_pci_setup_prps, %if.then92)) #16
          to label %cleanup138 [label %if.then92], !srcloc !395

if.then92:                                        ; preds = %bad_sgl
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %___flags) #16
  %71 = ptrtoint ptr %___flags to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 -1, ptr %___flags, align 4, !annotation !349
  %call93 = call zeroext i1 @__do_once_start(ptr noundef nonnull @nvme_pci_setup_prps.___done, ptr noundef nonnull %___flags) #16
  br i1 %call93, label %if.then102, label %cleanup138.critedge, !prof !350

if.then102:                                       ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #18
  %72 = ptrtoint ptr %sg2 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %sg2, align 8
  %nents = getelementptr %struct.request, ptr %req, i32 1, i32 23
  %74 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %nents, align 8
  call fastcc void @nvme_print_sgl(ptr noundef %73, i32 noundef %75)
  call void @__do_once_done(ptr noundef nonnull @nvme_pci_setup_prps.___done, ptr noundef nonnull @nvme_pci_setup_prps.___once_key, ptr noundef nonnull %___flags, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %___flags) #16
  %76 = ptrtoint ptr %rq_flags.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %rq_flags.i, align 8
  %and.i210 = and i32 %77, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i210)
  %tobool.not.i211 = icmp eq i32 %and.i210, 0
  %retval.0.in.i214 = select i1 %tobool.not.i211, ptr %__data_len.i.i, ptr %bv_len.i
  %78 = ptrtoint ptr %retval.0.in.i214 to i32
  call void @__asan_load4_noabort(i32 %78)
  %retval.0.i215 = load i32, ptr %retval.0.in.i214, align 4
  %79 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %nents, align 8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 713, i32 noundef 9, ptr noundef nonnull @.str.62, i32 noundef %retval.0.i215, i32 noundef %80) #16
  br label %cleanup138

cleanup138.critedge:                              ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %___flags) #16
  br label %cleanup138

cleanup138:                                       ; preds = %cleanup138.critedge, %if.then102, %bad_sgl, %nvme_pci_iod_list.exit.i.cleanup138_crit_edge, %free_prps.cleanup138_crit_edge, %done, %if.then33
  %retval.0 = phi i8 [ 0, %done ], [ 9, %if.then33 ], [ 10, %if.then102 ], [ 10, %cleanup138.critedge ], [ 9, %free_prps.cleanup138_crit_edge ], [ 10, %bad_sgl ], [ 9, %nvme_pci_iod_list.exit.i.cleanup138_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prp_dma) #16
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__blk_rq_map_sg(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__do_once_start(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nvme_print_sgl(ptr noundef %sgl, i32 noundef %nents) unnamed_addr #2 align 64 {
entry:
  %phys = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nents)
  %cmp10 = icmp sgt i32 %nents, 0
  br i1 %cmp10, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %sg_phys.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %i.012 = phi i32 [ %inc, %sg_phys.exit.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %sg.011 = phi ptr [ %call2, %sg_phys.exit.for.body_crit_edge ], [ %sgl, %entry.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %phys) #16
  %0 = ptrtoint ptr %phys to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %phys, align 4, !annotation !349
  %1 = ptrtoint ptr %sg.011 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %sg.011, align 4
  %and.i.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_phys.exit, label %do.body2.i.i, !prof !367

do.body2.i.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #16, !srcloc !381
  unreachable

sg_phys.exit:                                     ; preds = %for.body
  %and.i.i = and i32 %2, -4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %3 = load ptr, ptr @mem_map, align 4
  %sub.ptr.rhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.sub.i = sub i32 %and.i.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %4 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i = add i32 %sub.ptr.div.i, %4
  %shl.i = shl i32 %add.i, 12
  %offset.i = getelementptr inbounds %struct.scatterlist, ptr %sg.011, i32 0, i32 1
  %5 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %offset.i, align 4
  %add1.i = add i32 %shl.i, %6
  %7 = ptrtoint ptr %phys to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %add1.i, ptr %phys, align 4
  %length = getelementptr inbounds %struct.scatterlist, ptr %sg.011, i32 0, i32 2
  %8 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %length, align 4
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sg.011, i32 0, i32 3
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sg.011, i32 0, i32 4
  %10 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma_length, align 4
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, i32 noundef %i.012, ptr noundef nonnull %phys, i32 noundef %6, i32 noundef %9, ptr noundef %dma_address, i32 noundef %11) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phys) #16
  %inc = add nuw nsw i32 %i.012, 1
  %call2 = call ptr @sg_next(ptr noundef %sg.011) #16
  %exitcond.not = icmp eq i32 %inc, %nents
  br i1 %exitcond.not, label %sg_phys.exit.for.end_crit_edge, label %sg_phys.exit.for.body_crit_edge

sg_phys.exit.for.body_crit_edge:                  ; preds = %sg_phys.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

sg_phys.exit.for.end_crit_edge:                   ; preds = %sg_phys.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %sg_phys.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__do_once_done(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvme_poll(ptr nocapture noundef readonly %hctx, ptr noundef %iob) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 9
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 128
  %cqes.i = getelementptr inbounds %struct.nvme_queue, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %cqes.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cqes.i, align 4
  %cq_head.i = getelementptr inbounds %struct.nvme_queue, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %cq_head.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %cq_head.i, align 2
  %idxprom.i = zext i16 %5 to i32
  %status.i = getelementptr %struct.nvme_completion, ptr %3, i32 %idxprom.i, i32 4
  %6 = ptrtoint ptr %status.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load volatile i16, ptr %status.i, align 2
  %8 = lshr i16 %7, 8
  %9 = and i16 %8, 1
  %cq_phase.i = getelementptr inbounds %struct.nvme_queue, ptr %1, i32 0, i32 15
  %10 = ptrtoint ptr %cq_phase.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %cq_phase.i, align 2
  %12 = zext i8 %11 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %9, i16 %12)
  %cmp.i = icmp eq i16 %9, %12
  br i1 %cmp.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %cq_poll_lock = getelementptr inbounds %struct.nvme_queue, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %cq_poll_lock) #16
  %call1 = tail call fastcc i32 @nvme_poll_cq(ptr noundef %1, ptr noundef %iob)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool = icmp ne i32 %call1, 0
  tail call void @_raw_spin_unlock(ptr noundef %cq_poll_lock) #16
  %conv = zext i1 %tobool to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @abort_endio(ptr noundef %req, i8 noundef zeroext %error) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %nvmeq1 = getelementptr %struct.request, ptr %req, i32 1, i32 17
  %0 = ptrtoint ptr %nvmeq1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nvmeq1, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %device = getelementptr inbounds %struct.nvme_dev, ptr %3, i32 0, i32 23, i32 17
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 8
  %status = getelementptr %struct.request, ptr %req, i32 1, i32 5
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %status, align 4
  %conv = zext i16 %7 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.82, i32 noundef %conv) #21
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 128
  %abort_limit = getelementptr inbounds %struct.nvme_dev, ptr %9, i32 0, i32 23, i32 46
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %abort_limit, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %abort_limit, i32 1, i32 3, i32 1) #16
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %abort_limit, ptr %abort_limit, i32 1, ptr elementtype(i32) %abort_limit) #16, !srcloc !390
  tail call void @blk_mq_free_request(ptr noundef %req) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_cleanup_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nvme_free_host_mem(ptr nocapture noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_host_mem_descs = getelementptr inbounds %struct.nvme_dev, ptr %dev, i32 0, i32 32
  %0 = ptrtoint ptr %nr_host_mem_descs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_host_mem_descs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp27.not = icmp eq i32 %1, 0
  br i1 %cmp27.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %host_mem_descs = getelementptr inbounds %struct.nvme_dev, ptr %dev, i32 0, i32 34
  %dev2 = getelementptr inbounds %struct.nvme_dev, ptr %dev, i32 0, i32 4
  %host_mem_desc_bufs = getelementptr inbounds %struct.nvme_dev, ptr %dev, i32 0, i32 35
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.028 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %host_mem_descs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host_mem_descs, align 8
  %arrayidx = getelementptr %struct.nvme_host_mem_buf_desc, ptr %3, i32 %i.028
  %size1 = getelementptr %struct.nvme_host_mem_buf_desc, ptr %3, i32 %i.028, i32 1
  %4 = ptrtoint ptr %size1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size1, align 8
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %mul = shl i32 %6, 12
  %7 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev2, align 8
  %9 = ptrtoint ptr %host_mem_desc_bufs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %host_mem_desc_bufs, align 4
  %arrayidx3 = getelementptr ptr, ptr %10, i32 %i.028
  %11 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx3, align 4
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %arrayidx, align 8
  %15 = tail call i64 @llvm.bswap.i64(i64 %14)
  %conv = trunc i64 %15 to i32
  tail call void @dma_free_attrs(ptr noundef %8, i32 noundef %mul, ptr noundef %12, i32 noundef %conv, i32 noundef 272) #16
  %inc = add nuw i32 %i.028, 1
  %16 = ptrtoint ptr %nr_host_mem_descs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nr_host_mem_descs, align 8
  %cmp = icmp ult i32 %inc, %17
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %host_mem_desc_bufs4 = getelementptr inbounds %struct.nvme_dev, ptr %dev, i32 0, i32 35
  %18 = ptrtoint ptr %host_mem_desc_bufs4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %host_mem_desc_bufs4, align 4
  tail call void @kfree(ptr noundef %19) #16
  %20 = ptrtoint ptr %host_mem_desc_bufs4 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %host_mem_desc_bufs4, align 4
  %dev6 = getelementptr inbounds %struct.nvme_dev, ptr %dev, i32 0, i32 4
  %21 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev6, align 8
  %23 = ptrtoint ptr %nr_host_mem_descs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nr_host_mem_descs, align 8
  %mul8 = shl i32 %24, 4
  %host_mem_descs9 = getelementptr inbounds %struct.nvme_dev, ptr %dev, i32 0, i32 34
  %25 = ptrtoint ptr %host_mem_descs9 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %host_mem_descs9, align 8
  %host_mem_descs_dma = getelementptr inbounds %struct.nvme_dev, ptr %dev, i32 0, i32 33
  %27 = ptrtoint ptr %host_mem_descs_dma to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %host_mem_descs_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %22, i32 noundef %mul8, ptr noundef %26, i32 noundef %28, i32 noundef 0) #16
  %29 = ptrtoint ptr %host_mem_descs9 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %host_mem_descs9, align 8
  %30 = ptrtoint ptr %nr_host_mem_descs to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %nr_host_mem_descs, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvme_submit_sync_cmd(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvme_set_queue_count(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @nvme_calc_irq_sets(ptr nocapture noundef %affd, i32 noundef %nrirqs) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.irq_affinity, ptr %affd, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %nr_write_queues1 = getelementptr inbounds %struct.nvme_dev, ptr %1, i32 0, i32 37
  %2 = ptrtoint ptr %nr_write_queues1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_write_queues1, align 4
  %4 = zext i32 %nrirqs to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.129)
  switch i32 %nrirqs, label %lor.lhs.false [
    i32 0, label %entry.if.end9_crit_edge
    i32 1, label %entry.if.then3_crit_edge
  ]

entry.if.then3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then3

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %lor.lhs.false.if.then3_crit_edge, label %if.else4

lor.lhs.false.if.then3_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then3

if.then3:                                         ; preds = %lor.lhs.false.if.then3_crit_edge, %entry.if.then3_crit_edge
  br label %if.end9

if.else4:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %nrirqs)
  %cmp5.not = icmp ult i32 %3, %nrirqs
  %sub = sub i32 %nrirqs, %3
  %spec.select = select i1 %cmp5.not, i32 %sub, i32 1
  br label %if.end9

if.end9:                                          ; preds = %if.else4, %if.then3, %entry.if.end9_crit_edge
  %nrirqs.addr.0 = phi i32 [ %nrirqs, %if.then3 ], [ 1, %entry.if.end9_crit_edge ], [ %nrirqs, %if.else4 ]
  %nr_read_queues.0 = phi i32 [ 0, %if.then3 ], [ %nrirqs, %entry.if.end9_crit_edge ], [ %spec.select, %if.else4 ]
  %sub10 = sub i32 %nrirqs.addr.0, %nr_read_queues.0
  %io_queues = getelementptr inbounds %struct.nvme_dev, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %io_queues to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %sub10, ptr %io_queues, align 4
  %set_size = getelementptr inbounds %struct.irq_affinity, ptr %affd, i32 0, i32 3
  %6 = ptrtoint ptr %set_size to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %sub10, ptr %set_size, align 4
  %arrayidx14 = getelementptr %struct.nvme_dev, ptr %1, i32 0, i32 9, i32 1
  %7 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %nr_read_queues.0, ptr %arrayidx14, align 4
  %arrayidx16 = getelementptr %struct.irq_affinity, ptr %affd, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %nr_read_queues.0, ptr %arrayidx16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_read_queues.0)
  %tobool17.not = icmp eq i32 %nr_read_queues.0, 0
  %spec.select35 = select i1 %tobool17.not, i32 1, i32 2
  %nr_sets = getelementptr inbounds %struct.irq_affinity, ptr %affd, i32 0, i32 2
  %9 = ptrtoint ptr %nr_sets to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %spec.select35, ptr %nr_sets, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_update_nr_hw_queues(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nvme_free_queues(ptr nocapture noundef %dev, i32 noundef %lowest) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %queue_count = getelementptr inbounds %struct.nvme_dev, ptr %dev, i32 0, i32 23, i32 30
  %0 = ptrtoint ptr %queue_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %queue_count, align 4
  %i.08 = add i32 %1, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.08, i32 %lowest)
  %cmp.not9 = icmp slt i32 %i.08, %lowest
  br i1 %cmp.not9, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body:                                         ; preds = %nvme_free_queue.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %i.010 = phi i32 [ %i.0, %nvme_free_queue.exit.for.body_crit_edge ], [ %i.08, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %queue_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %queue_count, align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr %queue_count, align 4
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  %arrayidx = getelementptr %struct.nvme_queue, ptr %5, i32 %i.010
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 128
  %dev1.i = getelementptr inbounds %struct.nvme_dev, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev1.i, align 8
  %q_depth.i = getelementptr %struct.nvme_queue, ptr %5, i32 %i.010, i32 9
  %10 = ptrtoint ptr %q_depth.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %q_depth.i, align 4
  %mul.i = shl i32 %11, 4
  %cqes.i = getelementptr %struct.nvme_queue, ptr %5, i32 %i.010, i32 5
  %12 = ptrtoint ptr %cqes.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cqes.i, align 4
  %cq_dma_addr.i = getelementptr %struct.nvme_queue, ptr %5, i32 %i.010, i32 7
  %14 = ptrtoint ptr %cq_dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cq_dma_addr.i, align 4
  tail call void @dma_free_attrs(ptr noundef %9, i32 noundef %mul.i, ptr noundef %13, i32 noundef %15, i32 noundef 0) #16
  %sq_cmds.i = getelementptr %struct.nvme_queue, ptr %5, i32 %i.010, i32 2
  %16 = ptrtoint ptr %sq_cmds.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sq_cmds.i, align 16
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %for.body.nvme_free_queue.exit_crit_edge, label %if.end.i

for.body.nvme_free_queue.exit_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %nvme_free_queue.exit

if.end.i:                                         ; preds = %for.body
  %flags.i = getelementptr %struct.nvme_queue, ptr %5, i32 %i.010, i32 17
  %call.i = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %flags.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.else.i, label %if.end.i.nvme_free_queue.exit_crit_edge

if.end.i.nvme_free_queue.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %nvme_free_queue.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 128
  %dev9.i = getelementptr inbounds %struct.nvme_dev, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %dev9.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev9.i, align 8
  %22 = ptrtoint ptr %q_depth.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %q_depth.i, align 4
  %sqes11.i = getelementptr %struct.nvme_queue, ptr %5, i32 %i.010, i32 16
  %24 = ptrtoint ptr %sqes11.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %sqes11.i, align 1
  %conv12.i = zext i8 %25 to i32
  %shl13.i = shl i32 %23, %conv12.i
  %26 = ptrtoint ptr %sq_cmds.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sq_cmds.i, align 16
  %sq_dma_addr.i = getelementptr %struct.nvme_queue, ptr %5, i32 %i.010, i32 6
  %28 = ptrtoint ptr %sq_dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sq_dma_addr.i, align 16
  tail call void @dma_free_attrs(ptr noundef %21, i32 noundef %shl13.i, ptr noundef %27, i32 noundef %29, i32 noundef 0) #16
  br label %nvme_free_queue.exit

nvme_free_queue.exit:                             ; preds = %if.else.i, %if.end.i.nvme_free_queue.exit_crit_edge, %for.body.nvme_free_queue.exit_crit_edge
  %i.0 = add i32 %i.010, -1
  %cmp.not = icmp slt i32 %i.0, %lowest
  br i1 %cmp.not, label %nvme_free_queue.exit.for.end_crit_edge, label %nvme_free_queue.exit.for.body_crit_edge

nvme_free_queue.exit.for.body_crit_edge:          ; preds = %nvme_free_queue.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

nvme_free_queue.exit.for.end_crit_edge:           ; preds = %nvme_free_queue.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %nvme_free_queue.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvme_commit_rqs(ptr nocapture noundef readonly %hctx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 9
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 128
  %sq_lock = getelementptr inbounds %struct.nvme_queue, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %sq_lock) #16
  %sq_tail = getelementptr inbounds %struct.nvme_queue, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %sq_tail to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %sq_tail, align 2
  %last_sq_tail = getelementptr inbounds %struct.nvme_queue, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %last_sq_tail to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %last_sq_tail, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %5)
  %cmp.not = icmp eq i16 %3, %5
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  %dbbuf_sq_db.i = getelementptr inbounds %struct.nvme_queue, ptr %1, i32 0, i32 18
  %6 = ptrtoint ptr %dbbuf_sq_db.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dbbuf_sq_db.i, align 16
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %if.then.do.body.i_crit_edge, label %if.then.i.i

if.then.do.body.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i

if.then.i.i:                                      ; preds = %if.then
  %dbbuf_sq_ei.i = getelementptr inbounds %struct.nvme_queue, ptr %1, i32 0, i32 20
  %8 = ptrtoint ptr %dbbuf_sq_ei.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dbbuf_sq_ei.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !373
  tail call void @arm_heavy_mb() #16
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %7, align 4
  %conv.i.i = trunc i32 %11 to i16
  %conv1.i.i = zext i16 %3 to i32
  store i32 %conv1.i.i, ptr %7, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !374
  tail call void @arm_heavy_mb() #16
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %9, align 4
  %conv5.i.i = trunc i32 %13 to i16
  %14 = xor i16 %conv5.i.i, -1
  %sub2.i.i.i = add i16 %3, %14
  %sub7.i.i.i = sub i16 %3, %conv.i.i
  call void @__sanitizer_cov_trace_cmp2(i16 %sub2.i.i.i, i16 %sub7.i.i.i)
  %cmp.i.not.i.i = icmp ult i16 %sub2.i.i.i, %sub7.i.i.i
  br i1 %cmp.i.not.i.i, label %if.then.i.i.do.body.i_crit_edge, label %if.then.i.i.nvme_write_sq_db.exit_crit_edge

if.then.i.i.nvme_write_sq_db.exit_crit_edge:      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %nvme_write_sq_db.exit

if.then.i.i.do.body.i_crit_edge:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i

do.body.i:                                        ; preds = %if.then.i.i.do.body.i_crit_edge, %if.then.do.body.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !384
  tail call void @arm_heavy_mb() #16
  %15 = ptrtoint ptr %sq_tail to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %sq_tail, align 2
  %conv15.i = zext i16 %16 to i32
  %17 = tail call i32 @llvm.bswap.i32(i32 %conv15.i) #16
  %q_db.i = getelementptr inbounds %struct.nvme_queue, ptr %1, i32 0, i32 8
  %18 = ptrtoint ptr %q_db.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %q_db.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #16, !srcloc !357
  br label %nvme_write_sq_db.exit

nvme_write_sq_db.exit:                            ; preds = %do.body.i, %if.then.i.i.nvme_write_sq_db.exit_crit_edge
  %20 = ptrtoint ptr %sq_tail to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %sq_tail, align 2
  %22 = ptrtoint ptr %last_sq_tail to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %last_sq_tail, align 4
  br label %if.end

if.end:                                           ; preds = %nvme_write_sq_db.exit, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %sq_lock) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvme_queue_rqs(ptr noundef %rqlist) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %rqlist, null
  br i1 %tobool.not, label %entry.for.end_crit_edge, label %if.end

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %rqlist to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rqlist, align 4
  %tobool2.not49 = icmp eq ptr %1, null
  br i1 %tobool2.not49, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body:                                         ; preds = %for.body.backedge, %if.end.for.body_crit_edge
  %.sink61 = phi ptr [ %4, %for.body.backedge ], [ %1, %if.end.for.body_crit_edge ]
  %prev.052 = phi ptr [ %prev.052.be, %for.body.backedge ], [ null, %if.end.for.body_crit_edge ]
  %requeue_list.050 = phi ptr [ %requeue_list.050.be, %for.body.backedge ], [ null, %if.end.for.body_crit_edge ]
  %2 = getelementptr inbounds %struct.request, ptr %.sink61, i32 0, i32 12
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %mq_hctx = getelementptr inbounds %struct.request, ptr %.sink61, i32 0, i32 2
  %5 = ptrtoint ptr %mq_hctx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mq_hctx, align 8
  %driver_data = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %6, i32 0, i32 9
  %7 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_data, align 128
  %flags.i = getelementptr inbounds %struct.nvme_queue, ptr %8, i32 0, i32 17
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %for.body.if.then3_crit_edge, label %if.end.i, !prof !350

for.body.if.then3_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then3

if.end.i:                                         ; preds = %for.body
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %8, align 128
  %ctrl.i = getelementptr inbounds %struct.nvme_dev, ptr %12, i32 0, i32 23
  %state.i.i = getelementptr inbounds %struct.nvme_dev, ptr %12, i32 0, i32 23, i32 1
  %13 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp.i.i = icmp eq i32 %14, 1
  br i1 %cmp.i.i, label %if.end.i.nvme_prep_rq_batch.exit_crit_edge, label %if.end.i.i, !prof !367

if.end.i.nvme_prep_rq_batch.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %nvme_prep_rq_batch.exit

if.end.i.i:                                       ; preds = %if.end.i
  %ops.i.i = getelementptr inbounds %struct.nvme_dev, ptr %12, i32 0, i32 23, i32 5
  %15 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.nvme_ctrl_ops, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool2.not.i.i = icmp ne i32 %and.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %14)
  %cmp4.i.i = icmp eq i32 %14, 4
  %or.cond.i.i = select i1 %tobool2.not.i.i, i1 %cmp4.i.i, i1 false
  br i1 %or.cond.i.i, label %if.end.i.i.nvme_prep_rq_batch.exit_crit_edge, label %nvme_check_ready.exit.i

if.end.i.i.nvme_prep_rq_batch.exit_crit_edge:     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %nvme_prep_rq_batch.exit

nvme_check_ready.exit.i:                          ; preds = %if.end.i.i
  %call.i.i = tail call zeroext i1 @__nvme_check_ready(ptr noundef %ctrl.i, ptr noundef nonnull %.sink61, i1 noundef zeroext true) #16
  br i1 %call.i.i, label %nvme_check_ready.exit.i.nvme_prep_rq_batch.exit_crit_edge, label %nvme_check_ready.exit.i.if.then3_crit_edge, !prof !367

nvme_check_ready.exit.i.if.then3_crit_edge:       ; preds = %nvme_check_ready.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then3

nvme_check_ready.exit.i.nvme_prep_rq_batch.exit_crit_edge: ; preds = %nvme_check_ready.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %nvme_prep_rq_batch.exit

nvme_prep_rq_batch.exit:                          ; preds = %nvme_check_ready.exit.i.nvme_prep_rq_batch.exit_crit_edge, %if.end.i.i.nvme_prep_rq_batch.exit_crit_edge, %if.end.i.nvme_prep_rq_batch.exit_crit_edge
  %19 = ptrtoint ptr %mq_hctx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mq_hctx, align 8
  %tags.i = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %20, i32 0, i32 19
  %21 = ptrtoint ptr %tags.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tags.i, align 16
  %rqs.i = getelementptr inbounds %struct.blk_mq_tags, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %rqs.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rqs.i, align 4
  %tag.i = getelementptr inbounds %struct.request, ptr %.sink61, i32 0, i32 5
  %25 = ptrtoint ptr %tag.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tag.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %24, i32 %26
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %.sink61, ptr %arrayidx.i, align 4
  %28 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %8, align 128
  %call16.i = tail call fastcc zeroext i8 @nvme_prep_rq(ptr noundef %29, ptr noundef nonnull %.sink61) #16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call16.i)
  %cmp.i = icmp eq i8 %call16.i, 0
  br i1 %cmp.i, label %nvme_prep_rq_batch.exit.if.end7_crit_edge, label %nvme_prep_rq_batch.exit.if.then3_crit_edge

nvme_prep_rq_batch.exit.if.then3_crit_edge:       ; preds = %nvme_prep_rq_batch.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then3

nvme_prep_rq_batch.exit.if.end7_crit_edge:        ; preds = %nvme_prep_rq_batch.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7

if.then3:                                         ; preds = %nvme_prep_rq_batch.exit.if.then3_crit_edge, %nvme_check_ready.exit.i.if.then3_crit_edge, %for.body.if.then3_crit_edge
  %tobool.not.i35 = icmp eq ptr %prev.052, null
  %30 = getelementptr inbounds %struct.request, ptr %.sink61, i32 0, i32 12
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 8
  br i1 %tobool.not.i35, label %rq_list_move.exit.thread, label %rq_list_move.exit

rq_list_move.exit.thread:                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #18
  %33 = ptrtoint ptr %rqlist to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %rqlist, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %requeue_list.050, ptr %30, align 8
  br label %cleanup

rq_list_move.exit:                                ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #18
  %35 = getelementptr inbounds %struct.request, ptr %prev.052, i32 0, i32 12
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %32, ptr %35, align 8
  %37 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %requeue_list.050, ptr %30, align 8
  br label %if.end7

if.end7:                                          ; preds = %rq_list_move.exit, %nvme_prep_rq_batch.exit.if.end7_crit_edge
  %requeue_list.1 = phi ptr [ %requeue_list.050, %nvme_prep_rq_batch.exit.if.end7_crit_edge ], [ %.sink61, %rq_list_move.exit ]
  %req.1 = phi ptr [ %.sink61, %nvme_prep_rq_batch.exit.if.end7_crit_edge ], [ %prev.052, %rq_list_move.exit ]
  %tobool8.not = icmp eq ptr %4, null
  br i1 %tobool8.not, label %if.end7.if.then11_crit_edge, label %lor.lhs.false

if.end7.if.then11_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11

lor.lhs.false:                                    ; preds = %if.end7
  %mq_hctx9 = getelementptr inbounds %struct.request, ptr %req.1, i32 0, i32 2
  %38 = ptrtoint ptr %mq_hctx9 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mq_hctx9, align 8
  %mq_hctx10 = getelementptr inbounds %struct.request, ptr %4, i32 0, i32 2
  %40 = ptrtoint ptr %mq_hctx10 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mq_hctx10, align 8
  %cmp.not = icmp eq ptr %39, %41
  br i1 %cmp.not, label %lor.lhs.false.for.body.backedge_crit_edge, label %lor.lhs.false.if.then11_crit_edge

lor.lhs.false.if.then11_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11

lor.lhs.false.for.body.backedge_crit_edge:        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.backedge

if.then11:                                        ; preds = %lor.lhs.false.if.then11_crit_edge, %if.end7.if.then11_crit_edge
  %42 = getelementptr inbounds %struct.request, ptr %req.1, i32 0, i32 12
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %42, align 8
  %sq_lock.i = getelementptr inbounds %struct.nvme_queue, ptr %8, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %sq_lock.i) #16
  %44 = ptrtoint ptr %rqlist to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rqlist, align 4
  %cmp.not12.i = icmp eq ptr %45, null
  br i1 %cmp.not12.i, label %if.then11.while.end.i_crit_edge, label %while.body.lr.ph.i

if.then11.while.end.i_crit_edge:                  ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %if.then11
  %sq_cmds.i.i = getelementptr inbounds %struct.nvme_queue, ptr %8, i32 0, i32 2
  %sq_tail.i.i = getelementptr inbounds %struct.nvme_queue, ptr %8, i32 0, i32 11
  %sqes.i.i = getelementptr inbounds %struct.nvme_queue, ptr %8, i32 0, i32 16
  %q_depth.i.i = getelementptr inbounds %struct.nvme_queue, ptr %8, i32 0, i32 9
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i39.while.body.i_crit_edge, %while.body.lr.ph.i
  %46 = phi ptr [ %45, %while.body.lr.ph.i ], [ %63, %if.end.i39.while.body.i_crit_edge ]
  br i1 %tobool.not, label %while.body.i.if.end.i39_crit_edge, label %if.then.i37

while.body.i.if.end.i39_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i39

if.then.i37:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %47 = getelementptr inbounds %struct.request, ptr %46, i32 0, i32 12
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 8
  %50 = ptrtoint ptr %rqlist to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %49, ptr %rqlist, align 4
  br label %if.end.i39

if.end.i39:                                       ; preds = %if.then.i37, %while.body.i.if.end.i39_crit_edge
  %__req.0.i = phi ptr [ %46, %if.then.i37 ], [ null, %while.body.i.if.end.i39_crit_edge ]
  %cmd.i = getelementptr %struct.request, ptr %__req.0.i, i32 1, i32 8
  %51 = ptrtoint ptr %sq_cmds.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %sq_cmds.i.i, align 16
  %53 = ptrtoint ptr %sq_tail.i.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %sq_tail.i.i, align 2
  %conv.i.i = zext i16 %54 to i32
  %55 = ptrtoint ptr %sqes.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %sqes.i.i, align 1
  %conv1.i.i = zext i8 %56 to i32
  %shl.i.i = shl i32 %conv.i.i, %conv1.i.i
  %add.ptr.i11.i = getelementptr i8, ptr %52, i32 %shl.i.i
  %57 = call ptr @memcpy(ptr %add.ptr.i11.i, ptr %cmd.i, i32 64)
  %58 = load i16, ptr %sq_tail.i.i, align 2
  %inc.i.i = add i16 %58, 1
  %conv3.i.i = zext i16 %inc.i.i to i32
  %59 = ptrtoint ptr %q_depth.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %q_depth.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %conv3.i.i)
  %cmp.i.i38 = icmp eq i32 %60, %conv3.i.i
  %spec.store.select.i.i = select i1 %cmp.i.i38, i16 0, i16 %inc.i.i
  %61 = ptrtoint ptr %sq_tail.i.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %spec.store.select.i.i, ptr %sq_tail.i.i, align 2
  %62 = ptrtoint ptr %rqlist to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %rqlist, align 4
  %cmp.not.i = icmp eq ptr %63, null
  br i1 %cmp.not.i, label %if.end.i39.while.end.i_crit_edge, label %if.end.i39.while.body.i_crit_edge

if.end.i39.while.body.i_crit_edge:                ; preds = %if.end.i39
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i

if.end.i39.while.end.i_crit_edge:                 ; preds = %if.end.i39
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

while.end.i:                                      ; preds = %if.end.i39.while.end.i_crit_edge, %if.then11.while.end.i_crit_edge
  %sq_tail12.i.i = getelementptr inbounds %struct.nvme_queue, ptr %8, i32 0, i32 11
  %dbbuf_sq_db.i.i = getelementptr inbounds %struct.nvme_queue, ptr %8, i32 0, i32 18
  %64 = ptrtoint ptr %dbbuf_sq_db.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dbbuf_sq_db.i.i, align 16
  %tobool.not.i.i.i = icmp eq ptr %65, null
  br i1 %tobool.not.i.i.i, label %while.end.i.do.body.i.i_crit_edge, label %if.then.i.i.i

while.end.i.do.body.i.i_crit_edge:                ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i.i

if.then.i.i.i:                                    ; preds = %while.end.i
  %dbbuf_sq_ei.i.i = getelementptr inbounds %struct.nvme_queue, ptr %8, i32 0, i32 20
  %66 = ptrtoint ptr %dbbuf_sq_ei.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dbbuf_sq_ei.i.i, align 8
  %68 = ptrtoint ptr %sq_tail12.i.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %sq_tail12.i.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !373
  tail call void @arm_heavy_mb() #16
  %70 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %65, align 4
  %conv.i.i.i = trunc i32 %71 to i16
  %conv1.i.i.i = zext i16 %69 to i32
  store i32 %conv1.i.i.i, ptr %65, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !374
  tail call void @arm_heavy_mb() #16
  %72 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %67, align 4
  %conv5.i.i.i = trunc i32 %73 to i16
  %74 = xor i16 %conv5.i.i.i, -1
  %sub2.i.i.i.i = add i16 %69, %74
  %sub7.i.i.i.i = sub i16 %69, %conv.i.i.i
  call void @__sanitizer_cov_trace_cmp2(i16 %sub2.i.i.i.i, i16 %sub7.i.i.i.i)
  %cmp.i.not.i.i.i = icmp ult i16 %sub2.i.i.i.i, %sub7.i.i.i.i
  br i1 %cmp.i.not.i.i.i, label %if.then.i.i.i.do.body.i.i_crit_edge, label %if.then.i.i.i.nvme_submit_cmds.exit_crit_edge

if.then.i.i.i.nvme_submit_cmds.exit_crit_edge:    ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %nvme_submit_cmds.exit

if.then.i.i.i.do.body.i.i_crit_edge:              ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.then.i.i.i.do.body.i.i_crit_edge, %while.end.i.do.body.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !384
  tail call void @arm_heavy_mb() #16
  %75 = ptrtoint ptr %sq_tail12.i.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %sq_tail12.i.i, align 2
  %conv15.i.i = zext i16 %76 to i32
  %77 = tail call i32 @llvm.bswap.i32(i32 %conv15.i.i) #16
  %q_db.i.i = getelementptr inbounds %struct.nvme_queue, ptr %8, i32 0, i32 8
  %78 = ptrtoint ptr %q_db.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %q_db.i.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %79, i32 %77) #16, !srcloc !357
  br label %nvme_submit_cmds.exit

nvme_submit_cmds.exit:                            ; preds = %do.body.i.i, %if.then.i.i.i.nvme_submit_cmds.exit_crit_edge
  %80 = ptrtoint ptr %sq_tail12.i.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %sq_tail12.i.i, align 2
  %last_sq_tail18.i.i = getelementptr inbounds %struct.nvme_queue, ptr %8, i32 0, i32 12
  %82 = ptrtoint ptr %last_sq_tail18.i.i to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %81, ptr %last_sq_tail18.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %sq_lock.i) #16
  %83 = ptrtoint ptr %rqlist to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %4, ptr %rqlist, align 4
  br label %cleanup

cleanup:                                          ; preds = %nvme_submit_cmds.exit, %rq_list_move.exit.thread
  %requeue_list.2 = phi ptr [ %requeue_list.1, %nvme_submit_cmds.exit ], [ %.sink61, %rq_list_move.exit.thread ]
  %tobool13.not = icmp eq ptr %4, null
  br i1 %tobool13.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body.backedge_crit_edge

cleanup.for.body.backedge_crit_edge:              ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.backedge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.backedge:                                ; preds = %cleanup.for.body.backedge_crit_edge, %lor.lhs.false.for.body.backedge_crit_edge
  %prev.052.be = phi ptr [ null, %cleanup.for.body.backedge_crit_edge ], [ %req.1, %lor.lhs.false.for.body.backedge_crit_edge ]
  %requeue_list.050.be = phi ptr [ %requeue_list.2, %cleanup.for.body.backedge_crit_edge ], [ %requeue_list.1, %lor.lhs.false.for.body.backedge_crit_edge ]
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %requeue_list.0.lcssa = phi ptr [ null, %if.end.for.end_crit_edge ], [ null, %entry.for.end_crit_edge ], [ %requeue_list.2, %cleanup.for.end_crit_edge ]
  %84 = ptrtoint ptr %rqlist to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %requeue_list.0.lcssa, ptr %rqlist, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvme_init_hctx(ptr nocapture noundef %hctx, ptr nocapture noundef readonly %data, i32 noundef %hctx_idx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %tags = getelementptr inbounds %struct.nvme_dev, ptr %data, i32 0, i32 1, i32 11
  %2 = ptrtoint ptr %tags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tags, align 4
  %arrayidx1 = getelementptr ptr, ptr %3, i32 %hctx_idx
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx1, align 4
  %tags2 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 19
  %6 = ptrtoint ptr %tags2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tags2, align 16
  %cmp.not = icmp eq ptr %5, %7
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end, !prof !367

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 422, i32 noundef 9, ptr noundef null) #16
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %add = add i32 %hctx_idx, 1
  %arrayidx = getelementptr %struct.nvme_queue, ptr %1, i32 %add
  %driver_data = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 9
  %8 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %arrayidx, ptr %driver_data, align 128
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvme_pci_map_queues(ptr noundef %set) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.blk_mq_tag_set, ptr %set, i32 0, i32 10
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %nr_maps = getelementptr inbounds %struct.blk_mq_tag_set, ptr %set, i32 0, i32 1
  %2 = ptrtoint ptr %nr_maps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_maps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp47.not = icmp eq i32 %3, 0
  br i1 %cmp47.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %num_vecs.i = getelementptr inbounds %struct.nvme_dev, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %num_vecs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_vecs.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.i = icmp ugt i32 %5, 1
  %..i = zext i1 %cmp.i to i32
  %dev18 = getelementptr inbounds %struct.nvme_dev, ptr %1, i32 0, i32 4
  %arrayidx2.peel = getelementptr %struct.nvme_dev, ptr %1, i32 0, i32 9, i32 0
  %6 = ptrtoint ptr %arrayidx2.peel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx2.peel, align 4
  %nr_queues.peel = getelementptr [3 x %struct.blk_mq_queue_map], ptr %set, i32 0, i32 0, i32 1
  %8 = ptrtoint ptr %nr_queues.peel to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %nr_queues.peel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.peel = icmp eq i32 %7, 0
  br i1 %tobool.not.peel, label %do.body8, label %if.end14.peel

if.end14.peel:                                    ; preds = %for.body.lr.ph
  %queue_offset.peel = getelementptr [3 x %struct.blk_mq_queue_map], ptr %set, i32 0, i32 0, i32 2
  %9 = ptrtoint ptr %queue_offset.peel to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %queue_offset.peel, align 4
  br i1 %cmp.i, label %if.then17.peel, label %if.else.peel

if.then17.peel:                                   ; preds = %if.end14.peel
  call void @__sanitizer_cov_trace_pc() #18
  %10 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev18, align 8
  %add.ptr.peel = getelementptr i8, ptr %11, i32 -136
  %call19.peel = tail call i32 @blk_mq_pci_map_queues(ptr noundef %set, ptr noundef %add.ptr.peel, i32 noundef %..i) #16
  br label %cleanup.peel

if.else.peel:                                     ; preds = %if.end14.peel
  call void @__sanitizer_cov_trace_pc() #18
  %call20.peel = tail call i32 @blk_mq_map_queues(ptr noundef %set) #16
  br label %cleanup.peel

cleanup.peel:                                     ; preds = %if.else.peel, %if.then17.peel
  %12 = ptrtoint ptr %nr_maps to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nr_maps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp.peel = icmp ugt i32 %13, 1
  br i1 %cmp.peel, label %for.body.preheader, label %cleanup.peel.for.end_crit_edge

cleanup.peel.for.end_crit_edge:                   ; preds = %cleanup.peel
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.preheader:                               ; preds = %cleanup.peel
  %14 = ptrtoint ptr %nr_queues.peel to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nr_queues.peel, align 4
  %add24.peel = add i32 %15, %..i
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.preheader
  %i.051 = phi i32 [ %inc, %cleanup.for.body_crit_edge ], [ 1, %for.body.preheader ]
  %offset.049 = phi i32 [ %offset.1, %cleanup.for.body_crit_edge ], [ %add24.peel, %for.body.preheader ]
  %qoff.048 = phi i32 [ %qoff.1, %cleanup.for.body_crit_edge ], [ %15, %for.body.preheader ]
  %arrayidx = getelementptr [3 x %struct.blk_mq_queue_map], ptr %set, i32 0, i32 %i.051
  %arrayidx2 = getelementptr %struct.nvme_dev, ptr %1, i32 0, i32 9, i32 %i.051
  %16 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx2, align 4
  %nr_queues = getelementptr [3 x %struct.blk_mq_queue_map], ptr %set, i32 0, i32 %i.051, i32 1
  %18 = ptrtoint ptr %nr_queues to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %nr_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not = icmp eq i32 %17, 0
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end14

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.body8:                                         ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/nvme/host/pci.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 463, 0\0A.popsection", ""() #16, !srcloc !396
  unreachable

if.end14:                                         ; preds = %for.body
  %queue_offset = getelementptr [3 x %struct.blk_mq_queue_map], ptr %set, i32 0, i32 %i.051, i32 2
  %19 = ptrtoint ptr %queue_offset to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %qoff.048, ptr %queue_offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.051)
  %cmp15.not = icmp eq i32 %i.051, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %offset.049)
  %tobool16.not = icmp eq i32 %offset.049, 0
  %or.cond = select i1 %cmp15.not, i1 true, i1 %tobool16.not
  br i1 %or.cond, label %if.else, label %if.then17

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #18
  %20 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev18, align 8
  %add.ptr = getelementptr i8, ptr %21, i32 -136
  %call19 = tail call i32 @blk_mq_pci_map_queues(ptr noundef %arrayidx, ptr noundef %add.ptr, i32 noundef %offset.049) #16
  br label %if.end21

if.else:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #18
  %call20 = tail call i32 @blk_mq_map_queues(ptr noundef %arrayidx) #16
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then17
  %22 = ptrtoint ptr %nr_queues to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nr_queues, align 4
  %add = add i32 %23, %qoff.048
  %add24 = add i32 %23, %offset.049
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %for.body.cleanup_crit_edge
  %qoff.1 = phi i32 [ %add, %if.end21 ], [ %qoff.048, %for.body.cleanup_crit_edge ]
  %offset.1 = phi i32 [ %add24, %if.end21 ], [ %offset.049, %for.body.cleanup_crit_edge ]
  %inc = add nuw i32 %i.051, 1
  %24 = ptrtoint ptr %nr_maps to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nr_maps, align 4
  %cmp = icmp ult i32 %inc, %25
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge, !llvm.loop !397

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %cleanup.peel.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_mq_pci_map_queues(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_mq_map_queues(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @nvme_pci_attrs_are_visible(ptr nocapture noundef readonly %kobj, ptr noundef readonly %a, i32 noundef %n) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %cmp = icmp eq ptr %a, @dev_attr_cmb
  %cmp2 = icmp eq ptr %a, @dev_attr_cmbloc
  %or.cond = or i1 %cmp, %cmp2
  %cmp4 = icmp eq ptr %a, @dev_attr_cmbsz
  %or.cond17 = or i1 %cmp4, %or.cond
  br i1 %or.cond17, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

if.then:                                          ; preds = %entry
  %cmbsz = getelementptr i8, ptr %1, i32 -12
  %2 = ptrtoint ptr %cmbsz to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cmbsz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end6:                                          ; preds = %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %cmp7 = icmp eq ptr %a, @dev_attr_hmb
  br i1 %cmp7, label %land.lhs.true, label %if.end6.if.end10_crit_edge

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10

land.lhs.true:                                    ; preds = %if.end6
  %hmpre = getelementptr inbounds %struct.nvme_ctrl, ptr %1, i32 0, i32 83
  %4 = ptrtoint ptr %hmpre to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hmpre, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool8.not = icmp eq i32 %5, 0
  br i1 %tobool8.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end10_crit_edge

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end10:                                         ; preds = %land.lhs.true.if.end10_crit_edge, %if.end6.if.end10_crit_edge
  %mode = getelementptr inbounds %struct.attribute, ptr %a, i32 0, i32 1
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %mode, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %land.lhs.true.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i16 [ %7, %if.end10 ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cmb_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %cmbloc = getelementptr i8, ptr %1, i32 -8
  %2 = ptrtoint ptr %cmbloc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cmbloc, align 8
  %cmbsz = getelementptr i8, ptr %1, i32 -12
  %4 = ptrtoint ptr %cmbsz to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cmbsz, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.102, i32 noundef %3, i32 noundef %5) #16
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cmbloc_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %cmbloc = getelementptr i8, ptr %1, i32 -8
  %2 = ptrtoint ptr %cmbloc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cmbloc, align 8
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.104, i32 noundef %3) #16
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cmbsz_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %cmbsz = getelementptr i8, ptr %1, i32 -12
  %2 = ptrtoint ptr %cmbsz to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cmbsz, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.104, i32 noundef %3) #16
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hmb_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %hmb = getelementptr i8, ptr %1, i32 3564
  %2 = ptrtoint ptr %hmb to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hmb, align 4, !range !351
  %4 = zext i8 %3 to i32
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.107, i32 noundef %4) #16
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hmb_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %c.i = alloca %struct.nvme_command, align 8
  %new = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -600
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %new) #16
  %2 = ptrtoint ptr %new to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %new, align 1, !annotation !349
  %call.i = call i32 @kstrtobool(ptr noundef %buf, ptr noundef nonnull %new) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %new to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %new, align 1, !range !351
  %hmb = getelementptr i8, ptr %1, i32 3564
  %5 = ptrtoint ptr %hmb to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %hmb, align 4, !range !351
  call void @__sanitizer_cov_trace_cmp1(i8 %4, i8 %6)
  %cmp5 = icmp eq i8 %4, %6
  br i1 %cmp5, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  %call11 = call fastcc i32 @nvme_setup_host_mem(ptr noundef %add.ptr.i)
  br label %if.end16

if.else:                                          ; preds = %if.end8
  %host_mem_size1.i = getelementptr i8, ptr %1, i32 3592
  %7 = ptrtoint ptr %host_mem_size1.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %host_mem_size1.i, align 8
  %shr.i = lshr i64 %8, 12
  %conv.i = trunc i64 %shr.i to i32
  %host_mem_descs_dma.i = getelementptr i8, ptr %1, i32 3604
  %9 = ptrtoint ptr %host_mem_descs_dma.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %host_mem_descs_dma.i, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %c.i) #16
  %11 = call ptr @memset(ptr %c.i, i32 0, i32 40)
  %12 = ptrtoint ptr %c.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 9, ptr %c.i, align 8
  %fid.i = getelementptr inbounds %struct.nvme_features, ptr %c.i, i32 0, i32 6
  %13 = ptrtoint ptr %fid.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 218103808, ptr %fid.i, align 8
  %dword11.i = getelementptr inbounds %struct.nvme_features, ptr %c.i, i32 0, i32 7
  %14 = ptrtoint ptr %dword11.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %dword11.i, align 4
  %15 = call i32 @llvm.bswap.i32(i32 %conv.i) #16
  %dword12.i = getelementptr inbounds %struct.nvme_features, ptr %c.i, i32 0, i32 8
  %16 = ptrtoint ptr %dword12.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %dword12.i, align 8
  %17 = call i32 @llvm.bswap.i32(i32 %10) #16
  %dword13.i = getelementptr inbounds %struct.nvme_features, ptr %c.i, i32 0, i32 9
  %18 = ptrtoint ptr %dword13.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %dword13.i, align 4
  %dword14.i = getelementptr inbounds %struct.nvme_features, ptr %c.i, i32 0, i32 10
  %19 = ptrtoint ptr %dword14.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %dword14.i, align 8
  %nr_host_mem_descs.i = getelementptr i8, ptr %1, i32 3600
  %20 = ptrtoint ptr %nr_host_mem_descs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nr_host_mem_descs.i, align 8
  %22 = call i32 @llvm.bswap.i32(i32 %21) #16
  %dword15.i = getelementptr inbounds %struct.nvme_features, ptr %c.i, i32 0, i32 11
  %23 = ptrtoint ptr %dword15.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %dword15.i, align 4
  %admin_q.i = getelementptr i8, ptr %1, i32 152
  %24 = ptrtoint ptr %admin_q.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %admin_q.i, align 8
  %call.i29 = call i32 @nvme_submit_sync_cmd(ptr noundef %25, ptr noundef nonnull %c.i, ptr noundef null, i32 noundef 0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i29)
  %tobool.not.i = icmp eq i32 %call.i29, 0
  br i1 %tobool.not.i, label %if.end16.thread, label %nvme_set_host_mem.exit

nvme_set_host_mem.exit:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %device.i = getelementptr i8, ptr %1, i32 1216
  %26 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %device.i, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %27, ptr noundef nonnull @.str.93, i32 noundef %call.i29, i32 noundef 0) #21
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %c.i) #16
  br label %if.end16

if.end16.thread:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %28 = ptrtoint ptr %hmb to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %hmb, align 4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %c.i) #16
  call fastcc void @nvme_free_host_mem(ptr noundef %add.ptr.i)
  br label %cleanup

if.end16:                                         ; preds = %nvme_set_host_mem.exit, %if.then10
  %ret.0 = phi i32 [ %call11, %if.then10 ], [ %call.i29, %nvme_set_host_mem.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp17 = icmp slt i32 %ret.0, 0
  %spec.select = select i1 %cmp17, i32 %ret.0, i32 %count
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end16.thread, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %count, %if.end.cleanup_crit_edge ], [ %count, %if.end16.thread ], [ %spec.select, %if.end16 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %new) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_release_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvme_pci_reg_read32(ptr nocapture noundef readonly %ctrl, i32 noundef %off, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %bar = getelementptr i8, ptr %ctrl, i32 -176
  %0 = ptrtoint ptr %bar to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bar, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 %off
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #16, !srcloc !352
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !399
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %val, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvme_pci_reg_write32(ptr nocapture noundef readonly %ctrl, i32 noundef %off, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !400
  tail call void @arm_heavy_mb() #16
  %0 = tail call i32 @llvm.bswap.i32(i32 %val)
  %bar = getelementptr i8, ptr %ctrl, i32 -176
  %1 = ptrtoint ptr %bar to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bar, align 8
  %add.ptr = getelementptr i8, ptr %2, i32 %off
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #16, !srcloc !357
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvme_pci_reg_read64(ptr nocapture noundef readonly %ctrl, i32 noundef %off, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %bar = getelementptr i8, ptr %ctrl, i32 -176
  %0 = ptrtoint ptr %bar to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bar, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 %off
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #16, !srcloc !352
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !354
  %add.ptr.i2 = getelementptr i32, ptr %add.ptr, i32 1
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2) #16, !srcloc !352
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !355
  %4 = zext i32 %3 to i64
  %5 = zext i32 %2 to i64
  %6 = shl nuw i64 %5, 32
  %7 = or i64 %6, %4
  %8 = tail call i64 @llvm.bswap.i64(i64 %7) #16
  %9 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %val, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvme_pci_free_ctrl(ptr noundef %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_allocated_queues.i.i = getelementptr i8, ptr %ctrl, i32 3616
  %0 = ptrtoint ptr %nr_allocated_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_allocated_queues.i.i, align 8
  %mul.i.i = shl i32 %1, 3
  %db_stride.i.i = getelementptr i8, ptr %ctrl, i32 -180
  %2 = ptrtoint ptr %db_stride.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %db_stride.i.i, align 4
  %mul1.i.i = mul i32 %mul.i.i, %3
  %dbbuf_dbs.i = getelementptr i8, ptr %ctrl, i32 3572
  %4 = ptrtoint ptr %dbbuf_dbs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dbbuf_dbs.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %dev1.i = getelementptr i8, ptr %ctrl, i32 -224
  %6 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev1.i, align 8
  %dbbuf_dbs_dma_addr.i = getelementptr i8, ptr %ctrl, i32 3576
  %8 = ptrtoint ptr %dbbuf_dbs_dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dbbuf_dbs_dma_addr.i, align 8
  tail call void @dma_free_attrs(ptr noundef %7, i32 noundef %mul1.i.i, ptr noundef nonnull %5, i32 noundef %9, i32 noundef 0) #16
  %10 = ptrtoint ptr %dbbuf_dbs.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %dbbuf_dbs.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %dbbuf_eis.i = getelementptr i8, ptr %ctrl, i32 3580
  %11 = ptrtoint ptr %dbbuf_eis.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dbbuf_eis.i, align 4
  %tobool4.not.i = icmp eq ptr %12, null
  br i1 %tobool4.not.i, label %if.end.i.nvme_dbbuf_dma_free.exit_crit_edge, label %if.then5.i

if.end.i.nvme_dbbuf_dma_free.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %nvme_dbbuf_dma_free.exit

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %dev6.i = getelementptr i8, ptr %ctrl, i32 -224
  %13 = ptrtoint ptr %dev6.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev6.i, align 8
  %dbbuf_eis_dma_addr.i = getelementptr i8, ptr %ctrl, i32 3584
  %15 = ptrtoint ptr %dbbuf_eis_dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dbbuf_eis_dma_addr.i, align 8
  tail call void @dma_free_attrs(ptr noundef %14, i32 noundef %mul1.i.i, ptr noundef nonnull %12, i32 noundef %16, i32 noundef 0) #16
  %17 = ptrtoint ptr %dbbuf_eis.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %dbbuf_eis.i, align 4
  br label %nvme_dbbuf_dma_free.exit

nvme_dbbuf_dma_free.exit:                         ; preds = %if.then5.i, %if.end.i.nvme_dbbuf_dma_free.exit_crit_edge
  %tags.i = getelementptr i8, ptr %ctrl, i32 -520
  %18 = ptrtoint ptr %tags.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tags.i, align 4
  %tobool.not.i14 = icmp eq ptr %19, null
  br i1 %tobool.not.i14, label %nvme_dbbuf_dma_free.exit.nvme_free_tagset.exit_crit_edge, label %if.then.i15

nvme_dbbuf_dma_free.exit.nvme_free_tagset.exit_crit_edge: ; preds = %nvme_dbbuf_dma_free.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %nvme_free_tagset.exit

if.then.i15:                                      ; preds = %nvme_dbbuf_dma_free.exit
  call void @__sanitizer_cov_trace_pc() #18
  %tagset.i = getelementptr i8, ptr %ctrl, i32 -596
  tail call void @blk_mq_free_tag_set(ptr noundef %tagset.i) #16
  br label %nvme_free_tagset.exit

nvme_free_tagset.exit:                            ; preds = %if.then.i15, %nvme_dbbuf_dma_free.exit.nvme_free_tagset.exit_crit_edge
  %tagset2.i = getelementptr i8, ptr %ctrl, i32 176
  %20 = ptrtoint ptr %tagset2.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %tagset2.i, align 8
  %admin_q = getelementptr i8, ptr %ctrl, i32 152
  %21 = ptrtoint ptr %admin_q to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %admin_q, align 8
  %tobool.not = icmp eq ptr %22, null
  br i1 %tobool.not, label %nvme_free_tagset.exit.if.end_crit_edge, label %if.then

nvme_free_tagset.exit.if.end_crit_edge:           ; preds = %nvme_free_tagset.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %nvme_free_tagset.exit
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @blk_put_queue(ptr noundef nonnull %22) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %nvme_free_tagset.exit.if.end_crit_edge
  %add.ptr.i = getelementptr i8, ptr %ctrl, i32 -600
  %opal_dev = getelementptr i8, ptr %ctrl, i32 1536
  %23 = ptrtoint ptr %opal_dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %opal_dev, align 8
  tail call void @free_opal_dev(ptr noundef %24) #16
  %iod_mempool = getelementptr i8, ptr %ctrl, i32 3568
  %25 = ptrtoint ptr %iod_mempool to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %iod_mempool, align 8
  tail call void @mempool_destroy(ptr noundef %26) #16
  %dev5 = getelementptr i8, ptr %ctrl, i32 -224
  %27 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev5, align 8
  tail call void @put_device(ptr noundef %28) #16
  %29 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %add.ptr.i, align 8
  tail call void @kfree(ptr noundef %30) #16
  tail call void @kfree(ptr noundef %add.ptr.i) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvme_pci_submit_async_event(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ctrl, i32 -600
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %sq_lock = getelementptr inbounds %struct.nvme_queue, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %sq_lock) #16
  %sq_cmds.i = getelementptr inbounds %struct.nvme_queue, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %sq_cmds.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sq_cmds.i, align 16
  %sq_tail.i = getelementptr inbounds %struct.nvme_queue, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %sq_tail.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %sq_tail.i, align 2
  %conv.i = zext i16 %5 to i32
  %sqes.i = getelementptr inbounds %struct.nvme_queue, ptr %1, i32 0, i32 16
  %6 = ptrtoint ptr %sqes.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %sqes.i, align 1
  %conv1.i = zext i8 %7 to i32
  %shl.i = shl i32 %conv.i, %conv1.i
  %add.ptr.i5 = getelementptr i8, ptr %3, i32 %shl.i
  %8 = ptrtoint ptr %add.ptr.i5 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 12, ptr %add.ptr.i5, align 1
  %c.sroa.5.0.add.ptr.i5.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i5, i32 1
  %9 = ptrtoint ptr %c.sroa.5.0.add.ptr.i5.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %c.sroa.5.0.add.ptr.i5.sroa_idx, align 1
  %c.sroa.56.0.add.ptr.i5.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i5, i32 2
  %10 = ptrtoint ptr %c.sroa.56.0.add.ptr.i5.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 31, ptr %c.sroa.56.0.add.ptr.i5.sroa_idx, align 1
  %c.sroa.6.0.add.ptr.i5.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i5, i32 4
  %11 = call ptr @memset(ptr %c.sroa.6.0.add.ptr.i5.sroa_idx, i32 0, i32 60)
  %12 = load i16, ptr %sq_tail.i, align 2
  %inc.i = add i16 %12, 1
  %conv3.i = zext i16 %inc.i to i32
  %q_depth.i = getelementptr inbounds %struct.nvme_queue, ptr %1, i32 0, i32 9
  %13 = ptrtoint ptr %q_depth.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %q_depth.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %conv3.i)
  %cmp.i = icmp eq i32 %14, %conv3.i
  %spec.store.select.i = select i1 %cmp.i, i16 0, i16 %inc.i
  %15 = ptrtoint ptr %sq_tail.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %spec.store.select.i, ptr %sq_tail.i, align 2
  %dbbuf_sq_db.i = getelementptr inbounds %struct.nvme_queue, ptr %1, i32 0, i32 18
  %16 = ptrtoint ptr %dbbuf_sq_db.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dbbuf_sq_db.i, align 16
  %tobool.not.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i, label %entry.do.body.i_crit_edge, label %if.then.i.i

entry.do.body.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i

if.then.i.i:                                      ; preds = %entry
  %dbbuf_sq_ei.i = getelementptr inbounds %struct.nvme_queue, ptr %1, i32 0, i32 20
  %18 = ptrtoint ptr %dbbuf_sq_ei.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dbbuf_sq_ei.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !373
  tail call void @arm_heavy_mb() #16
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %17, align 4
  %conv.i.i = trunc i32 %21 to i16
  %conv1.i.i = zext i16 %spec.store.select.i to i32
  store i32 %conv1.i.i, ptr %17, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !374
  tail call void @arm_heavy_mb() #16
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %19, align 4
  %conv5.i.i = trunc i32 %23 to i16
  %24 = xor i16 %conv5.i.i, -1
  %sub2.i.i.i = add i16 %spec.store.select.i, %24
  %sub7.i.i.i = sub i16 %spec.store.select.i, %conv.i.i
  call void @__sanitizer_cov_trace_cmp2(i16 %sub2.i.i.i, i16 %sub7.i.i.i)
  %cmp.i.not.i.i = icmp ult i16 %sub2.i.i.i, %sub7.i.i.i
  br i1 %cmp.i.not.i.i, label %if.then.i.i.do.body.i_crit_edge, label %if.then.i.i.nvme_write_sq_db.exit_crit_edge

if.then.i.i.nvme_write_sq_db.exit_crit_edge:      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %nvme_write_sq_db.exit

if.then.i.i.do.body.i_crit_edge:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i

do.body.i:                                        ; preds = %if.then.i.i.do.body.i_crit_edge, %entry.do.body.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !384
  tail call void @arm_heavy_mb() #16
  %25 = ptrtoint ptr %sq_tail.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %sq_tail.i, align 2
  %conv15.i = zext i16 %26 to i32
  %27 = tail call i32 @llvm.bswap.i32(i32 %conv15.i) #16
  %q_db.i = getelementptr inbounds %struct.nvme_queue, ptr %1, i32 0, i32 8
  %28 = ptrtoint ptr %q_db.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %q_db.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %27) #16, !srcloc !357
  br label %nvme_write_sq_db.exit

nvme_write_sq_db.exit:                            ; preds = %do.body.i, %if.then.i.i.nvme_write_sq_db.exit_crit_edge
  %30 = ptrtoint ptr %sq_tail.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %sq_tail.i, align 2
  %last_sq_tail18.i = getelementptr inbounds %struct.nvme_queue, ptr %1, i32 0, i32 12
  %32 = ptrtoint ptr %last_sq_tail18.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %last_sq_tail18.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %sq_lock) #16
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvme_pci_get_address(ptr nocapture noundef readonly %ctrl, ptr nocapture noundef writeonly %buf, i32 noundef %size) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr i8, ptr %ctrl, i32 -224
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.end.i ], [ %3, %entry.dev_name.exit_crit_edge ]
  %call3 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef %size, ptr noundef nonnull @.str.119, ptr noundef %retval.0.i)
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_put_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @async_schedule_node(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @pci_device_is_present(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvme_stop_ctrl(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvme_uninit_ctrl(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nvme_wait_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvme_error_detected(ptr nocapture noundef readonly %pdev, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.130)
  switch i32 %state, label %sw.epilog [
    i32 1, label %entry.cleanup_crit_edge
    i32 2, label %do.end
    i32 3, label %do.end5
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %device = getelementptr inbounds %struct.nvme_dev, ptr %1, i32 0, i32 23, i32 17
  %3 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %device, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.120) #21
  tail call fastcc void @nvme_dev_disable(ptr noundef %1, i1 noundef zeroext false)
  br label %cleanup

do.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %device7 = getelementptr inbounds %struct.nvme_dev, ptr %1, i32 0, i32 23, i32 17
  %5 = ptrtoint ptr %device7 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %device7, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str.123) #21
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end5, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 3, %sw.epilog ], [ 4, %do.end5 ], [ 3, %do.end ], [ 2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvme_slot_reset(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %ctrl = getelementptr inbounds %struct.nvme_dev, ptr %1, i32 0, i32 23
  %device = getelementptr inbounds %struct.nvme_dev, ptr %1, i32 0, i32 23, i32 17
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.125) #21
  tail call void @pci_restore_state(ptr noundef %pdev) #16
  %call2 = tail call i32 @nvme_reset_ctrl(ptr noundef %ctrl) #16
  ret i32 5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvme_reset_prepare(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %ctrl.i = getelementptr inbounds %struct.nvme_dev, ptr %1, i32 0, i32 23
  %call.i = tail call zeroext i1 @nvme_wait_reset(ptr noundef %ctrl.i) #16
  br i1 %call.i, label %if.end.i, label %entry.nvme_disable_prepare_reset.exit_crit_edge

entry.nvme_disable_prepare_reset.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %nvme_disable_prepare_reset.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @nvme_dev_disable(ptr noundef %1, i1 noundef zeroext false) #16
  br label %nvme_disable_prepare_reset.exit

nvme_disable_prepare_reset.exit:                  ; preds = %if.end.i, %entry.nvme_disable_prepare_reset.exit_crit_edge
  tail call void @nvme_sync_queues(ptr noundef %ctrl.i) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvme_reset_done(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %ctrl = getelementptr inbounds %struct.nvme_dev, ptr %1, i32 0, i32 23
  %call1 = tail call i32 @nvme_try_sched_reset(ptr noundef %ctrl) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %reset_work = getelementptr inbounds %struct.nvme_dev, ptr %1, i32 0, i32 23, i32 20
  %call3 = tail call zeroext i1 @flush_work(ptr noundef %reset_work) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvme_error_resume(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %reset_work = getelementptr inbounds %struct.nvme_dev, ptr %1, i32 0, i32 23, i32 20
  %call1 = tail call zeroext i1 @flush_work(ptr noundef %reset_work) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_restore_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvme_try_sched_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvme_suspend(ptr noundef %dev) #2 align 64 {
entry:
  %c.i = alloca %struct.nvme_command, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -136
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %ctrl1 = getelementptr inbounds %struct.nvme_dev, ptr %1, i32 0, i32 23
  %last_ps = getelementptr inbounds %struct.nvme_dev, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %last_ps to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %last_ps, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pm_suspend_global_flags to i32))
  %3 = load i32, ptr @pm_suspend_global_flags, align 4
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %npss = getelementptr inbounds %struct.nvme_dev, ptr %1, i32 0, i32 23, i32 51
  %4 = ptrtoint ptr %npss to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %npss, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false3

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %call4 = tail call zeroext i1 @pcie_aspm_enabled(ptr noundef %add.ptr) #16
  br i1 %call4, label %lor.lhs.false5, label %lor.lhs.false3.if.then_crit_edge

lor.lhs.false3.if.then_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

lor.lhs.false5:                                   ; preds = %lor.lhs.false3
  %quirks = getelementptr inbounds %struct.nvme_dev, ptr %1, i32 0, i32 23, i32 61
  %6 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %quirks, align 8
  %and = and i32 %7, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end, label %lor.lhs.false5.if.then_crit_edge

lor.lhs.false5.if.then_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false5.if.then_crit_edge, %lor.lhs.false3.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %call.i = tail call zeroext i1 @nvme_wait_reset(ptr noundef %ctrl1) #16
  br i1 %call.i, label %if.end.i, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @nvme_dev_disable(ptr noundef %1, i1 noundef zeroext true) #16
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false5
  tail call void @nvme_start_freeze(ptr noundef %ctrl1) #16
  tail call void @nvme_wait_freeze(ptr noundef %ctrl1) #16
  tail call void @nvme_sync_queues(ptr noundef %ctrl1) #16
  %state = getelementptr inbounds %struct.nvme_dev, ptr %1, i32 0, i32 23, i32 1
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.not = icmp eq i32 %9, 1
  br i1 %cmp.not, label %if.end10, label %if.end.unfreeze_crit_edge

if.end.unfreeze_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %unfreeze

if.end10:                                         ; preds = %if.end
  %hmb = getelementptr inbounds %struct.nvme_dev, ptr %1, i32 0, i32 25
  %10 = ptrtoint ptr %hmb to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %hmb, align 4, !range !351
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool11.not = icmp eq i8 %11, 0
  br i1 %tobool11.not, label %if.end10.if.end17_crit_edge, label %if.then12

if.end10.if.end17_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end17

if.then12:                                        ; preds = %if.end10
  %host_mem_size1.i = getelementptr inbounds %struct.nvme_dev, ptr %1, i32 0, i32 31
  %12 = ptrtoint ptr %host_mem_size1.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %host_mem_size1.i, align 8
  %shr.i = lshr i64 %13, 12
  %conv.i = trunc i64 %shr.i to i32
  %host_mem_descs_dma.i = getelementptr inbounds %struct.nvme_dev, ptr %1, i32 0, i32 33
  %14 = ptrtoint ptr %host_mem_descs_dma.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %host_mem_descs_dma.i, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %c.i) #16
  %16 = call ptr @memset(ptr %c.i, i32 0, i32 40)
  %17 = ptrtoint ptr %c.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 9, ptr %c.i, align 8
  %fid.i = getelementptr inbounds %struct.nvme_features, ptr %c.i, i32 0, i32 6
  %18 = ptrtoint ptr %fid.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 218103808, ptr %fid.i, align 8
  %dword11.i = getelementptr inbounds %struct.nvme_features, ptr %c.i, i32 0, i32 7
  %19 = ptrtoint ptr %dword11.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %dword11.i, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #16
  %dword12.i = getelementptr inbounds %struct.nvme_features, ptr %c.i, i32 0, i32 8
  %21 = ptrtoint ptr %dword12.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %dword12.i, align 8
  %22 = tail call i32 @llvm.bswap.i32(i32 %15) #16
  %dword13.i = getelementptr inbounds %struct.nvme_features, ptr %c.i, i32 0, i32 9
  %23 = ptrtoint ptr %dword13.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %dword13.i, align 4
  %dword14.i = getelementptr inbounds %struct.nvme_features, ptr %c.i, i32 0, i32 10
  %24 = ptrtoint ptr %dword14.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %dword14.i, align 8
  %nr_host_mem_descs.i = getelementptr inbounds %struct.nvme_dev, ptr %1, i32 0, i32 32
  %25 = ptrtoint ptr %nr_host_mem_descs.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nr_host_mem_descs.i, align 8
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #16
  %dword15.i = getelementptr inbounds %struct.nvme_features, ptr %c.i, i32 0, i32 11
  %28 = ptrtoint ptr %dword15.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %dword15.i, align 4
  %admin_q.i = getelementptr inbounds %struct.nvme_dev, ptr %1, i32 0, i32 23, i32 6
  %29 = ptrtoint ptr %admin_q.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %admin_q.i, align 8
  %call.i62 = call i32 @nvme_submit_sync_cmd(ptr noundef %30, ptr noundef nonnull %c.i, ptr noundef null, i32 noundef 0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i62)
  %tobool.not.i = icmp eq i32 %call.i62, 0
  br i1 %tobool.not.i, label %nvme_set_host_mem.exit.thread, label %nvme_set_host_mem.exit

nvme_set_host_mem.exit.thread:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #18
  %31 = ptrtoint ptr %hmb to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %hmb, align 4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %c.i) #16
  br label %if.end17

nvme_set_host_mem.exit:                           ; preds = %if.then12
  %device.i = getelementptr inbounds %struct.nvme_dev, ptr %1, i32 0, i32 23, i32 17
  %32 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %device.i, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %33, ptr noundef nonnull @.str.93, i32 noundef %call.i62, i32 noundef 0) #21
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %c.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i62)
  %cmp14 = icmp slt i32 %call.i62, 0
  br i1 %cmp14, label %nvme_set_host_mem.exit.unfreeze_crit_edge, label %nvme_set_host_mem.exit.if.end17_crit_edge

nvme_set_host_mem.exit.if.end17_crit_edge:        ; preds = %nvme_set_host_mem.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end17

nvme_set_host_mem.exit.unfreeze_crit_edge:        ; preds = %nvme_set_host_mem.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %unfreeze

if.end17:                                         ; preds = %nvme_set_host_mem.exit.if.end17_crit_edge, %nvme_set_host_mem.exit.thread, %if.end10.if.end17_crit_edge
  %call.i64 = call i32 @nvme_get_features(ptr noundef %ctrl1, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef %last_ps) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i64)
  %cmp20 = icmp slt i32 %call.i64, 0
  br i1 %cmp20, label %if.end17.unfreeze_crit_edge, label %if.end22

if.end17.unfreeze_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #18
  br label %unfreeze

if.end22:                                         ; preds = %if.end17
  %call23 = call i32 @pci_save_state(ptr noundef %add.ptr) #16
  %34 = ptrtoint ptr %npss to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %npss, align 2
  %conv = zext i8 %35 to i32
  %call.i65 = call i32 @nvme_set_features(ptr noundef %ctrl1, i32 noundef 2, i32 noundef %conv, ptr noundef null, i32 noundef 0, ptr noundef null) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i65)
  %cmp26 = icmp slt i32 %call.i65, 0
  br i1 %cmp26, label %if.end22.unfreeze_crit_edge, label %if.end29

if.end22.unfreeze_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #18
  br label %unfreeze

if.end29:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i65)
  %tobool30.not = icmp eq i32 %call.i65, 0
  br i1 %tobool30.not, label %if.end29.unfreeze_crit_edge, label %if.then31

if.end29.unfreeze_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #18
  br label %unfreeze

if.then31:                                        ; preds = %if.end29
  %call32 = call i32 @pci_load_saved_state(ptr noundef %add.ptr, ptr noundef null) #16
  %call.i67 = call zeroext i1 @nvme_wait_reset(ptr noundef %ctrl1) #16
  br i1 %call.i67, label %if.end.i68, label %if.then31.nvme_disable_prepare_reset.exit70_crit_edge

if.then31.nvme_disable_prepare_reset.exit70_crit_edge: ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #18
  br label %nvme_disable_prepare_reset.exit70

if.end.i68:                                       ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #18
  call fastcc void @nvme_dev_disable(ptr noundef %1, i1 noundef zeroext true) #16
  br label %nvme_disable_prepare_reset.exit70

nvme_disable_prepare_reset.exit70:                ; preds = %if.end.i68, %if.then31.nvme_disable_prepare_reset.exit70_crit_edge
  %retval.0.i69 = phi i32 [ 0, %if.end.i68 ], [ -16, %if.then31.nvme_disable_prepare_reset.exit70_crit_edge ]
  %36 = ptrtoint ptr %npss to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %npss, align 2
  br label %unfreeze

unfreeze:                                         ; preds = %nvme_disable_prepare_reset.exit70, %if.end29.unfreeze_crit_edge, %if.end22.unfreeze_crit_edge, %if.end17.unfreeze_crit_edge, %nvme_set_host_mem.exit.unfreeze_crit_edge, %if.end.unfreeze_crit_edge
  %ret.0 = phi i32 [ -16, %if.end.unfreeze_crit_edge ], [ %call.i62, %nvme_set_host_mem.exit.unfreeze_crit_edge ], [ %call.i64, %if.end17.unfreeze_crit_edge ], [ %call.i65, %if.end22.unfreeze_crit_edge ], [ %retval.0.i69, %nvme_disable_prepare_reset.exit70 ], [ 0, %if.end29.unfreeze_crit_edge ]
  call void @nvme_unfreeze(ptr noundef %ctrl1) #16
  br label %cleanup

cleanup:                                          ; preds = %unfreeze, %if.end.i, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %unfreeze ], [ 0, %if.end.i ], [ -16, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvme_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %ctrl1 = getelementptr inbounds %struct.nvme_dev, ptr %1, i32 0, i32 23
  %last_ps = getelementptr inbounds %struct.nvme_dev, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %last_ps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %last_ps, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp = icmp eq i32 %3, -1
  br i1 %cmp, label %entry.reset_crit_edge, label %lor.lhs.false

entry.reset_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %reset

lor.lhs.false:                                    ; preds = %entry
  %call.i = tail call i32 @nvme_set_features(ptr noundef %ctrl1, i32 noundef 2, i32 noundef %3, ptr noundef null, i32 noundef 0, ptr noundef null) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp4.not = icmp eq i32 %call.i, 0
  br i1 %cmp4.not, label %if.end, label %lor.lhs.false.reset_crit_edge

lor.lhs.false.reset_crit_edge:                    ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %reset

if.end:                                           ; preds = %lor.lhs.false
  %hmpre = getelementptr inbounds %struct.nvme_dev, ptr %1, i32 0, i32 23, i32 83
  %4 = ptrtoint ptr %hmpre to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hmpre, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %land.lhs.true

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %call5 = tail call fastcc i32 @nvme_setup_host_mem(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.reset_crit_edge

land.lhs.true.reset_crit_edge:                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %reset

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

reset:                                            ; preds = %land.lhs.true.reset_crit_edge, %lor.lhs.false.reset_crit_edge, %entry.reset_crit_edge
  %call9 = tail call i32 @nvme_try_sched_reset(ptr noundef %ctrl1) #16
  br label %cleanup

cleanup:                                          ; preds = %reset, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %reset ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvme_simple_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %ctrl.i = getelementptr inbounds %struct.nvme_dev, ptr %1, i32 0, i32 23
  %call.i = tail call zeroext i1 @nvme_wait_reset(ptr noundef %ctrl.i) #16
  br i1 %call.i, label %if.end.i, label %entry.nvme_disable_prepare_reset.exit_crit_edge

entry.nvme_disable_prepare_reset.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %nvme_disable_prepare_reset.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @nvme_dev_disable(ptr noundef %1, i1 noundef zeroext true) #16
  br label %nvme_disable_prepare_reset.exit

nvme_disable_prepare_reset.exit:                  ; preds = %if.end.i, %entry.nvme_disable_prepare_reset.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ -16, %entry.nvme_disable_prepare_reset.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvme_simple_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %ctrl = getelementptr inbounds %struct.nvme_dev, ptr %1, i32 0, i32 23
  %call1 = tail call i32 @nvme_try_sched_reset(ptr noundef %ctrl) #16
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @pcie_aspm_enabled(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_load_saved_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvme_get_features(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvme_set_features(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #16

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #17 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 148)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #17 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 148)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind readonly }
attributes #10 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #12 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { nounwind }
attributes #17 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #18 = { nomerge }
attributes #19 = { nounwind allocsize(2) }
attributes #20 = { nounwind allocsize(0) }
attributes #21 = { cold nounwind }
attributes #22 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !11, !13, !15, !16, !18, !20, !22, !24, !26, !28, !30, !32, !33, !35, !37, !39, !40, !42, !43, !44, !45, !46, !48, !50, !52, !54, !56, !58, !59, !60, !62, !63, !65, !66, !68, !69, !71, !73, !74, !76, !77, !78, !80, !82, !84, !85, !87, !88, !90, !91, !93, !94, !95, !96, !97, !98, !99, !101, !103, !104, !105, !107, !108, !109, !110, !111, !113, !114, !115, !117, !118, !119, !121, !122, !123, !125, !126, !127, !129, !130, !131, !133, !134, !136, !138, !139, !140, !141, !143, !144, !145, !146, !147, !149, !150, !151, !152, !154, !155, !156, !157, !159, !160, !162, !163, !165, !167, !168, !169, !170, !172, !173, !174, !176, !177, !178, !180, !181, !182, !183, !185, !186, !188, !189, !191, !193, !195, !196, !197, !199, !200, !201, !202, !204, !205, !206, !207, !209, !210, !211, !212, !213, !215, !216, !217, !219, !220, !221, !223, !224, !225, !226, !228, !229, !230, !232, !233, !234, !235, !237, !238, !240, !241, !242, !243, !245, !246, !247, !249, !250, !251, !253, !254, !255, !256, !258, !259, !260, !261, !263, !264, !265, !266, !268, !270, !271, !272, !273, !275, !277, !278, !280, !282, !283, !285, !287, !288, !290, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !326, !327, !328, !330, !331, !332, !334, !335, !336, !337}
!llvm.named.register.sp = !{!339}
!llvm.module.flags = !{!340, !341, !342, !343, !344, !345, !346, !347}
!llvm.ident = !{!348}

!0 = !{ptr @__param_use_threaded_interrupts, !1, !"__param_use_threaded_interrupts", i1 false, i1 false}
!1 = !{!"../drivers/nvme/host/pci.c", i32 47, i32 1}
!2 = !{ptr @__UNIQUE_ID_use_threaded_interruptstype365, !1, !"__UNIQUE_ID_use_threaded_interruptstype365", i1 false, i1 false}
!3 = !{ptr @__param_use_cmb_sqes, !4, !"__param_use_cmb_sqes", i1 false, i1 false}
!4 = !{!"../drivers/nvme/host/pci.c", i32 50, i32 1}
!5 = !{ptr @__UNIQUE_ID_use_cmb_sqestype366, !4, !"__UNIQUE_ID_use_cmb_sqestype366", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_use_cmb_sqes367, !7, !"__UNIQUE_ID_use_cmb_sqes367", i1 false, i1 false}
!7 = !{!"../drivers/nvme/host/pci.c", i32 51, i32 1}
!8 = !{ptr @__param_max_host_mem_size_mb, !9, !"__param_max_host_mem_size_mb", i1 false, i1 false}
!9 = !{!"../drivers/nvme/host/pci.c", i32 54, i32 1}
!10 = !{ptr @__UNIQUE_ID_max_host_mem_size_mbtype368, !9, !"__UNIQUE_ID_max_host_mem_size_mbtype368", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_max_host_mem_size_mb369, !12, !"__UNIQUE_ID_max_host_mem_size_mb369", i1 false, i1 false}
!12 = !{!"../drivers/nvme/host/pci.c", i32 55, i32 1}
!13 = !{ptr @__param_sgl_threshold, !14, !"__param_sgl_threshold", i1 false, i1 false}
!14 = !{!"../drivers/nvme/host/pci.c", i32 59, i32 1}
!15 = !{ptr @__UNIQUE_ID_sgl_thresholdtype370, !14, !"__UNIQUE_ID_sgl_thresholdtype370", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_sgl_threshold371, !17, !"__UNIQUE_ID_sgl_threshold371", i1 false, i1 false}
!17 = !{!"../drivers/nvme/host/pci.c", i32 60, i32 1}
!18 = !{ptr @__param_io_queue_depth, !19, !"__param_io_queue_depth", i1 false, i1 false}
!19 = !{!"../drivers/nvme/host/pci.c", i32 73, i32 1}
!20 = !{ptr @__UNIQUE_ID_io_queue_depth372, !21, !"__UNIQUE_ID_io_queue_depth372", i1 false, i1 false}
!21 = !{!"../drivers/nvme/host/pci.c", i32 74, i32 1}
!22 = !{ptr @__param_write_queues, !23, !"__param_write_queues", i1 false, i1 false}
!23 = !{!"../drivers/nvme/host/pci.c", i32 93, i32 1}
!24 = !{ptr @__UNIQUE_ID_write_queues373, !25, !"__UNIQUE_ID_write_queues373", i1 false, i1 false}
!25 = !{!"../drivers/nvme/host/pci.c", i32 94, i32 1}
!26 = !{ptr @__param_poll_queues, !27, !"__param_poll_queues", i1 false, i1 false}
!27 = !{!"../drivers/nvme/host/pci.c", i32 99, i32 1}
!28 = !{ptr @__UNIQUE_ID_poll_queues374, !29, !"__UNIQUE_ID_poll_queues374", i1 false, i1 false}
!29 = !{!"../drivers/nvme/host/pci.c", i32 100, i32 1}
!30 = !{ptr @__param_noacpi, !31, !"__param_noacpi", i1 false, i1 false}
!31 = !{!"../drivers/nvme/host/pci.c", i32 103, i32 1}
!32 = !{ptr @__UNIQUE_ID_noacpitype375, !31, !"__UNIQUE_ID_noacpitype375", i1 false, i1 false}
!33 = !{ptr @__UNIQUE_ID_noacpi376, !34, !"__UNIQUE_ID_noacpi376", i1 false, i1 false}
!34 = !{!"../drivers/nvme/host/pci.c", i32 104, i32 1}
!35 = !{ptr @__UNIQUE_ID_author405, !36, !"__UNIQUE_ID_author405", i1 false, i1 false}
!36 = !{!"../drivers/nvme/host/pci.c", i32 3503, i32 1}
!37 = !{ptr @__UNIQUE_ID_file406, !38, !"__UNIQUE_ID_file406", i1 false, i1 false}
!38 = !{!"../drivers/nvme/host/pci.c", i32 3504, i32 1}
!39 = !{ptr @__UNIQUE_ID_license407, !38, !"__UNIQUE_ID_license407", i1 false, i1 false}
!40 = !{ptr @__UNIQUE_ID_version408, !41, !"__UNIQUE_ID_version408", i1 false, i1 false}
!41 = !{!"../drivers/nvme/host/pci.c", i32 3505, i32 1}
!42 = !{ptr @.str, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.1, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.2, !41, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @__modver_attr, !41, !"__modver_attr", i1 false, i1 false}
!46 = !{ptr @__initcall__kmod_nvme__409_3506_nvme_init6, !47, !"__initcall__kmod_nvme__409_3506_nvme_init6", i1 false, i1 false}
!47 = !{!"../drivers/nvme/host/pci.c", i32 3506, i32 1}
!48 = !{ptr @__exitcall_nvme_exit, !49, !"__exitcall_nvme_exit", i1 false, i1 false}
!49 = !{!"../drivers/nvme/host/pci.c", i32 3507, i32 1}
!50 = !{ptr @use_threaded_interrupts, !51, !"use_threaded_interrupts", i1 false, i1 false}
!51 = !{!"../drivers/nvme/host/pci.c", i32 46, i32 12}
!52 = !{ptr @write_queues, !53, !"write_queues", i1 false, i1 false}
!53 = !{!"../drivers/nvme/host/pci.c", i32 92, i32 21}
!54 = !{ptr @poll_queues, !55, !"poll_queues", i1 false, i1 false}
!55 = !{!"../drivers/nvme/host/pci.c", i32 98, i32 21}
!56 = !{ptr @noacpi, !57, !"noacpi", i1 false, i1 false}
!57 = !{!"../drivers/nvme/host/pci.c", i32 102, i32 13}
!58 = !{ptr @__param_str_use_threaded_interrupts, !1, !"__param_str_use_threaded_interrupts", i1 false, i1 false}
!59 = !{ptr @__param_str_use_cmb_sqes, !4, !"__param_str_use_cmb_sqes", i1 false, i1 false}
!60 = !{ptr @use_cmb_sqes, !61, !"use_cmb_sqes", i1 false, i1 false}
!61 = !{!"../drivers/nvme/host/pci.c", i32 49, i32 13}
!62 = !{ptr @__param_str_max_host_mem_size_mb, !9, !"__param_str_max_host_mem_size_mb", i1 false, i1 false}
!63 = !{ptr @max_host_mem_size_mb, !64, !"max_host_mem_size_mb", i1 false, i1 false}
!64 = !{!"../drivers/nvme/host/pci.c", i32 53, i32 21}
!65 = !{ptr @__param_str_sgl_threshold, !14, !"__param_str_sgl_threshold", i1 false, i1 false}
!66 = !{ptr @sgl_threshold, !67, !"sgl_threshold", i1 false, i1 false}
!67 = !{!"../drivers/nvme/host/pci.c", i32 58, i32 21}
!68 = !{ptr @__param_str_io_queue_depth, !19, !"__param_str_io_queue_depth", i1 false, i1 false}
!69 = !{ptr @io_queue_depth_ops, !70, !"io_queue_depth_ops", i1 false, i1 false}
!70 = !{!"../drivers/nvme/host/pci.c", i32 67, i32 38}
!71 = !{ptr @io_queue_depth, !72, !"io_queue_depth", i1 false, i1 false}
!72 = !{!"../drivers/nvme/host/pci.c", i32 72, i32 21}
!73 = !{ptr @__param_str_write_queues, !23, !"__param_str_write_queues", i1 false, i1 false}
!74 = !{ptr @io_queue_count_ops, !75, !"io_queue_count_ops", i1 false, i1 false}
!75 = !{!"../drivers/nvme/host/pci.c", i32 87, i32 38}
!76 = !{ptr @__param_str_poll_queues, !27, !"__param_str_poll_queues", i1 false, i1 false}
!77 = !{ptr @__param_str_noacpi, !31, !"__param_str_noacpi", i1 false, i1 false}
!78 = !{ptr @nvme_driver, !79, !"nvme_driver", i1 false, i1 false}
!79 = !{!"../drivers/nvme/host/pci.c", i32 3472, i32 26}
!80 = !{ptr @nvme_id_table, !81, !"nvme_id_table", i1 false, i1 false}
!81 = !{!"../drivers/nvme/host/pci.c", i32 3385, i32 35}
!82 = !{ptr @nvme_probe.__key, !83, !"__key", i1 false, i1 false}
!83 = !{!"../drivers/nvme/host/pci.c", i32 3079, i32 2}
!84 = !{ptr @.str.3, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @nvme_probe.__key.4, !86, !"__key", i1 false, i1 false}
!86 = !{!"../drivers/nvme/host/pci.c", i32 3080, i32 2}
!87 = !{ptr @.str.5, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @nvme_probe.__key.6, !89, !"__key", i1 false, i1 false}
!89 = !{!"../drivers/nvme/host/pci.c", i32 3081, i32 2}
!90 = !{ptr @.str.7, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.8, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/nvme/host/pci.c", i32 3094, i32 3}
!93 = !{ptr @.str.9, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.10, !92, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.11, !92, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.12, !92, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @nvme_probe._entry, !92, !"_entry", i1 false, i1 false}
!98 = !{ptr @nvme_probe._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!99 = distinct !{null, !100, !"__already_done", i1 false, i1 false}
!100 = !{!"../drivers/nvme/host/pci.c", i32 3104, i32 2}
!101 = !{ptr @.str.14, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/nvme/host/pci.c", i32 3120, i32 2}
!103 = !{ptr @nvme_probe._entry.13, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @nvme_probe._entry_ptr.15, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.16, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/nvme/host/pci.c", i32 2798, i32 3}
!107 = !{ptr @.str.17, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @.str.18, !106, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @nvme_reset_work._entry, !106, !"_entry", i1 false, i1 false}
!110 = !{ptr @nvme_reset_work._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.20, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/nvme/host/pci.c", i32 2846, i32 3}
!113 = !{ptr @nvme_reset_work._entry.19, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @nvme_reset_work._entry_ptr.21, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.23, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/nvme/host/pci.c", i32 2876, i32 4}
!117 = !{ptr @nvme_reset_work._entry.22, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @nvme_reset_work._entry_ptr.24, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.26, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/nvme/host/pci.c", i32 2895, i32 3}
!121 = !{ptr @nvme_reset_work._entry.25, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @nvme_reset_work._entry_ptr.27, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.29, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/nvme/host/pci.c", i32 2911, i32 3}
!125 = !{ptr @nvme_reset_work._entry.28, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @nvme_reset_work._entry_ptr.30, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.32, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/nvme/host/pci.c", i32 2928, i32 3}
!129 = !{ptr @nvme_reset_work._entry.31, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @nvme_reset_work._entry_ptr.33, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @init_completion.__key, !132, !"__key", i1 false, i1 false}
!132 = !{!"../include/linux/completion.h", i32 87, i32 2}
!133 = !{ptr @.str.34, !132, !"<string literal>", i1 false, i1 false}
!134 = distinct !{null, !135, !"__already_done", i1 false, i1 false}
!135 = !{!"../drivers/nvme/host/pci.c", i32 1174, i32 2}
!136 = !{ptr @.str.35, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/nvme/host/pci.c", i32 1098, i32 3}
!138 = !{ptr @.str.36, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @nvme_handle_cqe._entry, !137, !"_entry", i1 false, i1 false}
!140 = !{ptr @nvme_handle_cqe._entry_ptr, !137, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.37, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/nvme/host/nvme.h", i32 523, i32 3}
!143 = !{ptr @.str.38, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @.str.39, !142, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @nvme_find_rq._entry, !142, !"_entry", i1 false, i1 false}
!146 = !{ptr @nvme_find_rq._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.41, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/nvme/host/nvme.h", i32 528, i32 3}
!149 = !{ptr @.str.42, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @nvme_find_rq._entry.40, !148, !"_entry", i1 false, i1 false}
!151 = !{ptr @nvme_find_rq._entry_ptr.43, !148, !"_entry_ptr", i1 false, i1 false}
!152 = distinct !{null, !153, !"__already_done", i1 false, i1 false}
!153 = !{!"../drivers/nvme/host/trace.h", i32 144, i32 1}
!154 = !{ptr @.str.44, !153, !"<string literal>", i1 false, i1 false}
!155 = distinct !{null, !153, !"__warned", i1 false, i1 false}
!156 = !{ptr @.str.45, !153, !"<string literal>", i1 false, i1 false}
!157 = distinct !{null, !158, !"__already_done", i1 false, i1 false}
!158 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!159 = !{ptr @.str.46, !158, !"<string literal>", i1 false, i1 false}
!160 = distinct !{null, !161, !"__already_done", i1 false, i1 false}
!161 = !{!"../include/linux/blk-integrity.h", i32 112, i32 6}
!162 = !{ptr @.str.47, !161, !"<string literal>", i1 false, i1 false}
!163 = distinct !{null, !164, !"__already_done", i1 false, i1 false}
!164 = !{!"../drivers/nvme/host/pci.c", i32 598, i32 2}
!165 = !{ptr @.str.48, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/nvme/host/pci.c", i32 2615, i32 3}
!167 = !{ptr @.str.49, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @nvme_pci_enable._entry, !166, !"_entry", i1 false, i1 false}
!169 = !{ptr @nvme_pci_enable._entry_ptr, !166, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.51, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/nvme/host/pci.c", i32 2622, i32 3}
!172 = !{ptr @nvme_pci_enable._entry.50, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @nvme_pci_enable._entry_ptr.52, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.54, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/nvme/host/pci.c", i32 2633, i32 3}
!176 = !{ptr @nvme_pci_enable._entry.53, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @nvme_pci_enable._entry_ptr.55, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.56, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/nvme/host/pci.c", i32 1959, i32 3}
!180 = !{ptr @.str.57, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @nvme_map_cmb._entry, !179, !"_entry", i1 false, i1 false}
!182 = !{ptr @nvme_map_cmb._entry_ptr, !179, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @nvme_alloc_queue.__key, !184, !"__key", i1 false, i1 false}
!184 = !{!"../drivers/nvme/host/pci.c", i32 1601, i32 2}
!185 = !{ptr @.str.58, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @nvme_alloc_queue.__key.59, !187, !"__key", i1 false, i1 false}
!187 = !{!"../drivers/nvme/host/pci.c", i32 1602, i32 2}
!188 = !{ptr @.str.60, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @.str.61, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/nvme/host/pci.c", i32 1625, i32 22}
!191 = !{ptr @nvme_mq_admin_ops, !192, !"nvme_mq_admin_ops", i1 false, i1 false}
!192 = !{!"../drivers/nvme/host/pci.c", i32 1721, i32 32}
!193 = !{ptr @nvme_pci_setup_prps.___done, !194, !"___done", i1 false, i1 false}
!194 = !{!"../drivers/nvme/host/pci.c", i32 711, i32 2}
!195 = !{ptr @nvme_pci_setup_prps.___once_key, !194, !"___once_key", i1 false, i1 false}
!196 = !{ptr @.str.62, !194, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @.str.63, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/nvme/host/pci.c", i32 618, i32 3}
!199 = !{ptr @.str.64, !198, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @nvme_print_sgl._entry, !198, !"_entry", i1 false, i1 false}
!201 = !{ptr @nvme_print_sgl._entry_ptr, !198, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.65, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/nvme/host/pci.c", i32 1372, i32 3}
!204 = !{ptr @.str.66, !203, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @nvme_timeout._entry, !203, !"_entry", i1 false, i1 false}
!206 = !{ptr @nvme_timeout._entry_ptr, !203, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.67, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/nvme/host/pci.c", i32 1389, i32 3}
!209 = !{ptr @nvme_timeout._rs, !208, !"_rs", i1 false, i1 false}
!210 = !{ptr @.str.69, !208, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @nvme_timeout._entry.68, !208, !"_entry", i1 false, i1 false}
!212 = !{ptr @nvme_timeout._entry_ptr.70, !208, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.72, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/nvme/host/pci.c", i32 1407, i32 3}
!215 = !{ptr @nvme_timeout._entry.71, !214, !"_entry", i1 false, i1 false}
!216 = !{ptr @nvme_timeout._entry_ptr.73, !214, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @.str.75, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/nvme/host/pci.c", i32 1427, i32 2}
!219 = !{ptr @nvme_timeout._entry.74, !218, !"_entry", i1 false, i1 false}
!220 = !{ptr @nvme_timeout._entry_ptr.76, !218, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.77, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/nvme/host/pci.c", i32 1328, i32 3}
!223 = !{ptr @.str.78, !222, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @nvme_warn_reset._entry, !222, !"_entry", i1 false, i1 false}
!225 = !{ptr @nvme_warn_reset._entry_ptr, !222, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.80, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/nvme/host/pci.c", i32 1332, i32 3}
!228 = !{ptr @nvme_warn_reset._entry.79, !227, !"_entry", i1 false, i1 false}
!229 = !{ptr @nvme_warn_reset._entry_ptr.81, !227, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @.str.82, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/nvme/host/pci.c", i32 1288, i32 2}
!232 = !{ptr @.str.83, !231, !"<string literal>", i1 false, i1 false}
!233 = !{ptr @abort_endio._entry, !231, !"_entry", i1 false, i1 false}
!234 = !{ptr @abort_endio._entry_ptr, !231, !"_entry_ptr", i1 false, i1 false}
!235 = distinct !{null, !236, !"__already_done", i1 false, i1 false}
!236 = !{!"../include/linux/dma-mapping.h", i32 535, i32 6}
!237 = !{ptr @.str.84, !236, !"<string literal>", i1 false, i1 false}
!238 = !{ptr @.str.85, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/nvme/host/pci.c", i32 2116, i32 3}
!240 = !{ptr @.str.86, !239, !"<string literal>", i1 false, i1 false}
!241 = !{ptr @nvme_setup_host_mem._entry, !239, !"_entry", i1 false, i1 false}
!242 = !{ptr @nvme_setup_host_mem._entry_ptr, !239, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @.str.88, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/nvme/host/pci.c", i32 2135, i32 4}
!245 = !{ptr @nvme_setup_host_mem._entry.87, !244, !"_entry", i1 false, i1 false}
!246 = !{ptr @nvme_setup_host_mem._entry_ptr.89, !244, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @.str.91, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/nvme/host/pci.c", i32 2140, i32 3}
!249 = !{ptr @nvme_setup_host_mem._entry.90, !248, !"_entry", i1 false, i1 false}
!250 = !{ptr @nvme_setup_host_mem._entry_ptr.92, !248, !"_entry_ptr", i1 false, i1 false}
!251 = !{ptr @.str.93, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/nvme/host/pci.c", i32 1989, i32 3}
!253 = !{ptr @.str.94, !252, !"<string literal>", i1 false, i1 false}
!254 = !{ptr @nvme_set_host_mem._entry, !252, !"_entry", i1 false, i1 false}
!255 = !{ptr @nvme_set_host_mem._entry_ptr, !252, !"_entry_ptr", i1 false, i1 false}
!256 = !{ptr @.str.95, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/nvme/host/pci.c", i32 2441, i32 2}
!258 = !{ptr @.str.96, !257, !"<string literal>", i1 false, i1 false}
!259 = !{ptr @nvme_setup_io_queues._entry, !257, !"_entry", i1 false, i1 false}
!260 = !{ptr @nvme_setup_io_queues._entry_ptr, !257, !"_entry_ptr", i1 false, i1 false}
!261 = !{ptr @.str.97, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/nvme/host/pci.c", i32 2546, i32 4}
!263 = !{ptr @.str.98, !262, !"<string literal>", i1 false, i1 false}
!264 = !{ptr @nvme_dev_add._entry, !262, !"_entry", i1 false, i1 false}
!265 = !{ptr @nvme_dev_add._entry_ptr, !262, !"_entry_ptr", i1 false, i1 false}
!266 = !{ptr @nvme_mq_ops, !267, !"nvme_mq_ops", i1 false, i1 false}
!267 = !{!"../drivers/nvme/host/pci.c", i32 1729, i32 32}
!268 = !{ptr @.str.99, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/nvme/host/pci.c", i32 328, i32 3}
!270 = !{ptr @.str.100, !269, !"<string literal>", i1 false, i1 false}
!271 = !{ptr @nvme_dbbuf_set._entry, !269, !"_entry", i1 false, i1 false}
!272 = !{ptr @nvme_dbbuf_set._entry_ptr, !269, !"_entry_ptr", i1 false, i1 false}
!273 = !{ptr @nvme_pci_attr_group, !274, !"nvme_pci_attr_group", i1 false, i1 false}
!274 = !{!"../drivers/nvme/host/pci.c", i32 2242, i32 37}
!275 = !{ptr @.str.101, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/nvme/host/pci.c", i32 2159, i32 8}
!277 = !{ptr @dev_attr_cmb, !276, !"dev_attr_cmb", i1 false, i1 false}
!278 = !{ptr @.str.102, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/nvme/host/pci.c", i32 2156, i32 25}
!280 = !{ptr @.str.103, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/nvme/host/pci.c", i32 2168, i32 8}
!282 = !{ptr @dev_attr_cmbloc, !281, !"dev_attr_cmbloc", i1 false, i1 false}
!283 = !{ptr @.str.104, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/nvme/host/pci.c", i32 2166, i32 25}
!285 = !{ptr @.str.105, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/nvme/host/pci.c", i32 2177, i32 8}
!287 = !{ptr @dev_attr_cmbsz, !286, !"dev_attr_cmbsz", i1 false, i1 false}
!288 = !{ptr @.str.106, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/nvme/host/pci.c", i32 2213, i32 8}
!290 = !{ptr @dev_attr_hmb, !289, !"dev_attr_hmb", i1 false, i1 false}
!291 = !{ptr @.str.107, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/nvme/host/pci.c", i32 2184, i32 25}
!293 = !{ptr @nvme_pci_attrs, !294, !"nvme_pci_attrs", i1 false, i1 false}
!294 = !{!"../drivers/nvme/host/pci.c", i32 2234, i32 26}
!295 = !{ptr @.str.108, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/nvme/host/pci.c", i32 2732, i32 39}
!297 = !{ptr @.str.109, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/nvme/host/pci.c", i32 2739, i32 40}
!299 = distinct !{null, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/nvme/host/pci.c", i32 3008, i32 33}
!301 = distinct !{null, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/nvme/host/pci.c", i32 3009, i32 36}
!303 = distinct !{null, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/nvme/host/pci.c", i32 3010, i32 36}
!305 = distinct !{null, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/nvme/host/pci.c", i32 3019, i32 35}
!307 = distinct !{null, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/nvme/host/pci.c", i32 3020, i32 34}
!309 = distinct !{null, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/nvme/host/pci.c", i32 3021, i32 34}
!311 = distinct !{null, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/nvme/host/pci.c", i32 3032, i32 36}
!313 = distinct !{null, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/nvme/host/pci.c", i32 3033, i32 34}
!315 = !{ptr @.str.118, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/nvme/host/pci.c", i32 2969, i32 12}
!317 = !{ptr @nvme_pci_ctrl_ops, !318, !"nvme_pci_ctrl_ops", i1 false, i1 false}
!318 = !{!"../drivers/nvme/host/pci.c", i32 2968, i32 35}
!319 = !{ptr @.str.119, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/nvme/host/pci.c", i32 2965, i32 29}
!321 = !{ptr @nvme_err_handler, !322, !"nvme_err_handler", i1 false, i1 false}
!322 = !{!"../drivers/nvme/host/pci.c", i32 3377, i32 40}
!323 = !{ptr @.str.120, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/nvme/host/pci.c", i32 3348, i32 3}
!325 = !{ptr @.str.121, !324, !"<string literal>", i1 false, i1 false}
!326 = !{ptr @nvme_error_detected._entry, !324, !"_entry", i1 false, i1 false}
!327 = !{ptr @nvme_error_detected._entry_ptr, !324, !"_entry_ptr", i1 false, i1 false}
!328 = !{ptr @.str.123, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/nvme/host/pci.c", i32 3353, i32 3}
!330 = !{ptr @nvme_error_detected._entry.122, !329, !"_entry", i1 false, i1 false}
!331 = !{ptr @nvme_error_detected._entry_ptr.124, !329, !"_entry_ptr", i1 false, i1 false}
!332 = !{ptr @.str.125, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/nvme/host/pci.c", i32 3364, i32 2}
!334 = !{ptr @.str.126, !333, !"<string literal>", i1 false, i1 false}
!335 = !{ptr @nvme_slot_reset._entry, !333, !"_entry", i1 false, i1 false}
!336 = !{ptr @nvme_slot_reset._entry_ptr, !333, !"_entry_ptr", i1 false, i1 false}
!337 = !{ptr @nvme_dev_pm_ops, !338, !"nvme_dev_pm_ops", i1 false, i1 false}
!338 = !{!"../drivers/nvme/host/pci.c", i32 3324, i32 32}
!339 = !{!"sp"}
!340 = !{i32 1, !"wchar_size", i32 2}
!341 = !{i32 1, !"min_enum_size", i32 4}
!342 = !{i32 8, !"branch-target-enforcement", i32 0}
!343 = !{i32 8, !"sign-return-address", i32 0}
!344 = !{i32 8, !"sign-return-address-all", i32 0}
!345 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!346 = !{i32 7, !"uwtable", i32 1}
!347 = !{i32 7, !"frame-pointer", i32 2}
!348 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!349 = !{!"auto-init"}
!350 = !{!"branch_weights", i32 1, i32 2000}
!351 = !{i8 0, i8 2}
!352 = !{i64 7112643}
!353 = !{i64 2157114794}
!354 = !{i64 2156126417}
!355 = !{i64 2156126855}
!356 = !{i64 2157071895}
!357 = !{i64 7112225}
!358 = !{i64 2157072633}
!359 = !{i64 2157073155}
!360 = !{i64 2157067201}
!361 = !{i64 2157067805}
!362 = !{i64 2157068038}
!363 = !{i64 2157068479}
!364 = !{i64 2156127225}
!365 = !{i64 2156127598}
!366 = !{i64 2157064636}
!367 = !{!"branch_weights", i32 2000, i32 1}
!368 = !{i64 2149063991, i64 2149064271, i64 2149064605, i64 2149064939}
!369 = !{i64 2157127104}
!370 = !{i64 2157059072}
!371 = !{i64 2157036210}
!372 = !{i64 892003}
!373 = !{i64 2156997010}
!374 = !{i64 2156997153}
!375 = !{i64 2157030292}
!376 = !{i64 2149038804, i64 2149038809, i64 2149038822, i64 2149038866, i64 2149038900, i64 2149038921}
!377 = !{i64 2156950679}
!378 = !{i64 2156950898}
!379 = !{i64 2150190308}
!380 = !{i64 2150191344}
!381 = !{i64 2155012806, i64 2155013298, i64 2155012843, i64 2155012899, i64 2155012933, i64 2155012957, i64 2155012998, i64 2155013019, i64 2155013047, i64 2155013081}
!382 = !{i64 2156134860}
!383 = !{i64 2156135245}
!384 = !{i64 2157009779}
!385 = !{i64 2157047340}
!386 = !{i64 2157047483}
!387 = !{i64 2148482976}
!388 = !{i64 2148397697, i64 2148397729, i64 2148397758, i64 2148397792, i64 2148397823, i64 2148397846}
!389 = !{i64 2148483205}
!390 = !{i64 2148394512, i64 2148394538, i64 2148394567, i64 2148394601, i64 2148394632, i64 2148394655}
!391 = !{i64 2157005319, i64 2157005807, i64 2157005356, i64 2157005412, i64 2157005446, i64 2157005470, i64 2157005511, i64 2157005532, i64 2157005560, i64 2157005594}
!392 = !{!393}
!393 = distinct !{!393, !394, !"req_bvec: %agg.result"}
!394 = distinct !{!394, !"req_bvec"}
!395 = !{i64 2149039207, i64 2149039212, i64 2149039233, i64 2149039277, i64 2149039311, i64 2149039332}
!396 = !{i64 2157006931, i64 2157007419, i64 2157006968, i64 2157007024, i64 2157007058, i64 2157007082, i64 2157007123, i64 2157007144, i64 2157007172, i64 2157007206}
!397 = distinct !{!397, !398}
!398 = !{!"llvm.loop.peeled.count", i32 1}
!399 = !{i64 2157147921}
!400 = !{i64 2157148146}
