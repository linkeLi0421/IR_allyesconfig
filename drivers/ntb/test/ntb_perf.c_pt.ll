; ModuleID = '/llk/IR_all_yes/drivers/ntb/test/ntb_perf.c_pt.bc'
source_filename = "../drivers/ntb/test/ntb_perf.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.68 }
%union.anon.68 = type { ptr }
%struct.ntb_client = type { %struct.device_driver, %struct.ntb_client_ops }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ntb_client_ops = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ntb_ctx_ops = type { ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ntb_dev = type { %struct.device, ptr, i32, ptr, ptr, ptr, %struct.spinlock, %struct.completion, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ntb_dev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.perf_ctx = type { ptr, i32, i32, ptr, i32, %struct.wait_queue_head, %struct.atomic_t, i8, ptr, [32 x %struct.perf_thread], ptr, ptr, ptr }
%struct.perf_thread = type { ptr, i32, %struct.atomic_t, %struct.wait_queue_head, ptr, ptr, i64, i64, i32, %struct.work_struct }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.74, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.74 = type { ptr }
%struct.perf_peer = type { ptr, i32, i32, i64, i32, ptr, i32, i32, i32, i32, ptr, %struct.work_struct, i32, %struct.completion }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dmaengine_unmap_data = type { i16, i8, i8, i8, ptr, %struct.kref, i32, [0 x i32] }
%struct.page = type { i32, %union.anon.2, %union.anon.66, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.66 = type { %struct.atomic_t }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@__UNIQUE_ID_file238 = internal constant [40 x i8] c"ntb_perf.file=drivers/ntb/test/ntb_perf\00", section ".modinfo", align 1
@__UNIQUE_ID_license239 = internal constant [30 x i8] c"ntb_perf.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version240 = internal constant [21 x i8] c"ntb_perf.version=2.0\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ntb_perf\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"2.0\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_author241 = internal constant [50 x i8] c"ntb_perf.author=Dave Jiang <dave.jiang@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description242 = internal constant [59 x i8] c"ntb_perf.description=PCIe NTB Performance Measurement Tool\00", section ".modinfo", align 1
@__param_str_max_mw_size = internal constant [21 x i8] c"ntb_perf.max_mw_size\00", align 1
@param_ops_ulong = external dso_local constant %struct.kernel_param_ops, align 4
@max_mw_size = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_max_mw_size = internal constant %struct.kernel_param { ptr @__param_str_max_mw_size, ptr null, ptr @param_ops_ulong, i16 420, i8 -1, i8 0, %union.anon.68 { ptr @max_mw_size } }, section "__param", align 4
@__UNIQUE_ID_max_mw_sizetype243 = internal constant [36 x i8] c"ntb_perf.parmtype=max_mw_size:ulong\00", section ".modinfo", align 1
@__UNIQUE_ID_max_mw_size244 = internal constant [60 x i8] c"ntb_perf.parm=max_mw_size:Upper limit of memory window size\00", section ".modinfo", align 1
@__param_str_chunk_order = internal constant [21 x i8] c"ntb_perf.chunk_order\00", align 1
@param_ops_byte = external dso_local constant %struct.kernel_param_ops, align 4
@chunk_order = internal global { i8, [31 x i8] } { i8 19, [31 x i8] zeroinitializer }, align 32
@__param_chunk_order = internal constant %struct.kernel_param { ptr @__param_str_chunk_order, ptr null, ptr @param_ops_byte, i16 420, i8 -1, i8 0, %union.anon.68 { ptr @chunk_order } }, section "__param", align 4
@__UNIQUE_ID_chunk_ordertype245 = internal constant [35 x i8] c"ntb_perf.parmtype=chunk_order:byte\00", section ".modinfo", align 1
@__UNIQUE_ID_chunk_order246 = internal constant [61 x i8] c"ntb_perf.parm=chunk_order:Data chunk order [2^n] to transfer\00", section ".modinfo", align 1
@__param_str_total_order = internal constant [21 x i8] c"ntb_perf.total_order\00", align 1
@total_order = internal global { i8, [31 x i8] } { i8 30, [31 x i8] zeroinitializer }, align 32
@__param_total_order = internal constant %struct.kernel_param { ptr @__param_str_total_order, ptr null, ptr @param_ops_byte, i16 420, i8 -1, i8 0, %union.anon.68 { ptr @total_order } }, section "__param", align 4
@__UNIQUE_ID_total_ordertype247 = internal constant [35 x i8] c"ntb_perf.parmtype=total_order:byte\00", section ".modinfo", align 1
@__UNIQUE_ID_total_order248 = internal constant [61 x i8] c"ntb_perf.parm=total_order:Total data order [2^n] to transfer\00", section ".modinfo", align 1
@__param_str_use_dma = internal constant [17 x i8] c"ntb_perf.use_dma\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@use_dma = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_use_dma = internal constant %struct.kernel_param { ptr @__param_str_use_dma, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.68 { ptr @use_dma } }, section "__param", align 4
@__UNIQUE_ID_use_dmatype249 = internal constant [31 x i8] c"ntb_perf.parmtype=use_dma:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_use_dma250 = internal constant [60 x i8] c"ntb_perf.parm=use_dma:Use DMA engine to measure performance\00", section ".modinfo", align 1
@__initcall__kmod_ntb_perf__274_1559_perf_init6 = internal global ptr @perf_init, section ".initcall6.init", align 4
@perf_client = internal global { %struct.ntb_client, [44 x i8] } { %struct.ntb_client { %struct.device_driver zeroinitializer, %struct.ntb_client_ops { ptr @perf_probe, ptr @perf_remove } }, [44 x i8] zeroinitializer }, align 32
@perf_dbgfs_topdir = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@perf_wq = internal unnamed_addr global ptr null, section ".data..read_mostly", align 4
@__exitcall_perf_exit = internal global ptr @perf_exit, section ".exitcall.exit", align 4
@perf_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 1536, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016Chunk order reduced to %hhu\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"perf_init\00", [22 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/ntb/test/ntb_perf.c\00", [36 x i8] zeroinitializer }, align 32
@perf_init._entry_ptr = internal global ptr @perf_init._entry, section ".printk_index", align 4
@perf_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.4, ptr @.str.5, i32 1541, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016Total data order reduced to %hhu\0A\00", [60 x i8] zeroinitializer }, align 32
@perf_init._entry_ptr.8 = internal global ptr @perf_init._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"perf_wq\00", [24 x i8] zeroinitializer }, align 32
@perf_init_peers.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(work_completion)(&peer->service)\00", [62 x i8] zeroinitializer }, align 32
@perf_init_peers.__UNIQUE_ID_ddebug273 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.11, ptr @.str.5, ptr @.str.12, i8 1, i8 113, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"perf_init_peers\00", [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Global port index %d\0A\00", [42 x i8] zeroinitializer }, align 32
@perf_service_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.5, i32 650, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Freeing while test on-fly\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"perf_service_work\00", [46 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@perf_service_work._entry_ptr = internal global ptr @perf_service_work._entry, section ".printk_index", align 4
@perf_cmd_send._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.5, i32 428, ptr @.str.19, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Send invalid command\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"perf_cmd_send\00", [18 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@perf_cmd_send._entry_ptr = internal global ptr @perf_cmd_send._entry, section ".printk_index", align 4
@perf_setup_inbuf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.5, i32 578, ptr @.str.19, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Couldn't get inbuf restrictions\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"perf_setup_inbuf\00", [47 x i8] zeroinitializer }, align 32
@perf_setup_inbuf._entry_ptr = internal global ptr @perf_setup_inbuf._entry, section ".printk_index", align 4
@perf_setup_inbuf._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.5, i32 584, ptr @.str.19, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Too big inbuf size %pa > %pa\0A\00", [34 x i8] zeroinitializer }, align 32
@perf_setup_inbuf._entry_ptr.24 = internal global ptr @perf_setup_inbuf._entry.22, section ".printk_index", align 4
@perf_setup_inbuf._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.21, ptr @.str.5, i32 597, ptr @.str.19, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to alloc inbuf of %pa\0A\00", [34 x i8] zeroinitializer }, align 32
@perf_setup_inbuf._entry_ptr.27 = internal global ptr @perf_setup_inbuf._entry.25, section ".printk_index", align 4
@perf_setup_inbuf._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.21, ptr @.str.5, i32 602, ptr @.str.19, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Unaligned inbuf allocated\0A\00", [37 x i8] zeroinitializer }, align 32
@perf_setup_inbuf._entry_ptr.30 = internal global ptr @perf_setup_inbuf._entry.28, section ".printk_index", align 4
@perf_setup_inbuf._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.21, ptr @.str.5, i32 609, ptr @.str.19, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to set inbuf translation\0A\00", [63 x i8] zeroinitializer }, align 32
@perf_setup_inbuf._entry_ptr.33 = internal global ptr @perf_setup_inbuf._entry.31, section ".printk_index", align 4
@perf_cmd_exec._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.5, i32 442, ptr @.str.19, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Exec invalid command\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"perf_cmd_exec\00", [18 x i8] zeroinitializer }, align 32
@perf_cmd_exec._entry_ptr = internal global ptr @perf_cmd_exec._entry, section ".printk_index", align 4
@perf_cmd_exec.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.35, ptr @.str.5, ptr @.str.36, i8 0, i8 112, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"CMD exec: %d\0A\00", [18 x i8] zeroinitializer }, align 32
@system_highpri_wq = external dso_local local_unnamed_addr global ptr, align 4
@perf_setup_outbuf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.5, i32 546, ptr @.str.19, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to set outbuf translation\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"perf_setup_outbuf\00", [46 x i8] zeroinitializer }, align 32
@perf_setup_outbuf._entry_ptr = internal global ptr @perf_setup_outbuf._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.39 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@perf_setup_peer_mw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.5, i32 1432, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Peer %d outbuf reduced to %pa\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"perf_setup_peer_mw\00", [45 x i8] zeroinitializer }, align 32
@perf_setup_peer_mw._entry_ptr = internal global ptr @perf_setup_peer_mw._entry, section ".printk_index", align 4
@perf_init_threads.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.42 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&perf->twait\00", [19 x i8] zeroinitializer }, align 32
@perf_init_threads.__key.43 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.44 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&pthr->dma_wait\00", [16 x i8] zeroinitializer }, align 32
@perf_init_threads.__key.45 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.46 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"(work_completion)(&pthr->work)\00", [33 x i8] zeroinitializer }, align 32
@perf_init_test._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.5, i32 892, ptr @.str.19, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%d: Failed to get DMA channel\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"perf_init_test\00", [17 x i8] zeroinitializer }, align 32
@perf_init_test._entry_ptr = internal global ptr @perf_init_test._entry, section ".printk_index", align 4
@perf_init_test._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.5, i32 902, ptr @.str.19, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%d: Failed to map DMA addr\0A\00", [36 x i8] zeroinitializer }, align 32
@perf_init_test._entry_ptr.51 = internal global ptr @perf_init_test._entry.49, section ".printk_index", align 4
@perf_init_test.__UNIQUE_ID_ddebug265 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.48, ptr @.str.5, ptr @.str.52, i8 0, i8 -29, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%d: Map MMIO %pa to DMA addr %pad\0A\00", [61 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@perf_run_test._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.5, i32 946, ptr @.str.19, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%d: Got error %d on test\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"perf_run_test\00", [18 x i8] zeroinitializer }, align 32
@perf_run_test._entry_ptr = internal global ptr @perf_run_test._entry, section ".printk_index", align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@perf_sync_test.__UNIQUE_ID_ddebug268 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.55, ptr @.str.5, ptr @.str.56, i8 0, i8 -10, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"perf_sync_test\00", [17 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%d: copied %llu bytes\0A\00", [41 x i8] zeroinitializer }, align 32
@perf_sync_test.__UNIQUE_ID_ddebug269 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.55, ptr @.str.5, ptr @.str.57, i8 0, i8 -10, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%d: lasted %llu usecs\0A\00", [41 x i8] zeroinitializer }, align 32
@perf_sync_test.__UNIQUE_ID_ddebug270 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.55, ptr @.str.5, ptr @.str.58, i8 0, i8 -9, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%d: %llu MBytes/s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/dmaengine.h\00", [38 x i8] zeroinitializer }, align 32
@perf_init_service._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.5, i32 663, ptr @.str.19, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Not enough memory windows\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"perf_init_service\00", [46 x i8] zeroinitializer }, align 32
@perf_init_service._entry_ptr = internal global ptr @perf_init_service._entry, section ".printk_index", align 4
@perf_init_service.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.61, ptr @.str.5, ptr @.str.62, i8 0, i8 -89, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Message service initialized\0A\00", [35 x i8] zeroinitializer }, align 32
@perf_init_service.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.61, ptr @.str.5, ptr @.str.63, i8 0, i8 -87, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Message service unsupported\0A\00", [35 x i8] zeroinitializer }, align 32
@perf_init_service.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.61, ptr @.str.5, ptr @.str.64, i8 0, i8 -85, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Scratchpad service initialized\0A\00", [32 x i8] zeroinitializer }, align 32
@perf_init_service.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.61, ptr @.str.5, ptr @.str.65, i8 0, i8 -84, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Scratchpad service unsupported\0A\00", [32 x i8] zeroinitializer }, align 32
@perf_init_service._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.61, ptr @.str.5, i32 691, ptr @.str.19, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Command services unsupported\0A\00", [34 x i8] zeroinitializer }, align 32
@perf_init_service._entry_ptr.68 = internal global ptr @perf_init_service._entry.66, section ".printk_index", align 4
@perf_msg_cmd_send.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.69, ptr @.str.5, ptr @.str.70, i8 0, i8 88, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"perf_msg_cmd_send\00", [46 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"CMD send: %d 0x%llx\0A\00", [43 x i8] zeroinitializer }, align 32
@perf_msg_cmd_recv.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.71, ptr @.str.5, ptr @.str.72, i8 0, i8 104, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"perf_msg_cmd_recv\00", [46 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"CMD recv: %d 0x%llx\0A\00", [43 x i8] zeroinitializer }, align 32
@perf_spad_cmd_send.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.73, ptr @.str.5, ptr @.str.70, i8 0, i8 66, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"perf_spad_cmd_send\00", [45 x i8] zeroinitializer }, align 32
@perf_spad_cmd_send.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.73, ptr @.str.5, ptr @.str.74, i8 0, i8 74, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DB ring peer %#llx\0A\00", [44 x i8] zeroinitializer }, align 32
@perf_spad_cmd_recv.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.75, ptr @.str.5, ptr @.str.72, i8 0, i8 85, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"perf_spad_cmd_recv\00", [45 x i8] zeroinitializer }, align 32
@perf_ops = internal constant { %struct.ntb_ctx_ops, [20 x i8] } { %struct.ntb_ctx_ops { ptr @perf_link_event, ptr @perf_db_event, ptr @perf_msg_event }, [20 x i8] zeroinitializer }, align 32
@perf_enable_service.__UNIQUE_ID_ddebug263 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.76, ptr @.str.5, ptr @.str.77, i8 0, i8 -77, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"perf_enable_service\00", [44 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"MSG sts unmasked %#llx\0A\00", [40 x i8] zeroinitializer }, align 32
@perf_enable_service.__UNIQUE_ID_ddebug264 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.76, ptr @.str.5, ptr @.str.78, i8 0, i8 -75, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DB bits unmasked %#llx\0A\00", [40 x i8] zeroinitializer }, align 32
@perf_db_event.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.79, ptr @.str.5, ptr @.str.80, i8 0, i8 127, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"perf_db_event\00", [18 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"DB vec %d mask %#llx bits %#llx\0A\00", [63 x i8] zeroinitializer }, align 32
@perf_cmd_recv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.5, i32 473, ptr @.str.19, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Recv invalid command\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"perf_cmd_recv\00", [18 x i8] zeroinitializer }, align 32
@perf_cmd_recv._entry_ptr = internal global ptr @perf_cmd_recv._entry, section ".printk_index", align 4
@perf_msg_event.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.83, ptr @.str.5, ptr @.str.84, i8 0, i8 -126, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"perf_msg_event\00", [17 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Msg status bits %#llx\0A\00", [41 x i8] zeroinitializer }, align 32
@perf_setup_dbgfs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.5, i32 1359, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DebugFS unsupported\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"perf_setup_dbgfs\00", [47 x i8] zeroinitializer }, align 32
@perf_setup_dbgfs._entry_ptr = internal global ptr @perf_setup_dbgfs._entry, section ".printk_index", align 4
@.str.87 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"info\00", [27 x i8] zeroinitializer }, align 32
@perf_dbgfs_info = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @perf_dbgfs_read_info, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"run\00", [28 x i8] zeroinitializer }, align 32
@perf_dbgfs_run = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @perf_dbgfs_read_run, ptr @perf_dbgfs_write_run, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"threads_count\00", [18 x i8] zeroinitializer }, align 32
@perf_dbgfs_tcnt = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @perf_dbgfs_read_tcnt, ptr @perf_dbgfs_write_tcnt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"chunk_order\00", [20 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"total_order\00", [20 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"use_dma\00", [24 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"    Performance measuring tool info:\0A\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Local port %d, Global index %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Test status: \00", [18 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"on-fly with port %d (%d)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"idle\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Port %d (%d), Global index %d:\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\09Link status: %s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"up\00", [29 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"down\00", [27 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\09Out buffer addr 0x%pK\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\09Out buff phys addr %pa[p]\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\09Out buffer size %pa\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\09Out buffer xlat 0x%016llx[p]\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\09In buffer addr: unallocated\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\09In buffer addr 0x%pK\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\09In buffer size %pa\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\09In buffer xlat %pad[p]\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"    Peer %d test statistics:\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%d: error status %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%d: copied %llu bytes in %llu usecs, %llu MBytes/s\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%hhu\0A\00", [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.114 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967235]
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 91, i32 1 }
@___asan_gen_.124 = private unnamed_addr constant [12 x i8] c"max_mw_size\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 109, i32 22 }
@___asan_gen_.127 = private unnamed_addr constant [12 x i8] c"chunk_order\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 113, i32 22 }
@___asan_gen_.130 = private unnamed_addr constant [12 x i8] c"total_order\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 117, i32 22 }
@___asan_gen_.133 = private unnamed_addr constant [8 x i8] c"use_dma\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 121, i32 13 }
@___asan_gen_.136 = private unnamed_addr constant [12 x i8] c"perf_client\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 1523, i32 26 }
@___asan_gen_.139 = private unnamed_addr constant [18 x i8] c"perf_dbgfs_topdir\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 238, i32 23 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 1536, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 1541, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 1544, i32 28 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 1457, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 1479, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 649, i32 4 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 428, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 578, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 583, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 596, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 602, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 609, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 442, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 449, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 546, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 87, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 1430, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 1159, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 1167, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 1168, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 891, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 901, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 907, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 945, i32 4 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 983, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 986, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 989, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant [29 x i8] c"../include/linux/dmaengine.h\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 1169, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 663, i32 3 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 671, i32 3 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 676, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 684, i32 3 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 689, i32 2 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 691, i32 2 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 355, i32 2 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 416, i32 2 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 264, i32 2 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 295, i32 3 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 340, i32 3 }
@___asan_gen_.379 = private unnamed_addr constant [9 x i8] c"perf_ops\00", align 1
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 526, i32 33 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 718, i32 3 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 726, i32 3 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 508, i32 2 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 473, i32 4 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 519, i32 2 }
@___asan_gen_.412 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 1359, i32 3 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 1363, i32 22 }
@___asan_gen_.424 = private unnamed_addr constant [16 x i8] c"perf_dbgfs_info\00", align 1
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 1260, i32 37 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 1366, i32 22 }
@___asan_gen_.430 = private unnamed_addr constant [15 x i8] c"perf_dbgfs_run\00", align 1
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 1310, i32 37 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 1369, i32 22 }
@___asan_gen_.436 = private unnamed_addr constant [16 x i8] c"perf_dbgfs_tcnt\00", align 1
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 1347, i32 37 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 1373, i32 20 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 1375, i32 20 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 1377, i32 22 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 1199, i32 3 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 1202, i32 3 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 1204, i32 46 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 1207, i32 4 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 1211, i32 47 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 1218, i32 4 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 1223, i32 4 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 1224, i32 43 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 1224, i32 50 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 1227, i32 4 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 1230, i32 4 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 1233, i32 4 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 1236, i32 4 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 1240, i32 5 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 1245, i32 4 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 1248, i32 4 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 1251, i32 4 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 1127, i32 3 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 1137, i32 5 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 1142, i32 4 }
@___asan_gen_.508 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.509 = private constant [31 x i8] c"../drivers/ntb/test/ntb_perf.c\00", align 1
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 1323, i32 36 }
@llvm.compiler.used = appending global [172 x ptr] [ptr @__UNIQUE_ID_author241, ptr @__UNIQUE_ID_chunk_order246, ptr @__UNIQUE_ID_chunk_ordertype245, ptr @__UNIQUE_ID_description242, ptr @__UNIQUE_ID_file238, ptr @__UNIQUE_ID_license239, ptr @__UNIQUE_ID_max_mw_size244, ptr @__UNIQUE_ID_max_mw_sizetype243, ptr @__UNIQUE_ID_total_order248, ptr @__UNIQUE_ID_total_ordertype247, ptr @__UNIQUE_ID_use_dma250, ptr @__UNIQUE_ID_use_dmatype249, ptr @__UNIQUE_ID_version240, ptr @__exitcall_perf_exit, ptr @__initcall__kmod_ntb_perf__274_1559_perf_init6, ptr @__modver_attr, ptr @__param_chunk_order, ptr @__param_max_mw_size, ptr @__param_total_order, ptr @__param_use_dma, ptr @perf_cmd_exec._entry, ptr @perf_cmd_exec._entry_ptr, ptr @perf_cmd_recv._entry, ptr @perf_cmd_recv._entry_ptr, ptr @perf_cmd_send._entry, ptr @perf_cmd_send._entry_ptr, ptr @perf_exit, ptr @perf_init._entry, ptr @perf_init._entry.6, ptr @perf_init._entry_ptr, ptr @perf_init._entry_ptr.8, ptr @perf_init_service._entry, ptr @perf_init_service._entry.66, ptr @perf_init_service._entry_ptr, ptr @perf_init_service._entry_ptr.68, ptr @perf_init_test._entry, ptr @perf_init_test._entry.49, ptr @perf_init_test._entry_ptr, ptr @perf_init_test._entry_ptr.51, ptr @perf_run_test._entry, ptr @perf_run_test._entry_ptr, ptr @perf_service_work._entry, ptr @perf_service_work._entry_ptr, ptr @perf_setup_dbgfs._entry, ptr @perf_setup_dbgfs._entry_ptr, ptr @perf_setup_inbuf._entry, ptr @perf_setup_inbuf._entry.22, ptr @perf_setup_inbuf._entry.25, ptr @perf_setup_inbuf._entry.28, ptr @perf_setup_inbuf._entry.31, ptr @perf_setup_inbuf._entry_ptr, ptr @perf_setup_inbuf._entry_ptr.24, ptr @perf_setup_inbuf._entry_ptr.27, ptr @perf_setup_inbuf._entry_ptr.30, ptr @perf_setup_inbuf._entry_ptr.33, ptr @perf_setup_outbuf._entry, ptr @perf_setup_outbuf._entry_ptr, ptr @perf_setup_peer_mw._entry, ptr @perf_setup_peer_mw._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @max_mw_size, ptr @chunk_order, ptr @total_order, ptr @use_dma, ptr @perf_client, ptr @perf_dbgfs_topdir, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @perf_init_peers.__key, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @init_completion.__key, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @perf_init_threads.__key, ptr @.str.42, ptr @perf_init_threads.__key.43, ptr @.str.44, ptr @perf_init_threads.__key.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.67, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @perf_ops, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @perf_dbgfs_info, ptr @.str.88, ptr @perf_dbgfs_run, ptr @.str.89, ptr @perf_dbgfs_tcnt, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113], section "llvm.metadata"
@0 = internal global [132 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_mw_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chunk_order to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @total_order to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @use_dma to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @perf_client to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @perf_dbgfs_topdir to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @perf_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @perf_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @perf_init_peers.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @perf_service_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @perf_cmd_send._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @perf_setup_inbuf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @perf_setup_inbuf._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @perf_setup_inbuf._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @perf_setup_inbuf._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @perf_setup_inbuf._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @perf_cmd_exec._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @perf_setup_outbuf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @perf_setup_peer_mw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @perf_init_threads.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @perf_init_threads.__key.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @perf_init_threads.__key.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @perf_init_test._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @perf_init_test._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @perf_run_test._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @perf_init_service._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @perf_init_service._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @perf_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @perf_cmd_recv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @perf_setup_dbgfs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @perf_dbgfs_info to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @perf_dbgfs_run to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @perf_dbgfs_tcnt to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @perf_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @chunk_order, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %0)
  %cmp = icmp ugt i8 %0, 20
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  store i8 20, ptr @chunk_order, align 1
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef 20) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %1 = load i8, ptr @total_order, align 1
  %2 = load i8, ptr @chunk_order, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %2)
  %cmp5 = icmp ult i8 %1, %2
  br i1 %cmp5, label %if.then7, label %if.end.if.end14_crit_edge

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %conv4 = zext i8 %2 to i32
  store i8 %2, ptr @total_order, align 1
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %conv4) #13
  br label %if.end14

if.end14:                                         ; preds = %if.then7, %if.end.if.end14_crit_edge
  %call15 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.9, i32 noundef 66, i32 noundef 0) #10
  store ptr %call15, ptr @perf_wq, align 4
  %tobool.not = icmp eq ptr %call15, null
  br i1 %tobool.not, label %if.end14.cleanup_crit_edge, label %if.end17

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end17:                                         ; preds = %if.end14
  %call18 = tail call zeroext i1 @debugfs_initialized() #10
  br i1 %call18, label %if.then19, label %if.end17.if.end21_crit_edge

if.end17.if.end21_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %call20 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.1, ptr noundef null) #10
  store ptr %call20, ptr @perf_dbgfs_topdir, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end17.if.end21_crit_edge
  %call22 = tail call i32 @__ntb_register_client(ptr noundef nonnull @perf_client, ptr noundef null, ptr noundef nonnull @.str.1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end21.cleanup_crit_edge, label %if.then24

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  %3 = load ptr, ptr @perf_dbgfs_topdir, align 4
  tail call void @debugfs_remove(ptr noundef %3) #10
  %4 = load ptr, ptr @perf_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %4) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then24, %if.end21.cleanup_crit_edge, %if.end14.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.end14.cleanup_crit_edge ], [ %call22, %if.then24 ], [ 0, %if.end21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @perf_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ntb_unregister_client(ptr noundef nonnull @perf_client) #10
  %0 = load ptr, ptr @perf_dbgfs_topdir, align 4
  tail call void @debugfs_remove(ptr noundef %0) #10
  %1 = load ptr, ptr @perf_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %1) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ntb_unregister_client(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @debugfs_initialized() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ntb_register_client(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @perf_probe(ptr nocapture noundef readnone %client, ptr noundef %ntb) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %ntb, i32 noundef 4456, i32 noundef 3520) #10
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %if.end.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.end.i:                                         ; preds = %entry
  %ops.i.i = getelementptr inbounds %struct.ntb_dev, ptr %ntb, i32 0, i32 3
  %0 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i.i, align 8
  %peer_port_count.i.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %peer_port_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %peer_port_count.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i21.i = tail call i32 @ntb_default_peer_port_count(ptr noundef %ntb) #10
  br label %ntb_peer_port_count.exit.i

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i.i = tail call i32 %3(ptr noundef %ntb) #10
  br label %ntb_peer_port_count.exit.i

ntb_peer_port_count.exit.i:                       ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call3.i.i, %if.end.i.i ], [ %call.i21.i, %if.then.i.i ]
  %pcnt.i = getelementptr inbounds %struct.perf_ctx, ptr %call.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %pcnt.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %retval.0.i.i, ptr %pcnt.i, align 8
  %5 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %retval.0.i.i, i32 160) #10
  %6 = extractvalue { i32, i1 } %5, 1
  br i1 %6, label %devm_kcalloc.exit.thread.i, label %devm_kcalloc.exit.i, !prof !301

devm_kcalloc.exit.thread.i:                       ; preds = %ntb_peer_port_count.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %peers23.i = getelementptr inbounds %struct.perf_ctx, ptr %call.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %peers23.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %peers23.i, align 4
  br label %if.then

devm_kcalloc.exit.i:                              ; preds = %ntb_peer_port_count.exit.i
  %8 = extractvalue { i32, i1 } %5, 0
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %ntb, i32 noundef %8, i32 noundef 3520) #10
  %peers.i = getelementptr inbounds %struct.perf_ctx, ptr %call.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %peers.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call5.i.i.i, ptr %peers.i, align 4
  %tobool7.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool7.not.i, label %devm_kcalloc.exit.i.if.then_crit_edge, label %perf_create_data.exit

devm_kcalloc.exit.i.if.then_crit_edge:            ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

perf_create_data.exit:                            ; preds = %devm_kcalloc.exit.i
  %10 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %ntb, ptr %call.i.i, align 8
  %cmp.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %perf_create_data.exit.if.then_crit_edge, label %if.end

perf_create_data.exit.if.then_crit_edge:          ; preds = %perf_create_data.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %perf_create_data.exit.if.then_crit_edge, %devm_kcalloc.exit.i.if.then_crit_edge, %devm_kcalloc.exit.thread.i, %entry.if.then_crit_edge
  %retval.0.i31 = phi ptr [ %call.i.i, %perf_create_data.exit.if.then_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.if.then_crit_edge ], [ inttoptr (i32 -12 to ptr), %devm_kcalloc.exit.thread.i ], [ inttoptr (i32 -12 to ptr), %devm_kcalloc.exit.i.if.then_crit_edge ]
  %11 = ptrtoint ptr %retval.0.i31 to i32
  br label %cleanup

