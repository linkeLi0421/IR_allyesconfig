; ModuleID = '/llk/IR_all_yes/drivers/dma/qcom/gpi.c_pt.bc'
source_filename = "../drivers/dma/qcom/gpi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.anon.76 = type { i32, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.gpi_dev = type { %struct.dma_device, ptr, ptr, ptr, ptr, i32, i32, i32, ptr }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.gpii = type { i32, [2 x %struct.gchan], ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, i32, i8, i32, %struct.rwlock_t, %struct.gpi_ring, %struct.tasklet_struct, %struct.completion, i32, i32, i8 }
%struct.gchan = type { %struct.virt_dma_chan, i32, i32, i32, ptr, i32, i32, ptr, ptr, ptr, i32, %struct.gpi_ring, ptr }
%struct.virt_dma_chan = type { %struct.dma_chan, %struct.tasklet_struct, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.gpi_ring = type { ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i8 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.74, i32 }
%union.anon.74 = type { ptr }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.gpi_desc = type { %struct.virt_dma_desc, i32, ptr, ptr, [3 x %struct.gpi_tre], i32 }
%struct.virt_dma_desc = type { %struct.dma_async_tx_descriptor, %struct.dmaengine_result, %struct.list_head }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dmaengine_result = type { i32, i32 }
%struct.gpi_tre = type { [4 x i32] }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.of_dma = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.xfer_compl_event = type { i64, [3 x i8], i8, i16, i8, i8 }
%struct.immediate_data_event = type <{ [8 x i8], i8, i16, i8, i16, i8, i8 }>
%struct.gpi_spi_config = type { i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32 }
%struct.gpi_i2c_config = type { i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i8 }

@__initcall__kmod_gpi__338_2300_gpi_init4 = internal global ptr @gpi_init, section ".initcall4.init", align 4
@__UNIQUE_ID_description339 = internal constant [43 x i8] c"gpi.description=QCOM GPI DMA engine driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file340 = internal constant [30 x i8] c"gpi.file=drivers/dma/qcom/gpi\00", section ".modinfo", align 1
@__UNIQUE_ID_license341 = internal constant [19 x i8] c"gpi.license=GPL v2\00", section ".modinfo", align 1
@gpi_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @gpi_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @gpi_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gpi\00", [28 x i8] zeroinitializer }, align 32
@gpi_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sdm845-gpi-dma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sm8150-gpi-dma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sm8250-gpi-dma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dma-channels\00", [19 x i8] zeroinitializer }, align 32
@gpi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 2167, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"missing 'max-no-gpii' DT node\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gpi_probe\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/dma/qcom/gpi.c\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gpi_probe._entry_ptr = internal global ptr @gpi_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dma-channel-mask\00", [47 x i8] zeroinitializer }, align 32
@gpi_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 2174, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"missing 'gpii-mask' DT node\0A\00", [35 x i8] zeroinitializer }, align 32
@gpi_probe._entry_ptr.10 = internal global ptr @gpi_probe._entry.8, section ".printk_index", align 4
@gpi_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 2182, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Error setting dma_mask to 64, ret:%d\0A\00", [58 x i8] zeroinitializer }, align 32
@gpi_probe._entry_ptr.13 = internal global ptr @gpi_probe._entry.11, section ".printk_index", align 4
@gpi_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&gpii->ctrl_lock\00", [47 x i8] zeroinitializer }, align 32
@gpi_probe.__key.15 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&gpii->pm_lock\00", [17 x i8] zeroinitializer }, align 32
@gpi_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 2266, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"async_device_register failed ret:%d\00", [60 x i8] zeroinitializer }, align 32
@gpi_probe._entry_ptr.19 = internal global ptr @gpi_probe._entry.17, section ".printk_index", align 4
@gpi_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.3, ptr @.str.4, i32 2273, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"of_dma_controller_reg failed ret:%d\00", [60 x i8] zeroinitializer }, align 32
@gpi_probe._entry_ptr.22 = internal global ptr @gpi_probe._entry.20, section ".printk_index", align 4
@gpi_ev_tasklet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.4, i32 1157, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"not processing any events, pm_state:%s\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gpi_ev_tasklet\00", [17 x i8] zeroinitializer }, align 32
@gpi_ev_tasklet._entry_ptr = internal global ptr @gpi_ev_tasklet._entry, section ".printk_index", align 4
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"INVALID\00", [24 x i8] zeroinitializer }, align 32
@gpi_pm_state_str = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31], [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DISABLE\00", [24 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CONFIG\00", [25 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PREPARE HARDWARE\00", [47 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ACTIVE\00", [25 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"PREPARE TERMINATE\00", [46 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PAUSE\00", [26 x i8] zeroinitializer }, align 32
@gpi_process_events.__UNIQUE_ID_ddebug278 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.4, ptr @.str.33, i8 1, i8 22, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"gpi_process_events\00", [45 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Event: CHID:%u, type:%x %08x %08x %08x %08x\0A\00", [51 x i8] zeroinitializer }, align 32
@gpi_process_events.__UNIQUE_ID_ddebug279 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.4, ptr @.str.34, i8 1, i8 24, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"stale event, not processing\0A\00", [35 x i8] zeroinitializer }, align 32
@gpi_process_events.__UNIQUE_ID_ddebug280 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.4, ptr @.str.35, i8 1, i8 26, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"QUP_NOTIF_EV_TYPE\0A\00", [45 x i8] zeroinitializer }, align 32
@gpi_process_events.__UNIQUE_ID_ddebug281 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.4, ptr @.str.36, i8 1, i8 27, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"not supported event type:0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@gpi_process_xfer_compl_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.4, i32 1026, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"skipping processing event because ch @ %s state\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"gpi_process_xfer_compl_event\00", [35 x i8] zeroinitializer }, align 32
@gpi_process_xfer_compl_event._entry_ptr = internal global ptr @gpi_process_xfer_compl_event._entry, section ".printk_index", align 4
@gpi_process_xfer_compl_event._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.4, i32 1036, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Event without a pending descriptor!\0A\00", [59 x i8] zeroinitializer }, align 32
@gpi_process_xfer_compl_event._entry_ptr.41 = internal global ptr @gpi_process_xfer_compl_event._entry.39, section ".printk_index", align 4
@gpi_process_xfer_compl_event._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.38, ptr @.str.4, i32 1041, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Event: %08x %08x %08x %08x\0A\00", [36 x i8] zeroinitializer }, align 32
@gpi_process_xfer_compl_event._entry_ptr.44 = internal global ptr @gpi_process_xfer_compl_event._entry.42, section ".printk_index", align 4
@gpi_process_xfer_compl_event._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.38, ptr @.str.4, i32 1069, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Error in Transaction\0A\00", [42 x i8] zeroinitializer }, align 32
@gpi_process_xfer_compl_event._entry_ptr.47 = internal global ptr @gpi_process_xfer_compl_event._entry.45, section ".printk_index", align 4
@gpi_process_xfer_compl_event.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.38, ptr @.str.4, ptr @.str.48, i8 1, i8 12, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Transaction Success\0A\00", [43 x i8] zeroinitializer }, align 32
@gpi_process_xfer_compl_event.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.38, ptr @.str.4, ptr @.str.49, i8 1, i8 13, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Residue %d\0A\00", [20 x i8] zeroinitializer }, align 32
@gpi_process_imed_data_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.50, ptr @.str.4, i32 946, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"gpi_process_imed_data_event\00", [36 x i8] zeroinitializer }, align 32
@gpi_process_imed_data_event._entry_ptr = internal global ptr @gpi_process_imed_data_event._entry, section ".printk_index", align 4
@gpi_process_imed_data_event.__UNIQUE_ID_ddebug273 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.4, ptr @.str.51, i8 0, i8 -17, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"event without a pending descriptor!\0A\00", [59 x i8] zeroinitializer }, align 32
@gpi_process_imed_data_event.__UNIQUE_ID_ddebug274 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.4, ptr @.str.43, i8 0, i8 -16, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@gpi_process_imed_data_event.__UNIQUE_ID_ddebug275 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.4, ptr @.str.52, i8 0, i8 -15, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Pending TRE: %08x %08x %08x %08x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"gpi-dma\00", [24 x i8] zeroinitializer }, align 32
@gpi_config_interrupts._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.4, i32 637, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"error request irq:%d ret:%d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"gpi_config_interrupts\00", [42 x i8] zeroinitializer }, align 32
@gpi_config_interrupts._entry_ptr = internal global ptr @gpi_config_interrupts._entry, section ".printk_index", align 4
@gpi_handle_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.4, i32 853, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"receive interrupt while in %s state\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gpi_handle_irq\00", [17 x i8] zeroinitializer }, align 32
@gpi_handle_irq._entry_ptr = internal global ptr @gpi_handle_irq._entry, section ".printk_index", align 4
@gpi_handle_irq.__UNIQUE_ID_ddebug265 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.4, ptr @.str.58, i8 0, i8 -37, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"processing EV CTRL interrupt\0A\00", [34 x i8] zeroinitializer }, align 32
@gpi_handle_irq.__UNIQUE_ID_ddebug271 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.4, ptr @.str.59, i8 0, i8 -31, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"setting EV state to %s\0A\00", [40 x i8] zeroinitializer }, align 32
@gpi_ev_state_str = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.66, ptr @.str.67], [24 x i8] zeroinitializer }, align 32
@gpi_handle_irq.__UNIQUE_ID_ddebug272 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.4, ptr @.str.60, i8 0, i8 -30, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"process CH CTRL interrupts\0A\00", [36 x i8] zeroinitializer }, align 32
@gpi_handle_irq._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.57, ptr @.str.4, i32 913, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unhandled interrupt status:0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@gpi_handle_irq._entry_ptr.63 = internal global ptr @gpi_handle_irq._entry.61, section ".printk_index", align 4
@gpi_process_glob_err_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.4, i32 829, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"invalid error status:0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"gpi_process_glob_err_irq\00", [39 x i8] zeroinitializer }, align 32
@gpi_process_glob_err_irq._entry_ptr = internal global ptr @gpi_process_glob_err_irq._entry, section ".printk_index", align 4
@.str.66 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"NOT ALLOCATED\00", [18 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ALLOCATED\00", [22 x i8] zeroinitializer }, align 32
@gpi_process_gen_err_irq.__UNIQUE_ID_ddebug264 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.68, ptr @.str.4, ptr @.str.69, i8 0, i8 -54, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"gpi_process_gen_err_irq\00", [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"irq_stts:0x%x\0A\00", [17 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.70 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@gpi_alloc_ring.__UNIQUE_ID_ddebug332 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.71, ptr @.str.4, ptr @.str.72, i8 1, i8 99, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gpi_alloc_ring\00", [17 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"#el:%u el_size:%u len:%u actual_len:%llu alloc_size:%zu\0A\00", [39 x i8] zeroinitializer }, align 32
@gpi_alloc_ring._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.71, ptr @.str.4, i32 1428, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"could not alloc size:%zu mem for ring\0A\00", [57 x i8] zeroinitializer }, align 32
@gpi_alloc_ring._entry_ptr = internal global ptr @gpi_alloc_ring._entry, section ".printk_index", align 4
@gpi_alloc_ring.__UNIQUE_ID_ddebug333 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.71, ptr @.str.4, ptr @.str.74, i8 1, i8 106, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"phy_pre:%pad phy_alig:%pa len:%u el_size:%u elements:%u\0A\00", [39 x i8] zeroinitializer }, align 32
@gpi_ch_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str.4, i32 1902, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"protocol did not match protocol %u != %u\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gpi_ch_init\00", [20 x i8] zeroinitializer }, align 32
@gpi_ch_init._entry_ptr = internal global ptr @gpi_ch_init._entry, section ".printk_index", align 4
@gpi_ch_init._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.76, ptr @.str.4, i32 1920, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"error config. interrupts, ret:%d\0A\00", [62 x i8] zeroinitializer }, align 32
@gpi_ch_init._entry_ptr.79 = internal global ptr @gpi_ch_init._entry.77, section ".printk_index", align 4
@gpi_ch_init._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.76, ptr @.str.4, i32 1927, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"error alloc_ev_chan:%d\0A\00", [40 x i8] zeroinitializer }, align 32
@gpi_ch_init._entry_ptr.82 = internal global ptr @gpi_ch_init._entry.80, section ".printk_index", align 4
@gpi_ch_init._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.76, ptr @.str.4, i32 1935, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Error allocating chan:%d\0A\00", [38 x i8] zeroinitializer }, align 32
@gpi_ch_init._entry_ptr.85 = internal global ptr @gpi_ch_init._entry.83, section ".printk_index", align 4
@gpi_ch_init._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.76, ptr @.str.4, i32 1944, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Error start chan:%d\0A\00", [43 x i8] zeroinitializer }, align 32
@gpi_ch_init._entry_ptr.88 = internal global ptr @gpi_ch_init._entry.86, section ".printk_index", align 4
@gpi_alloc_ev_chan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.90, ptr @.str.4, i32 1316, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"error with cmd:%s ret:%d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"gpi_alloc_ev_chan\00", [46 x i8] zeroinitializer }, align 32
@gpi_alloc_ev_chan._entry_ptr = internal global ptr @gpi_alloc_ev_chan._entry, section ".printk_index", align 4
@gpi_cmd_str = internal constant { [11 x ptr], [52 x i8] } { [11 x ptr] [ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101], [52 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"CH ALLOCATE\00", [20 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"CH START\00", [23 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CH STOP\00", [24 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"CH_RESET\00", [23 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DE ALLOC\00", [23 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"UART SW STALE\00", [18 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"UART RFR READY\00", [17 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"UART RFR NOT READY\00", [45 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"EV ALLOCATE\00", [20 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"EV RESET\00", [23 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"EV DEALLOC\00", [21 x i8] zeroinitializer }, align 32
@gpi_alloc_chan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.103, ptr @.str.4, i32 1281, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Error with cmd:%s ret:%d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gpi_alloc_chan\00", [17 x i8] zeroinitializer }, align 32
@gpi_alloc_chan._entry_ptr = internal global ptr @gpi_alloc_chan._entry, section ".printk_index", align 4
@gpi_start_chan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.104, ptr @.str.4, i32 1240, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gpi_start_chan\00", [17 x i8] zeroinitializer }, align 32
@gpi_start_chan._entry_ptr = internal global ptr @gpi_start_chan._entry, section ".printk_index", align 4
@gpi_stop_chan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.105, ptr @.str.4, i32 1260, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gpi_stop_chan\00", [18 x i8] zeroinitializer }, align 32
@gpi_stop_chan._entry_ptr = internal global ptr @gpi_stop_chan._entry, section ".printk_index", align 4
@gpi_send_cmd.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.106, ptr @.str.4, ptr @.str.107, i8 0, i8 -81, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.106 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gpi_send_cmd\00", [19 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sending cmd: %s:%u\0A\00", [44 x i8] zeroinitializer }, align 32
@gpi_cmd_info = internal constant { [11 x %struct.anon.76], [60 x i8] } { [11 x %struct.anon.76] [%struct.anon.76 { i32 0, i32 0, i32 1 }, %struct.anon.76 { i32 1, i32 1, i32 2 }, %struct.anon.76 { i32 2, i32 2, i32 3 }, %struct.anon.76 { i32 3, i32 9, i32 1 }, %struct.anon.76 { i32 4, i32 10, i32 0 }, %struct.anon.76 { i32 5, i32 32, i32 -1 }, %struct.anon.76 { i32 6, i32 33, i32 -1 }, %struct.anon.76 { i32 7, i32 34, i32 -1 }, %struct.anon.76 { i32 8, i32 0, i32 1 }, %struct.anon.76 { i32 9, i32 9, i32 1 }, %struct.anon.76 { i32 10, i32 10, i32 0 }], [60 x i8] zeroinitializer }, align 32
@gpi_send_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.106, ptr @.str.4, i32 714, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cmd: %s completion timeout:%u\0A\00", [33 x i8] zeroinitializer }, align 32
@gpi_send_cmd._entry_ptr = internal global ptr @gpi_send_cmd._entry, section ".printk_index", align 4
@gpi_reset_chan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.109, ptr @.str.4, i32 1207, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gpi_reset_chan\00", [17 x i8] zeroinitializer }, align 32
@gpi_reset_chan._entry_ptr = internal global ptr @gpi_reset_chan._entry, section ".printk_index", align 4
@gpi_free_chan_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.111, ptr @.str.4, i32 1991, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"error resetting channel:%d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"gpi_free_chan_resources\00", [40 x i8] zeroinitializer }, align 32
@gpi_free_chan_resources._entry_ptr = internal global ptr @gpi_free_chan_resources._entry, section ".printk_index", align 4
@gpi_queue_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.113, ptr @.str.4, i32 1464, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Error adding ring element to xfer ring\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gpi_queue_xfer\00", [17 x i8] zeroinitializer }, align 32
@gpi_queue_xfer._entry_ptr = internal global ptr @gpi_queue_xfer._entry, section ".printk_index", align 4
@gpi_prep_slave_sg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.115, ptr @.str.4, i32 1801, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"invalid dma direction: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"gpi_prep_slave_sg\00", [46 x i8] zeroinitializer }, align 32
@gpi_prep_slave_sg._entry_ptr = internal global ptr @gpi_prep_slave_sg._entry, section ".printk_index", align 4
@gpi_prep_slave_sg._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.115, ptr @.str.4, i32 1806, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Multi sg sent, we support only one atm: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@gpi_prep_slave_sg._entry_ptr.118 = internal global ptr @gpi_prep_slave_sg._entry.116, section ".printk_index", align 4
@gpi_prep_slave_sg._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.115, ptr @.str.4, i32 1820, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"not enough space in ring, avail:%u required:%u\0A\00", [48 x i8] zeroinitializer }, align 32
@gpi_prep_slave_sg._entry_ptr.121 = internal global ptr @gpi_prep_slave_sg._entry.119, section ".printk_index", align 4
@gpi_prep_slave_sg._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.115, ptr @.str.4, i32 1834, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"invalid peripheral: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@gpi_prep_slave_sg._entry_ptr.124 = internal global ptr @gpi_prep_slave_sg._entry.122, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@gpi_create_spi_tre.__UNIQUE_ID_ddebug337 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.125, ptr @.str.4, ptr @.str.126, i8 1, i8 -68, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.125 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"gpi_create_spi_tre\00", [45 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"TRE:%d %x:%x:%x:%x\0A\00", [44 x i8] zeroinitializer }, align 32
@gpi_create_i2c_tre.__UNIQUE_ID_ddebug336 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.127, ptr @.str.4, ptr @.str.126, i8 1, i8 -86, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.127 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"gpi_create_i2c_tre\00", [45 x i8] zeroinitializer }, align 32
@gpi_terminate_all._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.129, ptr @.str.4, i32 1509, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Error resetting channel ret:%d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"gpi_terminate_all\00", [46 x i8] zeroinitializer }, align 32
@gpi_terminate_all._entry_ptr = internal global ptr @gpi_terminate_all._entry, section ".printk_index", align 4
@gpi_terminate_all._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.129, ptr @.str.4, i32 1516, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Error alloc_channel ret:%d\0A\00", [36 x i8] zeroinitializer }, align 32
@gpi_terminate_all._entry_ptr.132 = internal global ptr @gpi_terminate_all._entry.130, section ".printk_index", align 4
@gpi_terminate_all._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.129, ptr @.str.4, i32 1527, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Error Starting Channel ret:%d\0A\00", [33 x i8] zeroinitializer }, align 32
@gpi_terminate_all._entry_ptr.135 = internal global ptr @gpi_terminate_all._entry.133, section ".printk_index", align 4
@gpi_pause.__UNIQUE_ID_ddebug334 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.136, ptr @.str.4, ptr @.str.137, i8 1, i8 -125, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.136 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gpi_pause\00", [22 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"channel is already paused\0A\00", [37 x i8] zeroinitializer }, align 32
@gpi_resume.__UNIQUE_ID_ddebug335 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.138, ptr @.str.4, ptr @.str.139, i8 1, i8 -116, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.138 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gpi_resume\00", [21 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"channel is already active\0A\00", [37 x i8] zeroinitializer }, align 32
@gpi_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.138, ptr @.str.4, i32 1598, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Error starting chan, ret:%d\0A\00", [35 x i8] zeroinitializer }, align 32
@gpi_resume._entry_ptr = internal global ptr @gpi_resume._entry, section ".printk_index", align 4
@gpi_of_dma_xlate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.142, ptr @.str.4, i32 2115, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"gpii require minimum 2 args, client passed:%d args\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"gpi_of_dma_xlate\00", [47 x i8] zeroinitializer }, align 32
@gpi_of_dma_xlate._entry_ptr = internal global ptr @gpi_of_dma_xlate._entry, section ".printk_index", align 4
@gpi_of_dma_xlate._entry.143 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.142, ptr @.str.4, i32 2121, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"gpii channel:%d not valid\0A\00", [37 x i8] zeroinitializer }, align 32
@gpi_of_dma_xlate._entry_ptr.145 = internal global ptr @gpi_of_dma_xlate._entry.143, section ".printk_index", align 4
@gpi_of_dma_xlate._entry.146 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.142, ptr @.str.4, i32 2130, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"no available gpii instances\0A\00", [35 x i8] zeroinitializer }, align 32
@gpi_of_dma_xlate._entry_ptr.148 = internal global ptr @gpi_of_dma_xlate._entry.146, section ".printk_index", align 4
@gpi_of_dma_xlate._entry.149 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.142, ptr @.str.4, i32 2137, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"gpii:%d chid:%d seid:%d already configured\0A\00", [52 x i8] zeroinitializer }, align 32
@gpi_of_dma_xlate._entry_ptr.151 = internal global ptr @gpi_of_dma_xlate._entry.149, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.152 = internal global [6 x i64] [i64 4, i64 8, i64 34, i64 48, i64 49, i64 255]
@__sancov_gen_cov_switch_values.153 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 16]
@___asan_gen_.154 = private unnamed_addr constant [11 x i8] c"gpi_driver\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.635, i32 2288, i32 31 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.635, i32 2291, i32 11 }
@___asan_gen_.160 = private unnamed_addr constant [13 x i8] c"gpi_of_match\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.635, i32 2280, i32 34 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.635, i32 2164, i32 52 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.635, i32 2167, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.635, i32 2171, i32 52 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.635, i32 2174, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.635, i32 2182, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.635, i32 2231, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.635, i32 2232, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.635, i32 2266, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.635, i32 2273, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.635, i32 1156, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant [17 x i8] c"gpi_pm_state_str\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.635, i32 379, i32 26 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.635, i32 380, i32 20 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.635, i32 381, i32 19 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.635, i32 382, i32 23 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.635, i32 383, i32 19 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.635, i32 384, i32 24 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.635, i32 385, i32 18 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.635, i32 1108, i32 4 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.635, i32 1121, i32 5 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.635, i32 1129, i32 5 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.635, i32 1132, i32 5 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.635, i32 1025, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.635, i32 1036, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.635, i32 1038, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.635, i32 1069, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.635, i32 1072, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.635, i32 1076, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.635, i32 945, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.635, i32 957, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.635, i32 964, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.635, i32 634, i32 12 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.635, i32 636, i32 4 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.635, i32 852, i32 3 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.635, i32 878, i32 4 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.635, i32 899, i32 4 }
@___asan_gen_.343 = private unnamed_addr constant [17 x i8] c"gpi_ev_state_str\00", align 1
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.635, i32 300, i32 26 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.635, i32 907, i32 4 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.635, i32 913, i32 4 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.635, i32 829, i32 3 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.635, i32 301, i32 29 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.635, i32 302, i32 25 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.635, i32 810, i32 2 }
@___asan_gen_.376 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.380 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 87, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.635, i32 1418, i32 2 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.635, i32 1427, i32 3 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.635, i32 1446, i32 2 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.635, i32 1901, i32 3 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.635, i32 1920, i32 3 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.635, i32 1927, i32 3 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.635, i32 1935, i32 4 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.635, i32 1944, i32 4 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.635, i32 1315, i32 3 }
@___asan_gen_.439 = private unnamed_addr constant [12 x i8] c"gpi_cmd_str\00", align 1
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.635, i32 340, i32 26 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.635, i32 341, i32 26 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.635, i32 342, i32 23 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.635, i32 343, i32 22 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.635, i32 344, i32 23 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.635, i32 345, i32 26 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.635, i32 346, i32 31 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.635, i32 347, i32 32 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.635, i32 348, i32 36 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.635, i32 349, i32 26 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.635, i32 350, i32 23 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.635, i32 351, i32 25 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.635, i32 1280, i32 4 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.635, i32 1239, i32 3 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.635, i32 1259, i32 3 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.635, i32 699, i32 2 }
@___asan_gen_.502 = private unnamed_addr constant [13 x i8] c"gpi_cmd_info\00", align 1
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.635, i32 395, i32 3 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.635, i32 713, i32 3 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.635, i32 1206, i32 3 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.635, i32 1991, i32 4 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.635, i32 1464, i32 3 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.635, i32 1801, i32 3 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.635, i32 1806, i32 3 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.635, i32 1820, i32 3 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.635, i32 1834, i32 3 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.635, i32 1778, i32 3 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.635, i32 1706, i32 3 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.635, i32 1509, i32 4 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.635, i32 1516, i32 4 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.635, i32 1527, i32 4 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.635, i32 1551, i32 3 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.635, i32 1587, i32 3 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.635, i32 1598, i32 4 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.635, i32 2114, i32 3 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.635, i32 2121, i32 3 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.635, i32 2130, i32 3 }
@___asan_gen_.631 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.634 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.635 = private constant [26 x i8] c"../drivers/dma/qcom/gpi.c\00", align 1
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.635, i32 2136, i32 3 }
@llvm.compiler.used = appending global [206 x ptr] [ptr @__UNIQUE_ID_description339, ptr @__UNIQUE_ID_file340, ptr @__UNIQUE_ID_license341, ptr @__initcall__kmod_gpi__338_2300_gpi_init4, ptr @gpi_alloc_chan._entry, ptr @gpi_alloc_chan._entry_ptr, ptr @gpi_alloc_ev_chan._entry, ptr @gpi_alloc_ev_chan._entry_ptr, ptr @gpi_alloc_ring._entry, ptr @gpi_alloc_ring._entry_ptr, ptr @gpi_ch_init._entry, ptr @gpi_ch_init._entry.77, ptr @gpi_ch_init._entry.80, ptr @gpi_ch_init._entry.83, ptr @gpi_ch_init._entry.86, ptr @gpi_ch_init._entry_ptr, ptr @gpi_ch_init._entry_ptr.79, ptr @gpi_ch_init._entry_ptr.82, ptr @gpi_ch_init._entry_ptr.85, ptr @gpi_ch_init._entry_ptr.88, ptr @gpi_config_interrupts._entry, ptr @gpi_config_interrupts._entry_ptr, ptr @gpi_ev_tasklet._entry, ptr @gpi_ev_tasklet._entry_ptr, ptr @gpi_free_chan_resources._entry, ptr @gpi_free_chan_resources._entry_ptr, ptr @gpi_handle_irq._entry, ptr @gpi_handle_irq._entry.61, ptr @gpi_handle_irq._entry_ptr, ptr @gpi_handle_irq._entry_ptr.63, ptr @gpi_of_dma_xlate._entry, ptr @gpi_of_dma_xlate._entry.143, ptr @gpi_of_dma_xlate._entry.146, ptr @gpi_of_dma_xlate._entry.149, ptr @gpi_of_dma_xlate._entry_ptr, ptr @gpi_of_dma_xlate._entry_ptr.145, ptr @gpi_of_dma_xlate._entry_ptr.148, ptr @gpi_of_dma_xlate._entry_ptr.151, ptr @gpi_prep_slave_sg._entry, ptr @gpi_prep_slave_sg._entry.116, ptr @gpi_prep_slave_sg._entry.119, ptr @gpi_prep_slave_sg._entry.122, ptr @gpi_prep_slave_sg._entry_ptr, ptr @gpi_prep_slave_sg._entry_ptr.118, ptr @gpi_prep_slave_sg._entry_ptr.121, ptr @gpi_prep_slave_sg._entry_ptr.124, ptr @gpi_probe._entry, ptr @gpi_probe._entry.11, ptr @gpi_probe._entry.17, ptr @gpi_probe._entry.20, ptr @gpi_probe._entry.8, ptr @gpi_probe._entry_ptr, ptr @gpi_probe._entry_ptr.10, ptr @gpi_probe._entry_ptr.13, ptr @gpi_probe._entry_ptr.19, ptr @gpi_probe._entry_ptr.22, ptr @gpi_process_glob_err_irq._entry, ptr @gpi_process_glob_err_irq._entry_ptr, ptr @gpi_process_imed_data_event._entry, ptr @gpi_process_imed_data_event._entry_ptr, ptr @gpi_process_xfer_compl_event._entry, ptr @gpi_process_xfer_compl_event._entry.39, ptr @gpi_process_xfer_compl_event._entry.42, ptr @gpi_process_xfer_compl_event._entry.45, ptr @gpi_process_xfer_compl_event._entry_ptr, ptr @gpi_process_xfer_compl_event._entry_ptr.41, ptr @gpi_process_xfer_compl_event._entry_ptr.44, ptr @gpi_process_xfer_compl_event._entry_ptr.47, ptr @gpi_queue_xfer._entry, ptr @gpi_queue_xfer._entry_ptr, ptr @gpi_reset_chan._entry, ptr @gpi_reset_chan._entry_ptr, ptr @gpi_resume._entry, ptr @gpi_resume._entry_ptr, ptr @gpi_send_cmd._entry, ptr @gpi_send_cmd._entry_ptr, ptr @gpi_start_chan._entry, ptr @gpi_start_chan._entry_ptr, ptr @gpi_stop_chan._entry, ptr @gpi_stop_chan._entry_ptr, ptr @gpi_terminate_all._entry, ptr @gpi_terminate_all._entry.130, ptr @gpi_terminate_all._entry.133, ptr @gpi_terminate_all._entry_ptr, ptr @gpi_terminate_all._entry_ptr.132, ptr @gpi_terminate_all._entry_ptr.135, ptr @gpi_driver, ptr @.str, ptr @gpi_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @gpi_probe.__key, ptr @.str.14, ptr @gpi_probe.__key.15, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @gpi_pm_state_str, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @gpi_ev_state_str, ptr @.str.60, ptr @.str.62, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @init_completion.__key, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.78, ptr @.str.81, ptr @.str.84, ptr @.str.87, ptr @.str.89, ptr @.str.90, ptr @gpi_cmd_str, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @gpi_cmd_info, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.117, ptr @.str.120, ptr @.str.123, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.131, ptr @.str.134, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.144, ptr @.str.147, ptr @.str.150], section "llvm.metadata"
@0 = internal global [161 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpi_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpi_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpi_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpi_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpi_probe.__key.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpi_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpi_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpi_ev_tasklet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpi_pm_state_str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpi_process_xfer_compl_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpi_process_xfer_compl_event._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpi_process_xfer_compl_event._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpi_process_xfer_compl_event._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpi_process_imed_data_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpi_config_interrupts._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpi_handle_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpi_ev_state_str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpi_handle_irq._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpi_process_glob_err_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpi_alloc_ring._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpi_ch_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpi_ch_init._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpi_ch_init._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpi_ch_init._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpi_ch_init._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpi_alloc_ev_chan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpi_cmd_str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpi_alloc_chan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpi_start_chan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpi_stop_chan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpi_cmd_info to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpi_send_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpi_reset_chan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpi_free_chan_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpi_queue_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpi_prep_slave_sg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpi_prep_slave_sg._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpi_prep_slave_sg._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpi_prep_slave_sg._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpi_terminate_all._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpi_terminate_all._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpi_terminate_all._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpi_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpi_of_dma_xlate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpi_of_dma_xlate._entry.143 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpi_of_dma_xlate._entry.146 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpi_of_dma_xlate._entry.149 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @gpi_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @gpi_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpi_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 396, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup150_crit_edge, label %if.end

entry.cleanup150_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup150

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.gpi_dev, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %dev2, align 4
  %call3 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #9
  %res = getelementptr inbounds %struct.gpi_dev, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call3, ptr %res, align 4
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev2, align 4
  %call6 = tail call ptr @devm_ioremap_resource(ptr noundef %3, ptr noundef %call3) #9
  %regs = getelementptr inbounds %struct.gpi_dev, ptr %call.i, i32 0, i32 3
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call6, ptr %regs, align 4
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %call6 to i32
  br label %cleanup150

if.end12:                                         ; preds = %if.end
  %ee_base = getelementptr inbounds %struct.gpi_dev, ptr %call.i, i32 0, i32 4
  %6 = ptrtoint ptr %ee_base to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call6, ptr %ee_base, align 4
  %7 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev2, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 27
  %9 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_node, align 8
  %max_gpii = getelementptr inbounds %struct.gpi_dev, ptr %call.i, i32 0, i32 5
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %10, ptr noundef nonnull @.str.1, ptr noundef %max_gpii, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool16.not = icmp sgt i32 %call.i.i, -1
  %11 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev2, align 4
  br i1 %tobool16.not, label %if.end19, label %do.end

do.end:                                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.2) #12
  br label %cleanup150

if.end19:                                         ; preds = %if.end12
  %of_node21 = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 27
  %13 = ptrtoint ptr %of_node21 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %of_node21, align 8
  %gpii_mask = getelementptr inbounds %struct.gpi_dev, ptr %call.i, i32 0, i32 6
  %call.i.i273 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %14, ptr noundef nonnull @.str.7, ptr noundef %gpii_mask, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i273)
  %tobool23.not = icmp sgt i32 %call.i.i273, -1
  br i1 %tobool23.not, label %if.end29, label %do.end27

do.end27:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.9) #12
  br label %cleanup150

if.end29:                                         ; preds = %if.end19
  %ev_factor = getelementptr inbounds %struct.gpi_dev, ptr %call.i, i32 0, i32 7
  %17 = ptrtoint ptr %ev_factor to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %ev_factor, align 4
  %18 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev2, align 4
  %call31 = tail call i32 @dma_set_mask(ptr noundef %19, i64 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  %20 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev2, align 4
  br i1 %tobool32.not, label %if.end38, label %do.end36

do.end36:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.12, i32 noundef %call31) #12
  br label %cleanup150

if.end38:                                         ; preds = %if.end29
  %22 = ptrtoint ptr %max_gpii to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %max_gpii, align 4
  %mul = mul i32 %23, 856
  %call.i274 = tail call noalias ptr @devm_kmalloc(ptr noundef %21, i32 noundef %mul, i32 noundef 3520) #9
  %gpiis = getelementptr inbounds %struct.gpi_dev, ptr %call.i, i32 0, i32 8
  %24 = ptrtoint ptr %gpiis to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i274, ptr %gpiis, align 4
  %tobool43.not = icmp eq ptr %call.i274, null
  br i1 %tobool43.not, label %if.end38.cleanup150_crit_edge, label %if.end45