if.end:                                           ; preds = %perf_create_data.exit
  %call3 = tail call fastcc i32 @perf_init_peers(ptr noundef nonnull %call.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %tcnt.i = getelementptr inbounds %struct.perf_ctx, ptr %call.i.i, i32 0, i32 7
  %12 = ptrtoint ptr %tcnt.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %tcnt.i, align 4
  %13 = ptrtoint ptr %peers.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %peers.i, align 4
  %test_peer.i = getelementptr inbounds %struct.perf_ctx, ptr %call.i.i, i32 0, i32 8
  %15 = ptrtoint ptr %test_peer.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %test_peer.i, align 8
  %twait.i = getelementptr inbounds %struct.perf_ctx, ptr %call.i.i, i32 0, i32 5
  tail call void @__init_waitqueue_head(ptr noundef %twait.i, ptr noundef nonnull @.str.42, ptr noundef nonnull @perf_init_threads.__key) #10
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end5
  %tidx.031.i = phi i32 [ 0, %if.end5 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx1.i = getelementptr %struct.perf_ctx, ptr %call.i.i, i32 0, i32 9, i32 %tidx.031.i
  %16 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i.i, ptr %arrayidx1.i, align 8
  %tidx3.i = getelementptr %struct.perf_ctx, ptr %call.i.i, i32 0, i32 9, i32 %tidx.031.i, i32 1
  %17 = ptrtoint ptr %tidx3.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %tidx.031.i, ptr %tidx3.i, align 4
  %status.i = getelementptr %struct.perf_ctx, ptr %call.i.i, i32 0, i32 9, i32 %tidx.031.i, i32 8
  %18 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -61, ptr %status.i, align 8
  %dma_wait.i = getelementptr %struct.perf_ctx, ptr %call.i.i, i32 0, i32 9, i32 %tidx.031.i, i32 3
  tail call void @__init_waitqueue_head(ptr noundef %dma_wait.i, ptr noundef nonnull @.str.44, ptr noundef nonnull @perf_init_threads.__key.43) #10
  %work.i = getelementptr %struct.perf_ctx, ptr %call.i.i, i32 0, i32 9, i32 %tidx.031.i, i32 9
  tail call void @__init_work(ptr noundef %work.i, i32 noundef 0) #10
  %19 = ptrtoint ptr %work.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -64, ptr %work.i, align 4
  %lockdep_map.i = getelementptr %struct.perf_ctx, ptr %call.i.i, i32 0, i32 9, i32 %tidx.031.i, i32 9, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.46, ptr noundef nonnull @perf_init_threads.__key.45, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry11.i = getelementptr %struct.perf_ctx, ptr %call.i.i, i32 0, i32 9, i32 %tidx.031.i, i32 9, i32 1
  %20 = ptrtoint ptr %entry11.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %entry11.i, ptr %entry11.i, align 4
  %prev.i.i = getelementptr %struct.perf_ctx, ptr %call.i.i, i32 0, i32 9, i32 %tidx.031.i, i32 9, i32 1, i32 1
  %21 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %entry11.i, ptr %prev.i.i, align 4
  %func.i = getelementptr %struct.perf_ctx, ptr %call.i.i, i32 0, i32 9, i32 %tidx.031.i, i32 9, i32 2
  %22 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @perf_thread_work, ptr %func.i, align 4
  %inc.i = add nuw nsw i32 %tidx.031.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %perf_init_threads.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

perf_init_threads.exit:                           ; preds = %for.body.i
  %call6 = tail call fastcc i32 @perf_init_service(ptr noundef %call.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %perf_init_threads.exit.cleanup_crit_edge

perf_init_threads.exit.cleanup_crit_edge:         ; preds = %perf_init_threads.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %perf_init_threads.exit
  %call10 = tail call fastcc i32 @perf_enable_service(ptr noundef %call.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %23 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %call.i.i, align 8
  %pdev1.i = getelementptr inbounds %struct.ntb_dev, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pdev1.i, align 8
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44, i32 3
  %27 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %28, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.end13.pci_name.exit.i_crit_edge

if.end13.pci_name.exit.i_crit_edge:               ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %pci_name.exit.i

if.end.i.i.i:                                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  %29 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i.i, align 4
  br label %pci_name.exit.i

pci_name.exit.i:                                  ; preds = %if.end.i.i.i, %if.end13.pci_name.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %30, %if.end.i.i.i ], [ %28, %if.end13.pci_name.exit.i_crit_edge ]
  %31 = load ptr, ptr @perf_dbgfs_topdir, align 4
  %call2.i = tail call ptr @debugfs_create_dir(ptr noundef %retval.0.i.i.i, ptr noundef %31) #10
  %dbgfs_dir.i = getelementptr inbounds %struct.perf_ctx, ptr %call.i.i, i32 0, i32 12
  %32 = ptrtoint ptr %dbgfs_dir.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call2.i, ptr %dbgfs_dir.i, align 8
  %tobool.not.i27 = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i27, label %do.end.i, label %if.end.i28

do.end.i:                                         ; preds = %pci_name.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %call.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %34, ptr noundef nonnull @.str.85) #13
  br label %cleanup

if.end.i28:                                       ; preds = %pci_name.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %call6.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.87, i16 noundef zeroext 384, ptr noundef nonnull %call2.i, ptr noundef %call.i.i, ptr noundef nonnull @perf_dbgfs_info) #10
  %35 = ptrtoint ptr %dbgfs_dir.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dbgfs_dir.i, align 8
  %call8.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.88, i16 noundef zeroext 384, ptr noundef %36, ptr noundef %call.i.i, ptr noundef nonnull @perf_dbgfs_run) #10
  %37 = ptrtoint ptr %dbgfs_dir.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dbgfs_dir.i, align 8
  %call10.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.89, i16 noundef zeroext 384, ptr noundef %38, ptr noundef %call.i.i, ptr noundef nonnull @perf_dbgfs_tcnt) #10
  %39 = ptrtoint ptr %dbgfs_dir.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dbgfs_dir.i, align 8
  tail call void @debugfs_create_u8(ptr noundef nonnull @.str.90, i16 noundef zeroext 320, ptr noundef %40, ptr noundef nonnull @chunk_order) #10
  %41 = ptrtoint ptr %dbgfs_dir.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dbgfs_dir.i, align 8
  tail call void @debugfs_create_u8(ptr noundef nonnull @.str.91, i16 noundef zeroext 320, ptr noundef %42, ptr noundef nonnull @total_order) #10
  %43 = ptrtoint ptr %dbgfs_dir.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dbgfs_dir.i, align 8
  tail call void @debugfs_create_bool(ptr noundef nonnull @.str.92, i16 noundef zeroext 320, ptr noundef %44, ptr noundef nonnull @use_dma) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end.i28, %do.end.i, %if.end9.cleanup_crit_edge, %perf_init_threads.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %11, %if.then ], [ %call3, %if.end.cleanup_crit_edge ], [ %call6, %perf_init_threads.exit.cleanup_crit_edge ], [ %call10, %if.end9.cleanup_crit_edge ], [ 0, %do.end.i ], [ 0, %if.end.i28 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_remove(ptr nocapture noundef readnone %client, ptr nocapture noundef readonly %ntb) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx = getelementptr inbounds %struct.ntb_dev, ptr %ntb, i32 0, i32 4
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %dbgfs_dir.i = getelementptr inbounds %struct.perf_ctx, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %dbgfs_dir.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dbgfs_dir.i, align 8
  tail call void @debugfs_remove(ptr noundef %3) #10
  tail call fastcc void @perf_disable_service(ptr noundef %1)
  %tsync.i.i = getelementptr inbounds %struct.perf_ctx, ptr %1, i32 0, i32 6
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tsync.i.i, i32 noundef 4) #10
  %4 = ptrtoint ptr %tsync.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 -1, ptr %tsync.i.i, align 4
  %twait.i.i = getelementptr inbounds %struct.perf_ctx, ptr %1, i32 0, i32 5
  tail call void @__wake_up(ptr noundef %twait.i.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %entry
  %tidx.09.i.i = phi i32 [ 0, %entry ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %dma_wait.i.i = getelementptr %struct.perf_ctx, ptr %1, i32 0, i32 9, i32 %tidx.09.i.i, i32 3
  tail call void @__wake_up(ptr noundef %dma_wait.i.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  %work.i.i = getelementptr %struct.perf_ctx, ptr %1, i32 0, i32 9, i32 %tidx.09.i.i, i32 9
  %call.i.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %work.i.i) #10
  %inc.i.i = add nuw nsw i32 %tidx.09.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 32
  br i1 %exitcond.not.i.i, label %perf_clear_threads.exit, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

perf_clear_threads.exit:                          ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @perf_init_peers(ptr noundef %perf) unnamed_addr #4 align 64 {
entry:
  %phys_addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %perf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %perf, align 8
  %ops.i = getelementptr inbounds %struct.ntb_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 @ntb_default_port_number(ptr noundef %1) #10
  br label %ntb_port_number.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i = tail call i32 %5(ptr noundef %1) #10
  br label %ntb_port_number.exit

ntb_port_number.exit:                             ; preds = %if.end.i, %if.then.i
  %retval.0.i103 = phi i32 [ %call3.i, %if.end.i ], [ %call.i, %if.then.i ]
  %gidx = getelementptr inbounds %struct.perf_ctx, ptr %perf, i32 0, i32 1
  %6 = ptrtoint ptr %gidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %gidx, align 4
  %pcnt = getelementptr inbounds %struct.perf_ctx, ptr %perf, i32 0, i32 2
  %7 = ptrtoint ptr %pcnt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pcnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp134 = icmp sgt i32 %8, 0
  br i1 %cmp134, label %for.body.lr.ph, label %ntb_port_number.exit.if.then20_crit_edge

ntb_port_number.exit.if.then20_crit_edge:         ; preds = %ntb_port_number.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

for.body.lr.ph:                                   ; preds = %ntb_port_number.exit
  %peers = getelementptr inbounds %struct.perf_ctx, ptr %perf, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %do.body.for.body_crit_edge, %for.body.lr.ph
  %pidx.0135 = phi i32 [ 0, %for.body.lr.ph ], [ %inc.pre-phi, %do.body.for.body_crit_edge ]
  %9 = ptrtoint ptr %peers to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %peers, align 4
  %arrayidx = getelementptr %struct.perf_peer, ptr %10, i32 %pidx.0135
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %perf, ptr %arrayidx, align 8
  %pidx2 = getelementptr %struct.perf_peer, ptr %10, i32 %pidx.0135, i32 1
  %12 = ptrtoint ptr %pidx2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %pidx.0135, ptr %pidx2, align 4
  %13 = ptrtoint ptr %perf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %perf, align 8
  %ops.i104 = getelementptr inbounds %struct.ntb_dev, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %ops.i104 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops.i104, align 8
  %peer_port_number.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %peer_port_number.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %peer_port_number.i, align 4
  %tobool.not.i105 = icmp eq ptr %18, null
  br i1 %tobool.not.i105, label %if.then.i107, label %if.end.i109

if.then.i107:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %call.i106 = tail call i32 @ntb_default_peer_port_number(ptr noundef %14, i32 noundef %pidx.0135) #10
  br label %ntb_peer_port_number.exit

if.end.i109:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i108 = tail call i32 %18(ptr noundef %14, i32 noundef %pidx.0135) #10
  br label %ntb_peer_port_number.exit

ntb_peer_port_number.exit:                        ; preds = %if.end.i109, %if.then.i107
  %retval.0.i110 = phi i32 [ %call3.i108, %if.end.i109 ], [ %call.i106, %if.then.i107 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i103, i32 %retval.0.i110)
  %cmp5 = icmp slt i32 %retval.0.i103, %retval.0.i110
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %ntb_peer_port_number.exit
  %19 = ptrtoint ptr %gidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %gidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %cmp7 = icmp eq i32 %20, -1
  br i1 %cmp7, label %if.then8, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %gidx to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %pidx.0135, ptr %gidx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then8, %if.then.if.end_crit_edge
  %add = add nuw nsw i32 %pidx.0135, 1
  %gidx10 = getelementptr %struct.perf_peer, ptr %10, i32 %pidx.0135, i32 2
  %22 = ptrtoint ptr %gidx10 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add, ptr %gidx10, align 8
  br label %do.body

if.else:                                          ; preds = %ntb_peer_port_number.exit
  call void @__sanitizer_cov_trace_pc() #12
  %gidx11 = getelementptr %struct.perf_peer, ptr %10, i32 %pidx.0135, i32 2
  %23 = ptrtoint ptr %gidx11 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %pidx.0135, ptr %gidx11, align 8
  %.pre = add nuw nsw i32 %pidx.0135, 1
  br label %do.body

do.body:                                          ; preds = %if.else, %if.end
  %inc.pre-phi = phi i32 [ %add, %if.end ], [ %.pre, %if.else ]
  %service = getelementptr %struct.perf_peer, ptr %10, i32 %pidx.0135, i32 11
  tail call void @__init_work(ptr noundef %service, i32 noundef 0) #10
  %24 = ptrtoint ptr %service to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -64, ptr %service, align 4
  %lockdep_map = getelementptr %struct.perf_peer, ptr %10, i32 %pidx.0135, i32 11, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.10, ptr noundef nonnull @perf_init_peers.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry16 = getelementptr %struct.perf_peer, ptr %10, i32 %pidx.0135, i32 11, i32 1
  %25 = ptrtoint ptr %entry16 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %entry16, ptr %entry16, align 4
  %prev.i = getelementptr %struct.perf_peer, ptr %10, i32 %pidx.0135, i32 11, i32 1, i32 1
  %26 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %entry16, ptr %prev.i, align 4
  %func = getelementptr %struct.perf_peer, ptr %10, i32 %pidx.0135, i32 11, i32 2
  %27 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @perf_service_work, ptr %func, align 4
  %init_comp = getelementptr %struct.perf_peer, ptr %10, i32 %pidx.0135, i32 13
  %28 = ptrtoint ptr %init_comp to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %init_comp, align 4
  %wait.i = getelementptr %struct.perf_peer, ptr %10, i32 %pidx.0135, i32 13, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.39, ptr noundef nonnull @init_completion.__key) #10
  %29 = ptrtoint ptr %pcnt to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pcnt, align 8
  %cmp = icmp slt i32 %inc.pre-phi, %30
  br i1 %cmp, label %do.body.for.body_crit_edge, label %for.end

do.body.for.body_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %do.body
  %31 = ptrtoint ptr %gidx to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pr = load i32, ptr %gidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.pr)
  %cmp19 = icmp eq i32 %.pr, -1
  br i1 %cmp19, label %for.end.if.then20_crit_edge, label %for.end.if.end22_crit_edge

for.end.if.end22_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

for.end.if.then20_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

if.then20:                                        ; preds = %for.end.if.then20_crit_edge, %ntb_port_number.exit.if.then20_crit_edge
  %.lcssa146 = phi i32 [ %30, %for.end.if.then20_crit_edge ], [ %8, %ntb_port_number.exit.if.then20_crit_edge ]
  %pidx.0.lcssa144 = phi i32 [ %inc.pre-phi, %for.end.if.then20_crit_edge ], [ 0, %ntb_port_number.exit.if.then20_crit_edge ]
  %32 = ptrtoint ptr %gidx to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %pidx.0.lcssa144, ptr %gidx, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %for.end.if.end22_crit_edge
  %.lcssa145 = phi i32 [ %.lcssa146, %if.then20 ], [ %30, %for.end.if.end22_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.lcssa145)
  %cmp24 = icmp eq i32 %.lcssa145, 1
  br i1 %cmp24, label %land.lhs.true, label %if.end22.if.end37_crit_edge

if.end22.if.end37_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

land.lhs.true:                                    ; preds = %if.end22
  %33 = ptrtoint ptr %perf to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %perf, align 8
  %ops.i111 = getelementptr inbounds %struct.ntb_dev, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %ops.i111 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ops.i111, align 8
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  %tobool.not.i112 = icmp eq ptr %38, null
  br i1 %tobool.not.i112, label %if.then.i114, label %if.end.i116

if.then.i114:                                     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %call.i113 = tail call i32 @ntb_default_port_number(ptr noundef %34) #10
  br label %ntb_port_number.exit118

if.end.i116:                                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i115 = tail call i32 %38(ptr noundef %34) #10
  br label %ntb_port_number.exit118

ntb_port_number.exit118:                          ; preds = %if.end.i116, %if.then.i114
  %retval.0.i117 = phi i32 [ %call3.i115, %if.end.i116 ], [ %call.i113, %if.then.i114 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i117)
  %cmp27 = icmp eq i32 %retval.0.i117, 0
  br i1 %cmp27, label %land.lhs.true28, label %ntb_port_number.exit118.if.end37_crit_edge

ntb_port_number.exit118.if.end37_crit_edge:       ; preds = %ntb_port_number.exit118
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

land.lhs.true28:                                  ; preds = %ntb_port_number.exit118
  %39 = ptrtoint ptr %perf to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %perf, align 8
  %ops.i119 = getelementptr inbounds %struct.ntb_dev, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %ops.i119 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ops.i119, align 8
  %peer_port_number.i120 = getelementptr inbounds %struct.ntb_dev_ops, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %peer_port_number.i120 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %peer_port_number.i120, align 4
  %tobool.not.i121 = icmp eq ptr %44, null
  br i1 %tobool.not.i121, label %if.then.i123, label %if.end.i125

if.then.i123:                                     ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #12
  %call.i122 = tail call i32 @ntb_default_peer_port_number(ptr noundef %40, i32 noundef 0) #10
  br label %ntb_peer_port_number.exit127

if.end.i125:                                      ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i124 = tail call i32 %44(ptr noundef %40, i32 noundef 0) #10
  br label %ntb_peer_port_number.exit127

ntb_peer_port_number.exit127:                     ; preds = %if.end.i125, %if.then.i123
  %retval.0.i126 = phi i32 [ %call3.i124, %if.end.i125 ], [ %call.i122, %if.then.i123 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i126)
  %cmp31 = icmp eq i32 %retval.0.i126, 0
  br i1 %cmp31, label %if.then32, label %ntb_peer_port_number.exit127.if.end37_crit_edge

ntb_peer_port_number.exit127.if.end37_crit_edge:  ; preds = %ntb_peer_port_number.exit127
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

if.then32:                                        ; preds = %ntb_peer_port_number.exit127
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %gidx to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %gidx, align 4
  %peers34 = getelementptr inbounds %struct.perf_ctx, ptr %perf, i32 0, i32 3
  %46 = ptrtoint ptr %peers34 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %peers34, align 4
  %gidx36 = getelementptr inbounds %struct.perf_peer, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %gidx36 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %gidx36, align 8
  br label %if.end37

if.end37:                                         ; preds = %if.then32, %ntb_peer_port_number.exit127.if.end37_crit_edge, %ntb_port_number.exit118.if.end37_crit_edge, %if.end22.if.end37_crit_edge
  %49 = ptrtoint ptr %pcnt to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %pcnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp40137 = icmp sgt i32 %50, 0
  br i1 %cmp40137, label %for.body41.lr.ph, label %if.end37.do.body50_crit_edge

if.end37.do.body50_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body50

for.body41.lr.ph:                                 ; preds = %if.end37
  %peers42 = getelementptr inbounds %struct.perf_ctx, ptr %perf, i32 0, i32 3
  br label %for.body41

for.body41:                                       ; preds = %for.inc47.for.body41_crit_edge, %for.body41.lr.ph
  %pidx.1138 = phi i32 [ 0, %for.body41.lr.ph ], [ %inc48, %for.inc47.for.body41_crit_edge ]
  %51 = ptrtoint ptr %peers42 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %peers42, align 4
  %arrayidx43 = getelementptr %struct.perf_peer, ptr %52, i32 %pidx.1138
  %53 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx43, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %phys_addr.i) #10
  %55 = ptrtoint ptr %phys_addr.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 -1, ptr %phys_addr.i, align 4, !annotation !302
  %56 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %54, align 8
  %gidx.i = getelementptr inbounds %struct.perf_ctx, ptr %54, i32 0, i32 1
  %58 = ptrtoint ptr %gidx.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %gidx.i, align 4
  %outbuf_size.i = getelementptr %struct.perf_peer, ptr %52, i32 %pidx.1138, i32 4
  %ops.i.i = getelementptr inbounds %struct.ntb_dev, ptr %57, i32 0, i32 3
  %60 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ops.i.i, align 8
  %peer_mw_get_addr.i.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %61, i32 0, i32 12
  %62 = ptrtoint ptr %peer_mw_get_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %peer_mw_get_addr.i.i, align 4
  %call.i.i = call i32 %63(ptr noundef %57, i32 noundef %59, ptr noundef nonnull %phys_addr.i, ptr noundef %outbuf_size.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i128 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i128, label %if.end.i129, label %for.body41.perf_setup_peer_mw.exit_crit_edge

for.body41.perf_setup_peer_mw.exit_crit_edge:     ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #12
  br label %perf_setup_peer_mw.exit

if.end.i129:                                      ; preds = %for.body41
  %64 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %54, align 8
  %66 = ptrtoint ptr %phys_addr.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %phys_addr.i, align 4
  %68 = ptrtoint ptr %outbuf_size.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %outbuf_size.i, align 8
  %call4.i = call ptr @devm_ioremap_wc(ptr noundef %65, i32 noundef %67, i32 noundef %69) #10
  %outbuf.i = getelementptr %struct.perf_peer, ptr %52, i32 %pidx.1138, i32 5
  %70 = ptrtoint ptr %outbuf.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call4.i, ptr %outbuf.i, align 4
  %tobool6.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool6.not.i, label %if.end.i129.perf_setup_peer_mw.exit_crit_edge, label %if.end8.i

if.end.i129.perf_setup_peer_mw.exit_crit_edge:    ; preds = %if.end.i129
  call void @__sanitizer_cov_trace_pc() #12
  br label %perf_setup_peer_mw.exit

if.end8.i:                                        ; preds = %if.end.i129
  %71 = ptrtoint ptr %phys_addr.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %phys_addr.i, align 4
  %out_phys_addr.i = getelementptr %struct.perf_peer, ptr %52, i32 %pidx.1138, i32 6
  %73 = ptrtoint ptr %out_phys_addr.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %out_phys_addr.i, align 8
  %74 = load i32, ptr @max_mw_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool9.not.i = icmp eq i32 %74, 0
  br i1 %tobool9.not.i, label %if.end8.i.for.inc47_crit_edge, label %land.lhs.true.i

if.end8.i.for.inc47_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc47

land.lhs.true.i:                                  ; preds = %if.end8.i
  %75 = ptrtoint ptr %outbuf_size.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %outbuf_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %76, i32 %74)
  %cmp.i = icmp ugt i32 %76, %74
  br i1 %cmp.i, label %if.then11.i, label %land.lhs.true.i.for.inc47_crit_edge

land.lhs.true.i.for.inc47_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc47

if.then11.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %77 = ptrtoint ptr %outbuf_size.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %74, ptr %outbuf_size.i, align 8
  %78 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx43, align 8
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %79, align 8
  %pidx.i = getelementptr %struct.perf_peer, ptr %52, i32 %pidx.1138, i32 1
  %82 = ptrtoint ptr %pidx.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %pidx.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %81, ptr noundef nonnull @.str.40, i32 noundef %83, ptr noundef %outbuf_size.i) #13
  br label %for.inc47

perf_setup_peer_mw.exit:                          ; preds = %if.end.i129.perf_setup_peer_mw.exit_crit_edge, %for.body41.perf_setup_peer_mw.exit_crit_edge
  %retval.0.i130 = phi i32 [ %call.i.i, %for.body41.perf_setup_peer_mw.exit_crit_edge ], [ -12, %if.end.i129.perf_setup_peer_mw.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phys_addr.i) #10
  br label %cleanup

for.inc47:                                        ; preds = %if.then11.i, %land.lhs.true.i.for.inc47_crit_edge, %if.end8.i.for.inc47_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phys_addr.i) #10
  %inc48 = add nuw nsw i32 %pidx.1138, 1
  %84 = ptrtoint ptr %pcnt to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %pcnt, align 8
  %cmp40 = icmp slt i32 %inc48, %85
  br i1 %cmp40, label %for.inc47.for.body41_crit_edge, label %for.inc47.do.body50_crit_edge

for.inc47.do.body50_crit_edge:                    ; preds = %for.inc47
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body50

for.inc47.for.body41_crit_edge:                   ; preds = %for.inc47
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body41

do.body50:                                        ; preds = %for.inc47.do.body50_crit_edge, %if.end37.do.body50_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @perf_init_peers.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@perf_init_peers, %if.then55)) #10
          to label %cleanup [label %if.then55], !srcloc !303

if.then55:                                        ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #12
  %86 = ptrtoint ptr %perf to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %perf, align 8
  %88 = ptrtoint ptr %gidx to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %gidx, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @perf_init_peers.__UNIQUE_ID_ddebug273, ptr noundef %87, ptr noundef nonnull @.str.12, i32 noundef %89) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then55, %do.body50, %perf_setup_peer_mw.exit
  %retval.0 = phi i32 [ %retval.0.i130, %perf_setup_peer_mw.exit ], [ 0, %if.then55 ], [ 0, %do.body50 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @perf_init_service(ptr nocapture noundef %perf) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %perf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %perf, align 8
  %ops.i = getelementptr inbounds %struct.ntb_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 8
  %peer_mw_count.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %peer_mw_count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %peer_mw_count.i, align 4
  %call.i = tail call i32 %5(ptr noundef %1) #10
  %pcnt = getelementptr inbounds %struct.perf_ctx, ptr %perf, i32 0, i32 2
  %6 = ptrtoint ptr %pcnt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pcnt, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %7)
  %cmp = icmp slt i32 %call.i, %7
  %8 = ptrtoint ptr %perf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %perf, align 8
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.60) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %ops.i116 = getelementptr inbounds %struct.ntb_dev, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %ops.i116 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i116, align 8
  %msg_count.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %11, i32 0, i32 39
  %12 = ptrtoint ptr %msg_count.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %msg_count.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end.do.body17_crit_edge, label %ntb_msg_count.exit

if.end.do.body17_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body17

ntb_msg_count.exit:                               ; preds = %if.end
  %call.i117 = tail call i32 %13(ptr noundef %9) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i117)
  %cmp4 = icmp sgt i32 %call.i117, 2
  br i1 %cmp4, label %if.then5, label %ntb_msg_count.exit.do.body17_crit_edge

ntb_msg_count.exit.do.body17_crit_edge:           ; preds = %ntb_msg_count.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body17

if.then5:                                         ; preds = %ntb_msg_count.exit
  call void @__sanitizer_cov_trace_pc() #12
  %cmd_send = getelementptr inbounds %struct.perf_ctx, ptr %perf, i32 0, i32 10
  %14 = ptrtoint ptr %cmd_send to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @perf_msg_cmd_send, ptr %cmd_send, align 8
  %cmd_recv = getelementptr inbounds %struct.perf_ctx, ptr %perf, i32 0, i32 11
  %15 = ptrtoint ptr %cmd_recv to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @perf_msg_cmd_recv, ptr %cmd_recv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @perf_init_service.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@perf_init_service, %if.then10)) #10
          to label %cleanup [label %if.then10], !srcloc !303

if.then10:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %perf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %perf, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @perf_init_service.__UNIQUE_ID_ddebug259, ptr noundef %17, ptr noundef nonnull @.str.62) #10
  br label %cleanup

do.body17:                                        ; preds = %ntb_msg_count.exit.do.body17_crit_edge, %if.end.do.body17_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @perf_init_service.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@perf_init_service, %if.then29)) #10
          to label %do.end34 [label %if.then29], !srcloc !303

if.then29:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %perf to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %perf, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @perf_init_service.__UNIQUE_ID_ddebug260, ptr noundef %19, ptr noundef nonnull @.str.63) #10
  br label %do.end34

do.end34:                                         ; preds = %if.then29, %do.body17
  %20 = ptrtoint ptr %pcnt to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pcnt, align 8
  %22 = ptrtoint ptr %perf to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %perf, align 8
  %ops.i119 = getelementptr inbounds %struct.ntb_dev, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %ops.i119 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops.i119, align 8
  %spad_count.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %25, i32 0, i32 33
  %26 = ptrtoint ptr %spad_count.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %spad_count.i, align 4
  %tobool.not.i120 = icmp eq ptr %27, null
  br i1 %tobool.not.i120, label %do.end34.ntb_spad_count.exit_crit_edge, label %if.end.i122

do.end34.ntb_spad_count.exit_crit_edge:           ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %ntb_spad_count.exit

if.end.i122:                                      ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #12
  %call.i121 = tail call i32 %27(ptr noundef %23) #10
  br label %ntb_spad_count.exit

ntb_spad_count.exit:                              ; preds = %if.end.i122, %do.end34.ntb_spad_count.exit_crit_edge
  %retval.0.i123 = phi i32 [ %call.i121, %if.end.i122 ], [ 0, %do.end34.ntb_spad_count.exit_crit_edge ]
  %28 = ptrtoint ptr %pcnt to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pcnt, align 8
  %30 = mul i32 %29, 3
  %mul = add i32 %30, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i123, i32 %mul)
  %cmp40.not = icmp slt i32 %retval.0.i123, %mul
  br i1 %cmp40.not, label %ntb_spad_count.exit.do.body67_crit_edge, label %land.lhs.true

ntb_spad_count.exit.do.body67_crit_edge:          ; preds = %ntb_spad_count.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body67

land.lhs.true:                                    ; preds = %ntb_spad_count.exit
  %sub = sub i32 63, %21
  %sh_prom = zext i32 %sub to i64
  %shr = lshr i64 -1, %sh_prom
  %31 = ptrtoint ptr %perf to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %perf, align 8
  %ops.i124 = getelementptr inbounds %struct.ntb_dev, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %ops.i124 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ops.i124, align 8
  %db_valid_mask.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %34, i32 0, i32 16
  %35 = ptrtoint ptr %db_valid_mask.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %db_valid_mask.i, align 4
  %call.i125 = tail call i64 %36(ptr noundef %32) #10
  %and43 = and i64 %call.i125, %shr
  call void @__sanitizer_cov_trace_cmp8(i64 %and43, i64 %shr)
  %cmp44 = icmp eq i64 %and43, %shr
  br i1 %cmp44, label %if.then45, label %land.lhs.true.do.body67_crit_edge

land.lhs.true.do.body67_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body67

if.then45:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %cmd_send46 = getelementptr inbounds %struct.perf_ctx, ptr %perf, i32 0, i32 10
  %37 = ptrtoint ptr %cmd_send46 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @perf_spad_cmd_send, ptr %cmd_send46, align 8
  %cmd_recv47 = getelementptr inbounds %struct.perf_ctx, ptr %perf, i32 0, i32 11
  %38 = ptrtoint ptr %cmd_recv47 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @perf_spad_cmd_recv, ptr %cmd_recv47, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @perf_init_service.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@perf_init_service, %if.then60)) #10
          to label %cleanup [label %if.then60], !srcloc !303

if.then60:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %perf to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %perf, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @perf_init_service.__UNIQUE_ID_ddebug261, ptr noundef %40, ptr noundef nonnull @.str.64) #10
  br label %cleanup

do.body67:                                        ; preds = %land.lhs.true.do.body67_crit_edge, %ntb_spad_count.exit.do.body67_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @perf_init_service.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@perf_init_service, %if.then79)) #10
          to label %do.end87 [label %if.then79], !srcloc !303

if.then79:                                        ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %perf to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %perf, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @perf_init_service.__UNIQUE_ID_ddebug262, ptr noundef %42, ptr noundef nonnull @.str.65) #10
  br label %do.end87