if.end38.cleanup150_crit_edge:                    ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup150

if.end45:                                         ; preds = %if.end38
  %channels = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 3
  %25 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %channels, ptr %channels, align 4
  %prev.i = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 3, i32 1
  %26 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %channels, ptr %prev.i, align 4
  %27 = ptrtoint ptr %max_gpii to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %max_gpii, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp279.not = icmp eq i32 %28, 0
  br i1 %cmp279.not, label %if.end45.for.end111_crit_edge, label %if.end45.for.body_crit_edge

if.end45.for.body_crit_edge:                      ; preds = %if.end45
  br label %for.body

if.end45.for.end111_crit_edge:                    ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end111

for.body:                                         ; preds = %for.inc109.for.body_crit_edge, %if.end45.for.body_crit_edge
  %i.0280 = phi i32 [ %inc110, %for.inc109.for.body_crit_edge ], [ 0, %if.end45.for.body_crit_edge ]
  %29 = ptrtoint ptr %gpiis to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %gpiis, align 4
  %arrayidx = getelementptr %struct.gpii, ptr %30, i32 %i.0280
  %shl = shl nuw i32 1, %i.0280
  %31 = ptrtoint ptr %gpii_mask to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %gpii_mask, align 4
  %and = and i32 %32, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool49.not = icmp eq i32 %and, 0
  br i1 %tobool49.not, label %for.body.for.inc109_crit_edge, label %if.end51

for.body.for.inc109_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc109

if.end51:                                         ; preds = %for.body
  %33 = ptrtoint ptr %ee_base to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ee_base, align 4
  %mul53 = shl i32 %i.0280, 14
  %add = add i32 %mul53, 135168
  %add.ptr = getelementptr i8, ptr %34, i32 %add
  %ev_cntxt_base_reg = getelementptr %struct.gpii, ptr %30, i32 %i.0280, i32 5
  %35 = ptrtoint ptr %ev_cntxt_base_reg to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %add.ptr, ptr %ev_cntxt_base_reg, align 4
  %36 = load ptr, ptr %ee_base, align 4
  %add57 = add i32 %mul53, 139520
  %add.ptr59 = getelementptr i8, ptr %36, i32 %add57
  %ev_cntxt_db_reg = getelementptr %struct.gpii, ptr %30, i32 %i.0280, i32 6
  %37 = ptrtoint ptr %ev_cntxt_db_reg to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %add.ptr59, ptr %ev_cntxt_db_reg, align 4
  %add.ptr61 = getelementptr i8, ptr %add.ptr, i32 16
  %ev_ring_rp_lsb_reg = getelementptr %struct.gpii, ptr %30, i32 %i.0280, i32 7
  %38 = ptrtoint ptr %ev_ring_rp_lsb_reg to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %add.ptr61, ptr %ev_ring_rp_lsb_reg, align 4
  %39 = load ptr, ptr %ee_base, align 4
  %add64 = add i32 %mul53, 143376
  %add.ptr65 = getelementptr i8, ptr %39, i32 %add64
  %ev_cmd_reg = getelementptr %struct.gpii, ptr %30, i32 %i.0280, i32 8
  %40 = ptrtoint ptr %ev_cmd_reg to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %add.ptr65, ptr %ev_cmd_reg, align 4
  %41 = load ptr, ptr %ee_base, align 4
  %add68 = add i32 %mul53, 143552
  %add.ptr69 = getelementptr i8, ptr %41, i32 %add68
  %ieob_clr_reg = getelementptr %struct.gpii, ptr %30, i32 %i.0280, i32 9
  %42 = ptrtoint ptr %ieob_clr_reg to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %add.ptr69, ptr %ieob_clr_reg, align 4
  %call70 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef %i.0280) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %cmp71 = icmp slt i32 %call70, 0
  br i1 %cmp71, label %if.end51.cleanup150_crit_edge, label %if.end73

if.end51.cleanup150_crit_edge:                    ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup150

if.end73:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  %irq = getelementptr %struct.gpii, ptr %30, i32 %i.0280, i32 3
  %43 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %call70, ptr %irq, align 4
  %add81 = add i32 %mul53, 131072
  %add87 = add i32 %mul53, 139264
  %add93 = add i32 %mul53, 143368
  %arrayidx78 = getelementptr %struct.gpii, ptr %30, i32 %i.0280, i32 1, i32 0
  %44 = ptrtoint ptr %ee_base to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ee_base, align 4
  %add.ptr84 = getelementptr i8, ptr %45, i32 %add81
  %ch_cntxt_base_reg = getelementptr %struct.gpii, ptr %30, i32 %i.0280, i32 1, i32 0, i32 7
  %46 = ptrtoint ptr %ch_cntxt_base_reg to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %add.ptr84, ptr %ch_cntxt_base_reg, align 4
  %47 = load ptr, ptr %ee_base, align 4
  %add.ptr90 = getelementptr i8, ptr %47, i32 %add87
  %ch_cntxt_db_reg = getelementptr %struct.gpii, ptr %30, i32 %i.0280, i32 1, i32 0, i32 8
  %48 = ptrtoint ptr %ch_cntxt_db_reg to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %add.ptr90, ptr %ch_cntxt_db_reg, align 4
  %49 = load ptr, ptr %ee_base, align 4
  %add.ptr94 = getelementptr i8, ptr %49, i32 %add93
  %ch_cmd_reg = getelementptr %struct.gpii, ptr %30, i32 %i.0280, i32 1, i32 0, i32 9
  %50 = ptrtoint ptr %ch_cmd_reg to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %add.ptr94, ptr %ch_cmd_reg, align 4
  tail call void @vchan_init(ptr noundef %arrayidx78, ptr noundef nonnull %call.i) #9
  %desc_free = getelementptr inbounds %struct.virt_dma_chan, ptr %arrayidx78, i32 0, i32 2
  %51 = ptrtoint ptr %desc_free to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @gpi_desc_free, ptr %desc_free, align 4
  %chid = getelementptr %struct.gpii, ptr %30, i32 %i.0280, i32 1, i32 0, i32 1
  %52 = ptrtoint ptr %chid to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %chid, align 4
  %gpii97 = getelementptr %struct.gpii, ptr %30, i32 %i.0280, i32 1, i32 0, i32 4
  %53 = ptrtoint ptr %gpii97 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %arrayidx, ptr %gpii97, align 4
  %dir = getelementptr %struct.gpii, ptr %30, i32 %i.0280, i32 1, i32 0, i32 10
  %54 = ptrtoint ptr %dir to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 1, ptr %dir, align 4
  %arrayidx78.1 = getelementptr %struct.gpii, ptr %30, i32 %i.0280, i32 1, i32 1
  %55 = ptrtoint ptr %ee_base to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ee_base, align 4
  %add83.1 = add i32 %mul53, 131200
  %add.ptr84.1 = getelementptr i8, ptr %56, i32 %add83.1
  %ch_cntxt_base_reg.1 = getelementptr %struct.gpii, ptr %30, i32 %i.0280, i32 1, i32 1, i32 7
  %57 = ptrtoint ptr %ch_cntxt_base_reg.1 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %add.ptr84.1, ptr %ch_cntxt_base_reg.1, align 4
  %58 = load ptr, ptr %ee_base, align 4
  %add89.1 = add i32 %mul53, 139272
  %add.ptr90.1 = getelementptr i8, ptr %58, i32 %add89.1
  %ch_cntxt_db_reg.1 = getelementptr %struct.gpii, ptr %30, i32 %i.0280, i32 1, i32 1, i32 8
  %59 = ptrtoint ptr %ch_cntxt_db_reg.1 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %add.ptr90.1, ptr %ch_cntxt_db_reg.1, align 4
  %60 = load ptr, ptr %ee_base, align 4
  %add.ptr94.1 = getelementptr i8, ptr %60, i32 %add93
  %ch_cmd_reg.1 = getelementptr %struct.gpii, ptr %30, i32 %i.0280, i32 1, i32 1, i32 9
  %61 = ptrtoint ptr %ch_cmd_reg.1 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %add.ptr94.1, ptr %ch_cmd_reg.1, align 4
  tail call void @vchan_init(ptr noundef %arrayidx78.1, ptr noundef nonnull %call.i) #9
  %desc_free.1 = getelementptr inbounds %struct.virt_dma_chan, ptr %arrayidx78.1, i32 0, i32 2
  %62 = ptrtoint ptr %desc_free.1 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @gpi_desc_free, ptr %desc_free.1, align 4
  %chid.1 = getelementptr %struct.gpii, ptr %30, i32 %i.0280, i32 1, i32 1, i32 1
  %63 = ptrtoint ptr %chid.1 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 1, ptr %chid.1, align 4
  %gpii97.1 = getelementptr %struct.gpii, ptr %30, i32 %i.0280, i32 1, i32 1, i32 4
  %64 = ptrtoint ptr %gpii97.1 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %arrayidx, ptr %gpii97.1, align 4
  %dir.1 = getelementptr %struct.gpii, ptr %30, i32 %i.0280, i32 1, i32 1, i32 10
  %65 = ptrtoint ptr %dir.1 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %dir.1, align 4
  %ctrl_lock = getelementptr %struct.gpii, ptr %30, i32 %i.0280, i32 10
  tail call void @__mutex_init(ptr noundef %ctrl_lock, ptr noundef nonnull @.str.14, ptr noundef nonnull @gpi_probe.__key) #9
  %pm_lock = getelementptr %struct.gpii, ptr %30, i32 %i.0280, i32 14
  tail call void @__rwlock_init(ptr noundef %pm_lock, ptr noundef nonnull @.str.16, ptr noundef nonnull @gpi_probe.__key.15) #9
  %ev_task = getelementptr %struct.gpii, ptr %30, i32 %i.0280, i32 16
  %66 = ptrtoint ptr %arrayidx to i32
  tail call void @tasklet_init(ptr noundef %ev_task, ptr noundef nonnull @gpi_ev_tasklet, i32 noundef %66) #9
  %cmd_completion = getelementptr %struct.gpii, ptr %30, i32 %i.0280, i32 17
  %67 = ptrtoint ptr %cmd_completion to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %cmd_completion, align 4
  %wait.i = getelementptr %struct.gpii, ptr %30, i32 %i.0280, i32 17, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.70, ptr noundef nonnull @init_completion.__key) #9
  %68 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %i.0280, ptr %arrayidx, align 4
  %69 = ptrtoint ptr %ee_base to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ee_base, align 4
  %regs106 = getelementptr %struct.gpii, ptr %30, i32 %i.0280, i32 4
  %71 = ptrtoint ptr %regs106 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %70, ptr %regs106, align 4
  %gpi_dev107 = getelementptr %struct.gpii, ptr %30, i32 %i.0280, i32 2
  %72 = ptrtoint ptr %gpi_dev107 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call.i, ptr %gpi_dev107, align 4
  br label %for.inc109

for.inc109:                                       ; preds = %if.end73, %for.body.for.inc109_crit_edge
  %inc110 = add nuw i32 %i.0280, 1
  %73 = ptrtoint ptr %max_gpii to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %max_gpii, align 4
  %cmp = icmp ult i32 %inc110, %74
  br i1 %cmp, label %for.inc109.for.body_crit_edge, label %for.inc109.for.end111_crit_edge

for.inc109.for.end111_crit_edge:                  ; preds = %for.inc109
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end111

for.inc109.for.body_crit_edge:                    ; preds = %for.inc109
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end111:                                       ; preds = %for.inc109.for.end111_crit_edge, %if.end45.for.end111_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %75 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %cap_mask = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 6
  %76 = ptrtoint ptr %cap_mask to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %cap_mask, align 4
  tail call void @_set_bit(i32 noundef 11, ptr noundef %cap_mask) #9
  %directions = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 21
  %77 = ptrtoint ptr %directions to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 6, ptr %directions, align 4
  %residue_granularity = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 26
  %78 = ptrtoint ptr %residue_granularity to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %residue_granularity, align 4
  %src_addr_widths = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 19
  %79 = ptrtoint ptr %src_addr_widths to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 8, ptr %src_addr_widths, align 4
  %dst_addr_widths = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 20
  %80 = ptrtoint ptr %dst_addr_widths to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 8, ptr %dst_addr_widths, align 4
  %device_alloc_chan_resources = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 27
  %81 = ptrtoint ptr %device_alloc_chan_resources to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @gpi_alloc_chan_resources, ptr %device_alloc_chan_resources, align 4
  %device_free_chan_resources = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 29
  %82 = ptrtoint ptr %device_free_chan_resources to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @gpi_free_chan_resources, ptr %device_free_chan_resources, align 4
  %device_tx_status = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 49
  %83 = ptrtoint ptr %device_tx_status to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr @dma_cookie_status, ptr %device_tx_status, align 4
  %device_issue_pending = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 50
  %84 = ptrtoint ptr %device_issue_pending to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr @gpi_issue_pending, ptr %device_issue_pending, align 4
  %device_prep_slave_sg = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 39
  %85 = ptrtoint ptr %device_prep_slave_sg to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @gpi_prep_slave_sg, ptr %device_prep_slave_sg, align 4
  %device_config = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 44
  %86 = ptrtoint ptr %device_config to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @gpi_peripheral_config, ptr %device_config, align 4
  %device_terminate_all = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 47
  %87 = ptrtoint ptr %device_terminate_all to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr @gpi_terminate_all, ptr %device_terminate_all, align 4
  %88 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev2, align 4
  %dev128 = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 15
  %90 = ptrtoint ptr %dev128 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %89, ptr %dev128, align 4
  %device_pause = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 45
  %91 = ptrtoint ptr %device_pause to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr @gpi_pause, ptr %device_pause, align 4
  %device_resume = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 46
  %92 = ptrtoint ptr %device_resume to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr @gpi_resume, ptr %device_resume, align 4
  %call132 = tail call i32 @dma_async_device_register(ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call132)
  %tobool133.not = icmp eq i32 %call132, 0
  %93 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev2, align 4
  br i1 %tobool133.not, label %if.end139, label %do.end137

do.end137:                                        ; preds = %for.end111
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %94, ptr noundef nonnull @.str.18, i32 noundef %call132) #12
  br label %cleanup150

if.end139:                                        ; preds = %for.end111
  %of_node141 = getelementptr inbounds %struct.device, ptr %94, i32 0, i32 27
  %95 = ptrtoint ptr %of_node141 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %of_node141, align 8
  %call142 = tail call i32 @of_dma_controller_register(ptr noundef %96, ptr noundef nonnull @gpi_of_dma_xlate, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call142)
  %tobool143.not = icmp eq i32 %call142, 0
  br i1 %tobool143.not, label %if.end139.cleanup150_crit_edge, label %do.end147

if.end139.cleanup150_crit_edge:                   ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup150

do.end147:                                        ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #11
  %97 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %98, ptr noundef nonnull @.str.21, i32 noundef %call142) #12
  br label %cleanup150

cleanup150:                                       ; preds = %do.end147, %if.end139.cleanup150_crit_edge, %do.end137, %if.end51.cleanup150_crit_edge, %if.end38.cleanup150_crit_edge, %do.end36, %do.end27, %do.end, %if.then9, %entry.cleanup150_crit_edge
  %retval.2 = phi i32 [ %5, %if.then9 ], [ %call.i.i, %do.end ], [ %call.i.i273, %do.end27 ], [ %call31, %do.end36 ], [ %call132, %do.end137 ], [ %call142, %do.end147 ], [ -12, %entry.cleanup150_crit_edge ], [ -12, %if.end38.cleanup150_crit_edge ], [ 0, %if.end139.cleanup150_crit_edge ], [ %call70, %if.end51.cleanup150_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchan_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gpi_desc_free(ptr noundef %vd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %vd) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rwlock_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gpi_ev_tasklet(i32 noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %data to ptr
  %pm_lock = getelementptr inbounds %struct.gpii, ptr %0, i32 0, i32 14
  tail call void @_raw_read_lock_bh(ptr noundef %pm_lock) #9
  %pm_state = getelementptr inbounds %struct.gpii, ptr %0, i32 0, i32 13
  %1 = ptrtoint ptr %pm_state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %pm_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp ugt i32 %2, 1
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @_raw_read_unlock_bh(ptr noundef %pm_lock) #9
  %gpi_dev = getelementptr inbounds %struct.gpii, ptr %0, i32 0, i32 2
  %3 = ptrtoint ptr %gpi_dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %gpi_dev, align 4
  %dev = getelementptr inbounds %struct.gpi_dev, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %7 = ptrtoint ptr %pm_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pm_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %8)
  %cmp3 = icmp ugt i32 %8, 5
  br i1 %cmp3, label %if.then.cond.end_crit_edge, label %cond.false

if.then.cond.end_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr [6 x ptr], ptr @gpi_pm_state_str, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then.cond.end_crit_edge
  %cond = phi ptr [ %10, %cond.false ], [ @.str.25, %if.then.cond.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.23, ptr noundef %cond) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @gpi_process_events(ptr noundef %0)
  %call = tail call fastcc i32 @gpi_config_interrupts(ptr noundef %0, i32 noundef 1, i1 noundef zeroext true)
  tail call void @_raw_read_unlock_bh(ptr noundef %pm_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %cond.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpi_alloc_chan_resources(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %gpii1 = getelementptr inbounds %struct.gchan, ptr %chan, i32 0, i32 4
  %0 = ptrtoint ptr %gpii1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpii1, align 4
  %ctrl_lock = getelementptr inbounds %struct.gpii, ptr %1, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %ctrl_lock, i32 noundef 0) #9
  %ch_ring = getelementptr inbounds %struct.gchan, ptr %chan, i32 0, i32 11
  %call2 = tail call fastcc i32 @gpi_alloc_ring(ptr noundef %ch_ring, i32 noundef 64, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %gpii1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpii1, align 4
  %gpi_dev.i = getelementptr inbounds %struct.gpii, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %gpi_dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gpi_dev.i, align 4
  %ev_factor2.i = getelementptr inbounds %struct.gpi_dev, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %ev_factor2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ev_factor2.i, align 4
  %pm_state.i = getelementptr inbounds %struct.gchan, ptr %chan, i32 0, i32 6
  %8 = ptrtoint ptr %pm_state.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %pm_state.i, align 4
  %pm_state4.i = getelementptr %struct.gpii, ptr %3, i32 0, i32 1, i32 0, i32 6
  %9 = ptrtoint ptr %pm_state4.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pm_state4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp5.not.i = icmp eq i32 %10, 1
  br i1 %cmp5.not.i, label %for.cond.i, label %if.end.exit_gpi_init.i_crit_edge

if.end.exit_gpi_init.i_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_gpi_init.i

for.cond.i:                                       ; preds = %if.end
  %pm_state4.1.i = getelementptr %struct.gpii, ptr %3, i32 0, i32 1, i32 1, i32 6
  %11 = ptrtoint ptr %pm_state4.1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pm_state4.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp5.not.1.i = icmp eq i32 %12, 1
  br i1 %cmp5.not.1.i, label %for.cond.1.i, label %for.cond.i.exit_gpi_init.i_crit_edge

for.cond.i.exit_gpi_init.i_crit_edge:             ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_gpi_init.i

for.cond.1.i:                                     ; preds = %for.cond.i
  %gchan6.i = getelementptr %struct.gpii, ptr %3, i32 0, i32 1
  %protocol.i = getelementptr inbounds %struct.gpii, ptr %3, i32 0, i32 1, i32 0, i32 3
  %13 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %protocol.i, align 4
  %protocol10.i = getelementptr %struct.gpii, ptr %3, i32 0, i32 1, i32 1, i32 3
  %15 = ptrtoint ptr %protocol10.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %protocol10.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp11.not.i = icmp eq i32 %14, %16
  br i1 %cmp11.not.i, label %if.end20.i, label %do.end.i

do.end.i:                                         ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %gpi_dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %gpi_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.gpi_dev, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.75, i32 noundef %14, i32 noundef %16) #12
  br label %exit_gpi_init.i

if.end20.i:                                       ; preds = %for.cond.1.i
  %shl.i = shl i32 64, %7
  %ev_ring.i = getelementptr inbounds %struct.gpii, ptr %3, i32 0, i32 15
  %call.i = tail call fastcc i32 @gpi_alloc_ring(ptr noundef %ev_ring.i, i32 noundef %shl.i, ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end22.i, label %if.end20.i.exit_gpi_init.i_crit_edge

if.end20.i.exit_gpi_init.i_crit_edge:             ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_gpi_init.i

if.end22.i:                                       ; preds = %if.end20.i
  %pm_lock.i = getelementptr inbounds %struct.gpii, ptr %3, i32 0, i32 14
  tail call void @_raw_write_lock_irq(ptr noundef %pm_lock.i) #9
  %pm_state23.i = getelementptr inbounds %struct.gpii, ptr %3, i32 0, i32 13
  %21 = ptrtoint ptr %pm_state23.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 2, ptr %pm_state23.i, align 4
  tail call void @_raw_write_unlock_irq(ptr noundef %pm_lock.i) #9
  %call25.i = tail call fastcc i32 @gpi_config_interrupts(ptr noundef %3, i32 noundef 0, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %if.end33.i, label %do.end30.i

do.end30.i:                                       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %gpi_dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %gpi_dev.i, align 4
  %dev32.i = getelementptr inbounds %struct.gpi_dev, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %dev32.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev32.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.78, i32 noundef %call25.i) #12
  br label %error_config_int.i

if.end33.i:                                       ; preds = %if.end22.i
  %call34.i = tail call fastcc i32 @gpi_alloc_ev_chan(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %tobool35.not.i = icmp eq i32 %call34.i, 0
  br i1 %tobool35.not.i, label %for.body45.preheader.i, label %do.end39.i

for.body45.preheader.i:                           ; preds = %if.end33.i
  %call48.i = tail call fastcc i32 @gpi_alloc_chan(ptr noundef %gchan6.i, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i)
  %tobool49.not.i = icmp eq i32 %call48.i, 0
  br i1 %tobool49.not.i, label %for.inc57.i, label %error_alloc_chan.i

do.end39.i:                                       ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %gpi_dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %gpi_dev.i, align 4
  %dev41.i = getelementptr inbounds %struct.gpi_dev, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %dev41.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev41.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.81, i32 noundef %call34.i) #12
  br label %error_alloc_ev_ring.i

for.inc57.i:                                      ; preds = %for.body45.preheader.i
  %arrayidx47.1.i = getelementptr %struct.gpii, ptr %3, i32 0, i32 1, i32 1
  %call48.1.i = tail call fastcc i32 @gpi_alloc_chan(ptr noundef %arrayidx47.1.i, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.1.i)
  %tobool49.not.1.i = icmp eq i32 %call48.1.i, 0
  br i1 %tobool49.not.1.i, label %for.inc57.1.i, label %error_alloc_chan.i.thread

error_alloc_chan.i.thread:                        ; preds = %for.inc57.i
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %gpi_dev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %gpi_dev.i, align 4
  %dev55.i22 = getelementptr inbounds %struct.gpi_dev, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %dev55.i22 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev55.i22, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.84, i32 noundef %call48.1.i) #12
  br label %for.body89.i

for.inc57.1.i:                                    ; preds = %for.inc57.i
  %gpii1.i.i = getelementptr %struct.gpii, ptr %3, i32 0, i32 1, i32 0, i32 4
  %34 = ptrtoint ptr %gpii1.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %gpii1.i.i, align 4
  %call.i.i = tail call fastcc i32 @gpi_send_cmd(ptr noundef %35, ptr noundef %gchan6.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %for.inc74.i, label %for.inc57.1.i.do.end70.i_crit_edge

for.inc57.1.i.do.end70.i_crit_edge:               ; preds = %for.inc57.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end70.i

do.end70.i:                                       ; preds = %for.inc74.i.do.end70.i_crit_edge, %for.inc57.1.i.do.end70.i_crit_edge
  %.lcssa.i = phi ptr [ %35, %for.inc57.1.i.do.end70.i_crit_edge ], [ %46, %for.inc74.i.do.end70.i_crit_edge ]
  %call.i.lcssa.i = phi i32 [ %call.i.i, %for.inc57.1.i.do.end70.i_crit_edge ], [ %call.i.1.i, %for.inc74.i.do.end70.i_crit_edge ]
  %gpi_dev.i.i = getelementptr inbounds %struct.gpii, ptr %.lcssa.i, i32 0, i32 2
  %36 = ptrtoint ptr %gpi_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %gpi_dev.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.gpi_dev, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.92, i32 noundef %call.i.lcssa.i) #12
  %40 = ptrtoint ptr %gpi_dev.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %gpi_dev.i, align 4
  %dev72.i = getelementptr inbounds %struct.gpi_dev, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %dev72.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev72.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.87, i32 noundef %call.i.lcssa.i) #12
  br i1 %tobool.not.i.i, label %for.body79.i, label %do.end70.i.for.body89.i_crit_edge

do.end70.i.for.body89.i_crit_edge:                ; preds = %do.end70.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body89.i

for.inc74.i:                                      ; preds = %for.inc57.1.i
  %pm_lock.i.i = getelementptr inbounds %struct.gpii, ptr %35, i32 0, i32 14
  tail call void @_raw_write_lock_irq(ptr noundef %pm_lock.i.i) #9
  %44 = ptrtoint ptr %pm_state4.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 3, ptr %pm_state4.i, align 4
  tail call void @_raw_write_unlock_irq(ptr noundef %pm_lock.i.i) #9
  %gpii1.i.1.i = getelementptr %struct.gpii, ptr %3, i32 0, i32 1, i32 1, i32 4
  %45 = ptrtoint ptr %gpii1.i.1.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %gpii1.i.1.i, align 4
  %call.i.1.i = tail call fastcc i32 @gpi_send_cmd(ptr noundef %46, ptr noundef %arrayidx47.1.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1.i)
  %tobool.not.i.1.i = icmp eq i32 %call.i.1.i, 0
  br i1 %tobool.not.i.1.i, label %for.inc74.1.i, label %for.inc74.i.do.end70.i_crit_edge

for.inc74.i.do.end70.i_crit_edge:                 ; preds = %for.inc74.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end70.i

for.inc74.1.i:                                    ; preds = %for.inc74.i
  call void @__sanitizer_cov_trace_pc() #11
  %pm_lock.i.1.i = getelementptr inbounds %struct.gpii, ptr %46, i32 0, i32 14
  tail call void @_raw_write_lock_irq(ptr noundef %pm_lock.i.1.i) #9
  %47 = ptrtoint ptr %pm_state4.1.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 3, ptr %pm_state4.1.i, align 4
  tail call void @_raw_write_unlock_irq(ptr noundef %pm_lock.i.1.i) #9
  br label %cleanup

for.body79.i:                                     ; preds = %do.end70.i
  %48 = ptrtoint ptr %gpii1.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %gpii1.i.i, align 4
  %call.i16 = tail call fastcc i32 @gpi_send_cmd(ptr noundef %49, ptr noundef %gchan6.i, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i16)
  %tobool.not.i17 = icmp eq i32 %call.i16, 0
  br i1 %tobool.not.i17, label %for.body79.i.gpi_stop_chan.exit_crit_edge, label %do.end.i20

for.body79.i.gpi_stop_chan.exit_crit_edge:        ; preds = %for.body79.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gpi_stop_chan.exit

do.end.i20:                                       ; preds = %for.body79.i
  call void @__sanitizer_cov_trace_pc() #11
  %gpi_dev.i18 = getelementptr inbounds %struct.gpii, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %gpi_dev.i18 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %gpi_dev.i18, align 4
  %dev.i19 = getelementptr inbounds %struct.gpi_dev, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %dev.i19 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev.i19, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.93, i32 noundef %call.i16) #12
  br label %gpi_stop_chan.exit

gpi_stop_chan.exit:                               ; preds = %do.end.i20, %for.body79.i.gpi_stop_chan.exit_crit_edge
  %call83.i = tail call fastcc i32 @gpi_send_cmd(ptr noundef %3, ptr noundef %chan, i32 noundef 3) #9
  br label %for.body89.i

error_alloc_chan.i:                               ; preds = %for.body45.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  %54 = ptrtoint ptr %gpi_dev.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %gpi_dev.i, align 4
  %dev55.i = getelementptr inbounds %struct.gpi_dev, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %dev55.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev55.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.84, i32 noundef %call48.i) #12
  br label %error_alloc_ev_ring.i

for.body89.i:                                     ; preds = %gpi_stop_chan.exit, %do.end70.i.for.body89.i_crit_edge, %error_alloc_chan.i.thread
  %ret.2172.i = phi i32 [ %call.i.lcssa.i, %gpi_stop_chan.exit ], [ %call.i.lcssa.i, %do.end70.i.for.body89.i_crit_edge ], [ %call48.1.i, %error_alloc_chan.i.thread ]
  %call90.i = tail call fastcc i32 @gpi_reset_chan(ptr noundef %chan, i32 noundef 4) #9
  br i1 %tobool49.not.1.i, label %for.body89.i.1, label %for.body89.i.error_alloc_ev_ring.i_crit_edge

for.body89.i.error_alloc_ev_ring.i_crit_edge:     ; preds = %for.body89.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_alloc_ev_ring.i

for.body89.i.1:                                   ; preds = %for.body89.i
  call void @__sanitizer_cov_trace_pc() #11
  %call90.i.1 = tail call fastcc i32 @gpi_reset_chan(ptr noundef %chan, i32 noundef 4) #9
  br label %error_alloc_ev_ring.i

error_alloc_ev_ring.i:                            ; preds = %for.body89.i.1, %for.body89.i.error_alloc_ev_ring.i_crit_edge, %error_alloc_chan.i, %do.end39.i
  %ret.3.i = phi i32 [ %call34.i, %do.end39.i ], [ %call48.i, %error_alloc_chan.i ], [ %ret.2172.i, %for.body89.i.1 ], [ %ret.2172.i, %for.body89.i.error_alloc_ev_ring.i_crit_edge ]
  tail call fastcc void @gpi_disable_interrupts(ptr noundef %3) #9
  br label %error_config_int.i

error_config_int.i:                               ; preds = %error_alloc_ev_ring.i, %do.end30.i
  %ret.4.i = phi i32 [ %call25.i, %do.end30.i ], [ %ret.3.i, %error_alloc_ev_ring.i ]
  %58 = ptrtoint ptr %gpi_dev.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %gpi_dev.i, align 4
  %dev.i154.i = getelementptr inbounds %struct.gpi_dev, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %dev.i154.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev.i154.i, align 4
  %alloc_size.i.i = getelementptr inbounds %struct.gpii, ptr %3, i32 0, i32 15, i32 1
  %62 = ptrtoint ptr %alloc_size.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %alloc_size.i.i, align 4
  %64 = ptrtoint ptr %ev_ring.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ev_ring.i, align 4
  %dma_handle.i.i = getelementptr inbounds %struct.gpii, ptr %3, i32 0, i32 15, i32 3
  %66 = ptrtoint ptr %dma_handle.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %dma_handle.i.i, align 4
  tail call void @dma_free_attrs(ptr noundef %61, i32 noundef %63, ptr noundef %65, i32 noundef %67, i32 noundef 0) #9
  %68 = call ptr @memset(ptr %ev_ring.i, i32 0, i32 44)
  br label %exit_gpi_init.i

exit_gpi_init.i:                                  ; preds = %error_config_int.i, %if.end20.i.exit_gpi_init.i_crit_edge, %do.end.i, %for.cond.i.exit_gpi_init.i_crit_edge, %if.end.exit_gpi_init.i_crit_edge
  %ret.5.i = phi i32 [ -22, %do.end.i ], [ %call.i, %if.end20.i.exit_gpi_init.i_crit_edge ], [ %ret.4.i, %error_config_int.i ], [ 0, %for.cond.i.exit_gpi_init.i_crit_edge ], [ 0, %if.end.exit_gpi_init.i_crit_edge ]
  %ctrl_lock.i = getelementptr inbounds %struct.gpii, ptr %3, i32 0, i32 10
  tail call void @mutex_unlock(ptr noundef %ctrl_lock.i) #9
  br label %cleanup

cleanup:                                          ; preds = %exit_gpi_init.i, %for.inc74.1.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.5.i, %exit_gpi_init.i ], [ 0, %for.inc74.1.i ], [ %call2, %entry.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %ctrl_lock) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gpi_free_chan_resources(ptr noundef %chan) #2 align 64 {
entry:
  %head.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %gpii1 = getelementptr inbounds %struct.gchan, ptr %chan, i32 0, i32 4
  %0 = ptrtoint ptr %gpii1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpii1, align 4
  %ctrl_lock = getelementptr inbounds %struct.gpii, ptr %1, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %ctrl_lock, i32 noundef 0) #9
  %pm_state = getelementptr inbounds %struct.gchan, ptr %chan, i32 0, i32 6
  %2 = ptrtoint ptr %pm_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pm_state, align 4
  %pm_lock = getelementptr inbounds %struct.gpii, ptr %1, i32 0, i32 14
  tail call void @_raw_write_lock_irq(ptr noundef %pm_lock) #9
  %4 = ptrtoint ptr %pm_state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4, ptr %pm_state, align 4
  tail call void @_raw_write_unlock_irq(ptr noundef %pm_lock) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp = icmp eq i32 %3, 3
  br i1 %cmp, label %if.then, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then:                                          ; preds = %entry
  %5 = ptrtoint ptr %gpii1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %gpii1, align 4
  %call.i = tail call fastcc i32 @gpi_send_cmd(ptr noundef %6, ptr noundef %chan, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.gpi_stop_chan.exit_crit_edge, label %do.end.i

if.then.gpi_stop_chan.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %gpi_stop_chan.exit

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %gpi_dev.i = getelementptr inbounds %struct.gpii, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %gpi_dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %gpi_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.gpi_dev, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.93, i32 noundef %call.i) #12
  br label %gpi_stop_chan.exit

gpi_stop_chan.exit:                               ; preds = %do.end.i, %if.then.gpi_stop_chan.exit_crit_edge
  %call5 = tail call fastcc i32 @gpi_send_cmd(ptr noundef %1, ptr noundef %chan, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %gpi_stop_chan.exit.if.end_crit_edge, label %do.end

gpi_stop_chan.exit.if.end_crit_edge:              ; preds = %gpi_stop_chan.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %gpi_stop_chan.exit
  call void @__sanitizer_cov_trace_pc() #11
  %gpi_dev = getelementptr inbounds %struct.gpii, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %gpi_dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %gpi_dev, align 4
  %dev = getelementptr inbounds %struct.gpi_dev, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.110, i32 noundef %call5) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %gpi_stop_chan.exit.if.end_crit_edge
  %call7 = tail call fastcc i32 @gpi_reset_chan(ptr noundef %chan, i32 noundef 4)
  br label %if.end8