do.end87:                                         ; preds = %if.then79, %do.body67
  %43 = ptrtoint ptr %perf to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %perf, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.67) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end87, %if.then60, %if.then45, %if.then10, %if.then5, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end87 ], [ 0, %if.then10 ], [ 0, %if.then60 ], [ 0, %if.then5 ], [ 0, %if.then45 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @perf_enable_service(ptr noundef %perf) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %perf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %perf, align 8
  %ops.i = getelementptr inbounds %struct.ntb_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 8
  %db_valid_mask.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %db_valid_mask.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %db_valid_mask.i, align 4
  %call.i = tail call i64 %5(ptr noundef %1) #10
  %6 = ptrtoint ptr %perf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %perf, align 8
  %ops.i90 = getelementptr inbounds %struct.ntb_dev, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %ops.i90 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i90, align 8
  %db_set_mask.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %9, i32 0, i32 23
  %10 = ptrtoint ptr %db_set_mask.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %db_set_mask.i, align 4
  %call.i91 = tail call i32 %11(ptr noundef %7, i64 noundef %call.i) #10
  %12 = ptrtoint ptr %perf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %perf, align 8
  %call4 = tail call i32 @ntb_set_ctx(ptr noundef %13, ptr noundef %perf, ptr noundef nonnull @perf_ops) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmd_send = getelementptr inbounds %struct.perf_ctx, ptr %perf, i32 0, i32 10
  %14 = ptrtoint ptr %cmd_send to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cmd_send, align 8
  %cmp = icmp eq ptr %15, @perf_msg_cmd_send
  %16 = ptrtoint ptr %perf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %perf, align 8
  %ops.i92 = getelementptr inbounds %struct.ntb_dev, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %ops.i92 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops.i92, align 8
  br i1 %cmp, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  %msg_inbits.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %19, i32 0, i32 40
  %20 = ptrtoint ptr %msg_inbits.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %msg_inbits.i, align 4
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %if.then5.ntb_msg_inbits.exit_crit_edge, label %if.end.i

if.then5.ntb_msg_inbits.exit_crit_edge:           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %ntb_msg_inbits.exit

if.end.i:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  %call.i93 = tail call i64 %21(ptr noundef %17) #10
  br label %ntb_msg_inbits.exit

ntb_msg_inbits.exit:                              ; preds = %if.end.i, %if.then5.ntb_msg_inbits.exit_crit_edge
  %retval.0.i94 = phi i64 [ %call.i93, %if.end.i ], [ 0, %if.then5.ntb_msg_inbits.exit_crit_edge ]
  %22 = ptrtoint ptr %perf to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %perf, align 8
  %ops.i95 = getelementptr inbounds %struct.ntb_dev, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %ops.i95 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops.i95, align 8
  %msg_outbits.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %25, i32 0, i32 41
  %26 = ptrtoint ptr %msg_outbits.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %msg_outbits.i, align 4
  %tobool.not.i96 = icmp eq ptr %27, null
  br i1 %tobool.not.i96, label %ntb_msg_inbits.exit.ntb_msg_outbits.exit_crit_edge, label %if.end.i98

ntb_msg_inbits.exit.ntb_msg_outbits.exit_crit_edge: ; preds = %ntb_msg_inbits.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %ntb_msg_outbits.exit

if.end.i98:                                       ; preds = %ntb_msg_inbits.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call.i97 = tail call i64 %27(ptr noundef %23) #10
  br label %ntb_msg_outbits.exit

ntb_msg_outbits.exit:                             ; preds = %if.end.i98, %ntb_msg_inbits.exit.ntb_msg_outbits.exit_crit_edge
  %retval.0.i99 = phi i64 [ %call.i97, %if.end.i98 ], [ 0, %ntb_msg_inbits.exit.ntb_msg_outbits.exit_crit_edge ]
  %28 = ptrtoint ptr %perf to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %perf, align 8
  %ops.i100 = getelementptr inbounds %struct.ntb_dev, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %ops.i100 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ops.i100, align 8
  %msg_set_mask.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %31, i32 0, i32 44
  %32 = ptrtoint ptr %msg_set_mask.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %msg_set_mask.i, align 4
  %tobool.not.i101 = icmp eq ptr %33, null
  br i1 %tobool.not.i101, label %ntb_msg_outbits.exit.ntb_msg_set_mask.exit_crit_edge, label %if.end.i103

ntb_msg_outbits.exit.ntb_msg_set_mask.exit_crit_edge: ; preds = %ntb_msg_outbits.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %ntb_msg_set_mask.exit

if.end.i103:                                      ; preds = %ntb_msg_outbits.exit
  call void @__sanitizer_cov_trace_pc() #12
  %or = or i64 %retval.0.i99, %retval.0.i94
  %call.i102 = tail call i32 %33(ptr noundef %29, i64 noundef %or) #10
  br label %ntb_msg_set_mask.exit

ntb_msg_set_mask.exit:                            ; preds = %if.end.i103, %ntb_msg_outbits.exit.ntb_msg_set_mask.exit_crit_edge
  %conv.i = trunc i64 %retval.0.i94 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i)
  %cmp.i = icmp eq i32 %conv.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i104

if.then.i:                                        ; preds = %ntb_msg_set_mask.exit
  call void @__sanitizer_cov_trace_pc() #12
  %shr.i = lshr i64 %retval.0.i94, 32
  %conv2.i = trunc i64 %shr.i to i32
  %34 = tail call i32 @llvm.cttz.i32(i32 %conv2.i, i1 false) #10, !range !304
  %add.i = add nuw nsw i32 %34, 32
  br label %__ffs64.exit

if.end.i104:                                      ; preds = %ntb_msg_set_mask.exit
  call void @__sanitizer_cov_trace_pc() #12
  %35 = tail call i32 @llvm.cttz.i32(i32 %conv.i, i1 true) #10, !range !304
  br label %__ffs64.exit

__ffs64.exit:                                     ; preds = %if.end.i104, %if.then.i
  %retval.0.i105 = phi i32 [ %add.i, %if.then.i ], [ %35, %if.end.i104 ]
  %sh_prom = zext i32 %retval.0.i105 to i64
  %shl = shl nuw i64 1, %sh_prom
  %36 = ptrtoint ptr %perf to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %perf, align 8
  %ops.i106 = getelementptr inbounds %struct.ntb_dev, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %ops.i106 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ops.i106, align 8
  %msg_clear_mask.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %39, i32 0, i32 45
  %40 = ptrtoint ptr %msg_clear_mask.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %msg_clear_mask.i, align 4
  %tobool.not.i107 = icmp eq ptr %41, null
  br i1 %tobool.not.i107, label %__ffs64.exit.ntb_msg_clear_mask.exit_crit_edge, label %if.end.i109

__ffs64.exit.ntb_msg_clear_mask.exit_crit_edge:   ; preds = %__ffs64.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %ntb_msg_clear_mask.exit

if.end.i109:                                      ; preds = %__ffs64.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call.i108 = tail call i32 %41(ptr noundef %37, i64 noundef %shl) #10
  br label %ntb_msg_clear_mask.exit

ntb_msg_clear_mask.exit:                          ; preds = %if.end.i109, %__ffs64.exit.ntb_msg_clear_mask.exit_crit_edge
  %retval.0.i110 = phi i32 [ %call.i108, %if.end.i109 ], [ -22, %__ffs64.exit.ntb_msg_clear_mask.exit_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @perf_enable_service.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@perf_enable_service, %if.then19)) #10
          to label %if.end49 [label %if.then19], !srcloc !303

if.then19:                                        ; preds = %ntb_msg_clear_mask.exit
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %perf to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %perf, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @perf_enable_service.__UNIQUE_ID_ddebug263, ptr noundef %43, ptr noundef nonnull @.str.77, i64 noundef %shl) #10
  br label %if.end49

if.else:                                          ; preds = %if.end
  %spad_count.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %19, i32 0, i32 33
  %44 = ptrtoint ptr %spad_count.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %spad_count.i, align 4
  %tobool.not.i112 = icmp eq ptr %45, null
  br i1 %tobool.not.i112, label %if.else.for.end_crit_edge, label %ntb_spad_count.exit

if.else.for.end_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

ntb_spad_count.exit:                              ; preds = %if.else
  %call.i113 = tail call i32 %45(ptr noundef %17) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i113)
  %cmp24126 = icmp sgt i32 %call.i113, 0
  br i1 %cmp24126, label %ntb_spad_count.exit.for.body_crit_edge, label %ntb_spad_count.exit.for.end_crit_edge

ntb_spad_count.exit.for.end_crit_edge:            ; preds = %ntb_spad_count.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

ntb_spad_count.exit.for.body_crit_edge:           ; preds = %ntb_spad_count.exit
  br label %for.body

for.body:                                         ; preds = %ntb_spad_write.exit.for.body_crit_edge, %ntb_spad_count.exit.for.body_crit_edge
  %sidx.0127 = phi i32 [ %inc, %ntb_spad_write.exit.for.body_crit_edge ], [ 0, %ntb_spad_count.exit.for.body_crit_edge ]
  %46 = ptrtoint ptr %perf to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %perf, align 8
  %ops.i116 = getelementptr inbounds %struct.ntb_dev, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %ops.i116 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ops.i116, align 8
  %spad_write.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %49, i32 0, i32 35
  %50 = ptrtoint ptr %spad_write.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %spad_write.i, align 4
  %tobool.not.i117 = icmp eq ptr %51, null
  br i1 %tobool.not.i117, label %for.body.ntb_spad_write.exit_crit_edge, label %if.end.i119

for.body.ntb_spad_write.exit_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %ntb_spad_write.exit

if.end.i119:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %call.i118 = tail call i32 %51(ptr noundef %47, i32 noundef %sidx.0127, i32 noundef -1) #10
  br label %ntb_spad_write.exit

ntb_spad_write.exit:                              ; preds = %if.end.i119, %for.body.ntb_spad_write.exit_crit_edge
  %inc = add nuw nsw i32 %sidx.0127, 1
  %exitcond.not = icmp eq i32 %inc, %call.i113
  br i1 %exitcond.not, label %ntb_spad_write.exit.for.end_crit_edge, label %ntb_spad_write.exit.for.body_crit_edge

ntb_spad_write.exit.for.body_crit_edge:           ; preds = %ntb_spad_write.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

ntb_spad_write.exit.for.end_crit_edge:            ; preds = %ntb_spad_write.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %ntb_spad_write.exit.for.end_crit_edge, %ntb_spad_count.exit.for.end_crit_edge, %if.else.for.end_crit_edge
  %gidx = getelementptr inbounds %struct.perf_ctx, ptr %perf, i32 0, i32 1
  %52 = ptrtoint ptr %gidx to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %gidx, align 4
  %sh_prom27 = zext i32 %53 to i64
  %shl28 = shl nuw i64 1, %sh_prom27
  %54 = ptrtoint ptr %perf to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %perf, align 8
  %ops.i120 = getelementptr inbounds %struct.ntb_dev, ptr %55, i32 0, i32 3
  %56 = ptrtoint ptr %ops.i120 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ops.i120, align 8
  %db_clear_mask.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %57, i32 0, i32 24
  %58 = ptrtoint ptr %db_clear_mask.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %db_clear_mask.i, align 4
  %call.i121 = tail call i32 %59(ptr noundef %55, i64 noundef %shl28) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @perf_enable_service.__UNIQUE_ID_ddebug264, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@perf_enable_service, %if.then43)) #10
          to label %if.end49 [label %if.then43], !srcloc !303

if.then43:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %60 = ptrtoint ptr %perf to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %perf, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @perf_enable_service.__UNIQUE_ID_ddebug264, ptr noundef %61, ptr noundef nonnull @.str.78, i64 noundef %shl28) #10
  br label %if.end49

if.end49:                                         ; preds = %if.then43, %for.end, %if.then19, %ntb_msg_clear_mask.exit
  %ret.0 = phi i32 [ %call.i121, %if.then43 ], [ %retval.0.i110, %if.then19 ], [ %retval.0.i110, %ntb_msg_clear_mask.exit ], [ %call.i121, %for.end ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool50.not = icmp eq i32 %ret.0, 0
  %62 = ptrtoint ptr %perf to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %perf, align 8
  br i1 %tobool50.not, label %if.end53, label %if.then51

if.then51:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ntb_clear_ctx(ptr noundef %63) #10
  br label %cleanup

if.end53:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  %ops.i122 = getelementptr inbounds %struct.ntb_dev, ptr %63, i32 0, i32 3
  %64 = ptrtoint ptr %ops.i122 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ops.i122, align 8
  %link_enable.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %65, i32 0, i32 5
  %66 = ptrtoint ptr %link_enable.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %link_enable.i, align 4
  %call.i123 = tail call i32 %67(ptr noundef %63, i32 noundef -1, i32 noundef -1) #10
  %68 = ptrtoint ptr %perf to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %perf, align 8
  tail call void @ntb_link_event(ptr noundef %69) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end53, %if.then51, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.then51 ], [ 0, %if.end53 ], [ %call4, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntb_default_peer_port_count(ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_service_work(ptr noundef %work) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -52
  %sts = getelementptr i8, ptr %work, i32 44
  %call = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %sts) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %outbuf_size = getelementptr i8, ptr %work, i32 -28
  %0 = ptrtoint ptr %outbuf_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %outbuf_size, align 8
  %conv = zext i32 %1 to i64
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %cmd_send.i = getelementptr inbounds %struct.perf_ctx, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %cmd_send.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cmd_send.i, align 8
  %call.i = tail call i32 %5(ptr noundef %add.ptr, i32 noundef 0, i64 noundef %conv) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call3 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %sts) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end.if.end7_crit_edge, label %if.then5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @perf_setup_inbuf(ptr noundef %add.ptr)
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  %call9 = tail call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %sts) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end7.if.end14_crit_edge, label %if.then11

if.end7.if.end14_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %inbuf_xlat = getelementptr i8, ptr %work, i32 -12
  %6 = ptrtoint ptr %inbuf_xlat to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %inbuf_xlat, align 8
  %conv12 = zext i32 %7 to i64
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 8
  %cmd_send.i54 = getelementptr inbounds %struct.perf_ctx, ptr %9, i32 0, i32 10
  %10 = ptrtoint ptr %cmd_send.i54 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cmd_send.i54, align 8
  %call.i55 = tail call i32 %11(ptr noundef %add.ptr, i32 noundef 2, i64 noundef %conv12) #10
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end7.if.end14_crit_edge
  %call16 = tail call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %sts) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end14.if.end20_crit_edge, label %if.then18

if.end14.if.end20_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then18:                                        ; preds = %if.end14
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %ops.i.i = getelementptr inbounds %struct.ntb_dev, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i.i, align 8
  %peer_mw_set_trans.i.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %17, i32 0, i32 13
  %18 = ptrtoint ptr %peer_mw_set_trans.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %peer_mw_set_trans.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %19, null
  br i1 %tobool.not.i.i, label %if.then18.if.end.i_crit_edge, label %ntb_peer_mw_set_trans.exit.i

if.then18.if.end.i_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

ntb_peer_mw_set_trans.exit.i:                     ; preds = %if.then18
  %outbuf_size.i = getelementptr i8, ptr %work, i32 -28
  %20 = ptrtoint ptr %outbuf_size.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %outbuf_size.i, align 8
  %outbuf_xlat.i = getelementptr i8, ptr %work, i32 -36
  %22 = ptrtoint ptr %outbuf_xlat.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %outbuf_xlat.i, align 8
  %gidx.i = getelementptr i8, ptr %work, i32 -44
  %24 = ptrtoint ptr %gidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %gidx.i, align 8
  %pidx.i = getelementptr i8, ptr %work, i32 -48
  %26 = ptrtoint ptr %pidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pidx.i, align 4
  %call.i.i = tail call i32 %19(ptr noundef %15, i32 noundef %27, i32 noundef %25, i64 noundef %23, i32 noundef %21) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %ntb_peer_mw_set_trans.exit.i.if.end.i_crit_edge, label %do.end.i

ntb_peer_mw_set_trans.exit.i.if.end.i_crit_edge:  ; preds = %ntb_peer_mw_set_trans.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

do.end.i:                                         ; preds = %ntb_peer_mw_set_trans.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %13, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.37) #13
  br label %if.end20

if.end.i:                                         ; preds = %ntb_peer_mw_set_trans.exit.i.if.end.i_crit_edge, %if.then18.if.end.i_crit_edge
  tail call void @_set_bit(i32 noundef 5, ptr noundef %sts) #10
  %init_comp.i = getelementptr i8, ptr %work, i32 48
  tail call void @complete_all(ptr noundef %init_comp.i) #10
  br label %if.end20

if.end20:                                         ; preds = %if.end.i, %do.end.i, %if.end14.if.end20_crit_edge
  %call22 = tail call i32 @_test_and_clear_bit(i32 noundef 4, ptr noundef %sts) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end20.if.end34_crit_edge, label %if.then24

if.end20.if.end34_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.then24:                                        ; preds = %if.end20
  %init_comp = getelementptr i8, ptr %work, i32 48
  %30 = ptrtoint ptr %init_comp to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %init_comp, align 4
  %wait.i = getelementptr i8, ptr %work, i32 52
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.39, ptr noundef nonnull @init_completion.__key) #10
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %sts) #10
  %31 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %add.ptr, align 8
  %busy_flag = getelementptr inbounds %struct.perf_ctx, ptr %32, i32 0, i32 4
  %33 = ptrtoint ptr %busy_flag to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %busy_flag, align 4
  %and1.i = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool27.not = icmp eq i32 %and1.i, 0
  br i1 %tobool27.not, label %if.then24.if.end33_crit_edge, label %land.lhs.true

if.then24.if.end33_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

land.lhs.true:                                    ; preds = %if.then24
  %test_peer = getelementptr inbounds %struct.perf_ctx, ptr %32, i32 0, i32 8
  %35 = ptrtoint ptr %test_peer to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %test_peer, align 8
  %cmp = icmp eq ptr %add.ptr, %36
  br i1 %cmp, label %do.end, label %land.lhs.true.if.end33_crit_edge

land.lhs.true.if.end33_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

do.end:                                           ; preds = %land.lhs.true
  %37 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %32, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %38, ptr noundef nonnull @.str.13) #13
  %39 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %add.ptr, align 8
  %tsync.i = getelementptr inbounds %struct.perf_ctx, ptr %40, i32 0, i32 6
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tsync.i, i32 noundef 4) #10
  %41 = ptrtoint ptr %tsync.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile i32 -1, ptr %tsync.i, align 4
  %twait.i = getelementptr inbounds %struct.perf_ctx, ptr %40, i32 0, i32 5
  tail call void @__wake_up(ptr noundef %twait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.end
  %tidx.09.i = phi i32 [ 0, %do.end ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %dma_wait.i = getelementptr %struct.perf_ctx, ptr %40, i32 0, i32 9, i32 %tidx.09.i, i32 3
  tail call void @__wake_up(ptr noundef %dma_wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  %work.i = getelementptr %struct.perf_ctx, ptr %40, i32 0, i32 9, i32 %tidx.09.i, i32 9
  %call.i56 = tail call zeroext i1 @cancel_work_sync(ptr noundef %work.i) #10
  %inc.i = add nuw nsw i32 %tidx.09.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.body.i.if.end33_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.if.end33_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.end33:                                         ; preds = %for.body.i.if.end33_crit_edge, %land.lhs.true.if.end33_crit_edge, %if.then24.if.end33_crit_edge
  %42 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %add.ptr, align 8
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 8
  %pidx.i57 = getelementptr i8, ptr %work, i32 -48
  %46 = ptrtoint ptr %pidx.i57 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %pidx.i57, align 4
  %gidx.i58 = getelementptr i8, ptr %work, i32 -44
  %48 = ptrtoint ptr %gidx.i58 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %gidx.i58, align 8
  %ops.i.i59 = getelementptr inbounds %struct.ntb_dev, ptr %45, i32 0, i32 3
  %50 = ptrtoint ptr %ops.i.i59 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ops.i.i59, align 8
  %peer_mw_clear_trans.i.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %51, i32 0, i32 14
  %52 = ptrtoint ptr %peer_mw_clear_trans.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %peer_mw_clear_trans.i.i, align 4
  %tobool.not.i.i60 = icmp eq ptr %53, null
  br i1 %tobool.not.i.i60, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end33
  %peer_mw_set_trans.i.i.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %51, i32 0, i32 13
  %54 = ptrtoint ptr %peer_mw_set_trans.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %peer_mw_set_trans.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %55, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.perf_free_outbuf.exit_crit_edge, label %if.end.i.i.i

if.then.i.i.perf_free_outbuf.exit_crit_edge:      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %perf_free_outbuf.exit

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i61 = tail call i32 %55(ptr noundef %45, i32 noundef %47, i32 noundef %49, i64 noundef 0, i32 noundef 0) #10
  br label %perf_free_outbuf.exit

if.end.i.i:                                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i.i = tail call i32 %53(ptr noundef %45, i32 noundef %47, i32 noundef %49) #10
  br label %perf_free_outbuf.exit

perf_free_outbuf.exit:                            ; preds = %if.end.i.i, %if.end.i.i.i, %if.then.i.i.perf_free_outbuf.exit_crit_edge
  %inbuf.i = getelementptr i8, ptr %work, i32 -4
  %56 = ptrtoint ptr %inbuf.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %inbuf.i, align 8
  %tobool.not.i62 = icmp eq ptr %57, null
  br i1 %tobool.not.i62, label %perf_free_outbuf.exit.if.end34_crit_edge, label %if.end.i67

perf_free_outbuf.exit.if.end34_crit_edge:         ; preds = %perf_free_outbuf.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.end.i67:                                       ; preds = %perf_free_outbuf.exit
  %58 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %add.ptr, align 8
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 8
  %62 = ptrtoint ptr %pidx.i57 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %pidx.i57, align 4
  %64 = ptrtoint ptr %gidx.i58 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %gidx.i58, align 8
  %ops.i.i65 = getelementptr inbounds %struct.ntb_dev, ptr %61, i32 0, i32 3
  %66 = ptrtoint ptr %ops.i.i65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ops.i.i65, align 8
  %mw_clear_trans.i.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %67, i32 0, i32 10
  %68 = ptrtoint ptr %mw_clear_trans.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %mw_clear_trans.i.i, align 4
  %tobool.not.i.i66 = icmp eq ptr %69, null
  br i1 %tobool.not.i.i66, label %if.then.i.i69, label %if.end.i.i73

if.then.i.i69:                                    ; preds = %if.end.i67
  %mw_set_trans.i.i.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %67, i32 0, i32 9
  %70 = ptrtoint ptr %mw_set_trans.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %mw_set_trans.i.i.i, align 4
  %tobool.not.i.i.i68 = icmp eq ptr %71, null
  br i1 %tobool.not.i.i.i68, label %if.then.i.i69.ntb_mw_clear_trans.exit.i_crit_edge, label %if.end.i.i.i71

if.then.i.i69.ntb_mw_clear_trans.exit.i_crit_edge: ; preds = %if.then.i.i69
  call void @__sanitizer_cov_trace_pc() #12
  br label %ntb_mw_clear_trans.exit.i

if.end.i.i.i71:                                   ; preds = %if.then.i.i69
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i70 = tail call i32 %71(ptr noundef %61, i32 noundef %63, i32 noundef %65, i32 noundef 0, i32 noundef 0) #10
  br label %ntb_mw_clear_trans.exit.i

if.end.i.i73:                                     ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i.i72 = tail call i32 %69(ptr noundef %61, i32 noundef %63, i32 noundef %65) #10
  br label %ntb_mw_clear_trans.exit.i

ntb_mw_clear_trans.exit.i:                        ; preds = %if.end.i.i73, %if.end.i.i.i71, %if.then.i.i69.ntb_mw_clear_trans.exit.i_crit_edge
  %72 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %add.ptr, align 8
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %73, align 8
  %pdev.i = getelementptr inbounds %struct.ntb_dev, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %77, i32 0, i32 44
  %inbuf_size.i = getelementptr i8, ptr %work, i32 -8
  %78 = ptrtoint ptr %inbuf_size.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %inbuf_size.i, align 4
  %80 = ptrtoint ptr %inbuf.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %inbuf.i, align 8
  %inbuf_xlat.i = getelementptr i8, ptr %work, i32 -12
  %82 = ptrtoint ptr %inbuf_xlat.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %inbuf_xlat.i, align 8
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef %79, ptr noundef %81, i32 noundef %83, i32 noundef 0) #10
  %84 = ptrtoint ptr %inbuf.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr null, ptr %inbuf.i, align 8
  br label %if.end34

if.end34:                                         ; preds = %ntb_mw_clear_trans.exit.i, %perf_free_outbuf.exit.if.end34_crit_edge, %if.end20.if.end34_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntb_default_port_number(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntb_default_peer_port_number(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @perf_setup_inbuf(ptr noundef %peer) unnamed_addr #4 align 64 {
entry:
  %xlat_align = alloca i32, align 4
  %size_align = alloca i32, align 4
  %size_max = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %xlat_align) #10
  %0 = ptrtoint ptr %xlat_align to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %xlat_align, align 4, !annotation !302
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size_align) #10
  %1 = ptrtoint ptr %size_align to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %size_align, align 4, !annotation !302
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size_max) #10
  %2 = ptrtoint ptr %size_max to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %size_max, align 4, !annotation !302
  %3 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %peer, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %pidx = getelementptr inbounds %struct.perf_peer, ptr %peer, i32 0, i32 1
  %7 = ptrtoint ptr %pidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pidx, align 4
  %gidx = getelementptr inbounds %struct.perf_ctx, ptr %4, i32 0, i32 1
  %9 = ptrtoint ptr %gidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %gidx, align 4
  %ops.i.i = getelementptr inbounds %struct.ntb_dev, ptr %6, i32 0, i32 3
  %11 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops.i.i, align 8
  %link_is_up.i.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %link_is_up.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %link_is_up.i.i, align 4
  %call.i.i = tail call i64 %14(ptr noundef %6, ptr noundef null, ptr noundef null) #10
  %sh_prom.i = zext i32 %8 to i64
  %shl.i = shl nuw i64 1, %sh_prom.i
  %and.i = and i64 %call.i.i, %shl.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %entry.do.end_crit_edge, label %ntb_mw_get_align.exit

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

ntb_mw_get_align.exit:                            ; preds = %entry
  %15 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops.i.i, align 8
  %mw_get_align.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %16, i32 0, i32 8
  %17 = ptrtoint ptr %mw_get_align.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mw_get_align.i, align 4
  %call1.i = call i32 %18(ptr noundef %6, i32 noundef %8, i32 noundef %10, ptr noundef nonnull %xlat_align, ptr noundef nonnull %size_align, ptr noundef nonnull %size_max) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.not, label %if.end, label %ntb_mw_get_align.exit.do.end_crit_edge

ntb_mw_get_align.exit.do.end_crit_edge:           ; preds = %ntb_mw_get_align.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %ntb_mw_get_align.exit.do.end_crit_edge, %entry.do.end_crit_edge
  %19 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %4, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.20) #13
  br label %cleanup

if.end:                                           ; preds = %ntb_mw_get_align.exit
  %inbuf_size = getelementptr inbounds %struct.perf_peer, ptr %peer, i32 0, i32 9
  %21 = ptrtoint ptr %inbuf_size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %inbuf_size, align 4
  %23 = ptrtoint ptr %size_max to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %size_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp = icmp ugt i32 %22, %24
  br i1 %cmp, label %do.end6, label %if.end10

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %4, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.23, ptr noundef %inbuf_size, ptr noundef nonnull %size_max) #13
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %sub = add i32 %22, -1
  %27 = ptrtoint ptr %size_align to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %size_align, align 4
  %sub12 = add i32 %28, -1
  %or = or i32 %sub12, %sub
  %add = add i32 %or, 1
  %29 = ptrtoint ptr %inbuf_size to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %add, ptr %inbuf_size, align 4
  %inbuf.i = getelementptr inbounds %struct.perf_peer, ptr %peer, i32 0, i32 10
  %30 = ptrtoint ptr %inbuf.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %inbuf.i, align 8
  %tobool.not.i1 = icmp eq ptr %31, null
  br i1 %tobool.not.i1, label %if.end10.perf_free_inbuf.exit_crit_edge, label %if.end.i3

if.end10.perf_free_inbuf.exit_crit_edge:          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %perf_free_inbuf.exit

if.end.i3:                                        ; preds = %if.end10
  %32 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %peer, align 8
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 8
  %36 = ptrtoint ptr %pidx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pidx, align 4
  %gidx.i = getelementptr inbounds %struct.perf_peer, ptr %peer, i32 0, i32 2
  %38 = ptrtoint ptr %gidx.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %gidx.i, align 8
  %ops.i.i2 = getelementptr inbounds %struct.ntb_dev, ptr %35, i32 0, i32 3
  %40 = ptrtoint ptr %ops.i.i2 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ops.i.i2, align 8
  %mw_clear_trans.i.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %41, i32 0, i32 10
  %42 = ptrtoint ptr %mw_clear_trans.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mw_clear_trans.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %43, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end.i3
  %mw_set_trans.i.i.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %41, i32 0, i32 9
  %44 = ptrtoint ptr %mw_set_trans.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mw_set_trans.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %45, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.ntb_mw_clear_trans.exit.i_crit_edge, label %if.end.i.i.i

if.then.i.i.ntb_mw_clear_trans.exit.i_crit_edge:  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ntb_mw_clear_trans.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = call i32 %45(ptr noundef %35, i32 noundef %37, i32 noundef %39, i32 noundef 0, i32 noundef 0) #10
  br label %ntb_mw_clear_trans.exit.i

if.end.i.i:                                       ; preds = %if.end.i3
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i.i = call i32 %43(ptr noundef %35, i32 noundef %37, i32 noundef %39) #10
  br label %ntb_mw_clear_trans.exit.i

ntb_mw_clear_trans.exit.i:                        ; preds = %if.end.i.i, %if.end.i.i.i, %if.then.i.i.ntb_mw_clear_trans.exit.i_crit_edge
  %46 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %peer, align 8
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 8
  %pdev.i = getelementptr inbounds %struct.ntb_dev, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %51, i32 0, i32 44
  %52 = ptrtoint ptr %inbuf_size to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %inbuf_size, align 4
  %54 = ptrtoint ptr %inbuf.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %inbuf.i, align 8
  %inbuf_xlat.i = getelementptr inbounds %struct.perf_peer, ptr %peer, i32 0, i32 8
  %56 = ptrtoint ptr %inbuf_xlat.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %inbuf_xlat.i, align 8
  call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef %53, ptr noundef %55, i32 noundef %57, i32 noundef 0) #10
  %58 = ptrtoint ptr %inbuf.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %inbuf.i, align 8
  br label %perf_free_inbuf.exit

perf_free_inbuf.exit:                             ; preds = %ntb_mw_clear_trans.exit.i, %if.end10.perf_free_inbuf.exit_crit_edge
  %59 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %4, align 8
  %pdev = getelementptr inbounds %struct.ntb_dev, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pdev, align 8
  %dev15 = getelementptr inbounds %struct.pci_dev, ptr %62, i32 0, i32 44
  %63 = ptrtoint ptr %inbuf_size to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %inbuf_size, align 4
  %inbuf_xlat = getelementptr inbounds %struct.perf_peer, ptr %peer, i32 0, i32 8
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %dev15, i32 noundef %64, ptr noundef %inbuf_xlat, i32 noundef 3264, i32 noundef 0) #10
  %65 = ptrtoint ptr %inbuf.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call.i, ptr %inbuf.i, align 8
  %tobool19.not = icmp eq ptr %call.i, null
  br i1 %tobool19.not, label %do.end23, label %if.end27