if.end8:                                          ; preds = %if.end, %entry.if.end8_crit_edge
  %ch_ring = getelementptr inbounds %struct.gchan, ptr %chan, i32 0, i32 11
  %gpi_dev.i69 = getelementptr inbounds %struct.gpii, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %gpi_dev.i69 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %gpi_dev.i69, align 4
  %dev.i70 = getelementptr inbounds %struct.gpi_dev, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %dev.i70 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i70, align 4
  %alloc_size.i = getelementptr inbounds %struct.gchan, ptr %chan, i32 0, i32 11, i32 1
  %19 = ptrtoint ptr %alloc_size.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %alloc_size.i, align 4
  %21 = ptrtoint ptr %ch_ring to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ch_ring, align 4
  %dma_handle.i = getelementptr inbounds %struct.gchan, ptr %chan, i32 0, i32 11, i32 3
  %23 = ptrtoint ptr %dma_handle.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dma_handle.i, align 4
  tail call void @dma_free_attrs(ptr noundef %18, i32 noundef %20, ptr noundef %22, i32 noundef %24, i32 noundef 0) #9
  %25 = call ptr @memset(ptr %ch_ring, i32 0, i32 44)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %head.i) #9
  %26 = getelementptr inbounds %struct.list_head, ptr %head.i, i32 0, i32 1
  %27 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %head.i, ptr %head.i, align 4
  %28 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %head.i, ptr %26, align 4
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %desc_allocated.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4
  %29 = ptrtoint ptr %desc_allocated.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %desc_allocated.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %30, %desc_allocated.i.i
  br i1 %cmp.i.not.i.i.i, label %if.end8.list_splice_tail_init.exit.i.i_crit_edge, label %if.then.i.i.i

if.end8.list_splice_tail_init.exit.i.i_crit_edge: ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit.i.i

if.then.i.i.i:                                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %26, align 4
  %prev2.i.i.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4, i32 1
  %33 = ptrtoint ptr %prev2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev2.i.i.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %35 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev3.i.i.i.i, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %30, ptr %32, align 4
  %37 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %head.i, ptr %34, align 4
  store ptr %34, ptr %26, align 4
  %38 = ptrtoint ptr %desc_allocated.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %desc_allocated.i.i, ptr %desc_allocated.i.i, align 4
  store ptr %desc_allocated.i.i, ptr %prev2.i.i.i.i, align 4
  br label %list_splice_tail_init.exit.i.i

list_splice_tail_init.exit.i.i:                   ; preds = %if.then.i.i.i, %if.end8.list_splice_tail_init.exit.i.i_crit_edge
  %desc_submitted.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5
  %39 = ptrtoint ptr %desc_submitted.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %desc_submitted.i.i, align 4
  %cmp.i.not.i9.i.i = icmp eq ptr %40, %desc_submitted.i.i
  br i1 %cmp.i.not.i9.i.i, label %list_splice_tail_init.exit.i.i.list_splice_tail_init.exit14.i.i_crit_edge, label %if.then.i13.i.i

list_splice_tail_init.exit.i.i.list_splice_tail_init.exit14.i.i_crit_edge: ; preds = %list_splice_tail_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit14.i.i

if.then.i13.i.i:                                  ; preds = %list_splice_tail_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %26, align 4
  %prev2.i.i11.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5, i32 1
  %43 = ptrtoint ptr %prev2.i.i11.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %prev2.i.i11.i.i, align 4
  %prev3.i.i12.i.i = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  %45 = ptrtoint ptr %prev3.i.i12.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %42, ptr %prev3.i.i12.i.i, align 4
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %40, ptr %42, align 4
  %47 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %head.i, ptr %44, align 4
  store ptr %44, ptr %26, align 4
  %48 = ptrtoint ptr %desc_submitted.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %desc_submitted.i.i, ptr %desc_submitted.i.i, align 4
  store ptr %desc_submitted.i.i, ptr %prev2.i.i11.i.i, align 4
  br label %list_splice_tail_init.exit14.i.i

list_splice_tail_init.exit14.i.i:                 ; preds = %if.then.i13.i.i, %list_splice_tail_init.exit.i.i.list_splice_tail_init.exit14.i.i_crit_edge
  %desc_issued.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6
  %49 = ptrtoint ptr %desc_issued.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile ptr, ptr %desc_issued.i.i, align 4
  %cmp.i.not.i15.i.i = icmp eq ptr %50, %desc_issued.i.i
  br i1 %cmp.i.not.i15.i.i, label %list_splice_tail_init.exit14.i.i.list_splice_tail_init.exit20.i.i_crit_edge, label %if.then.i19.i.i

list_splice_tail_init.exit14.i.i.list_splice_tail_init.exit20.i.i_crit_edge: ; preds = %list_splice_tail_init.exit14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit20.i.i

if.then.i19.i.i:                                  ; preds = %list_splice_tail_init.exit14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %51 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %26, align 4
  %prev2.i.i17.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6, i32 1
  %53 = ptrtoint ptr %prev2.i.i17.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %prev2.i.i17.i.i, align 4
  %prev3.i.i18.i.i = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  %55 = ptrtoint ptr %prev3.i.i18.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %52, ptr %prev3.i.i18.i.i, align 4
  %56 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %50, ptr %52, align 4
  %57 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %head.i, ptr %54, align 4
  store ptr %54, ptr %26, align 4
  %58 = ptrtoint ptr %desc_issued.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %desc_issued.i.i, ptr %desc_issued.i.i, align 4
  store ptr %desc_issued.i.i, ptr %prev2.i.i17.i.i, align 4
  br label %list_splice_tail_init.exit20.i.i

list_splice_tail_init.exit20.i.i:                 ; preds = %if.then.i19.i.i, %list_splice_tail_init.exit14.i.i.list_splice_tail_init.exit20.i.i_crit_edge
  %desc_completed.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 7
  %59 = ptrtoint ptr %desc_completed.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile ptr, ptr %desc_completed.i.i, align 4
  %cmp.i.not.i21.i.i = icmp eq ptr %60, %desc_completed.i.i
  br i1 %cmp.i.not.i21.i.i, label %list_splice_tail_init.exit20.i.i.list_splice_tail_init.exit26.i.i_crit_edge, label %if.then.i25.i.i

list_splice_tail_init.exit20.i.i.list_splice_tail_init.exit26.i.i_crit_edge: ; preds = %list_splice_tail_init.exit20.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit26.i.i

if.then.i25.i.i:                                  ; preds = %list_splice_tail_init.exit20.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %61 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %26, align 4
  %prev2.i.i23.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 7, i32 1
  %63 = ptrtoint ptr %prev2.i.i23.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %prev2.i.i23.i.i, align 4
  %prev3.i.i24.i.i = getelementptr inbounds %struct.list_head, ptr %60, i32 0, i32 1
  %65 = ptrtoint ptr %prev3.i.i24.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %62, ptr %prev3.i.i24.i.i, align 4
  %66 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %60, ptr %62, align 4
  %67 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %head.i, ptr %64, align 4
  store ptr %64, ptr %26, align 4
  %68 = ptrtoint ptr %desc_completed.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %desc_completed.i.i, ptr %desc_completed.i.i, align 4
  store ptr %desc_completed.i.i, ptr %prev2.i.i23.i.i, align 4
  br label %list_splice_tail_init.exit26.i.i

list_splice_tail_init.exit26.i.i:                 ; preds = %if.then.i25.i.i, %list_splice_tail_init.exit20.i.i.list_splice_tail_init.exit26.i.i_crit_edge
  %desc_terminated.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 8
  %69 = ptrtoint ptr %desc_terminated.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile ptr, ptr %desc_terminated.i.i, align 4
  %cmp.i.not.i27.i.i = icmp eq ptr %70, %desc_terminated.i.i
  br i1 %cmp.i.not.i27.i.i, label %list_splice_tail_init.exit26.i.i.vchan_get_all_descriptors.exit.i_crit_edge, label %if.then.i31.i.i

list_splice_tail_init.exit26.i.i.vchan_get_all_descriptors.exit.i_crit_edge: ; preds = %list_splice_tail_init.exit26.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_get_all_descriptors.exit.i

if.then.i31.i.i:                                  ; preds = %list_splice_tail_init.exit26.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %71 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %26, align 4
  %prev2.i.i29.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 8, i32 1
  %73 = ptrtoint ptr %prev2.i.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %prev2.i.i29.i.i, align 4
  %prev3.i.i30.i.i = getelementptr inbounds %struct.list_head, ptr %70, i32 0, i32 1
  %75 = ptrtoint ptr %prev3.i.i30.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %72, ptr %prev3.i.i30.i.i, align 4
  %76 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %70, ptr %72, align 4
  %77 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %head.i, ptr %74, align 4
  store ptr %74, ptr %26, align 4
  %78 = ptrtoint ptr %desc_terminated.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile ptr %desc_terminated.i.i, ptr %desc_terminated.i.i, align 4
  store ptr %desc_terminated.i.i, ptr %prev2.i.i29.i.i, align 4
  br label %vchan_get_all_descriptors.exit.i

vchan_get_all_descriptors.exit.i:                 ; preds = %if.then.i31.i.i, %list_splice_tail_init.exit26.i.i.vchan_get_all_descriptors.exit.i_crit_edge
  %79 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %.pn20.i = load ptr, ptr %head.i, align 4
  %cmp7.not21.i = icmp eq ptr %.pn20.i, %head.i
  br i1 %cmp7.not21.i, label %vchan_get_all_descriptors.exit.i.vchan_free_chan_resources.exit_crit_edge, label %vchan_get_all_descriptors.exit.i.for.body.i_crit_edge

vchan_get_all_descriptors.exit.i.for.body.i_crit_edge: ; preds = %vchan_get_all_descriptors.exit.i
  br label %for.body.i

vchan_get_all_descriptors.exit.i.vchan_free_chan_resources.exit_crit_edge: ; preds = %vchan_get_all_descriptors.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_free_chan_resources.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %vchan_get_all_descriptors.exit.i.for.body.i_crit_edge
  %.pn22.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn20.i, %vchan_get_all_descriptors.exit.i.for.body.i_crit_edge ]
  %flags.i.i = getelementptr i8, ptr %.pn22.i, i32 -104
  %80 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %81, -65
  store i32 %and.i.i, ptr %flags.i.i, align 4
  %82 = ptrtoint ptr %.pn22.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %.pn.i = load ptr, ptr %.pn22.i, align 4
  %cmp7.not.i = icmp eq ptr %.pn.i, %head.i
  br i1 %cmp7.not.i, label %for.body.i.vchan_free_chan_resources.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.vchan_free_chan_resources.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_free_chan_resources.exit

vchan_free_chan_resources.exit:                   ; preds = %for.body.i.vchan_free_chan_resources.exit_crit_edge, %vchan_get_all_descriptors.exit.i.vchan_free_chan_resources.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #9
  call void @vchan_dma_desc_free_list(ptr noundef %chan, ptr noundef nonnull %head.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %head.i) #9
  %config = getelementptr inbounds %struct.gchan, ptr %chan, i32 0, i32 12
  %83 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %config, align 4
  call void @kfree(ptr noundef %84) #9
  call void @_raw_write_lock_irq(ptr noundef %pm_lock) #9
  %85 = ptrtoint ptr %pm_state to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %pm_state, align 4
  call void @_raw_write_unlock_irq(ptr noundef %pm_lock) #9
  %configured = getelementptr %struct.gpii, ptr %1, i32 0, i32 1, i32 0, i32 11, i32 10
  %86 = ptrtoint ptr %configured to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %configured, align 4, !range !333
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool15.not = icmp eq i8 %87, 0
  br i1 %tobool15.not, label %for.cond, label %vchan_free_chan_resources.exit.exit_free_crit_edge

vchan_free_chan_resources.exit.exit_free_crit_edge: ; preds = %vchan_free_chan_resources.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_free

for.cond:                                         ; preds = %vchan_free_chan_resources.exit
  %configured.1 = getelementptr %struct.gpii, ptr %1, i32 0, i32 1, i32 1, i32 11, i32 10
  %88 = ptrtoint ptr %configured.1 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %configured.1, align 4, !range !333
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool15.not.1 = icmp eq i8 %89, 0
  br i1 %tobool15.not.1, label %for.cond.1, label %for.cond.exit_free_crit_edge

for.cond.exit_free_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_free

for.cond.1:                                       ; preds = %for.cond
  %pm_state18 = getelementptr inbounds %struct.gpii, ptr %1, i32 0, i32 13
  %90 = ptrtoint ptr %pm_state18 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %pm_state18, align 4
  call void @_raw_write_lock_irq(ptr noundef %pm_lock) #9
  %92 = ptrtoint ptr %pm_state18 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 4, ptr %pm_state18, align 4
  call void @_raw_write_unlock_irq(ptr noundef %pm_lock) #9
  %ev_task = getelementptr inbounds %struct.gpii, ptr %1, i32 0, i32 16
  call void @tasklet_kill(ptr noundef %ev_task) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %91)
  %cmp22 = icmp eq i32 %91, 3
  br i1 %cmp22, label %if.then23, label %if.end28.critedge

if.then23:                                        ; preds = %for.cond.1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gpi_send_cmd.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gpi_free_chan_resources, %do.end.i73)) #9
          to label %if.then8.i [label %do.end.i73], !srcloc !334

if.then8.i:                                       ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  %93 = ptrtoint ptr %gpi_dev.i69 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %gpi_dev.i69, align 4
  %dev.i72 = getelementptr inbounds %struct.gpi_dev, ptr %94, i32 0, i32 1
  %95 = ptrtoint ptr %dev.i72 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dev.i72, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gpi_send_cmd.__UNIQUE_ID_ddebug238, ptr noundef %96, ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.101, i32 noundef 2) #9
  br label %do.end.i73

do.end.i73:                                       ; preds = %if.then8.i, %if.then23
  %cmd_completion.i = getelementptr inbounds %struct.gpii, ptr %1, i32 0, i32 17
  %97 = ptrtoint ptr %cmd_completion.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 0, ptr %cmd_completion.i, align 4
  %gpi_cmd11.i = getelementptr inbounds %struct.gpii, ptr %1, i32 0, i32 18
  %98 = ptrtoint ptr %gpi_cmd11.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 10, ptr %gpi_cmd11.i, align 4
  %ev_cmd_reg.i = getelementptr inbounds %struct.gpii, ptr %1, i32 0, i32 8
  %99 = ptrtoint ptr %ev_cmd_reg.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %cond16.i = load ptr, ptr %ev_cmd_reg.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cond16.i, i32 10) #9, !srcloc !335
  %call122.i = call i32 @wait_for_completion_timeout(ptr noundef %cmd_completion.i, i32 noundef 25) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122.i)
  %tobool123.not.i = icmp eq i32 %call122.i, 0
  br i1 %tobool123.not.i, label %do.end127.i, label %do.end.i73.gpi_send_cmd.exit_crit_edge

do.end.i73.gpi_send_cmd.exit_crit_edge:           ; preds = %do.end.i73
  call void @__sanitizer_cov_trace_pc() #11
  br label %gpi_send_cmd.exit

do.end127.i:                                      ; preds = %do.end.i73
  call void @__sanitizer_cov_trace_pc() #11
  %100 = ptrtoint ptr %gpi_dev.i69 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %gpi_dev.i69, align 4
  %dev129.i = getelementptr inbounds %struct.gpi_dev, ptr %101, i32 0, i32 1
  %102 = ptrtoint ptr %dev129.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dev129.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %103, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.101, i32 noundef 2) #12
  br label %gpi_send_cmd.exit

gpi_send_cmd.exit:                                ; preds = %do.end127.i, %do.end.i73.gpi_send_cmd.exit_crit_edge
  %ev_ring.c = getelementptr inbounds %struct.gpii, ptr %1, i32 0, i32 15
  %104 = ptrtoint ptr %gpi_dev.i69 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %gpi_dev.i69, align 4
  %dev.i75 = getelementptr inbounds %struct.gpi_dev, ptr %105, i32 0, i32 1
  %106 = ptrtoint ptr %dev.i75 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dev.i75, align 4
  %alloc_size.i76 = getelementptr inbounds %struct.gpii, ptr %1, i32 0, i32 15, i32 1
  %108 = ptrtoint ptr %alloc_size.i76 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %alloc_size.i76, align 4
  %110 = ptrtoint ptr %ev_ring.c to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %ev_ring.c, align 4
  %dma_handle.i77 = getelementptr inbounds %struct.gpii, ptr %1, i32 0, i32 15, i32 3
  %112 = ptrtoint ptr %dma_handle.i77 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %dma_handle.i77, align 4
  call void @dma_free_attrs(ptr noundef %107, i32 noundef %109, ptr noundef %111, i32 noundef %113, i32 noundef 0) #9
  %114 = call ptr @memset(ptr %ev_ring.c, i32 0, i32 44)
  call fastcc void @gpi_disable_interrupts(ptr noundef %1)
  br label %if.end28

if.end28.critedge:                                ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #11
  %ev_ring.c68 = getelementptr inbounds %struct.gpii, ptr %1, i32 0, i32 15
  %115 = ptrtoint ptr %gpi_dev.i69 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %gpi_dev.i69, align 4
  %dev.i79 = getelementptr inbounds %struct.gpi_dev, ptr %116, i32 0, i32 1
  %117 = ptrtoint ptr %dev.i79 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %dev.i79, align 4
  %alloc_size.i80 = getelementptr inbounds %struct.gpii, ptr %1, i32 0, i32 15, i32 1
  %119 = ptrtoint ptr %alloc_size.i80 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %alloc_size.i80, align 4
  %121 = ptrtoint ptr %ev_ring.c68 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %ev_ring.c68, align 4
  %dma_handle.i81 = getelementptr inbounds %struct.gpii, ptr %1, i32 0, i32 15, i32 3
  %123 = ptrtoint ptr %dma_handle.i81 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %dma_handle.i81, align 4
  call void @dma_free_attrs(ptr noundef %118, i32 noundef %120, ptr noundef %122, i32 noundef %124, i32 noundef 0) #9
  %125 = call ptr @memset(ptr %ev_ring.c68, i32 0, i32 44)
  br label %if.end28

if.end28:                                         ; preds = %if.end28.critedge, %gpi_send_cmd.exit
  call void @_raw_write_lock_irq(ptr noundef %pm_lock) #9
  %126 = ptrtoint ptr %pm_state18 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 0, ptr %pm_state18, align 4
  call void @_raw_write_unlock_irq(ptr noundef %pm_lock) #9
  br label %exit_free

exit_free:                                        ; preds = %if.end28, %for.cond.exit_free_crit_edge, %vchan_free_chan_resources.exit.exit_free_crit_edge
  call void @mutex_unlock(ptr noundef %ctrl_lock) #9
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dma_cookie_status(ptr nocapture noundef readonly %chan, i32 noundef %cookie, ptr noundef writeonly %state) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %cookie1 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 2
  %0 = ptrtoint ptr %cookie1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cookie1, align 4
  %completed_cookie = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 3
  %2 = ptrtoint ptr %completed_cookie to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %completed_cookie, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !336
  %tobool.not = icmp eq ptr %state, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %state, align 4
  %used2 = getelementptr inbounds %struct.dma_tx_state, ptr %state, i32 0, i32 1
  %5 = ptrtoint ptr %used2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %1, ptr %used2, align 4
  %residue = getelementptr inbounds %struct.dma_tx_state, ptr %state, i32 0, i32 2
  %6 = ptrtoint ptr %residue to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %residue, align 4
  %in_flight_bytes = getelementptr inbounds %struct.dma_tx_state, ptr %state, i32 0, i32 3
  %7 = ptrtoint ptr %in_flight_bytes to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %in_flight_bytes, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp.not.i = icmp sgt i32 %3, %1
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %cookie)
  %cmp4.not.i = icmp sge i32 %3, %cookie
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %cookie)
  %cmp5.i = icmp slt i32 %1, %cookie
  br i1 %cmp.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  %or.cond.i = or i1 %cmp5.i, %cmp4.not.i
  br i1 %or.cond.i, label %if.then.i.dma_async_is_complete.exit_crit_edge, label %if.then.i.if.end8.i_crit_edge

if.then.i.if.end8.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

if.then.i.dma_async_is_complete.exit_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_async_is_complete.exit

if.else.i:                                        ; preds = %if.end
  %or.cond16.i = and i1 %cmp5.i, %cmp4.not.i
  br i1 %or.cond16.i, label %if.else.i.dma_async_is_complete.exit_crit_edge, label %if.else.i.if.end8.i_crit_edge

if.else.i.if.end8.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

if.else.i.dma_async_is_complete.exit_crit_edge:   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_async_is_complete.exit

if.end8.i:                                        ; preds = %if.else.i.if.end8.i_crit_edge, %if.then.i.if.end8.i_crit_edge
  br label %dma_async_is_complete.exit

dma_async_is_complete.exit:                       ; preds = %if.end8.i, %if.else.i.dma_async_is_complete.exit_crit_edge, %if.then.i.dma_async_is_complete.exit_crit_edge
  %retval.0.i = phi i32 [ 1, %if.end8.i ], [ 0, %if.then.i.dma_async_is_complete.exit_crit_edge ], [ 0, %if.else.i.dma_async_is_complete.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gpi_issue_pending(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %gpii1 = getelementptr inbounds %struct.gchan, ptr %chan, i32 0, i32 4
  %0 = ptrtoint ptr %gpii1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpii1, align 4
  %pm_lock = getelementptr inbounds %struct.gpii, ptr %1, i32 0, i32 14
  %call3 = tail call i32 @_raw_read_lock_irqsave(ptr noundef %pm_lock) #9
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %desc_submitted.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5
  %desc_issued.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6
  %2 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %desc_submitted.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %3, %desc_submitted.i
  br i1 %cmp.i.not.i.i, label %entry.vchan_issue_pending.exit_crit_edge, label %if.then.i.i

entry.vchan_issue_pending.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_issue_pending.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5, i32 1
  %6 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev2.i.i.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev3.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %3, ptr %5, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %desc_issued.i, ptr %7, align 4
  store ptr %7, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %desc_submitted.i, ptr %desc_submitted.i, align 4
  store ptr %desc_submitted.i, ptr %prev2.i.i.i, align 4
  br label %vchan_issue_pending.exit

vchan_issue_pending.exit:                         ; preds = %if.then.i.i, %entry.vchan_issue_pending.exit_crit_edge
  %12 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %desc_issued.i, align 4
  %cmp.i.i.not = icmp eq ptr %13, %desc_issued.i
  br i1 %cmp.i.i.not, label %if.end.thread, label %if.end

if.end.thread:                                    ; preds = %vchan_issue_pending.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call12) #9
  br label %cleanup

if.end:                                           ; preds = %vchan_issue_pending.exit
  %prev = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6, i32 1
  %14 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 -108
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call12) #9
  %tobool.not = icmp eq ptr %add.ptr, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %for.cond.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  %num_tre = getelementptr i8, ptr %15, i32 68
  %16 = ptrtoint ptr %num_tre to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_tre, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp3581.not = icmp eq i32 %17, 0
  br i1 %cmp3581.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %wp.i.i.i = getelementptr inbounds %struct.gchan, ptr %chan, i32 0, i32 11, i32 5
  %rp.i.i.i = getelementptr inbounds %struct.gchan, ptr %chan, i32 0, i32 11, i32 6
  %base.i.i.i = getelementptr inbounds %struct.gchan, ptr %chan, i32 0, i32 11, i32 4
  %el_size7.i.i.i = getelementptr inbounds %struct.gchan, ptr %chan, i32 0, i32 11, i32 8
  %len.i.i.i = getelementptr inbounds %struct.gchan, ptr %chan, i32 0, i32 11, i32 7
  %gpi_dev.i = getelementptr inbounds %struct.gpii, ptr %1, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %gpi_queue_xfer.exit.for.body_crit_edge, %for.body.lr.ph
  %i.082 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %gpi_queue_xfer.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.gpi_desc, ptr %add.ptr, i32 0, i32 4, i32 %i.082
  %18 = ptrtoint ptr %wp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %wp.i.i.i, align 4
  %20 = ptrtoint ptr %rp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rp.i.i.i, align 4
  %cmp.i.i.i = icmp ult ptr %19, %21
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %21 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %19 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %22 = ptrtoint ptr %el_size7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %el_size7.i.i.i, align 4
  %div.i.i.i = udiv i32 %sub.ptr.sub.i.i.i, %23
  %sub.i.i.i = add i32 %div.i.i.i, -1
  br label %gpi_ring_num_elements_avail.exit.i.i

if.else.i.i.i:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i.i.i, align 4
  %sub.ptr.lhs.cast4.i.i.i = ptrtoint ptr %21 to i32
  %sub.ptr.rhs.cast5.i.i.i = ptrtoint ptr %25 to i32
  %sub.ptr.sub6.i.i.i = sub i32 %sub.ptr.lhs.cast4.i.i.i, %sub.ptr.rhs.cast5.i.i.i
  %26 = ptrtoint ptr %el_size7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %el_size7.i.i.i, align 4
  %div8.i.i.i = udiv i32 %sub.ptr.sub6.i.i.i, %27
  %28 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %len.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %25, i32 %29
  %sub.ptr.lhs.cast11.i.i.i = ptrtoint ptr %add.ptr.i.i.i to i32
  %sub.ptr.rhs.cast12.i.i.i = ptrtoint ptr %19 to i32
  %sub.ptr.sub13.i.i.i = sub i32 %sub.ptr.lhs.cast11.i.i.i, %sub.ptr.rhs.cast12.i.i.i
  %div15.i.i.i = udiv i32 %sub.ptr.sub13.i.i.i, %27
  %sub16.i.i.i = add i32 %div8.i.i.i, -1
  %add.i.i.i = add i32 %sub16.i.i.i, %div15.i.i.i
  br label %gpi_ring_num_elements_avail.exit.i.i

gpi_ring_num_elements_avail.exit.i.i:             ; preds = %if.else.i.i.i, %if.then.i.i.i
  %elements.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i ], [ %add.i.i.i, %if.else.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %elements.0.i.i.i)
  %cmp.i.i77 = icmp slt i32 %elements.0.i.i.i, 1
  br i1 %cmp.i.i77, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %gpi_ring_num_elements_avail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %gpi_dev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %gpi_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.gpi_dev, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.112) #12
  br label %gpi_queue_xfer.exit

if.end.i:                                         ; preds = %gpi_ring_num_elements_avail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %el_size7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %el_size7.i.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 %35
  %36 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base.i.i.i, align 4
  %38 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %len.i.i.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %37, i32 %39
  %cmp5.not.i.i = icmp ult ptr %add.ptr.i.i, %add.ptr4.i.i
  %spec.store.select.i.i = select i1 %cmp5.not.i.i, ptr %add.ptr.i.i, ptr %37
  %40 = ptrtoint ptr %wp.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %spec.store.select.i.i, ptr %wp.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !337
  %41 = call ptr @memcpy(ptr %19, ptr %arrayidx, i32 16)
  br label %gpi_queue_xfer.exit

gpi_queue_xfer.exit:                              ; preds = %if.end.i, %do.end.i
  %inc = add nuw i32 %i.082, 1
  %42 = ptrtoint ptr %num_tre to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %num_tre, align 4
  %cmp35 = icmp ult i32 %inc, %43
  br i1 %cmp35, label %gpi_queue_xfer.exit.for.body_crit_edge, label %gpi_queue_xfer.exit.for.end_crit_edge

gpi_queue_xfer.exit.for.end_crit_edge:            ; preds = %gpi_queue_xfer.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

gpi_queue_xfer.exit.for.body_crit_edge:           ; preds = %gpi_queue_xfer.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %gpi_queue_xfer.exit.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %wp38 = getelementptr inbounds %struct.gchan, ptr %chan, i32 0, i32 11, i32 5
  %44 = ptrtoint ptr %wp38 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %wp38, align 4
  %db = getelementptr i8, ptr %15, i32 12
  %46 = ptrtoint ptr %db to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %45, ptr %db, align 4
  %phys_addr.i.i = getelementptr inbounds %struct.gchan, ptr %chan, i32 0, i32 11, i32 2
  %47 = ptrtoint ptr %phys_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %phys_addr.i.i, align 4
  %base.i.i78 = getelementptr inbounds %struct.gchan, ptr %chan, i32 0, i32 11, i32 4
  %49 = ptrtoint ptr %base.i.i78 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base.i.i78, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %45 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %50 to i32
  %sub.ptr.sub.i.i = add i32 %48, %sub.ptr.lhs.cast.i.i
  %add.i.i = sub i32 %sub.ptr.sub.i.i, %sub.ptr.rhs.cast.i.i
  %ch_cntxt_db_reg.i = getelementptr inbounds %struct.gchan, ptr %chan, i32 0, i32 8
  %51 = ptrtoint ptr %ch_cntxt_db_reg.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ch_cntxt_db_reg.i, align 4
  %53 = tail call i32 @llvm.bswap.i32(i32 %add.i.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %53) #9, !srcloc !335
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end.cleanup_crit_edge, %if.end.thread
  tail call void @_raw_read_unlock_irqrestore(ptr noundef %pm_lock, i32 noundef %call3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @gpi_prep_slave_sg(ptr noundef %chan, ptr nocapture noundef readonly %sgl, i32 noundef %sg_len, i32 noundef %direction, i32 noundef %flags, ptr nocapture noundef readnone %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %gpii1 = getelementptr inbounds %struct.gchan, ptr %chan, i32 0, i32 4
  %0 = ptrtoint ptr %gpii1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpii1, align 4
  %gpi_dev = getelementptr inbounds %struct.gpii, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %gpi_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpi_dev, align 4
  %dev2 = getelementptr inbounds %struct.gpi_dev, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev2, align 4
  %ieob_set = getelementptr inbounds %struct.gpii, ptr %1, i32 0, i32 20
  %6 = ptrtoint ptr %ieob_set to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %ieob_set, align 4
  %7 = add i32 %direction, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %8 = icmp ult i32 %7, 2
  br i1 %8, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.114, i32 noundef %direction) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sg_len)
  %cmp = icmp ugt i32 %sg_len, 1
  br i1 %cmp, label %do.end10, label %if.end11

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.117, i32 noundef %sg_len) #12
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %config = getelementptr inbounds %struct.gchan, ptr %chan, i32 0, i32 12
  %11 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %config, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %conv = trunc i32 %14 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv)
  %tobool.not = icmp eq i8 %conv, 0
  %spec.select = select i1 %tobool.not, i32 2, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %direction)
  %cmp14 = icmp eq i32 %direction, 2
  %nr_tre.1 = select i1 %cmp14, i32 1, i32 %spec.select
  %wp.i = getelementptr inbounds %struct.gchan, ptr %chan, i32 0, i32 11, i32 5
  %15 = ptrtoint ptr %wp.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %wp.i, align 4
  %rp.i = getelementptr inbounds %struct.gchan, ptr %chan, i32 0, i32 11, i32 6
  %17 = ptrtoint ptr %rp.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rp.i, align 4
  %cmp.i = icmp ult ptr %16, %18
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %sub.ptr.lhs.cast.i = ptrtoint ptr %18 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %16 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %el_size.i = getelementptr inbounds %struct.gchan, ptr %chan, i32 0, i32 11, i32 8
  %19 = ptrtoint ptr %el_size.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %el_size.i, align 4
  %div.i = udiv i32 %sub.ptr.sub.i, %20
  %sub.i = add i32 %div.i, -1
  br label %gpi_ring_num_elements_avail.exit

if.else.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %base.i = getelementptr inbounds %struct.gchan, ptr %chan, i32 0, i32 11, i32 4
  %21 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base.i, align 4
  %sub.ptr.lhs.cast4.i = ptrtoint ptr %18 to i32
  %sub.ptr.rhs.cast5.i = ptrtoint ptr %22 to i32
  %sub.ptr.sub6.i = sub i32 %sub.ptr.lhs.cast4.i, %sub.ptr.rhs.cast5.i
  %el_size7.i = getelementptr inbounds %struct.gchan, ptr %chan, i32 0, i32 11, i32 8
  %23 = ptrtoint ptr %el_size7.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %el_size7.i, align 4
  %div8.i = udiv i32 %sub.ptr.sub6.i, %24
  %len.i = getelementptr inbounds %struct.gchan, ptr %chan, i32 0, i32 11, i32 7
  %25 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len.i, align 4
  %add.ptr.i = getelementptr i8, ptr %22, i32 %26
  %sub.ptr.lhs.cast11.i = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.rhs.cast12.i = ptrtoint ptr %16 to i32
  %sub.ptr.sub13.i = sub i32 %sub.ptr.lhs.cast11.i, %sub.ptr.rhs.cast12.i
  %div15.i = udiv i32 %sub.ptr.sub13.i, %24
  %sub16.i = add i32 %div8.i, -1
  %add.i = add i32 %sub16.i, %div15.i
  br label %gpi_ring_num_elements_avail.exit

gpi_ring_num_elements_avail.exit:                 ; preds = %if.else.i, %if.then.i
  %elements.0.i = phi i32 [ %sub.i, %if.then.i ], [ %add.i, %if.else.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %elements.0.i, i32 %nr_tre.1)
  %cmp19 = icmp ult i32 %elements.0.i, %nr_tre.1
  br i1 %cmp19, label %do.end24, label %if.end25

do.end24:                                         ; preds = %gpi_ring_num_elements_avail.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.120, i32 noundef %elements.0.i, i32 noundef %nr_tre.1) #12
  br label %cleanup

if.end25:                                         ; preds = %gpi_ring_num_elements_avail.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %27 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %27, i32 noundef 2304, i32 noundef 180) #13
  %tobool27.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool27.not, label %if.end25.cleanup_crit_edge, label %if.end29

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end29:                                         ; preds = %if.end25
  %protocol = getelementptr inbounds %struct.gchan, ptr %chan, i32 0, i32 3
  %28 = ptrtoint ptr %protocol to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %protocol, align 4
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values)
  switch i32 %29, label %do.end42 [
    i32 1, label %if.then32
    i32 3, label %if.then37
  ]

if.then32:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  %call33 = tail call fastcc i32 @gpi_create_spi_tre(ptr noundef %chan, ptr noundef nonnull %call7.i.i, ptr noundef %sgl, i32 noundef %direction)
  br label %if.end45

if.then37:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  %call38 = tail call fastcc i32 @gpi_create_i2c_tre(ptr noundef %chan, ptr noundef nonnull %call7.i.i, ptr noundef %sgl)
  br label %if.end45

do.end42:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.123, i32 noundef %29) #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

if.end45:                                         ; preds = %if.then37, %if.then32
  %i.0 = phi i32 [ %call33, %if.then32 ], [ %call38, %if.then37 ]
  %gchan46 = getelementptr inbounds %struct.gpi_desc, ptr %call7.i.i, i32 0, i32 3
  %31 = ptrtoint ptr %gchan46 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %chan, ptr %gchan46, align 4
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sgl, i32 0, i32 4
  %32 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dma_length, align 4
  %len = getelementptr inbounds %struct.gpi_desc, ptr %call7.i.i, i32 0, i32 1
  %34 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %len, align 4
  %num_tre = getelementptr inbounds %struct.gpi_desc, ptr %call7.i.i, i32 0, i32 5
  %35 = ptrtoint ptr %num_tre to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %i.0, ptr %num_tre, align 8
  tail call void @dma_async_tx_descriptor_init(ptr noundef nonnull %call7.i.i, ptr noundef %chan) #9
  %flags2.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i, i32 0, i32 1
  %36 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %flags, ptr %flags2.i, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i, i32 0, i32 4
  %37 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @vchan_tx_submit, ptr %tx_submit.i, align 8
  %desc_free.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i, i32 0, i32 5
  %38 = ptrtoint ptr %desc_free.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @vchan_tx_desc_free, ptr %desc_free.i, align 4
  %tx_result.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i, i32 0, i32 1
  %39 = ptrtoint ptr %tx_result.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %tx_result.i, align 4
  %residue.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i, i32 0, i32 1, i32 1
  %40 = ptrtoint ptr %residue.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %residue.i, align 8
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call7.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %node.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i, i32 0, i32 2
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4, i32 1
  %41 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %42, ptr noundef %desc_allocated.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end45.vchan_tx_prep.exit_crit_edge

if.end45.vchan_tx_prep.exit_crit_edge:            ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_tx_prep.exit

if.end.i.i.i:                                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %node.i, ptr %prev.i.i, align 4
  %44 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %desc_allocated.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i, i32 0, i32 2, i32 1
  %45 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %42, ptr %prev3.i.i.i, align 8
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %node.i, ptr %42, align 4
  br label %vchan_tx_prep.exit

vchan_tx_prep.exit:                               ; preds = %if.end.i.i.i, %if.end45.vchan_tx_prep.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call7.i) #9
  br label %cleanup

cleanup:                                          ; preds = %vchan_tx_prep.exit, %do.end42, %if.end25.cleanup_crit_edge, %do.end24, %do.end10, %do.end
  %retval.0 = phi ptr [ null, %do.end10 ], [ null, %do.end24 ], [ %call7.i.i, %vchan_tx_prep.exit ], [ null, %do.end42 ], [ null, %do.end ], [ null, %if.end25.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpi_peripheral_config(ptr nocapture noundef %chan, ptr nocapture noundef readonly %config) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %peripheral_config = getelementptr inbounds %struct.dma_slave_config, ptr %config, i32 0, i32 10
  %0 = ptrtoint ptr %peripheral_config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %peripheral_config, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %config1 = getelementptr inbounds %struct.gchan, ptr %chan, i32 0, i32 12
  %2 = ptrtoint ptr %config1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config1, align 4
  %peripheral_size = getelementptr inbounds %struct.dma_slave_config, ptr %config, i32 0, i32 11
  %4 = ptrtoint ptr %peripheral_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %peripheral_size, align 4
  %call2 = tail call noalias ptr @krealloc(ptr noundef %3, i32 noundef %5, i32 noundef 2048) #14
  %6 = ptrtoint ptr %config1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call2, ptr %config1, align 4
  %tobool5.not = icmp eq ptr %call2, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %peripheral_config to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %peripheral_config, align 4
  %9 = ptrtoint ptr %peripheral_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %peripheral_size, align 4
  %11 = call ptr @memcpy(ptr %call2, ptr %8, i32 %10)
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpi_terminate_all(ptr nocapture noundef readonly %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %gpii1 = getelementptr inbounds %struct.gchan, ptr %chan, i32 0, i32 4
  %0 = ptrtoint ptr %gpii1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpii1, align 4
  %ctrl_lock = getelementptr inbounds %struct.gpii, ptr %1, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %ctrl_lock, i32 noundef 0) #9
  %protocol = getelementptr inbounds %struct.gchan, ptr %chan, i32 0, i32 3
  %2 = ptrtoint ptr %protocol to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %protocol, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %cond.true, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %chid = getelementptr inbounds %struct.gchan, ptr %chan, i32 0, i32 1
  %4 = ptrtoint ptr %chid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chid, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %5, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  %add = add i32 %cond, 1
  %spec.select = select i1 %cmp, i32 %add, i32 2
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %spec.select)
  %cmp894 = icmp slt i32 %cond, %spec.select
  br i1 %cmp894, label %for.body.lr.ph, label %cond.end.terminate_exit_crit_edge

cond.end.terminate_exit_crit_edge:                ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %terminate_exit

for.body.lr.ph:                                   ; preds = %cond.end
  %pm_lock = getelementptr inbounds %struct.gpii, ptr %1, i32 0, i32 14
  br label %for.body

for.cond12.preheader:                             ; preds = %gpi_stop_chan.exit
  br i1 %cmp894, label %for.cond12.preheader.for.body14_crit_edge, label %for.cond12.preheader.terminate_exit_crit_edge

for.cond12.preheader.terminate_exit_crit_edge:    ; preds = %for.cond12.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %terminate_exit

for.cond12.preheader.for.body14_crit_edge:        ; preds = %for.cond12.preheader
  br label %for.body14

for.body:                                         ; preds = %gpi_stop_chan.exit.for.body_crit_edge, %for.body.lr.ph
  %i.095 = phi i32 [ %cond, %for.body.lr.ph ], [ %inc, %gpi_stop_chan.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.gpii, ptr %1, i32 0, i32 1, i32 %i.095
  tail call void @_raw_write_lock_irq(ptr noundef %pm_lock) #9
  %pm_state = getelementptr %struct.gpii, ptr %1, i32 0, i32 1, i32 %i.095, i32 6
  %6 = ptrtoint ptr %pm_state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4, ptr %pm_state, align 4
  tail call void @_raw_write_unlock_irq(ptr noundef %pm_lock) #9
  %gpii1.i = getelementptr %struct.gpii, ptr %1, i32 0, i32 1, i32 %i.095, i32 4
  %7 = ptrtoint ptr %gpii1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %gpii1.i, align 4
  %call.i = tail call fastcc i32 @gpi_send_cmd(ptr noundef %8, ptr noundef %arrayidx, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.body.gpi_stop_chan.exit_crit_edge, label %do.end.i

for.body.gpi_stop_chan.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %gpi_stop_chan.exit

do.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %gpi_dev.i = getelementptr inbounds %struct.gpii, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %gpi_dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %gpi_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.gpi_dev, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.93, i32 noundef %call.i) #12
  br label %gpi_stop_chan.exit

gpi_stop_chan.exit:                               ; preds = %do.end.i, %for.body.gpi_stop_chan.exit_crit_edge
  %inc = add i32 %i.095, 1
  %exitcond.not = icmp eq i32 %inc, %spec.select
  br i1 %exitcond.not, label %for.cond12.preheader, label %gpi_stop_chan.exit.for.body_crit_edge

gpi_stop_chan.exit.for.body_crit_edge:            ; preds = %gpi_stop_chan.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.cond12:                                       ; preds = %if.end
  %inc28 = add i32 %i.197, 1
  %exitcond107.not = icmp eq i32 %inc28, %spec.select
  br i1 %exitcond107.not, label %for.cond30.preheader, label %for.cond12.for.body14_crit_edge

for.cond12.for.body14_crit_edge:                  ; preds = %for.cond12
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body14

for.cond30.preheader:                             ; preds = %for.cond12
  br i1 %cmp894, label %for.cond30.preheader.for.body32_crit_edge, label %for.cond30.preheader.terminate_exit_crit_edge

for.cond30.preheader.terminate_exit_crit_edge:    ; preds = %for.cond30.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %terminate_exit

for.cond30.preheader.for.body32_crit_edge:        ; preds = %for.cond30.preheader
  br label %for.body32

for.body14:                                       ; preds = %for.cond12.for.body14_crit_edge, %for.cond12.preheader.for.body14_crit_edge
  %i.197 = phi i32 [ %inc28, %for.cond12.for.body14_crit_edge ], [ %cond, %for.cond12.preheader.for.body14_crit_edge ]
  %arrayidx16 = getelementptr %struct.gpii, ptr %1, i32 0, i32 1, i32 %i.197
  %call17 = tail call fastcc i32 @gpi_reset_chan(ptr noundef %arrayidx16, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool.not = icmp eq i32 %call17, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #11
  %gpi_dev = getelementptr inbounds %struct.gpii, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %gpi_dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %gpi_dev, align 4
  %dev = getelementptr inbounds %struct.gpi_dev, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.128, i32 noundef %call17) #12
  br label %terminate_exit

if.end:                                           ; preds = %for.body14
  %call18 = tail call fastcc i32 @gpi_alloc_chan(ptr noundef %arrayidx16, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %for.cond12, label %do.end23

do.end23:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %gpi_dev24 = getelementptr inbounds %struct.gpii, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %gpi_dev24 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %gpi_dev24, align 4
  %dev25 = getelementptr inbounds %struct.gpi_dev, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev25, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.131, i32 noundef %call18) #12
  br label %terminate_exit

for.body32:                                       ; preds = %for.inc44.for.body32_crit_edge, %for.cond30.preheader.for.body32_crit_edge
  %i.2100 = phi i32 [ %inc45, %for.inc44.for.body32_crit_edge ], [ %cond, %for.cond30.preheader.for.body32_crit_edge ]
  %arrayidx34 = getelementptr %struct.gpii, ptr %1, i32 0, i32 1, i32 %i.2100
  %gpii1.i84 = getelementptr %struct.gpii, ptr %1, i32 0, i32 1, i32 %i.2100, i32 4
  %21 = ptrtoint ptr %gpii1.i84 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %gpii1.i84, align 4
  %call.i85 = tail call fastcc i32 @gpi_send_cmd(ptr noundef %22, ptr noundef %arrayidx34, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i85)
  %tobool.not.i86 = icmp eq i32 %call.i85, 0
  br i1 %tobool.not.i86, label %for.inc44, label %do.end40

do.end40:                                         ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #11
  %gpi_dev.i87 = getelementptr inbounds %struct.gpii, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %gpi_dev.i87 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %gpi_dev.i87, align 4
  %dev.i88 = getelementptr inbounds %struct.gpi_dev, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %dev.i88 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i88, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.92, i32 noundef %call.i85) #12
  %gpi_dev41 = getelementptr inbounds %struct.gpii, ptr %1, i32 0, i32 2
  %27 = ptrtoint ptr %gpi_dev41 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %gpi_dev41, align 4
  %dev42 = getelementptr inbounds %struct.gpi_dev, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %dev42 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev42, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.134, i32 noundef %call.i85) #12
  br label %terminate_exit

for.inc44:                                        ; preds = %for.body32
  %pm_lock.i = getelementptr inbounds %struct.gpii, ptr %22, i32 0, i32 14
  tail call void @_raw_write_lock_irq(ptr noundef %pm_lock.i) #9
  %pm_state.i = getelementptr %struct.gpii, ptr %1, i32 0, i32 1, i32 %i.2100, i32 6
  %31 = ptrtoint ptr %pm_state.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 3, ptr %pm_state.i, align 4
  tail call void @_raw_write_unlock_irq(ptr noundef %pm_lock.i) #9
  %inc45 = add i32 %i.2100, 1
  %exitcond108.not = icmp eq i32 %inc45, %spec.select
  br i1 %exitcond108.not, label %for.inc44.terminate_exit_crit_edge, label %for.inc44.for.body32_crit_edge

for.inc44.for.body32_crit_edge:                   ; preds = %for.inc44
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body32

for.inc44.terminate_exit_crit_edge:               ; preds = %for.inc44
  call void @__sanitizer_cov_trace_pc() #11
  br label %terminate_exit

terminate_exit:                                   ; preds = %for.inc44.terminate_exit_crit_edge, %do.end40, %do.end23, %do.end, %for.cond30.preheader.terminate_exit_crit_edge, %for.cond12.preheader.terminate_exit_crit_edge, %cond.end.terminate_exit_crit_edge
  %ret.3 = phi i32 [ %call17, %do.end ], [ %call18, %do.end23 ], [ %call.i85, %do.end40 ], [ 0, %for.cond30.preheader.terminate_exit_crit_edge ], [ %call.i, %for.cond12.preheader.terminate_exit_crit_edge ], [ 0, %cond.end.terminate_exit_crit_edge ], [ 0, %for.inc44.terminate_exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %ctrl_lock) #9
  ret i32 %ret.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpi_pause(ptr nocapture noundef readonly %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %gpii1 = getelementptr inbounds %struct.gchan, ptr %chan, i32 0, i32 4
  %0 = ptrtoint ptr %gpii1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpii1, align 4
  %ctrl_lock = getelementptr inbounds %struct.gpii, ptr %1, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %ctrl_lock, i32 noundef 0) #9
  %pm_state = getelementptr inbounds %struct.gpii, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %pm_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pm_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %3)
  %cmp = icmp eq i32 %3, 5
  br i1 %cmp, label %do.body, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %arrayidx = getelementptr %struct.gpii, ptr %1, i32 0, i32 1, i32 0
  %gpii1.i = getelementptr %struct.gpii, ptr %1, i32 0, i32 1, i32 0, i32 4
  %4 = ptrtoint ptr %gpii1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gpii1.i, align 4
  %call.i = tail call fastcc i32 @gpi_send_cmd(ptr noundef %5, ptr noundef %arrayidx, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.cond, label %for.body.preheader.if.then13_crit_edge

for.body.preheader.if.then13_crit_edge:           ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gpi_pause.__UNIQUE_ID_ddebug334, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gpi_pause, %cleanup)) #9
          to label %if.then6 [label %cleanup], !srcloc !334

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %gpi_dev = getelementptr inbounds %struct.gpii, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %gpi_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gpi_dev, align 4
  %dev = getelementptr inbounds %struct.gpi_dev, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gpi_pause.__UNIQUE_ID_ddebug334, ptr noundef %9, ptr noundef nonnull @.str.137) #9
  br label %cleanup

for.cond:                                         ; preds = %for.body.preheader
  %arrayidx.1 = getelementptr %struct.gpii, ptr %1, i32 0, i32 1, i32 1
  %gpii1.i.1 = getelementptr %struct.gpii, ptr %1, i32 0, i32 1, i32 1, i32 4
  %10 = ptrtoint ptr %gpii1.i.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %gpii1.i.1, align 4
  %call.i.1 = tail call fastcc i32 @gpi_send_cmd(ptr noundef %11, ptr noundef %arrayidx.1, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %tobool.not.i.1 = icmp eq i32 %call.i.1, 0
  br i1 %tobool.not.i.1, label %for.cond.1, label %for.cond.if.then13_crit_edge

for.cond.if.then13_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13

for.cond.1:                                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  %irq = getelementptr inbounds %struct.gpii, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %13) #9
  %ev_task = getelementptr inbounds %struct.gpii, ptr %1, i32 0, i32 16
  tail call void @tasklet_kill(ptr noundef %ev_task) #9
  %pm_lock = getelementptr inbounds %struct.gpii, ptr %1, i32 0, i32 14
  tail call void @_raw_write_lock_irq(ptr noundef %pm_lock) #9
  %14 = ptrtoint ptr %pm_state to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 5, ptr %pm_state, align 4
  tail call void @_raw_write_unlock_irq(ptr noundef %pm_lock) #9
  br label %cleanup

if.then13:                                        ; preds = %for.cond.if.then13_crit_edge, %for.body.preheader.if.then13_crit_edge
  %.lcssa = phi ptr [ %5, %for.body.preheader.if.then13_crit_edge ], [ %11, %for.cond.if.then13_crit_edge ]
  %call.i.lcssa = phi i32 [ %call.i, %for.body.preheader.if.then13_crit_edge ], [ %call.i.1, %for.cond.if.then13_crit_edge ]
  %gpi_dev.i = getelementptr inbounds %struct.gpii, ptr %.lcssa, i32 0, i32 2
  %15 = ptrtoint ptr %gpi_dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %gpi_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.gpi_dev, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.93, i32 noundef %call.i.lcssa) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %for.cond.1, %if.then6, %do.body
  %retval.0 = phi i32 [ %call.i.lcssa, %if.then13 ], [ 0, %for.cond.1 ], [ 0, %do.body ], [ 0, %if.then6 ]
  tail call void @mutex_unlock(ptr noundef %ctrl_lock) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpi_resume(ptr nocapture noundef readonly %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %gpii1 = getelementptr inbounds %struct.gchan, ptr %chan, i32 0, i32 4
  %0 = ptrtoint ptr %gpii1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpii1, align 4
  %ctrl_lock = getelementptr inbounds %struct.gpii, ptr %1, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %ctrl_lock, i32 noundef 0) #9
  %pm_state = getelementptr inbounds %struct.gpii, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %pm_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pm_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp = icmp eq i32 %3, 3
  br i1 %cmp, label %do.body, label %if.end8

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gpi_resume.__UNIQUE_ID_ddebug335, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gpi_resume, %cleanup)) #9
          to label %if.then6 [label %cleanup], !srcloc !334

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %gpi_dev = getelementptr inbounds %struct.gpii, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %gpi_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gpi_dev, align 4
  %dev = getelementptr inbounds %struct.gpi_dev, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gpi_resume.__UNIQUE_ID_ddebug335, ptr noundef %7, ptr noundef nonnull @.str.139) #9
  br label %cleanup

if.end8:                                          ; preds = %entry
  %irq = getelementptr inbounds %struct.gpii, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %9) #9
  %arrayidx = getelementptr %struct.gpii, ptr %1, i32 0, i32 1, i32 0
  %call11 = tail call fastcc i32 @gpi_send_cmd(ptr noundef %1, ptr noundef %arrayidx, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %for.cond, label %if.end8.do.end16_crit_edge

if.end8.do.end16_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end16

for.cond:                                         ; preds = %if.end8
  %arrayidx.1 = getelementptr %struct.gpii, ptr %1, i32 0, i32 1, i32 1
  %call11.1 = tail call fastcc i32 @gpi_send_cmd(ptr noundef %1, ptr noundef %arrayidx.1, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.1)
  %tobool12.not.1 = icmp eq i32 %call11.1, 0
  br i1 %tobool12.not.1, label %for.cond.1, label %for.cond.do.end16_crit_edge

for.cond.do.end16_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end16

for.cond.1:                                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  %pm_lock = getelementptr inbounds %struct.gpii, ptr %1, i32 0, i32 14
  tail call void @_raw_write_lock_irq(ptr noundef %pm_lock) #9
  %10 = ptrtoint ptr %pm_state to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 3, ptr %pm_state, align 4
  tail call void @_raw_write_unlock_irq(ptr noundef %pm_lock) #9
  br label %cleanup

do.end16:                                         ; preds = %for.cond.do.end16_crit_edge, %if.end8.do.end16_crit_edge
  %call11.lcssa = phi i32 [ %call11, %if.end8.do.end16_crit_edge ], [ %call11.1, %for.cond.do.end16_crit_edge ]
  %gpi_dev17 = getelementptr inbounds %struct.gpii, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %gpi_dev17 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %gpi_dev17, align 4
  %dev18 = getelementptr inbounds %struct.gpi_dev, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev18, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.140, i32 noundef %call11.lcssa) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end16, %for.cond.1, %if.then6, %do.body
  %retval.0 = phi i32 [ %call11.lcssa, %do.end16 ], [ 0, %for.cond.1 ], [ 0, %do.body ], [ 0, %if.then6 ]
  tail call void @mutex_unlock(ptr noundef %ctrl_lock) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_async_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_dma_controller_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @gpi_of_dma_xlate(ptr nocapture noundef readonly %args, ptr nocapture noundef readonly %of_dma) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %of_dma_data = getelementptr inbounds %struct.of_dma, ptr %of_dma, i32 0, i32 5
  %0 = ptrtoint ptr %of_dma_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_dma_data, align 4
  %args_count = getelementptr inbounds %struct.of_phandle_args, ptr %args, i32 0, i32 1
  %2 = ptrtoint ptr %args_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %args_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp = icmp slt i32 %3, 3
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.gpi_dev, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.141, i32 noundef %3) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %args2 = getelementptr inbounds %struct.of_phandle_args, ptr %args, i32 0, i32 2
  %6 = ptrtoint ptr %args2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %args2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp3 = icmp ugt i32 %7, 1
  br i1 %cmp3, label %do.end7, label %if.end9

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev8 = getelementptr inbounds %struct.gpi_dev, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.144, i32 noundef %7) #12
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %arrayidx11 = getelementptr %struct.of_phandle_args, ptr %args, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx11, align 4
  %max_gpii.i = getelementptr inbounds %struct.gpi_dev, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %max_gpii.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_gpii.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp80.not.i = icmp eq i32 %13, 0
  br i1 %cmp80.not.i, label %if.end9.do.end16_crit_edge, label %for.body.lr.ph.i

if.end9.do.end16_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end16

for.body.lr.ph.i:                                 ; preds = %if.end9
  %gpii_mask.i = getelementptr inbounds %struct.gpi_dev, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %gpii_mask.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %gpii_mask.i, align 4
  %gpiis.i = getelementptr inbounds %struct.gpi_dev, ptr %1, i32 0, i32 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %gpii.081.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %shl.i = shl nuw i32 1, %gpii.081.i
  %and.i = and i32 %shl.i, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %16 = ptrtoint ptr %gpiis.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %gpiis.i, align 4
  %gchan.i = getelementptr %struct.gpii, ptr %17, i32 %gpii.081.i, i32 1
  %client_count.i = getelementptr %struct.gpii, ptr %17, i32 %gpii.081.i, i32 1, i32 1, i32 0, i32 0, i32 10
  %18 = ptrtoint ptr %client_count.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %client_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool6.not.i = icmp eq i32 %19, 0
  br i1 %tobool6.not.i, label %if.end.i.if.end10.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %seid7.i = getelementptr %struct.gpii, ptr %17, i32 %gpii.081.i, i32 1, i32 1, i32 2
  %20 = ptrtoint ptr %seid7.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %seid7.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %11)
  %cmp8.i = icmp eq i32 %21, %11
  br i1 %cmp8.i, label %land.lhs.true.i.gpi_find_avail_gpii.exit_crit_edge, label %land.lhs.true.i.if.end10.i_crit_edge

land.lhs.true.i.if.end10.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i

land.lhs.true.i.gpi_find_avail_gpii.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gpi_find_avail_gpii.exit

if.end10.i:                                       ; preds = %land.lhs.true.i.if.end10.i_crit_edge, %if.end.i.if.end10.i_crit_edge
  %client_count13.i = getelementptr inbounds %struct.dma_chan, ptr %gchan.i, i32 0, i32 10
  %22 = ptrtoint ptr %client_count13.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %client_count13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool14.not.i = icmp eq i32 %23, 0
  br i1 %tobool14.not.i, label %if.end10.i.for.inc.i_crit_edge, label %land.lhs.true15.i

if.end10.i.for.inc.i_crit_edge:                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

land.lhs.true15.i:                                ; preds = %if.end10.i
  %seid16.i = getelementptr inbounds %struct.gchan, ptr %gchan.i, i32 0, i32 2
  %24 = ptrtoint ptr %seid16.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %seid16.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %11)
  %cmp17.i = icmp eq i32 %25, %11
  br i1 %cmp17.i, label %land.lhs.true15.i.gpi_find_avail_gpii.exit_crit_edge, label %land.lhs.true15.i.for.inc.i_crit_edge

land.lhs.true15.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

land.lhs.true15.i.gpi_find_avail_gpii.exit_crit_edge: ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gpi_find_avail_gpii.exit

for.inc.i:                                        ; preds = %land.lhs.true15.i.for.inc.i_crit_edge, %if.end10.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %gpii.081.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %13
  br i1 %exitcond.not.i, label %for.inc.i.for.body23.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.for.body23.i_crit_edge:                 ; preds = %for.inc.i
  br label %for.body23.i

for.body23.i:                                     ; preds = %for.inc48.i.for.body23.i_crit_edge, %for.inc.i.for.body23.i_crit_edge
  %gpii.184.i = phi i32 [ %inc49.i, %for.inc48.i.for.body23.i_crit_edge ], [ 0, %for.inc.i.for.body23.i_crit_edge ]
  %shl24.i = shl nuw i32 1, %gpii.184.i
  %and26.i = and i32 %shl24.i, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  br i1 %tobool27.not.i, label %for.body23.i.for.inc48.i_crit_edge, label %if.end29.i

for.body23.i.for.inc48.i_crit_edge:               ; preds = %for.body23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc48.i

if.end29.i:                                       ; preds = %for.body23.i
  %26 = ptrtoint ptr %gpiis.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %gpiis.i, align 4
  %client_count40.i = getelementptr %struct.gpii, ptr %27, i32 %gpii.184.i, i32 1, i32 0, i32 0, i32 0, i32 10
  %28 = ptrtoint ptr %client_count40.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %client_count40.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool41.not.i = icmp eq i32 %29, 0
  br i1 %tobool41.not.i, label %lor.lhs.false.i, label %if.end29.i.for.inc48.i_crit_edge

if.end29.i.for.inc48.i_crit_edge:                 ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc48.i

lor.lhs.false.i:                                  ; preds = %if.end29.i
  %client_count44.i = getelementptr %struct.gpii, ptr %27, i32 %gpii.184.i, i32 1, i32 1, i32 0, i32 0, i32 10
  %30 = ptrtoint ptr %client_count44.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %client_count44.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool45.not.i = icmp eq i32 %31, 0
  br i1 %tobool45.not.i, label %lor.lhs.false.i.gpi_find_avail_gpii.exit_crit_edge, label %lor.lhs.false.i.for.inc48.i_crit_edge

lor.lhs.false.i.for.inc48.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc48.i

lor.lhs.false.i.gpi_find_avail_gpii.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gpi_find_avail_gpii.exit

for.inc48.i:                                      ; preds = %lor.lhs.false.i.for.inc48.i_crit_edge, %if.end29.i.for.inc48.i_crit_edge, %for.body23.i.for.inc48.i_crit_edge
  %inc49.i = add nuw i32 %gpii.184.i, 1
  %exitcond90.not.i = icmp eq i32 %inc49.i, %13
  br i1 %exitcond90.not.i, label %for.inc48.i.do.end16_crit_edge, label %for.inc48.i.for.body23.i_crit_edge

for.inc48.i.for.body23.i_crit_edge:               ; preds = %for.inc48.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body23.i

for.inc48.i.do.end16_crit_edge:                   ; preds = %for.inc48.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end16

gpi_find_avail_gpii.exit:                         ; preds = %lor.lhs.false.i.gpi_find_avail_gpii.exit_crit_edge, %land.lhs.true15.i.gpi_find_avail_gpii.exit_crit_edge, %land.lhs.true.i.gpi_find_avail_gpii.exit_crit_edge
  %retval.0.i = phi i32 [ %gpii.184.i, %lor.lhs.false.i.gpi_find_avail_gpii.exit_crit_edge ], [ %gpii.081.i, %land.lhs.true15.i.gpi_find_avail_gpii.exit_crit_edge ], [ %gpii.081.i, %land.lhs.true.i.gpi_find_avail_gpii.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp12 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp12, label %gpi_find_avail_gpii.exit.do.end16_crit_edge, label %if.end18

gpi_find_avail_gpii.exit.do.end16_crit_edge:      ; preds = %gpi_find_avail_gpii.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end16

do.end16:                                         ; preds = %gpi_find_avail_gpii.exit.do.end16_crit_edge, %for.inc48.i.do.end16_crit_edge, %if.end9.do.end16_crit_edge
  %dev17 = getelementptr inbounds %struct.gpi_dev, ptr %1, i32 0, i32 1
  %32 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev17, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.147) #12
  br label %cleanup

if.end18:                                         ; preds = %gpi_find_avail_gpii.exit
  %34 = ptrtoint ptr %gpiis.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %gpiis.i, align 4
  %arrayidx21 = getelementptr %struct.gpii, ptr %35, i32 %retval.0.i, i32 1, i32 %7
  %client_count = getelementptr inbounds %struct.dma_chan, ptr %arrayidx21, i32 0, i32 10
  %36 = ptrtoint ptr %client_count to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %client_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not = icmp eq i32 %37, 0
  br i1 %tobool.not, label %if.end28, label %do.end25

do.end25:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %dev26 = getelementptr inbounds %struct.gpi_dev, ptr %1, i32 0, i32 1
  %38 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev26, align 4
  %seid27 = getelementptr %struct.gpii, ptr %35, i32 %retval.0.i, i32 1, i32 %7, i32 2
  %40 = ptrtoint ptr %seid27 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %seid27, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.150, i32 noundef %retval.0.i, i32 noundef %7, i32 noundef %41) #12
  br label %cleanup

if.end28:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %seid29 = getelementptr %struct.gpii, ptr %35, i32 %retval.0.i, i32 1, i32 %7, i32 2
  %42 = ptrtoint ptr %seid29 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %11, ptr %seid29, align 4
  %arrayidx31 = getelementptr %struct.of_phandle_args, ptr %args, i32 0, i32 2, i32 2
  %43 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx31, align 4
  %protocol = getelementptr %struct.gpii, ptr %35, i32 %retval.0.i, i32 1, i32 %7, i32 3
  %45 = ptrtoint ptr %protocol to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %protocol, align 4
  %call34 = tail call ptr @dma_get_slave_channel(ptr noundef %arrayidx21) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %do.end25, %do.end16, %do.end7, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ null, %do.end7 ], [ null, %do.end16 ], [ null, %do.end25 ], [ %call34, %if.end28 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gpi_process_events(ptr noundef %gpii) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ev_ring_rp_lsb_reg = getelementptr inbounds %struct.gpii, ptr %gpii, i32 0, i32 7
  %0 = ptrtoint ptr %ev_ring_rp_lsb_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ev_ring_rp_lsb_reg, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #9, !srcloc !338
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #9
  %base.i = getelementptr inbounds %struct.gpii, ptr %gpii, i32 0, i32 15, i32 4
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %phys_addr.i = getelementptr inbounds %struct.gpii, ptr %gpii, i32 0, i32 15, i32 2
  %6 = ptrtoint ptr %phys_addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %phys_addr.i, align 4
  %sub.i = sub i32 %3, %7
  %add.ptr.i = getelementptr i8, ptr %5, i32 %sub.i
  %wp = getelementptr inbounds %struct.gpii, ptr %gpii, i32 0, i32 15, i32 5
  %rp3 = getelementptr inbounds %struct.gpii, ptr %gpii, i32 0, i32 15, i32 6
  %gpi_dev = getelementptr inbounds %struct.gpii, ptr %gpii, i32 0, i32 2
  %el_size.i = getelementptr inbounds %struct.gpii, ptr %gpii, i32 0, i32 15, i32 8
  %len.i = getelementptr inbounds %struct.gpii, ptr %gpii, i32 0, i32 15, i32 7
  %ev_cntxt_db_reg.i = getelementptr inbounds %struct.gpii, ptr %gpii, i32 0, i32 6
  %ieob_clr_reg = getelementptr inbounds %struct.gpii, ptr %gpii, i32 0, i32 9
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  %rp.0 = phi ptr [ %add.ptr.i, %entry ], [ %add.ptr.i144, %while.end.do.body_crit_edge ]
  %8 = ptrtoint ptr %rp3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rp3, align 4
  %cmp.not149 = icmp eq ptr %rp.0, %9
  br i1 %cmp.not149, label %do.body.while.end_crit_edge, label %do.body.while.body_crit_edge

do.body.while.body_crit_edge:                     ; preds = %do.body
  br label %while.body

do.body.while.end_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %sw.epilog.while.body_crit_edge, %do.body.while.body_crit_edge
  %10 = phi ptr [ %51, %sw.epilog.while.body_crit_edge ], [ %9, %do.body.while.body_crit_edge ]
  %chid5 = getelementptr inbounds %struct.xfer_compl_event, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %chid5 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %chid5, align 1
  %conv = zext i8 %12 to i32
  %type6 = getelementptr inbounds %struct.xfer_compl_event, ptr %10, i32 0, i32 4
  %13 = ptrtoint ptr %type6 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %type6, align 1
  %conv7 = zext i8 %14 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gpi_process_events.__UNIQUE_ID_ddebug278, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gpi_process_events, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !334

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %gpi_dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %gpi_dev, align 4
  %dev = getelementptr inbounds %struct.gpi_dev, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  %19 = ptrtoint ptr %10 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %10, align 1
  %arrayidx14 = getelementptr [4 x i32], ptr %10, i32 0, i32 1
  %21 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %arrayidx14, align 1
  %arrayidx16 = getelementptr [4 x i32], ptr %10, i32 0, i32 2
  %23 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %arrayidx16, align 1
  %arrayidx18 = getelementptr [4 x i32], ptr %10, i32 0, i32 3
  %25 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %arrayidx18, align 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gpi_process_events.__UNIQUE_ID_ddebug278, ptr noundef %18, ptr noundef nonnull @.str.33, i32 noundef %conv, i32 noundef %conv7, i32 noundef %20, i32 noundef %22, i32 noundef %24, i32 noundef %26) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %while.body
  %27 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.152)
  switch i8 %14, label %do.body66 [
    i8 34, label %sw.bb
    i8 -1, label %do.body22
    i8 48, label %sw.bb42
    i8 49, label %do.body46
  ]

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx20 = getelementptr %struct.gpii, ptr %gpii, i32 0, i32 1, i32 %conv
  tail call fastcc void @gpi_process_xfer_compl_event(ptr noundef %arrayidx20, ptr noundef %10)
  br label %sw.epilog

do.body22:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gpi_process_events.__UNIQUE_ID_ddebug279, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gpi_process_events, %sw.epilog)) #9
          to label %if.then36 [label %sw.epilog], !srcloc !334

if.then36:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %gpi_dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %gpi_dev, align 4
  %dev38 = getelementptr inbounds %struct.gpi_dev, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %dev38 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev38, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gpi_process_events.__UNIQUE_ID_ddebug279, ptr noundef %31, ptr noundef nonnull @.str.34) #9
  br label %sw.epilog

sw.bb42:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx44 = getelementptr %struct.gpii, ptr %gpii, i32 0, i32 1, i32 %conv
  tail call fastcc void @gpi_process_imed_data_event(ptr noundef %arrayidx44, ptr noundef %10)
  br label %sw.epilog

do.body46:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gpi_process_events.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gpi_process_events, %sw.epilog)) #9
          to label %if.then60 [label %sw.epilog], !srcloc !334

if.then60:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %gpi_dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %gpi_dev, align 4
  %dev62 = getelementptr inbounds %struct.gpi_dev, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %dev62 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev62, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gpi_process_events.__UNIQUE_ID_ddebug280, ptr noundef %35, ptr noundef nonnull @.str.35) #9
  br label %sw.epilog

do.body66:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gpi_process_events.__UNIQUE_ID_ddebug281, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gpi_process_events, %sw.epilog)) #9
          to label %if.then80 [label %sw.epilog], !srcloc !334