do.end23:                                         ; preds = %perf_free_inbuf.exit
  call void @__sanitizer_cov_trace_pc() #12
  %66 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %4, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull @.str.26, ptr noundef %inbuf_size) #13
  br label %cleanup

if.end27:                                         ; preds = %perf_free_inbuf.exit
  %68 = ptrtoint ptr %inbuf_xlat to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %inbuf_xlat, align 8
  %70 = ptrtoint ptr %xlat_align to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %xlat_align, align 4
  %sub29 = add i32 %71, -1
  %and = and i32 %sub29, %69
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp30 = icmp eq i32 %and, 0
  %72 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %4, align 8
  br i1 %cmp30, label %if.end37, label %if.then31

if.then31:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.29) #13
  br label %err_free_inbuf

if.end37:                                         ; preds = %if.end27
  %ops.i = getelementptr inbounds %struct.ntb_dev, ptr %73, i32 0, i32 3
  %74 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ops.i, align 8
  %mw_set_trans.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %75, i32 0, i32 9
  %76 = ptrtoint ptr %mw_set_trans.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %mw_set_trans.i, align 4
  %tobool.not.i4 = icmp eq ptr %77, null
  br i1 %tobool.not.i4, label %if.end37.if.end51_crit_edge, label %ntb_mw_set_trans.exit

if.end37.if.end51_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

ntb_mw_set_trans.exit:                            ; preds = %if.end37
  %78 = ptrtoint ptr %inbuf_size to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %inbuf_size, align 4
  %gidx40 = getelementptr inbounds %struct.perf_peer, ptr %peer, i32 0, i32 2
  %80 = ptrtoint ptr %gidx40 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %gidx40, align 8
  %82 = ptrtoint ptr %pidx to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %pidx, align 4
  %call.i5 = call i32 %77(ptr noundef %73, i32 noundef %83, i32 noundef %81, i32 noundef %69, i32 noundef %79) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i5)
  %tobool44.not = icmp eq i32 %call.i5, 0
  br i1 %tobool44.not, label %ntb_mw_set_trans.exit.if.end51_crit_edge, label %do.end48

ntb_mw_set_trans.exit.if.end51_crit_edge:         ; preds = %ntb_mw_set_trans.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

do.end48:                                         ; preds = %ntb_mw_set_trans.exit
  call void @__sanitizer_cov_trace_pc() #12
  %84 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %4, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %85, ptr noundef nonnull @.str.32) #13
  br label %err_free_inbuf

if.end51:                                         ; preds = %ntb_mw_set_trans.exit.if.end51_crit_edge, %if.end37.if.end51_crit_edge
  %sts.i = getelementptr inbounds %struct.perf_peer, ptr %peer, i32 0, i32 12
  call void @_set_bit(i32 noundef 2, ptr noundef %sts.i) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @perf_cmd_exec.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@perf_setup_inbuf, %if.then.i)) #10
          to label %perf_cmd_exec.exit [label %if.then.i], !srcloc !303

if.then.i:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  %86 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %peer, align 8
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %87, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @perf_cmd_exec.__UNIQUE_ID_ddebug256, ptr noundef %89, ptr noundef nonnull @.str.36, i32 noundef 2) #10
  br label %perf_cmd_exec.exit

perf_cmd_exec.exit:                               ; preds = %if.then.i, %if.end51
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_highpri_wq to i32))
  %90 = load ptr, ptr @system_highpri_wq, align 4
  %service.i = getelementptr inbounds %struct.perf_peer, ptr %peer, i32 0, i32 11
  %call.i.i8 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %90, ptr noundef %service.i) #10
  br label %cleanup

err_free_inbuf:                                   ; preds = %do.end48, %if.then31
  %91 = ptrtoint ptr %inbuf.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %inbuf.i, align 8
  %tobool.not.i11 = icmp eq ptr %92, null
  br i1 %tobool.not.i11, label %err_free_inbuf.cleanup_crit_edge, label %if.end.i17

err_free_inbuf.cleanup_crit_edge:                 ; preds = %err_free_inbuf
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i17:                                       ; preds = %err_free_inbuf
  %93 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %peer, align 8
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %94, align 8
  %97 = ptrtoint ptr %pidx to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %pidx, align 4
  %gidx.i13 = getelementptr inbounds %struct.perf_peer, ptr %peer, i32 0, i32 2
  %99 = ptrtoint ptr %gidx.i13 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %gidx.i13, align 8
  %ops.i.i14 = getelementptr inbounds %struct.ntb_dev, ptr %96, i32 0, i32 3
  %101 = ptrtoint ptr %ops.i.i14 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %ops.i.i14, align 8
  %mw_clear_trans.i.i15 = getelementptr inbounds %struct.ntb_dev_ops, ptr %102, i32 0, i32 10
  %103 = ptrtoint ptr %mw_clear_trans.i.i15 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %mw_clear_trans.i.i15, align 4
  %tobool.not.i.i16 = icmp eq ptr %104, null
  br i1 %tobool.not.i.i16, label %if.then.i.i20, label %if.end.i.i24

if.then.i.i20:                                    ; preds = %if.end.i17
  %mw_set_trans.i.i.i18 = getelementptr inbounds %struct.ntb_dev_ops, ptr %102, i32 0, i32 9
  %105 = ptrtoint ptr %mw_set_trans.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %mw_set_trans.i.i.i18, align 4
  %tobool.not.i.i.i19 = icmp eq ptr %106, null
  br i1 %tobool.not.i.i.i19, label %if.then.i.i20.ntb_mw_clear_trans.exit.i29_crit_edge, label %if.end.i.i.i22

if.then.i.i20.ntb_mw_clear_trans.exit.i29_crit_edge: ; preds = %if.then.i.i20
  call void @__sanitizer_cov_trace_pc() #12
  br label %ntb_mw_clear_trans.exit.i29

if.end.i.i.i22:                                   ; preds = %if.then.i.i20
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i21 = call i32 %106(ptr noundef %96, i32 noundef %98, i32 noundef %100, i32 noundef 0, i32 noundef 0) #10
  br label %ntb_mw_clear_trans.exit.i29

if.end.i.i24:                                     ; preds = %if.end.i17
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i.i23 = call i32 %104(ptr noundef %96, i32 noundef %98, i32 noundef %100) #10
  br label %ntb_mw_clear_trans.exit.i29

ntb_mw_clear_trans.exit.i29:                      ; preds = %if.end.i.i24, %if.end.i.i.i22, %if.then.i.i20.ntb_mw_clear_trans.exit.i29_crit_edge
  %107 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %peer, align 8
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %108, align 8
  %pdev.i25 = getelementptr inbounds %struct.ntb_dev, ptr %110, i32 0, i32 1
  %111 = ptrtoint ptr %pdev.i25 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %pdev.i25, align 8
  %dev.i26 = getelementptr inbounds %struct.pci_dev, ptr %112, i32 0, i32 44
  %113 = ptrtoint ptr %inbuf_size to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %inbuf_size, align 4
  %115 = ptrtoint ptr %inbuf.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %inbuf.i, align 8
  %117 = ptrtoint ptr %inbuf_xlat to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %inbuf_xlat, align 8
  call void @dma_free_attrs(ptr noundef %dev.i26, i32 noundef %114, ptr noundef %116, i32 noundef %118, i32 noundef 0) #10
  %119 = ptrtoint ptr %inbuf.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr null, ptr %inbuf.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %ntb_mw_clear_trans.exit.i29, %err_free_inbuf.cleanup_crit_edge, %perf_cmd_exec.exit, %do.end23, %do.end6, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size_max) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size_align) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %xlat_align) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete_all(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_wc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_thread_work(ptr noundef %work) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -92
  %call = tail call fastcc i32 @perf_init_test(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %status = getelementptr i8, ptr %work, i32 -4
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call, ptr %status, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr, align 8
  %test_peer.i = getelementptr inbounds %struct.perf_ctx, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %test_peer.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %test_peer.i, align 8
  %5 = load i8, ptr @total_order, align 1
  %sh_prom.i = zext i8 %5 to i64
  %6 = load i8, ptr @chunk_order, align 1
  %sh_prom4.i = zext i8 %6 to i64
  %shl5.i = shl nuw i64 1, %sh_prom4.i
  %outbuf_size.i = getelementptr inbounds %struct.perf_peer, ptr %4, i32 0, i32 4
  %7 = ptrtoint ptr %outbuf_size.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %outbuf_size.i, align 8
  %conv6.i = zext i32 %8 to i64
  %9 = tail call i64 @llvm.umin.i64(i64 %shl5.i, i64 %conv6.i) #10
  %src.i = getelementptr i8, ptr %work, i32 -24
  %10 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %src.i, align 4
  %outbuf.i = getelementptr inbounds %struct.perf_peer, ptr %4, i32 0, i32 5
  %12 = ptrtoint ptr %outbuf.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %outbuf.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 %8
  %call.i = tail call i64 @ktime_get() #10
  %duration.i = getelementptr i8, ptr %work, i32 -12
  %14 = ptrtoint ptr %duration.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %call.i, ptr %duration.i, align 8
  %copied.i = getelementptr i8, ptr %work, i32 -20
  %15 = ptrtoint ptr %copied.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %copied.i, align 8
  %.highbits65.i = lshr i64 %16, %sh_prom.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.highbits65.i)
  %cmp1066.i = icmp eq i64 %.highbits65.i, 0
  br i1 %cmp1066.i, label %while.body.lr.ph.i, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

while.body.lr.ph.i:                               ; preds = %if.end
  %conv12.i = trunc i64 %9 to i32
  %dma_chan.i.i = getelementptr i8, ptr %work, i32 -28
  %dma_sync.i.i = getelementptr i8, ptr %work, i32 -84
  br label %while.body.i

while.body.i:                                     ; preds = %if.end26.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %flt_src.069.i = phi ptr [ %11, %while.body.lr.ph.i ], [ %flt_src.1.i, %if.end26.i.while.body.i_crit_edge ]
  %flt_dst.067.i = phi ptr [ %13, %while.body.lr.ph.i ], [ %flt_dst.1.i, %if.end26.i.while.body.i_crit_edge ]
  %17 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr, align 8
  %test_peer.i.i = getelementptr inbounds %struct.perf_ctx, ptr %18, i32 0, i32 8
  %19 = ptrtoint ptr %test_peer.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %test_peer.i.i, align 8
  %21 = load i8, ptr @use_dma, align 1, !range !305
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i.i = icmp eq i8 %21, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mmiocpy(ptr noundef %flt_dst.067.i, ptr noundef %flt_src.069.i, i32 noundef %conv12.i) #10
  br label %ret_check_tsync.i.i

if.end.i.i:                                       ; preds = %while.body.i
  %22 = ptrtoint ptr %dma_chan.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dma_chan.i.i, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %dev.i.i = getelementptr inbounds %struct.dma_device, ptr %25, i32 0, i32 15
  %26 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i.i, align 4
  %28 = ptrtoint ptr %flt_src.069.i to i32
  %and.i.i = and i32 %28, 4095
  %29 = ptrtoint ptr %flt_dst.067.i to i32
  %and3.i.i = and i32 %29, 4095
  %copy_align.i.i.i = getelementptr inbounds %struct.dma_device, ptr %25, i32 0, i32 10
  %30 = ptrtoint ptr %copy_align.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %copy_align.i.i.i, align 4
  %notmask.i.i.i.i = shl nsw i32 -1, %31
  %sub.i.i.i.i = xor i32 %notmask.i.i.i.i, -1
  %or.i.i.i.i = or i32 %and.i.i, %conv12.i
  %or1.i.i.i.i = or i32 %or.i.i.i.i, %and3.i.i
  %and.i.i.i.i = and i32 %or1.i.i.i.i, %sub.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.end5.i.i, label %if.end.i.i.if.then3_crit_edge

if.end.i.i.if.then3_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3

if.end5.i.i:                                      ; preds = %if.end.i.i
  %outbuf.i.i = getelementptr inbounds %struct.perf_peer, ptr %20, i32 0, i32 5
  %32 = ptrtoint ptr %outbuf.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %outbuf.i.i, align 4
  %dma_dst_addr.i.i = getelementptr inbounds %struct.perf_peer, ptr %20, i32 0, i32 7
  %34 = ptrtoint ptr %dma_dst_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dma_dst_addr.i.i, align 4
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %33 to i32
  %sub.ptr.sub.i.i = sub i32 %29, %sub.ptr.rhs.cast.i.i
  %add.i.i = add i32 %sub.ptr.sub.i.i, %35
  %call6.i.i = tail call ptr @dmaengine_get_unmap_data(ptr noundef %27, i32 noundef 1, i32 noundef 2048) #10
  %tobool7.not.i.i = icmp eq ptr %call6.i.i, null
  br i1 %tobool7.not.i.i, label %if.end5.i.i.if.then3_crit_edge, label %if.end9.i.i

if.end5.i.i.if.then3_crit_edge:                   ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3

if.end9.i.i:                                      ; preds = %if.end5.i.i
  %len10.i.i = getelementptr inbounds %struct.dmaengine_unmap_data, ptr %call6.i.i, i32 0, i32 6
  %36 = ptrtoint ptr %len10.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %conv12.i, ptr %len10.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %37 = load ptr, ptr @mem_map, align 4
  %sub.i.i = add i32 %28, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %37, i32 %shr.i.i
  %call14.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %27, ptr noundef %add.ptr.i.i, i32 noundef %and.i.i, i32 noundef %conv12.i, i32 noundef 1, i32 noundef 0) #10
  %addr.i.i = getelementptr inbounds %struct.dmaengine_unmap_data, ptr %call6.i.i, i32 0, i32 7
  %38 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %call14.i.i, ptr %addr.i.i, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %27, i32 noundef %call14.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call14.i.i)
  %cmp.i.not.i.i = icmp eq i32 %call14.i.i, -1
  br i1 %cmp.i.not.i.i, label %if.end9.i.i.err_free_resource.i.i_crit_edge, label %if.end20.i.i

if.end9.i.i.err_free_resource.i.i_crit_edge:      ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free_resource.i.i

if.end20.i.i:                                     ; preds = %if.end9.i.i
  %to_cnt.i.i = getelementptr inbounds %struct.dmaengine_unmap_data, ptr %call6.i.i, i32 0, i32 1
  %39 = ptrtoint ptr %to_cnt.i.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %to_cnt.i.i, align 2
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.then26.i.i.do.body.i.i_crit_edge, %if.end20.i.i
  %try.0.i.i = phi i32 [ 0, %if.end20.i.i ], [ %inc.i.i, %if.then26.i.i.do.body.i.i_crit_edge ]
  %40 = ptrtoint ptr %dma_chan.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dma_chan.i.i, align 8
  %42 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %addr.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %41, null
  br i1 %tobool.not.i.i.i, label %do.body.i.i.if.then26.i.i_crit_edge, label %lor.lhs.false.i.i.i

do.body.i.i.if.then26.i.i_crit_edge:              ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then26.i.i

lor.lhs.false.i.i.i:                              ; preds = %do.body.i.i
  %44 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %41, align 4
  %tobool1.not.i.i.i = icmp eq ptr %45, null
  br i1 %tobool1.not.i.i.i, label %lor.lhs.false.i.i.i.if.then26.i.i_crit_edge, label %lor.lhs.false2.i.i.i

lor.lhs.false.i.i.i.if.then26.i.i_crit_edge:      ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then26.i.i

lor.lhs.false2.i.i.i:                             ; preds = %lor.lhs.false.i.i.i
  %device_prep_dma_memcpy.i.i.i = getelementptr inbounds %struct.dma_device, ptr %45, i32 0, i32 30
  %46 = ptrtoint ptr %device_prep_dma_memcpy.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %device_prep_dma_memcpy.i.i.i, align 4
  %tobool4.not.i.i.i = icmp eq ptr %47, null
  br i1 %tobool4.not.i.i.i, label %lor.lhs.false2.i.i.i.if.then26.i.i_crit_edge, label %dmaengine_prep_dma_memcpy.exit.i.i

lor.lhs.false2.i.i.i.if.then26.i.i_crit_edge:     ; preds = %lor.lhs.false2.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then26.i.i

dmaengine_prep_dma_memcpy.exit.i.i:               ; preds = %lor.lhs.false2.i.i.i
  %call.i.i.i = tail call ptr %47(ptr noundef nonnull %41, i32 noundef %add.i.i, i32 noundef %43, i32 noundef %conv12.i, i32 noundef 3) #10
  %tobool25.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool25.not.i.i, label %dmaengine_prep_dma_memcpy.exit.i.i.if.then26.i.i_crit_edge, label %if.end31.i.i

dmaengine_prep_dma_memcpy.exit.i.i.if.then26.i.i_crit_edge: ; preds = %dmaengine_prep_dma_memcpy.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then26.i.i

if.then26.i.i:                                    ; preds = %dmaengine_prep_dma_memcpy.exit.i.i.if.then26.i.i_crit_edge, %lor.lhs.false2.i.i.i.if.then26.i.i_crit_edge, %lor.lhs.false.i.i.i.if.then26.i.i_crit_edge, %do.body.i.i.if.then26.i.i_crit_edge
  tail call void @msleep(i32 noundef 10) #10
  %inc.i.i = add nuw nsw i32 %try.0.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 101
  br i1 %exitcond.not.i.i, label %if.then26.i.i.err_free_resource.i.i_crit_edge, label %if.then26.i.i.do.body.i.i_crit_edge

if.then26.i.i.do.body.i.i_crit_edge:              ; preds = %if.then26.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i

if.then26.i.i.err_free_resource.i.i_crit_edge:    ; preds = %if.then26.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free_resource.i.i

if.end31.i.i:                                     ; preds = %dmaengine_prep_dma_memcpy.exit.i.i
  %callback.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i.i.i, i32 0, i32 6
  %48 = ptrtoint ptr %callback.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @perf_dma_copy_callback, ptr %callback.i.i, align 4
  %callback_param.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i.i.i, i32 0, i32 8
  %49 = ptrtoint ptr %callback_param.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %add.ptr, ptr %callback_param.i.i, align 4
  %kref.i.i.i = getelementptr inbounds %struct.dmaengine_unmap_data, ptr %call6.i.i, i32 0, i32 5
  %call.i.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %kref.i.i.i, i32 1, i32 3, i32 1) #10
  %50 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i.i.i, ptr %kref.i.i.i, i32 1, ptr elementtype(i32) %kref.i.i.i) #10, !srcloc !306
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %50, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i.i, label %if.end31.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i.i, !prof !301

if.end31.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge: ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i.i.i

if.else.i.i.i.i.i.i.i:                            ; preds = %if.end31.i.i
  %add.i.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  %51 = or i32 %add.i.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %51)
  %.not.i.i.i.i.i.i.i = icmp sgt i32 %51, -1
  br i1 %.not.i.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.i.dma_set_unmap.exit.i.i_crit_edge, label %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, !prof !307

if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i.i.i

if.else.i.i.i.i.i.i.i.dma_set_unmap.exit.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_set_unmap.exit.i.i

if.end15.sink.split.i.i.i.i.i.i.i:                ; preds = %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, %if.end31.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i.i = phi i32 [ 2, %if.end31.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref.i.i.i, i32 noundef %.sink.i.i.i.i.i.i.i) #10
  br label %dma_set_unmap.exit.i.i

dma_set_unmap.exit.i.i:                           ; preds = %if.end15.sink.split.i.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.i.dma_set_unmap.exit.i.i_crit_edge
  %unmap1.i.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i.i.i, i32 0, i32 9
  %52 = ptrtoint ptr %unmap1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call6.i.i, ptr %unmap1.i.i.i, align 4
  %tx_submit.i.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i.i.i, i32 0, i32 4
  %53 = ptrtoint ptr %tx_submit.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %tx_submit.i.i.i, align 4
  %call.i87.i.i = tail call i32 %54(ptr noundef nonnull %call.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i87.i.i)
  %tobool34.not.i.i = icmp sgt i32 %call.i87.i.i, -1
  tail call void @dmaengine_unmap_put(ptr noundef nonnull %call6.i.i) #10
  br i1 %tobool34.not.i.i, label %if.end36.i.i, label %dma_set_unmap.exit.i.i.err_free_resource.i.i_crit_edge

dma_set_unmap.exit.i.i.err_free_resource.i.i_crit_edge: ; preds = %dma_set_unmap.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free_resource.i.i

if.end36.i.i:                                     ; preds = %dma_set_unmap.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dma_sync.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %dma_sync.i.i, i32 1, i32 3, i32 1) #10
  %55 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dma_sync.i.i, ptr %dma_sync.i.i, i32 1, ptr elementtype(i32) %dma_sync.i.i) #10, !srcloc !308
  %56 = ptrtoint ptr %dma_chan.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dma_chan.i.i, align 8
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 4
  %device_issue_pending.i.i.i = getelementptr inbounds %struct.dma_device, ptr %59, i32 0, i32 50
  %60 = ptrtoint ptr %device_issue_pending.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %device_issue_pending.i.i.i, align 4
  tail call void %61(ptr noundef %57) #10
  br label %ret_check_tsync.i.i

ret_check_tsync.i.i:                              ; preds = %if.end36.i.i, %if.then.i.i
  %62 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %add.ptr, align 8
  %tsync.i.i = getelementptr inbounds %struct.perf_ctx, ptr %63, i32 0, i32 6
  %call.i.i86.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tsync.i.i, i32 noundef 4) #10
  %64 = ptrtoint ptr %tsync.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %tsync.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp40.i.i = icmp sgt i32 %65, 0
  br i1 %cmp40.i.i, label %if.end.i, label %ret_check_tsync.i.i.if.then3_crit_edge

ret_check_tsync.i.i.if.then3_crit_edge:           ; preds = %ret_check_tsync.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3

err_free_resource.i.i:                            ; preds = %dma_set_unmap.exit.i.i.err_free_resource.i.i_crit_edge, %if.then26.i.i.err_free_resource.i.i_crit_edge, %if.end9.i.i.err_free_resource.i.i_crit_edge
  %ret.0.i.i = phi i32 [ -5, %if.then26.i.i.err_free_resource.i.i_crit_edge ], [ -5, %if.end9.i.i.err_free_resource.i.i_crit_edge ], [ %call.i87.i.i, %dma_set_unmap.exit.i.i.err_free_resource.i.i_crit_edge ]
  tail call void @dmaengine_unmap_put(ptr noundef nonnull %call6.i.i) #10
  br label %if.then3

if.end.i:                                         ; preds = %ret_check_tsync.i.i
  %66 = ptrtoint ptr %copied.i to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %copied.i, align 8
  %add.i = add i64 %67, %9
  store i64 %add.i, ptr %copied.i, align 8
  %add.ptr15.i = getelementptr i8, ptr %flt_dst.067.i, i32 %conv12.i
  %cmp18.not.i = icmp ult ptr %add.ptr15.i, %add.ptr.i
  br i1 %cmp18.not.i, label %lor.lhs.false.i, label %if.end.i.if.then23.i_crit_edge

if.end.i.if.then23.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then23.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %add.ptr17.i = getelementptr i8, ptr %flt_src.069.i, i32 %conv12.i
  %68 = ptrtoint ptr %outbuf.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %outbuf.i, align 4
  %cmp21.i = icmp ult ptr %add.ptr15.i, %69
  br i1 %cmp21.i, label %lor.lhs.false.i.if.then23.i_crit_edge, label %lor.lhs.false.i.if.end26.i_crit_edge

lor.lhs.false.i.if.end26.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26.i

lor.lhs.false.i.if.then23.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then23.i

if.then23.i:                                      ; preds = %lor.lhs.false.i.if.then23.i_crit_edge, %if.end.i.if.then23.i_crit_edge
  %70 = ptrtoint ptr %outbuf.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %outbuf.i, align 4
  %72 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %src.i, align 4
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then23.i, %lor.lhs.false.i.if.end26.i_crit_edge
  %flt_dst.1.i = phi ptr [ %71, %if.then23.i ], [ %add.ptr15.i, %lor.lhs.false.i.if.end26.i_crit_edge ]
  %flt_src.1.i = phi ptr [ %73, %if.then23.i ], [ %add.ptr17.i, %lor.lhs.false.i.if.end26.i_crit_edge ]
  tail call void @schedule() #10
  %74 = ptrtoint ptr %copied.i to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %copied.i, align 8
  %.highbits.i = lshr i64 %75, %sh_prom.i
  %cmp10.i = icmp eq i64 %.highbits.i, 0
  br i1 %cmp10.i, label %if.end26.i.while.body.i_crit_edge, label %if.end26.i.if.end5_crit_edge

if.end26.i.if.end5_crit_edge:                     ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.end26.i.while.body.i_crit_edge:                ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

if.then3:                                         ; preds = %err_free_resource.i.i, %ret_check_tsync.i.i.if.then3_crit_edge, %if.end5.i.i.if.then3_crit_edge, %if.end.i.i.if.then3_crit_edge
  %retval.0.i.ph.i = phi i32 [ %ret.0.i.i, %err_free_resource.i.i ], [ -12, %if.end5.i.i.if.then3_crit_edge ], [ -5, %if.end.i.i.if.then3_crit_edge ], [ -4, %ret_check_tsync.i.i.if.then3_crit_edge ]
  %76 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %2, align 8
  %tidx.i = getelementptr i8, ptr %work, i32 -88
  %78 = ptrtoint ptr %tidx.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %tidx.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.53, i32 noundef %79, i32 noundef %retval.0.i.ph.i) #13
  br label %err_clear_test

if.end5:                                          ; preds = %if.end26.i.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %call6 = tail call fastcc i32 @perf_sync_test(ptr noundef %add.ptr)
  br label %err_clear_test

err_clear_test:                                   ; preds = %if.end5, %if.then3
  %call6.sink = phi i32 [ %call6, %if.end5 ], [ %retval.0.i.ph.i, %if.then3 ]
  %status7 = getelementptr i8, ptr %work, i32 -4
  %80 = ptrtoint ptr %status7 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %call6.sink, ptr %status7, align 8
  %81 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %add.ptr, align 8
  %83 = load i8, ptr @use_dma, align 1, !range !305
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool.not.i = icmp eq i8 %83, 0
  br i1 %tobool.not.i, label %err_clear_test.perf_clear_test.exit_crit_edge, label %if.end.i19

err_clear_test.perf_clear_test.exit_crit_edge:    ; preds = %err_clear_test
  call void @__sanitizer_cov_trace_pc() #12
  br label %perf_clear_test.exit

if.end.i19:                                       ; preds = %err_clear_test
  %dma_chan.i = getelementptr i8, ptr %work, i32 -28
  %84 = ptrtoint ptr %dma_chan.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dma_chan.i, align 8
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %85, align 4
  %device_terminate_all.i.i.i = getelementptr inbounds %struct.dma_device, ptr %87, i32 0, i32 47
  %88 = ptrtoint ptr %device_terminate_all.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %device_terminate_all.i.i.i, align 4
  %tobool.not.i.i.i18 = icmp eq ptr %89, null
  br i1 %tobool.not.i.i.i18, label %if.end.i19.dmaengine_terminate_sync.exit.i_crit_edge, label %dmaengine_terminate_async.exit.i.i

if.end.i19.dmaengine_terminate_sync.exit.i_crit_edge: ; preds = %if.end.i19
  call void @__sanitizer_cov_trace_pc() #12
  br label %dmaengine_terminate_sync.exit.i

dmaengine_terminate_async.exit.i.i:               ; preds = %if.end.i19
  %call.i.i21.i = tail call i32 %89(ptr noundef %85) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i21.i)
  %tobool.not.i.i20 = icmp eq i32 %call.i.i21.i, 0
  br i1 %tobool.not.i.i20, label %if.end.i.i21, label %dmaengine_terminate_async.exit.i.i.dmaengine_terminate_sync.exit.i_crit_edge

dmaengine_terminate_async.exit.i.i.dmaengine_terminate_sync.exit.i_crit_edge: ; preds = %dmaengine_terminate_async.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dmaengine_terminate_sync.exit.i

if.end.i.i21:                                     ; preds = %dmaengine_terminate_async.exit.i.i
  tail call void @__might_sleep(ptr noundef nonnull @.str.59, i32 noundef 1169) #10
  %90 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %85, align 4
  %device_synchronize.i.i.i = getelementptr inbounds %struct.dma_device, ptr %91, i32 0, i32 48
  %92 = ptrtoint ptr %device_synchronize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %device_synchronize.i.i.i, align 4
  %tobool.not.i1.i.i = icmp eq ptr %93, null
  br i1 %tobool.not.i1.i.i, label %if.end.i.i21.dmaengine_terminate_sync.exit.i_crit_edge, label %if.then.i2.i.i

if.end.i.i21.dmaengine_terminate_sync.exit.i_crit_edge: ; preds = %if.end.i.i21
  call void @__sanitizer_cov_trace_pc() #12
  br label %dmaengine_terminate_sync.exit.i

if.then.i2.i.i:                                   ; preds = %if.end.i.i21
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %93(ptr noundef %85) #10
  br label %dmaengine_terminate_sync.exit.i

dmaengine_terminate_sync.exit.i:                  ; preds = %if.then.i2.i.i, %if.end.i.i21.dmaengine_terminate_sync.exit.i_crit_edge, %dmaengine_terminate_async.exit.i.i.dmaengine_terminate_sync.exit.i_crit_edge, %if.end.i19.dmaengine_terminate_sync.exit.i_crit_edge
  %94 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %add.ptr, align 8
  %test_peer.i22 = getelementptr inbounds %struct.perf_ctx, ptr %95, i32 0, i32 8
  %96 = ptrtoint ptr %test_peer.i22 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %test_peer.i22, align 8
  %dma_dst_addr.i = getelementptr inbounds %struct.perf_peer, ptr %97, i32 0, i32 7
  %98 = ptrtoint ptr %dma_dst_addr.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %dma_dst_addr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool3.not.i = icmp eq i32 %99, 0
  br i1 %tobool3.not.i, label %dmaengine_terminate_sync.exit.i.if.end11.i_crit_edge, label %if.then4.i

dmaengine_terminate_sync.exit.i.if.end11.i_crit_edge: ; preds = %dmaengine_terminate_sync.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.i

if.then4.i:                                       ; preds = %dmaengine_terminate_sync.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %100 = ptrtoint ptr %dma_chan.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dma_chan.i, align 8
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %101, align 4
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %103, i32 0, i32 15
  %104 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %dev.i, align 4
  %outbuf_size.i23 = getelementptr inbounds %struct.perf_peer, ptr %97, i32 0, i32 4
  %106 = ptrtoint ptr %outbuf_size.i23 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %outbuf_size.i23, align 8
  tail call void @dma_unmap_resource(ptr noundef %105, i32 noundef %99, i32 noundef %107, i32 noundef 2, i32 noundef 0) #10
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then4.i, %dmaengine_terminate_sync.exit.i.if.end11.i_crit_edge
  %108 = ptrtoint ptr %dma_chan.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dma_chan.i, align 8
  tail call void @dma_release_channel(ptr noundef %109) #10
  br label %perf_clear_test.exit