if.then80:                                        ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %gpi_dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %gpi_dev, align 4
  %dev82 = getelementptr inbounds %struct.gpi_dev, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %dev82 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev82, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gpi_process_events.__UNIQUE_ID_ddebug281, ptr noundef %39, ptr noundef nonnull @.str.36, i32 noundef %conv7) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then80, %do.body66, %if.then60, %do.body46, %sw.bb42, %if.then36, %do.body22, %sw.bb
  %40 = ptrtoint ptr %el_size.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %el_size.i, align 4
  %42 = ptrtoint ptr %wp to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %wp, align 4
  %add.ptr.i137 = getelementptr i8, ptr %43, i32 %41
  %44 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base.i, align 4
  %46 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %len.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %45, i32 %47
  %cmp.not.i = icmp ult ptr %add.ptr.i137, %add.ptr2.i
  %spec.store.select.i = select i1 %cmp.not.i, ptr %add.ptr.i137, ptr %45
  store ptr %spec.store.select.i, ptr %wp, align 4
  %48 = ptrtoint ptr %rp3 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %rp3, align 4
  %add.ptr6.i = getelementptr i8, ptr %49, i32 %41
  %cmp11.not.i = icmp ult ptr %add.ptr6.i, %add.ptr2.i
  %spec.store.select31.i = select i1 %cmp11.not.i, ptr %add.ptr6.i, ptr %45
  store ptr %spec.store.select31.i, ptr %rp3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !339
  %50 = ptrtoint ptr %rp3 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rp3, align 4
  %cmp.not = icmp eq ptr %rp.0, %51
  br i1 %cmp.not, label %sw.epilog.while.end_crit_edge, label %sw.epilog.while.body_crit_edge

sw.epilog.while.body_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

sw.epilog.while.end_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %sw.epilog.while.end_crit_edge, %do.body.while.end_crit_edge
  %52 = ptrtoint ptr %wp to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %wp, align 4
  %54 = ptrtoint ptr %phys_addr.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %phys_addr.i, align 4
  %56 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %base.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %53 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %57 to i32
  %sub.ptr.sub.i = add i32 %55, %sub.ptr.lhs.cast.i
  %add.i = sub i32 %sub.ptr.sub.i, %sub.ptr.rhs.cast.i
  %58 = ptrtoint ptr %ev_cntxt_db_reg.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ev_cntxt_db_reg.i, align 4
  %60 = tail call i32 @llvm.bswap.i32(i32 %add.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 %60) #9, !srcloc !335
  %61 = ptrtoint ptr %ieob_clr_reg to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ieob_clr_reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 16777216) #9, !srcloc !335
  %63 = ptrtoint ptr %ev_ring_rp_lsb_reg to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ev_ring_rp_lsb_reg, align 4
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %64) #9, !srcloc !338
  %66 = tail call i32 @llvm.bswap.i32(i32 %65) #9
  %67 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %base.i, align 4
  %69 = ptrtoint ptr %phys_addr.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %phys_addr.i, align 4
  %sub.i143 = sub i32 %66, %70
  %add.ptr.i144 = getelementptr i8, ptr %68, i32 %sub.i143
  %71 = ptrtoint ptr %rp3 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %rp3, align 4
  %cmp91.not = icmp eq ptr %add.ptr.i144, %72
  br i1 %cmp91.not, label %do.end93, label %while.end.do.body_crit_edge

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.end93:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gpi_config_interrupts(ptr noundef %gpii, i32 noundef %settings, i1 noundef zeroext %mask) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %configured_irq = getelementptr inbounds %struct.gpii, ptr %gpii, i32 0, i32 12
  %0 = ptrtoint ptr %configured_irq to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %configured_irq, align 4, !range !333
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then:                                          ; preds = %entry
  %gpi_dev = getelementptr inbounds %struct.gpii, ptr %gpii, i32 0, i32 2
  %2 = ptrtoint ptr %gpi_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpi_dev, align 4
  %dev = getelementptr inbounds %struct.gpi_dev, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %irq = getelementptr inbounds %struct.gpii, ptr %gpii, i32 0, i32 3
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @devm_request_threaded_irq(ptr noundef %5, i32 noundef %7, ptr noundef nonnull @gpi_handle_irq, ptr noundef null, i32 noundef 4, ptr noundef nonnull @.str.53, ptr noundef %gpii) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.then.if.end5_crit_edge

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %gpi_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gpi_dev, align 4
  %dev3 = getelementptr inbounds %struct.gpi_dev, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev3, align 4
  %12 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.54, i32 noundef %13, i32 noundef %call.i) #12
  br label %cleanup

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %settings)
  %cmp6 = icmp eq i32 %settings, 1
  br i1 %cmp6, label %if.then7, label %if.else13

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %cntxt_type_irq_msk = getelementptr inbounds %struct.gpii, ptr %gpii, i32 0, i32 19
  %14 = ptrtoint ptr %cntxt_type_irq_msk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cntxt_type_irq_msk, align 4
  %and = and i32 %15, -9
  %masksel = select i1 %mask, i32 8, i32 0
  %and.sink = or i32 %and, %masksel
  store i32 %and.sink, ptr %cntxt_type_irq_msk, align 4
  %16 = ptrtoint ptr %gpii to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %gpii, align 4
  %mul = shl i32 %17, 14
  %add = add i32 %mul, 143496
  %regs.i = getelementptr inbounds %struct.gpii, ptr %gpii, i32 0, i32 4
  %18 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %19, i32 %add
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !338
  %21 = and i32 %20, -2130706433
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %23 = and i32 %and.sink, 127
  %or.i = or i32 %22, %23
  %24 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %24) #9, !srcloc !335
  br label %if.end51

if.else13:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %gpii to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %gpii, align 4
  %mul15 = shl i32 %26, 14
  %add16 = add i32 %mul15, 143496
  %regs.i92 = getelementptr inbounds %struct.gpii, ptr %gpii, i32 0, i32 4
  %27 = ptrtoint ptr %regs.i92 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs.i92, align 4
  %add.ptr.i93 = getelementptr i8, ptr %28, i32 %add16
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i93) #9, !srcloc !338
  %30 = and i32 %29, -2130706433
  %31 = or i32 %30, 1325400064
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i93, i32 %31) #9, !srcloc !335
  %32 = ptrtoint ptr %gpii to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %gpii, align 4
  %mul18 = shl i32 %33, 14
  %add19 = add i32 %mul18, 143544
  %34 = ptrtoint ptr %regs.i92 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs.i92, align 4
  %add.ptr.i105 = getelementptr i8, ptr %35, i32 %add19
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i105) #9, !srcloc !338
  %37 = or i32 %36, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i105, i32 %37) #9, !srcloc !335
  %38 = ptrtoint ptr %gpii to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %gpii, align 4
  %mul21 = shl i32 %39, 14
  %add22 = add i32 %mul21, 143512
  %40 = ptrtoint ptr %regs.i92 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs.i92, align 4
  %add.ptr.i117 = getelementptr i8, ptr %41, i32 %add22
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i117) #9, !srcloc !338
  %43 = or i32 %42, 50331648
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i117, i32 %43) #9, !srcloc !335
  %44 = ptrtoint ptr %gpii to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %gpii, align 4
  %mul24 = shl i32 %45, 14
  %add25 = add i32 %mul24, 143516
  %46 = ptrtoint ptr %regs.i92 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regs.i92, align 4
  %add.ptr.i129 = getelementptr i8, ptr %47, i32 %add25
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i129) #9, !srcloc !338
  %49 = or i32 %48, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i129, i32 %49) #9, !srcloc !335
  %50 = ptrtoint ptr %gpii to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %gpii, align 4
  %mul27 = shl i32 %51, 14
  %add28 = add i32 %mul27, 143624
  %52 = ptrtoint ptr %regs.i92 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regs.i92, align 4
  %add.ptr.i141 = getelementptr i8, ptr %53, i32 %add28
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i141) #9, !srcloc !338
  %55 = or i32 %54, 251658240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i141, i32 %55) #9, !srcloc !335
  %56 = ptrtoint ptr %gpii to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %gpii, align 4
  %mul30 = shl i32 %57, 14
  %add31 = add i32 %mul30, 143648
  %58 = ptrtoint ptr %regs.i92 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regs.i92, align 4
  %add.ptr.i153 = getelementptr i8, ptr %59, i32 %add31
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i153) #9, !srcloc !338
  %61 = or i32 %60, 251658240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i153, i32 %61) #9, !srcloc !335
  %62 = ptrtoint ptr %gpii to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %gpii, align 4
  %mul33 = shl i32 %63, 14
  %add34 = add i32 %mul33, 143752
  %64 = ptrtoint ptr %regs.i92 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regs.i92, align 4
  %add.ptr.i165 = getelementptr i8, ptr %65, i32 %add34
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i165) #9, !srcloc !338
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i165, i32 0) #9, !srcloc !335
  %67 = ptrtoint ptr %gpii to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %gpii, align 4
  %mul36 = shl i32 %68, 14
  %add37 = add i32 %mul36, 143756
  %69 = ptrtoint ptr %regs.i92 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regs.i92, align 4
  %add.ptr.i172 = getelementptr i8, ptr %70, i32 %add37
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i172) #9, !srcloc !338
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i172, i32 0) #9, !srcloc !335
  %72 = ptrtoint ptr %gpii to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %gpii, align 4
  %mul39 = shl i32 %73, 14
  %add40 = add i32 %mul39, 144384
  %74 = ptrtoint ptr %regs.i92 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %regs.i92, align 4
  %add.ptr.i179 = getelementptr i8, ptr %75, i32 %add40
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i179) #9, !srcloc !338
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i179, i32 0) #9, !srcloc !335
  %77 = ptrtoint ptr %gpii to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %gpii, align 4
  %mul42 = shl i32 %78, 14
  %add43 = add i32 %mul42, 144388
  %79 = ptrtoint ptr %regs.i92 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %regs.i92, align 4
  %add.ptr.i186 = getelementptr i8, ptr %80, i32 %add43
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i186) #9, !srcloc !338
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i186, i32 0) #9, !srcloc !335
  %82 = ptrtoint ptr %gpii to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %gpii, align 4
  %mul45 = shl i32 %83, 14
  %add46 = add i32 %mul45, 143744
  %84 = ptrtoint ptr %regs.i92 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %regs.i92, align 4
  %add.ptr.i193 = getelementptr i8, ptr %85, i32 %add46
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i193) #9, !srcloc !338
  %87 = or i32 %86, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i193, i32 %87) #9, !srcloc !335
  %88 = ptrtoint ptr %gpii to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %gpii, align 4
  %mul48 = shl i32 %89, 14
  %add49 = add i32 %mul48, 143872
  %90 = ptrtoint ptr %regs.i92 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %regs.i92, align 4
  %add.ptr.i205 = getelementptr i8, ptr %91, i32 %add49
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i205) #9, !srcloc !338
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i205, i32 0) #9, !srcloc !335
  %cntxt_type_irq_msk50 = getelementptr inbounds %struct.gpii, ptr %gpii, i32 0, i32 19
  %93 = ptrtoint ptr %cntxt_type_irq_msk50 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 79, ptr %cntxt_type_irq_msk50, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.else13, %if.then7
  %94 = ptrtoint ptr %configured_irq to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 1, ptr %configured_irq, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end51, %do.end
  %retval.0 = phi i32 [ 0, %if.end51 ], [ %call.i, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gpi_process_xfer_compl_event(ptr noundef %gchan, ptr nocapture noundef readonly %compl_event) unnamed_addr #2 align 64 {
entry:
  %result = alloca %struct.dmaengine_result, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %gpii1 = getelementptr inbounds %struct.gchan, ptr %gchan, i32 0, i32 4
  %0 = ptrtoint ptr %gpii1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpii1, align 4
  %2 = ptrtoint ptr %compl_event to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %3 = load i64, ptr %compl_event, align 1
  %conv = trunc i64 %3 to i32
  %base.i = getelementptr inbounds %struct.gchan, ptr %gchan, i32 0, i32 11, i32 4
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %phys_addr.i = getelementptr inbounds %struct.gchan, ptr %gchan, i32 0, i32 11, i32 2
  %6 = ptrtoint ptr %phys_addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %phys_addr.i, align 4
  %sub.i = sub i32 %conv, %7
  %add.ptr.i = getelementptr i8, ptr %5, i32 %sub.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %result) #9
  %8 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %result, align 4, !annotation !340
  %9 = getelementptr inbounds %struct.dmaengine_result, ptr %result, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %9, align 4, !annotation !340
  %pm_state = getelementptr inbounds %struct.gchan, ptr %gchan, i32 0, i32 6
  %11 = ptrtoint ptr %pm_state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pm_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %12)
  %cmp.not = icmp eq i32 %12, 3
  br i1 %cmp.not, label %do.body10, label %do.end, !prof !341

do.end:                                           ; preds = %entry
  %gpi_dev = getelementptr inbounds %struct.gpii, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %gpi_dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %gpi_dev, align 4
  %dev = getelementptr inbounds %struct.gpi_dev, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %12)
  %cmp6 = icmp ugt i32 %12, 5
  br i1 %cmp6, label %do.end.cond.end_crit_edge, label %cond.false

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr [6 x ptr], ptr @gpi_pm_state_str, i32 0, i32 %12
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %do.end.cond.end_crit_edge
  %cond = phi ptr [ %18, %cond.false ], [ @.str.25, %do.end.cond.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.37, ptr noundef %cond) #12
  br label %cleanup

do.body10:                                        ; preds = %entry
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %gchan, i32 0, i32 3
  %call14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %desc_issued.i = getelementptr inbounds %struct.virt_dma_chan, ptr %gchan, i32 0, i32 6
  %19 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %desc_issued.i, align 4
  %cmp.not.i = icmp eq ptr %20, %desc_issued.i
  %add.ptr.i190 = getelementptr i8, ptr %20, i32 -108
  %tobool21.not194 = icmp eq ptr %add.ptr.i190, null
  %tobool21.not = or i1 %cmp.not.i, %tobool21.not194
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call14) #9
  br i1 %tobool21.not, label %if.then22, label %if.end42

if.then22:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #11
  %gpi_dev28 = getelementptr inbounds %struct.gpii, ptr %1, i32 0, i32 2
  %21 = ptrtoint ptr %gpi_dev28 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %gpi_dev28, align 4
  %dev29 = getelementptr inbounds %struct.gpi_dev, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %dev29 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev29, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.40) #12
  %25 = ptrtoint ptr %gpi_dev28 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %gpi_dev28, align 4
  %dev34 = getelementptr inbounds %struct.gpi_dev, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev34, align 4
  %29 = ptrtoint ptr %compl_event to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %compl_event, align 1
  %arrayidx37 = getelementptr [4 x i32], ptr %compl_event, i32 0, i32 1
  %31 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %arrayidx37, align 1
  %arrayidx39 = getelementptr [4 x i32], ptr %compl_event, i32 0, i32 2
  %33 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %arrayidx39, align 1
  %arrayidx41 = getelementptr [4 x i32], ptr %compl_event, i32 0, i32 3
  %35 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %arrayidx41, align 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.43, i32 noundef %30, i32 noundef %32, i32 noundef %34, i32 noundef %36) #12
  br label %cleanup

if.end42:                                         ; preds = %do.body10
  %el_size = getelementptr inbounds %struct.gchan, ptr %gchan, i32 0, i32 11, i32 8
  %37 = ptrtoint ptr %el_size to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %el_size, align 4
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 %38
  %39 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base.i, align 4
  %len = getelementptr inbounds %struct.gchan, ptr %gchan, i32 0, i32 11, i32 7
  %41 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %len, align 4
  %add.ptr46 = getelementptr i8, ptr %40, i32 %42
  %cmp47.not = icmp ult ptr %add.ptr, %add.ptr46
  %spec.select = select i1 %cmp47.not, ptr %add.ptr, ptr %40
  %rp = getelementptr inbounds %struct.gchan, ptr %gchan, i32 0, i32 11, i32 6
  %43 = ptrtoint ptr %rp to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %spec.select, ptr %rp, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !342
  %chid58 = getelementptr inbounds %struct.xfer_compl_event, ptr %compl_event, i32 0, i32 5
  %44 = ptrtoint ptr %chid58 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %chid58, align 1
  %code = getelementptr inbounds %struct.xfer_compl_event, ptr %compl_event, i32 0, i32 2
  %46 = ptrtoint ptr %code to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %code, align 1
  %48 = zext i8 %47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.153)
  switch i8 %47, label %if.end42.do.body82_crit_edge [
    i8 2, label %land.lhs.true
    i8 16, label %do.end77
  ]

if.end42.do.body82_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body82

land.lhs.true:                                    ; preds = %if.end42
  %ieob_set = getelementptr inbounds %struct.gpii, ptr %1, i32 0, i32 20
  %49 = ptrtoint ptr %ieob_set to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %ieob_set, align 4, !range !333
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool63.not = icmp eq i8 %50, 0
  br i1 %tobool63.not, label %land.lhs.true.do.body82_crit_edge, label %if.then65

land.lhs.true.do.body82_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body82

if.then65:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %45)
  %cmp66 = icmp eq i8 %45, 1
  br i1 %cmp66, label %if.then65.do.body126_crit_edge, label %if.then65.cleanup_crit_edge

if.then65.cleanup_crit_edge:                      ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then65.do.body126_crit_edge:                   ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body126

do.end77:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  %gpi_dev78 = getelementptr inbounds %struct.gpii, ptr %1, i32 0, i32 2
  %51 = ptrtoint ptr %gpi_dev78 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %gpi_dev78, align 4
  %dev79 = getelementptr inbounds %struct.gpi_dev, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %dev79 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev79, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.46) #12
  br label %if.end101

do.body82:                                        ; preds = %land.lhs.true.do.body82_crit_edge, %if.end42.do.body82_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gpi_process_xfer_compl_event.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gpi_process_xfer_compl_event, %if.end101)) #9
          to label %if.then94 [label %if.end101], !srcloc !334

if.then94:                                        ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #11
  %gpi_dev95 = getelementptr inbounds %struct.gpii, ptr %1, i32 0, i32 2
  %55 = ptrtoint ptr %gpi_dev95 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %gpi_dev95, align 4
  %dev96 = getelementptr inbounds %struct.gpi_dev, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %dev96 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev96, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gpi_process_xfer_compl_event.__UNIQUE_ID_ddebug276, ptr noundef %58, ptr noundef nonnull @.str.48) #9
  br label %if.end101

if.end101:                                        ; preds = %if.then94, %do.body82, %do.end77
  %storemerge = phi i32 [ 3, %do.end77 ], [ 0, %if.then94 ], [ 0, %do.body82 ]
  %59 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %storemerge, ptr %result, align 4
  %len102 = getelementptr i8, ptr %20, i32 8
  %60 = ptrtoint ptr %len102 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %len102, align 4
  %length = getelementptr inbounds %struct.xfer_compl_event, ptr %compl_event, i32 0, i32 1
  %62 = ptrtoint ptr %length to i32
  call void @__asan_loadN_noabort(i32 %62, i32 3)
  %bf.load = load i24, ptr %length, align 1
  %bf.cast = zext i24 %bf.load to i32
  %sub = sub i32 %61, %bf.cast
  %63 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %sub, ptr %9, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gpi_process_xfer_compl_event.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gpi_process_xfer_compl_event, %do.end123)) #9
          to label %if.then117 [label %do.end123], !srcloc !334

if.then117:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #11
  %gpi_dev118 = getelementptr inbounds %struct.gpii, ptr %1, i32 0, i32 2
  %64 = ptrtoint ptr %gpi_dev118 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %gpi_dev118, align 4
  %dev119 = getelementptr inbounds %struct.gpi_dev, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %dev119 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev119, align 4
  %68 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %9, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gpi_process_xfer_compl_event.__UNIQUE_ID_ddebug277, ptr noundef %67, ptr noundef nonnull @.str.49, i32 noundef %69) #9
  br label %do.end123

do.end123:                                        ; preds = %if.then117, %if.end101
  %70 = ptrtoint ptr %add.ptr.i190 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %add.ptr.i190, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %71)
  %cmp.i = icmp slt i32 %71, 1
  br i1 %cmp.i, label %do.body2.i, label %dma_cookie_complete.exit, !prof !343

do.body2.i:                                       ; preds = %do.end123
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/qcom/../dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #9, !srcloc !344
  unreachable

dma_cookie_complete.exit:                         ; preds = %do.end123
  %chan.i = getelementptr i8, ptr %20, i32 -96
  %72 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %chan.i, align 4
  %completed_cookie.i = getelementptr inbounds %struct.dma_chan, ptr %73, i32 0, i32 3
  %74 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %71, ptr %completed_cookie.i, align 4
  %75 = ptrtoint ptr %add.ptr.i190 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %add.ptr.i190, align 4
  %callback.i.i = getelementptr i8, ptr %20, i32 -84
  %76 = ptrtoint ptr %callback.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %callback.i.i, align 4
  %callback_result.i.i = getelementptr i8, ptr %20, i32 -80
  %78 = ptrtoint ptr %callback_result.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %callback_result.i.i, align 4
  %callback_param.i.i = getelementptr i8, ptr %20, i32 -76
  %80 = ptrtoint ptr %callback_param.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %callback_param.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %79, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %dma_cookie_complete.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void %79(ptr noundef %81, ptr noundef nonnull %result) #9
  br label %do.body126

if.else.i.i:                                      ; preds = %dma_cookie_complete.exit
  %tobool4.not.i.i = icmp eq ptr %77, null
  br i1 %tobool4.not.i.i, label %if.else.i.i.do.body126_crit_edge, label %if.then5.i.i

if.else.i.i.do.body126_crit_edge:                 ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body126

if.then5.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %77(ptr noundef %81) #9
  br label %do.body126

do.body126:                                       ; preds = %if.then5.i.i, %if.else.i.i.do.body126_crit_edge, %if.then.i.i, %if.then65.do.body126_crit_edge
  %call135 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %20) #9
  br i1 %call.i.i, label %if.end.i.i, label %do.body126.list_del.exit_crit_edge

do.body126.list_del.exit_crit_edge:               ; preds = %do.body126
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %do.body126
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %82 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %prev.i.i, align 4
  %84 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %20, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %83, ptr %prev1.i.i.i, align 4
  %87 = ptrtoint ptr %83 to i32
  call void @__asan_store4_noabort(i32 %87)
  store volatile ptr %85, ptr %83, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %do.body126.list_del.exit_crit_edge
  %88 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr inttoptr (i32 256 to ptr), ptr %20, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %89 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call135) #9
  call void @kfree(ptr noundef nonnull %add.ptr.i190) #9
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %if.then65.cleanup_crit_edge, %if.then22, %cond.end
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %result) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gpi_process_imed_data_event(ptr noundef %gchan, ptr nocapture noundef readonly %imed_event) unnamed_addr #2 align 64 {
entry:
  %result = alloca %struct.dmaengine_result, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %gpii1 = getelementptr inbounds %struct.gchan, ptr %gchan, i32 0, i32 4
  %0 = ptrtoint ptr %gpii1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpii1, align 4
  %base = getelementptr inbounds %struct.gchan, ptr %gchan, i32 0, i32 11, i32 4
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %el_size = getelementptr inbounds %struct.gchan, ptr %gchan, i32 0, i32 11, i32 8
  %4 = ptrtoint ptr %el_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %el_size, align 4
  %tre_index = getelementptr inbounds %struct.immediate_data_event, ptr %imed_event, i32 0, i32 2
  %6 = ptrtoint ptr %tre_index to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %tre_index, align 1
  %conv = zext i16 %7 to i32
  %mul = mul i32 %5, %conv
  %add.ptr = getelementptr i8, ptr %3, i32 %mul
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %result) #9
  %8 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %result, align 4, !annotation !340
  %9 = getelementptr inbounds %struct.dmaengine_result, ptr %result, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %9, align 4, !annotation !340
  %pm_state = getelementptr inbounds %struct.gchan, ptr %gchan, i32 0, i32 6
  %11 = ptrtoint ptr %pm_state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pm_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %12)
  %cmp.not = icmp eq i32 %12, 3
  br i1 %cmp.not, label %do.body9, label %do.end

do.end:                                           ; preds = %entry
  %gpi_dev = getelementptr inbounds %struct.gpii, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %gpi_dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %gpi_dev, align 4
  %dev = getelementptr inbounds %struct.gpi_dev, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %12)
  %cmp5 = icmp ugt i32 %12, 5
  br i1 %cmp5, label %do.end.cond.end_crit_edge, label %cond.false

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr [6 x ptr], ptr @gpi_pm_state_str, i32 0, i32 %12
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %do.end.cond.end_crit_edge
  %cond = phi ptr [ %18, %cond.false ], [ @.str.25, %do.end.cond.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.37, ptr noundef %cond) #12
  br label %cleanup

do.body9:                                         ; preds = %entry
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %gchan, i32 0, i32 3
  %call12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %desc_issued.i = getelementptr inbounds %struct.virt_dma_chan, ptr %gchan, i32 0, i32 6
  %19 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %desc_issued.i, align 4
  %cmp.not.i = icmp eq ptr %20, %desc_issued.i
  %add.ptr.i = getelementptr i8, ptr %20, i32 -108
  %tobool.not207 = icmp eq ptr %add.ptr.i, null
  %tobool.not = or i1 %cmp.not.i, %tobool.not207
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call12) #9
  br i1 %tobool.not, label %if.then19, label %if.end90

if.then19:                                        ; preds = %do.body9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gpi_process_imed_data_event.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gpi_process_imed_data_event, %do.end34)) #9
          to label %if.then29 [label %do.end34], !srcloc !334

if.then29:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  %gpi_dev30 = getelementptr inbounds %struct.gpii, ptr %1, i32 0, i32 2
  %21 = ptrtoint ptr %gpi_dev30 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %gpi_dev30, align 4
  %dev31 = getelementptr inbounds %struct.gpi_dev, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev31, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gpi_process_imed_data_event.__UNIQUE_ID_ddebug273, ptr noundef %24, ptr noundef nonnull @.str.51) #9
  br label %do.end34

do.end34:                                         ; preds = %if.then29, %if.then19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gpi_process_imed_data_event.__UNIQUE_ID_ddebug274, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gpi_process_imed_data_event, %do.end61)) #9
          to label %if.then49 [label %do.end61], !srcloc !334

if.then49:                                        ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #11
  %gpi_dev50 = getelementptr inbounds %struct.gpii, ptr %1, i32 0, i32 2
  %25 = ptrtoint ptr %gpi_dev50 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %gpi_dev50, align 4
  %dev51 = getelementptr inbounds %struct.gpi_dev, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %dev51 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev51, align 4
  %29 = ptrtoint ptr %imed_event to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %imed_event, align 1
  %arrayidx54 = getelementptr [4 x i32], ptr %imed_event, i32 0, i32 1
  %31 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %arrayidx54, align 1
  %arrayidx56 = getelementptr [4 x i32], ptr %imed_event, i32 0, i32 2
  %33 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %arrayidx56, align 1
  %arrayidx58 = getelementptr [4 x i32], ptr %imed_event, i32 0, i32 3
  %35 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %arrayidx58, align 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gpi_process_imed_data_event.__UNIQUE_ID_ddebug274, ptr noundef %28, ptr noundef nonnull @.str.43, i32 noundef %30, i32 noundef %32, i32 noundef %34, i32 noundef %36) #9
  br label %do.end61

do.end61:                                         ; preds = %if.then49, %do.end34
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gpi_process_imed_data_event.__UNIQUE_ID_ddebug275, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gpi_process_imed_data_event, %cleanup)) #9
          to label %if.then76 [label %cleanup], !srcloc !334

if.then76:                                        ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #11
  %gpi_dev77 = getelementptr inbounds %struct.gpii, ptr %1, i32 0, i32 2
  %37 = ptrtoint ptr %gpi_dev77 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %gpi_dev77, align 4
  %dev78 = getelementptr inbounds %struct.gpi_dev, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %dev78 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev78, align 4
  %41 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %42 = load i32, ptr %add.ptr, align 1
  %arrayidx82 = getelementptr [4 x i32], ptr %add.ptr, i32 0, i32 1
  %43 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_loadN_noabort(i32 %43, i32 4)
  %44 = load i32, ptr %arrayidx82, align 1
  %arrayidx84 = getelementptr [4 x i32], ptr %add.ptr, i32 0, i32 2
  %45 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_loadN_noabort(i32 %45, i32 4)
  %46 = load i32, ptr %arrayidx84, align 1
  %arrayidx86 = getelementptr [4 x i32], ptr %add.ptr, i32 0, i32 3
  %47 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %arrayidx86, align 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gpi_process_imed_data_event.__UNIQUE_ID_ddebug275, ptr noundef %40, ptr noundef nonnull @.str.52, i32 noundef %42, i32 noundef %44, i32 noundef %46, i32 noundef %48) #9
  br label %cleanup

if.end90:                                         ; preds = %do.body9
  %49 = ptrtoint ptr %el_size to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %el_size, align 4
  %add.ptr95 = getelementptr i8, ptr %add.ptr, i32 %50
  %51 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %base, align 4
  %len = getelementptr inbounds %struct.gchan, ptr %gchan, i32 0, i32 11, i32 7
  %53 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %len, align 4
  %add.ptr97 = getelementptr i8, ptr %52, i32 %54
  %cmp98.not = icmp ult ptr %add.ptr95, %add.ptr97
  %spec.select = select i1 %cmp98.not, ptr %add.ptr95, ptr %52
  %rp = getelementptr inbounds %struct.gchan, ptr %gchan, i32 0, i32 11, i32 6
  %55 = ptrtoint ptr %rp to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %spec.select, ptr %rp, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !345
  %chid109 = getelementptr inbounds %struct.immediate_data_event, ptr %imed_event, i32 0, i32 6
  %56 = ptrtoint ptr %chid109 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %chid109, align 1
  %code = getelementptr inbounds %struct.immediate_data_event, ptr %imed_event, i32 0, i32 3
  %58 = ptrtoint ptr %code to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %code, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %59)
  %cmp112 = icmp eq i8 %59, 2
  br i1 %cmp112, label %land.lhs.true, label %if.end90.if.end120_crit_edge

if.end90.if.end120_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end120

land.lhs.true:                                    ; preds = %if.end90
  %ieob_set = getelementptr inbounds %struct.gpii, ptr %1, i32 0, i32 20
  %60 = ptrtoint ptr %ieob_set to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %ieob_set, align 4, !range !333
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool114.not = icmp eq i8 %61, 0
  br i1 %tobool114.not, label %land.lhs.true.if.end120_crit_edge, label %if.then116

land.lhs.true.if.end120_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end120

if.then116:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %57)
  %cmp117 = icmp eq i8 %57, 1
  br i1 %cmp117, label %if.then116.do.body134_crit_edge, label %if.then116.cleanup_crit_edge

if.then116.cleanup_crit_edge:                     ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then116.do.body134_crit_edge:                  ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body134

if.end120:                                        ; preds = %land.lhs.true.if.end120_crit_edge, %if.end90.if.end120_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %59)
  %cmp123 = icmp eq i8 %59, 16
  %. = select i1 %cmp123, i32 3, i32 0
  %62 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %., ptr %result, align 4
  %len130 = getelementptr i8, ptr %20, i32 8
  %63 = ptrtoint ptr %len130 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %len130, align 4
  %length = getelementptr inbounds %struct.immediate_data_event, ptr %imed_event, i32 0, i32 1
  %65 = ptrtoint ptr %length to i32
  call void @__asan_load1_noabort(i32 %65)
  %bf.load = load i8, ptr %length, align 1
  %bf.lshr = lshr i8 %bf.load, 4
  %conv131 = zext i8 %bf.lshr to i32
  %sub = sub i32 %64, %conv131
  %66 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %sub, ptr %9, align 4
  %67 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %68)
  %cmp.i = icmp slt i32 %68, 1
  br i1 %cmp.i, label %do.body2.i, label %dma_cookie_complete.exit, !prof !343

do.body2.i:                                       ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/qcom/../dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #9, !srcloc !344
  unreachable

dma_cookie_complete.exit:                         ; preds = %if.end120
  %chan.i = getelementptr i8, ptr %20, i32 -96
  %69 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %chan.i, align 4
  %completed_cookie.i = getelementptr inbounds %struct.dma_chan, ptr %70, i32 0, i32 3
  %71 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %68, ptr %completed_cookie.i, align 4
  %72 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %add.ptr.i, align 4
  %callback.i.i = getelementptr i8, ptr %20, i32 -84
  %73 = ptrtoint ptr %callback.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %callback.i.i, align 4
  %callback_result.i.i = getelementptr i8, ptr %20, i32 -80
  %75 = ptrtoint ptr %callback_result.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %callback_result.i.i, align 4
  %callback_param.i.i = getelementptr i8, ptr %20, i32 -76
  %77 = ptrtoint ptr %callback_param.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %callback_param.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %76, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %dma_cookie_complete.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void %76(ptr noundef %78, ptr noundef nonnull %result) #9
  br label %do.body134

if.else.i.i:                                      ; preds = %dma_cookie_complete.exit
  %tobool4.not.i.i = icmp eq ptr %74, null
  br i1 %tobool4.not.i.i, label %if.else.i.i.do.body134_crit_edge, label %if.then5.i.i

if.else.i.i.do.body134_crit_edge:                 ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body134

if.then5.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %74(ptr noundef %78) #9
  br label %do.body134

do.body134:                                       ; preds = %if.then5.i.i, %if.else.i.i.do.body134_crit_edge, %if.then.i.i, %if.then116.do.body134_crit_edge
  %call143 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %20) #9
  br i1 %call.i.i, label %if.end.i.i, label %do.body134.list_del.exit_crit_edge

do.body134.list_del.exit_crit_edge:               ; preds = %do.body134
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %do.body134
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %79 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %prev.i.i, align 4
  %81 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %20, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %80, ptr %prev1.i.i.i, align 4
  %84 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %84)
  store volatile ptr %82, ptr %80, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %do.body134.list_del.exit_crit_edge
  %85 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr inttoptr (i32 256 to ptr), ptr %20, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %86 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call143) #9
  call void @kfree(ptr noundef nonnull %add.ptr.i) #9
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %if.then116.cleanup_crit_edge, %if.then76, %do.end61, %cond.end
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %result) #9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpi_handle_irq(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  %pm_lock = getelementptr inbounds %struct.gpii, ptr %data, i32 0, i32 14
  %call = tail call i32 @_raw_read_lock_irqsave(ptr noundef %pm_lock) #9
  %pm_state = getelementptr inbounds %struct.gpii, ptr %data, i32 0, i32 13
  %2 = ptrtoint ptr %pm_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pm_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp2 = icmp ugt i32 %3, 1
  br i1 %cmp2, label %if.end, label %do.end6