perf_clear_test.exit:                             ; preds = %if.end11.i, %err_clear_test.perf_clear_test.exit_crit_edge
  %tsync.i = getelementptr inbounds %struct.perf_ctx, ptr %82, i32 0, i32 6
  %call.i.i.i24 = tail call zeroext i1 @__kasan_check_write(ptr noundef %tsync.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %tsync.i, i32 1, i32 3, i32 1) #10
  %110 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tsync.i, ptr %tsync.i, i32 1, ptr elementtype(i32) %tsync.i) #10, !srcloc !309
  %twait.i = getelementptr inbounds %struct.perf_ctx, ptr %82, i32 0, i32 5
  tail call void @__wake_up(ptr noundef %twait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  %111 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %src.i, align 4
  tail call void @kfree(ptr noundef %112) #10
  br label %cleanup

cleanup:                                          ; preds = %perf_clear_test.exit, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @perf_init_test(ptr noundef %pthr) unnamed_addr #4 align 64 {
entry:
  %dma_mask = alloca %struct.dma_cap_mask_t, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pthr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pthr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma_mask) #10
  %test_peer = getelementptr inbounds %struct.perf_ctx, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %test_peer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %test_peer, align 8
  %outbuf_size = getelementptr inbounds %struct.perf_peer, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %outbuf_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %outbuf_size, align 8
  %call.i1.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %5, i32 noundef 3264) #14
  %src = getelementptr inbounds %struct.perf_thread, ptr %pthr, i32 0, i32 5
  %6 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i1.i, ptr %src, align 4
  %tobool.not = icmp eq ptr %call.i1.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %test_peer to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %test_peer, align 8
  %outbuf_size8 = getelementptr inbounds %struct.perf_peer, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %outbuf_size8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %outbuf_size8, align 8
  tail call void @get_random_bytes(ptr noundef nonnull %call.i1.i, i32 noundef %10) #10
  %11 = load i8, ptr @use_dma, align 1, !range !305
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool9.not = icmp eq i8 %11, 0
  br i1 %tobool9.not, label %if.end.cleanup_crit_edge, label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %12 = ptrtoint ptr %dma_mask to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %dma_mask, align 4
  call void @_set_bit(i32 noundef 0, ptr noundef nonnull %dma_mask) #10
  %call12 = call ptr @__dma_request_channel(ptr noundef nonnull %dma_mask, ptr noundef nonnull @perf_dma_filter, ptr noundef %1, ptr noundef null) #10
  %dma_chan = getelementptr inbounds %struct.perf_thread, ptr %pthr, i32 0, i32 4
  %13 = ptrtoint ptr %dma_chan to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call12, ptr %dma_chan, align 8
  %tobool14.not = icmp eq ptr %call12, null
  br i1 %tobool14.not, label %do.end, label %if.end18

do.end:                                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 8
  %tidx = getelementptr inbounds %struct.perf_thread, ptr %pthr, i32 0, i32 1
  %16 = ptrtoint ptr %tidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tidx, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.47, i32 noundef %17) #13
  br label %err_free

if.end18:                                         ; preds = %if.end11
  %18 = ptrtoint ptr %call12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call12, align 4
  %dev20 = getelementptr inbounds %struct.dma_device, ptr %19, i32 0, i32 15
  %20 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev20, align 4
  %out_phys_addr = getelementptr inbounds %struct.perf_peer, ptr %3, i32 0, i32 6
  %22 = ptrtoint ptr %out_phys_addr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %out_phys_addr, align 8
  %24 = ptrtoint ptr %outbuf_size to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %outbuf_size, align 8
  %call22 = call i32 @dma_map_resource(ptr noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef 2, i32 noundef 0) #10
  %dma_dst_addr = getelementptr inbounds %struct.perf_peer, ptr %3, i32 0, i32 7
  %26 = ptrtoint ptr %dma_dst_addr to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call22, ptr %dma_dst_addr, align 4
  %27 = ptrtoint ptr %dma_chan to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dma_chan, align 8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %dev25 = getelementptr inbounds %struct.dma_device, ptr %30, i32 0, i32 15
  %31 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev25, align 4
  call void @debug_dma_mapping_error(ptr noundef %32, i32 noundef %call22) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call22)
  %cmp.i88.not = icmp eq i32 %call22, -1
  br i1 %cmp.i88.not, label %do.end32, label %do.body40

do.end32:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %dma_chan to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dma_chan, align 8
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %dev35 = getelementptr inbounds %struct.dma_device, ptr %36, i32 0, i32 15
  %37 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev35, align 4
  %tidx36 = getelementptr inbounds %struct.perf_thread, ptr %pthr, i32 0, i32 1
  %39 = ptrtoint ptr %tidx36 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tidx36, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.50, i32 noundef %40) #13
  %41 = ptrtoint ptr %dma_dst_addr to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %dma_dst_addr, align 4
  %42 = ptrtoint ptr %dma_chan to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dma_chan, align 8
  call void @dma_release_channel(ptr noundef %43) #10
  br label %err_free

do.body40:                                        ; preds = %if.end18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @perf_init_test.__UNIQUE_ID_ddebug265, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@perf_init_test, %if.then45)) #10
          to label %do.end54 [label %if.then45], !srcloc !303

if.then45:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %dma_chan to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dma_chan, align 8
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  %dev48 = getelementptr inbounds %struct.dma_device, ptr %47, i32 0, i32 15
  %48 = ptrtoint ptr %dev48 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev48, align 4
  %tidx49 = getelementptr inbounds %struct.perf_thread, ptr %pthr, i32 0, i32 1
  %50 = ptrtoint ptr %tidx49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %tidx49, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @perf_init_test.__UNIQUE_ID_ddebug265, ptr noundef %49, ptr noundef nonnull @.str.52, i32 noundef %51, ptr noundef %out_phys_addr, ptr noundef %dma_dst_addr) #10
  br label %do.end54

do.end54:                                         ; preds = %if.then45, %do.body40
  %dma_sync = getelementptr inbounds %struct.perf_thread, ptr %pthr, i32 0, i32 2
  %call.i.i86 = call zeroext i1 @__kasan_check_write(ptr noundef %dma_sync, i32 noundef 4) #10
  %52 = ptrtoint ptr %dma_sync to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile i32 0, ptr %dma_sync, align 4
  br label %cleanup

err_free:                                         ; preds = %do.end32, %do.end
  %tsync = getelementptr inbounds %struct.perf_ctx, ptr %1, i32 0, i32 6
  %call.i.i87 = call zeroext i1 @__kasan_check_write(ptr noundef %tsync, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %tsync, i32 1, i32 3, i32 1) #10
  %53 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tsync, ptr %tsync, i32 1, ptr elementtype(i32) %tsync) #10, !srcloc !309
  %twait = getelementptr inbounds %struct.perf_ctx, ptr %1, i32 0, i32 5
  call void @__wake_up(ptr noundef %twait, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  %54 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %src, align 4
  call void @kfree(ptr noundef %55) #10
  br label %cleanup

cleanup:                                          ; preds = %err_free, %do.end54, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %err_free ], [ 0, %do.end54 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_mask) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @perf_sync_test(ptr noundef %pthr) unnamed_addr #4 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pthr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pthr, align 8
  %2 = load i8, ptr @use_dma, align 1, !range !305
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.no_dma_ret_crit_edge, label %do.body2

entry.no_dma_ret_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %no_dma_ret

do.body2:                                         ; preds = %entry
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 975) #10
  %dma_sync = getelementptr inbounds %struct.perf_thread, ptr %pthr, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dma_sync, i32 noundef 4) #10
  %3 = ptrtoint ptr %dma_sync to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %dma_sync, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %do.body2.do.end22_crit_edge, label %lor.lhs.false

do.body2.do.end22_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end22

lor.lhs.false:                                    ; preds = %do.body2
  %tsync = getelementptr inbounds %struct.perf_ctx, ptr %1, i32 0, i32 6
  %call.i.i103 = tail call zeroext i1 @__kasan_check_read(ptr noundef %tsync, i32 noundef 4) #10
  %5 = ptrtoint ptr %tsync to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %tsync, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp7 = icmp slt i32 %6, 0
  br i1 %cmp7, label %lor.lhs.false.do.end22_crit_edge, label %if.end9

lor.lhs.false.do.end22_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end22

if.end9:                                          ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #10
  %7 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #10
  %dma_wait = getelementptr inbounds %struct.perf_thread, ptr %pthr, i32 0, i32 3
  %call10125 = call i32 @prepare_to_wait_event(ptr noundef %dma_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #10
  %call.i.i104126 = call zeroext i1 @__kasan_check_read(ptr noundef %dma_sync, i32 noundef 4) #10
  %8 = ptrtoint ptr %dma_sync to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %dma_sync, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp13127 = icmp eq i32 %9, 0
  br i1 %cmp13127, label %if.end9.for.end_crit_edge, label %if.end9.lor.lhs.false14_crit_edge

if.end9.lor.lhs.false14_crit_edge:                ; preds = %if.end9
  br label %lor.lhs.false14

if.end9.for.end_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

lor.lhs.false14:                                  ; preds = %cleanup.lor.lhs.false14_crit_edge, %if.end9.lor.lhs.false14_crit_edge
  %call.i.i105 = call zeroext i1 @__kasan_check_read(ptr noundef %tsync, i32 noundef 4) #10
  %10 = ptrtoint ptr %tsync to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %tsync, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp17 = icmp slt i32 %11, 0
  br i1 %cmp17, label %lor.lhs.false14.for.end_crit_edge, label %cleanup

lor.lhs.false14.for.end_crit_edge:                ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

cleanup:                                          ; preds = %lor.lhs.false14
  call void @schedule() #10
  %call10 = call i32 @prepare_to_wait_event(ptr noundef %dma_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #10
  %call.i.i104 = call zeroext i1 @__kasan_check_read(ptr noundef %dma_sync, i32 noundef 4) #10
  %12 = ptrtoint ptr %dma_sync to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %dma_sync, align 4
  %cmp13 = icmp eq i32 %13, 0
  br i1 %cmp13, label %cleanup.for.end_crit_edge, label %cleanup.lor.lhs.false14_crit_edge

cleanup.lor.lhs.false14_crit_edge:                ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false14

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %lor.lhs.false14.for.end_crit_edge, %if.end9.for.end_crit_edge
  call void @finish_wait(ptr noundef %dma_wait, ptr noundef nonnull %__wq_entry) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br label %do.end22

do.end22:                                         ; preds = %for.end, %lor.lhs.false.do.end22_crit_edge, %do.body2.do.end22_crit_edge
  %tsync23 = getelementptr inbounds %struct.perf_ctx, ptr %1, i32 0, i32 6
  %call.i.i106 = call zeroext i1 @__kasan_check_read(ptr noundef %tsync23, i32 noundef 4) #10
  %14 = ptrtoint ptr %tsync23 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %tsync23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp25 = icmp slt i32 %15, 0
  br i1 %cmp25, label %do.end22.cleanup84_crit_edge, label %do.end22.no_dma_ret_crit_edge

do.end22.no_dma_ret_crit_edge:                    ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %no_dma_ret

do.end22.cleanup84_crit_edge:                     ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup84

no_dma_ret:                                       ; preds = %do.end22.no_dma_ret_crit_edge, %entry.no_dma_ret_crit_edge
  %call28 = call i64 @ktime_get() #10
  %duration = getelementptr inbounds %struct.perf_thread, ptr %pthr, i32 0, i32 7
  %16 = ptrtoint ptr %duration to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %duration, align 8
  %sub = sub i64 %call28, %17
  store i64 %sub, ptr %duration, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @perf_sync_test.__UNIQUE_ID_ddebug268, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@perf_sync_test, %if.then36)) #10
          to label %do.body40 [label %if.then36], !srcloc !303

if.then36:                                        ; preds = %no_dma_ret
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 8
  %tidx = getelementptr inbounds %struct.perf_thread, ptr %pthr, i32 0, i32 1
  %20 = ptrtoint ptr %tidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tidx, align 4
  %copied = getelementptr inbounds %struct.perf_thread, ptr %pthr, i32 0, i32 6
  %22 = ptrtoint ptr %copied to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %copied, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @perf_sync_test.__UNIQUE_ID_ddebug268, ptr noundef %19, ptr noundef nonnull @.str.56, i32 noundef %21, i64 noundef %23) #10
  br label %do.body40

do.body40:                                        ; preds = %if.then36, %no_dma_ret
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @perf_sync_test.__UNIQUE_ID_ddebug269, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@perf_sync_test, %if.then52)) #10
          to label %do.body61 [label %if.then52], !srcloc !303

if.then52:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 8
  %tidx55 = getelementptr inbounds %struct.perf_thread, ptr %pthr, i32 0, i32 1
  %26 = ptrtoint ptr %tidx55 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tidx55, align 4
  %28 = ptrtoint ptr %duration to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %duration, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %29)
  %cmp8.i.i = icmp slt i64 %29, 0
  %30 = call i64 @llvm.abs.i64(i64 %29, i1 false) #10
  %31 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %30, i32 0) #15, !srcloc !310
  %asmresult.i.i.i = extractvalue { i64, i32 } %31, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %31, 1
  %32 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %30, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #15, !srcloc !311
  %asmresult10.i.i.i = extractvalue { i64, i32 } %32, 0
  %div1811.i.i = lshr i64 %asmresult10.i.i.i, 9
  %sub210.i.i = sub nsw i64 0, %div1811.i.i
  %cond213.i.i = select i1 %cmp8.i.i, i64 %sub210.i.i, i64 %div1811.i.i
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @perf_sync_test.__UNIQUE_ID_ddebug269, ptr noundef %25, ptr noundef nonnull @.str.57, i32 noundef %27, i64 noundef %cond213.i.i) #10
  br label %do.body61

do.body61:                                        ; preds = %if.then52, %do.body40
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @perf_sync_test.__UNIQUE_ID_ddebug270, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@perf_sync_test, %if.then73)) #10
          to label %cleanup84 [label %if.then73], !srcloc !303

if.then73:                                        ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 8
  %tidx76 = getelementptr inbounds %struct.perf_thread, ptr %pthr, i32 0, i32 1
  %35 = ptrtoint ptr %tidx76 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tidx76, align 4
  %copied77 = getelementptr inbounds %struct.perf_thread, ptr %pthr, i32 0, i32 6
  %37 = ptrtoint ptr %copied77 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %copied77, align 8
  %39 = ptrtoint ptr %duration to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %duration, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %40)
  %cmp8.i.i113 = icmp slt i64 %40, 0
  %41 = call i64 @llvm.abs.i64(i64 %40, i1 false) #10
  %42 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %41, i32 0) #15, !srcloc !310
  %asmresult.i.i.i114 = extractvalue { i64, i32 } %42, 0
  %asmresult4.i.i.i115 = extractvalue { i64, i32 } %42, 1
  %43 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %41, i64 %asmresult.i.i.i114, i32 %asmresult4.i.i.i115) #15, !srcloc !311
  %asmresult10.i.i.i116 = extractvalue { i64, i32 } %43, 0
  %div1811.i.i117 = lshr i64 %asmresult10.i.i.i116, 9
  %sub210.i.i118 = sub nsw i64 0, %div1811.i.i117
  %cond213.i.i119 = select i1 %cmp8.i.i113, i64 %sub210.i.i118, i64 %div1811.i.i117
  %call80 = call i64 @div64_u64(i64 noundef %38, i64 noundef %cond213.i.i119) #10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @perf_sync_test.__UNIQUE_ID_ddebug270, ptr noundef %34, ptr noundef nonnull @.str.58, i32 noundef %36, i64 noundef %call80) #10
  br label %cleanup84

cleanup84:                                        ; preds = %if.then73, %do.body61, %do.end22.cleanup84_crit_edge
  %retval.0 = phi i32 [ -4, %do.end22.cleanup84_crit_edge ], [ 0, %if.then73 ], [ 0, %do.body61 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dma_request_channel(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @perf_dma_filter(ptr nocapture noundef readnone %chan, ptr nocapture noundef readnone %data) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 true
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_resource(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmaengine_get_unmap_data(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_dma_copy_callback(ptr noundef %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_sync = getelementptr inbounds %struct.perf_thread, ptr %data, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dma_sync, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %dma_sync, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dma_sync, ptr %dma_sync, i32 1, ptr elementtype(i32) %dma_sync) #10, !srcloc !309
  %dma_wait = getelementptr inbounds %struct.perf_thread, ptr %data, i32 0, i32 3
  tail call void @__wake_up(ptr noundef %dma_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dmaengine_unmap_put(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_resource(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @perf_msg_cmd_send(ptr nocapture noundef readonly %peer, i32 noundef %cmd, i64 noundef %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %peer, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @perf_msg_cmd_send.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@perf_msg_cmd_send, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !303

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @perf_msg_cmd_send.__UNIQUE_ID_ddebug254, ptr noundef %3, ptr noundef nonnull @.str.70, i32 noundef %cmd, i64 noundef %data) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %ops.i = getelementptr inbounds %struct.ntb_dev, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops.i, align 8
  %msg_outbits.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %7, i32 0, i32 41
  %8 = ptrtoint ptr %msg_outbits.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %msg_outbits.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %do.end.ntb_msg_outbits.exit_crit_edge, label %if.end.i

do.end.ntb_msg_outbits.exit_crit_edge:            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %ntb_msg_outbits.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i64 %9(ptr noundef %5) #10
  br label %ntb_msg_outbits.exit

ntb_msg_outbits.exit:                             ; preds = %if.end.i, %do.end.ntb_msg_outbits.exit_crit_edge
  %retval.0.i52 = phi i64 [ %call.i, %if.end.i ], [ 0, %do.end.ntb_msg_outbits.exit_crit_edge ]
  %pidx.i = getelementptr inbounds %struct.perf_peer, ptr %peer, i32 0, i32 1
  %conv = trunc i64 %data to i32
  br label %for.body

for.body:                                         ; preds = %if.then20.for.body_crit_edge, %ntb_msg_outbits.exit
  %try.082 = phi i32 [ 0, %ntb_msg_outbits.exit ], [ %inc, %if.then20.for.body_crit_edge ]
  %10 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %peer, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %ops.i.i = getelementptr inbounds %struct.ntb_dev, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i.i, align 8
  %link_is_up.i.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %link_is_up.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %link_is_up.i.i, align 4
  %call.i.i = tail call i64 %17(ptr noundef %13, ptr noundef null, ptr noundef null) #10
  %18 = ptrtoint ptr %pidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pidx.i, align 4
  %rem.i = srem i32 %19, 64
  %sh_prom.i = zext i32 %rem.i to i64
  %shl.i = shl nuw i64 1, %sh_prom.i
  %and.i = and i64 %shl.i, %call.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %for.body.cleanup_crit_edge, label %if.end8

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %for.body
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 8
  %ops.i53 = getelementptr inbounds %struct.ntb_dev, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %ops.i53 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops.i53, align 8
  %msg_clear_sts.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %23, i32 0, i32 43
  %24 = ptrtoint ptr %msg_clear_sts.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %msg_clear_sts.i, align 4
  %tobool.not.i54 = icmp eq ptr %25, null
  br i1 %tobool.not.i54, label %if.end8.cleanup_crit_edge, label %ntb_msg_clear_sts.exit

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

ntb_msg_clear_sts.exit:                           ; preds = %if.end8
  %call.i55 = tail call i32 %25(ptr noundef %21, i64 noundef %retval.0.i52) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i55)
  %tobool11.not = icmp eq i32 %call.i55, 0
  br i1 %tobool11.not, label %if.end13, label %ntb_msg_clear_sts.exit.cleanup_crit_edge

ntb_msg_clear_sts.exit.cleanup_crit_edge:         ; preds = %ntb_msg_clear_sts.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end13:                                         ; preds = %ntb_msg_clear_sts.exit
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 8
  %ops.i58 = getelementptr inbounds %struct.ntb_dev, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %ops.i58 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ops.i58, align 8
  %peer_msg_write.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %29, i32 0, i32 47
  %30 = ptrtoint ptr %peer_msg_write.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %peer_msg_write.i, align 4
  %tobool.not.i59 = icmp eq ptr %31, null
  br i1 %tobool.not.i59, label %if.end13.ntb_peer_msg_write.exit_crit_edge, label %if.end.i61

if.end13.ntb_peer_msg_write.exit_crit_edge:       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %ntb_peer_msg_write.exit

if.end.i61:                                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %pidx.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pidx.i, align 4
  %call.i60 = tail call i32 %31(ptr noundef %27, i32 noundef %33, i32 noundef 1, i32 noundef %conv) #10
  br label %ntb_peer_msg_write.exit

ntb_peer_msg_write.exit:                          ; preds = %if.end.i61, %if.end13.ntb_peer_msg_write.exit_crit_edge
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 8
  %ops.i62 = getelementptr inbounds %struct.ntb_dev, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %ops.i62 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ops.i62, align 8
  %msg_read_sts.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %37, i32 0, i32 42
  %38 = ptrtoint ptr %msg_read_sts.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %msg_read_sts.i, align 4
  %tobool.not.i63 = icmp eq ptr %39, null
  br i1 %tobool.not.i63, label %ntb_peer_msg_write.exit.ntb_msg_read_sts.exit_crit_edge, label %if.end.i65

ntb_peer_msg_write.exit.ntb_msg_read_sts.exit_crit_edge: ; preds = %ntb_peer_msg_write.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %ntb_msg_read_sts.exit

if.end.i65:                                       ; preds = %ntb_peer_msg_write.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call.i64 = tail call i64 %39(ptr noundef %35) #10
  br label %ntb_msg_read_sts.exit

ntb_msg_read_sts.exit:                            ; preds = %if.end.i65, %ntb_peer_msg_write.exit.ntb_msg_read_sts.exit_crit_edge
  %retval.0.i66 = phi i64 [ %call.i64, %if.end.i65 ], [ 0, %ntb_peer_msg_write.exit.ntb_msg_read_sts.exit_crit_edge ]
  %and18 = and i64 %retval.0.i66, %retval.0.i52
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and18)
  %tobool19.not = icmp eq i64 %and18, 0
  br i1 %tobool19.not, label %if.end21, label %if.then20

if.then20:                                        ; preds = %ntb_msg_read_sts.exit
  tail call void @usleep_range_state(i32 noundef 1000000, i32 noundef 2000000, i32 noundef 2) #10
  %inc = add nuw nsw i32 %try.082, 1
  %exitcond.not = icmp eq i32 %inc, 1000
  br i1 %exitcond.not, label %if.then20.cleanup_crit_edge, label %if.then20.for.body_crit_edge

if.then20.for.body_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end21:                                         ; preds = %ntb_msg_read_sts.exit
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 8
  %ops.i67 = getelementptr inbounds %struct.ntb_dev, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %ops.i67 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ops.i67, align 8
  %peer_msg_write.i68 = getelementptr inbounds %struct.ntb_dev_ops, ptr %43, i32 0, i32 47
  %44 = ptrtoint ptr %peer_msg_write.i68 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %peer_msg_write.i68, align 4
  %tobool.not.i69 = icmp eq ptr %45, null
  br i1 %tobool.not.i69, label %if.end21.ntb_peer_msg_write.exit72_crit_edge, label %if.end.i71

if.end21.ntb_peer_msg_write.exit72_crit_edge:     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %ntb_peer_msg_write.exit72

if.end.i71:                                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  %shr = lshr i64 %data, 32
  %conv25 = trunc i64 %shr to i32
  %46 = ptrtoint ptr %pidx.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %pidx.i, align 4
  %call.i70 = tail call i32 %45(ptr noundef %41, i32 noundef %47, i32 noundef 2, i32 noundef %conv25) #10
  br label %ntb_peer_msg_write.exit72

ntb_peer_msg_write.exit72:                        ; preds = %if.end.i71, %if.end21.ntb_peer_msg_write.exit72_crit_edge
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %1, align 8
  %ops.i73 = getelementptr inbounds %struct.ntb_dev, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %ops.i73 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ops.i73, align 8
  %peer_msg_write.i74 = getelementptr inbounds %struct.ntb_dev_ops, ptr %51, i32 0, i32 47
  %52 = ptrtoint ptr %peer_msg_write.i74 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %peer_msg_write.i74, align 4
  %tobool.not.i75 = icmp eq ptr %53, null
  br i1 %tobool.not.i75, label %ntb_peer_msg_write.exit72.cleanup_crit_edge, label %if.end.i77

ntb_peer_msg_write.exit72.cleanup_crit_edge:      ; preds = %ntb_peer_msg_write.exit72
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i77:                                       ; preds = %ntb_peer_msg_write.exit72
  call void @__sanitizer_cov_trace_pc() #12
  %54 = ptrtoint ptr %pidx.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %pidx.i, align 4
  %call.i76 = tail call i32 %53(ptr noundef %49, i32 noundef %55, i32 noundef 0, i32 noundef %cmd) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end.i77, %ntb_peer_msg_write.exit72.cleanup_crit_edge, %if.then20.cleanup_crit_edge, %ntb_msg_clear_sts.exit.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %ntb_peer_msg_write.exit72.cleanup_crit_edge ], [ 0, %if.end.i77 ], [ -22, %if.end8.cleanup_crit_edge ], [ -11, %if.then20.cleanup_crit_edge ], [ %call.i55, %ntb_msg_clear_sts.exit.cleanup_crit_edge ], [ -67, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @perf_msg_cmd_recv(ptr nocapture noundef readonly %perf, ptr noundef %pidx, ptr nocapture noundef %cmd, ptr nocapture noundef %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %perf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %perf, align 8
  %ops.i = getelementptr inbounds %struct.ntb_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 8
  %msg_inbits.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %3, i32 0, i32 40
  %4 = ptrtoint ptr %msg_inbits.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %msg_inbits.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.ntb_msg_inbits.exit_crit_edge, label %if.end.i

entry.ntb_msg_inbits.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %ntb_msg_inbits.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i64 %5(ptr noundef %1) #10
  br label %ntb_msg_inbits.exit

ntb_msg_inbits.exit:                              ; preds = %if.end.i, %entry.ntb_msg_inbits.exit_crit_edge
  %retval.0.i34 = phi i64 [ %call.i, %if.end.i ], [ 0, %entry.ntb_msg_inbits.exit_crit_edge ]
  %6 = ptrtoint ptr %perf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %perf, align 8
  %ops.i35 = getelementptr inbounds %struct.ntb_dev, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %ops.i35 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i35, align 8
  %msg_read_sts.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %9, i32 0, i32 42
  %10 = ptrtoint ptr %msg_read_sts.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %msg_read_sts.i, align 4
  %tobool.not.i36 = icmp eq ptr %11, null
  br i1 %tobool.not.i36, label %ntb_msg_inbits.exit.ntb_msg_read_sts.exit_crit_edge, label %if.end.i38

ntb_msg_inbits.exit.ntb_msg_read_sts.exit_crit_edge: ; preds = %ntb_msg_inbits.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %ntb_msg_read_sts.exit

if.end.i38:                                       ; preds = %ntb_msg_inbits.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call.i37 = tail call i64 %11(ptr noundef %7) #10
  br label %ntb_msg_read_sts.exit

ntb_msg_read_sts.exit:                            ; preds = %if.end.i38, %ntb_msg_inbits.exit.ntb_msg_read_sts.exit_crit_edge
  %retval.0.i39 = phi i64 [ %call.i37, %if.end.i38 ], [ 0, %ntb_msg_inbits.exit.ntb_msg_read_sts.exit_crit_edge ]
  %and = and i64 %retval.0.i39, %retval.0.i34
  %call.i40 = tail call i32 @__sw_hweight64(i64 noundef %and) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i40)
  %cmp = icmp ult i32 %call.i40, 3
  br i1 %cmp, label %ntb_msg_read_sts.exit.cleanup_crit_edge, label %if.end

ntb_msg_read_sts.exit.cleanup_crit_edge:          ; preds = %ntb_msg_read_sts.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %ntb_msg_read_sts.exit
  %12 = ptrtoint ptr %perf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %perf, align 8
  %ops.i41 = getelementptr inbounds %struct.ntb_dev, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %ops.i41 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i41, align 8
  %msg_read.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %15, i32 0, i32 46
  %16 = ptrtoint ptr %msg_read.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %msg_read.i, align 4
  %tobool.not.i42 = icmp eq ptr %17, null
  br i1 %tobool.not.i42, label %if.end.ntb_msg_read.exit_crit_edge, label %if.end.i44

if.end.ntb_msg_read.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %ntb_msg_read.exit

if.end.i44:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call.i43 = tail call i32 %17(ptr noundef %13, ptr noundef %pidx, i32 noundef 0) #10
  br label %ntb_msg_read.exit

ntb_msg_read.exit:                                ; preds = %if.end.i44, %if.end.ntb_msg_read.exit_crit_edge
  %retval.0.i45 = phi i32 [ %call.i43, %if.end.i44 ], [ -1, %if.end.ntb_msg_read.exit_crit_edge ]
  %18 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %retval.0.i45, ptr %cmd, align 4
  %19 = ptrtoint ptr %perf to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %perf, align 8
  %ops.i46 = getelementptr inbounds %struct.ntb_dev, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %ops.i46 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ops.i46, align 8
  %msg_read.i47 = getelementptr inbounds %struct.ntb_dev_ops, ptr %22, i32 0, i32 46
  %23 = ptrtoint ptr %msg_read.i47 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %msg_read.i47, align 4
  %tobool.not.i48 = icmp eq ptr %24, null
  br i1 %tobool.not.i48, label %ntb_msg_read.exit.ntb_msg_read.exit52_crit_edge, label %if.end.i50

ntb_msg_read.exit.ntb_msg_read.exit52_crit_edge:  ; preds = %ntb_msg_read.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %ntb_msg_read.exit52

if.end.i50:                                       ; preds = %ntb_msg_read.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call.i49 = tail call i32 %24(ptr noundef %20, ptr noundef %pidx, i32 noundef 1) #10
  br label %ntb_msg_read.exit52

ntb_msg_read.exit52:                              ; preds = %if.end.i50, %ntb_msg_read.exit.ntb_msg_read.exit52_crit_edge
  %retval.0.i51 = phi i32 [ %call.i49, %if.end.i50 ], [ -1, %ntb_msg_read.exit.ntb_msg_read.exit52_crit_edge ]
  %conv = zext i32 %retval.0.i51 to i64
  %25 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %conv, ptr %data, align 8
  %26 = ptrtoint ptr %perf to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %perf, align 8
  %ops.i53 = getelementptr inbounds %struct.ntb_dev, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %ops.i53 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ops.i53, align 8
  %msg_read.i54 = getelementptr inbounds %struct.ntb_dev_ops, ptr %29, i32 0, i32 46
  %30 = ptrtoint ptr %msg_read.i54 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %msg_read.i54, align 4
  %tobool.not.i55 = icmp eq ptr %31, null
  br i1 %tobool.not.i55, label %ntb_msg_read.exit52.ntb_msg_read.exit59_crit_edge, label %if.end.i57

ntb_msg_read.exit52.ntb_msg_read.exit59_crit_edge: ; preds = %ntb_msg_read.exit52
  call void @__sanitizer_cov_trace_pc() #12
  br label %ntb_msg_read.exit59

if.end.i57:                                       ; preds = %ntb_msg_read.exit52
  call void @__sanitizer_cov_trace_pc() #12
  %call.i56 = tail call i32 %31(ptr noundef %27, ptr noundef %pidx, i32 noundef 2) #10
  br label %ntb_msg_read.exit59

ntb_msg_read.exit59:                              ; preds = %if.end.i57, %ntb_msg_read.exit52.ntb_msg_read.exit59_crit_edge
  %retval.0.i58 = phi i32 [ %call.i56, %if.end.i57 ], [ -1, %ntb_msg_read.exit52.ntb_msg_read.exit59_crit_edge ]
  %conv10 = zext i32 %retval.0.i58 to i64
  %shl = shl nuw i64 %conv10, 32
  %32 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %data, align 8
  %or = or i64 %shl, %33
  store i64 %or, ptr %data, align 8
  %34 = ptrtoint ptr %perf to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %perf, align 8
  %ops.i60 = getelementptr inbounds %struct.ntb_dev, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %ops.i60 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ops.i60, align 8
  %msg_clear_sts.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %37, i32 0, i32 43
  %38 = ptrtoint ptr %msg_clear_sts.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %msg_clear_sts.i, align 4
  %tobool.not.i61 = icmp eq ptr %39, null
  br i1 %tobool.not.i61, label %ntb_msg_read.exit59.ntb_msg_clear_sts.exit_crit_edge, label %if.end.i63

ntb_msg_read.exit59.ntb_msg_clear_sts.exit_crit_edge: ; preds = %ntb_msg_read.exit59
  call void @__sanitizer_cov_trace_pc() #12
  br label %ntb_msg_clear_sts.exit

if.end.i63:                                       ; preds = %ntb_msg_read.exit59
  call void @__sanitizer_cov_trace_pc() #12
  %call.i62 = tail call i32 %39(ptr noundef %35, i64 noundef %retval.0.i34) #10
  br label %ntb_msg_clear_sts.exit

ntb_msg_clear_sts.exit:                           ; preds = %if.end.i63, %ntb_msg_read.exit59.ntb_msg_clear_sts.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @perf_msg_cmd_recv.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@perf_msg_cmd_recv, %if.then16)) #10
          to label %cleanup [label %if.then16], !srcloc !303

if.then16:                                        ; preds = %ntb_msg_clear_sts.exit
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %perf to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %perf, align 8
  %42 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %cmd, align 4
  %44 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %data, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @perf_msg_cmd_recv.__UNIQUE_ID_ddebug255, ptr noundef %41, ptr noundef nonnull @.str.72, i32 noundef %43, i64 noundef %45) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %ntb_msg_clear_sts.exit, %ntb_msg_read_sts.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -61, %ntb_msg_read_sts.exit.cleanup_crit_edge ], [ 0, %if.then16 ], [ 0, %ntb_msg_clear_sts.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @perf_spad_cmd_send(ptr nocapture noundef readonly %peer, i32 noundef %cmd, i64 noundef %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %peer, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @perf_spad_cmd_send.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@perf_spad_cmd_send, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !303

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @perf_spad_cmd_send.__UNIQUE_ID_ddebug251, ptr noundef %3, ptr noundef nonnull @.str.70, i32 noundef %cmd, i64 noundef %data) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %pidx.i = getelementptr inbounds %struct.perf_peer, ptr %peer, i32 0, i32 1
  %gidx = getelementptr inbounds %struct.perf_ctx, ptr %1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %if.then10.for.body_crit_edge, %do.end
  %try.0106 = phi i32 [ 0, %do.end ], [ %inc, %if.then10.for.body_crit_edge ]
  %4 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %peer, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %ops.i.i = getelementptr inbounds %struct.ntb_dev, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i.i, align 8
  %link_is_up.i.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %link_is_up.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %link_is_up.i.i, align 4
  %call.i.i = tail call i64 %11(ptr noundef %7, ptr noundef null, ptr noundef null) #10
  %12 = ptrtoint ptr %pidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pidx.i, align 4
  %rem.i = srem i32 %13, 64
  %sh_prom.i = zext i32 %rem.i to i64
  %shl.i = shl nuw i64 1, %sh_prom.i
  %and.i = and i64 %shl.i, %call.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %for.body.cleanup_crit_edge, label %if.end6

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %for.body
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 8
  %ops.i = getelementptr inbounds %struct.ntb_dev, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i, align 8
  %peer_spad_read.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %17, i32 0, i32 37
  %18 = ptrtoint ptr %peer_spad_read.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %peer_spad_read.i, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %if.end6.if.end11_crit_edge, label %ntb_peer_spad_read.exit

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

ntb_peer_spad_read.exit:                          ; preds = %if.end6
  %20 = ptrtoint ptr %gidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %gidx, align 4
  %mul = mul i32 %21, 3
  %call.i = tail call i32 %19(ptr noundef %15, i32 noundef %13, i32 noundef %mul) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp9.not = icmp eq i32 %call.i, -1
  br i1 %cmp9.not, label %ntb_peer_spad_read.exit.if.end11_crit_edge, label %if.then10

ntb_peer_spad_read.exit.if.end11_crit_edge:       ; preds = %ntb_peer_spad_read.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then10:                                        ; preds = %ntb_peer_spad_read.exit
  tail call void @usleep_range_state(i32 noundef 1000000, i32 noundef 2000000, i32 noundef 2) #10
  %inc = add nuw nsw i32 %try.0106, 1
  %exitcond.not = icmp eq i32 %inc, 1000
  br i1 %exitcond.not, label %if.then10.cleanup_crit_edge, label %if.then10.for.body_crit_edge

if.then10.for.body_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %ntb_peer_spad_read.exit.if.end11_crit_edge, %if.end6.if.end11_crit_edge
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 8
  %ops.i84 = getelementptr inbounds %struct.ntb_dev, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %ops.i84 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops.i84, align 8
  %peer_spad_write.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %25, i32 0, i32 38
  %26 = ptrtoint ptr %peer_spad_write.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %peer_spad_write.i, align 4
  %tobool.not.i85 = icmp eq ptr %27, null
  br i1 %tobool.not.i85, label %if.end11.ntb_peer_spad_write.exit_crit_edge, label %if.end.i87

if.end11.ntb_peer_spad_write.exit_crit_edge:      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %ntb_peer_spad_write.exit

if.end.i87:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %conv = trunc i64 %data to i32
  %28 = ptrtoint ptr %gidx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %gidx, align 4
  %mul15 = mul i32 %29, 3
  %add = add i32 %mul15, 1
  %30 = ptrtoint ptr %pidx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pidx.i, align 4
  %call.i86 = tail call i32 %27(ptr noundef %23, i32 noundef %31, i32 noundef %add, i32 noundef %conv) #10
  br label %ntb_peer_spad_write.exit

ntb_peer_spad_write.exit:                         ; preds = %if.end.i87, %if.end11.ntb_peer_spad_write.exit_crit_edge
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 8
  %ops.i88 = getelementptr inbounds %struct.ntb_dev, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %ops.i88 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ops.i88, align 8
  %peer_spad_write.i89 = getelementptr inbounds %struct.ntb_dev_ops, ptr %35, i32 0, i32 38
  %36 = ptrtoint ptr %peer_spad_write.i89 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %peer_spad_write.i89, align 4
  %tobool.not.i90 = icmp eq ptr %37, null
  br i1 %tobool.not.i90, label %ntb_peer_spad_write.exit.ntb_peer_spad_write.exit93_crit_edge, label %if.end.i92

ntb_peer_spad_write.exit.ntb_peer_spad_write.exit93_crit_edge: ; preds = %ntb_peer_spad_write.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %ntb_peer_spad_write.exit93

if.end.i92:                                       ; preds = %ntb_peer_spad_write.exit
  call void @__sanitizer_cov_trace_pc() #12
  %shr = lshr i64 %data, 32
  %conv23 = trunc i64 %shr to i32
  %38 = ptrtoint ptr %gidx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %gidx, align 4
  %mul20 = mul i32 %39, 3
  %add21 = add i32 %mul20, 2
  %40 = ptrtoint ptr %pidx.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pidx.i, align 4
  %call.i91 = tail call i32 %37(ptr noundef %33, i32 noundef %41, i32 noundef %add21, i32 noundef %conv23) #10
  br label %ntb_peer_spad_write.exit93

ntb_peer_spad_write.exit93:                       ; preds = %if.end.i92, %ntb_peer_spad_write.exit.ntb_peer_spad_write.exit93_crit_edge
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 8
  %ops.i94 = getelementptr inbounds %struct.ntb_dev, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %ops.i94 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ops.i94, align 8
  %peer_spad_write.i95 = getelementptr inbounds %struct.ntb_dev_ops, ptr %45, i32 0, i32 38
  %46 = ptrtoint ptr %peer_spad_write.i95 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %peer_spad_write.i95, align 4
  %tobool.not.i96 = icmp eq ptr %47, null
  br i1 %tobool.not.i96, label %ntb_peer_spad_write.exit93.ntb_peer_spad_write.exit99_crit_edge, label %if.end.i98

ntb_peer_spad_write.exit93.ntb_peer_spad_write.exit99_crit_edge: ; preds = %ntb_peer_spad_write.exit93
  call void @__sanitizer_cov_trace_pc() #12
  br label %ntb_peer_spad_write.exit99

if.end.i98:                                       ; preds = %ntb_peer_spad_write.exit93
  call void @__sanitizer_cov_trace_pc() #12
  %48 = ptrtoint ptr %gidx to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %gidx, align 4
  %mul28 = mul i32 %49, 3
  %50 = ptrtoint ptr %pidx.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %pidx.i, align 4
  %call.i97 = tail call i32 %47(ptr noundef %43, i32 noundef %51, i32 noundef %mul28, i32 noundef %cmd) #10
  br label %ntb_peer_spad_write.exit99

ntb_peer_spad_write.exit99:                       ; preds = %if.end.i98, %ntb_peer_spad_write.exit93.ntb_peer_spad_write.exit99_crit_edge
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %1, align 8
  %gidx31 = getelementptr inbounds %struct.perf_peer, ptr %peer, i32 0, i32 2
  %54 = ptrtoint ptr %gidx31 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %gidx31, align 8
  %sh_prom = zext i32 %55 to i64
  %shl = shl nuw i64 1, %sh_prom
  %ops.i100 = getelementptr inbounds %struct.ntb_dev, ptr %53, i32 0, i32 3
  %56 = ptrtoint ptr %ops.i100 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ops.i100, align 8
  %peer_db_set.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %57, i32 0, i32 27
  %58 = ptrtoint ptr %peer_db_set.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %peer_db_set.i, align 4
  %call.i101 = tail call i32 %59(ptr noundef %53, i64 noundef %shl) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @perf_spad_cmd_send.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@perf_spad_cmd_send, %if.then45)) #10
          to label %cleanup [label %if.then45], !srcloc !303