do.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %gpi_dev = getelementptr inbounds %struct.gpii, ptr %data, i32 0, i32 2
  %4 = ptrtoint ptr %gpi_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gpi_dev, align 4
  %dev = getelementptr inbounds %struct.gpi_dev, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %arrayidx = getelementptr [6 x ptr], ptr @gpi_pm_state_str, i32 0, i32 %3
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.56, ptr noundef %9) #12
  br label %do.body144

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data, align 4
  %mul = shl i32 %11, 14
  %add = add i32 %mul, 143488
  %regs = getelementptr inbounds %struct.gpii, ptr %data, i32 0, i32 4
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 %add
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !338
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #9
  %gpi_dev.i = getelementptr inbounds %struct.gpii, ptr %data, i32 0, i32 2
  %ieob_clr_reg.i = getelementptr inbounds %struct.gpii, ptr %data, i32 0, i32 9
  %configured_irq.i.i = getelementptr inbounds %struct.gpii, ptr %data, i32 0, i32 12
  %irq.i.i = getelementptr inbounds %struct.gpii, ptr %data, i32 0, i32 3
  %cntxt_type_irq_msk.i.i = getelementptr inbounds %struct.gpii, ptr %data, i32 0, i32 19
  %state.i.i = getelementptr inbounds %struct.gpii, ptr %data, i32 0, i32 16, i32 1
  %ev_task.i = getelementptr inbounds %struct.gpii, ptr %data, i32 0, i32 16
  %mul38 = shl i32 %1, 14
  %add39 = add i32 %mul38, 143508
  %add44 = add i32 %mul38, 143524
  %ev_cntxt_base_reg = getelementptr inbounds %struct.gpii, ptr %data, i32 0, i32 5
  %gpi_cmd = getelementptr inbounds %struct.gpii, ptr %data, i32 0, i32 18
  %ev_state70 = getelementptr inbounds %struct.gpii, ptr %data, i32 0, i32 11
  %cmd_completion = getelementptr inbounds %struct.gpii, ptr %data, i32 0, i32 17
  %ch_cntxt_base_reg.i = getelementptr %struct.gpii, ptr %data, i32 0, i32 1, i32 0, i32 7
  %ch_state.i = getelementptr %struct.gpii, ptr %data, i32 0, i32 1, i32 0, i32 5
  %ch_cntxt_base_reg.1.i = getelementptr %struct.gpii, ptr %data, i32 0, i32 1, i32 1, i32 7
  %ch_state.1.i = getelementptr %struct.gpii, ptr %data, i32 0, i32 1, i32 1, i32 5
  br label %do.body13

do.body13:                                        ; preds = %if.end134.do.body13_crit_edge, %if.end
  %type.0 = phi i32 [ %15, %if.end ], [ %129, %if.end134.do.body13_crit_edge ]
  %and = and i32 %type.0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body13.if.end16_crit_edge, label %if.then14

do.body13.if.end16_crit_edge:                     ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then14:                                        ; preds = %do.body13
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %data, align 4
  %mul.i = shl i32 %17, 14
  %add.i = add i32 %mul.i, 143616
  %18 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs, align 4
  %add.ptr.i = getelementptr i8, ptr %19, i32 %add.i
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !338
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #9
  %add3.i = add i32 %mul.i, 143632
  %22 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs, align 4
  %add.ptr5.i = getelementptr i8, ptr %23, i32 %add3.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %20) #9, !srcloc !335
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %tobool.not.i = icmp ult i32 %21, 2
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %gpi_dev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %gpi_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.gpi_dev, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.64, i32 noundef %21) #12
  br label %gpi_process_glob_err_irq.exit

if.end.i:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  %add7.i = add i32 %mul.i, 143872
  %28 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs, align 4
  %add.ptr9.i = getelementptr i8, ptr %29, i32 %add7.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 0) #9, !srcloc !335
  br label %gpi_process_glob_err_irq.exit

gpi_process_glob_err_irq.exit:                    ; preds = %if.end.i, %do.end.i
  %and15 = and i32 %type.0, -5
  br label %if.end16

if.end16:                                         ; preds = %gpi_process_glob_err_irq.exit, %do.body13.if.end16_crit_edge
  %type.1 = phi i32 [ %and15, %gpi_process_glob_err_irq.exit ], [ %type.0, %do.body13.if.end16_crit_edge ]
  %and17 = and i32 %type.1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end16.if.end21_crit_edge, label %if.then19

if.end16.if.end21_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then19:                                        ; preds = %if.end16
  %30 = ptrtoint ptr %ieob_clr_reg.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ieob_clr_reg.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 16777216) #9, !srcloc !335
  %32 = ptrtoint ptr %configured_irq.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %configured_irq.i.i, align 4, !range !333
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i.i = icmp eq i8 %33, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then19.if.end5.i.i_crit_edge

if.then19.if.end5.i.i_crit_edge:                  ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i.i

if.then.i.i:                                      ; preds = %if.then19
  %34 = ptrtoint ptr %gpi_dev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %gpi_dev.i, align 4
  %dev.i.i = getelementptr inbounds %struct.gpi_dev, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev.i.i, align 4
  %38 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %irq.i.i, align 4
  %call.i.i.i = tail call i32 @devm_request_threaded_irq(ptr noundef %37, i32 noundef %39, ptr noundef nonnull @gpi_handle_irq, ptr noundef null, i32 noundef 4, ptr noundef nonnull @.str.53, ptr noundef %data) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.if.end5.i.i_crit_edge

if.then.i.i.if.end5.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %gpi_dev.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %gpi_dev.i, align 4
  %dev3.i.i = getelementptr inbounds %struct.gpi_dev, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %dev3.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev3.i.i, align 4
  %44 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %irq.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.54, i32 noundef %45, i32 noundef %call.i.i.i) #12
  br label %gpi_config_interrupts.exit.i

if.end5.i.i:                                      ; preds = %if.then.i.i.if.end5.i.i_crit_edge, %if.then19.if.end5.i.i_crit_edge
  %46 = ptrtoint ptr %cntxt_type_irq_msk.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cntxt_type_irq_msk.i.i, align 4
  %and.i.i = and i32 %47, -9
  store i32 %and.i.i, ptr %cntxt_type_irq_msk.i.i, align 4
  %48 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %data, align 4
  %mul.i.i = shl i32 %49, 14
  %add.i.i = add i32 %mul.i.i, 143496
  %50 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %51, i32 %add.i.i
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #9, !srcloc !338
  %53 = and i32 %52, -2130706433
  %54 = tail call i32 @llvm.bswap.i32(i32 %53) #9
  %55 = and i32 %47, 119
  %or.i.i.i = or i32 %54, %55
  %56 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %56) #9, !srcloc !335
  %57 = ptrtoint ptr %configured_irq.i.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 1, ptr %configured_irq.i.i, align 4
  br label %gpi_config_interrupts.exit.i

gpi_config_interrupts.exit.i:                     ; preds = %if.end5.i.i, %do.end.i.i
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i4.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i4.i, label %if.then.i5.i, label %gpi_config_interrupts.exit.i.gpi_process_ieob.exit_crit_edge

gpi_config_interrupts.exit.i.gpi_process_ieob.exit_crit_edge: ; preds = %gpi_config_interrupts.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gpi_process_ieob.exit

if.then.i5.i:                                     ; preds = %gpi_config_interrupts.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__tasklet_hi_schedule(ptr noundef %ev_task.i) #9
  br label %gpi_process_ieob.exit

gpi_process_ieob.exit:                            ; preds = %if.then.i5.i, %gpi_config_interrupts.exit.i.gpi_process_ieob.exit_crit_edge
  %and20 = and i32 %type.1, -9
  br label %if.end21

if.end21:                                         ; preds = %gpi_process_ieob.exit, %if.end16.if.end21_crit_edge
  %type.2 = phi i32 [ %and20, %gpi_process_ieob.exit ], [ %type.1, %if.end16.if.end21_crit_edge ]
  %and22 = and i32 %type.2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end21.if.end101_crit_edge, label %if.then24

if.end21.if.end101_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end101

if.then24:                                        ; preds = %if.end21
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gpi_handle_irq.__UNIQUE_ID_ddebug265, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gpi_handle_irq, %do.end37)) #9
          to label %if.then32 [label %do.end37], !srcloc !334

if.then32:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  %58 = ptrtoint ptr %gpi_dev.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %gpi_dev.i, align 4
  %dev34 = getelementptr inbounds %struct.gpi_dev, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev34, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gpi_handle_irq.__UNIQUE_ID_ddebug265, ptr noundef %61, ptr noundef nonnull @.str.58) #9
  br label %do.end37

do.end37:                                         ; preds = %if.then32, %if.then24
  %62 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regs, align 4
  %add.ptr41 = getelementptr i8, ptr %63, i32 %add39
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41) #9, !srcloc !338
  %65 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regs, align 4
  %add.ptr46 = getelementptr i8, ptr %66, i32 %add44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46, i32 %64) #9, !srcloc !335
  %67 = ptrtoint ptr %ev_cntxt_base_reg to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ev_cntxt_base_reg, align 4
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %68) #9, !srcloc !338
  %70 = lshr i32 %69, 12
  %shr = and i32 %70, 15
  %71 = ptrtoint ptr %gpi_cmd to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %gpi_cmd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %72)
  %cmp66 = icmp eq i32 %72, 10
  %spec.store.select = select i1 %cmp66, i32 0, i32 %shr
  %73 = ptrtoint ptr %ev_state70 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %spec.store.select, ptr %ev_state70, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gpi_handle_irq.__UNIQUE_ID_ddebug271, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gpi_handle_irq, %do.end99)) #9
          to label %if.then85 [label %do.end99], !srcloc !334

if.then85:                                        ; preds = %do.end37
  %74 = ptrtoint ptr %gpi_dev.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %gpi_dev.i, align 4
  %dev87 = getelementptr inbounds %struct.gpi_dev, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %dev87 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev87, align 4
  %78 = ptrtoint ptr %ev_state70 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %ev_state70, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %79)
  %cmp89 = icmp ugt i32 %79, 1
  br i1 %cmp89, label %if.then85.cond.end95_crit_edge, label %cond.false92

if.then85.cond.end95_crit_edge:                   ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end95

cond.false92:                                     ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx94 = getelementptr [2 x ptr], ptr @gpi_ev_state_str, i32 0, i32 %79
  %80 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx94, align 4
  br label %cond.end95

cond.end95:                                       ; preds = %cond.false92, %if.then85.cond.end95_crit_edge
  %cond96 = phi ptr [ %81, %cond.false92 ], [ @.str.25, %if.then85.cond.end95_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gpi_handle_irq.__UNIQUE_ID_ddebug271, ptr noundef %77, ptr noundef nonnull @.str.59, ptr noundef %cond96) #9
  br label %do.end99

do.end99:                                         ; preds = %cond.end95, %do.end37
  tail call void @complete_all(ptr noundef %cmd_completion) #9
  %and100 = and i32 %type.2, -3
  br label %if.end101

if.end101:                                        ; preds = %do.end99, %if.end21.if.end101_crit_edge
  %type.3 = phi i32 [ %and100, %do.end99 ], [ %type.2, %if.end21.if.end101_crit_edge ]
  %and102 = and i32 %type.3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and102)
  %tobool103.not = icmp eq i32 %and102, 0
  br i1 %tobool103.not, label %if.end101.if.end126_crit_edge, label %do.body105

if.end101.if.end126_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end126

do.body105:                                       ; preds = %if.end101
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gpi_handle_irq.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gpi_handle_irq, %do.end124)) #9
          to label %if.then119 [label %do.end124], !srcloc !334

if.then119:                                       ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #11
  %82 = ptrtoint ptr %gpi_dev.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %gpi_dev.i, align 4
  %dev121 = getelementptr inbounds %struct.gpi_dev, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %dev121 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev121, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gpi_handle_irq.__UNIQUE_ID_ddebug272, ptr noundef %85, ptr noundef nonnull @.str.60) #9
  br label %do.end124

do.end124:                                        ; preds = %if.then119, %do.body105
  %86 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %data, align 4
  %mul.i206 = shl i32 %87, 14
  %add.i207 = add i32 %mul.i206, 143504
  %88 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %regs, align 4
  %add.ptr.i209 = getelementptr i8, ptr %89, i32 %add.i207
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i209) #9, !srcloc !338
  %91 = tail call i32 @llvm.bswap.i32(i32 %90) #9
  %add3.i210 = add i32 %mul.i206, 143520
  %92 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %regs, align 4
  %add.ptr5.i211 = getelementptr i8, ptr %93, i32 %add3.i210
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i211, i32 %90) #9, !srcloc !335
  %and.i = and i32 %91, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i212 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i212, label %do.end124.for.inc.i_crit_edge, label %if.end.i213

do.end124.for.inc.i_crit_edge:                    ; preds = %do.end124
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end.i213:                                      ; preds = %do.end124
  %94 = ptrtoint ptr %ch_cntxt_base_reg.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %ch_cntxt_base_reg.i, align 4
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %95) #9, !srcloc !338
  %97 = lshr i32 %96, 12
  %shr.i = and i32 %97, 15
  %98 = ptrtoint ptr %gpi_cmd to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %gpi_cmd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %99)
  %cmp22.i = icmp eq i32 %99, 4
  %spec.store.select.i = select i1 %cmp22.i, i32 0, i32 %shr.i
  %100 = ptrtoint ptr %ch_state.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %spec.store.select.i, ptr %ch_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %spec.store.select.i)
  %cmp26.not.i = icmp eq i32 %spec.store.select.i, 4
  br i1 %cmp26.not.i, label %if.end.i213.for.inc.i_crit_edge, label %if.then27.i

if.end.i213.for.inc.i_crit_edge:                  ; preds = %if.end.i213
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then27.i:                                      ; preds = %if.end.i213
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @complete_all(ptr noundef %cmd_completion) #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then27.i, %if.end.i213.for.inc.i_crit_edge, %do.end124.for.inc.i_crit_edge
  %and.1.i = and i32 %91, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i)
  %tobool.not.1.i = icmp eq i32 %and.1.i, 0
  br i1 %tobool.not.1.i, label %for.inc.i.gpi_process_ch_ctrl_irq.exit_crit_edge, label %if.end.1.i

for.inc.i.gpi_process_ch_ctrl_irq.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gpi_process_ch_ctrl_irq.exit

if.end.1.i:                                       ; preds = %for.inc.i
  %101 = ptrtoint ptr %ch_cntxt_base_reg.1.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %ch_cntxt_base_reg.1.i, align 4
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %102) #9, !srcloc !338
  %104 = lshr i32 %103, 12
  %shr.1.i = and i32 %104, 15
  %105 = ptrtoint ptr %gpi_cmd to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %gpi_cmd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %106)
  %cmp22.1.i = icmp eq i32 %106, 4
  %spec.store.select.1.i = select i1 %cmp22.1.i, i32 0, i32 %shr.1.i
  %107 = ptrtoint ptr %ch_state.1.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %spec.store.select.1.i, ptr %ch_state.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %spec.store.select.1.i)
  %cmp26.not.1.i = icmp eq i32 %spec.store.select.1.i, 4
  br i1 %cmp26.not.1.i, label %if.end.1.i.gpi_process_ch_ctrl_irq.exit_crit_edge, label %if.then27.1.i

if.end.1.i.gpi_process_ch_ctrl_irq.exit_crit_edge: ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gpi_process_ch_ctrl_irq.exit

if.then27.1.i:                                    ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @complete_all(ptr noundef %cmd_completion) #9
  br label %gpi_process_ch_ctrl_irq.exit

gpi_process_ch_ctrl_irq.exit:                     ; preds = %if.then27.1.i, %if.end.1.i.gpi_process_ch_ctrl_irq.exit_crit_edge, %for.inc.i.gpi_process_ch_ctrl_irq.exit_crit_edge
  %and125 = and i32 %type.3, -2
  br label %if.end126

if.end126:                                        ; preds = %gpi_process_ch_ctrl_irq.exit, %if.end101.if.end126_crit_edge
  %type.4 = phi i32 [ %and125, %gpi_process_ch_ctrl_irq.exit ], [ %type.3, %if.end101.if.end126_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type.4)
  %tobool127.not = icmp eq i32 %type.4, 0
  br i1 %tobool127.not, label %if.end134, label %do.end131

do.end131:                                        ; preds = %if.end126
  %108 = ptrtoint ptr %gpi_dev.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %gpi_dev.i, align 4
  %dev133 = getelementptr inbounds %struct.gpi_dev, ptr %109, i32 0, i32 1
  %110 = ptrtoint ptr %dev133 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %dev133, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %111, ptr noundef nonnull @.str.62, i32 noundef %type.4) #12
  %112 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %data, align 4
  %mul.i214 = shl i32 %113, 14
  %add.i215 = add i32 %mul.i214, 143640
  %114 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %regs, align 4
  %add.ptr.i217 = getelementptr i8, ptr %115, i32 %add.i215
  %116 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i217) #9, !srcloc !338
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gpi_process_gen_err_irq.__UNIQUE_ID_ddebug264, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gpi_handle_irq, %gpi_process_gen_err_irq.exit)) #9
          to label %if.then.i [label %gpi_process_gen_err_irq.exit], !srcloc !334

if.then.i:                                        ; preds = %do.end131
  call void @__sanitizer_cov_trace_pc() #11
  %117 = tail call i32 @llvm.bswap.i32(i32 %116) #9
  %118 = ptrtoint ptr %gpi_dev.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %gpi_dev.i, align 4
  %dev.i219 = getelementptr inbounds %struct.gpi_dev, ptr %119, i32 0, i32 1
  %120 = ptrtoint ptr %dev.i219 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %dev.i219, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gpi_process_gen_err_irq.__UNIQUE_ID_ddebug264, ptr noundef %121, ptr noundef nonnull @.str.69, i32 noundef %117) #9
  br label %gpi_process_gen_err_irq.exit

gpi_process_gen_err_irq.exit:                     ; preds = %if.then.i, %do.end131
  %add7.i220 = add i32 %mul.i214, 143656
  %122 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %regs, align 4
  %add.ptr9.i221 = getelementptr i8, ptr %123, i32 %add7.i220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i221, i32 %116) #9, !srcloc !335
  br label %do.body144

if.end134:                                        ; preds = %if.end126
  %124 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %data, align 4
  %mul136 = shl i32 %125, 14
  %add137 = add i32 %mul136, 143488
  %126 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %regs, align 4
  %add.ptr139 = getelementptr i8, ptr %127, i32 %add137
  %128 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr139) #9, !srcloc !338
  %129 = tail call i32 @llvm.bswap.i32(i32 %128) #9
  %tobool142.not = icmp eq i32 %128, 0
  br i1 %tobool142.not, label %if.end134.do.body144_crit_edge, label %if.end134.do.body13_crit_edge

if.end134.do.body13_crit_edge:                    ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body13

if.end134.do.body144_crit_edge:                   ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body144

do.body144:                                       ; preds = %if.end134.do.body144_crit_edge, %gpi_process_gen_err_irq.exit, %do.end6
  tail call void @_raw_read_unlock_irqrestore(ptr noundef %pm_lock, i32 noundef %call) #9
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_read_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete_all(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_hi_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gpi_alloc_ring(ptr noundef %ring, i32 noundef %elements, ptr nocapture noundef readonly %gpii) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %alloc_size = getelementptr inbounds %struct.gpi_ring, ptr %ring, i32 0, i32 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gpi_alloc_ring.__UNIQUE_ID_ddebug332, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gpi_alloc_ring, %do.end)) #9
          to label %if.then11 [label %do.end], !srcloc !334

if.then11:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %mul = shl i32 %elements, 4
  %gpi_dev = getelementptr inbounds %struct.gpii, ptr %gpii, i32 0, i32 2
  %0 = ptrtoint ptr %gpi_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpi_dev, align 4
  %dev = getelementptr inbounds %struct.gpi_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %4 = ptrtoint ptr %alloc_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %alloc_size, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gpi_alloc_ring.__UNIQUE_ID_ddebug332, ptr noundef %3, ptr noundef nonnull @.str.72, i32 noundef %elements, i32 noundef 16, i32 noundef %mul, i64 noundef poison, i32 noundef %5) #9
  br label %do.end

do.end:                                           ; preds = %if.then11, %entry
  %gpi_dev15 = getelementptr inbounds %struct.gpii, ptr %gpii, i32 0, i32 2
  %6 = ptrtoint ptr %gpi_dev15 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gpi_dev15, align 4
  %dev16 = getelementptr inbounds %struct.gpi_dev, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev16, align 4
  %10 = ptrtoint ptr %alloc_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %alloc_size, align 4
  %dma_handle = getelementptr inbounds %struct.gpi_ring, ptr %ring, i32 0, i32 3
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %9, i32 noundef %11, ptr noundef %dma_handle, i32 noundef 3264, i32 noundef 0) #9
  %12 = ptrtoint ptr %ring to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %ring, align 4
  %tobool20.not = icmp eq ptr %call.i, null
  br i1 %tobool20.not, label %do.end24, label %if.end28

do.end24:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %gpi_dev15 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %gpi_dev15, align 4
  %dev26 = getelementptr inbounds %struct.gpi_dev, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev26, align 4
  %17 = ptrtoint ptr %alloc_size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %alloc_size, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.73, i32 noundef %18) #12
  br label %cleanup

if.end28:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %el_size44 = getelementptr inbounds %struct.gpi_ring, ptr %ring, i32 0, i32 8
  %19 = ptrtoint ptr %el_size44 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 16, ptr %el_size44, align 4
  %20 = call ptr @memset(ptr poison, i32 0, i32 poison)
  %configured = getelementptr inbounds %struct.gpi_ring, ptr %ring, i32 0, i32 10
  %21 = ptrtoint ptr %configured to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %configured, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !346
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gpi_alloc_ring.__UNIQUE_ID_ddebug333, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gpi_alloc_ring, %cleanup)) #9
          to label %if.then70 [label %cleanup], !srcloc !334

if.then70:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  %elements47 = getelementptr inbounds %struct.gpi_ring, ptr %ring, i32 0, i32 9
  %len43 = getelementptr inbounds %struct.gpi_ring, ptr %ring, i32 0, i32 7
  %phys_addr = getelementptr inbounds %struct.gpi_ring, ptr %ring, i32 0, i32 2
  %22 = ptrtoint ptr %gpi_dev15 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %gpi_dev15, align 4
  %dev72 = getelementptr inbounds %struct.gpi_dev, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %dev72 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev72, align 4
  %26 = ptrtoint ptr %len43 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len43, align 4
  %28 = ptrtoint ptr %el_size44 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %el_size44, align 4
  %30 = ptrtoint ptr %elements47 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %elements47, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gpi_alloc_ring.__UNIQUE_ID_ddebug333, ptr noundef %25, ptr noundef nonnull @.str.74, ptr noundef %dma_handle, ptr noundef %phys_addr, i32 noundef %27, i32 noundef %29, i32 noundef %31) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then70, %if.end28, %do.end24
  %retval.0 = phi i32 [ -12, %do.end24 ], [ 0, %if.then70 ], [ 0, %if.end28 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gpi_alloc_ev_chan(ptr noundef %gpii) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ev_cntxt_base_reg = getelementptr inbounds %struct.gpii, ptr %gpii, i32 0, i32 5
  %0 = ptrtoint ptr %ev_cntxt_base_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ev_cntxt_base_reg, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gpi_send_cmd.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gpi_alloc_ev_chan, %do.end.i)) #9
          to label %if.then8.i [label %do.end.i], !srcloc !334

if.then8.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %gpi_dev.i = getelementptr inbounds %struct.gpii, ptr %gpii, i32 0, i32 2
  %2 = ptrtoint ptr %gpi_dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpi_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.gpi_dev, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gpi_send_cmd.__UNIQUE_ID_ddebug238, ptr noundef %5, ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.99, i32 noundef 2) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then8.i, %entry
  %cmd_completion.i = getelementptr inbounds %struct.gpii, ptr %gpii, i32 0, i32 17
  %6 = ptrtoint ptr %cmd_completion.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %cmd_completion.i, align 4
  %gpi_cmd11.i = getelementptr inbounds %struct.gpii, ptr %gpii, i32 0, i32 18
  %7 = ptrtoint ptr %gpi_cmd11.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 8, ptr %gpi_cmd11.i, align 4
  %ev_cmd_reg.i = getelementptr inbounds %struct.gpii, ptr %gpii, i32 0, i32 8
  %8 = ptrtoint ptr %ev_cmd_reg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %cond16.i = load ptr, ptr %ev_cmd_reg.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cond16.i, i32 0) #9, !srcloc !335
  %call122.i = tail call i32 @wait_for_completion_timeout(ptr noundef %cmd_completion.i, i32 noundef 25) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122.i)
  %tobool123.not.i = icmp eq i32 %call122.i, 0
  br i1 %tobool123.not.i, label %do.end127.i, label %if.end136.i

do.end127.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %gpi_dev128.i = getelementptr inbounds %struct.gpii, ptr %gpii, i32 0, i32 2
  %9 = ptrtoint ptr %gpi_dev128.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %gpi_dev128.i, align 4
  %dev129.i = getelementptr inbounds %struct.gpi_dev, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %dev129.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev129.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.99, i32 noundef 2) #12
  br label %do.end

if.end136.i:                                      ; preds = %do.end.i
  %ev_state.i = getelementptr inbounds %struct.gpii, ptr %gpii, i32 0, i32 11
  %13 = ptrtoint ptr %ev_state.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ev_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp151.i = icmp eq i32 %14, 1
  br i1 %cmp151.i, label %do.end19, label %if.end136.i.do.end_crit_edge

if.end136.i.do.end_crit_edge:                     ; preds = %if.end136.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %if.end136.i.do.end_crit_edge, %do.end127.i
  %gpi_dev = getelementptr inbounds %struct.gpii, ptr %gpii, i32 0, i32 2
  %15 = ptrtoint ptr %gpi_dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %gpi_dev, align 4
  %dev = getelementptr inbounds %struct.gpi_dev, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.99, i32 noundef -5) #12
  br label %cleanup

do.end19:                                         ; preds = %if.end136.i
  call void @__sanitizer_cov_trace_pc() #11
  %el_size = getelementptr inbounds %struct.gpii, ptr %gpii, i32 0, i32 15, i32 8
  %19 = ptrtoint ptr %el_size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %el_size, align 4
  %shl = shl i32 %20, 24
  %or54 = or i32 %shl, 65538
  %21 = tail call i32 @llvm.bswap.i32(i32 %or54) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %21) #9, !srcloc !335
  %add.ptr55 = getelementptr i8, ptr %1, i32 4
  %len = getelementptr inbounds %struct.gpii, ptr %gpii, i32 0, i32 15, i32 7
  %22 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr55, i32 %24) #9, !srcloc !335
  %add.ptr56 = getelementptr i8, ptr %1, i32 8
  %phys_addr = getelementptr inbounds %struct.gpii, ptr %gpii, i32 0, i32 15, i32 2
  %25 = ptrtoint ptr %phys_addr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %phys_addr, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr56, i32 %27) #9, !srcloc !335
  %add.ptr58 = getelementptr i8, ptr %1, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr58, i32 0) #9, !srcloc !335
  %ev_cntxt_db_reg = getelementptr inbounds %struct.gpii, ptr %gpii, i32 0, i32 6
  %28 = ptrtoint ptr %ev_cntxt_db_reg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ev_cntxt_db_reg, align 4
  %add.ptr62 = getelementptr i8, ptr %29, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr62, i32 0) #9, !srcloc !335
  %add.ptr66 = getelementptr i8, ptr %1, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr66, i32 0) #9, !srcloc !335
  %add.ptr67 = getelementptr i8, ptr %1, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr67, i32 0) #9, !srcloc !335
  %add.ptr68 = getelementptr i8, ptr %1, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr68, i32 0) #9, !srcloc !335
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr66, i32 0) #9, !srcloc !335
  %add.ptr70 = getelementptr i8, ptr %1, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr70, i32 0) #9, !srcloc !335
  %add.ptr71 = getelementptr i8, ptr %1, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr71, i32 0) #9, !srcloc !335
  %base72 = getelementptr inbounds %struct.gpii, ptr %gpii, i32 0, i32 15, i32 4
  %30 = ptrtoint ptr %base72 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base72, align 4
  %32 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %len, align 4
  %add.ptr74 = getelementptr i8, ptr %31, i32 %33
  %34 = ptrtoint ptr %el_size to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %el_size, align 4
  %idx.neg = sub i32 0, %35
  %add.ptr76 = getelementptr i8, ptr %add.ptr74, i32 %idx.neg
  %wp = getelementptr inbounds %struct.gpii, ptr %gpii, i32 0, i32 15, i32 5
  %36 = ptrtoint ptr %wp to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %add.ptr76, ptr %wp, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !347
  tail call void @arm_heavy_mb() #9
  %pm_lock = getelementptr inbounds %struct.gpii, ptr %gpii, i32 0, i32 14
  tail call void @_raw_write_lock_irq(ptr noundef %pm_lock) #9
  %pm_state = getelementptr inbounds %struct.gpii, ptr %gpii, i32 0, i32 13
  %37 = ptrtoint ptr %pm_state to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 3, ptr %pm_state, align 4
  tail call void @_raw_write_unlock_irq(ptr noundef %pm_lock) #9
  %38 = ptrtoint ptr %wp to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %wp, align 4
  %40 = ptrtoint ptr %phys_addr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %phys_addr, align 4
  %42 = ptrtoint ptr %base72 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base72, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %39 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %43 to i32
  %sub.ptr.sub.i = add i32 %41, %sub.ptr.lhs.cast.i
  %add.i = sub i32 %sub.ptr.sub.i, %sub.ptr.rhs.cast.i
  %44 = ptrtoint ptr %ev_cntxt_db_reg to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ev_cntxt_db_reg, align 4
  %46 = tail call i32 @llvm.bswap.i32(i32 %add.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %46) #9, !srcloc !335
  br label %cleanup

cleanup:                                          ; preds = %do.end19, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ 0, %do.end19 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gpi_alloc_chan(ptr nocapture noundef readonly %chan, i1 noundef zeroext %send_alloc_cmd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %gpii1 = getelementptr inbounds %struct.gchan, ptr %chan, i32 0, i32 4
  %0 = ptrtoint ptr %gpii1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpii1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %chid2 = getelementptr inbounds %struct.gchan, ptr %chan, i32 0, i32 1
  %4 = ptrtoint ptr %chid2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chid2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %send_alloc_cmd, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @gpi_send_cmd(ptr noundef %1, ptr noundef %chan, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.then.if.end6_crit_edge, label %do.end

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %gpi_dev = getelementptr inbounds %struct.gpii, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %gpi_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gpi_dev, align 4
  %dev = getelementptr inbounds %struct.gpi_dev, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.91, i32 noundef %call) #12
  br label %cleanup

if.end6:                                          ; preds = %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %ch_cntxt_base_reg = getelementptr inbounds %struct.gchan, ptr %chan, i32 0, i32 7
  %10 = ptrtoint ptr %ch_cntxt_base_reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ch_cntxt_base_reg, align 4
  %el_size = getelementptr inbounds %struct.gchan, ptr %chan, i32 0, i32 11, i32 8
  %12 = ptrtoint ptr %el_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %el_size, align 4
  %dir = getelementptr inbounds %struct.gchan, ptr %chan, i32 0, i32 10
  %14 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dir, align 4
  %shl = shl i32 %13, 24
  %shl68 = shl i32 %15, 3
  %and69 = and i32 %shl68, 8
  %or70 = or i32 %and69, %shl
  %or87 = or i32 %or70, 2
  %16 = tail call i32 @llvm.bswap.i32(i32 %or87) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %16) #9, !srcloc !335
  %17 = ptrtoint ptr %ch_cntxt_base_reg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ch_cntxt_base_reg, align 4
  %add.ptr89 = getelementptr i8, ptr %18, i32 4
  %len = getelementptr inbounds %struct.gchan, ptr %chan, i32 0, i32 11, i32 7
  %19 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr89, i32 %21) #9, !srcloc !335
  %22 = ptrtoint ptr %ch_cntxt_base_reg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ch_cntxt_base_reg, align 4
  %add.ptr91 = getelementptr i8, ptr %23, i32 8
  %phys_addr = getelementptr inbounds %struct.gchan, ptr %chan, i32 0, i32 11, i32 2
  %24 = ptrtoint ptr %phys_addr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %phys_addr, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr91, i32 %26) #9, !srcloc !335
  %27 = ptrtoint ptr %ch_cntxt_base_reg to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ch_cntxt_base_reg, align 4
  %add.ptr93 = getelementptr i8, ptr %28, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr93, i32 0) #9, !srcloc !335
  %ch_cntxt_db_reg = getelementptr inbounds %struct.gchan, ptr %chan, i32 0, i32 8
  %29 = ptrtoint ptr %ch_cntxt_db_reg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ch_cntxt_db_reg, align 4
  %add.ptr97 = getelementptr i8, ptr %30, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr97, i32 0) #9, !srcloc !335
  %regs = getelementptr inbounds %struct.gpii, ptr %1, i32 0, i32 4
  %31 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs, align 4
  %mul = shl i32 %3, 14
  %mul101 = shl i32 %5, 7
  %add = add i32 %mul101, %mul
  %add102 = add i32 %add, 131168
  %add.ptr103 = getelementptr i8, ptr %32, i32 %add102
  %protocol = getelementptr inbounds %struct.gchan, ptr %chan, i32 0, i32 3
  %33 = ptrtoint ptr %protocol to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %protocol, align 4
  %seid = getelementptr inbounds %struct.gchan, ptr %chan, i32 0, i32 2
  %35 = ptrtoint ptr %seid to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %seid, align 4
  %shl126 = select i1 %tobool.not, i32 65536, i32 0
  %shl152 = shl i32 %34, 4
  %and153 = and i32 %shl152, 240
  %or154 = or i32 %and153, %shl126
  %and180 = and i32 %36, 7
  %or181 = or i32 %or154, %and180
  %37 = tail call i32 @llvm.bswap.i32(i32 %or181) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr103, i32 %37) #9, !srcloc !335
  %38 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs, align 4
  %add186 = add i32 %add, 131172
  %add.ptr187 = getelementptr i8, ptr %39, i32 %add186
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr187, i32 0) #9, !srcloc !335
  %40 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs, align 4
  %add192 = add i32 %add, 131176
  %add.ptr193 = getelementptr i8, ptr %41, i32 %add192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr193, i32 0) #9, !srcloc !335
  %42 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs, align 4
  %add198 = add i32 %add, 131180
  %add.ptr199 = getelementptr i8, ptr %43, i32 %add198
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr199, i32 0) #9, !srcloc !335
  %44 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs, align 4
  %add204 = add i32 %add, 131164
  %add.ptr205 = getelementptr i8, ptr %45, i32 %add204
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr205, i32 16777216) #9, !srcloc !335
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !348
  tail call void @arm_heavy_mb() #9
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gpi_send_cmd(ptr noundef %gpii, ptr nocapture noundef readonly %gchan, i32 noundef %gpi_cmd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %gpi_cmd)
  %cmp1 = icmp ult i32 %gpi_cmd, 8
  br i1 %cmp1, label %if.then2, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %chid3 = getelementptr inbounds %struct.gchan, ptr %gchan, i32 0, i32 1
  %0 = ptrtoint ptr %chid3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chid3, align 4
  br label %do.body

do.body:                                          ; preds = %if.then2, %entry.do.body_crit_edge
  %chid.0 = phi i32 [ %1, %if.then2 ], [ 2, %entry.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gpi_send_cmd.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gpi_send_cmd, %do.end)) #9
          to label %if.then8 [label %do.end], !srcloc !334

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %gpi_dev = getelementptr inbounds %struct.gpii, ptr %gpii, i32 0, i32 2
  %2 = ptrtoint ptr %gpi_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpi_dev, align 4
  %dev = getelementptr inbounds %struct.gpi_dev, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %arrayidx = getelementptr [11 x ptr], ptr @gpi_cmd_str, i32 0, i32 %gpi_cmd
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gpi_send_cmd.__UNIQUE_ID_ddebug238, ptr noundef %5, ptr noundef nonnull @.str.107, ptr noundef %7, i32 noundef %chid.0) #9
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  %cmd_completion = getelementptr inbounds %struct.gpii, ptr %gpii, i32 0, i32 17
  %8 = ptrtoint ptr %cmd_completion to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %cmd_completion, align 4
  %gpi_cmd11 = getelementptr inbounds %struct.gpii, ptr %gpii, i32 0, i32 18
  %9 = ptrtoint ptr %gpi_cmd11 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %gpi_cmd, ptr %gpi_cmd11, align 4
  %ch_cmd_reg = getelementptr inbounds %struct.gchan, ptr %gchan, i32 0, i32 9
  %ev_cmd_reg = getelementptr inbounds %struct.gpii, ptr %gpii, i32 0, i32 8
  %cond16.in = select i1 %cmp1, ptr %ch_cmd_reg, ptr %ev_cmd_reg
  %10 = ptrtoint ptr %cond16.in to i32
  call void @__asan_load4_noabort(i32 %10)
  %cond16 = load ptr, ptr %cond16.in, align 4
  %opcode = getelementptr [11 x %struct.anon.76], ptr @gpi_cmd_info, i32 0, i32 %gpi_cmd, i32 1
  %11 = ptrtoint ptr %opcode to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %opcode, align 4
  %shl = shl i32 %12, 24
  %and69 = and i32 %chid.0, 255
  %or = select i1 %cmp1, i32 %and69, i32 0
  %cond119 = or i32 %shl, %or
  %13 = tail call i32 @llvm.bswap.i32(i32 %cond119) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cond16, i32 %13) #9, !srcloc !335
  %call122 = tail call i32 @wait_for_completion_timeout(ptr noundef %cmd_completion, i32 noundef 25) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %do.end127, label %if.end136

do.end127:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %gpi_dev128 = getelementptr inbounds %struct.gpii, ptr %gpii, i32 0, i32 2
  %14 = ptrtoint ptr %gpi_dev128 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %gpi_dev128, align 4
  %dev129 = getelementptr inbounds %struct.gpi_dev, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %dev129 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev129, align 4
  %arrayidx133 = getelementptr [11 x ptr], ptr @gpi_cmd_str, i32 0, i32 %gpi_cmd
  %18 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx133, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.108, ptr noundef %19, i32 noundef %chid.0) #12
  br label %cleanup

if.end136:                                        ; preds = %do.end
  %state = getelementptr [11 x %struct.anon.76], ptr @gpi_cmd_info, i32 0, i32 %gpi_cmd, i32 2
  %20 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %state, align 4
  %22 = and i32 %gpi_cmd, 1073741823
  %23 = add nsw i32 %22, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %23)
  %cmp138 = icmp ult i32 %23, 3
  br i1 %cmp138, label %if.end136.cleanup_crit_edge, label %if.end140

if.end136.cleanup_crit_edge:                      ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end140:                                        ; preds = %if.end136
  br i1 %cmp1, label %land.lhs.true, label %land.lhs.true148.critedge

land.lhs.true:                                    ; preds = %if.end140
  %ch_state = getelementptr inbounds %struct.gchan, ptr %gchan, i32 0, i32 5
  %24 = ptrtoint ptr %ch_state to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ch_state, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %21)
  %cmp144 = icmp eq i32 %25, %21
  br i1 %cmp144, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end153_crit_edge

land.lhs.true.if.end153_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end153

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true148.critedge:                        ; preds = %if.end140
  %ev_state = getelementptr inbounds %struct.gpii, ptr %gpii, i32 0, i32 11
  %26 = ptrtoint ptr %ev_state to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ev_state, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %21)
  %cmp151 = icmp eq i32 %27, %21
  br i1 %cmp151, label %land.lhs.true148.critedge.cleanup_crit_edge, label %land.lhs.true148.critedge.if.end153_crit_edge

land.lhs.true148.critedge.if.end153_crit_edge:    ; preds = %land.lhs.true148.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end153

land.lhs.true148.critedge.cleanup_crit_edge:      ; preds = %land.lhs.true148.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end153:                                        ; preds = %land.lhs.true148.critedge.if.end153_crit_edge, %land.lhs.true.if.end153_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end153, %land.lhs.true148.critedge.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end136.cleanup_crit_edge, %do.end127
  %retval.0 = phi i32 [ -5, %if.end153 ], [ -5, %do.end127 ], [ 0, %if.end136.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %land.lhs.true148.critedge.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gpi_reset_chan(ptr noundef %gchan, i32 noundef %gpi_cmd) unnamed_addr #2 align 64 {
entry:
  %list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %gpii1 = getelementptr inbounds %struct.gchan, ptr %gchan, i32 0, i32 4
  %0 = ptrtoint ptr %gpii1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpii1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list) #9
  %2 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %3 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %list, ptr %list, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %list, ptr %2, align 4
  %call = call fastcc i32 @gpi_send_cmd(ptr noundef %1, ptr noundef %gchan, i32 noundef %gpi_cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %gpi_dev = getelementptr inbounds %struct.gpii, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %gpi_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %gpi_dev, align 4
  %dev = getelementptr inbounds %struct.gpi_dev, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %arrayidx = getelementptr [11 x ptr], ptr @gpi_cmd_str, i32 0, i32 %gpi_cmd
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.102, ptr noundef %10, i32 noundef %call) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %base = getelementptr inbounds %struct.gchan, ptr %gchan, i32 0, i32 11, i32 4
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base, align 4
  %rp = getelementptr inbounds %struct.gchan, ptr %gchan, i32 0, i32 11, i32 6
  %13 = ptrtoint ptr %rp to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %rp, align 4
  %wp = getelementptr inbounds %struct.gchan, ptr %gchan, i32 0, i32 11, i32 5
  %14 = ptrtoint ptr %wp to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %12, ptr %wp, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !349
  %pm_lock = getelementptr inbounds %struct.gpii, ptr %1, i32 0, i32 14
  call void @_raw_write_lock_irq(ptr noundef %pm_lock) #9
  %15 = ptrtoint ptr %gpii1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %gpii1, align 4
  %ev_ring_rp_lsb_reg.i = getelementptr inbounds %struct.gpii, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %ev_ring_rp_lsb_reg.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ev_ring_rp_lsb_reg.i, align 4
  %19 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #9, !srcloc !338
  %20 = call i32 @llvm.bswap.i32(i32 %19) #9
  %rp.i = getelementptr inbounds %struct.gpii, ptr %16, i32 0, i32 15, i32 6
  %21 = ptrtoint ptr %rp.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rp.i, align 4
  %phys_addr.i.i = getelementptr inbounds %struct.gpii, ptr %16, i32 0, i32 15, i32 2
  %23 = ptrtoint ptr %phys_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %phys_addr.i.i, align 4
  %base.i.i = getelementptr inbounds %struct.gpii, ptr %16, i32 0, i32 15, i32 4
  %25 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %22 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %26 to i32
  %sub.ptr.sub.i.i = add i32 %24, %sub.ptr.lhs.cast.i.i
  %add.i.i = sub i32 %sub.ptr.sub.i.i, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %20)
  %cmp.not39.i = icmp eq i32 %add.i.i, %20
  br i1 %cmp.not39.i, label %if.end.gpi_mark_stale_events.exit_crit_edge, label %while.body.lr.ph.i

if.end.gpi_mark_stale_events.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %gpi_mark_stale_events.exit

while.body.lr.ph.i:                               ; preds = %if.end
  %chid5.i = getelementptr inbounds %struct.gchan, ptr %gchan, i32 0, i32 1
  %el_size.i = getelementptr inbounds %struct.gpii, ptr %16, i32 0, i32 15, i32 8
  %len.i = getelementptr inbounds %struct.gpii, ptr %16, i32 0, i32 15, i32 7
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %ev_rp.040.i = phi ptr [ %22, %while.body.lr.ph.i ], [ %spec.select.i, %if.end.i.while.body.i_crit_edge ]
  %chid4.i = getelementptr inbounds %struct.xfer_compl_event, ptr %ev_rp.040.i, i32 0, i32 5
  %27 = ptrtoint ptr %chid4.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %chid4.i, align 1
  %conv.i = zext i8 %28 to i32
  %29 = ptrtoint ptr %chid5.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %chid5.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %conv.i)
  %cmp6.i = icmp eq i32 %30, %conv.i
  br i1 %cmp6.i, label %if.then.i, label %while.body.i.if.end.i_crit_edge

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %type.i = getelementptr inbounds %struct.xfer_compl_event, ptr %ev_rp.040.i, i32 0, i32 4
  %31 = ptrtoint ptr %type.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 -1, ptr %type.i, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %while.body.i.if.end.i_crit_edge
  %32 = ptrtoint ptr %el_size.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %el_size.i, align 4
  %add.ptr.i = getelementptr i8, ptr %ev_rp.040.i, i32 %33
  %34 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base.i.i, align 4
  %36 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %len.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %35, i32 %37
  %cmp9.not.i = icmp ult ptr %add.ptr.i, %add.ptr8.i
  %spec.select.i = select i1 %cmp9.not.i, ptr %add.ptr.i, ptr %35
  %38 = ptrtoint ptr %ev_ring_rp_lsb_reg.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ev_ring_rp_lsb_reg.i, align 4
  %40 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #9, !srcloc !338
  %41 = call i32 @llvm.bswap.i32(i32 %40) #9
  %42 = ptrtoint ptr %phys_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %phys_addr.i.i, align 4
  %44 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base.i.i, align 4
  %sub.ptr.lhs.cast.i35.i = ptrtoint ptr %spec.select.i to i32
  %sub.ptr.rhs.cast.i36.i = ptrtoint ptr %45 to i32
  %sub.ptr.sub.i37.i = add i32 %43, %sub.ptr.lhs.cast.i35.i
  %add.i38.i = sub i32 %sub.ptr.sub.i37.i, %sub.ptr.rhs.cast.i36.i
  %cmp.not.i = icmp eq i32 %add.i38.i, %41
  br i1 %cmp.not.i, label %if.end.i.gpi_mark_stale_events.exit_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

if.end.i.gpi_mark_stale_events.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gpi_mark_stale_events.exit

gpi_mark_stale_events.exit:                       ; preds = %if.end.i.gpi_mark_stale_events.exit_crit_edge, %if.end.gpi_mark_stale_events.exit_crit_edge
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %gchan, i32 0, i32 3
  %call14 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %gchan, i32 0, i32 4
  %46 = ptrtoint ptr %desc_allocated.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile ptr, ptr %desc_allocated.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %47, %desc_allocated.i
  br i1 %cmp.i.not.i.i, label %gpi_mark_stale_events.exit.list_splice_tail_init.exit.i_crit_edge, label %if.then.i.i

gpi_mark_stale_events.exit.list_splice_tail_init.exit.i_crit_edge: ; preds = %gpi_mark_stale_events.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit.i

if.then.i.i:                                      ; preds = %gpi_mark_stale_events.exit
  call void @__sanitizer_cov_trace_pc() #11
  %48 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %2, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %gchan, i32 0, i32 4, i32 1
  %50 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %prev2.i.i.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  %52 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %49, ptr %prev3.i.i.i, align 4
  %53 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %47, ptr %49, align 4
  %54 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %list, ptr %51, align 4
  store ptr %51, ptr %2, align 4
  %55 = ptrtoint ptr %desc_allocated.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %desc_allocated.i, ptr %desc_allocated.i, align 4
  store ptr %desc_allocated.i, ptr %prev2.i.i.i, align 4
  br label %list_splice_tail_init.exit.i

list_splice_tail_init.exit.i:                     ; preds = %if.then.i.i, %gpi_mark_stale_events.exit.list_splice_tail_init.exit.i_crit_edge
  %desc_submitted.i = getelementptr inbounds %struct.virt_dma_chan, ptr %gchan, i32 0, i32 5
  %56 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile ptr, ptr %desc_submitted.i, align 4
  %cmp.i.not.i9.i = icmp eq ptr %57, %desc_submitted.i
  br i1 %cmp.i.not.i9.i, label %list_splice_tail_init.exit.i.list_splice_tail_init.exit14.i_crit_edge, label %if.then.i13.i

list_splice_tail_init.exit.i.list_splice_tail_init.exit14.i_crit_edge: ; preds = %list_splice_tail_init.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit14.i

if.then.i13.i:                                    ; preds = %list_splice_tail_init.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %58 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %2, align 4
  %prev2.i.i11.i = getelementptr inbounds %struct.virt_dma_chan, ptr %gchan, i32 0, i32 5, i32 1
  %60 = ptrtoint ptr %prev2.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %prev2.i.i11.i, align 4
  %prev3.i.i12.i = getelementptr inbounds %struct.list_head, ptr %57, i32 0, i32 1
  %62 = ptrtoint ptr %prev3.i.i12.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %59, ptr %prev3.i.i12.i, align 4
  %63 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %57, ptr %59, align 4
  %64 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %list, ptr %61, align 4
  store ptr %61, ptr %2, align 4
  %65 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %desc_submitted.i, ptr %desc_submitted.i, align 4
  store ptr %desc_submitted.i, ptr %prev2.i.i11.i, align 4
  br label %list_splice_tail_init.exit14.i

list_splice_tail_init.exit14.i:                   ; preds = %if.then.i13.i, %list_splice_tail_init.exit.i.list_splice_tail_init.exit14.i_crit_edge
  %desc_issued.i = getelementptr inbounds %struct.virt_dma_chan, ptr %gchan, i32 0, i32 6
  %66 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile ptr, ptr %desc_issued.i, align 4
  %cmp.i.not.i15.i = icmp eq ptr %67, %desc_issued.i
  br i1 %cmp.i.not.i15.i, label %list_splice_tail_init.exit14.i.list_splice_tail_init.exit20.i_crit_edge, label %if.then.i19.i

list_splice_tail_init.exit14.i.list_splice_tail_init.exit20.i_crit_edge: ; preds = %list_splice_tail_init.exit14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit20.i

if.then.i19.i:                                    ; preds = %list_splice_tail_init.exit14.i
  call void @__sanitizer_cov_trace_pc() #11
  %68 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %2, align 4
  %prev2.i.i17.i = getelementptr inbounds %struct.virt_dma_chan, ptr %gchan, i32 0, i32 6, i32 1
  %70 = ptrtoint ptr %prev2.i.i17.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %prev2.i.i17.i, align 4
  %prev3.i.i18.i = getelementptr inbounds %struct.list_head, ptr %67, i32 0, i32 1
  %72 = ptrtoint ptr %prev3.i.i18.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %69, ptr %prev3.i.i18.i, align 4
  %73 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %67, ptr %69, align 4
  %74 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %list, ptr %71, align 4
  store ptr %71, ptr %2, align 4
  %75 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile ptr %desc_issued.i, ptr %desc_issued.i, align 4
  store ptr %desc_issued.i, ptr %prev2.i.i17.i, align 4
  br label %list_splice_tail_init.exit20.i

list_splice_tail_init.exit20.i:                   ; preds = %if.then.i19.i, %list_splice_tail_init.exit14.i.list_splice_tail_init.exit20.i_crit_edge
  %desc_completed.i = getelementptr inbounds %struct.virt_dma_chan, ptr %gchan, i32 0, i32 7
  %76 = ptrtoint ptr %desc_completed.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile ptr, ptr %desc_completed.i, align 4
  %cmp.i.not.i21.i = icmp eq ptr %77, %desc_completed.i
  br i1 %cmp.i.not.i21.i, label %list_splice_tail_init.exit20.i.list_splice_tail_init.exit26.i_crit_edge, label %if.then.i25.i

list_splice_tail_init.exit20.i.list_splice_tail_init.exit26.i_crit_edge: ; preds = %list_splice_tail_init.exit20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit26.i

if.then.i25.i:                                    ; preds = %list_splice_tail_init.exit20.i
  call void @__sanitizer_cov_trace_pc() #11
  %78 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %2, align 4
  %prev2.i.i23.i = getelementptr inbounds %struct.virt_dma_chan, ptr %gchan, i32 0, i32 7, i32 1
  %80 = ptrtoint ptr %prev2.i.i23.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %prev2.i.i23.i, align 4
  %prev3.i.i24.i = getelementptr inbounds %struct.list_head, ptr %77, i32 0, i32 1
  %82 = ptrtoint ptr %prev3.i.i24.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %79, ptr %prev3.i.i24.i, align 4
  %83 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %77, ptr %79, align 4
  %84 = ptrtoint ptr %81 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %list, ptr %81, align 4
  store ptr %81, ptr %2, align 4
  %85 = ptrtoint ptr %desc_completed.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store volatile ptr %desc_completed.i, ptr %desc_completed.i, align 4
  store ptr %desc_completed.i, ptr %prev2.i.i23.i, align 4
  br label %list_splice_tail_init.exit26.i

list_splice_tail_init.exit26.i:                   ; preds = %if.then.i25.i, %list_splice_tail_init.exit20.i.list_splice_tail_init.exit26.i_crit_edge
  %desc_terminated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %gchan, i32 0, i32 8
  %86 = ptrtoint ptr %desc_terminated.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile ptr, ptr %desc_terminated.i, align 4
  %cmp.i.not.i27.i = icmp eq ptr %87, %desc_terminated.i
  br i1 %cmp.i.not.i27.i, label %list_splice_tail_init.exit26.i.vchan_get_all_descriptors.exit_crit_edge, label %if.then.i31.i

list_splice_tail_init.exit26.i.vchan_get_all_descriptors.exit_crit_edge: ; preds = %list_splice_tail_init.exit26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_get_all_descriptors.exit

if.then.i31.i:                                    ; preds = %list_splice_tail_init.exit26.i
  call void @__sanitizer_cov_trace_pc() #11
  %88 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %2, align 4
  %prev2.i.i29.i = getelementptr inbounds %struct.virt_dma_chan, ptr %gchan, i32 0, i32 8, i32 1
  %90 = ptrtoint ptr %prev2.i.i29.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %prev2.i.i29.i, align 4
  %prev3.i.i30.i = getelementptr inbounds %struct.list_head, ptr %87, i32 0, i32 1
  %92 = ptrtoint ptr %prev3.i.i30.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %89, ptr %prev3.i.i30.i, align 4
  %93 = ptrtoint ptr %89 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %87, ptr %89, align 4
  %94 = ptrtoint ptr %91 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %list, ptr %91, align 4
  store ptr %91, ptr %2, align 4
  %95 = ptrtoint ptr %desc_terminated.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store volatile ptr %desc_terminated.i, ptr %desc_terminated.i, align 4
  store ptr %desc_terminated.i, ptr %prev2.i.i29.i, align 4
  br label %vchan_get_all_descriptors.exit

vchan_get_all_descriptors.exit:                   ; preds = %if.then.i31.i, %list_splice_tail_init.exit26.i.vchan_get_all_descriptors.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call14) #9
  call void @_raw_write_unlock_irq(ptr noundef %pm_lock) #9
  call void @vchan_dma_desc_free_list(ptr noundef %gchan, ptr noundef nonnull %list) #9
  br label %cleanup

cleanup:                                          ; preds = %vchan_get_all_descriptors.exit, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %vchan_get_all_descriptors.exit ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gpi_disable_interrupts(ptr noundef %gpii) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %gpii to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %gpii, align 4
  %mul = shl i32 %1, 14
  %add = add i32 %mul, 143496
  %regs.i = getelementptr inbounds %struct.gpii, ptr %gpii, i32 0, i32 4
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %add
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !338
  %5 = and i32 %4, -2130706433
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %5) #9, !srcloc !335
  %6 = ptrtoint ptr %gpii to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %gpii, align 4
  %mul2 = shl i32 %7, 14
  %add3 = add i32 %mul2, 143544
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 4
  %add.ptr.i38 = getelementptr i8, ptr %9, i32 %add3
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i38) #9, !srcloc !338
  %11 = and i32 %10, -16777217
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i38, i32 %11) #9, !srcloc !335
  %12 = ptrtoint ptr %gpii to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %gpii, align 4
  %mul5 = shl i32 %13, 14
  %add6 = add i32 %mul5, 143512
  %14 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i, align 4
  %add.ptr.i45 = getelementptr i8, ptr %15, i32 %add6
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i45) #9, !srcloc !338
  %17 = and i32 %16, -50331649
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i45, i32 %17) #9, !srcloc !335
  %18 = ptrtoint ptr %gpii to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %gpii, align 4
  %mul8 = shl i32 %19, 14
  %add9 = add i32 %mul8, 143516
  %20 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i, align 4
  %add.ptr.i52 = getelementptr i8, ptr %21, i32 %add9
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i52) #9, !srcloc !338
  %23 = and i32 %22, -16777217
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i52, i32 %23) #9, !srcloc !335
  %24 = ptrtoint ptr %gpii to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %gpii, align 4
  %mul11 = shl i32 %25, 14
  %add12 = add i32 %mul11, 143624
  %26 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i, align 4
  %add.ptr.i59 = getelementptr i8, ptr %27, i32 %add12
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i59) #9, !srcloc !338
  %29 = and i32 %28, -251658241
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59, i32 %29) #9, !srcloc !335
  %30 = ptrtoint ptr %gpii to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %gpii, align 4
  %mul14 = shl i32 %31, 14
  %add15 = add i32 %mul14, 143648
  %32 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs.i, align 4
  %add.ptr.i66 = getelementptr i8, ptr %33, i32 %add15
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i66) #9, !srcloc !338
  %35 = and i32 %34, -251658241
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i66, i32 %35) #9, !srcloc !335
  %36 = ptrtoint ptr %gpii to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %gpii, align 4
  %mul17 = shl i32 %37, 14
  %add18 = add i32 %mul17, 143744
  %38 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs.i, align 4
  %add.ptr.i73 = getelementptr i8, ptr %39, i32 %add18
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i73) #9, !srcloc !338
  %41 = and i32 %40, -16777217
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i73, i32 %41) #9, !srcloc !335
  %cntxt_type_irq_msk = getelementptr inbounds %struct.gpii, ptr %gpii, i32 0, i32 19
  %42 = ptrtoint ptr %cntxt_type_irq_msk to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %cntxt_type_irq_msk, align 4
  %gpi_dev = getelementptr inbounds %struct.gpii, ptr %gpii, i32 0, i32 2
  %43 = ptrtoint ptr %gpi_dev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %gpi_dev, align 4
  %dev = getelementptr inbounds %struct.gpi_dev, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev, align 4
  %irq = getelementptr inbounds %struct.gpii, ptr %gpii, i32 0, i32 3
  %47 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %irq, align 4
  tail call void @devm_free_irq(ptr noundef %46, i32 noundef %48, ptr noundef %gpii) #9
  %configured_irq = getelementptr inbounds %struct.gpii, ptr %gpii, i32 0, i32 12
  %49 = ptrtoint ptr %configured_irq to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %configured_irq, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchan_dma_desc_free_list(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gpi_create_spi_tre(ptr nocapture noundef readonly %chan, ptr nocapture noundef %desc, ptr nocapture noundef readonly %sgl, i32 noundef %direction) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %config = getelementptr inbounds %struct.gchan, ptr %chan, i32 0, i32 12
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config, align 4
  %gpii = getelementptr inbounds %struct.gchan, ptr %chan, i32 0, i32 4
  %2 = ptrtoint ptr %gpii to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpii, align 4
  %gpi_dev = getelementptr inbounds %struct.gpii, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %gpi_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gpi_dev, align 4
  %dev1 = getelementptr inbounds %struct.gpi_dev, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %direction)
  %cmp = icmp eq i32 %direction, 1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end86_crit_edge

entry.if.end86_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end86

land.lhs.true:                                    ; preds = %entry
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %land.lhs.true.if.then48_crit_edge, label %if.then

land.lhs.true.if.then48_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then48

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %tre2 = getelementptr inbounds %struct.gpi_desc, ptr %desc, i32 0, i32 4
  %word_len = getelementptr inbounds %struct.gpi_spi_config, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %word_len to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %word_len, align 1
  %12 = and i8 %11, 31
  %conv8.i = zext i8 %12 to i32
  %13 = ptrtoint ptr %tre2 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 %conv8.i, ptr %tre2, align 1
  %loopback_en = getelementptr inbounds %struct.gpi_spi_config, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %loopback_en to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %loopback_en, align 1
  %16 = and i8 %15, 1
  %and528.i202 = zext i8 %16 to i32
  %mul.i203 = shl nuw nsw i32 %and528.i202, 8
  %or = or i32 %mul.i203, %conv8.i
  store i32 %or, ptr %tre2, align 1
  %clock_pol_high = getelementptr inbounds %struct.gpi_spi_config, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %clock_pol_high to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %clock_pol_high, align 2
  %19 = and i8 %18, 1
  %and528.i213 = zext i8 %19 to i32
  %mul.i214 = shl nuw nsw i32 %and528.i213, 13
  %or13 = or i32 %or, %mul.i214
  store i32 %or13, ptr %tre2, align 1
  %data_pol_high = getelementptr inbounds %struct.gpi_spi_config, ptr %1, i32 0, i32 3
  %20 = ptrtoint ptr %data_pol_high to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %data_pol_high, align 1
  %22 = and i8 %21, 1
  %and528.i224 = zext i8 %22 to i32
  %mul.i225 = shl nuw nsw i32 %and528.i224, 12
  %or18 = or i32 %or13, %mul.i225
  store i32 %or18, ptr %tre2, align 1
  %pack_en = getelementptr inbounds %struct.gpi_spi_config, ptr %1, i32 0, i32 4
  %23 = ptrtoint ptr %pack_en to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %pack_en, align 4
  %25 = and i8 %24, 1
  %and528.i235 = zext i8 %25 to i32
  %mul.i236 = shl nuw nsw i32 %and528.i235, 24
  %or23 = or i32 %or18, %mul.i236
  store i32 %or23, ptr %tre2, align 1
  %26 = load i8, ptr %pack_en, align 4
  %27 = and i8 %26, 1
  %and528.i246 = zext i8 %27 to i32
  %mul.i247 = shl nuw nsw i32 %and528.i246, 25
  %or29 = or i32 %or23, %mul.i247
  store i32 %or29, ptr %tre2, align 1
  %arrayidx31 = getelementptr %struct.gpi_desc, ptr %desc, i32 0, i32 4, i32 0, i32 0, i32 1
  %28 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_storeN_noabort(i32 %28, i32 4)
  store i32 0, ptr %arrayidx31, align 1
  %clk_div = getelementptr inbounds %struct.gpi_spi_config, ptr %1, i32 0, i32 8
  %29 = ptrtoint ptr %clk_div to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %clk_div, align 4
  %31 = and i32 %30, 4095
  %arrayidx34 = getelementptr %struct.gpi_desc, ptr %desc, i32 0, i32 4, i32 0, i32 0, i32 2
  %32 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store i32 %31, ptr %arrayidx34, align 1
  %clk_src = getelementptr inbounds %struct.gpi_spi_config, ptr %1, i32 0, i32 9
  %33 = ptrtoint ptr %clk_src to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %clk_src, align 4
  %35 = shl i32 %34, 16
  %36 = and i32 %35, 983040
  %or38 = or i32 %31, %36
  store i32 %or38, ptr %arrayidx34, align 1
  %arrayidx41 = getelementptr %struct.gpi_desc, ptr %desc, i32 0, i32 4, i32 0, i32 0, i32 3
  %37 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_storeN_noabort(i32 %37, i32 4)
  store i32 2228225, ptr %arrayidx41, align 1
  br label %if.then48

if.then48:                                        ; preds = %if.then, %land.lhs.true.if.then48_crit_edge
  %tre_idx.0.ph = phi i32 [ 0, %land.lhs.true.if.then48_crit_edge ], [ 1, %if.then ]
  %arrayidx50 = getelementptr %struct.gpi_desc, ptr %desc, i32 0, i32 4, i32 %tre_idx.0.ph
  %inc51 = add nuw nsw i32 %tre_idx.0.ph, 1
  %fragmentation = getelementptr inbounds %struct.gpi_spi_config, ptr %1, i32 0, i32 6
  %38 = ptrtoint ptr %fragmentation to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %fragmentation, align 2
  %40 = and i8 %39, 1
  %and528.i287 = zext i8 %40 to i32
  %mul.i288 = shl nuw nsw i32 %and528.i287, 26
  %41 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_storeN_noabort(i32 %41, i32 4)
  store i32 %mul.i288, ptr %arrayidx50, align 1
  %cs = getelementptr inbounds %struct.gpi_spi_config, ptr %1, i32 0, i32 7
  %42 = ptrtoint ptr %cs to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %cs, align 1
  %44 = and i8 %43, 7
  %and528.i298 = zext i8 %44 to i32
  %mul.i299 = shl nuw nsw i32 %and528.i298, 8
  %or60 = or i32 %mul.i288, %mul.i299
  store i32 %or60, ptr %arrayidx50, align 1
  %cmd = getelementptr inbounds %struct.gpi_spi_config, ptr %1, i32 0, i32 10
  %45 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %cmd, align 4
  %47 = and i32 %46, 31
  %or64 = or i32 %or60, %47
  store i32 %or64, ptr %arrayidx50, align 1
  %arrayidx66 = getelementptr [4 x i32], ptr %arrayidx50, i32 0, i32 1
  %48 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_storeN_noabort(i32 %48, i32 4)
  store i32 0, ptr %arrayidx66, align 1
  %rx_len = getelementptr inbounds %struct.gpi_spi_config, ptr %1, i32 0, i32 11
  %49 = ptrtoint ptr %rx_len to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %rx_len, align 4
  %51 = and i32 %50, 16777215
  %arrayidx69 = getelementptr [4 x i32], ptr %arrayidx50, i32 0, i32 2
  %52 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_storeN_noabort(i32 %52, i32 4)
  store i32 %51, ptr %arrayidx69, align 1
  %arrayidx72 = getelementptr [4 x i32], ptr %arrayidx50, i32 0, i32 3
  %53 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_storeN_noabort(i32 %53, i32 4)
  store i32 2097152, ptr %arrayidx72, align 1
  %54 = load i32, ptr %cmd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %54)
  %cmp74 = icmp eq i32 %54, 2
  %. = select i1 %cmp74, i32 2097408, i32 2097153
  %55 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_storeN_noabort(i32 %55, i32 4)
  store i32 %., ptr %arrayidx72, align 1
  br label %if.end86

if.end86:                                         ; preds = %if.then48, %entry.if.end86_crit_edge
  %spec.store.select = phi i32 [ 1049088, %if.then48 ], [ 1048576, %entry.if.end86_crit_edge ]
  %tre_idx.1 = phi i32 [ %inc51, %if.then48 ], [ 0, %entry.if.end86_crit_edge ]
  %arrayidx88 = getelementptr %struct.gpi_desc, ptr %desc, i32 0, i32 4, i32 %tre_idx.1
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sgl, i32 0, i32 3
  %56 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %dma_address, align 4
  %58 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_storeN_noabort(i32 %58, i32 4)
  store i32 %57, ptr %arrayidx88, align 1
  %arrayidx94 = getelementptr [4 x i32], ptr %arrayidx88, i32 0, i32 1
  %59 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_storeN_noabort(i32 %59, i32 4)
  store i32 0, ptr %arrayidx94, align 1
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sgl, i32 0, i32 4
  %60 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %dma_length, align 4
  %62 = and i32 %61, 16777215
  %arrayidx97 = getelementptr [4 x i32], ptr %arrayidx88, i32 0, i32 2
  %63 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_storeN_noabort(i32 %63, i32 4)
  store i32 %62, ptr %arrayidx97, align 1
  %arrayidx100 = getelementptr [4 x i32], ptr %arrayidx88, i32 0, i32 3
  %64 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_storeN_noabort(i32 %64, i32 4)
  store i32 %spec.store.select, ptr %arrayidx100, align 1
  br label %do.body

do.body:                                          ; preds = %for.inc.do.body_crit_edge, %if.end86
  %i.0382 = phi i32 [ 0, %if.end86 ], [ %inc134, %for.inc.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gpi_create_spi_tre.__UNIQUE_ID_ddebug337, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gpi_create_spi_tre, %for.inc)) #9
          to label %if.then116 [label %for.inc], !srcloc !334