if.then45:                                        ; preds = %ntb_peer_spad_write.exit99
  call void @__sanitizer_cov_trace_pc() #12
  %60 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %1, align 8
  %62 = ptrtoint ptr %gidx31 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %gidx31, align 8
  %sh_prom49 = zext i32 %63 to i64
  %shl50 = shl nuw i64 1, %sh_prom49
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @perf_spad_cmd_send.__UNIQUE_ID_ddebug252, ptr noundef %61, ptr noundef nonnull @.str.74, i64 noundef %shl50) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then45, %ntb_peer_spad_write.exit99, %if.then10.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then45 ], [ 0, %ntb_peer_spad_write.exit99 ], [ -11, %if.then10.cleanup_crit_edge ], [ -67, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @perf_spad_cmd_recv(ptr nocapture noundef readonly %perf, ptr nocapture noundef %pidx, ptr nocapture noundef %cmd, ptr nocapture noundef %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %perf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %perf, align 8
  %gidx = getelementptr inbounds %struct.perf_ctx, ptr %perf, i32 0, i32 1
  %2 = ptrtoint ptr %gidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gidx, align 4
  %sh_prom = zext i32 %3 to i64
  %shl = shl nuw i64 1, %sh_prom
  %ops.i = getelementptr inbounds %struct.ntb_dev, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 8
  %db_clear.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %5, i32 0, i32 21
  %6 = ptrtoint ptr %db_clear.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %db_clear.i, align 4
  %call.i = tail call i32 %7(ptr noundef %1, i64 noundef %shl) #10
  %pcnt = getelementptr inbounds %struct.perf_ctx, ptr %perf, i32 0, i32 2
  %8 = ptrtoint ptr %pidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %pidx, align 4
  %9 = ptrtoint ptr %pcnt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pcnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp75 = icmp sgt i32 %10, 0
  br i1 %cmp75, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %peers = getelementptr inbounds %struct.perf_ctx, ptr %perf, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %storemerge76 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %11 = ptrtoint ptr %peers to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %peers, align 4
  %arrayidx = getelementptr %struct.perf_peer, ptr %12, i32 %storemerge76
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 8
  %ops.i.i = getelementptr inbounds %struct.ntb_dev, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops.i.i, align 8
  %link_is_up.i.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %link_is_up.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %link_is_up.i.i, align 4
  %call.i.i = tail call i64 %20(ptr noundef %16, ptr noundef null, ptr noundef null) #10
  %pidx.i = getelementptr %struct.perf_peer, ptr %12, i32 %storemerge76, i32 1
  %21 = ptrtoint ptr %pidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pidx.i, align 4
  %rem.i = srem i32 %22, 64
  %sh_prom.i = zext i32 %rem.i to i64
  %shl.i = shl nuw i64 1, %sh_prom.i
  %and.i = and i64 %shl.i, %call.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end:                                           ; preds = %for.body
  %23 = ptrtoint ptr %perf to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %perf, align 8
  %ops.i51 = getelementptr inbounds %struct.ntb_dev, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %ops.i51 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops.i51, align 8
  %spad_read.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %26, i32 0, i32 34
  %27 = ptrtoint ptr %spad_read.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %spad_read.i, align 4
  %tobool.not.i = icmp eq ptr %28, null
  br i1 %tobool.not.i, label %if.end.for.inc_crit_edge, label %ntb_spad_read.exit

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

ntb_spad_read.exit:                               ; preds = %if.end
  %gidx3 = getelementptr %struct.perf_peer, ptr %12, i32 %storemerge76, i32 2
  %29 = ptrtoint ptr %gidx3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %gidx3, align 8
  %mul = mul i32 %30, 3
  %call.i52 = tail call i32 %28(ptr noundef %24, i32 noundef %mul) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i52)
  %cmp5 = icmp eq i32 %call.i52, -1
  br i1 %cmp5, label %ntb_spad_read.exit.for.inc_crit_edge, label %if.end7

ntb_spad_read.exit.for.inc_crit_edge:             ; preds = %ntb_spad_read.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end7:                                          ; preds = %ntb_spad_read.exit
  %31 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %call.i52, ptr %cmd, align 4
  %32 = ptrtoint ptr %perf to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %perf, align 8
  %ops.i54 = getelementptr inbounds %struct.ntb_dev, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %ops.i54 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ops.i54, align 8
  %spad_read.i55 = getelementptr inbounds %struct.ntb_dev_ops, ptr %35, i32 0, i32 34
  %36 = ptrtoint ptr %spad_read.i55 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %spad_read.i55, align 4
  %tobool.not.i56 = icmp eq ptr %37, null
  br i1 %tobool.not.i56, label %if.end7.ntb_spad_read.exit60_crit_edge, label %if.end.i58

if.end7.ntb_spad_read.exit60_crit_edge:           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %ntb_spad_read.exit60

if.end.i58:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %gidx3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %gidx3, align 8
  %mul10 = mul i32 %39, 3
  %add = add i32 %mul10, 1
  %call.i57 = tail call i32 %37(ptr noundef %33, i32 noundef %add) #10
  br label %ntb_spad_read.exit60

ntb_spad_read.exit60:                             ; preds = %if.end.i58, %if.end7.ntb_spad_read.exit60_crit_edge
  %retval.0.i59 = phi i32 [ %call.i57, %if.end.i58 ], [ -1, %if.end7.ntb_spad_read.exit60_crit_edge ]
  %conv = zext i32 %retval.0.i59 to i64
  %40 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %conv, ptr %data, align 8
  %41 = ptrtoint ptr %perf to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %perf, align 8
  %ops.i61 = getelementptr inbounds %struct.ntb_dev, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %ops.i61 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ops.i61, align 8
  %spad_read.i62 = getelementptr inbounds %struct.ntb_dev_ops, ptr %44, i32 0, i32 34
  %45 = ptrtoint ptr %spad_read.i62 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %spad_read.i62, align 4
  %tobool.not.i63 = icmp eq ptr %46, null
  br i1 %tobool.not.i63, label %ntb_spad_read.exit60.ntb_spad_read.exit67_crit_edge, label %if.end.i65

ntb_spad_read.exit60.ntb_spad_read.exit67_crit_edge: ; preds = %ntb_spad_read.exit60
  call void @__sanitizer_cov_trace_pc() #12
  br label %ntb_spad_read.exit67

if.end.i65:                                       ; preds = %ntb_spad_read.exit60
  call void @__sanitizer_cov_trace_pc() #12
  %47 = ptrtoint ptr %gidx3 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %gidx3, align 8
  %mul14 = mul i32 %48, 3
  %add15 = add i32 %mul14, 2
  %call.i64 = tail call i32 %46(ptr noundef %42, i32 noundef %add15) #10
  br label %ntb_spad_read.exit67

ntb_spad_read.exit67:                             ; preds = %if.end.i65, %ntb_spad_read.exit60.ntb_spad_read.exit67_crit_edge
  %retval.0.i66 = phi i32 [ %call.i64, %if.end.i65 ], [ -1, %ntb_spad_read.exit60.ntb_spad_read.exit67_crit_edge ]
  %conv17 = zext i32 %retval.0.i66 to i64
  %shl18 = shl nuw i64 %conv17, 32
  %49 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %data, align 8
  %or = or i64 %shl18, %50
  store i64 %or, ptr %data, align 8
  %51 = ptrtoint ptr %perf to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %perf, align 8
  %ops.i68 = getelementptr inbounds %struct.ntb_dev, ptr %52, i32 0, i32 3
  %53 = ptrtoint ptr %ops.i68 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ops.i68, align 8
  %spad_write.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %54, i32 0, i32 35
  %55 = ptrtoint ptr %spad_write.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %spad_write.i, align 4
  %tobool.not.i69 = icmp eq ptr %56, null
  br i1 %tobool.not.i69, label %ntb_spad_read.exit67.ntb_spad_write.exit_crit_edge, label %if.end.i71

ntb_spad_read.exit67.ntb_spad_write.exit_crit_edge: ; preds = %ntb_spad_read.exit67
  call void @__sanitizer_cov_trace_pc() #12
  br label %ntb_spad_write.exit

if.end.i71:                                       ; preds = %ntb_spad_read.exit67
  call void @__sanitizer_cov_trace_pc() #12
  %57 = ptrtoint ptr %gidx3 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %gidx3, align 8
  %mul21 = mul i32 %58, 3
  %call.i70 = tail call i32 %56(ptr noundef %52, i32 noundef %mul21, i32 noundef -1) #10
  br label %ntb_spad_write.exit

ntb_spad_write.exit:                              ; preds = %if.end.i71, %ntb_spad_read.exit67.ntb_spad_write.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @perf_spad_cmd_recv.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@perf_spad_cmd_recv, %if.then26)) #10
          to label %cleanup [label %if.then26], !srcloc !303

if.then26:                                        ; preds = %ntb_spad_write.exit
  call void @__sanitizer_cov_trace_pc() #12
  %59 = ptrtoint ptr %perf to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %perf, align 8
  %61 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %cmd, align 4
  %63 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %data, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @perf_spad_cmd_recv.__UNIQUE_ID_ddebug253, ptr noundef %60, ptr noundef nonnull @.str.72, i32 noundef %62, i64 noundef %64) #10
  br label %cleanup

for.inc:                                          ; preds = %ntb_spad_read.exit.for.inc_crit_edge, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %65 = ptrtoint ptr %pidx to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %pidx, align 4
  %inc = add i32 %66, 1
  store i32 %inc, ptr %pidx, align 4
  %67 = ptrtoint ptr %pcnt to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %pcnt, align 8
  %cmp = icmp slt i32 %inc, %68
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then26, %ntb_spad_write.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then26 ], [ 0, %ntb_spad_write.exit ], [ -61, %entry.cleanup_crit_edge ], [ -61, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight64(i64 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntb_set_ctx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ntb_clear_ctx(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ntb_link_event(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_link_event(ptr nocapture noundef readonly %ctx) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pcnt = getelementptr inbounds %struct.perf_ctx, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %pcnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pcnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp26 = icmp sgt i32 %1, 0
  br i1 %cmp26, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %peers = getelementptr inbounds %struct.perf_ctx, ptr %ctx, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %pidx.027 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %peers to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %peers, align 4
  %arrayidx = getelementptr %struct.perf_peer, ptr %3, i32 %pidx.027
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %ops.i.i = getelementptr inbounds %struct.ntb_dev, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i.i, align 8
  %link_is_up.i.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %link_is_up.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %link_is_up.i.i, align 4
  %call.i.i = tail call i64 %11(ptr noundef %7, ptr noundef null, ptr noundef null) #10
  %pidx.i = getelementptr %struct.perf_peer, ptr %3, i32 %pidx.027, i32 1
  %12 = ptrtoint ptr %pidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pidx.i, align 4
  %rem.i = srem i32 %13, 64
  %sh_prom.i = zext i32 %rem.i to i64
  %shl.i = shl nuw i64 1, %sh_prom.i
  %and.i = and i64 %shl.i, %call.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  %sts6 = getelementptr %struct.perf_peer, ptr %3, i32 %pidx.027, i32 12
  br i1 %tobool.i.not, label %land.lhs.true5.critedge, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %call1 = tail call i32 @_test_and_set_bit(i32 noundef 6, ptr noundef %sts6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %sts6) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @perf_cmd_exec.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@perf_link_event, %for.inc.sink.split.sink.split)) #10
          to label %for.inc.sink.split [label %for.inc.sink.split.sink.split], !srcloc !303

land.lhs.true5.critedge:                          ; preds = %for.body
  %call7 = tail call i32 @_test_and_clear_bit(i32 noundef 6, ptr noundef %sts6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true5.critedge.for.inc_crit_edge, label %if.then9

land.lhs.true5.critedge.for.inc_crit_edge:        ; preds = %land.lhs.true5.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then9:                                         ; preds = %land.lhs.true5.critedge
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef 4, ptr noundef %sts6) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @perf_cmd_exec.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@perf_link_event, %for.inc.sink.split.sink.split)) #10
          to label %for.inc.sink.split [label %for.inc.sink.split.sink.split], !srcloc !303

for.inc.sink.split.sink.split:                    ; preds = %if.then9, %if.then
  %.sink29 = phi i32 [ 0, %if.then ], [ 4, %if.then9 ]
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @perf_cmd_exec.__UNIQUE_ID_ddebug256, ptr noundef %17, ptr noundef nonnull @.str.36, i32 noundef %.sink29) #10
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %for.inc.sink.split.sink.split, %if.then9, %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_highpri_wq to i32))
  %18 = load ptr, ptr @system_highpri_wq, align 4
  %service.i = getelementptr %struct.perf_peer, ptr %3, i32 %pidx.027, i32 11
  %call.i.i20 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %18, ptr noundef %service.i) #10
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %land.lhs.true5.critedge.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge
  %inc = add nuw nsw i32 %pidx.027, 1
  %19 = ptrtoint ptr %pcnt to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pcnt, align 8
  %cmp = icmp slt i32 %inc, %20
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_db_event(ptr noundef %ctx, i32 noundef %vec) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @perf_db_event.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@perf_db_event, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !303

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 8
  %ops.i = getelementptr inbounds %struct.ntb_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 8
  %db_vector_mask.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %db_vector_mask.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %db_vector_mask.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %db_valid_mask.i.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %3, i32 0, i32 16
  %6 = ptrtoint ptr %db_valid_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %db_valid_mask.i.i, align 4
  %call.i.i = tail call i64 %7(ptr noundef %1) #10
  br label %ntb_db_vector_mask.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i = tail call i64 %5(ptr noundef %1, i32 noundef %vec) #10
  br label %ntb_db_vector_mask.exit

ntb_db_vector_mask.exit:                          ; preds = %if.end.i, %if.then.i
  %retval.0.i12 = phi i64 [ %call3.i, %if.end.i ], [ %call.i.i, %if.then.i ]
  %8 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctx, align 8
  %ops.i13 = getelementptr inbounds %struct.ntb_dev, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %ops.i13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i13, align 8
  %db_read.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %11, i32 0, i32 19
  %12 = ptrtoint ptr %db_read.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %db_read.i, align 4
  %call.i = tail call i64 %13(ptr noundef %9) #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @perf_db_event.__UNIQUE_ID_ddebug257, ptr noundef %1, ptr noundef nonnull @.str.80, i32 noundef %vec, i64 noundef %retval.0.i12, i64 noundef %call.i) #10
  br label %do.end

do.end:                                           ; preds = %ntb_db_vector_mask.exit, %entry
  tail call fastcc void @perf_cmd_recv(ptr noundef %ctx)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_msg_event(ptr noundef %ctx) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @perf_msg_event.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@perf_msg_event, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !303

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 8
  %ops.i = getelementptr inbounds %struct.ntb_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 8
  %msg_read_sts.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %3, i32 0, i32 42
  %4 = ptrtoint ptr %msg_read_sts.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %msg_read_sts.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.then.ntb_msg_read_sts.exit_crit_edge, label %if.end.i

if.then.ntb_msg_read_sts.exit_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %ntb_msg_read_sts.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i64 %5(ptr noundef %1) #10
  br label %ntb_msg_read_sts.exit

ntb_msg_read_sts.exit:                            ; preds = %if.end.i, %if.then.ntb_msg_read_sts.exit_crit_edge
  %retval.0.i8 = phi i64 [ %call.i, %if.end.i ], [ 0, %if.then.ntb_msg_read_sts.exit_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @perf_msg_event.__UNIQUE_ID_ddebug258, ptr noundef %1, ptr noundef nonnull @.str.84, i64 noundef %retval.0.i8) #10
  br label %do.end

do.end:                                           ; preds = %ntb_msg_read_sts.exit, %entry
  tail call fastcc void @perf_cmd_recv(ptr noundef %ctx)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @perf_cmd_recv(ptr noundef %perf) unnamed_addr #4 align 64 {
entry:
  %pidx = alloca i32, align 4
  %cmd = alloca i32, align 4
  %data = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pidx) #10
  %0 = ptrtoint ptr %pidx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %pidx, align 4, !annotation !302
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd) #10
  %1 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %cmd, align 4, !annotation !302
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data) #10
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %data, align 8, !annotation !302
  %cmd_recv = getelementptr inbounds %struct.perf_ctx, ptr %perf, i32 0, i32 11
  %3 = ptrtoint ptr %cmd_recv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cmd_recv, align 4
  %call = call i32 %4(ptr noundef %perf, ptr noundef nonnull %pidx, ptr noundef nonnull %cmd, ptr noundef nonnull %data) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cond = icmp eq i32 %call, 0
  br i1 %cond, label %while.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body:                                       ; preds = %entry
  %peers = getelementptr inbounds %struct.perf_ctx, ptr %perf, i32 0, i32 3
  %5 = ptrtoint ptr %peers to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %peers, align 4
  %7 = ptrtoint ptr %pidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pidx, align 4
  %arrayidx = getelementptr %struct.perf_peer, ptr %6, i32 %8
  %9 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cmd, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %10, label %do.end [
    i32 0, label %sw.bb
    i32 2, label %sw.bb2
  ]

sw.bb:                                            ; preds = %while.body
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %data, align 8
  %conv = trunc i64 %13 to i32
  %inbuf_size = getelementptr %struct.perf_peer, ptr %6, i32 %8, i32 9
  %14 = ptrtoint ptr %inbuf_size to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv, ptr %inbuf_size, align 4
  %sts.i = getelementptr %struct.perf_peer, ptr %6, i32 %8, i32 12
  call void @_set_bit(i32 noundef 1, ptr noundef %sts.i) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @perf_cmd_exec.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@perf_cmd_recv, %if.then.i)) #10
          to label %perf_cmd_exec.exit [label %if.then.i], !srcloc !303

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @perf_cmd_exec.__UNIQUE_ID_ddebug256, ptr noundef %18, ptr noundef nonnull @.str.36, i32 noundef 1) #10
  br label %perf_cmd_exec.exit

perf_cmd_exec.exit:                               ; preds = %if.then.i, %sw.bb
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_highpri_wq to i32))
  %19 = load ptr, ptr @system_highpri_wq, align 4
  %service.i = getelementptr %struct.perf_peer, ptr %6, i32 %8, i32 11
  %call.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %19, ptr noundef %service.i) #10
  br label %cleanup

sw.bb2:                                           ; preds = %while.body
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %data, align 8
  %outbuf_xlat = getelementptr %struct.perf_peer, ptr %6, i32 %8, i32 3
  %22 = ptrtoint ptr %outbuf_xlat to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %outbuf_xlat, align 8
  %sts.i1 = getelementptr %struct.perf_peer, ptr %6, i32 %8, i32 12
  call void @_set_bit(i32 noundef 3, ptr noundef %sts.i1) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @perf_cmd_exec.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@perf_cmd_recv, %if.then.i2)) #10
          to label %perf_cmd_exec.exit5 [label %if.then.i2], !srcloc !303

if.then.i2:                                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @perf_cmd_exec.__UNIQUE_ID_ddebug256, ptr noundef %26, ptr noundef nonnull @.str.36, i32 noundef 3) #10
  br label %perf_cmd_exec.exit5

perf_cmd_exec.exit5:                              ; preds = %if.then.i2, %sw.bb2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_highpri_wq to i32))
  %27 = load ptr, ptr @system_highpri_wq, align 4
  %service.i3 = getelementptr %struct.perf_peer, ptr %6, i32 %8, i32 11
  %call.i.i4 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %27, ptr noundef %service.i3) #10
  br label %cleanup

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %perf to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %perf, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.81) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %perf_cmd_exec.exit5, %perf_cmd_exec.exit, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pidx) #10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_u8(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_bool(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @perf_dbgfs_read_info(ptr nocapture noundef readonly %filep, ptr noundef %ubuf, i32 noundef %size, ptr noundef %offp) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filep, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = tail call i32 @llvm.umin.i32(i32 %size, i32 4096)
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %2, i32 noundef 3264) #14
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %call9.i, i32 noundef %2, ptr noundef nonnull @.str.93) #10
  %add.ptr2 = getelementptr i8, ptr %call9.i, i32 %call1
  %sub3 = sub i32 %2, %call1
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 8
  %ops.i = getelementptr inbounds %struct.ntb_dev, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops.i, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i190

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 @ntb_default_port_number(ptr noundef %4) #10
  br label %ntb_port_number.exit

if.end.i190:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i = tail call i32 %8(ptr noundef %4) #10
  br label %ntb_port_number.exit

ntb_port_number.exit:                             ; preds = %if.end.i190, %if.then.i
  %retval.0.i = phi i32 [ %call3.i, %if.end.i190 ], [ %call.i, %if.then.i ]
  %gidx = getelementptr inbounds %struct.perf_ctx, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %gidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %gidx, align 4
  %call5 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr2, i32 noundef %sub3, ptr noundef nonnull @.str.94, i32 noundef %retval.0.i, i32 noundef %10) #10
  %add6 = add i32 %call5, %call1
  %add.ptr7 = getelementptr i8, ptr %call9.i, i32 %add6
  %sub8 = sub i32 %2, %add6
  %call9 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr7, i32 noundef %sub8, ptr noundef nonnull @.str.95) #10
  %add10 = add i32 %add6, %call9
  %busy_flag = getelementptr inbounds %struct.perf_ctx, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %busy_flag to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %busy_flag, align 4
  %and1.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool12.not = icmp eq i32 %and1.i, 0
  %add.ptr23 = getelementptr i8, ptr %call9.i, i32 %add10
  %sub24 = sub i32 %2, %add10
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %ntb_port_number.exit
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 8
  %test_peer = getelementptr inbounds %struct.perf_ctx, ptr %1, i32 0, i32 8
  %15 = ptrtoint ptr %test_peer to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %test_peer, align 8
  %pidx17 = getelementptr inbounds %struct.perf_peer, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %pidx17 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pidx17, align 4
  %ops.i191 = getelementptr inbounds %struct.ntb_dev, ptr %14, i32 0, i32 3
  %19 = ptrtoint ptr %ops.i191 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops.i191, align 8
  %peer_port_number.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %peer_port_number.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %peer_port_number.i, align 4
  %tobool.not.i192 = icmp eq ptr %22, null
  br i1 %tobool.not.i192, label %if.then.i194, label %if.end.i196

if.then.i194:                                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  %call.i193 = tail call i32 @ntb_default_peer_port_number(ptr noundef %14, i32 noundef %18) #10
  br label %ntb_peer_port_number.exit

if.end.i196:                                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i195 = tail call i32 %22(ptr noundef %14, i32 noundef %18) #10
  br label %ntb_peer_port_number.exit

ntb_peer_port_number.exit:                        ; preds = %if.end.i196, %if.then.i194
  %retval.0.i197 = phi i32 [ %call3.i195, %if.end.i196 ], [ %call.i193, %if.then.i194 ]
  %23 = ptrtoint ptr %test_peer to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %test_peer, align 8
  %pidx20 = getelementptr inbounds %struct.perf_peer, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %pidx20 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pidx20, align 4
  %call21 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr23, i32 noundef %sub24, ptr noundef nonnull @.str.96, i32 noundef %retval.0.i197, i32 noundef %26) #10
  br label %if.end27

if.else:                                          ; preds = %ntb_port_number.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call25 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr23, i32 noundef %sub24, ptr noundef nonnull @.str.97) #10
  br label %if.end27

if.end27:                                         ; preds = %if.else, %ntb_peer_port_number.exit
  %call21.pn = phi i32 [ %call21, %ntb_peer_port_number.exit ], [ %call25, %if.else ]
  %pos.0 = add i32 %call21.pn, %add10
  %pcnt = getelementptr inbounds %struct.perf_ctx, ptr %1, i32 0, i32 2
  %27 = ptrtoint ptr %pcnt to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pcnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp28211 = icmp sgt i32 %28, 0
  br i1 %cmp28211, label %for.body.lr.ph, label %if.end27.for.end_crit_edge

if.end27.for.end_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end27
  %peers = getelementptr inbounds %struct.perf_ctx, ptr %1, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %pidx.0213 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %pos.1212 = phi i32 [ %pos.0, %for.body.lr.ph ], [ %pos.2, %for.inc.for.body_crit_edge ]
  %29 = ptrtoint ptr %peers to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %peers, align 4
  %add.ptr29 = getelementptr i8, ptr %call9.i, i32 %pos.1212
  %sub30 = sub i32 %2, %pos.1212
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 8
  %pidx32 = getelementptr %struct.perf_peer, ptr %30, i32 %pidx.0213, i32 1
  %33 = ptrtoint ptr %pidx32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pidx32, align 4
  %ops.i198 = getelementptr inbounds %struct.ntb_dev, ptr %32, i32 0, i32 3
  %35 = ptrtoint ptr %ops.i198 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ops.i198, align 8
  %peer_port_number.i199 = getelementptr inbounds %struct.ntb_dev_ops, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %peer_port_number.i199 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %peer_port_number.i199, align 4
  %tobool.not.i200 = icmp eq ptr %38, null
  br i1 %tobool.not.i200, label %if.then.i202, label %if.end.i204

if.then.i202:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %call.i201 = tail call i32 @ntb_default_peer_port_number(ptr noundef %32, i32 noundef %34) #10
  br label %ntb_peer_port_number.exit206

if.end.i204:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i203 = tail call i32 %38(ptr noundef %32, i32 noundef %34) #10
  br label %ntb_peer_port_number.exit206

ntb_peer_port_number.exit206:                     ; preds = %if.end.i204, %if.then.i202
  %retval.0.i205 = phi i32 [ %call3.i203, %if.end.i204 ], [ %call.i201, %if.then.i202 ]
  %39 = ptrtoint ptr %pidx32 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pidx32, align 4
  %gidx35 = getelementptr %struct.perf_peer, ptr %30, i32 %pidx.0213, i32 2
  %41 = ptrtoint ptr %gidx35 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %gidx35, align 8
  %call36 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr29, i32 noundef %sub30, ptr noundef nonnull @.str.98, i32 noundef %retval.0.i205, i32 noundef %40, i32 noundef %42) #10
  %add37 = add i32 %call36, %pos.1212
  %add.ptr38 = getelementptr i8, ptr %call9.i, i32 %add37
  %sub39 = sub i32 %2, %add37
  %sts = getelementptr %struct.perf_peer, ptr %30, i32 %pidx.0213, i32 12
  %43 = ptrtoint ptr %sts to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %sts, align 4
  %45 = and i32 %44, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool41.not = icmp eq i32 %45, 0
  %cond42 = select i1 %tobool41.not, ptr @.str.101, ptr @.str.100
  %call43 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr38, i32 noundef %sub39, ptr noundef nonnull @.str.99, ptr noundef nonnull %cond42) #10
  %add44 = add i32 %call43, %add37
  %add.ptr45 = getelementptr i8, ptr %call9.i, i32 %add44
  %sub46 = sub i32 %2, %add44
  %outbuf = getelementptr %struct.perf_peer, ptr %30, i32 %pidx.0213, i32 5
  %46 = ptrtoint ptr %outbuf to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %outbuf, align 4
  %call47 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr45, i32 noundef %sub46, ptr noundef nonnull @.str.102, ptr noundef %47) #10
  %add48 = add i32 %call47, %add44
  %add.ptr49 = getelementptr i8, ptr %call9.i, i32 %add48
  %sub50 = sub i32 %2, %add48
  %out_phys_addr = getelementptr %struct.perf_peer, ptr %30, i32 %pidx.0213, i32 6
  %call51 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr49, i32 noundef %sub50, ptr noundef nonnull @.str.103, ptr noundef %out_phys_addr) #10
  %add52 = add i32 %add48, %call51
  %add.ptr53 = getelementptr i8, ptr %call9.i, i32 %add52
  %sub54 = sub i32 %2, %add52
  %outbuf_size = getelementptr %struct.perf_peer, ptr %30, i32 %pidx.0213, i32 4
  %call55 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr53, i32 noundef %sub54, ptr noundef nonnull @.str.104, ptr noundef %outbuf_size) #10
  %add56 = add i32 %add52, %call55
  %add.ptr57 = getelementptr i8, ptr %call9.i, i32 %add56
  %sub58 = sub i32 %2, %add56
  %outbuf_xlat = getelementptr %struct.perf_peer, ptr %30, i32 %pidx.0213, i32 3
  %48 = ptrtoint ptr %outbuf_xlat to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %outbuf_xlat, align 8
  %call59 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr57, i32 noundef %sub58, ptr noundef nonnull @.str.105, i64 noundef %49) #10
  %add60 = add i32 %call59, %add56
  %inbuf = getelementptr %struct.perf_peer, ptr %30, i32 %pidx.0213, i32 10
  %50 = ptrtoint ptr %inbuf to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %inbuf, align 8
  %tobool61.not = icmp eq ptr %51, null
  %add.ptr63 = getelementptr i8, ptr %call9.i, i32 %add60
  %sub64 = sub i32 %2, %add60
  br i1 %tobool61.not, label %if.then62, label %if.end67

if.then62:                                        ; preds = %ntb_peer_port_number.exit206
  call void @__sanitizer_cov_trace_pc() #12
  %call65 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr63, i32 noundef %sub64, ptr noundef nonnull @.str.106) #10
  %add66 = add i32 %call65, %add60
  br label %for.inc

if.end67:                                         ; preds = %ntb_peer_port_number.exit206
  call void @__sanitizer_cov_trace_pc() #12
  %call71 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr63, i32 noundef %sub64, ptr noundef nonnull @.str.107, ptr noundef nonnull %51) #10
  %add72 = add i32 %call71, %add60
  %add.ptr73 = getelementptr i8, ptr %call9.i, i32 %add72
  %sub74 = sub i32 %2, %add72
  %inbuf_size = getelementptr %struct.perf_peer, ptr %30, i32 %pidx.0213, i32 9
  %call75 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr73, i32 noundef %sub74, ptr noundef nonnull @.str.108, ptr noundef %inbuf_size) #10
  %add76 = add i32 %add72, %call75
  %add.ptr77 = getelementptr i8, ptr %call9.i, i32 %add76
  %sub78 = sub i32 %2, %add76
  %inbuf_xlat = getelementptr %struct.perf_peer, ptr %30, i32 %pidx.0213, i32 8
  %call79 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr77, i32 noundef %sub78, ptr noundef nonnull @.str.109, ptr noundef %inbuf_xlat) #10
  %add80 = add i32 %add76, %call79
  br label %for.inc

for.inc:                                          ; preds = %if.end67, %if.then62
  %pos.2 = phi i32 [ %add80, %if.end67 ], [ %add66, %if.then62 ]
  %inc = add nuw nsw i32 %pidx.0213, 1
  %52 = ptrtoint ptr %pcnt to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %pcnt, align 8
  %cmp28 = icmp slt i32 %inc, %53
  br i1 %cmp28, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end27.for.end_crit_edge
  %pos.1.lcssa = phi i32 [ %pos.0, %if.end27.for.end_crit_edge ], [ %pos.2, %for.inc.for.end_crit_edge ]
  %call81 = tail call i32 @simple_read_from_buffer(ptr noundef %ubuf, i32 noundef %size, ptr noundef %offp, ptr noundef nonnull %call9.i, i32 noundef %pos.1.lcssa) #10
  tail call void @kfree(ptr noundef nonnull %call9.i) #10
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call81, %for.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @perf_dbgfs_read_run(ptr nocapture noundef readonly %filep, ptr noundef %ubuf, i32 noundef %size, ptr noundef %offp) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filep, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 1024) #16
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %busy_flag.i = getelementptr inbounds %struct.perf_ctx, ptr %1, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %busy_flag.i, i32 noundef 4) #10
  %3 = ptrtoint ptr %busy_flag.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %busy_flag.i, align 4
  %and.i.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %test_and_set_bit_lock.exit.i, label %if.end.err_free_crit_edge

if.end.err_free_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free

test_and_set_bit_lock.exit.i:                     ; preds = %if.end
  tail call void @llvm.prefetch.p0(ptr %busy_flag.i, i32 1, i32 3, i32 1) #10
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %busy_flag.i, ptr %busy_flag.i, i32 1, ptr elementtype(i32) %busy_flag.i) #10, !srcloc !312
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !313
  %and1.i.i.i = and i32 %asmresult.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %phi.cmp.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %phi.cmp.i.not.i, label %if.end.i, label %test_and_set_bit_lock.exit.i.err_free_crit_edge

test_and_set_bit_lock.exit.i.err_free_crit_edge:  ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free

if.end.i:                                         ; preds = %test_and_set_bit_lock.exit.i
  %test_peer.i = getelementptr inbounds %struct.perf_ctx, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %test_peer.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %test_peer.i, align 8
  %pidx.i = getelementptr inbounds %struct.perf_peer, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %pidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pidx.i, align 4
  %call1.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %call7.i, i32 noundef 1024, ptr noundef nonnull @.str.110, i32 noundef %9) #10
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i
  %pos.0 = phi i32 [ %call1.i, %if.end.i ], [ %pos.1, %for.inc.i.for.body.i_crit_edge ]
  %tidx.010.i = phi i32 [ 0, %if.end.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %status.i = getelementptr %struct.perf_ctx, ptr %1, i32 0, i32 9, i32 %tidx.010.i, i32 8
  %10 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %status.i, align 8
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.114)
  switch i32 %11, label %if.then6.i [
    i32 -61, label %for.body.i.for.inc.i_crit_edge
    i32 0, label %if.end12.i
  ]

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then6.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr7.i = getelementptr i8, ptr %call7.i, i32 %pos.0
  %sub8.i = sub i32 1024, %pos.0
  %call10.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr7.i, i32 noundef %sub8.i, ptr noundef nonnull @.str.111, i32 noundef %tidx.010.i, i32 noundef %11) #10
  br label %for.inc.sink.split.i

if.end12.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr13.i = getelementptr i8, ptr %call7.i, i32 %pos.0
  %sub14.i = sub i32 1024, %pos.0
  %copied.i = getelementptr %struct.perf_ctx, ptr %1, i32 0, i32 9, i32 %tidx.010.i, i32 6
  %13 = ptrtoint ptr %copied.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %copied.i, align 8
  %duration.i = getelementptr %struct.perf_ctx, ptr %1, i32 0, i32 9, i32 %tidx.010.i, i32 7
  %15 = ptrtoint ptr %duration.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %duration.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %16)
  %cmp8.i.i.i = icmp slt i64 %16, 0
  %17 = tail call i64 @llvm.abs.i64(i64 %16, i1 false) #10
  %18 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %17, i32 0) #15, !srcloc !310
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %18, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %18, 1
  %19 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %17, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #15, !srcloc !311
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %19, 0
  %div1811.i.i.i = lshr i64 %asmresult10.i.i.i.i, 9
  %sub210.i.i.i = sub nsw i64 0, %div1811.i.i.i
  %cond213.i.i.i = select i1 %cmp8.i.i.i, i64 %sub210.i.i.i, i64 %div1811.i.i.i
  %call19.i = tail call i64 @div64_u64(i64 noundef %14, i64 noundef %cond213.i.i.i) #10
  %call20.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr13.i, i32 noundef %sub14.i, ptr noundef nonnull @.str.112, i32 noundef %tidx.010.i, i64 noundef %14, i64 noundef %cond213.i.i.i, i64 noundef %call19.i) #10
  br label %for.inc.sink.split.i

for.inc.sink.split.i:                             ; preds = %if.end12.i, %if.then6.i
  %call20.sink.i = phi i32 [ %call20.i, %if.end12.i ], [ %call10.i, %if.then6.i ]
  %add21.i = add i32 %call20.sink.i, %pos.0
  br label %for.inc.i

for.inc.i:                                        ; preds = %for.inc.sink.split.i, %for.body.i.for.inc.i_crit_edge
  %pos.1 = phi i32 [ %add21.i, %for.inc.sink.split.i ], [ %pos.0, %for.body.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %tidx.010.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %if.end4, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.end4:                                          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i8.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %busy_flag.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !314
  tail call void @llvm.prefetch.p0(ptr %busy_flag.i, i32 1, i32 3, i32 1) #10
  %20 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %busy_flag.i, ptr %busy_flag.i, i32 1, ptr elementtype(i32) %busy_flag.i) #10, !srcloc !315
  %call5 = tail call i32 @simple_read_from_buffer(ptr noundef %ubuf, i32 noundef %size, ptr noundef %offp, ptr noundef nonnull %call7.i, i32 noundef %pos.1) #10
  br label %err_free

err_free:                                         ; preds = %if.end4, %test_and_set_bit_lock.exit.i.err_free_crit_edge, %if.end.err_free_crit_edge
  %ret.0 = phi i32 [ %call5, %if.end4 ], [ -16, %test_and_set_bit_lock.exit.i.err_free_crit_edge ], [ -16, %if.end.err_free_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #10
  br label %cleanup

cleanup:                                          ; preds = %err_free, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err_free ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @perf_dbgfs_write_run(ptr nocapture noundef readonly %filep, ptr noundef %ubuf, i32 noundef %size, ptr nocapture noundef readnone %offp) #4 align 64 {
entry:
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  %pidx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filep, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pidx) #10
  %2 = ptrtoint ptr %pidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %pidx, align 4, !annotation !302
  %call = call i32 @kstrtoint_from_user(ptr noundef %ubuf, i32 noundef %size, i32 noundef 0, ptr noundef nonnull %pidx) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %pidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp slt i32 %4, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %pcnt = getelementptr inbounds %struct.perf_ctx, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %pcnt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pcnt, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp1.not = icmp slt i32 %4, %6
  br i1 %cmp1.not, label %if.end3, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %lor.lhs.false
  %peers = getelementptr inbounds %struct.perf_ctx, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %peers to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %peers, align 4
  %arrayidx = getelementptr %struct.perf_peer, ptr %8, i32 %4
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 8
  %init_comp.i = getelementptr %struct.perf_peer, ptr %8, i32 %4, i32 13
  %call.i = call i32 @wait_for_completion_interruptible(ptr noundef %init_comp.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end3.cleanup_crit_edge, label %if.end.i

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.end3
  %busy_flag.i = getelementptr inbounds %struct.perf_ctx, ptr %10, i32 0, i32 4
  %call.i.i72.i = call zeroext i1 @__kasan_check_write(ptr noundef %busy_flag.i, i32 noundef 4) #10
  %11 = ptrtoint ptr %busy_flag.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %busy_flag.i, align 4
  %and.i.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %test_and_set_bit_lock.exit.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

test_and_set_bit_lock.exit.i:                     ; preds = %if.end.i
  call void @llvm.prefetch.p0(ptr %busy_flag.i, i32 1, i32 3, i32 1) #10
  %13 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %busy_flag.i, ptr %busy_flag.i, i32 1, ptr elementtype(i32) %busy_flag.i) #10, !srcloc !312
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !313
  %and1.i.i.i = and i32 %asmresult.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %phi.cmp.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %phi.cmp.i.not.i, label %if.end4.i, label %test_and_set_bit_lock.exit.i.cleanup_crit_edge

test_and_set_bit_lock.exit.i.cleanup_crit_edge:   ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4.i:                                        ; preds = %test_and_set_bit_lock.exit.i
  %test_peer.i = getelementptr inbounds %struct.perf_ctx, ptr %10, i32 0, i32 8
  %14 = ptrtoint ptr %test_peer.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %arrayidx, ptr %test_peer.i, align 8
  %tsync.i = getelementptr inbounds %struct.perf_ctx, ptr %10, i32 0, i32 6
  %tcnt.i = getelementptr inbounds %struct.perf_ctx, ptr %10, i32 0, i32 7
  %15 = ptrtoint ptr %tcnt.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %tcnt.i, align 4
  %conv.i = zext i8 %16 to i32
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %tsync.i, i32 noundef 4) #10
  %17 = ptrtoint ptr %tsync.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile i32 %conv.i, ptr %tsync.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end4.i
  %tidx.090.i = phi i32 [ 0, %if.end4.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %status.i = getelementptr %struct.perf_ctx, ptr %10, i32 0, i32 9, i32 %tidx.090.i, i32 8
  %18 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -61, ptr %status.i, align 8
  %copied.i = getelementptr %struct.perf_ctx, ptr %10, i32 0, i32 9, i32 %tidx.090.i, i32 6
  %19 = call ptr @memset(ptr %copied.i, i32 0, i32 16)
  %20 = ptrtoint ptr %tcnt.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %tcnt.i, align 4
  %conv9.i = zext i8 %21 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %tidx.090.i, i32 %conv9.i)
  %cmp10.i = icmp ult i32 %tidx.090.i, %conv9.i
  br i1 %cmp10.i, label %if.then12.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then12.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %22 = load ptr, ptr @perf_wq, align 4
  %work.i = getelementptr %struct.perf_ctx, ptr %10, i32 0, i32 9, i32 %tidx.090.i, i32 9
  %call.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %22, ptr noundef %work.i) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then12.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %tidx.090.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 1106) #10
  %call.i.i70.i = call zeroext i1 @__kasan_check_read(ptr noundef %tsync.i, i32 noundef 4) #10
  %23 = ptrtoint ptr %tsync.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %tsync.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp20.i = icmp slt i32 %24, 1
  br i1 %cmp20.i, label %for.end.i.perf_submit_test.exit_crit_edge, label %if.then22.i

for.end.i.perf_submit_test.exit_crit_edge:        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %perf_submit_test.exit

if.then22.i:                                      ; preds = %for.end.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #10
  %25 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #10
  %twait.i = getelementptr inbounds %struct.perf_ctx, ptr %10, i32 0, i32 5
  %call2592.i = call i32 @prepare_to_wait_event(ptr noundef %twait.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #10
  %call.i.i7193.i = call zeroext i1 @__kasan_check_read(ptr noundef %tsync.i, i32 noundef 4) #10
  %26 = ptrtoint ptr %tsync.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %tsync.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp2894.i = icmp slt i32 %27, 1
  br i1 %cmp2894.i, label %if.then22.i.if.end36.thread85.i_crit_edge, label %if.then22.i.if.end31.i_crit_edge

if.then22.i.if.end31.i_crit_edge:                 ; preds = %if.then22.i
  br label %if.end31.i

if.then22.i.if.end36.thread85.i_crit_edge:        ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36.thread85.i

if.end31.i:                                       ; preds = %cleanup.i.if.end31.i_crit_edge, %if.then22.i.if.end31.i_crit_edge
  %call2595.i = phi i32 [ %call25.i, %cleanup.i.if.end31.i_crit_edge ], [ %call2592.i, %if.then22.i.if.end31.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2595.i)
  %tobool.not.i = icmp eq i32 %call2595.i, 0
  br i1 %tobool.not.i, label %cleanup.i, label %if.end36.i

cleanup.i:                                        ; preds = %if.end31.i
  call void @schedule() #10
  %call25.i = call i32 @prepare_to_wait_event(ptr noundef %twait.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #10
  %call.i.i71.i = call zeroext i1 @__kasan_check_read(ptr noundef %tsync.i, i32 noundef 4) #10
  %28 = ptrtoint ptr %tsync.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %tsync.i, align 4
  %cmp28.i = icmp slt i32 %29, 1
  br i1 %cmp28.i, label %cleanup.i.if.end36.thread85.i_crit_edge, label %cleanup.i.if.end31.i_crit_edge

cleanup.i.if.end31.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31.i

cleanup.i.if.end36.thread85.i_crit_edge:          ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36.thread85.i

if.end36.thread85.i:                              ; preds = %cleanup.i.if.end36.thread85.i_crit_edge, %if.then22.i.if.end36.thread85.i_crit_edge
  call void @finish_wait(ptr noundef %twait.i, ptr noundef nonnull %__wq_entry.i) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #10
  br label %perf_submit_test.exit

if.end36.i:                                       ; preds = %if.end31.i
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -512, i32 %call2595.i)
  %cmp38.i = icmp eq i32 %call2595.i, -512
  br i1 %cmp38.i, label %if.then40.i, label %if.end36.i.perf_submit_test.exit_crit_edge

if.end36.i.perf_submit_test.exit_crit_edge:       ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %perf_submit_test.exit

if.then40.i:                                      ; preds = %if.end36.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %tsync.i, i32 noundef 4) #10
  %30 = ptrtoint ptr %tsync.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile i32 -1, ptr %tsync.i, align 4
  call void @__wake_up(ptr noundef %twait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.then40.i
  %tidx.09.i.i = phi i32 [ 0, %if.then40.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %dma_wait.i.i = getelementptr %struct.perf_ctx, ptr %10, i32 0, i32 9, i32 %tidx.09.i.i, i32 3
  call void @__wake_up(ptr noundef %dma_wait.i.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  %work.i.i = getelementptr %struct.perf_ctx, ptr %10, i32 0, i32 9, i32 %tidx.09.i.i, i32 9
  %call.i73.i = call zeroext i1 @cancel_work_sync(ptr noundef %work.i.i) #10
  %inc.i.i = add nuw nsw i32 %tidx.09.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 32
  br i1 %exitcond.not.i.i, label %for.body.i.i.perf_submit_test.exit_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.body.i.i.perf_submit_test.exit_crit_edge:     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %perf_submit_test.exit

perf_submit_test.exit:                            ; preds = %for.body.i.i.perf_submit_test.exit_crit_edge, %if.end36.i.perf_submit_test.exit_crit_edge, %if.end36.thread85.i, %for.end.i.perf_submit_test.exit_crit_edge
  %ret.0.i = phi i32 [ %call2595.i, %if.end36.i.perf_submit_test.exit_crit_edge ], [ 0, %if.end36.thread85.i ], [ 0, %for.end.i.perf_submit_test.exit_crit_edge ], [ -4, %for.body.i.i.perf_submit_test.exit_crit_edge ]
  %call.i.i74.i = call zeroext i1 @__kasan_check_write(ptr noundef %busy_flag.i, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !314
  call void @llvm.prefetch.p0(ptr %busy_flag.i, i32 1, i32 3, i32 1) #10
  %31 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %busy_flag.i, ptr %busy_flag.i, i32 1, ptr elementtype(i32) %busy_flag.i) #10, !srcloc !315
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool5.not = icmp eq i32 %ret.0.i, 0
  %spec.select = select i1 %tobool5.not, i32 %size, i32 %ret.0.i
  br label %cleanup

cleanup:                                          ; preds = %perf_submit_test.exit, %test_and_set_bit_lock.exit.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -16, %if.end.i.cleanup_crit_edge ], [ -16, %test_and_set_bit_lock.exit.i.cleanup_crit_edge ], [ %call.i, %if.end3.cleanup_crit_edge ], [ %spec.select, %perf_submit_test.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pidx) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint_from_user(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @perf_dbgfs_read_tcnt(ptr nocapture noundef readonly %filep, ptr noundef %ubuf, i32 noundef %size, ptr noundef %offp) #4 align 64 {
entry:
  %buf = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filep, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #10
  %tcnt = getelementptr inbounds %struct.perf_ctx, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %buf, align 8
  %3 = ptrtoint ptr %tcnt to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %tcnt, align 4
  %conv = zext i8 %4 to i32
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 8, ptr noundef nonnull @.str.113, i32 noundef %conv) #10
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %ubuf, i32 noundef %size, ptr noundef %offp, ptr noundef nonnull %buf, i32 noundef %call) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #10
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @perf_dbgfs_write_tcnt(ptr nocapture noundef readonly %filep, ptr noundef %ubuf, i32 noundef %size, ptr nocapture noundef readnone %offp) #4 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filep, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #10
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %val, align 1, !annotation !302
  %call = call i32 @kstrtou8_from_user(ptr noundef %ubuf, i32 noundef %size, i32 noundef 0, ptr noundef nonnull %val) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %val, align 1
  %5 = add i8 %4, -33
  call void @__sanitizer_cov_trace_const_cmp1(i8 -32, i8 %5)
  %6 = icmp ult i8 %5, -32
  br i1 %6, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %busy_flag.i = getelementptr inbounds %struct.perf_ctx, ptr %1, i32 0, i32 4
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %busy_flag.i, i32 noundef 4) #10
  %7 = ptrtoint ptr %busy_flag.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %busy_flag.i, align 4
  %and.i.i.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %test_and_set_bit_lock.exit.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

test_and_set_bit_lock.exit.i:                     ; preds = %if.end.i
  call void @llvm.prefetch.p0(ptr %busy_flag.i, i32 1, i32 3, i32 1) #10
  %9 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %busy_flag.i, ptr %busy_flag.i, i32 1, ptr elementtype(i32) %busy_flag.i) #10, !srcloc !312
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !313
  %and1.i.i.i = and i32 %asmresult.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %phi.cmp.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %phi.cmp.i.not.i, label %10, label %test_and_set_bit_lock.exit.i.cleanup_crit_edge

test_and_set_bit_lock.exit.i.cleanup_crit_edge:   ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

10:                                               ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %tcnt7.i = getelementptr inbounds %struct.perf_ctx, ptr %1, i32 0, i32 7
  %11 = ptrtoint ptr %tcnt7.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %4, ptr %tcnt7.i, align 4
  %call.i.i13.i = call zeroext i1 @__kasan_check_write(ptr noundef %busy_flag.i, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !314
  call void @llvm.prefetch.p0(ptr %busy_flag.i, i32 1, i32 3, i32 1) #10
  %12 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %busy_flag.i, ptr %busy_flag.i, i32 1, ptr elementtype(i32) %busy_flag.i) #10, !srcloc !315
  br label %cleanup