if.then116:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx118 = getelementptr %struct.gpi_desc, ptr %desc, i32 0, i32 4, i32 %i.0382
  %65 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx118, align 4
  %arrayidx124 = getelementptr [4 x i32], ptr %arrayidx118, i32 0, i32 1
  %67 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx124, align 4
  %arrayidx128 = getelementptr [4 x i32], ptr %arrayidx118, i32 0, i32 2
  %69 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx128, align 4
  %arrayidx132 = getelementptr [4 x i32], ptr %arrayidx118, i32 0, i32 3
  %71 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx132, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gpi_create_spi_tre.__UNIQUE_ID_ddebug337, ptr noundef %7, ptr noundef nonnull @.str.126, i32 noundef %i.0382, i32 noundef %66, i32 noundef %68, i32 noundef %70, i32 noundef %72) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then116, %do.body
  %inc134 = add nuw nsw i32 %i.0382, 1
  %exitcond.not = icmp eq i32 %i.0382, %tre_idx.1
  br i1 %exitcond.not, label %for.end, label %for.inc.do.body_crit_edge

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  %73 = add nuw nsw i32 %tre_idx.1, 1
  ret i32 %73
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gpi_create_i2c_tre(ptr nocapture noundef readonly %chan, ptr nocapture noundef %desc, ptr nocapture noundef readonly %sgl) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %config = getelementptr inbounds %struct.gchan, ptr %chan, i32 0, i32 12
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config, align 4
  %gpii = getelementptr inbounds %struct.gchan, ptr %chan, i32 0, i32 4
  %2 = ptrtoint ptr %gpii to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpii, align 4
  %gpi_dev = getelementptr inbounds %struct.gpii, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %gpi_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gpi_dev, align 4
  %dev1 = getelementptr inbounds %struct.gpi_dev, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev1, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %tre2 = getelementptr inbounds %struct.gpi_desc, ptr %desc, i32 0, i32 4
  %low_count = getelementptr inbounds %struct.gpi_i2c_config, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %low_count to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %low_count, align 4
  %conv8.i = zext i8 %11 to i32
  %12 = ptrtoint ptr %tre2 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 %conv8.i, ptr %tre2, align 1
  %high_count = getelementptr inbounds %struct.gpi_i2c_config, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %high_count to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %high_count, align 1
  %conv2.i7 = zext i8 %14 to i32
  %mul.i9 = shl nuw nsw i32 %conv2.i7, 8
  %or = or i32 %mul.i9, %conv8.i
  store i32 %or, ptr %tre2, align 1
  %cycle_count = getelementptr inbounds %struct.gpi_i2c_config, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %cycle_count to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %cycle_count, align 2
  %conv2.i18 = zext i8 %16 to i32
  %mul.i20 = shl nuw nsw i32 %conv2.i18, 16
  %or12 = or i32 %or, %mul.i20
  store i32 %or12, ptr %tre2, align 1
  %pack_enable = getelementptr inbounds %struct.gpi_i2c_config, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %pack_enable to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %pack_enable, align 1
  %19 = and i8 %18, 1
  %and528.i30 = zext i8 %19 to i32
  %mul.i31 = shl nuw nsw i32 %and528.i30, 24
  %or17 = or i32 %or12, %mul.i31
  store i32 %or17, ptr %tre2, align 1
  %20 = load i8, ptr %pack_enable, align 1
  %21 = and i8 %20, 1
  %and528.i41 = zext i8 %21 to i32
  %mul.i42 = shl nuw nsw i32 %and528.i41, 25
  %or23 = or i32 %or17, %mul.i42
  store i32 %or23, ptr %tre2, align 1
  %arrayidx25 = getelementptr %struct.gpi_desc, ptr %desc, i32 0, i32 4, i32 0, i32 0, i32 1
  %22 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_storeN_noabort(i32 %22, i32 4)
  store i32 0, ptr %arrayidx25, align 1
  %clk_div = getelementptr inbounds %struct.gpi_i2c_config, ptr %1, i32 0, i32 7
  %23 = ptrtoint ptr %clk_div to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %clk_div, align 4
  %25 = and i16 %24, 4095
  %conv8.i54 = zext i16 %25 to i32
  %arrayidx29 = getelementptr %struct.gpi_desc, ptr %desc, i32 0, i32 4, i32 0, i32 0, i32 2
  %26 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 %conv8.i54, ptr %arrayidx29, align 1
  %arrayidx32 = getelementptr %struct.gpi_desc, ptr %desc, i32 0, i32 4, i32 0, i32 0, i32 3
  %27 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 2228225, ptr %arrayidx32, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tre_idx.0 = phi i32 [ 1, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %op = getelementptr inbounds %struct.gpi_i2c_config, ptr %1, i32 0, i32 9
  %28 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %op, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp = icmp eq i32 %29, 1
  br i1 %cmp, label %if.then38, label %if.end.if.end83_crit_edge

if.end.if.end83_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end83

if.then38:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx40 = getelementptr %struct.gpi_desc, ptr %desc, i32 0, i32 4, i32 %tre_idx.0
  %inc41 = add nuw nsw i32 %tre_idx.0, 1
  %multi_msg = getelementptr inbounds %struct.gpi_i2c_config, ptr %1, i32 0, i32 10
  %30 = ptrtoint ptr %multi_msg to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %multi_msg, align 4, !range !333
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool42.not = icmp eq i8 %31, 0
  %spec.select = select i1 %tobool42.not, i32 1, i32 2
  %32 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store i32 %spec.select, ptr %arrayidx40, align 1
  %addr = getelementptr inbounds %struct.gpi_i2c_config, ptr %1, i32 0, i32 5
  %33 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %addr, align 1
  %35 = and i8 %34, 127
  %and528.i79 = zext i8 %35 to i32
  %mul.i80 = shl nuw nsw i32 %and528.i79, 8
  %or56 = or i32 %spec.select, %mul.i80
  store i32 %or56, ptr %arrayidx40, align 1
  %stretch = getelementptr inbounds %struct.gpi_i2c_config, ptr %1, i32 0, i32 6
  %36 = ptrtoint ptr %stretch to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %stretch, align 2
  %38 = and i8 %37, 1
  %and528.i90 = zext i8 %38 to i32
  %mul.i91 = shl nuw nsw i32 %and528.i90, 26
  %or61 = or i32 %or56, %mul.i91
  store i32 %or61, ptr %arrayidx40, align 1
  %arrayidx63 = getelementptr [4 x i32], ptr %arrayidx40, i32 0, i32 1
  %39 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_storeN_noabort(i32 %39, i32 4)
  store i32 0, ptr %arrayidx63, align 1
  %rx_len = getelementptr inbounds %struct.gpi_i2c_config, ptr %1, i32 0, i32 8
  %40 = ptrtoint ptr %rx_len to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rx_len, align 4
  %42 = and i32 %41, 16777215
  %arrayidx66 = getelementptr [4 x i32], ptr %arrayidx40, i32 0, i32 2
  %43 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_storeN_noabort(i32 %43, i32 4)
  store i32 %42, ptr %arrayidx66, align 1
  %arrayidx69 = getelementptr [4 x i32], ptr %arrayidx40, i32 0, i32 3
  %44 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_storeN_noabort(i32 %44, i32 4)
  store i32 2097152, ptr %arrayidx69, align 1
  %45 = ptrtoint ptr %multi_msg to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %multi_msg, align 4, !range !333
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool71.not = icmp eq i8 %46, 0
  %. = select i1 %tobool71.not, i32 2097153, i32 2099200
  %47 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_storeN_noabort(i32 %47, i32 4)
  store i32 %., ptr %arrayidx69, align 1
  %48 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %48)
  %.pr = load i32, ptr %op, align 4
  br label %if.end83

if.end83:                                         ; preds = %if.then38, %if.end.if.end83_crit_edge
  %49 = phi i32 [ %.pr, %if.then38 ], [ %29, %if.end.if.end83_crit_edge ]
  %tre_idx.1 = phi i32 [ %inc41, %if.then38 ], [ %tre_idx.0, %if.end.if.end83_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %49)
  %cmp85 = icmp eq i32 %49, 2
  br i1 %cmp85, label %if.end83.if.then92_crit_edge, label %lor.lhs.false

if.end83.if.then92_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then92

lor.lhs.false:                                    ; preds = %if.end83
  %multi_msg87 = getelementptr inbounds %struct.gpi_i2c_config, ptr %1, i32 0, i32 10
  %50 = ptrtoint ptr %multi_msg87 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %multi_msg87, align 4, !range !333
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %cmp90 = icmp eq i8 %51, 0
  br i1 %cmp90, label %lor.lhs.false.if.then92_crit_edge, label %if.end111

lor.lhs.false.if.then92_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then92

if.then92:                                        ; preds = %lor.lhs.false.if.then92_crit_edge, %if.end83.if.then92_crit_edge
  %arrayidx94 = getelementptr %struct.gpi_desc, ptr %desc, i32 0, i32 4, i32 %tre_idx.1
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sgl, i32 0, i32 3
  %52 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %dma_address, align 4
  %54 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_storeN_noabort(i32 %54, i32 4)
  store i32 %53, ptr %arrayidx94, align 1
  %arrayidx100 = getelementptr [4 x i32], ptr %arrayidx94, i32 0, i32 1
  %55 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_storeN_noabort(i32 %55, i32 4)
  store i32 0, ptr %arrayidx100, align 1
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sgl, i32 0, i32 4
  %56 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %dma_length, align 4
  %inc95 = add nuw nsw i32 %tre_idx.1, 1
  %58 = and i32 %57, 16777215
  %arrayidx103 = getelementptr [4 x i32], ptr %arrayidx94, i32 0, i32 2
  %59 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_storeN_noabort(i32 %59, i32 4)
  store i32 %58, ptr %arrayidx103, align 1
  %arrayidx106 = getelementptr [4 x i32], ptr %arrayidx94, i32 0, i32 3
  %60 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_storeN_noabort(i32 %60, i32 4)
  store i32 1049088, ptr %arrayidx106, align 1
  br label %do.body.preheader

if.end111:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tre_idx.1)
  %cmp112149.not = icmp eq i32 %tre_idx.1, 0
  br i1 %cmp112149.not, label %if.end111.for.end_crit_edge, label %if.end111.do.body.preheader_crit_edge

if.end111.do.body.preheader_crit_edge:            ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.preheader

if.end111.for.end_crit_edge:                      ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

do.body.preheader:                                ; preds = %if.end111.do.body.preheader_crit_edge, %if.then92
  %tre_idx.2154 = phi i32 [ %inc95, %if.then92 ], [ %tre_idx.1, %if.end111.do.body.preheader_crit_edge ]
  br label %do.body

do.body:                                          ; preds = %for.inc.do.body_crit_edge, %do.body.preheader
  %i.0150 = phi i32 [ %inc137, %for.inc.do.body_crit_edge ], [ 0, %do.body.preheader ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gpi_create_i2c_tre.__UNIQUE_ID_ddebug336, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gpi_create_i2c_tre, %for.inc)) #9
          to label %if.then119 [label %for.inc], !srcloc !334

if.then119:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx121 = getelementptr %struct.gpi_desc, ptr %desc, i32 0, i32 4, i32 %i.0150
  %61 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx121, align 4
  %arrayidx127 = getelementptr [4 x i32], ptr %arrayidx121, i32 0, i32 1
  %63 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx127, align 4
  %arrayidx131 = getelementptr [4 x i32], ptr %arrayidx121, i32 0, i32 2
  %65 = ptrtoint ptr %arrayidx131 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx131, align 4
  %arrayidx135 = getelementptr [4 x i32], ptr %arrayidx121, i32 0, i32 3
  %67 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx135, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gpi_create_i2c_tre.__UNIQUE_ID_ddebug336, ptr noundef %7, ptr noundef nonnull @.str.126, i32 noundef %i.0150, i32 noundef %62, i32 noundef %64, i32 noundef %66, i32 noundef %68) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then119, %do.body
  %inc137 = add nuw nsw i32 %i.0150, 1
  %exitcond.not = icmp eq i32 %inc137, %tre_idx.2154
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.do.body_crit_edge

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end111.for.end_crit_edge
  %tre_idx.2155 = phi i32 [ 0, %if.end111.for.end_crit_edge ], [ %tre_idx.2154, %for.inc.for.end_crit_edge ]
  ret i32 %tre_idx.2155
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_tx_descriptor_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchan_tx_submit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchan_tx_desc_free(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_get_slave_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 161)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 161)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind allocsize(1) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !16, !17, !18, !19, !20, !21, !23, !25, !26, !27, !29, !30, !31, !33, !34, !36, !37, !39, !40, !41, !43, !44, !45, !47, !49, !50, !51, !52, !53, !55, !57, !59, !61, !63, !65, !67, !69, !70, !71, !73, !74, !76, !77, !79, !80, !82, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !100, !102, !103, !105, !106, !107, !109, !110, !112, !114, !115, !117, !119, !120, !121, !122, !124, !125, !126, !127, !129, !130, !132, !133, !135, !136, !138, !139, !140, !142, !143, !144, !145, !147, !149, !151, !153, !154, !155, !157, !158, !160, !161, !162, !164, !165, !166, !168, !169, !171, !172, !173, !174, !176, !177, !178, !180, !181, !182, !184, !185, !186, !188, !189, !190, !192, !193, !194, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !222, !223, !224, !226, !227, !228, !230, !231, !232, !234, !235, !236, !238, !239, !240, !242, !244, !245, !246, !248, !249, !250, !251, !253, !254, !255, !256, !258, !259, !260, !261, !263, !264, !265, !267, !268, !269, !271, !272, !273, !275, !276, !277, !279, !280, !282, !283, !284, !285, !287, !288, !289, !291, !292, !293, !295, !296, !297, !299, !300, !301, !303, !304, !305, !307, !308, !309, !310, !312, !313, !314, !316, !317, !318, !320, !321, !322}
!llvm.module.flags = !{!324, !325, !326, !327, !328, !329, !330, !331}
!llvm.ident = !{!332}

!0 = !{ptr @__initcall__kmod_gpi__338_2300_gpi_init4, !1, !"__initcall__kmod_gpi__338_2300_gpi_init4", i1 false, i1 false}
!1 = !{!"../drivers/dma/qcom/gpi.c", i32 2300, i32 1}
!2 = !{ptr @__UNIQUE_ID_description339, !3, !"__UNIQUE_ID_description339", i1 false, i1 false}
!3 = !{!"../drivers/dma/qcom/gpi.c", i32 2302, i32 1}
!4 = !{ptr @__UNIQUE_ID_file340, !5, !"__UNIQUE_ID_file340", i1 false, i1 false}
!5 = !{!"../drivers/dma/qcom/gpi.c", i32 2303, i32 1}
!6 = !{ptr @__UNIQUE_ID_license341, !5, !"__UNIQUE_ID_license341", i1 false, i1 false}
!7 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/dma/qcom/gpi.c", i32 2291, i32 11}
!9 = !{ptr @gpi_driver, !10, !"gpi_driver", i1 false, i1 false}
!10 = !{!"../drivers/dma/qcom/gpi.c", i32 2288, i32 31}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/dma/qcom/gpi.c", i32 2164, i32 52}
!13 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/dma/qcom/gpi.c", i32 2167, i32 3}
!15 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @gpi_probe._entry, !14, !"_entry", i1 false, i1 false}
!20 = !{ptr @gpi_probe._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/dma/qcom/gpi.c", i32 2171, i32 52}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/dma/qcom/gpi.c", i32 2174, i32 3}
!25 = !{ptr @gpi_probe._entry.8, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @gpi_probe._entry_ptr.10, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/dma/qcom/gpi.c", i32 2182, i32 3}
!29 = !{ptr @gpi_probe._entry.11, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @gpi_probe._entry_ptr.13, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @gpi_probe.__key, !32, !"__key", i1 false, i1 false}
!32 = !{!"../drivers/dma/qcom/gpi.c", i32 2231, i32 3}
!33 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @gpi_probe.__key.15, !35, !"__key", i1 false, i1 false}
!35 = !{!"../drivers/dma/qcom/gpi.c", i32 2232, i32 3}
!36 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/dma/qcom/gpi.c", i32 2266, i32 3}
!39 = !{ptr @gpi_probe._entry.17, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @gpi_probe._entry_ptr.19, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/dma/qcom/gpi.c", i32 2273, i32 3}
!43 = !{ptr @gpi_probe._entry.20, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @gpi_probe._entry_ptr.22, !42, !"_entry_ptr", i1 false, i1 false}
!45 = distinct !{null, !46, !"GPII_CHAN_DIR", i1 false, i1 false}
!46 = !{!"../drivers/dma/qcom/gpi.c", i32 536, i32 18}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/dma/qcom/gpi.c", i32 1156, i32 3}
!49 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @gpi_ev_tasklet._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @gpi_ev_tasklet._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.25, !48, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/dma/qcom/gpi.c", i32 380, i32 20}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/dma/qcom/gpi.c", i32 381, i32 19}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/dma/qcom/gpi.c", i32 382, i32 23}
!59 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/dma/qcom/gpi.c", i32 383, i32 19}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/dma/qcom/gpi.c", i32 384, i32 24}
!63 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/dma/qcom/gpi.c", i32 385, i32 18}
!65 = !{ptr @gpi_pm_state_str, !66, !"gpi_pm_state_str", i1 false, i1 false}
!66 = !{!"../drivers/dma/qcom/gpi.c", i32 379, i32 26}
!67 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/dma/qcom/gpi.c", i32 1108, i32 4}
!69 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @gpi_process_events.__UNIQUE_ID_ddebug278, !68, !"__UNIQUE_ID_ddebug278", i1 false, i1 false}
!71 = !{ptr @.str.34, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/dma/qcom/gpi.c", i32 1121, i32 5}
!73 = !{ptr @gpi_process_events.__UNIQUE_ID_ddebug279, !72, !"__UNIQUE_ID_ddebug279", i1 false, i1 false}
!74 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/dma/qcom/gpi.c", i32 1129, i32 5}
!76 = !{ptr @gpi_process_events.__UNIQUE_ID_ddebug280, !75, !"__UNIQUE_ID_ddebug280", i1 false, i1 false}
!77 = !{ptr @.str.36, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/dma/qcom/gpi.c", i32 1132, i32 5}
!79 = !{ptr @gpi_process_events.__UNIQUE_ID_ddebug281, !78, !"__UNIQUE_ID_ddebug281", i1 false, i1 false}
!80 = !{ptr @.str.37, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/dma/qcom/gpi.c", i32 1025, i32 3}
!82 = !{ptr @.str.38, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @gpi_process_xfer_compl_event._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @gpi_process_xfer_compl_event._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.40, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/dma/qcom/gpi.c", i32 1036, i32 3}
!87 = !{ptr @gpi_process_xfer_compl_event._entry.39, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @gpi_process_xfer_compl_event._entry_ptr.41, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.43, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/dma/qcom/gpi.c", i32 1038, i32 3}
!91 = !{ptr @gpi_process_xfer_compl_event._entry.42, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @gpi_process_xfer_compl_event._entry_ptr.44, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.46, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/dma/qcom/gpi.c", i32 1069, i32 3}
!95 = !{ptr @gpi_process_xfer_compl_event._entry.45, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @gpi_process_xfer_compl_event._entry_ptr.47, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.48, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/dma/qcom/gpi.c", i32 1072, i32 3}
!99 = !{ptr @gpi_process_xfer_compl_event.__UNIQUE_ID_ddebug276, !98, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!100 = !{ptr @.str.49, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/dma/qcom/gpi.c", i32 1076, i32 2}
!102 = !{ptr @gpi_process_xfer_compl_event.__UNIQUE_ID_ddebug277, !101, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!103 = !{ptr @.str.50, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/dma/qcom/gpi.c", i32 945, i32 3}
!105 = !{ptr @gpi_process_imed_data_event._entry, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @gpi_process_imed_data_event._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.51, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/dma/qcom/gpi.c", i32 957, i32 3}
!109 = !{ptr @gpi_process_imed_data_event.__UNIQUE_ID_ddebug273, !108, !"__UNIQUE_ID_ddebug273", i1 false, i1 false}
!110 = !{ptr @gpi_process_imed_data_event.__UNIQUE_ID_ddebug274, !111, !"__UNIQUE_ID_ddebug274", i1 false, i1 false}
!111 = !{!"../drivers/dma/qcom/gpi.c", i32 959, i32 3}
!112 = !{ptr @.str.52, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/dma/qcom/gpi.c", i32 964, i32 3}
!114 = !{ptr @gpi_process_imed_data_event.__UNIQUE_ID_ddebug275, !113, !"__UNIQUE_ID_ddebug275", i1 false, i1 false}
!115 = !{ptr @.str.53, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/dma/qcom/gpi.c", i32 634, i32 12}
!117 = !{ptr @.str.54, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/dma/qcom/gpi.c", i32 636, i32 4}
!119 = !{ptr @.str.55, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @gpi_config_interrupts._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @gpi_config_interrupts._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.56, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/dma/qcom/gpi.c", i32 852, i32 3}
!124 = !{ptr @.str.57, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @gpi_handle_irq._entry, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @gpi_handle_irq._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.58, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/dma/qcom/gpi.c", i32 878, i32 4}
!129 = !{ptr @gpi_handle_irq.__UNIQUE_ID_ddebug265, !128, !"__UNIQUE_ID_ddebug265", i1 false, i1 false}
!130 = !{ptr @.str.59, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/dma/qcom/gpi.c", i32 899, i32 4}
!132 = !{ptr @gpi_handle_irq.__UNIQUE_ID_ddebug271, !131, !"__UNIQUE_ID_ddebug271", i1 false, i1 false}
!133 = !{ptr @.str.60, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/dma/qcom/gpi.c", i32 907, i32 4}
!135 = !{ptr @gpi_handle_irq.__UNIQUE_ID_ddebug272, !134, !"__UNIQUE_ID_ddebug272", i1 false, i1 false}
!136 = !{ptr @.str.62, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/dma/qcom/gpi.c", i32 913, i32 4}
!138 = !{ptr @gpi_handle_irq._entry.61, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @gpi_handle_irq._entry_ptr.63, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.64, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/dma/qcom/gpi.c", i32 829, i32 3}
!142 = !{ptr @.str.65, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @gpi_process_glob_err_irq._entry, !141, !"_entry", i1 false, i1 false}
!144 = !{ptr @gpi_process_glob_err_irq._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.66, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/dma/qcom/gpi.c", i32 301, i32 29}
!147 = !{ptr @.str.67, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/dma/qcom/gpi.c", i32 302, i32 25}
!149 = !{ptr @gpi_ev_state_str, !150, !"gpi_ev_state_str", i1 false, i1 false}
!150 = !{!"../drivers/dma/qcom/gpi.c", i32 300, i32 26}
!151 = !{ptr @.str.68, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/dma/qcom/gpi.c", i32 810, i32 2}
!153 = !{ptr @.str.69, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @gpi_process_gen_err_irq.__UNIQUE_ID_ddebug264, !152, !"__UNIQUE_ID_ddebug264", i1 false, i1 false}
!155 = !{ptr @init_completion.__key, !156, !"__key", i1 false, i1 false}
!156 = !{!"../include/linux/completion.h", i32 87, i32 2}
!157 = !{ptr @.str.70, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @.str.71, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/dma/qcom/gpi.c", i32 1418, i32 2}
!160 = !{ptr @.str.72, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @gpi_alloc_ring.__UNIQUE_ID_ddebug332, !159, !"__UNIQUE_ID_ddebug332", i1 false, i1 false}
!162 = !{ptr @.str.73, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/dma/qcom/gpi.c", i32 1427, i32 3}
!164 = !{ptr @gpi_alloc_ring._entry, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @gpi_alloc_ring._entry_ptr, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.74, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/dma/qcom/gpi.c", i32 1446, i32 2}
!168 = !{ptr @gpi_alloc_ring.__UNIQUE_ID_ddebug333, !167, !"__UNIQUE_ID_ddebug333", i1 false, i1 false}
!169 = !{ptr @.str.75, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/dma/qcom/gpi.c", i32 1901, i32 3}
!171 = !{ptr @.str.76, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @gpi_ch_init._entry, !170, !"_entry", i1 false, i1 false}
!173 = !{ptr @gpi_ch_init._entry_ptr, !170, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.78, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/dma/qcom/gpi.c", i32 1920, i32 3}
!176 = !{ptr @gpi_ch_init._entry.77, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @gpi_ch_init._entry_ptr.79, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.81, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/dma/qcom/gpi.c", i32 1927, i32 3}
!180 = !{ptr @gpi_ch_init._entry.80, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @gpi_ch_init._entry_ptr.82, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.84, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/dma/qcom/gpi.c", i32 1935, i32 4}
!184 = !{ptr @gpi_ch_init._entry.83, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @gpi_ch_init._entry_ptr.85, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.87, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/dma/qcom/gpi.c", i32 1944, i32 4}
!188 = !{ptr @gpi_ch_init._entry.86, !187, !"_entry", i1 false, i1 false}
!189 = !{ptr @gpi_ch_init._entry_ptr.88, !187, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.89, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/dma/qcom/gpi.c", i32 1315, i32 3}
!192 = !{ptr @.str.90, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @gpi_alloc_ev_chan._entry, !191, !"_entry", i1 false, i1 false}
!194 = !{ptr @gpi_alloc_ev_chan._entry_ptr, !191, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.91, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/dma/qcom/gpi.c", i32 341, i32 26}
!197 = !{ptr @.str.92, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/dma/qcom/gpi.c", i32 342, i32 23}
!199 = !{ptr @.str.93, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/dma/qcom/gpi.c", i32 343, i32 22}
!201 = !{ptr @.str.94, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/dma/qcom/gpi.c", i32 344, i32 23}
!203 = !{ptr @.str.95, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/dma/qcom/gpi.c", i32 345, i32 26}
!205 = !{ptr @.str.96, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/dma/qcom/gpi.c", i32 346, i32 31}
!207 = !{ptr @.str.97, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/dma/qcom/gpi.c", i32 347, i32 32}
!209 = !{ptr @.str.98, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/dma/qcom/gpi.c", i32 348, i32 36}
!211 = !{ptr @.str.99, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/dma/qcom/gpi.c", i32 349, i32 26}
!213 = !{ptr @.str.100, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/dma/qcom/gpi.c", i32 350, i32 23}
!215 = !{ptr @.str.101, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/dma/qcom/gpi.c", i32 351, i32 25}
!217 = !{ptr @gpi_cmd_str, !218, !"gpi_cmd_str", i1 false, i1 false}
!218 = !{!"../drivers/dma/qcom/gpi.c", i32 340, i32 26}
!219 = !{ptr @.str.102, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/dma/qcom/gpi.c", i32 1280, i32 4}
!221 = !{ptr @.str.103, !220, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @gpi_alloc_chan._entry, !220, !"_entry", i1 false, i1 false}
!223 = !{ptr @gpi_alloc_chan._entry_ptr, !220, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @.str.104, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/dma/qcom/gpi.c", i32 1239, i32 3}
!226 = !{ptr @gpi_start_chan._entry, !225, !"_entry", i1 false, i1 false}
!227 = !{ptr @gpi_start_chan._entry_ptr, !225, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @.str.105, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/dma/qcom/gpi.c", i32 1259, i32 3}
!230 = !{ptr @gpi_stop_chan._entry, !229, !"_entry", i1 false, i1 false}
!231 = !{ptr @gpi_stop_chan._entry_ptr, !229, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @.str.106, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/dma/qcom/gpi.c", i32 699, i32 2}
!234 = !{ptr @.str.107, !233, !"<string literal>", i1 false, i1 false}
!235 = !{ptr @gpi_send_cmd.__UNIQUE_ID_ddebug238, !233, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!236 = !{ptr @.str.108, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/dma/qcom/gpi.c", i32 713, i32 3}
!238 = !{ptr @gpi_send_cmd._entry, !237, !"_entry", i1 false, i1 false}
!239 = !{ptr @gpi_send_cmd._entry_ptr, !237, !"_entry_ptr", i1 false, i1 false}
!240 = !{ptr @gpi_cmd_info, !241, !"gpi_cmd_info", i1 false, i1 false}
!241 = !{!"../drivers/dma/qcom/gpi.c", i32 395, i32 3}
!242 = !{ptr @.str.109, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/dma/qcom/gpi.c", i32 1206, i32 3}
!244 = !{ptr @gpi_reset_chan._entry, !243, !"_entry", i1 false, i1 false}
!245 = !{ptr @gpi_reset_chan._entry_ptr, !243, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @.str.110, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/dma/qcom/gpi.c", i32 1991, i32 4}
!248 = !{ptr @.str.111, !247, !"<string literal>", i1 false, i1 false}
!249 = !{ptr @gpi_free_chan_resources._entry, !247, !"_entry", i1 false, i1 false}
!250 = !{ptr @gpi_free_chan_resources._entry_ptr, !247, !"_entry_ptr", i1 false, i1 false}
!251 = !{ptr @.str.112, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/dma/qcom/gpi.c", i32 1464, i32 3}
!253 = !{ptr @.str.113, !252, !"<string literal>", i1 false, i1 false}
!254 = !{ptr @gpi_queue_xfer._entry, !252, !"_entry", i1 false, i1 false}
!255 = !{ptr @gpi_queue_xfer._entry_ptr, !252, !"_entry_ptr", i1 false, i1 false}
!256 = !{ptr @.str.114, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/dma/qcom/gpi.c", i32 1801, i32 3}
!258 = !{ptr @.str.115, !257, !"<string literal>", i1 false, i1 false}
!259 = !{ptr @gpi_prep_slave_sg._entry, !257, !"_entry", i1 false, i1 false}
!260 = !{ptr @gpi_prep_slave_sg._entry_ptr, !257, !"_entry_ptr", i1 false, i1 false}
!261 = !{ptr @.str.117, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/dma/qcom/gpi.c", i32 1806, i32 3}
!263 = !{ptr @gpi_prep_slave_sg._entry.116, !262, !"_entry", i1 false, i1 false}
!264 = !{ptr @gpi_prep_slave_sg._entry_ptr.118, !262, !"_entry_ptr", i1 false, i1 false}
!265 = !{ptr @.str.120, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/dma/qcom/gpi.c", i32 1820, i32 3}
!267 = !{ptr @gpi_prep_slave_sg._entry.119, !266, !"_entry", i1 false, i1 false}
!268 = !{ptr @gpi_prep_slave_sg._entry_ptr.121, !266, !"_entry_ptr", i1 false, i1 false}
!269 = !{ptr @.str.123, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/dma/qcom/gpi.c", i32 1834, i32 3}
!271 = !{ptr @gpi_prep_slave_sg._entry.122, !270, !"_entry", i1 false, i1 false}
!272 = !{ptr @gpi_prep_slave_sg._entry_ptr.124, !270, !"_entry_ptr", i1 false, i1 false}
!273 = !{ptr @.str.125, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/dma/qcom/gpi.c", i32 1778, i32 3}
!275 = !{ptr @.str.126, !274, !"<string literal>", i1 false, i1 false}
!276 = !{ptr @gpi_create_spi_tre.__UNIQUE_ID_ddebug337, !274, !"__UNIQUE_ID_ddebug337", i1 false, i1 false}
!277 = !{ptr @.str.127, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/dma/qcom/gpi.c", i32 1706, i32 3}
!279 = !{ptr @gpi_create_i2c_tre.__UNIQUE_ID_ddebug336, !278, !"__UNIQUE_ID_ddebug336", i1 false, i1 false}
!280 = !{ptr @.str.128, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/dma/qcom/gpi.c", i32 1509, i32 4}
!282 = !{ptr @.str.129, !281, !"<string literal>", i1 false, i1 false}
!283 = !{ptr @gpi_terminate_all._entry, !281, !"_entry", i1 false, i1 false}
!284 = !{ptr @gpi_terminate_all._entry_ptr, !281, !"_entry_ptr", i1 false, i1 false}
!285 = !{ptr @.str.131, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/dma/qcom/gpi.c", i32 1516, i32 4}
!287 = !{ptr @gpi_terminate_all._entry.130, !286, !"_entry", i1 false, i1 false}
!288 = !{ptr @gpi_terminate_all._entry_ptr.132, !286, !"_entry_ptr", i1 false, i1 false}
!289 = !{ptr @.str.134, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/dma/qcom/gpi.c", i32 1527, i32 4}
!291 = !{ptr @gpi_terminate_all._entry.133, !290, !"_entry", i1 false, i1 false}
!292 = !{ptr @gpi_terminate_all._entry_ptr.135, !290, !"_entry_ptr", i1 false, i1 false}
!293 = !{ptr @.str.136, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/dma/qcom/gpi.c", i32 1551, i32 3}
!295 = !{ptr @.str.137, !294, !"<string literal>", i1 false, i1 false}
!296 = !{ptr @gpi_pause.__UNIQUE_ID_ddebug334, !294, !"__UNIQUE_ID_ddebug334", i1 false, i1 false}
!297 = !{ptr @.str.138, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/dma/qcom/gpi.c", i32 1587, i32 3}
!299 = !{ptr @.str.139, !298, !"<string literal>", i1 false, i1 false}
!300 = !{ptr @gpi_resume.__UNIQUE_ID_ddebug335, !298, !"__UNIQUE_ID_ddebug335", i1 false, i1 false}
!301 = !{ptr @.str.140, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/dma/qcom/gpi.c", i32 1598, i32 4}
!303 = !{ptr @gpi_resume._entry, !302, !"_entry", i1 false, i1 false}
!304 = !{ptr @gpi_resume._entry_ptr, !302, !"_entry_ptr", i1 false, i1 false}
!305 = !{ptr @.str.141, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/dma/qcom/gpi.c", i32 2114, i32 3}
!307 = !{ptr @.str.142, !306, !"<string literal>", i1 false, i1 false}
!308 = !{ptr @gpi_of_dma_xlate._entry, !306, !"_entry", i1 false, i1 false}
!309 = !{ptr @gpi_of_dma_xlate._entry_ptr, !306, !"_entry_ptr", i1 false, i1 false}
!310 = !{ptr @.str.144, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/dma/qcom/gpi.c", i32 2121, i32 3}
!312 = !{ptr @gpi_of_dma_xlate._entry.143, !311, !"_entry", i1 false, i1 false}
!313 = !{ptr @gpi_of_dma_xlate._entry_ptr.145, !311, !"_entry_ptr", i1 false, i1 false}
!314 = !{ptr @.str.147, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/dma/qcom/gpi.c", i32 2130, i32 3}
!316 = !{ptr @gpi_of_dma_xlate._entry.146, !315, !"_entry", i1 false, i1 false}
!317 = !{ptr @gpi_of_dma_xlate._entry_ptr.148, !315, !"_entry_ptr", i1 false, i1 false}
!318 = !{ptr @.str.150, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/dma/qcom/gpi.c", i32 2136, i32 3}
!320 = !{ptr @gpi_of_dma_xlate._entry.149, !319, !"_entry", i1 false, i1 false}
!321 = !{ptr @gpi_of_dma_xlate._entry_ptr.151, !319, !"_entry_ptr", i1 false, i1 false}
!322 = !{ptr @gpi_of_match, !323, !"gpi_of_match", i1 false, i1 false}
!323 = !{!"../drivers/dma/qcom/gpi.c", i32 2280, i32 34}
!324 = !{i32 1, !"wchar_size", i32 2}
!325 = !{i32 1, !"min_enum_size", i32 4}
!326 = !{i32 8, !"branch-target-enforcement", i32 0}
!327 = !{i32 8, !"sign-return-address", i32 0}
!328 = !{i32 8, !"sign-return-address-all", i32 0}
!329 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!330 = !{i32 7, !"uwtable", i32 1}
!331 = !{i32 7, !"frame-pointer", i32 2}
!332 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!333 = !{i8 0, i8 2}
!334 = !{i64 2148429497, i64 2148429502, i64 2148429515, i64 2148429559, i64 2148429593, i64 2148429614}
!335 = !{i64 6307518}
!336 = !{i64 2154144265}
!337 = !{i64 2155138146}
!338 = !{i64 6307936}
!339 = !{i64 2155138302}
!340 = !{!"auto-init"}
!341 = !{!"branch_weights", i32 2000, i32 1}
!342 = !{i64 2154745264}
!343 = !{!"branch_weights", i32 1, i32 2000}
!344 = !{i64 2154142757, i64 2154143252, i64 2154142794, i64 2154142850, i64 2154142884, i64 2154142908, i64 2154142949, i64 2154142970, i64 2154142998, i64 2154143032}
!345 = !{i64 2154738779}
!346 = !{i64 2155143278}
!347 = !{i64 2155137903}
!348 = !{i64 2155036075}
!349 = !{i64 2154765902}