cleanup:                                          ; preds = %10, %test_and_set_bit_lock.exit.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %size, %10 ], [ -16, %if.end.i.cleanup_crit_edge ], [ -16, %test_and_set_bit_lock.exit.i.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou8_from_user(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @perf_disable_service(ptr nocapture noundef readonly %perf) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd_send = getelementptr inbounds %struct.perf_ctx, ptr %perf, i32 0, i32 10
  %0 = ptrtoint ptr %cmd_send to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmd_send, align 8
  %cmp = icmp eq ptr %1, @perf_msg_cmd_send
  %2 = ptrtoint ptr %perf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf, align 8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %ops.i = getelementptr inbounds %struct.ntb_dev, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 8
  %msg_inbits.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %5, i32 0, i32 40
  %6 = ptrtoint ptr %msg_inbits.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %msg_inbits.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.then.ntb_msg_inbits.exit_crit_edge, label %if.end.i

if.then.ntb_msg_inbits.exit_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %ntb_msg_inbits.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i64 %7(ptr noundef %3) #10
  br label %ntb_msg_inbits.exit

ntb_msg_inbits.exit:                              ; preds = %if.end.i, %if.then.ntb_msg_inbits.exit_crit_edge
  %retval.0.i = phi i64 [ %call.i, %if.end.i ], [ 0, %if.then.ntb_msg_inbits.exit_crit_edge ]
  %8 = ptrtoint ptr %perf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %perf, align 8
  %ops.i60 = getelementptr inbounds %struct.ntb_dev, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %ops.i60 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i60, align 8
  %msg_set_mask.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %11, i32 0, i32 44
  %12 = ptrtoint ptr %msg_set_mask.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %msg_set_mask.i, align 4
  %tobool.not.i61 = icmp eq ptr %13, null
  br i1 %tobool.not.i61, label %ntb_msg_inbits.exit.if.end_crit_edge, label %if.end.i63

ntb_msg_inbits.exit.if.end_crit_edge:             ; preds = %ntb_msg_inbits.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i63:                                       ; preds = %ntb_msg_inbits.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call.i62 = tail call i32 %13(ptr noundef %9, i64 noundef %retval.0.i) #10
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %gidx = getelementptr inbounds %struct.perf_ctx, ptr %perf, i32 0, i32 1
  %14 = ptrtoint ptr %gidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %gidx, align 4
  %sh_prom = zext i32 %15 to i64
  %shl = shl nuw i64 1, %sh_prom
  %ops.i64 = getelementptr inbounds %struct.ntb_dev, ptr %3, i32 0, i32 3
  %16 = ptrtoint ptr %ops.i64 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i64, align 8
  %db_set_mask.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %17, i32 0, i32 23
  %18 = ptrtoint ptr %db_set_mask.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %db_set_mask.i, align 4
  %call.i65 = tail call i32 %19(ptr noundef %3, i64 noundef %shl) #10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.end.i63, %ntb_msg_inbits.exit.if.end_crit_edge
  %20 = ptrtoint ptr %perf to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %perf, align 8
  tail call void @ntb_clear_ctx(ptr noundef %21) #10
  %pcnt = getelementptr inbounds %struct.perf_ctx, ptr %perf, i32 0, i32 2
  %22 = ptrtoint ptr %pcnt to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pcnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp675 = icmp sgt i32 %23, 0
  br i1 %cmp675, label %for.body.lr.ph, label %if.end.for.end29_crit_edge

if.end.for.end29_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end29

for.body.lr.ph:                                   ; preds = %if.end
  %peers = getelementptr inbounds %struct.perf_ctx, ptr %perf, i32 0, i32 3
  br label %for.body

for.cond8.preheader:                              ; preds = %perf_cmd_exec.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp1077 = icmp sgt i32 %32, 0
  br i1 %cmp1077, label %for.body11.lr.ph, label %for.cond8.preheader.for.cond18.preheader_crit_edge

for.cond8.preheader.for.cond18.preheader_crit_edge: ; preds = %for.cond8.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond18.preheader

for.body11.lr.ph:                                 ; preds = %for.cond8.preheader
  %peers12 = getelementptr inbounds %struct.perf_ctx, ptr %perf, i32 0, i32 3
  br label %for.body11

for.body:                                         ; preds = %perf_cmd_exec.exit.for.body_crit_edge, %for.body.lr.ph
  %pidx.076 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %perf_cmd_exec.exit.for.body_crit_edge ]
  %24 = ptrtoint ptr %peers to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %peers, align 4
  %sts.i = getelementptr %struct.perf_peer, ptr %25, i32 %pidx.076, i32 12
  tail call void @_set_bit(i32 noundef 4, ptr noundef %sts.i) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @perf_cmd_exec.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@perf_disable_service, %if.then.i)) #10
          to label %perf_cmd_exec.exit [label %if.then.i], !srcloc !303

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr %struct.perf_peer, ptr %25, i32 %pidx.076
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @perf_cmd_exec.__UNIQUE_ID_ddebug256, ptr noundef %29, ptr noundef nonnull @.str.36, i32 noundef 4) #10
  br label %perf_cmd_exec.exit

perf_cmd_exec.exit:                               ; preds = %if.then.i, %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_highpri_wq to i32))
  %30 = load ptr, ptr @system_highpri_wq, align 4
  %service.i = getelementptr %struct.perf_peer, ptr %25, i32 %pidx.076, i32 11
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %30, ptr noundef %service.i) #10
  %inc = add nuw nsw i32 %pidx.076, 1
  %31 = ptrtoint ptr %pcnt to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pcnt, align 8
  %cmp6 = icmp slt i32 %inc, %32
  br i1 %cmp6, label %perf_cmd_exec.exit.for.body_crit_edge, label %for.cond8.preheader

perf_cmd_exec.exit.for.body_crit_edge:            ; preds = %perf_cmd_exec.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond18.preheader:                             ; preds = %for.body11.for.cond18.preheader_crit_edge, %for.cond8.preheader.for.cond18.preheader_crit_edge
  %33 = phi i32 [ %32, %for.cond8.preheader.for.cond18.preheader_crit_edge ], [ %37, %for.body11.for.cond18.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp2079 = icmp sgt i32 %33, 0
  br i1 %cmp2079, label %for.body21.lr.ph, label %for.cond18.preheader.for.end29_crit_edge

for.cond18.preheader.for.end29_crit_edge:         ; preds = %for.cond18.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end29

for.body21.lr.ph:                                 ; preds = %for.cond18.preheader
  %peers22 = getelementptr inbounds %struct.perf_ctx, ptr %perf, i32 0, i32 3
  br label %for.body21

for.body11:                                       ; preds = %for.body11.for.body11_crit_edge, %for.body11.lr.ph
  %pidx.178 = phi i32 [ 0, %for.body11.lr.ph ], [ %inc16, %for.body11.for.body11_crit_edge ]
  %34 = ptrtoint ptr %peers12 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %peers12, align 4
  %service = getelementptr %struct.perf_peer, ptr %35, i32 %pidx.178, i32 11
  %call14 = tail call zeroext i1 @flush_work(ptr noundef %service) #10
  %inc16 = add nuw nsw i32 %pidx.178, 1
  %36 = ptrtoint ptr %pcnt to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pcnt, align 8
  %cmp10 = icmp slt i32 %inc16, %37
  br i1 %cmp10, label %for.body11.for.body11_crit_edge, label %for.body11.for.cond18.preheader_crit_edge

for.body11.for.cond18.preheader_crit_edge:        ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond18.preheader

for.body11.for.body11_crit_edge:                  ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body11

for.body21:                                       ; preds = %ntb_spad_write.exit.for.body21_crit_edge, %for.body21.lr.ph
  %pidx.280 = phi i32 [ 0, %for.body21.lr.ph ], [ %inc28, %ntb_spad_write.exit.for.body21_crit_edge ]
  %38 = ptrtoint ptr %perf to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %perf, align 8
  %ops.i67 = getelementptr inbounds %struct.ntb_dev, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %ops.i67 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ops.i67, align 8
  %spad_write.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %41, i32 0, i32 35
  %42 = ptrtoint ptr %spad_write.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %spad_write.i, align 4
  %tobool.not.i68 = icmp eq ptr %43, null
  br i1 %tobool.not.i68, label %for.body21.ntb_spad_write.exit_crit_edge, label %if.end.i70

for.body21.ntb_spad_write.exit_crit_edge:         ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #12
  br label %ntb_spad_write.exit

if.end.i70:                                       ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %peers22 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %peers22, align 4
  %gidx25 = getelementptr %struct.perf_peer, ptr %45, i32 %pidx.280, i32 2
  %46 = ptrtoint ptr %gidx25 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %gidx25, align 8
  %mul = mul i32 %47, 3
  %call.i69 = tail call i32 %43(ptr noundef %39, i32 noundef %mul, i32 noundef 0) #10
  br label %ntb_spad_write.exit

ntb_spad_write.exit:                              ; preds = %if.end.i70, %for.body21.ntb_spad_write.exit_crit_edge
  %inc28 = add nuw nsw i32 %pidx.280, 1
  %48 = ptrtoint ptr %pcnt to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %pcnt, align 8
  %cmp20 = icmp slt i32 %inc28, %49
  br i1 %cmp20, label %ntb_spad_write.exit.for.body21_crit_edge, label %ntb_spad_write.exit.for.end29_crit_edge

ntb_spad_write.exit.for.end29_crit_edge:          ; preds = %ntb_spad_write.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end29

ntb_spad_write.exit.for.body21_crit_edge:         ; preds = %ntb_spad_write.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body21

for.end29:                                        ; preds = %ntb_spad_write.exit.for.end29_crit_edge, %for.cond18.preheader.for.end29_crit_edge, %if.end.for.end29_crit_edge
  %50 = ptrtoint ptr %perf to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %perf, align 8
  %gidx31 = getelementptr inbounds %struct.perf_ctx, ptr %perf, i32 0, i32 1
  %52 = ptrtoint ptr %gidx31 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %gidx31, align 4
  %sh_prom32 = zext i32 %53 to i64
  %shl33 = shl nuw i64 1, %sh_prom32
  %ops.i71 = getelementptr inbounds %struct.ntb_dev, ptr %51, i32 0, i32 3
  %54 = ptrtoint ptr %ops.i71 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ops.i71, align 8
  %db_clear.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %55, i32 0, i32 21
  %56 = ptrtoint ptr %db_clear.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %db_clear.i, align 4
  %call.i72 = tail call i32 %57(ptr noundef %51, i64 noundef %shl33) #10
  %58 = ptrtoint ptr %perf to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %perf, align 8
  %ops.i73 = getelementptr inbounds %struct.ntb_dev, ptr %59, i32 0, i32 3
  %60 = ptrtoint ptr %ops.i73 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ops.i73, align 8
  %link_disable.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %61, i32 0, i32 6
  %62 = ptrtoint ptr %link_disable.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %link_disable.i, align 4
  %call.i74 = tail call i32 %63(ptr noundef %59) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 132)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 132)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind readnone }
attributes #16 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !11, !13, !15, !16, !18, !20, !21, !23, !25, !26, !28, !30, !31, !33, !35, !37, !39, !41, !43, !45, !46, !47, !49, !50, !52, !53, !55, !56, !57, !58, !59, !61, !62, !63, !65, !67, !69, !70, !72, !73, !74, !76, !77, !78, !79, !80, !81, !83, !84, !85, !86, !87, !89, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !113, !115, !116, !118, !119, !120, !121, !123, !124, !126, !127, !128, !129, !131, !132, !134, !135, !137, !138, !140, !141, !142, !143, !145, !146, !147, !149, !150, !152, !153, !154, !155, !157, !158, !159, !161, !162, !164, !165, !167, !169, !170, !171, !172, !174, !175, !177, !178, !180, !181, !183, !184, !186, !187, !188, !190, !191, !192, !194, !195, !196, !198, !199, !201, !202, !204, !205, !207, !208, !209, !211, !212, !214, !216, !217, !218, !220, !221, !222, !223, !225, !226, !227, !229, !230, !231, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290}
!llvm.module.flags = !{!292, !293, !294, !295, !296, !297, !298, !299}
!llvm.ident = !{!300}

!0 = !{ptr @__UNIQUE_ID_file238, !1, !"__UNIQUE_ID_file238", i1 false, i1 false}
!1 = !{!"../drivers/ntb/test/ntb_perf.c", i32 90, i32 1}
!2 = !{ptr @__UNIQUE_ID_license239, !1, !"__UNIQUE_ID_license239", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_version240, !4, !"__UNIQUE_ID_version240", i1 false, i1 false}
!4 = !{!"../drivers/ntb/test/ntb_perf.c", i32 91, i32 1}
!5 = !{ptr @.str, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @__modver_attr, !4, !"__modver_attr", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_author241, !10, !"__UNIQUE_ID_author241", i1 false, i1 false}
!10 = !{!"../drivers/ntb/test/ntb_perf.c", i32 92, i32 1}
!11 = !{ptr @__UNIQUE_ID_description242, !12, !"__UNIQUE_ID_description242", i1 false, i1 false}
!12 = !{!"../drivers/ntb/test/ntb_perf.c", i32 93, i32 1}
!13 = !{ptr @__param_max_mw_size, !14, !"__param_max_mw_size", i1 false, i1 false}
!14 = !{!"../drivers/ntb/test/ntb_perf.c", i32 110, i32 1}
!15 = !{ptr @__UNIQUE_ID_max_mw_sizetype243, !14, !"__UNIQUE_ID_max_mw_sizetype243", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_max_mw_size244, !17, !"__UNIQUE_ID_max_mw_size244", i1 false, i1 false}
!17 = !{!"../drivers/ntb/test/ntb_perf.c", i32 111, i32 1}
!18 = !{ptr @__param_chunk_order, !19, !"__param_chunk_order", i1 false, i1 false}
!19 = !{!"../drivers/ntb/test/ntb_perf.c", i32 114, i32 1}
!20 = !{ptr @__UNIQUE_ID_chunk_ordertype245, !19, !"__UNIQUE_ID_chunk_ordertype245", i1 false, i1 false}
!21 = !{ptr @__UNIQUE_ID_chunk_order246, !22, !"__UNIQUE_ID_chunk_order246", i1 false, i1 false}
!22 = !{!"../drivers/ntb/test/ntb_perf.c", i32 115, i32 1}
!23 = !{ptr @__param_total_order, !24, !"__param_total_order", i1 false, i1 false}
!24 = !{!"../drivers/ntb/test/ntb_perf.c", i32 118, i32 1}
!25 = !{ptr @__UNIQUE_ID_total_ordertype247, !24, !"__UNIQUE_ID_total_ordertype247", i1 false, i1 false}
!26 = !{ptr @__UNIQUE_ID_total_order248, !27, !"__UNIQUE_ID_total_order248", i1 false, i1 false}
!27 = !{!"../drivers/ntb/test/ntb_perf.c", i32 119, i32 1}
!28 = !{ptr @__param_use_dma, !29, !"__param_use_dma", i1 false, i1 false}
!29 = !{!"../drivers/ntb/test/ntb_perf.c", i32 122, i32 1}
!30 = !{ptr @__UNIQUE_ID_use_dmatype249, !29, !"__UNIQUE_ID_use_dmatype249", i1 false, i1 false}
!31 = !{ptr @__UNIQUE_ID_use_dma250, !32, !"__UNIQUE_ID_use_dma250", i1 false, i1 false}
!32 = !{!"../drivers/ntb/test/ntb_perf.c", i32 123, i32 1}
!33 = !{ptr @__initcall__kmod_ntb_perf__274_1559_perf_init6, !34, !"__initcall__kmod_ntb_perf__274_1559_perf_init6", i1 false, i1 false}
!34 = !{!"../drivers/ntb/test/ntb_perf.c", i32 1559, i32 1}
!35 = !{ptr @__exitcall_perf_exit, !36, !"__exitcall_perf_exit", i1 false, i1 false}
!36 = !{!"../drivers/ntb/test/ntb_perf.c", i32 1567, i32 1}
!37 = !{ptr @max_mw_size, !38, !"max_mw_size", i1 false, i1 false}
!38 = !{!"../drivers/ntb/test/ntb_perf.c", i32 109, i32 22}
!39 = !{ptr @use_dma, !40, !"use_dma", i1 false, i1 false}
!40 = !{!"../drivers/ntb/test/ntb_perf.c", i32 121, i32 13}
!41 = !{ptr @perf_dbgfs_topdir, !42, !"perf_dbgfs_topdir", i1 false, i1 false}
!42 = !{!"../drivers/ntb/test/ntb_perf.c", i32 238, i32 23}
!43 = !{ptr @perf_wq, !44, !"perf_wq", i1 false, i1 false}
!44 = !{!"../drivers/ntb/test/ntb_perf.c", i32 240, i32 33}
!45 = !{ptr @__param_str_max_mw_size, !14, !"__param_str_max_mw_size", i1 false, i1 false}
!46 = !{ptr @__param_str_chunk_order, !19, !"__param_str_chunk_order", i1 false, i1 false}
!47 = !{ptr @chunk_order, !48, !"chunk_order", i1 false, i1 false}
!48 = !{!"../drivers/ntb/test/ntb_perf.c", i32 113, i32 22}
!49 = !{ptr @__param_str_total_order, !24, !"__param_str_total_order", i1 false, i1 false}
!50 = !{ptr @total_order, !51, !"total_order", i1 false, i1 false}
!51 = !{!"../drivers/ntb/test/ntb_perf.c", i32 117, i32 22}
!52 = !{ptr @__param_str_use_dma, !29, !"__param_str_use_dma", i1 false, i1 false}
!53 = !{ptr @.str.3, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/ntb/test/ntb_perf.c", i32 1536, i32 3}
!55 = !{ptr @.str.4, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.5, !54, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @perf_init._entry, !54, !"_entry", i1 false, i1 false}
!58 = !{ptr @perf_init._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.7, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/ntb/test/ntb_perf.c", i32 1541, i32 3}
!61 = !{ptr @perf_init._entry.6, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @perf_init._entry_ptr.8, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.9, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/ntb/test/ntb_perf.c", i32 1544, i32 28}
!65 = !{ptr @perf_client, !66, !"perf_client", i1 false, i1 false}
!66 = !{!"../drivers/ntb/test/ntb_perf.c", i32 1523, i32 26}
!67 = !{ptr @perf_init_peers.__key, !68, !"__key", i1 false, i1 false}
!68 = !{!"../drivers/ntb/test/ntb_perf.c", i32 1457, i32 3}
!69 = !{ptr @.str.10, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.11, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/ntb/test/ntb_perf.c", i32 1479, i32 2}
!72 = !{ptr @.str.12, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @perf_init_peers.__UNIQUE_ID_ddebug273, !71, !"__UNIQUE_ID_ddebug273", i1 false, i1 false}
!74 = !{ptr @.str.13, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/ntb/test/ntb_perf.c", i32 649, i32 4}
!76 = !{ptr @.str.14, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.15, !75, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.16, !75, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @perf_service_work._entry, !75, !"_entry", i1 false, i1 false}
!80 = !{ptr @perf_service_work._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.17, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/ntb/test/ntb_perf.c", i32 428, i32 2}
!83 = !{ptr @.str.18, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.19, !82, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @perf_cmd_send._entry, !82, !"_entry", i1 false, i1 false}
!86 = !{ptr @perf_cmd_send._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.20, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/ntb/test/ntb_perf.c", i32 578, i32 3}
!89 = !{ptr @.str.21, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @perf_setup_inbuf._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @perf_setup_inbuf._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.23, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/ntb/test/ntb_perf.c", i32 583, i32 3}
!94 = !{ptr @perf_setup_inbuf._entry.22, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @perf_setup_inbuf._entry_ptr.24, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.26, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/ntb/test/ntb_perf.c", i32 596, i32 3}
!98 = !{ptr @perf_setup_inbuf._entry.25, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @perf_setup_inbuf._entry_ptr.27, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.29, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/ntb/test/ntb_perf.c", i32 602, i32 3}
!102 = !{ptr @perf_setup_inbuf._entry.28, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @perf_setup_inbuf._entry_ptr.30, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.32, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/ntb/test/ntb_perf.c", i32 609, i32 3}
!106 = !{ptr @perf_setup_inbuf._entry.31, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @perf_setup_inbuf._entry_ptr.33, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.34, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/ntb/test/ntb_perf.c", i32 442, i32 3}
!110 = !{ptr @.str.35, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @perf_cmd_exec._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @perf_cmd_exec._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.36, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/ntb/test/ntb_perf.c", i32 449, i32 2}
!115 = !{ptr @perf_cmd_exec.__UNIQUE_ID_ddebug256, !114, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!116 = !{ptr @.str.37, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/ntb/test/ntb_perf.c", i32 546, i32 3}
!118 = !{ptr @.str.38, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @perf_setup_outbuf._entry, !117, !"_entry", i1 false, i1 false}
!120 = !{ptr @perf_setup_outbuf._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @init_completion.__key, !122, !"__key", i1 false, i1 false}
!122 = !{!"../include/linux/completion.h", i32 87, i32 2}
!123 = !{ptr @.str.39, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @.str.40, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/ntb/test/ntb_perf.c", i32 1430, i32 3}
!126 = !{ptr @.str.41, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @perf_setup_peer_mw._entry, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @perf_setup_peer_mw._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @perf_init_threads.__key, !130, !"__key", i1 false, i1 false}
!130 = !{!"../drivers/ntb/test/ntb_perf.c", i32 1159, i32 2}
!131 = !{ptr @.str.42, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @perf_init_threads.__key.43, !133, !"__key", i1 false, i1 false}
!133 = !{!"../drivers/ntb/test/ntb_perf.c", i32 1167, i32 3}
!134 = !{ptr @.str.44, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @perf_init_threads.__key.45, !136, !"__key", i1 false, i1 false}
!136 = !{!"../drivers/ntb/test/ntb_perf.c", i32 1168, i32 3}
!137 = !{ptr @.str.46, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @.str.47, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/ntb/test/ntb_perf.c", i32 891, i32 3}
!140 = !{ptr @.str.48, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @perf_init_test._entry, !139, !"_entry", i1 false, i1 false}
!142 = !{ptr @perf_init_test._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.50, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/ntb/test/ntb_perf.c", i32 901, i32 3}
!145 = !{ptr @perf_init_test._entry.49, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @perf_init_test._entry_ptr.51, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.52, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/ntb/test/ntb_perf.c", i32 907, i32 2}
!149 = !{ptr @perf_init_test.__UNIQUE_ID_ddebug265, !148, !"__UNIQUE_ID_ddebug265", i1 false, i1 false}
!150 = !{ptr @.str.53, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/ntb/test/ntb_perf.c", i32 945, i32 4}
!152 = !{ptr @.str.54, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @perf_run_test._entry, !151, !"_entry", i1 false, i1 false}
!154 = !{ptr @perf_run_test._entry_ptr, !151, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.55, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/ntb/test/ntb_perf.c", i32 983, i32 2}
!157 = !{ptr @.str.56, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @perf_sync_test.__UNIQUE_ID_ddebug268, !156, !"__UNIQUE_ID_ddebug268", i1 false, i1 false}
!159 = !{ptr @.str.57, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/ntb/test/ntb_perf.c", i32 986, i32 2}
!161 = !{ptr @perf_sync_test.__UNIQUE_ID_ddebug269, !160, !"__UNIQUE_ID_ddebug269", i1 false, i1 false}
!162 = !{ptr @.str.58, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/ntb/test/ntb_perf.c", i32 989, i32 2}
!164 = !{ptr @perf_sync_test.__UNIQUE_ID_ddebug270, !163, !"__UNIQUE_ID_ddebug270", i1 false, i1 false}
!165 = !{ptr @.str.59, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../include/linux/dmaengine.h", i32 1169, i32 2}
!167 = !{ptr @.str.60, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/ntb/test/ntb_perf.c", i32 663, i32 3}
!169 = !{ptr @.str.61, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @perf_init_service._entry, !168, !"_entry", i1 false, i1 false}
!171 = !{ptr @perf_init_service._entry_ptr, !168, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.62, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/ntb/test/ntb_perf.c", i32 671, i32 3}
!174 = !{ptr @perf_init_service.__UNIQUE_ID_ddebug259, !173, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!175 = !{ptr @.str.63, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/ntb/test/ntb_perf.c", i32 676, i32 2}
!177 = !{ptr @perf_init_service.__UNIQUE_ID_ddebug260, !176, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!178 = !{ptr @.str.64, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/ntb/test/ntb_perf.c", i32 684, i32 3}
!180 = !{ptr @perf_init_service.__UNIQUE_ID_ddebug261, !179, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!181 = !{ptr @.str.65, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/ntb/test/ntb_perf.c", i32 689, i32 2}
!183 = !{ptr @perf_init_service.__UNIQUE_ID_ddebug262, !182, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!184 = !{ptr @.str.67, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/ntb/test/ntb_perf.c", i32 691, i32 2}
!186 = !{ptr @perf_init_service._entry.66, !185, !"_entry", i1 false, i1 false}
!187 = !{ptr @perf_init_service._entry_ptr.68, !185, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.69, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/ntb/test/ntb_perf.c", i32 355, i32 2}
!190 = !{ptr @.str.70, !189, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @perf_msg_cmd_send.__UNIQUE_ID_ddebug254, !189, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!192 = !{ptr @.str.71, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/ntb/test/ntb_perf.c", i32 416, i32 2}
!194 = !{ptr @.str.72, !193, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @perf_msg_cmd_recv.__UNIQUE_ID_ddebug255, !193, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!196 = !{ptr @.str.73, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/ntb/test/ntb_perf.c", i32 264, i32 2}
!198 = !{ptr @perf_spad_cmd_send.__UNIQUE_ID_ddebug251, !197, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!199 = !{ptr @.str.74, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/ntb/test/ntb_perf.c", i32 295, i32 3}
!201 = !{ptr @perf_spad_cmd_send.__UNIQUE_ID_ddebug252, !200, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!202 = !{ptr @.str.75, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/ntb/test/ntb_perf.c", i32 340, i32 3}
!204 = !{ptr @perf_spad_cmd_recv.__UNIQUE_ID_ddebug253, !203, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!205 = !{ptr @.str.76, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/ntb/test/ntb_perf.c", i32 718, i32 3}
!207 = !{ptr @.str.77, !206, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @perf_enable_service.__UNIQUE_ID_ddebug263, !206, !"__UNIQUE_ID_ddebug263", i1 false, i1 false}
!209 = !{ptr @.str.78, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/ntb/test/ntb_perf.c", i32 726, i32 3}
!211 = !{ptr @perf_enable_service.__UNIQUE_ID_ddebug264, !210, !"__UNIQUE_ID_ddebug264", i1 false, i1 false}
!212 = !{ptr @perf_ops, !213, !"perf_ops", i1 false, i1 false}
!213 = !{!"../drivers/ntb/test/ntb_perf.c", i32 526, i32 33}
!214 = !{ptr @.str.79, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/ntb/test/ntb_perf.c", i32 508, i32 2}
!216 = !{ptr @.str.80, !215, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @perf_db_event.__UNIQUE_ID_ddebug257, !215, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!218 = !{ptr @.str.81, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/ntb/test/ntb_perf.c", i32 473, i32 4}
!220 = !{ptr @.str.82, !219, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @perf_cmd_recv._entry, !219, !"_entry", i1 false, i1 false}
!222 = !{ptr @perf_cmd_recv._entry_ptr, !219, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @.str.83, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/ntb/test/ntb_perf.c", i32 519, i32 2}
!225 = !{ptr @.str.84, !224, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @perf_msg_event.__UNIQUE_ID_ddebug258, !224, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!227 = !{ptr @.str.85, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/ntb/test/ntb_perf.c", i32 1359, i32 3}
!229 = !{ptr @.str.86, !228, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @perf_setup_dbgfs._entry, !228, !"_entry", i1 false, i1 false}
!231 = !{ptr @perf_setup_dbgfs._entry_ptr, !228, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @.str.87, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/ntb/test/ntb_perf.c", i32 1363, i32 22}
!234 = !{ptr @.str.88, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/ntb/test/ntb_perf.c", i32 1366, i32 22}
!236 = !{ptr @.str.89, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/ntb/test/ntb_perf.c", i32 1369, i32 22}
!238 = !{ptr @.str.90, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/ntb/test/ntb_perf.c", i32 1373, i32 20}
!240 = !{ptr @.str.91, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/ntb/test/ntb_perf.c", i32 1375, i32 20}
!242 = !{ptr @.str.92, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/ntb/test/ntb_perf.c", i32 1377, i32 22}
!244 = !{ptr @perf_dbgfs_info, !245, !"perf_dbgfs_info", i1 false, i1 false}
!245 = !{!"../drivers/ntb/test/ntb_perf.c", i32 1260, i32 37}
!246 = !{ptr @.str.93, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/ntb/test/ntb_perf.c", i32 1199, i32 3}
!248 = !{ptr @.str.94, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/ntb/test/ntb_perf.c", i32 1202, i32 3}
!250 = !{ptr @.str.95, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/ntb/test/ntb_perf.c", i32 1204, i32 46}
!252 = !{ptr @.str.96, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/ntb/test/ntb_perf.c", i32 1207, i32 4}
!254 = !{ptr @.str.97, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/ntb/test/ntb_perf.c", i32 1211, i32 47}
!256 = !{ptr @.str.98, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/ntb/test/ntb_perf.c", i32 1218, i32 4}
!258 = !{ptr @.str.99, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/ntb/test/ntb_perf.c", i32 1223, i32 4}
!260 = !{ptr @.str.100, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/ntb/test/ntb_perf.c", i32 1224, i32 43}
!262 = !{ptr @.str.101, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/ntb/test/ntb_perf.c", i32 1224, i32 50}
!264 = !{ptr @.str.102, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/ntb/test/ntb_perf.c", i32 1227, i32 4}
!266 = !{ptr @.str.103, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/ntb/test/ntb_perf.c", i32 1230, i32 4}
!268 = !{ptr @.str.104, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/ntb/test/ntb_perf.c", i32 1233, i32 4}
!270 = !{ptr @.str.105, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/ntb/test/ntb_perf.c", i32 1236, i32 4}
!272 = !{ptr @.str.106, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/ntb/test/ntb_perf.c", i32 1240, i32 5}
!274 = !{ptr @.str.107, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/ntb/test/ntb_perf.c", i32 1245, i32 4}
!276 = !{ptr @.str.108, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/ntb/test/ntb_perf.c", i32 1248, i32 4}
!278 = !{ptr @.str.109, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/ntb/test/ntb_perf.c", i32 1251, i32 4}
!280 = !{ptr @perf_dbgfs_run, !281, !"perf_dbgfs_run", i1 false, i1 false}
!281 = !{!"../drivers/ntb/test/ntb_perf.c", i32 1310, i32 37}
!282 = !{ptr @.str.110, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/ntb/test/ntb_perf.c", i32 1127, i32 3}
!284 = !{ptr @.str.111, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/ntb/test/ntb_perf.c", i32 1137, i32 5}
!286 = !{ptr @.str.112, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/ntb/test/ntb_perf.c", i32 1142, i32 4}
!288 = !{ptr @perf_dbgfs_tcnt, !289, !"perf_dbgfs_tcnt", i1 false, i1 false}
!289 = !{!"../drivers/ntb/test/ntb_perf.c", i32 1347, i32 37}
!290 = !{ptr @.str.113, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/ntb/test/ntb_perf.c", i32 1323, i32 36}
!292 = !{i32 1, !"wchar_size", i32 2}
!293 = !{i32 1, !"min_enum_size", i32 4}
!294 = !{i32 8, !"branch-target-enforcement", i32 0}
!295 = !{i32 8, !"sign-return-address", i32 0}
!296 = !{i32 8, !"sign-return-address-all", i32 0}
!297 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!298 = !{i32 7, !"uwtable", i32 1}
!299 = !{i32 7, !"frame-pointer", i32 2}
!300 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!301 = !{!"branch_weights", i32 1, i32 2000}
!302 = !{!"auto-init"}
!303 = !{i64 2148729070, i64 2148729075, i64 2148729088, i64 2148729132, i64 2148729166, i64 2148729187}
!304 = !{i32 0, i32 33}
!305 = !{i8 0, i8 2}
!306 = !{i64 2148261269, i64 2148261301, i64 2148261330, i64 2148261364, i64 2148261395, i64 2148261418}
!307 = !{!"branch_weights", i32 2000, i32 1}
!308 = !{i64 2148259739, i64 2148259765, i64 2148259794, i64 2148259828, i64 2148259859, i64 2148259882}
!309 = !{i64 2148262204, i64 2148262230, i64 2148262259, i64 2148262293, i64 2148262324, i64 2148262347}
!310 = !{i64 1164729, i64 1164756, i64 1164778, i64 1164806}
!311 = !{i64 1165137, i64 1165164, i64 1165197, i64 1165218, i64 1165245, i64 1165271}
!312 = !{i64 2148268597, i64 2148268629, i64 2148268658, i64 2148268692, i64 2148268723, i64 2148268746}
!313 = !{i64 2148357678}
!314 = !{i64 2148356565}
!315 = !{i64 2148266984, i64 2148267016, i64 2148267045, i64 2148267079, i64 2148267110, i64 2148267133}
