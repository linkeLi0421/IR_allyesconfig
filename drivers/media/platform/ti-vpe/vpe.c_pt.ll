; ModuleID = '/llk/IR_all_yes/drivers/media/platform/ti-vpe/vpe.c_pt.bc'
source_filename = "../drivers/media/platform/ti-vpe/vpe.c"
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
%struct.v4l2_m2m_ops = type { ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.vpe_port_data = type { i32, i8, i8 }
%struct.vpdma_data_format = type { i32, i32, i8 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.87 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.84], %struct.media_entity_enum, i32 }
%struct.anon.84 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
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
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ctrl_config = type { ptr, ptr, i32, ptr, i32, i64, i64, i64, i64, %union.v4l2_ctrl_ptr, [4 x i32], i32, i32, i64, ptr, ptr, i8 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.vpe_fmt = type { i32, i8, i8, [2 x ptr] }
%struct.vpe_us_coeffs = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.vpe_dev = type { %struct.v4l2_device, %struct.video_device, ptr, %struct.atomic_t, i32, %struct.mutex, %struct.spinlock, i32, ptr, ptr, %struct.vpdma_data, ptr, ptr, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.vpdma_data = type { ptr, ptr, %struct.spinlock, [8 x i8], [8 x ptr], ptr }
%struct.vpe_ctx = type { %struct.v4l2_fh, ptr, %struct.v4l2_ctrl_handler, i32, i32, i32, i32, i32, [2 x %struct.vpe_q_data], [3 x ptr], ptr, [2 x i32], [2 x ptr], i32, %struct.vpdma_buf, %struct.vpdma_buf, %struct.vpdma_buf, %struct.vpdma_desc_list, i8, i8, i32 }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.vpe_q_data = type { %struct.v4l2_format, i32, %struct.v4l2_rect, ptr }
%struct.v4l2_format = type { i32, %union.anon.96 }
%union.anon.96 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.98, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.98 = type { i8 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.vpdma_buf = type { ptr, i32, i32, i8 }
%struct.vpdma_desc_list = type { %struct.vpdma_buf, ptr, i32 }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.95, i32 }
%union.anon.95 = type { i32 }
%struct.v4l2_m2m_ctx = type { ptr, i8, i8, ptr, i8, i8, ptr, %struct.v4l2_m2m_queue_ctx, %struct.v4l2_m2m_queue_ctx, %struct.list_head, i32, %struct.wait_queue_head, ptr }
%struct.v4l2_m2m_queue_ctx = type { %struct.vb2_queue, %struct.list_head, %struct.spinlock, i8, i8 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.vpe_mmr_adb = type { %struct.vpdma_adb_hdr, [1 x i32], [3 x i32], %struct.vpdma_adb_hdr, [8 x i32], %struct.vpdma_adb_hdr, [8 x i32], %struct.vpdma_adb_hdr, [8 x i32], %struct.vpdma_adb_hdr, [8 x i32], %struct.vpdma_adb_hdr, [7 x i32], [1 x i32], %struct.vpdma_adb_hdr, [6 x i32], [2 x i32], %struct.vpdma_adb_hdr, [9 x i32], [3 x i32], %struct.vpdma_adb_hdr, [6 x i32], [2 x i32] }
%struct.vpdma_adb_hdr = type { i32, i32, i32, i32 }
%struct.sc_data = type { ptr, ptr, i32, i32, i8, i8, ptr }
%struct.v4l2_format_info = type { i32, i8, i8, i8, [4 x i8], i8, i8, [4 x i8], [4 x i8] }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.csc_data = type { ptr, ptr, ptr }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.90, %union.anon.91, i32, ptr, i32, %struct.anon.92, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.90 = type { i64 }
%union.anon.91 = type { ptr }
%struct.anon.92 = type { i32 }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_selection = type { i32, i32, i32, %struct.v4l2_rect, [9 x i32] }

@__initcall__kmod_ti_vpe__373_2661_vpe_pdrv_init6 = internal global ptr @vpe_pdrv_init, section ".initcall6.init", align 4
@vpe_pdrv = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @vpe_probe, ptr @vpe_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @vpe_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_vpe_pdrv_exit = internal global ptr @vpe_pdrv_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description374 = internal constant [33 x i8] c"ti_vpe.description=TI VPE driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author375 = internal constant [53 x i8] c"ti_vpe.author=Dale Farnsworth, <dale@farnsworth.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file376 = internal constant [49 x i8] c"ti_vpe.file=drivers/media/platform/ti-vpe/ti-vpe\00", section ".modinfo", align 1
@__UNIQUE_ID_license377 = internal constant [19 x i8] c"ti_vpe.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vpe\00", [28 x i8] zeroinitializer }, align 32
@vpe_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dra7-vpe\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@vpe_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 2527, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"32-bit consistent DMA enable failed\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vpe_probe\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/media/platform/ti-vpe/vpe.c\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@vpe_probe._entry_ptr = internal global ptr @vpe_probe._entry, section ".printk_index", align 4
@vpe_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&dev->lock\00", [21 x i8] zeroinitializer }, align 32
@vpe_probe.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&dev->dev_mutex\00", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vpe_top\00", [24 x i8] zeroinitializer }, align 32
@vpe_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 2547, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"missing 'vpe_top' resources data\0A\00", [62 x i8] zeroinitializer }, align 32
@vpe_probe._entry_ptr.12 = internal global ptr @vpe_probe._entry.10, section ".printk_index", align 4
@m2m_ops = internal constant { %struct.v4l2_m2m_ops, [20 x i8] } { %struct.v4l2_m2m_ops { ptr @device_run, ptr @job_ready, ptr @job_abort }, [20 x i8] zeroinitializer }, align 32
@vpe_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 2573, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to init mem2mem device\0A\00", [33 x i8] zeroinitializer }, align 32
@vpe_probe._entry_ptr.15 = internal global ptr @vpe_probe._entry.13, section ".printk_index", align 4
@vpe_probe.__UNIQUE_ID_ddebug372 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.2, ptr @.str.3, ptr @.str.17, i8 2, i8 -121, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ti_vpe\00", [25 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"VPE PID function %x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"sc\00", [29 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"csc\00", [28 x i8] zeroinitializer }, align 32
@vpe_irq.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.20, ptr @.str.3, ptr @.str.21, i8 1, i8 88, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vpe_irq\00", [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"INT0_STATUS0 = 0x%08x\0A\00", [41 x i8] zeroinitializer }, align 32
@vpe_irq.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.20, ptr @.str.3, ptr @.str.22, i8 1, i8 90, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"INT0_STATUS1 = 0x%08x\0A\00", [41 x i8] zeroinitializer }, align 32
@vpe_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.20, ptr @.str.3, i32 1389, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"instance released before end of transaction\0A\00", [51 x i8] zeroinitializer }, align 32
@vpe_irq._entry_ptr = internal global ptr @vpe_irq._entry, section ".printk_index", align 4
@vpe_irq._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.20, ptr @.str.3, i32 1414, ptr @.str.26, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"Unexpected interrupt: INT0_STATUS0 = 0x%08x, INT0_STATUS1 = 0x%08x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@vpe_irq._entry_ptr.27 = internal global ptr @vpe_irq._entry.24, section ".printk_index", align 4
@vpe_irq.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.20, ptr @.str.3, ptr @.str.28, i8 1, i8 121, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"finishing transaction\0A\00", [41 x i8] zeroinitializer }, align 32
@dei_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.3, i32 1356, ptr @.str.26, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"received DEI error interrupt\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dei_error\00", [22 x i8] zeroinitializer }, align 32
@dei_error._entry_ptr = internal global ptr @dei_error._entry, section ".printk_index", align 4
@ds1_uv_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.3, i32 1362, ptr @.str.26, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"received downsampler error interrupt\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ds1_uv_error\00", [19 x i8] zeroinitializer }, align 32
@ds1_uv_error._entry_ptr = internal global ptr @ds1_uv_error._entry, section ".printk_index", align 4
@port_data = internal constant { [11 x %struct.vpe_port_data], [40 x i8] } { [11 x %struct.vpe_port_data] [%struct.vpe_port_data zeroinitializer, %struct.vpe_port_data { i32 1, i8 0, i8 1 }, %struct.vpe_port_data { i32 2, i8 1, i8 0 }, %struct.vpe_port_data { i32 3, i8 1, i8 1 }, %struct.vpe_port_data { i32 4, i8 2, i8 0 }, %struct.vpe_port_data { i32 5, i8 2, i8 1 }, %struct.vpe_port_data { i32 6, i8 0, i8 0 }, %struct.vpe_port_data { i32 7, i8 0, i8 0 }, %struct.vpe_port_data { i32 8, i8 0, i8 0 }, %struct.vpe_port_data { i32 9, i8 0, i8 1 }, %struct.vpe_port_data { i32 10, i8 0, i8 0 }], [40 x i8] zeroinitializer }, align 32
@vpdma_misc_fmts = external dso_local constant [0 x %struct.vpdma_data_format], align 4
@add_out_dtd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.3, i32 1059, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"acquiring output buffer(%d) dma_addr failed\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"add_out_dtd\00", [20 x i8] zeroinitializer }, align 32
@add_out_dtd._entry_ptr = internal global ptr @add_out_dtd._entry, section ".printk_index", align 4
@add_in_dtd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.35, ptr @.str.3, i32 1125, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"add_in_dtd\00", [21 x i8] zeroinitializer }, align 32
@add_in_dtd._entry_ptr = internal global ptr @add_in_dtd._entry, section ".printk_index", align 4
@vpe_runtime_get.__UNIQUE_ID_ddebug370 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.36, ptr @.str.3, ptr @.str.37, i8 2, i8 106, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vpe_runtime_get\00", [16 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vpe_runtime_get\0A\00", [47 x i8] zeroinitializer }, align 32
@vpe_videodev = internal constant { %struct.video_device, [344 x i8] } { %struct.video_device { %struct.media_entity zeroinitializer, ptr null, %struct.media_pipeline zeroinitializer, ptr @vpe_fops, i32 67125248, %struct.device zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [32 x i8] c"vpe\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 2, i32 -1, i16 0, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, i32 0, i64 0, ptr @video_device_release_empty, ptr @vpe_ioctl_ops, [6 x i32] zeroinitializer, ptr null }, [344 x i8] zeroinitializer }, align 32
@vpe_fw_cb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.3, i32 2503, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to register video device\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vpe_fw_cb\00", [22 x i8] zeroinitializer }, align 32
@vpe_fw_cb._entry_ptr = internal global ptr @vpe_fw_cb._entry, section ".printk_index", align 4
@vpe_fw_cb._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.3, i32 2516, ptr @.str.42, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Device registered as /dev/video%d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@vpe_fw_cb._entry_ptr.43 = internal global ptr @vpe_fw_cb._entry.40, section ".printk_index", align 4
@vpe_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr null, ptr null, ptr @v4l2_m2m_fop_poll, ptr @video_ioctl2, ptr null, ptr @v4l2_m2m_fop_mmap, ptr @vpe_open, ptr @vpe_release }, [60 x i8] zeroinitializer }, align 32
@vpe_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @vpe_querycap, ptr @vpe_enum_fmt, ptr null, ptr @vpe_enum_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vpe_g_fmt, ptr @vpe_g_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vpe_s_fmt, ptr @vpe_s_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vpe_try_fmt, ptr @vpe_try_fmt, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_m2m_ioctl_reqbufs, ptr @v4l2_m2m_ioctl_querybuf, ptr @v4l2_m2m_ioctl_qbuf, ptr @v4l2_m2m_ioctl_expbuf, ptr @v4l2_m2m_ioctl_dqbuf, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_m2m_ioctl_streamon, ptr @v4l2_m2m_ioctl_streamoff, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vpe_g_selection, ptr @vpe_s_selection, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, [120 x i8] zeroinitializer }, align 32
@vpe_open.__UNIQUE_ID_ddebug365 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.44, ptr @.str.3, ptr @.str.45, i8 2, i8 57, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vpe_open\00", [23 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vpe_open\0A\00", [22 x i8] zeroinitializer }, align 32
@vpe_open._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.46 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vpe:2314:(hdl)->_lock\00", [42 x i8] zeroinitializer }, align 32
@vpe_bufs_per_job = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @vpe_ctrl_ops, ptr null, i32 9967952, ptr @.str.49, i32 1, i64 1, i64 32, i64 1, i64 1, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@vpe_open.__UNIQUE_ID_ddebug366 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.44, ptr @.str.3, ptr @.str.47, i8 2, i8 81, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"first instance created\0A\00", [40 x i8] zeroinitializer }, align 32
@vpe_open.__UNIQUE_ID_ddebug367 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.44, ptr @.str.3, ptr @.str.48, i8 2, i8 83, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"created instance %p, m2m_ctx: %p\0A\00", [62 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@vpe_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @vpe_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Buffers Per Transaction\00", [40 x i8] zeroinitializer }, align 32
@vpe_s_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.3, i32 1982, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Invalid control\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vpe_s_ctrl\00", [21 x i8] zeroinitializer }, align 32
@vpe_s_ctrl._entry_ptr = internal global ptr @vpe_s_ctrl._entry, section ".printk_index", align 4
@vpe_formats = internal global { [11 x %struct.vpe_fmt], [48 x i8] } { [11 x %struct.vpe_fmt] [%struct.vpe_fmt { i32 909203022, i8 3, i8 1, [2 x ptr] [ptr @vpdma_yuv_fmts, ptr getelementptr (i8, ptr @vpdma_yuv_fmts, i64 36)] }, %struct.vpe_fmt { i32 842094158, i8 3, i8 1, [2 x ptr] [ptr getelementptr (i8, ptr @vpdma_yuv_fmts, i64 24), ptr getelementptr (i8, ptr @vpdma_yuv_fmts, i64 60)] }, %struct.vpe_fmt { i32 825382478, i8 3, i8 1, [2 x ptr] [ptr getelementptr (i8, ptr @vpdma_yuv_fmts, i64 24), ptr getelementptr (i8, ptr @vpdma_yuv_fmts, i64 72)] }, %struct.vpe_fmt { i32 1448695129, i8 3, i8 0, [2 x ptr] [ptr getelementptr (i8, ptr @vpdma_yuv_fmts, i64 132), ptr null] }, %struct.vpe_fmt { i32 1498831189, i8 3, i8 0, [2 x ptr] [ptr getelementptr (i8, ptr @vpdma_yuv_fmts, i64 120), ptr null] }, %struct.vpe_fmt { i32 859981650, i8 1, i8 0, [2 x ptr] [ptr getelementptr (i8, ptr @vpdma_rgb_fmts, i64 72), ptr null] }, %struct.vpe_fmt { i32 876758866, i8 1, i8 0, [2 x ptr] [ptr getelementptr (i8, ptr @vpdma_rgb_fmts, i64 84), ptr null] }, %struct.vpe_fmt { i32 861030210, i8 1, i8 0, [2 x ptr] [ptr getelementptr (i8, ptr @vpdma_rgb_fmts, i64 192), ptr null] }, %struct.vpe_fmt { i32 877807426, i8 1, i8 0, [2 x ptr] [ptr getelementptr (i8, ptr @vpdma_rgb_fmts, i64 204), ptr null] }, %struct.vpe_fmt { i32 1346520914, i8 1, i8 0, [2 x ptr] [ptr @vpdma_rgb_fmts, ptr null] }, %struct.vpe_fmt { i32 1329743698, i8 1, i8 0, [2 x ptr] [ptr getelementptr (i8, ptr @vpdma_rgb_fmts, i64 36), ptr null] }], [48 x i8] zeroinitializer }, align 32
@vpdma_yuv_fmts = external dso_local constant [0 x %struct.vpdma_data_format], align 4
@vpdma_rgb_fmts = external dso_local constant [0 x %struct.vpdma_data_format], align 4
@us_coeffs = internal constant { [2 x %struct.vpe_us_coeffs], [32 x i8] } { [2 x %struct.vpe_us_coeffs] [%struct.vpe_us_coeffs { i16 200, i16 840, i16 24, i16 16344, i16 16312, i16 888, i16 232, i16 16360, i16 200, i16 840, i16 24, i16 16344, i16 16312, i16 888, i16 232, i16 16360 }, %struct.vpe_us_coeffs { i16 81, i16 981, i16 16355, i16 16375, i16 16309, i16 745, i16 399, i16 16339, i16 363, i16 583, i16 177, i16 16285, i16 16335, i16 987, i16 93, i16 16377 }], [32 x i8] zeroinitializer }, align 32
@realloc_mv_buffers._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.3, i32 568, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to allocate motion vector buffer\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"realloc_mv_buffers\00", [45 x i8] zeroinitializer }, align 32
@realloc_mv_buffers._entry_ptr = internal global ptr @realloc_mv_buffers._entry, section ".printk_index", align 4
@realloc_mv_buffers._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.3, i32 575, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@realloc_mv_buffers._entry_ptr.55 = internal global ptr @realloc_mv_buffers._entry.54, section ".printk_index", align 4
@vpe_qops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @vpe_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @vpe_buf_prepare, ptr null, ptr null, ptr @vpe_start_streaming, ptr @vpe_stop_streaming, ptr @vpe_buf_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@vb2_dma_contig_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@vpe_queue_setup.__UNIQUE_ID_ddebug362 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.56, ptr @.str.3, ptr @.str.57, i8 1, i8 -1, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vpe_queue_setup\00", [16 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"get %d buffer(s) of size %d\00", [36 x i8] zeroinitializer }, align 32
@vpe_queue_setup.__UNIQUE_ID_ddebug363 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.56, ptr @.str.3, ptr @.str.58, i8 1, i8 -1, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" and %d\0A\00", [23 x i8] zeroinitializer }, align 32
@vpe_buf_prepare.__UNIQUE_ID_ddebug364 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.59, ptr @.str.3, ptr @.str.60, i8 2, i8 2, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vpe_buf_prepare\00", [16 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"type: %d\0A\00", [22 x i8] zeroinitializer }, align 32
@vpe_buf_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.59, ptr @.str.3, i32 2084, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"data will not fit into plane (%lu < %lu)\0A\00", [54 x i8] zeroinitializer }, align 32
@vpe_buf_prepare._entry_ptr = internal global ptr @vpe_buf_prepare._entry, section ".printk_index", align 4
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.62 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@vpe_start_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.3, i32 2185, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"Conversion setup failed, check source and destination parameters\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"vpe_start_streaming\00", [44 x i8] zeroinitializer }, align 32
@vpe_start_streaming._entry_ptr = internal global ptr @vpe_start_streaming._entry, section ".printk_index", align 4
@vpe_dump_regs.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.65, ptr @.str.3, ptr @.str.66, i8 0, i8 -17, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vpe_dump_regs\00", [18 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"VPE Registers:\0A\00", [16 x i8] zeroinitializer }, align 32
@vpe_dump_regs.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.65, ptr @.str.3, ptr @.str.67, i8 0, i8 -17, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%-35s %08x\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PID\00", [28 x i8] zeroinitializer }, align 32
@vpe_dump_regs.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.65, ptr @.str.3, ptr @.str.67, i8 0, i8 -16, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SYSCONFIG\00", [22 x i8] zeroinitializer }, align 32
@vpe_dump_regs.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.65, ptr @.str.3, ptr @.str.67, i8 0, i8 -16, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"INT0_STATUS0_RAW\00", [47 x i8] zeroinitializer }, align 32
@vpe_dump_regs.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.65, ptr @.str.3, ptr @.str.67, i8 0, i8 -16, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"INT0_STATUS0\00", [19 x i8] zeroinitializer }, align 32
@vpe_dump_regs.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.65, ptr @.str.3, ptr @.str.67, i8 0, i8 -16, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"INT0_ENABLE0\00", [19 x i8] zeroinitializer }, align 32
@vpe_dump_regs.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.65, ptr @.str.3, ptr @.str.67, i8 0, i8 -15, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"INT0_STATUS1_RAW\00", [47 x i8] zeroinitializer }, align 32
@vpe_dump_regs.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.65, ptr @.str.3, ptr @.str.67, i8 0, i8 -15, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"INT0_STATUS1\00", [19 x i8] zeroinitializer }, align 32
@vpe_dump_regs.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.65, ptr @.str.3, ptr @.str.67, i8 0, i8 -15, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"INT0_ENABLE1\00", [19 x i8] zeroinitializer }, align 32
@vpe_dump_regs.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.65, ptr @.str.3, ptr @.str.67, i8 0, i8 -15, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"CLK_ENABLE\00", [21 x i8] zeroinitializer }, align 32
@vpe_dump_regs.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.65, ptr @.str.3, ptr @.str.67, i8 0, i8 -14, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CLK_RESET\00", [22 x i8] zeroinitializer }, align 32
@vpe_dump_regs.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.65, ptr @.str.3, ptr @.str.67, i8 0, i8 -14, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"CLK_FORMAT_SELECT\00", [46 x i8] zeroinitializer }, align 32
@vpe_dump_regs.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.65, ptr @.str.3, ptr @.str.67, i8 0, i8 -14, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"CLK_RANGE_MAP\00", [18 x i8] zeroinitializer }, align 32
@vpe_dump_regs.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.65, ptr @.str.3, ptr @.str.67, i8 0, i8 -14, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"US1_R0\00", [25 x i8] zeroinitializer }, align 32
@vpe_dump_regs.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.65, ptr @.str.3, ptr @.str.67, i8 0, i8 -13, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"US1_R1\00", [25 x i8] zeroinitializer }, align 32
@vpe_dump_regs.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.65, ptr @.str.3, ptr @.str.67, i8 0, i8 -13, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"US1_R2\00", [25 x i8] zeroinitializer }, align 32
@vpe_dump_regs.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.65, ptr @.str.3, ptr @.str.67, i8 0, i8 -13, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"US1_R3\00", [25 x i8] zeroinitializer }, align 32
@vpe_dump_regs.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.65, ptr @.str.3, ptr @.str.67, i8 0, i8 -13, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"US1_R4\00", [25 x i8] zeroinitializer }, align 32
@vpe_dump_regs.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.65, ptr @.str.3, ptr @.str.67, i8 0, i8 -12, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"US1_R5\00", [25 x i8] zeroinitializer }, align 32
@vpe_dump_regs.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.65, ptr @.str.3, ptr @.str.67, i8 0, i8 -12, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"US1_R6\00", [25 x i8] zeroinitializer }, align 32
@vpe_dump_regs.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.65, ptr @.str.3, ptr @.str.67, i8 0, i8 -12, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"US1_R7\00", [25 x i8] zeroinitializer }, align 32
@vpe_dump_regs.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.65, ptr @.str.3, ptr @.str.67, i8 0, i8 -12, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"US2_R0\00", [25 x i8] zeroinitializer }, align 32
@vpe_dump_regs.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.65, ptr @.str.3, ptr @.str.67, i8 0, i8 -11, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.89 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"US2_R1\00", [25 x i8] zeroinitializer }, align 32
@vpe_dump_regs.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.65, ptr @.str.3, ptr @.str.67, i8 0, i8 -11, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"US2_R2\00", [25 x i8] zeroinitializer }, align 32
@vpe_dump_regs.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.65, ptr @.str.3, ptr @.str.67, i8 0, i8 -11, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"US2_R3\00", [25 x i8] zeroinitializer }, align 32
@vpe_dump_regs.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.65, ptr @.str.3, ptr @.str.67, i8 0, i8 -11, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"US2_R4\00", [25 x i8] zeroinitializer }, align 32
@vpe_dump_regs.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.65, ptr @.str.3, ptr @.str.67, i8 0, i8 -10, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"US2_R5\00", [25 x i8] zeroinitializer }, align 32
@vpe_dump_regs.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.65, ptr @.str.3, ptr @.str.67, i8 0, i8 -10, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.94 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"US2_R6\00", [25 x i8] zeroinitializer }, align 32
@vpe_dump_regs.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.65, ptr @.str.3, ptr @.str.67, i8 0, i8 -10, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.95 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"US2_R7\00", [25 x i8] zeroinitializer }, align 32
@vpe_dump_regs.__UNIQUE_ID_ddebug328 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.65, ptr @.str.3, ptr @.str.67, i8 0, i8 -10, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.96 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"US3_R0\00", [25 x i8] zeroinitializer }, align 32
@vpe_dump_regs.__UNIQUE_ID_ddebug329 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.65, ptr @.str.3, ptr @.str.67, i8 0, i8 -9, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.97 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"US3_R1\00", [25 x i8] zeroinitializer }, align 32
@vpe_dump_regs.__UNIQUE_ID_ddebug330 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.65, ptr @.str.3, ptr @.str.67, i8 0, i8 -9, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.98 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"US3_R2\00", [25 x i8] zeroinitializer }, align 32
@vpe_dump_regs.__UNIQUE_ID_ddebug331 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.65, ptr @.str.3, ptr @.str.67, i8 0, i8 -9, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.99 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"US3_R3\00", [25 x i8] zeroinitializer }, align 32
@vpe_dump_regs.__UNIQUE_ID_ddebug332 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.65, ptr @.str.3, ptr @.str.67, i8 0, i8 -9, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.100 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"US3_R4\00", [25 x i8] zeroinitializer }, align 32
@vpe_dump_regs.__UNIQUE_ID_ddebug333 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.65, ptr @.str.3, ptr @.str.67, i8 0, i8 -8, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.101 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"US3_R5\00", [25 x i8] zeroinitializer }, align 32
@vpe_dump_regs.__UNIQUE_ID_ddebug334 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.65, ptr @.str.3, ptr @.str.67, i8 0, i8 -8, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.102 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"US3_R6\00", [25 x i8] zeroinitializer }, align 32
@vpe_dump_regs.__UNIQUE_ID_ddebug335 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.65, ptr @.str.3, ptr @.str.67, i8 0, i8 -8, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.103 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"US3_R7\00", [25 x i8] zeroinitializer }, align 32
@vpe_dump_regs.__UNIQUE_ID_ddebug336 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.65, ptr @.str.3, ptr @.str.67, i8 0, i8 -8, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.104 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DEI_FRAME_SIZE\00", [17 x i8] zeroinitializer }, align 32
@vpe_dump_regs.__UNIQUE_ID_ddebug337 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.65, ptr @.str.3, ptr @.str.67, i8 0, i8 -7, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.105 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MDT_BYPASS\00", [21 x i8] zeroinitializer }, align 32
@vpe_dump_regs.__UNIQUE_ID_ddebug338 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.65, ptr @.str.3, ptr @.str.67, i8 0, i8 -7, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.106 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"MDT_SF_THRESHOLD\00", [47 x i8] zeroinitializer }, align 32
@vpe_dump_regs.__UNIQUE_ID_ddebug339 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.65, ptr @.str.3, ptr @.str.67, i8 0, i8 -7, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.107 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"EDI_CONFIG\00", [21 x i8] zeroinitializer }, align 32
@vpe_dump_regs.__UNIQUE_ID_ddebug340 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.65, ptr @.str.3, ptr @.str.67, i8 0, i8 -7, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.108 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DEI_EDI_LUT_R0\00", [17 x i8] zeroinitializer }, align 32
@vpe_dump_regs.__UNIQUE_ID_ddebug341 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.65, ptr @.str.3, ptr @.str.67, i8 0, i8 -6, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.109 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DEI_EDI_LUT_R1\00", [17 x i8] zeroinitializer }, align 32
@vpe_dump_regs.__UNIQUE_ID_ddebug342 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.65, ptr @.str.3, ptr @.str.67, i8 0, i8 -6, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.110 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DEI_EDI_LUT_R2\00", [17 x i8] zeroinitializer }, align 32
@vpe_dump_regs.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.65, ptr @.str.3, ptr @.str.67, i8 0, i8 -6, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.111 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DEI_EDI_LUT_R3\00", [17 x i8] zeroinitializer }, align 32
@vpe_dump_regs.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.65, ptr @.str.3, ptr @.str.67, i8 0, i8 -6, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.112 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DEI_FMD_WINDOW_R0\00", [46 x i8] zeroinitializer }, align 32
@vpe_dump_regs.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.65, ptr @.str.3, ptr @.str.67, i8 0, i8 -5, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.113 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DEI_FMD_WINDOW_R1\00", [46 x i8] zeroinitializer }, align 32
@vpe_dump_regs.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.65, ptr @.str.3, ptr @.str.67, i8 0, i8 -5, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.114 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DEI_FMD_CONTROL_R0\00", [45 x i8] zeroinitializer }, align 32
@vpe_dump_regs.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.65, ptr @.str.3, ptr @.str.67, i8 0, i8 -5, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.115 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DEI_FMD_CONTROL_R1\00", [45 x i8] zeroinitializer }, align 32
@vpe_dump_regs.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.65, ptr @.str.3, ptr @.str.67, i8 0, i8 -5, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.116 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DEI_FMD_STATUS_R0\00", [46 x i8] zeroinitializer }, align 32
@vpe_dump_regs.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.65, ptr @.str.3, ptr @.str.67, i8 0, i8 -4, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.117 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DEI_FMD_STATUS_R1\00", [46 x i8] zeroinitializer }, align 32
@vpe_dump_regs.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.65, ptr @.str.3, ptr @.str.67, i8 0, i8 -4, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.118 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DEI_FMD_STATUS_R2\00", [46 x i8] zeroinitializer }, align 32
@vpe_release.__UNIQUE_ID_ddebug368 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.119, ptr @.str.3, ptr @.str.120, i8 2, i8 89, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.119 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vpe_release\00", [20 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"releasing instance %p\0A\00", [41 x i8] zeroinitializer }, align 32
@vpe_release.__UNIQUE_ID_ddebug369 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.119, ptr @.str.3, ptr @.str.121, i8 2, i8 97, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.121 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"last instance released\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"platform:%s\00", [20 x i8] zeroinitializer }, align 32
@__vpe_s_fmt._entry = internal constant %struct.pi_entry { ptr @.str.123, ptr @.str.124, ptr @.str.3, i32 1743, ptr @.str.4, ptr @.str.5 }, align 1
@.str.123 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"queue busy\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"__vpe_s_fmt\00", [20 x i8] zeroinitializer }, align 32
@__vpe_s_fmt._entry_ptr = internal global ptr @__vpe_s_fmt._entry, section ".printk_index", align 4
@__vpe_s_fmt.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.124, ptr @.str.3, ptr @.str.125, i8 1, i8 -69, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.125 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Setting format for type %d, wxh: %dx%d, fmt: %d bpl_y %d\00", [39 x i8] zeroinitializer }, align 32
@__vpe_s_fmt.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.124, ptr @.str.3, ptr @.str.126, i8 1, i8 -68, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.126 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c" bpl_uv %d\0A\00", [20 x i8] zeroinitializer }, align 32
@__vpe_try_fmt.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.127, ptr @.str.3, ptr @.str.128, i8 1, i8 -110, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.127 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"__vpe_try_fmt\00", [18 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Fourcc format (0x%08x) invalid.\0A\00", [63 x i8] zeroinitializer }, align 32
@vpe_s_selection.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.129, ptr @.str.3, ptr @.str.130, i8 1, i8 -23, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.129 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vpe_s_selection\00", [16 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"requested crop/compose values are already set\0A\00", [49 x i8] zeroinitializer }, align 32
@__vpe_try_selection._entry = internal constant %struct.pi_entry { ptr @.str.131, ptr @.str.132, ptr @.str.3, i32 1855, ptr @.str.4, ptr @.str.5 }, align 1
@.str.131 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"negative values for top and left\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"__vpe_try_selection\00", [44 x i8] zeroinitializer }, align 32
@__vpe_try_selection._entry_ptr = internal global ptr @__vpe_try_selection._entry, section ".printk_index", align 4
@vpe_runtime_put.__UNIQUE_ID_ddebug371 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.133, ptr @.str.3, ptr @.str.134, i8 2, i8 109, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.133 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vpe_runtime_put\00", [16 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vpe_runtime_put\0A\00", [47 x i8] zeroinitializer }, align 32
@vpe_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.136, ptr @.str.3, i32 2629, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\016%s: Removing vpe\00", [45 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vpe_remove\00", [21 x i8] zeroinitializer }, align 32
@vpe_remove._entry_ptr = internal global ptr @vpe_remove._entry, section ".printk_index", align 4
@switch.table.vpe_enum_fmt = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 2, i32 2, i32 1, i32 2, i32 1, i32 2, i32 2, i32 1, i32 2, i32 1, i32 2, i32 1, i32 2], [44 x i8] zeroinitializer }, align 32
@switch.table.vpe_s_fmt = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 2, i32 2, i32 1, i32 2, i32 1, i32 2, i32 2, i32 1, i32 2, i32 1, i32 2, i32 1, i32 2], [44 x i8] zeroinitializer }, align 32
@switch.table.vpe_try_fmt = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 2, i32 2, i32 1, i32 2, i32 1, i32 2, i32 2, i32 1, i32 2, i32 1, i32 2, i32 1, i32 2], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.137 = internal global [4 x i64] [i64 2, i64 32, i64 825382478, i64 842094158]
@__sancov_gen_cov_switch_values.138 = internal global [4 x i64] [i64 2, i64 32, i64 825382478, i64 842094158]
@__sancov_gen_cov_switch_values.139 = internal global [4 x i64] [i64 2, i64 32, i64 825382478, i64 842094158]
@__sancov_gen_cov_switch_values.140 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 9, i64 10]
@__sancov_gen_cov_switch_values.141 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 9, i64 10]
@__sancov_gen_cov_switch_values.142 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 5, i64 6]
@__sancov_gen_cov_switch_values.143 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.144 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.145 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 9, i64 10]
@__sancov_gen_cov_switch_values.146 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.147 = internal global [4 x i64] [i64 2, i64 32, i64 825382478, i64 842094158]
@__sancov_gen_cov_switch_values.148 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.149 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 256, i64 257, i64 258]
@__sancov_gen_cov_switch_values.150 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.151 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 256]
@__sancov_gen_cov_switch_values.152 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 9, i64 10]
@__sancov_gen_cov_switch_values.153 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 9, i64 10]
@__sancov_gen_cov_switch_values.154 = internal global [5 x i64] [i64 3, i64 32, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.155 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 5, i64 6, i64 7]
@___asan_gen_.156 = private unnamed_addr constant [9 x i8] c"vpe_pdrv\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 2652, i32 31 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 2656, i32 11 }
@___asan_gen_.162 = private unnamed_addr constant [13 x i8] c"vpe_of_match\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 2643, i32 34 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 2526, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 2535, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 2542, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 2545, i32 7 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 2547, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant [8 x i8] c"m2m_ops\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 2462, i32 34 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 2573, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 2591, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 2595, i32 28 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 2601, i32 30 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 1378, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 1384, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 1389, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 1413, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 1510, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 1355, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 1361, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant [10 x i8] c"port_data\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 173, i32 35 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 1057, i32 4 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 1123, i32 4 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 2472, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant [13 x i8] c"vpe_videodev\00", align 1
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 2452, i32 34 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 2503, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 2515, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant [9 x i8] c"vpe_fops\00", align 1
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 2443, i32 42 }
@___asan_gen_.318 = private unnamed_addr constant [14 x i8] c"vpe_ioctl_ops\00", align 1
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 1993, i32 36 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 2278, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 2314, i32 2 }
@___asan_gen_.333 = private unnamed_addr constant [17 x i8] c"vpe_bufs_per_job\00", align 1
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 2255, i32 38 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 2373, i32 3 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 2379, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant [13 x i8] c"vpe_ctrl_ops\00", align 1
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 1989, i32 35 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 2258, i32 10 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 1982, i32 3 }
@___asan_gen_.357 = private unnamed_addr constant [12 x i8] c"vpe_formats\00", align 1
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 234, i32 23 }
@___asan_gen_.360 = private unnamed_addr constant [10 x i8] c"us_coeffs\00", align 1
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 109, i32 35 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 568, i32 3 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 575, i32 3 }
@___asan_gen_.375 = private unnamed_addr constant [9 x i8] c"vpe_qops\00", align 1
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 2209, i32 29 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 2043, i32 2 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 2046, i32 3 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 2059, i32 2 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 2081, i32 4 }
@___asan_gen_.400 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 1163, i32 7 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 2183, i32 3 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 957, i32 2 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 959, i32 2 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 960, i32 2 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 961, i32 2 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 962, i32 2 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 963, i32 2 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 964, i32 2 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 965, i32 2 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 966, i32 2 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 967, i32 2 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 968, i32 2 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 969, i32 2 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 970, i32 2 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 971, i32 2 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 972, i32 2 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 973, i32 2 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 974, i32 2 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 975, i32 2 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 976, i32 2 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 977, i32 2 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 978, i32 2 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 979, i32 2 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 980, i32 2 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 981, i32 2 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 982, i32 2 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 983, i32 2 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 984, i32 2 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 985, i32 2 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 986, i32 2 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 987, i32 2 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 988, i32 2 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 989, i32 2 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 990, i32 2 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 991, i32 2 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 992, i32 2 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 993, i32 2 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 994, i32 2 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 995, i32 2 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 996, i32 2 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 997, i32 2 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 998, i32 2 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 999, i32 2 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 1000, i32 2 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 1001, i32 2 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 1002, i32 2 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 1003, i32 2 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 1004, i32 2 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 1005, i32 2 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 1006, i32 2 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 1007, i32 2 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 1008, i32 2 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 1009, i32 2 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 2407, i32 2 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 2436, i32 3 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 1525, i32 49 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 1743, i32 3 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 1773, i32 2 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 1777, i32 3 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 1607, i32 3 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 1955, i32 3 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 1855, i32 3 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 2484, i32 2 }
@___asan_gen_.621 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.627 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.628 = private constant [39 x i8] c"../drivers/media/platform/ti-vpe/vpe.c\00", align 1
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 2629, i32 2 }
@___asan_gen_.630 = private unnamed_addr constant [26 x i8] c"switch.table.vpe_enum_fmt\00", align 1
@___asan_gen_.631 = private unnamed_addr constant [23 x i8] c"switch.table.vpe_s_fmt\00", align 1
@___asan_gen_.632 = private unnamed_addr constant [25 x i8] c"switch.table.vpe_try_fmt\00", align 1
@llvm.compiler.used = appending global [189 x ptr] [ptr @__UNIQUE_ID_author375, ptr @__UNIQUE_ID_description374, ptr @__UNIQUE_ID_file376, ptr @__UNIQUE_ID_license377, ptr @__exitcall_vpe_pdrv_exit, ptr @__initcall__kmod_ti_vpe__373_2661_vpe_pdrv_init6, ptr @__vpe_s_fmt._entry, ptr @__vpe_s_fmt._entry_ptr, ptr @__vpe_try_selection._entry, ptr @__vpe_try_selection._entry_ptr, ptr @add_in_dtd._entry, ptr @add_in_dtd._entry_ptr, ptr @add_out_dtd._entry, ptr @add_out_dtd._entry_ptr, ptr @dei_error._entry, ptr @dei_error._entry_ptr, ptr @ds1_uv_error._entry, ptr @ds1_uv_error._entry_ptr, ptr @realloc_mv_buffers._entry, ptr @realloc_mv_buffers._entry.54, ptr @realloc_mv_buffers._entry_ptr, ptr @realloc_mv_buffers._entry_ptr.55, ptr @vpe_buf_prepare._entry, ptr @vpe_buf_prepare._entry_ptr, ptr @vpe_fw_cb._entry, ptr @vpe_fw_cb._entry.40, ptr @vpe_fw_cb._entry_ptr, ptr @vpe_fw_cb._entry_ptr.43, ptr @vpe_irq._entry, ptr @vpe_irq._entry.24, ptr @vpe_irq._entry_ptr, ptr @vpe_irq._entry_ptr.27, ptr @vpe_pdrv_exit, ptr @vpe_probe._entry, ptr @vpe_probe._entry.10, ptr @vpe_probe._entry.13, ptr @vpe_probe._entry_ptr, ptr @vpe_probe._entry_ptr.12, ptr @vpe_probe._entry_ptr.15, ptr @vpe_remove._entry, ptr @vpe_remove._entry_ptr, ptr @vpe_s_ctrl._entry, ptr @vpe_s_ctrl._entry_ptr, ptr @vpe_start_streaming._entry, ptr @vpe_start_streaming._entry_ptr, ptr @vpe_pdrv, ptr @.str, ptr @vpe_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @vpe_probe.__key, ptr @.str.6, ptr @vpe_probe.__key.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @m2m_ops, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @port_data, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @vpe_videodev, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @vpe_fops, ptr @vpe_ioctl_ops, ptr @.str.44, ptr @.str.45, ptr @vpe_open._key, ptr @.str.46, ptr @vpe_bufs_per_job, ptr @.str.47, ptr @.str.48, ptr @vpe_ctrl_ops, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @vpe_formats, ptr @us_coeffs, ptr @.str.52, ptr @.str.53, ptr @vpe_qops, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @switch.table.vpe_enum_fmt, ptr @switch.table.vpe_s_fmt, ptr @switch.table.vpe_try_fmt], section "llvm.metadata"
@0 = internal global [161 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpe_pdrv to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpe_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpe_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpe_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpe_probe.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpe_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m2m_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpe_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpe_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpe_irq._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dei_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1_uv_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port_data to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_out_dtd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_in_dtd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpe_videodev to i32), i32 1352, i32 1696, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpe_fw_cb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpe_fw_cb._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpe_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpe_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpe_open._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpe_bufs_per_job to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpe_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpe_s_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpe_formats to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @us_coeffs to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @realloc_mv_buffers._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @realloc_mv_buffers._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpe_qops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpe_buf_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpe_start_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpe_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vpe_enum_fmt to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vpe_s_fmt to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vpe_try_fmt to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @vpe_pdrv_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @vpe_pdrv, ptr noundef null) #15
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @vpe_pdrv_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @platform_driver_unregister(ptr noundef nonnull @vpe_pdrv) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpe_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %coherent_dma_mask.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 19
  %dma_mask.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 18
  %0 = ptrtoint ptr %dma_mask.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %coherent_dma_mask.i, ptr %dma_mask.i, align 8
  %call.i.i150 = tail call i32 @dma_set_mask(ptr noundef %dev1, i64 noundef 4294967295) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i150)
  %cmp.i.i = icmp eq i32 %call.i.i150, 0
  br i1 %cmp.i.i, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1.i.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev1, i64 noundef 4294967295) #15
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 1752, i32 noundef 3520) #15
  %tobool5.not = icmp eq ptr %call.i, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %do.body8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body8:                                         ; preds = %if.end
  %lock = getelementptr inbounds %struct.vpe_dev, ptr %call.i, i32 0, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @vpe_probe.__key, i16 noundef signext 3) #15
  %call13 = tail call i32 @v4l2_device_register(ptr noundef %dev1, ptr noundef nonnull %call.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %do.body8.cleanup_crit_edge

do.body8.cleanup_crit_edge:                       ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end16:                                         ; preds = %do.body8
  %num_instances = getelementptr inbounds %struct.vpe_dev, ptr %call.i, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_instances, i32 noundef 4) #15
  %1 = ptrtoint ptr %num_instances to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 0, ptr %num_instances, align 4
  %dev_mutex = getelementptr inbounds %struct.vpe_dev, ptr %call.i, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %dev_mutex, ptr noundef nonnull @.str.8, ptr noundef nonnull @vpe_probe.__key.7) #15
  %call20 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.9) #15
  %res = getelementptr inbounds %struct.vpe_dev, ptr %call.i, i32 0, i32 9
  %2 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call20, ptr %res, align 4
  %tobool22.not = icmp eq ptr %call20, null
  br i1 %tobool22.not, label %do.end26, label %if.end28

do.end26:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #18
  br label %cleanup

if.end28:                                         ; preds = %if.end16
  %3 = ptrtoint ptr %call20 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %call20, align 4
  %call31 = tail call ptr @devm_ioremap(ptr noundef %dev1, i32 noundef %4, i32 noundef 32768) #15
  %base = getelementptr inbounds %struct.vpe_dev, ptr %call.i, i32 0, i32 8
  %5 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call31, ptr %base, align 8
  %tobool33.not = icmp eq ptr %call31, null
  br i1 %tobool33.not, label %if.end28.v4l2_dev_unreg_crit_edge, label %if.end35

if.end28.v4l2_dev_unreg_crit_edge:                ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #17
  br label %v4l2_dev_unreg

if.end35:                                         ; preds = %if.end28
  %call36 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #15
  %call.i151 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call36, ptr noundef nonnull @vpe_irq, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i151)
  %tobool39.not = icmp eq i32 %call.i151, 0
  br i1 %tobool39.not, label %if.end41, label %if.end35.v4l2_dev_unreg_crit_edge

if.end35.v4l2_dev_unreg_crit_edge:                ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #17
  br label %v4l2_dev_unreg

if.end41:                                         ; preds = %if.end35
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call42 = tail call ptr @v4l2_m2m_init(ptr noundef nonnull @m2m_ops) #15
  %m2m_dev = getelementptr inbounds %struct.vpe_dev, ptr %call.i, i32 0, i32 2
  %7 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call42, ptr %m2m_dev, align 8
  %cmp.i = icmp ugt ptr %call42, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end48, label %if.end53

do.end48:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #17
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.14) #18
  %10 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %m2m_dev, align 8
  %12 = ptrtoint ptr %11 to i32
  br label %v4l2_dev_unreg

if.end53:                                         ; preds = %if.end41
  tail call void @pm_runtime_enable(ptr noundef %dev1) #15
  %call55 = tail call fastcc i32 @vpe_runtime_get(ptr noundef %pdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %cmp = icmp slt i32 %call55, 0
  br i1 %cmp, label %if.end53.rel_m2m_crit_edge, label %if.end57

if.end53.rel_m2m_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #17
  br label %rel_m2m

if.end57:                                         ; preds = %if.end53
  %13 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base, align 8
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !382
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 50331648) #15, !srcloc !383
  %15 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %16, i32 260
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #15, !srcloc !384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !385
  %18 = or i32 %17, 33554432
  %19 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base, align 8
  %add.ptr.i2.i.i = getelementptr i8, ptr %20, i32 260
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !382
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i, i32 %18) #15, !srcloc !383
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 150, i32 noundef 2) #15
  %21 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base, align 8
  %add.ptr.i.i3.i = getelementptr i8, ptr %22, i32 260
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i3.i) #15, !srcloc !384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !385
  %24 = and i32 %23, -33554433
  %25 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base, align 8
  %add.ptr.i2.i5.i = getelementptr i8, ptr %26, i32 260
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !382
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i5.i, i32 %24) #15, !srcloc !383
  %27 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base, align 8
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #15, !srcloc !384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !385
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vpe_probe.__UNIQUE_ID_ddebug372, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vpe_probe, %do.end70)) #15
          to label %if.then65 [label %do.end70], !srcloc !386

if.then65:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #17
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #15
  %and.i.i = lshr i32 %30, 16
  %shr.i.i = and i32 %and.i.i, 4095
  %31 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vpe_probe.__UNIQUE_ID_ddebug372, ptr noundef %32, ptr noundef nonnull @.str.17, i32 noundef %shr.i.i) #15
  br label %do.end70

do.end70:                                         ; preds = %if.then65, %if.end57
  %33 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base, align 8
  %add.ptr.i.i.i154 = getelementptr i8, ptr %34, i32 260
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i154) #15, !srcloc !384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !385
  %36 = or i32 %35, 16777216
  %37 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base, align 8
  %add.ptr.i2.i.i155 = getelementptr i8, ptr %38, i32 260
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !382
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i155, i32 %36) #15, !srcloc !383
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 150, i32 noundef 2) #15
  %39 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base, align 8
  %add.ptr.i.i3.i156 = getelementptr i8, ptr %40, i32 260
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i3.i156) #15, !srcloc !384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !385
  %42 = and i32 %41, -16777217
  %43 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base, align 8
  %add.ptr.i2.i5.i157 = getelementptr i8, ptr %44, i32 260
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !382
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i5.i157, i32 %42) #15, !srcloc !383
  %call71 = tail call ptr @sc_create(ptr noundef %pdev, ptr noundef nonnull @.str.18) #15
  %sc = getelementptr inbounds %struct.vpe_dev, ptr %call.i, i32 0, i32 12
  %45 = ptrtoint ptr %sc to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call71, ptr %sc, align 4
  %cmp.i158 = icmp ugt ptr %call71, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i158, label %if.then74, label %if.end77

if.then74:                                        ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #17
  %46 = ptrtoint ptr %call71 to i32
  br label %runtime_put

if.end77:                                         ; preds = %do.end70
  %call78 = tail call ptr @csc_create(ptr noundef %pdev, ptr noundef nonnull @.str.19) #15
  %csc = getelementptr inbounds %struct.vpe_dev, ptr %call.i, i32 0, i32 13
  %47 = ptrtoint ptr %csc to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call78, ptr %csc, align 8
  %cmp.i159 = icmp ugt ptr %call78, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i159, label %if.then81, label %if.end84

if.then81:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #17
  %48 = ptrtoint ptr %call78 to i32
  br label %runtime_put

if.end84:                                         ; preds = %if.end77
  %vpdma_data = getelementptr inbounds %struct.vpe_dev, ptr %call.i, i32 0, i32 10
  %vpdma = getelementptr inbounds %struct.vpe_dev, ptr %call.i, i32 0, i32 11
  %49 = ptrtoint ptr %vpdma to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %vpdma_data, ptr %vpdma, align 8
  %call86 = tail call i32 @vpdma_create(ptr noundef %pdev, ptr noundef %vpdma_data, ptr noundef nonnull @vpe_fw_cb) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.end84.cleanup_crit_edge, label %if.end84.runtime_put_crit_edge

if.end84.runtime_put_crit_edge:                   ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #17
  br label %runtime_put

if.end84.cleanup_crit_edge:                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

runtime_put:                                      ; preds = %if.end84.runtime_put_crit_edge, %if.then81, %if.then74
  %ret.0 = phi i32 [ %46, %if.then74 ], [ %48, %if.then81 ], [ %call86, %if.end84.runtime_put_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vpe_runtime_put.__UNIQUE_ID_ddebug371, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vpe_probe, %do.end.i)) #15
          to label %if.then.i [label %do.end.i], !srcloc !386

if.then.i:                                        ; preds = %runtime_put
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vpe_runtime_put.__UNIQUE_ID_ddebug371, ptr noundef %dev1, ptr noundef nonnull @.str.134) #15
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %runtime_put
  %call.i.i160 = tail call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 4) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i160)
  %cmp.i161 = icmp slt i32 %call.i.i160, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -38, i32 %call.i.i160)
  %cmp6.i = icmp ne i32 %call.i.i160, -38
  %spec.select.i = and i1 %cmp.i161, %cmp6.i
  br i1 %spec.select.i, label %do.end22.i, label %do.end.i.rel_m2m_crit_edge, !prof !387

do.end.i.rel_m2m_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rel_m2m

do.end22.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2487, i32 noundef 9, ptr noundef null) #15
  br label %rel_m2m

rel_m2m:                                          ; preds = %do.end22.i, %do.end.i.rel_m2m_crit_edge, %if.end53.rel_m2m_crit_edge
  %ret.1 = phi i32 [ %call55, %if.end53.rel_m2m_crit_edge ], [ %ret.0, %do.end.i.rel_m2m_crit_edge ], [ %ret.0, %do.end22.i ]
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #15
  %50 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %m2m_dev, align 8
  tail call void @v4l2_m2m_release(ptr noundef %51) #15
  br label %v4l2_dev_unreg

v4l2_dev_unreg:                                   ; preds = %rel_m2m, %do.end48, %if.end35.v4l2_dev_unreg_crit_edge, %if.end28.v4l2_dev_unreg_crit_edge
  %ret.2 = phi i32 [ %call.i151, %if.end35.v4l2_dev_unreg_crit_edge ], [ %12, %do.end48 ], [ %ret.1, %rel_m2m ], [ -12, %if.end28.v4l2_dev_unreg_crit_edge ]
  tail call void @v4l2_device_unregister(ptr noundef nonnull %call.i) #15
  br label %cleanup

cleanup:                                          ; preds = %v4l2_dev_unreg, %if.end84.cleanup_crit_edge, %do.end26, %do.body8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call.i.i150, %do.end ], [ %ret.2, %v4l2_dev_unreg ], [ -19, %do.end26 ], [ -12, %if.end.cleanup_crit_edge ], [ %call13, %do.body8.cleanup_crit_edge ], [ 0, %if.end84.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpe_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %name = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.135, ptr noundef %name) #18
  %m2m_dev = getelementptr inbounds %struct.vpe_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m2m_dev, align 8
  tail call void @v4l2_m2m_release(ptr noundef %3) #15
  %vfd = getelementptr inbounds %struct.vpe_dev, ptr %1, i32 0, i32 1
  tail call void @video_unregister_device(ptr noundef %vfd) #15
  tail call void @v4l2_device_unregister(ptr noundef %1) #15
  %base.i.i = getelementptr inbounds %struct.vpe_dev, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !382
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #15, !srcloc !383
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vpe_runtime_put.__UNIQUE_ID_ddebug371, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vpe_remove, %do.end.i)) #15
          to label %if.then.i [label %do.end.i], !srcloc !386

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vpe_runtime_put.__UNIQUE_ID_ddebug371, ptr noundef %dev.i, ptr noundef nonnull @.str.134) #15
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %entry
  %dev4.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev4.i, i32 noundef 4) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -38, i32 %call.i.i)
  %cmp6.i = icmp ne i32 %call.i.i, -38
  %spec.select.i = and i1 %cmp.i, %cmp6.i
  br i1 %spec.select.i, label %do.end22.i, label %do.end.i.vpe_runtime_put.exit_crit_edge, !prof !387

do.end.i.vpe_runtime_put.exit_crit_edge:          ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %vpe_runtime_put.exit

do.end22.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2487, i32 noundef 9, ptr noundef null) #15
  br label %vpe_runtime_put.exit

vpe_runtime_put.exit:                             ; preds = %do.end22.i, %do.end.i.vpe_runtime_put.exit_crit_edge
  tail call void @__pm_runtime_disable(ptr noundef %dev4.i, i1 noundef zeroext true) #15
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpe_irq(i32 noundef %irq_vpe, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.vpe_dev, ptr %data, i32 0, i32 8
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 40
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #15, !srcloc !384
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !385
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 8
  %add.ptr.i315 = getelementptr i8, ptr %5, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !382
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i315, i32 %2) #15, !srcloc !383
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vpe_irq.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vpe_irq, %if.end8)) #15
          to label %if.then6 [label %if.end8], !srcloc !386

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vpe_irq.__UNIQUE_ID_ddebug351, ptr noundef %7, ptr noundef nonnull @.str.21, i32 noundef %3) #15
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.then, %entry.if.end8_crit_edge
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 8
  %add.ptr.i317 = getelementptr i8, ptr %9, i32 44
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i317) #15, !srcloc !384
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !385
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool10.not = icmp eq i32 %10, 0
  br i1 %tobool10.not, label %if.end32.thread, label %if.then11

if.then11:                                        ; preds = %if.end8
  %12 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i, align 8
  %add.ptr.i319 = getelementptr i8, ptr %13, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !382
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i319, i32 %10) #15, !srcloc !383
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vpe_irq.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vpe_irq, %if.end32)) #15
          to label %if.then26 [label %if.end32], !srcloc !386

if.then26:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #17
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vpe_irq.__UNIQUE_ID_ddebug352, ptr noundef %15, ptr noundef nonnull @.str.22, i32 noundef %11) #15
  br label %if.end32

if.end32:                                         ; preds = %if.then26, %if.then11
  %m2m_dev = getelementptr inbounds %struct.vpe_dev, ptr %data, i32 0, i32 2
  %16 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %m2m_dev, align 8
  %call33 = tail call ptr @v4l2_m2m_get_curr_priv(ptr noundef %17) #15
  %tobool34.not = icmp eq ptr %call33, null
  br i1 %tobool34.not, label %if.end32.do.end38_crit_edge, label %if.then43.critedge

if.end32.do.end38_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end38

if.end32.thread:                                  ; preds = %if.end8
  %m2m_dev325 = getelementptr inbounds %struct.vpe_dev, ptr %data, i32 0, i32 2
  %18 = ptrtoint ptr %m2m_dev325 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %m2m_dev325, align 8
  %call33326 = tail call ptr @v4l2_m2m_get_curr_priv(ptr noundef %19) #15
  %tobool34.not327 = icmp eq ptr %call33326, null
  br i1 %tobool34.not327, label %if.end32.thread.do.end38_crit_edge, label %if.end32.thread.if.end53_crit_edge

if.end32.thread.if.end53_crit_edge:               ; preds = %if.end32.thread
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end53

if.end32.thread.do.end38_crit_edge:               ; preds = %if.end32.thread
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end38

do.end38:                                         ; preds = %if.end32.thread.do.end38_crit_edge, %if.end32.do.end38_crit_edge
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.23) #18
  br label %handled

if.then43.critedge:                               ; preds = %if.end32
  %and = and i32 %11, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool44.not = icmp eq i32 %and, 0
  br i1 %tobool44.not, label %if.then43.critedge.if.end47_crit_edge, label %if.then45

if.then43.critedge.if.end47_crit_edge:            ; preds = %if.then43.critedge
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end47

if.then45:                                        ; preds = %if.then43.critedge
  call void @__sanitizer_cov_trace_pc() #17
  %and46 = and i32 %11, -65537
  %dev.i = getelementptr inbounds %struct.vpe_ctx, ptr %call33, i32 0, i32 1
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %25, ptr noundef nonnull @.str.29) #18
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %if.then43.critedge.if.end47_crit_edge
  %irqst1.0 = phi i32 [ %and46, %if.then45 ], [ %11, %if.then43.critedge.if.end47_crit_edge ]
  %and48 = and i32 %irqst1.0, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.end47.if.end53_crit_edge, label %if.then50

if.end47.if.end53_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end53

if.then50:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #17
  %and51 = and i32 %irqst1.0, -4194305
  %dev.i320 = getelementptr inbounds %struct.vpe_ctx, ptr %call33, i32 0, i32 1
  %26 = ptrtoint ptr %dev.i320 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i320, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %29, ptr noundef nonnull @.str.31) #18
  br label %if.end53

if.end53:                                         ; preds = %if.then50, %if.end47.if.end53_crit_edge, %if.end32.thread.if.end53_crit_edge
  %m2m_dev328334 = phi ptr [ %m2m_dev, %if.then50 ], [ %m2m_dev, %if.end47.if.end53_crit_edge ], [ %m2m_dev325, %if.end32.thread.if.end53_crit_edge ]
  %call33329333 = phi ptr [ %call33, %if.then50 ], [ %call33, %if.end47.if.end53_crit_edge ], [ %call33326, %if.end32.thread.if.end53_crit_edge ]
  %irqst1.1 = phi i32 [ %and51, %if.then50 ], [ %irqst1.0, %if.end47.if.end53_crit_edge ], [ 0, %if.end32.thread.if.end53_crit_edge ]
  br i1 %tobool.not, label %if.end53.if.end62_crit_edge, label %if.then55

if.end53.if.end62_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end62

if.then55:                                        ; preds = %if.end53
  %and56 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %if.then55.if.end60_crit_edge, label %if.then58

if.then55.if.end60_crit_edge:                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end60

if.then58:                                        ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #17
  %dev59 = getelementptr inbounds %struct.vpe_ctx, ptr %call33329333, i32 0, i32 1
  %30 = ptrtoint ptr %dev59 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev59, align 4
  %vpdma = getelementptr inbounds %struct.vpe_dev, ptr %31, i32 0, i32 11
  %32 = ptrtoint ptr %vpdma to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %vpdma, align 8
  tail call void @vpdma_clear_list_stat(ptr noundef %33, i32 noundef 0, i32 noundef 0) #15
  br label %if.end60

if.end60:                                         ; preds = %if.then58, %if.then55.if.end60_crit_edge
  %and61 = and i32 %3, -2
  br label %if.end62

if.end62:                                         ; preds = %if.end60, %if.end53.if.end62_crit_edge
  %irqst0.0 = phi i32 [ %and61, %if.end60 ], [ 0, %if.end53.if.end62_crit_edge ]
  %or = or i32 %irqst0.0, %irqst1.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %tobool63.not = icmp eq i32 %or, 0
  br i1 %tobool63.not, label %if.end62.if.end70_crit_edge, label %do.end67

if.end62.if.end70_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end70

do.end67:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #17
  %34 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %35, ptr noundef nonnull @.str.25, i32 noundef %irqst0.0, i32 noundef %irqst1.1) #18
  br label %if.end70

if.end70:                                         ; preds = %do.end67, %if.end62.if.end70_crit_edge
  br i1 %tobool.not, label %if.end70.handled_crit_edge, label %if.end73

if.end70.handled_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #17
  br label %handled

if.end73:                                         ; preds = %if.end70
  %dev.i321 = getelementptr inbounds %struct.vpe_ctx, ptr %call33329333, i32 0, i32 1
  %36 = ptrtoint ptr %dev.i321 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev.i321, align 4
  %base.i.i = getelementptr inbounds %struct.vpe_dev, ptr %37, i32 0, i32 8
  %38 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %39, i32 56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !382
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -1) #15, !srcloc !383
  %40 = ptrtoint ptr %dev.i321 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev.i321, align 4
  %base.i5.i = getelementptr inbounds %struct.vpe_dev, ptr %41, i32 0, i32 8
  %42 = ptrtoint ptr %base.i5.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base.i5.i, align 8
  %add.ptr.i6.i = getelementptr i8, ptr %43, i32 60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !382
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 -1) #15, !srcloc !383
  %44 = ptrtoint ptr %dev.i321 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev.i321, align 4
  %vpdma.i = getelementptr inbounds %struct.vpe_dev, ptr %45, i32 0, i32 11
  %46 = ptrtoint ptr %vpdma.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %vpdma.i, align 8
  tail call void @vpdma_enable_list_complete_irq(ptr noundef %47, i32 noundef 0, i32 noundef 0, i1 noundef zeroext false) #15
  %vpdma74 = getelementptr inbounds %struct.vpe_dev, ptr %data, i32 0, i32 11
  %48 = ptrtoint ptr %vpdma74 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %vpdma74, align 8
  %desc_list = getelementptr inbounds %struct.vpe_ctx, ptr %call33329333, i32 0, i32 17
  tail call void @vpdma_unmap_desc_buf(ptr noundef %49, ptr noundef %desc_list) #15
  %50 = ptrtoint ptr %vpdma74 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %vpdma74, align 8
  %mmr_adb = getelementptr inbounds %struct.vpe_ctx, ptr %call33329333, i32 0, i32 14
  tail call void @vpdma_unmap_desc_buf(ptr noundef %51, ptr noundef %mmr_adb) #15
  %52 = ptrtoint ptr %vpdma74 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %vpdma74, align 8
  %sc_coeff_h = getelementptr inbounds %struct.vpe_ctx, ptr %call33329333, i32 0, i32 15
  tail call void @vpdma_unmap_desc_buf(ptr noundef %53, ptr noundef %sc_coeff_h) #15
  %54 = ptrtoint ptr %vpdma74 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %vpdma74, align 8
  %sc_coeff_v = getelementptr inbounds %struct.vpe_ctx, ptr %call33329333, i32 0, i32 16
  tail call void @vpdma_unmap_desc_buf(ptr noundef %55, ptr noundef %sc_coeff_v) #15
  tail call void @vpdma_reset_desc_list(ptr noundef %desc_list) #15
  %src_mv_buf_selector = getelementptr inbounds %struct.vpe_ctx, ptr %call33329333, i32 0, i32 20
  %56 = ptrtoint ptr %src_mv_buf_selector to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %src_mv_buf_selector, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool79.not = icmp eq i32 %57, 0
  %lnot.ext81 = zext i1 %tobool79.not to i32
  %58 = ptrtoint ptr %src_mv_buf_selector to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %lnot.ext81, ptr %src_mv_buf_selector, align 4
  %src_vbs = getelementptr inbounds %struct.vpe_ctx, ptr %call33329333, i32 0, i32 9
  %59 = ptrtoint ptr %src_vbs to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %src_vbs, align 4
  %dst_vb = getelementptr inbounds %struct.vpe_ctx, ptr %call33329333, i32 0, i32 10
  %61 = ptrtoint ptr %dst_vb to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dst_vb, align 4
  %flags83 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %60, i32 0, i32 1
  %63 = ptrtoint ptr %flags83 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %flags83, align 8
  %flags84 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %62, i32 0, i32 1
  %65 = ptrtoint ptr %flags84 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %flags84, align 8
  %timestamp = getelementptr inbounds %struct.vb2_buffer, ptr %60, i32 0, i32 5
  %66 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %timestamp, align 8
  %timestamp86 = getelementptr inbounds %struct.vb2_buffer, ptr %62, i32 0, i32 5
  %68 = ptrtoint ptr %timestamp86 to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 %67, ptr %timestamp86, align 8
  %69 = load i32, ptr %flags83, align 8
  %and88 = and i32 %69, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool89.not = icmp eq i32 %and88, 0
  br i1 %tobool89.not, label %if.end73.if.end92_crit_edge, label %if.then90

if.end73.if.end92_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end92

if.then90:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #17
  %timecode = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %62, i32 0, i32 3
  %timecode91 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %60, i32 0, i32 3
  %70 = call ptr @memcpy(ptr %timecode, ptr %timecode91, i32 16)
  br label %if.end92

if.end92:                                         ; preds = %if.then90, %if.end73.if.end92_crit_edge
  %sequence = getelementptr inbounds %struct.vpe_ctx, ptr %call33329333, i32 0, i32 4
  %71 = ptrtoint ptr %sequence to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %sequence, align 4
  %sequence93 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %62, i32 0, i32 4
  %73 = ptrtoint ptr %sequence93 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %sequence93, align 8
  %74 = load i32, ptr %sequence, align 4
  %sequence95 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %60, i32 0, i32 4
  %75 = ptrtoint ptr %sequence95 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %sequence95, align 8
  %flags97 = getelementptr %struct.vpe_ctx, ptr %call33329333, i32 0, i32 8, i32 1, i32 1
  %76 = ptrtoint ptr %flags97 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %flags97, align 4
  %and98 = and i32 %77, 28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and98)
  %tobool99.not = icmp eq i32 %and98, 0
  br i1 %tobool99.not, label %if.else139, label %if.then100

if.then100:                                       ; preds = %if.end92
  %field = getelementptr inbounds %struct.vpe_ctx, ptr %call33329333, i32 0, i32 3
  %78 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %field, align 4
  %field101 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %62, i32 0, i32 2
  %80 = ptrtoint ptr %field101 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %field101, align 4
  %81 = load i32, ptr %field, align 4
  %82 = zext i32 %81 to i64
  call void @__sanitizer_cov_trace_switch(i64 %82, ptr @__sancov_gen_cov_switch_values)
  switch i32 %81, label %do.end123 [
    i32 3, label %if.then103
    i32 2, label %if.then100.if.end129_crit_edge
  ], !prof !388

if.then100.if.end129_crit_edge:                   ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end129

if.then103:                                       ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #17
  %83 = ptrtoint ptr %sequence to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %sequence, align 4
  %inc = add i32 %84, 1
  store i32 %inc, ptr %sequence, align 4
  %85 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 2, ptr %field, align 4
  br label %if.end143

do.end123:                                        ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1455, i32 noundef 9, ptr noundef null) #15
  br label %if.end129

if.end129:                                        ; preds = %do.end123, %if.then100.if.end129_crit_edge
  %86 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 3, ptr %field, align 4
  br label %if.end143

if.else139:                                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #17
  %field140 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %62, i32 0, i32 2
  %87 = ptrtoint ptr %field140 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 1, ptr %field140, align 4
  %88 = ptrtoint ptr %sequence to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %sequence, align 4
  %inc142 = add i32 %89, 1
  store i32 %inc142, ptr %sequence, align 4
  br label %if.end143

if.end143:                                        ; preds = %if.else139, %if.end129, %if.then103
  %deinterlacing = getelementptr inbounds %struct.vpe_ctx, ptr %call33329333, i32 0, i32 18
  %90 = ptrtoint ptr %deinterlacing to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %deinterlacing, align 4, !range !389
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool144.not = icmp eq i8 %91, 0
  br i1 %tobool144.not, label %if.end143.do.body158_crit_edge, label %if.then145

if.end143.do.body158_crit_edge:                   ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body158

if.then145:                                       ; preds = %if.end143
  %arrayidx147 = getelementptr %struct.vpe_ctx, ptr %call33329333, i32 0, i32 9, i32 2
  %92 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %arrayidx147, align 4
  %arrayidx149 = getelementptr %struct.vpe_ctx, ptr %call33329333, i32 0, i32 9, i32 1
  %94 = ptrtoint ptr %arrayidx149 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %arrayidx149, align 4
  %cmp150.not = icmp eq ptr %93, %95
  br i1 %cmp150.not, label %do.body158.thread, label %if.then145.do.body158_crit_edge

if.then145.do.body158_crit_edge:                  ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body158

do.body158.thread:                                ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #17
  %lock336 = getelementptr inbounds %struct.vpe_dev, ptr %data, i32 0, i32 6
  %call162337 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock336) #15
  br label %if.end169

do.body158:                                       ; preds = %if.then145.do.body158_crit_edge, %if.end143.do.body158_crit_edge
  %s_vb.0 = phi ptr [ %60, %if.end143.do.body158_crit_edge ], [ %93, %if.then145.do.body158_crit_edge ]
  %lock = getelementptr inbounds %struct.vpe_dev, ptr %data, i32 0, i32 6
  %call162 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #15
  %tobool167.not = icmp eq ptr %s_vb.0, null
  br i1 %tobool167.not, label %do.body158.if.end169_crit_edge, label %if.then168

do.body158.if.end169_crit_edge:                   ; preds = %do.body158
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end169

if.then168:                                       ; preds = %do.body158
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @vb2_buffer_done(ptr noundef nonnull %s_vb.0, i32 noundef 5) #15
  br label %if.end169

if.end169:                                        ; preds = %if.then168, %do.body158.if.end169_crit_edge, %do.body158.thread
  %call162340 = phi i32 [ %call162337, %do.body158.thread ], [ %call162, %if.then168 ], [ %call162, %do.body158.if.end169_crit_edge ]
  %lock339 = phi ptr [ %lock336, %do.body158.thread ], [ %lock, %if.then168 ], [ %lock, %do.body158.if.end169_crit_edge ]
  tail call void @vb2_buffer_done(ptr noundef %62, i32 noundef 5) #15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock339, i32 noundef %call162340) #15
  %96 = ptrtoint ptr %deinterlacing to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %deinterlacing, align 4, !range !389
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool172.not = icmp eq i8 %97, 0
  br i1 %tobool172.not, label %if.end169.if.end182_crit_edge, label %if.then173

if.end169.if.end182_crit_edge:                    ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end182

if.then173:                                       ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx175 = getelementptr %struct.vpe_ctx, ptr %call33329333, i32 0, i32 9, i32 1
  %98 = ptrtoint ptr %arrayidx175 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %arrayidx175, align 4
  %arrayidx177 = getelementptr %struct.vpe_ctx, ptr %call33329333, i32 0, i32 9, i32 2
  %100 = ptrtoint ptr %arrayidx177 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %99, ptr %arrayidx177, align 4
  %101 = ptrtoint ptr %src_vbs to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %src_vbs, align 4
  store ptr %102, ptr %arrayidx175, align 4
  br label %if.end182

if.end182:                                        ; preds = %if.then173, %if.end169.if.end182_crit_edge
  %103 = ptrtoint ptr %src_vbs to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr null, ptr %src_vbs, align 4
  %104 = ptrtoint ptr %dst_vb to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr null, ptr %dst_vb, align 4
  %aborting = getelementptr inbounds %struct.vpe_ctx, ptr %call33329333, i32 0, i32 5
  %105 = ptrtoint ptr %aborting to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %aborting, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool186.not = icmp eq i32 %106, 0
  br i1 %tobool186.not, label %if.end188, label %if.end182.do.body197_crit_edge

if.end182.do.body197_crit_edge:                   ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body197

if.end188:                                        ; preds = %if.end182
  %bufs_completed = getelementptr inbounds %struct.vpe_ctx, ptr %call33329333, i32 0, i32 7
  %107 = ptrtoint ptr %bufs_completed to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %bufs_completed, align 4
  %inc189 = add i32 %108, 1
  store i32 %inc189, ptr %bufs_completed, align 4
  %bufs_per_job = getelementptr inbounds %struct.vpe_ctx, ptr %call33329333, i32 0, i32 6
  %109 = ptrtoint ptr %bufs_per_job to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %bufs_per_job, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc189, i32 %110)
  %cmp191 = icmp ult i32 %inc189, %110
  br i1 %cmp191, label %land.lhs.true, label %if.end188.do.body197_crit_edge

if.end188.do.body197_crit_edge:                   ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body197

land.lhs.true:                                    ; preds = %if.end188
  %m2m_ctx.i = getelementptr inbounds %struct.v4l2_fh, ptr %call33329333, i32 0, i32 10
  %111 = ptrtoint ptr %m2m_ctx.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %m2m_ctx.i, align 4
  %num_rdy.i.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %112, i32 0, i32 8, i32 3
  %113 = ptrtoint ptr %num_rdy.i.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %num_rdy.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %cmp.i = icmp eq i8 %114, 0
  br i1 %cmp.i, label %land.lhs.true.do.body197_crit_edge, label %job_ready.exit

land.lhs.true.do.body197_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body197

job_ready.exit:                                   ; preds = %land.lhs.true
  %num_rdy.i6.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %112, i32 0, i32 7, i32 3
  %115 = ptrtoint ptr %num_rdy.i6.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %num_rdy.i6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %cmp4.i.not = icmp eq i8 %116, 0
  br i1 %cmp4.i.not, label %job_ready.exit.do.body197_crit_edge, label %if.then195

job_ready.exit.do.body197_crit_edge:              ; preds = %job_ready.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body197

if.then195:                                       ; preds = %job_ready.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @device_run(ptr noundef nonnull %call33329333)
  br label %handled

do.body197:                                       ; preds = %job_ready.exit.do.body197_crit_edge, %land.lhs.true.do.body197_crit_edge, %if.end188.do.body197_crit_edge, %if.end182.do.body197_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vpe_irq.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vpe_irq, %do.end217)) #15
          to label %if.then211 [label %do.end217], !srcloc !386

if.then211:                                       ; preds = %do.body197
  call void @__sanitizer_cov_trace_pc() #17
  %117 = ptrtoint ptr %dev.i321 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %dev.i321, align 4
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %118, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vpe_irq.__UNIQUE_ID_ddebug353, ptr noundef %120, ptr noundef nonnull @.str.28) #15
  br label %do.end217

do.end217:                                        ; preds = %if.then211, %do.body197
  %bufs_completed218 = getelementptr inbounds %struct.vpe_ctx, ptr %call33329333, i32 0, i32 7
  %121 = ptrtoint ptr %bufs_completed218 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 0, ptr %bufs_completed218, align 4
  %122 = ptrtoint ptr %m2m_dev328334 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %m2m_dev328334, align 8
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %call33329333, i32 0, i32 10
  %124 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %m2m_ctx, align 4
  tail call void @v4l2_m2m_job_finish(ptr noundef %123, ptr noundef %125) #15
  br label %handled

handled:                                          ; preds = %do.end217, %if.then195, %if.end70.handled_crit_edge, %do.end38
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vpe_runtime_get(ptr noundef %pdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vpe_runtime_get.__UNIQUE_ID_ddebug370, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vpe_runtime_get, %do.end)) #15
          to label %if.then [label %do.end], !srcloc !386

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vpe_runtime_get.__UNIQUE_ID_ddebug370, ptr noundef %dev, ptr noundef nonnull @.str.37) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %dev4 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev4, i32 noundef 4) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %do.end.if.end27_crit_edge

do.end.if.end27_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end27

if.then.i:                                        ; preds = %do.end
  %usage_count.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !390
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #15
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #15, !srcloc !391
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.do.end21_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.do.end21_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end21

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !392
  br label %do.end21

do.end21:                                         ; preds = %do.end11.i.i.i.i.i, %if.then.i.do.end21_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2475, i32 noundef 9, ptr noundef null) #15
  br label %if.end27

if.end27:                                         ; preds = %do.end21, %do.end.if.end27_crit_edge
  %retval.0.i3842 = phi i32 [ %call.i, %do.end21 ], [ 0, %do.end.if.end27_crit_edge ]
  ret i32 %retval.0.i3842
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sc_create(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @csc_create(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vpdma_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vpe_fw_cb(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %vfd1 = getelementptr inbounds %struct.vpe_dev, ptr %1, i32 0, i32 1
  %2 = call ptr @memcpy(ptr %vfd1, ptr @vpe_videodev, i32 1352)
  %dev_mutex = getelementptr inbounds %struct.vpe_dev, ptr %1, i32 0, i32 5
  %lock = getelementptr inbounds %struct.vpe_dev, ptr %1, i32 0, i32 1, i32 26
  %3 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev_mutex, ptr %lock, align 8
  %v4l2_dev2 = getelementptr inbounds %struct.vpe_dev, ptr %1, i32 0, i32 1, i32 7
  %4 = ptrtoint ptr %v4l2_dev2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %v4l2_dev2, align 4
  %call.i = tail call i32 @__video_register_device(ptr noundef %vfd1, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.38) #18
  %base.i.i = getelementptr inbounds %struct.vpe_dev, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !382
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #15, !srcloc !383
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vpe_runtime_put.__UNIQUE_ID_ddebug371, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vpe_fw_cb, %do.end.i)) #15
          to label %if.then.i [label %do.end.i], !srcloc !386

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vpe_runtime_put.__UNIQUE_ID_ddebug371, ptr noundef %dev.i, ptr noundef nonnull @.str.134) #15
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %do.end
  %dev4.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev4.i, i32 noundef 4) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -38, i32 %call.i.i)
  %cmp6.i = icmp ne i32 %call.i.i, -38
  %spec.select.i = and i1 %cmp.i, %cmp6.i
  br i1 %spec.select.i, label %do.end22.i, label %do.end.i.vpe_runtime_put.exit_crit_edge, !prof !387

do.end.i.vpe_runtime_put.exit_crit_edge:          ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %vpe_runtime_put.exit

do.end22.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2487, i32 noundef 9, ptr noundef null) #15
  br label %vpe_runtime_put.exit

vpe_runtime_put.exit:                             ; preds = %do.end22.i, %do.end.i.vpe_runtime_put.exit_crit_edge
  tail call void @__pm_runtime_disable(ptr noundef %dev4.i, i1 noundef zeroext true) #15
  %m2m_dev = getelementptr inbounds %struct.vpe_dev, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %m2m_dev, align 8
  tail call void @v4l2_m2m_release(ptr noundef %10) #15
  tail call void @v4l2_device_unregister(ptr noundef %1) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %driver_data.i.i30 = getelementptr inbounds %struct.vpe_dev, ptr %1, i32 0, i32 1, i32 5, i32 8
  %11 = ptrtoint ptr %driver_data.i.i30 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %1, ptr %driver_data.i.i30, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  %num = getelementptr inbounds %struct.vpe_dev, ptr %1, i32 0, i32 1, i32 16
  %14 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %num, align 4
  %conv = zext i16 %15 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %13, ptr noundef nonnull @.str.41, i32 noundef %conv) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end, %vpe_runtime_put.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_get_curr_priv(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vpdma_clear_list_stat(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @vpdma_unmap_desc_buf(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vpdma_reset_desc_list(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @job_ready(ptr nocapture noundef readonly %priv) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %priv, i32 0, i32 10
  %0 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m2m_ctx, align 4
  %num_rdy.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %1, i32 0, i32 8, i32 3
  %2 = ptrtoint ptr %num_rdy.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %num_rdy.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %num_rdy.i6 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %1, i32 0, i32 7, i32 3
  %4 = ptrtoint ptr %num_rdy.i6 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %num_rdy.i6, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp4 = icmp ne i8 %5, 0
  %spec.select = zext i1 %cmp4 to i32
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %spec.select, %lor.lhs.false ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @device_run(ptr noundef %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.vpe_ctx, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %sc1 = getelementptr inbounds %struct.vpe_dev, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %sc1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc1, align 4
  %fmt = getelementptr %struct.vpe_ctx, ptr %priv, i32 0, i32 8, i32 1, i32 3
  %4 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fmt, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %call = tail call ptr @v4l2_format_info(i32 noundef %7) #15
  %deinterlacing = getelementptr inbounds %struct.vpe_ctx, ptr %priv, i32 0, i32 18
  %8 = ptrtoint ptr %deinterlacing to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %deinterlacing, align 4, !range !389
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.vpe_ctx, ptr %priv, i32 0, i32 8, i32 0, i32 1
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %and = and i32 %11, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true5

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

land.lhs.true5:                                   ; preds = %land.lhs.true
  %sequence = getelementptr inbounds %struct.vpe_ctx, ptr %priv, i32 0, i32 4
  %12 = ptrtoint ptr %sequence to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sequence, align 4
  %rem = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp = icmp eq i32 %rem, 0
  br i1 %cmp, label %if.then, label %land.lhs.true5.if.else_crit_edge

land.lhs.true5.if.else_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

if.then:                                          ; preds = %land.lhs.true5
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %priv, i32 0, i32 10
  %14 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %m2m_ctx, align 4
  %out_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %15, i32 0, i32 8
  %call.i = tail call ptr @v4l2_m2m_next_buf(ptr noundef %out_q_ctx.i) #15
  %src_vbs = getelementptr inbounds %struct.vpe_ctx, ptr %priv, i32 0, i32 9
  %16 = ptrtoint ptr %src_vbs to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i, ptr %src_vbs, align 4
  %cmp10 = icmp eq ptr %call.i, null
  br i1 %cmp10, label %if.then.if.end69.sink.split_crit_edge, label %if.then.if.end69_crit_edge, !prof !387

if.then.if.end69_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

if.then.if.end69.sink.split_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69.sink.split

if.else:                                          ; preds = %land.lhs.true5.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %m2m_ctx32 = getelementptr inbounds %struct.v4l2_fh, ptr %priv, i32 0, i32 10
  %17 = ptrtoint ptr %m2m_ctx32 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %m2m_ctx32, align 4
  %out_q_ctx.i387 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %18, i32 0, i32 8
  %call.i388 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %out_q_ctx.i387) #15
  %src_vbs34 = getelementptr inbounds %struct.vpe_ctx, ptr %priv, i32 0, i32 9
  %19 = ptrtoint ptr %src_vbs34 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i388, ptr %src_vbs34, align 4
  %cmp39 = icmp eq ptr %call.i388, null
  br i1 %cmp39, label %if.else.if.end69.sink.split_crit_edge, label %if.else.if.end69_crit_edge, !prof !387

if.else.if.end69_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

if.else.if.end69.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69.sink.split

if.end69.sink.split:                              ; preds = %if.else.if.end69.sink.split_crit_edge, %if.then.if.end69.sink.split_crit_edge
  %.sink = phi i32 [ 1230, %if.then.if.end69.sink.split_crit_edge ], [ 1233, %if.else.if.end69.sink.split_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef %.sink, i32 noundef 9, ptr noundef null) #15
  br label %if.end69

if.end69:                                         ; preds = %if.end69.sink.split, %if.else.if.end69_crit_edge, %if.then.if.end69_crit_edge
  %m2m_ctx71 = getelementptr inbounds %struct.v4l2_fh, ptr %priv, i32 0, i32 10
  %20 = ptrtoint ptr %m2m_ctx71 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %m2m_ctx71, align 4
  %cap_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %21, i32 0, i32 7
  %call.i389 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %cap_q_ctx.i) #15
  %dst_vb = getelementptr inbounds %struct.vpe_ctx, ptr %priv, i32 0, i32 10
  %22 = ptrtoint ptr %dst_vb to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i389, ptr %dst_vb, align 4
  %cmp75 = icmp eq ptr %call.i389, null
  br i1 %cmp75, label %do.end91, label %if.end69.if.end97_crit_edge, !prof !387

if.end69.if.end97_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end97

do.end91:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1237, i32 noundef 9, ptr noundef null) #15
  br label %if.end97

if.end97:                                         ; preds = %do.end91, %if.end69.if.end97_crit_edge
  %23 = ptrtoint ptr %deinterlacing to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %deinterlacing, align 4, !range !389
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool106.not = icmp eq i8 %24, 0
  br i1 %tobool106.not, label %if.end97.if.end191_crit_edge, label %if.then107

if.end97.if.end191_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end191

if.then107:                                       ; preds = %if.end97
  %src_vbs108 = getelementptr inbounds %struct.vpe_ctx, ptr %priv, i32 0, i32 9
  %arrayidx109 = getelementptr %struct.vpe_ctx, ptr %priv, i32 0, i32 9, i32 2
  %25 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx109, align 4
  %cmp110 = icmp eq ptr %26, null
  br i1 %cmp110, label %if.then111, label %if.then107.if.end186_crit_edge

if.then107.if.end186_crit_edge:                   ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end186

if.then111:                                       ; preds = %if.then107
  %27 = ptrtoint ptr %src_vbs108 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %src_vbs108, align 4
  %29 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %arrayidx109, align 4
  %cmp119 = icmp eq ptr %28, null
  br i1 %cmp119, label %if.end141, label %if.end141.thread, !prof !387

if.end141.thread:                                 ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx152408 = getelementptr %struct.vpe_ctx, ptr %priv, i32 0, i32 9, i32 1
  %30 = ptrtoint ptr %arrayidx152408 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %28, ptr %arrayidx152408, align 4
  br label %if.end186

if.end141:                                        ; preds = %if.then111
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1243, i32 noundef 9, ptr noundef null) #15
  %31 = ptrtoint ptr %src_vbs108 to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pr = load ptr, ptr %src_vbs108, align 4
  %arrayidx152 = getelementptr %struct.vpe_ctx, ptr %priv, i32 0, i32 9, i32 1
  %32 = ptrtoint ptr %arrayidx152 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %.pr, ptr %arrayidx152, align 4
  %cmp156 = icmp eq ptr %.pr, null
  br i1 %cmp156, label %do.end172, label %if.end141.if.end186_crit_edge, !prof !387

if.end141.if.end186_crit_edge:                    ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end186

do.end172:                                        ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1245, i32 noundef 9, ptr noundef null) #15
  br label %if.end186

if.end186:                                        ; preds = %do.end172, %if.end141.if.end186_crit_edge, %if.end141.thread, %if.then107.if.end186_crit_edge
  %sequence187 = getelementptr inbounds %struct.vpe_ctx, ptr %priv, i32 0, i32 4
  %33 = ptrtoint ptr %sequence187 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sequence187, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %34)
  %cmp188 = icmp eq i32 %34, 2
  br i1 %cmp188, label %if.then189, label %if.end186.if.end191_crit_edge

if.end186.if.end191_crit_edge:                    ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end191

if.then189:                                       ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #17
  %mmr_adb1.i = getelementptr inbounds %struct.vpe_ctx, ptr %priv, i32 0, i32 14
  %35 = ptrtoint ptr %mmr_adb1.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mmr_adb1.i, align 4
  %arrayidx.i = getelementptr %struct.vpe_mmr_adb, ptr %36, i32 0, i32 10, i32 3
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.i, align 4
  %or.i14.i = or i32 %38, 15
  store i32 %or.i14.i, ptr %arrayidx.i, align 4
  %load_mmrs.i = getelementptr inbounds %struct.vpe_ctx, ptr %priv, i32 0, i32 19
  %39 = ptrtoint ptr %load_mmrs.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %load_mmrs.i, align 1
  br label %if.end191

if.end191:                                        ; preds = %if.then189, %if.end186.if.end191_crit_edge, %if.end97.if.end191_crit_edge
  %40 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev, align 4
  %loaded_mmrs = getelementptr inbounds %struct.vpe_dev, ptr %41, i32 0, i32 4
  %42 = ptrtoint ptr %loaded_mmrs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %loaded_mmrs, align 8
  %mmr_adb = getelementptr inbounds %struct.vpe_ctx, ptr %priv, i32 0, i32 14
  %dma_addr = getelementptr inbounds %struct.vpe_ctx, ptr %priv, i32 0, i32 14, i32 1
  %44 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %dma_addr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %45)
  %cmp193.not = icmp eq i32 %43, %45
  br i1 %cmp193.not, label %lor.lhs.false, label %if.end191.if.then195_crit_edge

if.end191.if.then195_crit_edge:                   ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then195

lor.lhs.false:                                    ; preds = %if.end191
  %load_mmrs = getelementptr inbounds %struct.vpe_ctx, ptr %priv, i32 0, i32 19
  %46 = ptrtoint ptr %load_mmrs to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %load_mmrs, align 1, !range !389
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool194.not = icmp eq i8 %47, 0
  br i1 %tobool194.not, label %lor.lhs.false.if.end205_crit_edge, label %lor.lhs.false.if.then195_crit_edge

lor.lhs.false.if.then195_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then195

lor.lhs.false.if.end205_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end205

if.then195:                                       ; preds = %lor.lhs.false.if.then195_crit_edge, %if.end191.if.then195_crit_edge
  %vpdma = getelementptr inbounds %struct.vpe_dev, ptr %41, i32 0, i32 11
  %48 = ptrtoint ptr %vpdma to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %vpdma, align 8
  %call198 = tail call i32 @vpdma_map_desc_buf(ptr noundef %49, ptr noundef %mmr_adb) #15
  %desc_list = getelementptr inbounds %struct.vpe_ctx, ptr %priv, i32 0, i32 17
  tail call void @vpdma_add_cfd_adb(ptr noundef %desc_list, i32 noundef 0, ptr noundef %mmr_adb) #15
  %fmt1.i = getelementptr inbounds %struct.vpe_ctx, ptr %priv, i32 0, i32 8, i32 0, i32 3
  %50 = ptrtoint ptr %fmt1.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %fmt1.i, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %51, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 842094158, i32 %53)
  %switch.selectcmp.case1.i = icmp ne i32 %53, 842094158
  call void @__sanitizer_cov_trace_const_cmp4(i32 825382478, i32 %53)
  %switch.selectcmp.case2.i = icmp ne i32 %53, 825382478
  %not.switch.selectcmp.i = and i1 %switch.selectcmp.case1.i, %switch.selectcmp.case2.i
  %54 = zext i1 %not.switch.selectcmp.i to i32
  %55 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev, align 4
  %vpdma.i = getelementptr inbounds %struct.vpe_dev, ptr %56, i32 0, i32 11
  %57 = ptrtoint ptr %vpdma.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %vpdma.i, align 8
  tail call void @vpdma_set_line_mode(ptr noundef %58, i32 noundef %54, i32 noundef 1) #15
  %59 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev, align 4
  %vpdma5.i = getelementptr inbounds %struct.vpe_dev, ptr %60, i32 0, i32 11
  %61 = ptrtoint ptr %vpdma5.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %vpdma5.i, align 8
  tail call void @vpdma_set_line_mode(ptr noundef %62, i32 noundef %54, i32 noundef 3) #15
  %63 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev, align 4
  %vpdma7.i = getelementptr inbounds %struct.vpe_dev, ptr %64, i32 0, i32 11
  %65 = ptrtoint ptr %vpdma7.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %vpdma7.i, align 8
  tail call void @vpdma_set_line_mode(ptr noundef %66, i32 noundef %54, i32 noundef 5) #15
  %67 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev, align 4
  %vpdma9.i = getelementptr inbounds %struct.vpe_dev, ptr %68, i32 0, i32 11
  %69 = ptrtoint ptr %vpdma9.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %vpdma9.i, align 8
  tail call void @vpdma_set_frame_start_event(ptr noundef %70, i32 noundef 7, i32 noundef 0) #15
  %71 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev, align 4
  %vpdma11.i = getelementptr inbounds %struct.vpe_dev, ptr %72, i32 0, i32 11
  %73 = ptrtoint ptr %vpdma11.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %vpdma11.i, align 8
  tail call void @vpdma_set_frame_start_event(ptr noundef %74, i32 noundef 7, i32 noundef 2) #15
  %75 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev, align 4
  %vpdma13.i = getelementptr inbounds %struct.vpe_dev, ptr %76, i32 0, i32 11
  %77 = ptrtoint ptr %vpdma13.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %vpdma13.i, align 8
  tail call void @vpdma_set_frame_start_event(ptr noundef %78, i32 noundef 7, i32 noundef 4) #15
  %79 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev, align 4
  %vpdma15.i = getelementptr inbounds %struct.vpe_dev, ptr %80, i32 0, i32 11
  %81 = ptrtoint ptr %vpdma15.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %vpdma15.i, align 8
  tail call void @vpdma_set_frame_start_event(ptr noundef %82, i32 noundef 7, i32 noundef 1) #15
  %83 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev, align 4
  %vpdma17.i = getelementptr inbounds %struct.vpe_dev, ptr %84, i32 0, i32 11
  %85 = ptrtoint ptr %vpdma17.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %vpdma17.i, align 8
  tail call void @vpdma_set_frame_start_event(ptr noundef %86, i32 noundef 7, i32 noundef 3) #15
  %87 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev, align 4
  %vpdma19.i = getelementptr inbounds %struct.vpe_dev, ptr %88, i32 0, i32 11
  %89 = ptrtoint ptr %vpdma19.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %vpdma19.i, align 8
  tail call void @vpdma_set_frame_start_event(ptr noundef %90, i32 noundef 7, i32 noundef 5) #15
  %91 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dev, align 4
  %vpdma21.i = getelementptr inbounds %struct.vpe_dev, ptr %92, i32 0, i32 11
  %93 = ptrtoint ptr %vpdma21.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %vpdma21.i, align 8
  tail call void @vpdma_set_frame_start_event(ptr noundef %94, i32 noundef 7, i32 noundef 6) #15
  %95 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %dma_addr, align 4
  %97 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dev, align 4
  %loaded_mmrs203 = getelementptr inbounds %struct.vpe_dev, ptr %98, i32 0, i32 4
  %99 = ptrtoint ptr %loaded_mmrs203 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %96, ptr %loaded_mmrs203, align 8
  %load_mmrs204 = getelementptr inbounds %struct.vpe_ctx, ptr %priv, i32 0, i32 19
  %100 = ptrtoint ptr %load_mmrs204 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 0, ptr %load_mmrs204, align 1
  br label %if.end205

if.end205:                                        ; preds = %if.then195, %lor.lhs.false.if.end205_crit_edge
  %loaded_coeff_h = getelementptr inbounds %struct.sc_data, ptr %3, i32 0, i32 2
  %101 = ptrtoint ptr %loaded_coeff_h to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %loaded_coeff_h, align 4
  %sc_coeff_h = getelementptr inbounds %struct.vpe_ctx, ptr %priv, i32 0, i32 15
  %dma_addr206 = getelementptr inbounds %struct.vpe_ctx, ptr %priv, i32 0, i32 15, i32 1
  %103 = ptrtoint ptr %dma_addr206 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %dma_addr206, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %102, i32 %104)
  %cmp207.not = icmp eq i32 %102, %104
  br i1 %cmp207.not, label %lor.lhs.false208, label %if.end205.if.then210_crit_edge

if.end205.if.then210_crit_edge:                   ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then210

lor.lhs.false208:                                 ; preds = %if.end205
  %load_coeff_h = getelementptr inbounds %struct.sc_data, ptr %3, i32 0, i32 4
  %105 = ptrtoint ptr %load_coeff_h to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %load_coeff_h, align 4, !range !389
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool209.not = icmp eq i8 %106, 0
  br i1 %tobool209.not, label %lor.lhs.false208.if.end221_crit_edge, label %lor.lhs.false208.if.then210_crit_edge

lor.lhs.false208.if.then210_crit_edge:            ; preds = %lor.lhs.false208
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then210

lor.lhs.false208.if.end221_crit_edge:             ; preds = %lor.lhs.false208
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end221

if.then210:                                       ; preds = %lor.lhs.false208.if.then210_crit_edge, %if.end205.if.then210_crit_edge
  %107 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dev, align 4
  %vpdma212 = getelementptr inbounds %struct.vpe_dev, ptr %108, i32 0, i32 11
  %109 = ptrtoint ptr %vpdma212 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %vpdma212, align 8
  %call214 = tail call i32 @vpdma_map_desc_buf(ptr noundef %110, ptr noundef %sc_coeff_h) #15
  %desc_list215 = getelementptr inbounds %struct.vpe_ctx, ptr %priv, i32 0, i32 17
  tail call void @vpdma_add_cfd_block(ptr noundef %desc_list215, i32 noundef 4, ptr noundef %sc_coeff_h, i32 noundef 0) #15
  %111 = ptrtoint ptr %dma_addr206 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %dma_addr206, align 4
  %113 = ptrtoint ptr %loaded_coeff_h to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %loaded_coeff_h, align 4
  %load_coeff_h220 = getelementptr inbounds %struct.sc_data, ptr %3, i32 0, i32 4
  %114 = ptrtoint ptr %load_coeff_h220 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 0, ptr %load_coeff_h220, align 4
  br label %if.end221

if.end221:                                        ; preds = %if.then210, %lor.lhs.false208.if.end221_crit_edge
  %loaded_coeff_v = getelementptr inbounds %struct.sc_data, ptr %3, i32 0, i32 3
  %115 = ptrtoint ptr %loaded_coeff_v to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %loaded_coeff_v, align 4
  %sc_coeff_v = getelementptr inbounds %struct.vpe_ctx, ptr %priv, i32 0, i32 16
  %dma_addr222 = getelementptr inbounds %struct.vpe_ctx, ptr %priv, i32 0, i32 16, i32 1
  %117 = ptrtoint ptr %dma_addr222 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %dma_addr222, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %116, i32 %118)
  %cmp223.not = icmp eq i32 %116, %118
  br i1 %cmp223.not, label %lor.lhs.false224, label %if.end221.if.then226_crit_edge

if.end221.if.then226_crit_edge:                   ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then226

lor.lhs.false224:                                 ; preds = %if.end221
  %load_coeff_v = getelementptr inbounds %struct.sc_data, ptr %3, i32 0, i32 5
  %119 = ptrtoint ptr %load_coeff_v to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %load_coeff_v, align 1, !range !389
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %tobool225.not = icmp eq i8 %120, 0
  br i1 %tobool225.not, label %lor.lhs.false224.if.end237_crit_edge, label %lor.lhs.false224.if.then226_crit_edge

lor.lhs.false224.if.then226_crit_edge:            ; preds = %lor.lhs.false224
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then226

lor.lhs.false224.if.end237_crit_edge:             ; preds = %lor.lhs.false224
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end237

if.then226:                                       ; preds = %lor.lhs.false224.if.then226_crit_edge, %if.end221.if.then226_crit_edge
  %121 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %dev, align 4
  %vpdma228 = getelementptr inbounds %struct.vpe_dev, ptr %122, i32 0, i32 11
  %123 = ptrtoint ptr %vpdma228 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %vpdma228, align 8
  %call230 = tail call i32 @vpdma_map_desc_buf(ptr noundef %124, ptr noundef %sc_coeff_v) #15
  %desc_list231 = getelementptr inbounds %struct.vpe_ctx, ptr %priv, i32 0, i32 17
  tail call void @vpdma_add_cfd_block(ptr noundef %desc_list231, i32 noundef 4, ptr noundef %sc_coeff_v, i32 noundef 64) #15
  %125 = ptrtoint ptr %dma_addr222 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %dma_addr222, align 4
  %127 = ptrtoint ptr %loaded_coeff_v to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %126, ptr %loaded_coeff_v, align 4
  %load_coeff_v236 = getelementptr inbounds %struct.sc_data, ptr %3, i32 0, i32 5
  %128 = ptrtoint ptr %load_coeff_v236 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 0, ptr %load_coeff_v236, align 1
  br label %if.end237

if.end237:                                        ; preds = %if.then226, %lor.lhs.false224.if.end237_crit_edge
  %129 = ptrtoint ptr %deinterlacing to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %deinterlacing, align 4, !range !389
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %130)
  %tobool239.not = icmp eq i8 %130, 0
  br i1 %tobool239.not, label %if.end237.if.end241_crit_edge, label %if.then240

if.end237.if.end241_crit_edge:                    ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end241

if.then240:                                       ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #17
  %src_mv_buf_selector.i = getelementptr inbounds %struct.vpe_ctx, ptr %priv, i32 0, i32 20
  %131 = ptrtoint ptr %src_mv_buf_selector.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %src_mv_buf_selector.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %tobool.not.i = icmp eq i32 %132, 0
  %lnot.ext.i = zext i1 %tobool.not.i to i32
  %arrayidx4.i = getelementptr %struct.vpe_ctx, ptr %priv, i32 0, i32 11, i32 %lnot.ext.i
  %133 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %arrayidx4.i, align 4
  %fmt7.i = getelementptr inbounds %struct.vpe_ctx, ptr %priv, i32 0, i32 8, i32 0, i32 0, i32 1
  %135 = ptrtoint ptr %fmt7.i to i32
  call void @__asan_loadN_noabort(i32 %135, i32 4)
  %136 = load i32, ptr %fmt7.i, align 1
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct.vpdma_data_format], ptr @vpdma_misc_fmts, i32 0, i32 0, i32 2) to i32))
  %137 = load i8, ptr getelementptr inbounds ([0 x %struct.vpdma_data_format], ptr @vpdma_misc_fmts, i32 0, i32 0, i32 2), align 4
  %conv.i = zext i8 %137 to i32
  %mul.i = mul i32 %136, %conv.i
  %shr.i = lshr i32 %mul.i, 3
  %add.i = add nuw nsw i32 %shr.i, 15
  %and.i = and i32 %add.i, 1073741808
  %flags33.i = getelementptr inbounds %struct.vpe_ctx, ptr %priv, i32 0, i32 8, i32 0, i32 1
  %138 = ptrtoint ptr %flags33.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %flags33.i, align 4
  %and34.i = shl i32 %139, 2
  %140 = and i32 %and34.i, 12
  %141 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %dev, align 4
  %vpdma.i391 = getelementptr inbounds %struct.vpe_dev, ptr %142, i32 0, i32 11
  %143 = ptrtoint ptr %vpdma.i391 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %vpdma.i391, align 8
  tail call void @vpdma_set_max_size(ptr noundef %144, i32 noundef 52, i32 noundef 2048, i32 noundef 2048) #15
  %desc_list.i = getelementptr inbounds %struct.vpe_ctx, ptr %priv, i32 0, i32 17
  %145 = ptrtoint ptr %fmt7.i to i32
  call void @__asan_loadN_noabort(i32 %145, i32 4)
  %146 = load i32, ptr %fmt7.i, align 1
  %c_rect.i = getelementptr inbounds %struct.vpe_ctx, ptr %priv, i32 0, i32 8, i32 0, i32 2
  tail call void @vpdma_add_out_dtd(ptr noundef %desc_list.i, i32 noundef %146, i32 noundef %and.i, ptr noundef %c_rect.i, ptr noundef nonnull @vpdma_misc_fmts, i32 noundef %134, i32 noundef 1, i32 noundef 1, i32 noundef 7, i32 noundef %140) #15
  br label %if.end241

if.end241:                                        ; preds = %if.then240, %if.end237.if.end241_crit_edge
  %tobool.not.i392 = icmp eq ptr %call, null
  br i1 %tobool.not.i392, label %if.end241.if.else244_crit_edge, label %v4l2_is_format_rgb.exit

if.end241.if.else244_crit_edge:                   ; preds = %if.end241
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else244

v4l2_is_format_rgb.exit:                          ; preds = %if.end241
  %pixel_enc.i = getelementptr inbounds %struct.v4l2_format_info, ptr %call, i32 0, i32 1
  %147 = ptrtoint ptr %pixel_enc.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %pixel_enc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %148)
  %cmp.i = icmp eq i8 %148, 2
  br i1 %cmp.i, label %v4l2_is_format_rgb.exit.if.end249.sink.split_crit_edge, label %v4l2_is_format_rgb.exit.if.else244_crit_edge

v4l2_is_format_rgb.exit.if.else244_crit_edge:     ; preds = %v4l2_is_format_rgb.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else244

v4l2_is_format_rgb.exit.if.end249.sink.split_crit_edge: ; preds = %v4l2_is_format_rgb.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end249.sink.split

if.else244:                                       ; preds = %v4l2_is_format_rgb.exit.if.else244_crit_edge, %if.end241.if.else244_crit_edge
  tail call fastcc void @add_out_dtd(ptr noundef %priv, i32 noundef 8)
  %149 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %fmt, align 4
  %coplanar = getelementptr inbounds %struct.vpe_fmt, ptr %150, i32 0, i32 2
  %151 = ptrtoint ptr %coplanar to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %coplanar, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %152)
  %tobool246.not = icmp eq i8 %152, 0
  br i1 %tobool246.not, label %if.else244.if.end249_crit_edge, label %if.else244.if.end249.sink.split_crit_edge

if.else244.if.end249.sink.split_crit_edge:        ; preds = %if.else244
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end249.sink.split

if.else244.if.end249_crit_edge:                   ; preds = %if.else244
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end249

if.end249.sink.split:                             ; preds = %if.else244.if.end249.sink.split_crit_edge, %v4l2_is_format_rgb.exit.if.end249.sink.split_crit_edge
  %.sink410 = phi i32 [ 10, %v4l2_is_format_rgb.exit.if.end249.sink.split_crit_edge ], [ 9, %if.else244.if.end249.sink.split_crit_edge ]
  tail call fastcc void @add_out_dtd(ptr noundef %priv, i32 noundef %.sink410)
  br label %if.end249

if.end249:                                        ; preds = %if.end249.sink.split, %if.else244.if.end249_crit_edge
  %153 = ptrtoint ptr %deinterlacing to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %deinterlacing, align 4, !range !389
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %154)
  %tobool251.not = icmp eq i8 %154, 0
  br i1 %tobool251.not, label %if.end249.if.end253_crit_edge, label %if.then252

if.end249.if.end253_crit_edge:                    ; preds = %if.end249
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end253

if.then252:                                       ; preds = %if.end249
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @add_in_dtd(ptr noundef %priv, i32 noundef 4)
  tail call fastcc void @add_in_dtd(ptr noundef %priv, i32 noundef 5)
  tail call fastcc void @add_in_dtd(ptr noundef %priv, i32 noundef 2)
  tail call fastcc void @add_in_dtd(ptr noundef %priv, i32 noundef 3)
  br label %if.end253

if.end253:                                        ; preds = %if.then252, %if.end249.if.end253_crit_edge
  tail call fastcc void @add_in_dtd(ptr noundef %priv, i32 noundef 0)
  tail call fastcc void @add_in_dtd(ptr noundef %priv, i32 noundef 1)
  %155 = ptrtoint ptr %deinterlacing to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %deinterlacing, align 4, !range !389
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %156)
  %tobool255.not = icmp eq i8 %156, 0
  br i1 %tobool255.not, label %if.end253.if.end257_crit_edge, label %if.then256

if.end253.if.end257_crit_edge:                    ; preds = %if.end253
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end257

if.then256:                                       ; preds = %if.end253
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx3.i = getelementptr %struct.vpe_ctx, ptr %priv, i32 0, i32 9, i32 0
  %157 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %arrayidx3.i, align 4
  %field5.i = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %158, i32 0, i32 2
  %159 = ptrtoint ptr %field5.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %field5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %160)
  %cmp.i393 = icmp eq i32 %160, 3
  %fmt6.i = getelementptr inbounds %struct.vpe_ctx, ptr %priv, i32 0, i32 8, i32 0, i32 0, i32 1
  %src_mv_buf_selector.i394 = getelementptr inbounds %struct.vpe_ctx, ptr %priv, i32 0, i32 20
  %161 = ptrtoint ptr %src_mv_buf_selector.i394 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %src_mv_buf_selector.i394, align 4
  %arrayidx9.i = getelementptr %struct.vpe_ctx, ptr %priv, i32 0, i32 11, i32 %162
  %163 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %arrayidx9.i, align 4
  %165 = ptrtoint ptr %fmt6.i to i32
  call void @__asan_loadN_noabort(i32 %165, i32 4)
  %166 = load i32, ptr %fmt6.i, align 1
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct.vpdma_data_format], ptr @vpdma_misc_fmts, i32 0, i32 0, i32 2) to i32))
  %167 = load i8, ptr getelementptr inbounds ([0 x %struct.vpdma_data_format], ptr @vpdma_misc_fmts, i32 0, i32 0, i32 2), align 4
  %conv10.i = zext i8 %167 to i32
  %mul.i395 = mul i32 %166, %conv10.i
  %shr.i396 = lshr i32 %mul.i395, 3
  %add.i397 = add nuw nsw i32 %shr.i396, 15
  %and.i398 = and i32 %add.i397, 1073741808
  %field.3.i = zext i1 %cmp.i393 to i32
  %flags76.i = getelementptr inbounds %struct.vpe_ctx, ptr %priv, i32 0, i32 8, i32 0, i32 1
  %168 = ptrtoint ptr %flags76.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %flags76.i, align 4
  %and77.i = shl i32 %169, 2
  %170 = and i32 %and77.i, 12
  %c_rect.i399 = getelementptr inbounds %struct.vpe_ctx, ptr %priv, i32 0, i32 8, i32 0, i32 2
  %width87.i = getelementptr inbounds %struct.vpe_ctx, ptr %priv, i32 0, i32 8, i32 0, i32 2, i32 2
  %171 = ptrtoint ptr %width87.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %width87.i, align 4
  %height89.i = getelementptr inbounds %struct.vpe_ctx, ptr %priv, i32 0, i32 8, i32 0, i32 2, i32 3
  %173 = ptrtoint ptr %height89.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %height89.i, align 4
  %desc_list.i400 = getelementptr inbounds %struct.vpe_ctx, ptr %priv, i32 0, i32 17
  tail call void @vpdma_add_in_dtd(ptr noundef %desc_list.i400, i32 noundef %166, i32 noundef %and.i398, ptr noundef %c_rect.i399, ptr noundef nonnull @vpdma_misc_fmts, i32 noundef %164, i32 noundef 6, i32 noundef %field.3.i, i32 noundef %170, i32 noundef %172, i32 noundef %174, i32 noundef 0, i32 noundef 0) #15
  br label %if.end257

if.end257:                                        ; preds = %if.then256, %if.end253.if.end257_crit_edge
  %desc_list258 = getelementptr inbounds %struct.vpe_ctx, ptr %priv, i32 0, i32 17
  tail call void @vpdma_add_sync_on_channel_ctd(ptr noundef %desc_list258, i32 noundef 0) #15
  tail call void @vpdma_add_sync_on_channel_ctd(ptr noundef %desc_list258, i32 noundef 1) #15
  %175 = ptrtoint ptr %deinterlacing to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %deinterlacing, align 4, !range !389
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %176)
  %tobool261.not = icmp eq i8 %176, 0
  br i1 %tobool261.not, label %if.end257.if.end268_crit_edge, label %if.then262

if.end257.if.end268_crit_edge:                    ; preds = %if.end257
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end268

if.then262:                                       ; preds = %if.end257
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @vpdma_add_sync_on_channel_ctd(ptr noundef %desc_list258, i32 noundef 2) #15
  tail call void @vpdma_add_sync_on_channel_ctd(ptr noundef %desc_list258, i32 noundef 3) #15
  tail call void @vpdma_add_sync_on_channel_ctd(ptr noundef %desc_list258, i32 noundef 4) #15
  tail call void @vpdma_add_sync_on_channel_ctd(ptr noundef %desc_list258, i32 noundef 5) #15
  tail call void @vpdma_add_sync_on_channel_ctd(ptr noundef %desc_list258, i32 noundef 6) #15
  br label %if.end268

if.end268:                                        ; preds = %if.then262, %if.end257.if.end268_crit_edge
  br i1 %tobool.not.i392, label %if.end268.if.else272_crit_edge, label %v4l2_is_format_rgb.exit405

if.end268.if.else272_crit_edge:                   ; preds = %if.end268
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else272

v4l2_is_format_rgb.exit405:                       ; preds = %if.end268
  %pixel_enc.i402 = getelementptr inbounds %struct.v4l2_format_info, ptr %call, i32 0, i32 1
  %177 = ptrtoint ptr %pixel_enc.i402 to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %pixel_enc.i402, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %178)
  %cmp.i403 = icmp eq i8 %178, 2
  br i1 %cmp.i403, label %v4l2_is_format_rgb.exit405.if.end280.sink.split_crit_edge, label %v4l2_is_format_rgb.exit405.if.else272_crit_edge

v4l2_is_format_rgb.exit405.if.else272_crit_edge:  ; preds = %v4l2_is_format_rgb.exit405
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else272

v4l2_is_format_rgb.exit405.if.end280.sink.split_crit_edge: ; preds = %v4l2_is_format_rgb.exit405
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end280.sink.split

if.else272:                                       ; preds = %v4l2_is_format_rgb.exit405.if.else272_crit_edge, %if.end268.if.else272_crit_edge
  tail call void @vpdma_add_sync_on_channel_ctd(ptr noundef %desc_list258, i32 noundef 8) #15
  %179 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %fmt, align 4
  %coplanar275 = getelementptr inbounds %struct.vpe_fmt, ptr %180, i32 0, i32 2
  %181 = ptrtoint ptr %coplanar275 to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %coplanar275, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %182)
  %tobool276.not = icmp eq i8 %182, 0
  br i1 %tobool276.not, label %if.else272.if.end280_crit_edge, label %if.else272.if.end280.sink.split_crit_edge

if.else272.if.end280.sink.split_crit_edge:        ; preds = %if.else272
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end280.sink.split

if.else272.if.end280_crit_edge:                   ; preds = %if.else272
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end280

if.end280.sink.split:                             ; preds = %if.else272.if.end280.sink.split_crit_edge, %v4l2_is_format_rgb.exit405.if.end280.sink.split_crit_edge
  %.sink411 = phi i32 [ 10, %v4l2_is_format_rgb.exit405.if.end280.sink.split_crit_edge ], [ 9, %if.else272.if.end280.sink.split_crit_edge ]
  tail call void @vpdma_add_sync_on_channel_ctd(ptr noundef %desc_list258, i32 noundef %.sink411) #15
  br label %if.end280

if.end280:                                        ; preds = %if.end280.sink.split, %if.else272.if.end280_crit_edge
  %183 = ptrtoint ptr %deinterlacing to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %deinterlacing, align 4, !range !389
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %184)
  %tobool282.not = icmp eq i8 %184, 0
  br i1 %tobool282.not, label %if.end280.if.end285_crit_edge, label %if.then283

if.end280.if.end285_crit_edge:                    ; preds = %if.end280
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end285

if.then283:                                       ; preds = %if.end280
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @vpdma_add_sync_on_channel_ctd(ptr noundef %desc_list258, i32 noundef 7) #15
  br label %if.end285

if.end285:                                        ; preds = %if.then283, %if.end280.if.end285_crit_edge
  %185 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %dev, align 4
  %base.i.i = getelementptr inbounds %struct.vpe_dev, ptr %186, i32 0, i32 8
  %187 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %188, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !382
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 16777216) #15, !srcloc !383
  %189 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %dev, align 4
  %base.i5.i = getelementptr inbounds %struct.vpe_dev, ptr %190, i32 0, i32 8
  %191 = ptrtoint ptr %base.i5.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %base.i5.i, align 8
  %add.ptr.i6.i = getelementptr i8, ptr %192, i32 52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !382
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 16640) #15, !srcloc !383
  %193 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %dev, align 4
  %vpdma.i407 = getelementptr inbounds %struct.vpe_dev, ptr %194, i32 0, i32 11
  %195 = ptrtoint ptr %vpdma.i407 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %vpdma.i407, align 8
  tail call void @vpdma_enable_list_complete_irq(ptr noundef %196, i32 noundef 0, i32 noundef 0, i1 noundef zeroext true) #15
  %197 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %dev, align 4
  %vpdma287 = getelementptr inbounds %struct.vpe_dev, ptr %198, i32 0, i32 11
  %199 = ptrtoint ptr %vpdma287 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %vpdma287, align 8
  %call289 = tail call i32 @vpdma_map_desc_buf(ptr noundef %200, ptr noundef %desc_list258) #15
  %201 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %dev, align 4
  %vpdma291 = getelementptr inbounds %struct.vpe_dev, ptr %202, i32 0, i32 11
  %203 = ptrtoint ptr %vpdma291 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %vpdma291, align 8
  %call293 = tail call i32 @vpdma_submit_descs(ptr noundef %204, ptr noundef %desc_list258, i32 noundef 0) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_job_finish(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vpdma_enable_list_complete_irq(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_format_info(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vpdma_map_desc_buf(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vpdma_add_cfd_adb(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vpdma_add_cfd_block(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @add_out_dtd(ptr noundef %ctx, i32 noundef %port) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.vpe_ctx, ptr %ctx, i32 0, i32 8, i32 1
  %arrayidx2 = getelementptr [11 x %struct.vpe_port_data], ptr @port_data, i32 0, i32 %port
  %dst_vb = getelementptr inbounds %struct.vpe_ctx, ptr %ctx, i32 0, i32 10
  %0 = ptrtoint ptr %dst_vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dst_vb, align 4
  %fmt3 = getelementptr %struct.vpe_ctx, ptr %ctx, i32 0, i32 8, i32 1, i32 3
  %2 = ptrtoint ptr %fmt3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fmt3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %port)
  %cmp = icmp eq i32 %port, 7
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %src_mv_buf_selector = getelementptr inbounds %struct.vpe_ctx, ptr %ctx, i32 0, i32 20
  %4 = ptrtoint ptr %src_mv_buf_selector to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %src_mv_buf_selector, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %lnot.ext = zext i1 %tobool.not to i32
  %q_data1 = getelementptr inbounds %struct.vpe_ctx, ptr %ctx, i32 0, i32 8
  %arrayidx4 = getelementptr %struct.vpe_ctx, ptr %ctx, i32 0, i32 11, i32 %lnot.ext
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx4, align 4
  %fmt7 = getelementptr inbounds %struct.vpe_ctx, ptr %ctx, i32 0, i32 8, i32 0, i32 0, i32 1
  %8 = ptrtoint ptr %fmt7 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %fmt7, align 1
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct.vpdma_data_format], ptr @vpdma_misc_fmts, i32 0, i32 0, i32 2) to i32))
  %10 = load i8, ptr getelementptr inbounds ([0 x %struct.vpdma_data_format], ptr @vpdma_misc_fmts, i32 0, i32 0, i32 2), align 4
  %conv = zext i8 %10 to i32
  %mul = mul i32 %9, %conv
  %shr = lshr i32 %mul, 3
  %add = add nuw nsw i32 %shr, 15
  %and = and i32 %add, 1073741808
  br label %if.end32

if.else:                                          ; preds = %entry
  %coplanar = getelementptr inbounds %struct.vpe_fmt, ptr %3, i32 0, i32 2
  %11 = ptrtoint ptr %coplanar to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %coplanar, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool9.not = icmp eq i8 %12, 0
  br i1 %tobool9.not, label %if.else.cond.end_crit_edge, label %cond.true

if.else.cond.end_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end

cond.true:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %vb_part = getelementptr [11 x %struct.vpe_port_data], ptr @port_data, i32 0, i32 %port, i32 2
  %13 = ptrtoint ptr %vb_part to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %vb_part, align 1
  %conv10 = zext i8 %14 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.else.cond.end_crit_edge
  %cond = phi i32 [ %conv10, %cond.true ], [ 0, %if.else.cond.end_crit_edge ]
  %fmt12 = getelementptr %struct.vpe_ctx, ptr %ctx, i32 0, i32 8, i32 1, i32 0, i32 1
  %arrayidx14 = getelementptr %struct.vpe_fmt, ptr %3, i32 0, i32 3, i32 %cond
  %15 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx14, align 4
  %num_planes = getelementptr %struct.vpe_ctx, ptr %ctx, i32 0, i32 8, i32 1, i32 0, i32 1, i32 0, i32 6
  %17 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %num_planes, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %18)
  %cmp16 = icmp ne i8 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %tobool18.not = icmp eq i32 %cond, 0
  %or.cond = select i1 %cmp16, i1 true, i1 %tobool18.not
  br i1 %or.cond, label %if.else22, label %if.then19

if.then19:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #17
  %call.i = tail call ptr @vb2_plane_cookie(ptr noundef %1, i32 noundef 0) #15
  %bytesperline = getelementptr %struct.vpe_ctx, ptr %ctx, i32 0, i32 8, i32 1, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %19 = ptrtoint ptr %bytesperline to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %bytesperline, align 1
  %height = getelementptr %struct.vpe_ctx, ptr %ctx, i32 0, i32 8, i32 1, i32 0, i32 1, i32 0, i32 1
  %21 = ptrtoint ptr %height to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %height, align 1
  %mul21 = mul i32 %22, %20
  br label %if.end

if.else22:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #17
  %call.i89 = tail call ptr @vb2_plane_cookie(ptr noundef %1, i32 noundef %cond) #15
  br label %if.end

if.end:                                           ; preds = %if.else22, %if.then19
  %dma_addr.0.in = phi ptr [ %call.i, %if.then19 ], [ %call.i89, %if.else22 ]
  %offset.0 = phi i32 [ %mul21, %if.then19 ], [ 0, %if.else22 ]
  %23 = ptrtoint ptr %dma_addr.0.in to i32
  call void @__asan_load4_noabort(i32 %23)
  %dma_addr.0 = load i32, ptr %dma_addr.0.in, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dma_addr.0)
  %tobool24.not = icmp eq i32 %dma_addr.0, 0
  br i1 %tobool24.not, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %dev = getelementptr inbounds %struct.vpe_ctx, ptr %ctx, i32 0, i32 1
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.33, i32 noundef %port) #18
  br label %cleanup46

cleanup:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %add28 = add i32 %dma_addr.0, %offset.0
  %bytesperline31 = getelementptr %struct.vpe_ctx, ptr %ctx, i32 0, i32 8, i32 1, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %28 = ptrtoint ptr %bytesperline31 to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %bytesperline31, align 1
  br label %if.end32

if.end32:                                         ; preds = %cleanup, %if.then
  %q_data.0 = phi ptr [ %q_data1, %if.then ], [ %arrayidx, %cleanup ]
  %vpdma_fmt.0 = phi ptr [ @vpdma_misc_fmts, %if.then ], [ %16, %cleanup ]
  %pix.0 = phi ptr [ %fmt7, %if.then ], [ %fmt12, %cleanup ]
  %dma_addr.2 = phi i32 [ %7, %if.then ], [ %add28, %cleanup ]
  %stride.1 = phi i32 [ %and, %if.then ], [ %29, %cleanup ]
  %flags33 = getelementptr inbounds %struct.vpe_q_data, ptr %q_data.0, i32 0, i32 1
  %30 = ptrtoint ptr %flags33 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags33, align 4
  %and34 = shl i32 %31, 2
  %32 = and i32 %and34, 12
  %dev44 = getelementptr inbounds %struct.vpe_ctx, ptr %ctx, i32 0, i32 1
  %33 = ptrtoint ptr %dev44 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev44, align 4
  %vpdma = getelementptr inbounds %struct.vpe_dev, ptr %34, i32 0, i32 11
  %35 = ptrtoint ptr %vpdma to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %vpdma, align 8
  tail call void @vpdma_set_max_size(ptr noundef %36, i32 noundef 52, i32 noundef 2048, i32 noundef 2048) #15
  %desc_list = getelementptr inbounds %struct.vpe_ctx, ptr %ctx, i32 0, i32 17
  %37 = ptrtoint ptr %pix.0 to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load i32, ptr %pix.0, align 1
  %c_rect = getelementptr inbounds %struct.vpe_q_data, ptr %q_data.0, i32 0, i32 2
  %39 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx2, align 4
  tail call void @vpdma_add_out_dtd(ptr noundef %desc_list, i32 noundef %38, i32 noundef %stride.1, ptr noundef %c_rect, ptr noundef %vpdma_fmt.0, i32 noundef %dma_addr.2, i32 noundef 1, i32 noundef 1, i32 noundef %40, i32 noundef %32) #15
  br label %cleanup46

cleanup46:                                        ; preds = %if.end32, %cleanup.thread
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @add_in_dtd(ptr noundef %ctx, i32 noundef %port) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx2 = getelementptr [11 x %struct.vpe_port_data], ptr @port_data, i32 0, i32 %port
  %vb_index = getelementptr [11 x %struct.vpe_port_data], ptr @port_data, i32 0, i32 %port, i32 1
  %0 = ptrtoint ptr %vb_index to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %vb_index, align 4
  %idxprom = zext i8 %1 to i32
  %arrayidx3 = getelementptr %struct.vpe_ctx, ptr %ctx, i32 0, i32 9, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx3, align 4
  %fmt4 = getelementptr inbounds %struct.vpe_ctx, ptr %ctx, i32 0, i32 8, i32 0, i32 3
  %4 = ptrtoint ptr %fmt4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fmt4, align 4
  %field5 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %field5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %field5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp = icmp eq i32 %7, 3
  %fmt6 = getelementptr inbounds %struct.vpe_ctx, ptr %ctx, i32 0, i32 8, i32 0, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %port)
  %cmp7 = icmp eq i32 %port, 6
  br i1 %cmp7, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %src_mv_buf_selector = getelementptr inbounds %struct.vpe_ctx, ptr %ctx, i32 0, i32 20
  %8 = ptrtoint ptr %src_mv_buf_selector to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %src_mv_buf_selector, align 4
  %arrayidx9 = getelementptr %struct.vpe_ctx, ptr %ctx, i32 0, i32 11, i32 %9
  %10 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx9, align 4
  %12 = ptrtoint ptr %fmt6 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %fmt6, align 1
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct.vpdma_data_format], ptr @vpdma_misc_fmts, i32 0, i32 0, i32 2) to i32))
  %14 = load i8, ptr getelementptr inbounds ([0 x %struct.vpdma_data_format], ptr @vpdma_misc_fmts, i32 0, i32 0, i32 2), align 4
  %conv10 = zext i8 %14 to i32
  %mul = mul i32 %13, %conv10
  %shr = lshr i32 %mul, 3
  %add = add nuw nsw i32 %shr, 15
  %and = and i32 %add, 1073741808
  br label %if.end75

if.else:                                          ; preds = %entry
  %coplanar = getelementptr inbounds %struct.vpe_fmt, ptr %5, i32 0, i32 2
  %15 = ptrtoint ptr %coplanar to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %coplanar, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not = icmp eq i8 %16, 0
  br i1 %tobool.not, label %cond.end.thread, label %cond.end

cond.end.thread:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx14180 = getelementptr %struct.vpe_fmt, ptr %5, i32 0, i32 3, i32 0
  %17 = ptrtoint ptr %arrayidx14180 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx14180, align 4
  br label %if.else22

cond.end:                                         ; preds = %if.else
  %vb_part = getelementptr [11 x %struct.vpe_port_data], ptr @port_data, i32 0, i32 %port, i32 2
  %19 = ptrtoint ptr %vb_part to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %vb_part, align 1
  %conv12 = zext i8 %20 to i32
  %arrayidx14 = getelementptr %struct.vpe_fmt, ptr %5, i32 0, i32 3, i32 %conv12
  %21 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx14, align 4
  %num_planes = getelementptr inbounds %struct.vpe_ctx, ptr %ctx, i32 0, i32 8, i32 0, i32 0, i32 1, i32 0, i32 6
  %23 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %num_planes, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %24)
  %cmp16 = icmp ne i8 %24, 1
  %25 = and i32 %port, 536870911
  %26 = lshr i32 1493, %25
  %27 = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool18.not = icmp ne i32 %27, 0
  %or.cond = select i1 %cmp16, i1 true, i1 %tobool18.not
  br i1 %or.cond, label %cond.end.if.else22_crit_edge, label %if.then19

cond.end.if.else22_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else22

if.then19:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #17
  %call.i = tail call ptr @vb2_plane_cookie(ptr noundef %3, i32 noundef 0) #15
  %bytesperline = getelementptr inbounds %struct.vpe_ctx, ptr %ctx, i32 0, i32 8, i32 0, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %28 = ptrtoint ptr %bytesperline to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %bytesperline, align 1
  %height = getelementptr inbounds %struct.vpe_ctx, ptr %ctx, i32 0, i32 8, i32 0, i32 0, i32 1, i32 0, i32 1
  %30 = ptrtoint ptr %height to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %height, align 1
  %mul21 = mul i32 %31, %29
  br label %if.end

if.else22:                                        ; preds = %cond.end.if.else22_crit_edge, %cond.end.thread
  %tobool18.not187 = phi i1 [ true, %cond.end.thread ], [ %tobool18.not, %cond.end.if.else22_crit_edge ]
  %32 = phi ptr [ %18, %cond.end.thread ], [ %22, %cond.end.if.else22_crit_edge ]
  %cond185 = phi i32 [ 0, %cond.end.thread ], [ %conv12, %cond.end.if.else22_crit_edge ]
  %call.i178 = tail call ptr @vb2_plane_cookie(ptr noundef %3, i32 noundef %cond185) #15
  br label %if.end

if.end:                                           ; preds = %if.else22, %if.then19
  %tobool18.not186 = phi i1 [ false, %if.then19 ], [ %tobool18.not187, %if.else22 ]
  %33 = phi ptr [ %22, %if.then19 ], [ %32, %if.else22 ]
  %dma_addr.0.in = phi ptr [ %call.i, %if.then19 ], [ %call.i178, %if.else22 ]
  %offset.0 = phi i32 [ %mul21, %if.then19 ], [ 0, %if.else22 ]
  %34 = ptrtoint ptr %dma_addr.0.in to i32
  call void @__asan_load4_noabort(i32 %34)
  %dma_addr.0 = load i32, ptr %dma_addr.0.in, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dma_addr.0)
  %tobool24.not = icmp eq i32 %dma_addr.0, 0
  br i1 %tobool24.not, label %cleanup, label %if.end27

if.end27:                                         ; preds = %if.end
  %add28 = add i32 %dma_addr.0, %offset.0
  %bytesperline31 = getelementptr inbounds %struct.vpe_ctx, ptr %ctx, i32 0, i32 8, i32 0, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %35 = ptrtoint ptr %bytesperline31 to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %bytesperline31, align 1
  %flags32 = getelementptr inbounds %struct.vpe_ctx, ptr %ctx, i32 0, i32 8, i32 0, i32 1
  %37 = ptrtoint ptr %flags32 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %flags32, align 4
  %39 = and i32 %38, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %if.end27.if.end75_crit_edge, label %if.then38

if.end27.if.end75_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end75

if.then38:                                        ; preds = %if.end27
  %and36 = lshr i32 %38, 4
  %add47 = add nuw nsw i32 %and36, %idxprom
  %sequence = getelementptr inbounds %struct.vpe_ctx, ptr %ctx, i32 0, i32 4
  %41 = ptrtoint ptr %sequence to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %sequence, align 4
  %add48 = add i32 %add47, %42
  %rem = and i32 %add48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool49.not = icmp eq i32 %rem, 0
  br i1 %tobool49.not, label %if.then38.if.end75_crit_edge, label %if.then50

if.then38.if.end75_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end75

if.then50:                                        ; preds = %if.then38
  %height52 = getelementptr inbounds %struct.vpe_ctx, ptr %ctx, i32 0, i32 8, i32 0, i32 0, i32 1, i32 0, i32 1
  %43 = ptrtoint ptr %height52 to i32
  call void @__asan_loadN_noabort(i32 %43, i32 4)
  %44 = load i32, ptr %height52, align 1
  %45 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %5, align 4
  %47 = zext i32 %46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.137)
  switch i32 %46, label %if.else60 [
    i32 842094158, label %if.then50.if.end64_crit_edge
    i32 825382478, label %if.then50.if.end64_crit_edge191
  ]

if.then50.if.end64_crit_edge191:                  ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end64

if.then50.if.end64_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end64

if.else60:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #17
  %depth61 = getelementptr inbounds %struct.vpdma_data_format, ptr %33, i32 0, i32 2
  %48 = ptrtoint ptr %depth61 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %depth61, align 4
  %50 = lshr i8 %49, 3
  %51 = zext i8 %50 to i32
  br label %if.end64

if.end64:                                         ; preds = %if.else60, %if.then50.if.end64_crit_edge, %if.then50.if.end64_crit_edge191
  %bpp.0 = phi i32 [ %51, %if.else60 ], [ 1, %if.then50.if.end64_crit_edge ], [ 1, %if.then50.if.end64_crit_edge191 ]
  %spec.select.v = select i1 %tobool18.not186, i32 1, i32 2
  %spec.select = lshr i32 %44, %spec.select.v
  %52 = ptrtoint ptr %fmt6 to i32
  call void @__asan_loadN_noabort(i32 %52, i32 4)
  %53 = load i32, ptr %fmt6, align 1
  %mul70 = mul i32 %bpp.0, %spec.select
  %mul71 = mul i32 %mul70, %53
  %add72 = add i32 %mul71, %add28
  br label %if.end75

cleanup:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %dev = getelementptr inbounds %struct.vpe_ctx, ptr %ctx, i32 0, i32 1
  %54 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.33, i32 noundef %port) #18
  br label %cleanup106

if.end75:                                         ; preds = %if.end64, %if.then38.if.end75_crit_edge, %if.end27.if.end75_crit_edge, %if.then
  %vpdma_fmt.0 = phi ptr [ @vpdma_misc_fmts, %if.then ], [ %33, %if.end64 ], [ %33, %if.then38.if.end75_crit_edge ], [ %33, %if.end27.if.end75_crit_edge ]
  %field.3.shrunk = phi i1 [ %cmp, %if.then ], [ true, %if.end64 ], [ false, %if.then38.if.end75_crit_edge ], [ %cmp, %if.end27.if.end75_crit_edge ]
  %dma_addr.3 = phi i32 [ %11, %if.then ], [ %add72, %if.end64 ], [ %add28, %if.then38.if.end75_crit_edge ], [ %add28, %if.end27.if.end75_crit_edge ]
  %stride.1 = phi i32 [ %and, %if.then ], [ %36, %if.end64 ], [ %36, %if.then38.if.end75_crit_edge ], [ %36, %if.end27.if.end75_crit_edge ]
  %field.3 = zext i1 %field.3.shrunk to i32
  %flags76 = getelementptr inbounds %struct.vpe_ctx, ptr %ctx, i32 0, i32 8, i32 0, i32 1
  %58 = ptrtoint ptr %flags76 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %flags76, align 4
  %and77 = shl i32 %59, 2
  %60 = and i32 %and77, 12
  %c_rect = getelementptr inbounds %struct.vpe_ctx, ptr %ctx, i32 0, i32 8, i32 0, i32 2
  %width87 = getelementptr inbounds %struct.vpe_ctx, ptr %ctx, i32 0, i32 8, i32 0, i32 2, i32 2
  %61 = ptrtoint ptr %width87 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %width87, align 4
  %height89 = getelementptr inbounds %struct.vpe_ctx, ptr %ctx, i32 0, i32 8, i32 0, i32 2, i32 3
  %63 = ptrtoint ptr %height89 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %height89, align 4
  %65 = and i32 %port, 536870911
  %66 = lshr i32 1493, %65
  %67 = and i32 %66, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool92.not.not = icmp eq i32 %67, 0
  br i1 %tobool92.not.not, label %land.lhs.true93, label %if.end75.if.end103_crit_edge

if.end75.if.end103_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end103

land.lhs.true93:                                  ; preds = %if.end75
  %68 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %5, align 4
  %70 = zext i32 %69 to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.138)
  switch i32 %69, label %land.lhs.true93.if.end103_crit_edge [
    i32 842094158, label %land.lhs.true93.if.then101_crit_edge
    i32 825382478, label %land.lhs.true93.if.then101_crit_edge192
  ]

land.lhs.true93.if.then101_crit_edge192:          ; preds = %land.lhs.true93
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then101

land.lhs.true93.if.then101_crit_edge:             ; preds = %land.lhs.true93
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then101

land.lhs.true93.if.end103_crit_edge:              ; preds = %land.lhs.true93
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end103

if.then101:                                       ; preds = %land.lhs.true93.if.then101_crit_edge, %land.lhs.true93.if.then101_crit_edge192
  %div102 = sdiv i32 %64, 2
  br label %if.end103

if.end103:                                        ; preds = %if.then101, %land.lhs.true93.if.end103_crit_edge, %if.end75.if.end103_crit_edge
  %frame_height.0 = phi i32 [ %div102, %if.then101 ], [ %64, %if.end75.if.end103_crit_edge ], [ %64, %land.lhs.true93.if.end103_crit_edge ]
  %desc_list = getelementptr inbounds %struct.vpe_ctx, ptr %ctx, i32 0, i32 17
  %71 = ptrtoint ptr %fmt6 to i32
  call void @__asan_loadN_noabort(i32 %71, i32 4)
  %72 = load i32, ptr %fmt6, align 1
  %73 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx2, align 4
  tail call void @vpdma_add_in_dtd(ptr noundef %desc_list, i32 noundef %72, i32 noundef %stride.1, ptr noundef %c_rect, ptr noundef %vpdma_fmt.0, i32 noundef %dma_addr.3, i32 noundef %74, i32 noundef %field.3, i32 noundef %60, i32 noundef %62, i32 noundef %frame_height.0, i32 noundef 0, i32 noundef 0) #15
  br label %cleanup106

cleanup106:                                       ; preds = %if.end103, %cleanup
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vpdma_add_sync_on_channel_ctd(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vpdma_submit_descs(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_next_buf(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_buf_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vpdma_set_line_mode(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vpdma_set_frame_start_event(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vpdma_set_max_size(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vpdma_add_out_dtd(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vpdma_add_in_dtd(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @job_abort(ptr nocapture noundef writeonly %priv) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %aborting = getelementptr inbounds %struct.vpe_ctx, ptr %priv, i32 0, i32 5
  %0 = ptrtoint ptr %aborting to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %aborting, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release_empty(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_fop_poll(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_fop_mmap(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpe_open(ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #15
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vpe_open.__UNIQUE_ID_ddebug365, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vpe_open, %do.end)) #15
          to label %if.then [label %do.end], !srcloc !386

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vpe_open.__UNIQUE_ID_ddebug365, ptr noundef %3, ptr noundef nonnull @.str.45) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 972) #19
  %tobool7.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool7.not, label %do.end.cleanup_crit_edge, label %if.end9

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end9:                                          ; preds = %do.end
  %dev10 = getelementptr inbounds %struct.vpe_ctx, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %dev10 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %1, ptr %dev10, align 8
  %dev_mutex = getelementptr inbounds %struct.vpe_dev, ptr %1, i32 0, i32 5
  %call11 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %dev_mutex, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end9.free_ctx_crit_edge

if.end9.free_ctx_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %free_ctx

if.end14:                                         ; preds = %if.end9
  %desc_list = getelementptr inbounds %struct.vpe_ctx, ptr %call7.i.i, i32 0, i32 17
  %call15 = tail call i32 @vpdma_create_desc_list(ptr noundef %desc_list, i32 noundef 528, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp.not = icmp eq i32 %call15, 0
  br i1 %cmp.not, label %if.end17, label %if.end14.unlock_crit_edge

if.end14.unlock_crit_edge:                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  br label %unlock

if.end17:                                         ; preds = %if.end14
  %mmr_adb = getelementptr inbounds %struct.vpe_ctx, ptr %call7.i.i, i32 0, i32 14
  %call18 = tail call i32 @vpdma_alloc_desc_buf(ptr noundef %mmr_adb, i32 noundef 432) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19.not = icmp eq i32 %call18, 0
  br i1 %cmp19.not, label %if.end21, label %if.end17.free_desc_list_crit_edge

if.end17.free_desc_list_crit_edge:                ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  br label %free_desc_list

if.end21:                                         ; preds = %if.end17
  %sc_coeff_h = getelementptr inbounds %struct.vpe_ctx, ptr %call7.i.i, i32 0, i32 15
  %call22 = tail call i32 @vpdma_alloc_desc_buf(ptr noundef %sc_coeff_h, i32 noundef 1024) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23.not = icmp eq i32 %call22, 0
  br i1 %cmp23.not, label %if.end25, label %if.end21.free_mmr_adb_crit_edge

if.end21.free_mmr_adb_crit_edge:                  ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #17
  br label %free_mmr_adb

if.end25:                                         ; preds = %if.end21
  %sc_coeff_v = getelementptr inbounds %struct.vpe_ctx, ptr %call7.i.i, i32 0, i32 16
  %call26 = tail call i32 @vpdma_alloc_desc_buf(ptr noundef %sc_coeff_v, i32 noundef 1024) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27.not = icmp eq i32 %call26, 0
  br i1 %cmp27.not, label %if.end29, label %if.end25.free_sc_h_crit_edge

if.end25.free_sc_h_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #17
  br label %free_sc_h

if.end29:                                         ; preds = %if.end25
  tail call fastcc void @init_adb_hdrs(ptr noundef nonnull %call7.i.i)
  %call30 = tail call ptr @video_devdata(ptr noundef %file) #15
  tail call void @v4l2_fh_init(ptr noundef nonnull %call7.i.i, ptr noundef %call30) #15
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %6 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %private_data, align 4
  %hdl31 = getelementptr inbounds %struct.vpe_ctx, ptr %call7.i.i, i32 0, i32 2
  %call33 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %hdl31, i32 noundef 1, ptr noundef nonnull @vpe_open._key, ptr noundef nonnull @.str.46) #15
  %call34 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %hdl31, ptr noundef nonnull @vpe_bufs_per_job, ptr noundef null) #15
  %error = getelementptr inbounds %struct.vpe_ctx, ptr %call7.i.i, i32 0, i32 2, i32 9
  %7 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %error, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool35.not = icmp eq i32 %8, 0
  br i1 %tobool35.not, label %if.end38, label %if.end29.exit_fh_crit_edge

if.end29.exit_fh_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #17
  br label %exit_fh

if.end38:                                         ; preds = %if.end29
  %ctrl_handler = getelementptr inbounds %struct.v4l2_fh, ptr %call7.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %hdl31, ptr %ctrl_handler, align 4
  %call40 = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %hdl31) #15
  %q_data = getelementptr inbounds %struct.vpe_ctx, ptr %call7.i.i, i32 0, i32 8
  %fmt = getelementptr inbounds %struct.vpe_ctx, ptr %call7.i.i, i32 0, i32 8, i32 0, i32 0, i32 1
  %call41 = tail call fastcc ptr @__find_format(i32 noundef 1448695129)
  %fmt42 = getelementptr inbounds %struct.vpe_ctx, ptr %call7.i.i, i32 0, i32 8, i32 0, i32 3
  %10 = ptrtoint ptr %fmt42 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call41, ptr %fmt42, align 8
  %11 = ptrtoint ptr %call41 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %call41, align 4
  %pixelformat = getelementptr inbounds %struct.vpe_ctx, ptr %call7.i.i, i32 0, i32 8, i32 0, i32 0, i32 1, i32 0, i32 2
  %13 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %pixelformat, align 4
  %14 = ptrtoint ptr %q_data to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 10, ptr %q_data, align 8
  %15 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1920, ptr %fmt, align 4
  %height = getelementptr inbounds %struct.vpe_ctx, ptr %call7.i.i, i32 0, i32 8, i32 0, i32 0, i32 1, i32 0, i32 1
  %16 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1080, ptr %height, align 8
  %num_planes = getelementptr inbounds %struct.vpe_ctx, ptr %call7.i.i, i32 0, i32 8, i32 0, i32 0, i32 1, i32 0, i32 6
  %17 = ptrtoint ptr %num_planes to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %num_planes, align 8
  %vpdma_fmt = getelementptr inbounds %struct.vpe_fmt, ptr %call41, i32 0, i32 3
  %18 = ptrtoint ptr %vpdma_fmt to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %vpdma_fmt, align 4
  %depth = getelementptr inbounds %struct.vpdma_data_format, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %depth to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %depth, align 4
  %conv = zext i8 %21 to i32
  %shr = mul nuw nsw i32 %conv, 240
  %plane_fmt = getelementptr inbounds %struct.vpe_ctx, ptr %call7.i.i, i32 0, i32 8, i32 0, i32 0, i32 1, i32 0, i32 5
  %bytesperline = getelementptr inbounds %struct.vpe_ctx, ptr %call7.i.i, i32 0, i32 8, i32 0, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %22 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %shr, ptr %bytesperline, align 4
  %mul53 = mul nuw nsw i32 %conv, 259200
  %23 = ptrtoint ptr %plane_fmt to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %mul53, ptr %plane_fmt, align 8
  %colorspace = getelementptr inbounds %struct.vpe_ctx, ptr %call7.i.i, i32 0, i32 8, i32 0, i32 0, i32 1, i32 0, i32 4
  %24 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 3, ptr %colorspace, align 4
  %xfer_func = getelementptr inbounds %struct.vpe_ctx, ptr %call7.i.i, i32 0, i32 8, i32 0, i32 0, i32 1, i32 0, i32 10
  %25 = ptrtoint ptr %xfer_func to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %xfer_func, align 4
  %26 = getelementptr inbounds %struct.vpe_ctx, ptr %call7.i.i, i32 0, i32 8, i32 0, i32 0, i32 1, i32 0, i32 8
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %26, align 2
  %quantization = getelementptr inbounds %struct.vpe_ctx, ptr %call7.i.i, i32 0, i32 8, i32 0, i32 0, i32 1, i32 0, i32 9
  %28 = ptrtoint ptr %quantization to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %quantization, align 1
  %field = getelementptr inbounds %struct.vpe_ctx, ptr %call7.i.i, i32 0, i32 8, i32 0, i32 0, i32 1, i32 0, i32 3
  %29 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %field, align 8
  %c_rect = getelementptr inbounds %struct.vpe_ctx, ptr %call7.i.i, i32 0, i32 8, i32 0, i32 2
  %30 = ptrtoint ptr %c_rect to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %c_rect, align 8
  %top = getelementptr inbounds %struct.vpe_ctx, ptr %call7.i.i, i32 0, i32 8, i32 0, i32 2, i32 1
  %31 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %top, align 4
  %width59 = getelementptr inbounds %struct.vpe_ctx, ptr %call7.i.i, i32 0, i32 8, i32 0, i32 2, i32 2
  %32 = ptrtoint ptr %width59 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1920, ptr %width59, align 8
  %height62 = getelementptr inbounds %struct.vpe_ctx, ptr %call7.i.i, i32 0, i32 8, i32 0, i32 2, i32 3
  %33 = ptrtoint ptr %height62 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1080, ptr %height62, align 4
  %flags = getelementptr inbounds %struct.vpe_ctx, ptr %call7.i.i, i32 0, i32 8, i32 0, i32 1
  %34 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %flags, align 4
  %arrayidx64 = getelementptr %struct.vpe_ctx, ptr %call7.i.i, i32 0, i32 8, i32 1
  %35 = call ptr @memcpy(ptr %arrayidx64, ptr %q_data, i32 228)
  %36 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 9, ptr %arrayidx64, align 4
  %37 = ptrtoint ptr %mmr_adb to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mmr_adb, align 4
  %arrayidx2.i = getelementptr %struct.vpe_mmr_adb, ptr %38, i32 0, i32 10, i32 2
  %39 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 34342916, ptr %arrayidx2.i, align 4
  %arrayidx3.i = getelementptr %struct.vpe_mmr_adb, ptr %38, i32 0, i32 10, i32 3
  %40 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 18354188, ptr %arrayidx3.i, align 4
  %arrayidx4.i = getelementptr %struct.vpe_mmr_adb, ptr %38, i32 0, i32 10, i32 4
  %41 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 134480384, ptr %arrayidx4.i, align 4
  %arrayidx5.i = getelementptr %struct.vpe_mmr_adb, ptr %38, i32 0, i32 10, i32 5
  %42 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 269488140, ptr %arrayidx5.i, align 4
  %arrayidx6.i = getelementptr %struct.vpe_mmr_adb, ptr %38, i32 0, i32 10, i32 6
  %43 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 269488144, ptr %arrayidx6.i, align 4
  %arrayidx7.i = getelementptr %struct.vpe_mmr_adb, ptr %38, i32 0, i32 10, i32 7
  %44 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 269488144, ptr %arrayidx7.i, align 4
  %load_mmrs.i = getelementptr inbounds %struct.vpe_ctx, ptr %call7.i.i, i32 0, i32 19
  %45 = ptrtoint ptr %load_mmrs.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %load_mmrs.i, align 1
  tail call fastcc void @set_src_registers(ptr noundef nonnull %call7.i.i)
  tail call fastcc void @set_dst_registers(ptr noundef nonnull %call7.i.i)
  %call69 = tail call fastcc i32 @set_srcdst_params(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end72, label %if.end38.exit_fh_crit_edge

if.end38.exit_fh_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #17
  br label %exit_fh

if.end72:                                         ; preds = %if.end38
  %m2m_dev = getelementptr inbounds %struct.vpe_dev, ptr %1, i32 0, i32 2
  %46 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %m2m_dev, align 8
  %call73 = tail call ptr @v4l2_m2m_ctx_init(ptr noundef %47, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @queue_init) #15
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %call7.i.i, i32 0, i32 10
  %48 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call73, ptr %m2m_ctx, align 4
  %cmp.i = icmp ugt ptr %call73, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then78, label %if.end82

if.then78:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #17
  %49 = ptrtoint ptr %call73 to i32
  br label %exit_fh

if.end82:                                         ; preds = %if.end72
  tail call void @v4l2_fh_add(ptr noundef nonnull %call7.i.i) #15
  %num_instances = getelementptr inbounds %struct.vpe_dev, ptr %1, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_instances, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !393
  tail call void @llvm.prefetch.p0(ptr %num_instances, i32 1, i32 3, i32 1) #15
  %50 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %num_instances, ptr %num_instances, i32 1, ptr elementtype(i32) %num_instances) #15, !srcloc !394
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %50, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !395
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i)
  %cmp85 = icmp eq i32 %asmresult.i.i.i.i, 1
  br i1 %cmp85, label %do.body88, label %if.end82.if.end108_crit_edge

if.end82.if.end108_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end108

do.body88:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vpe_open.__UNIQUE_ID_ddebug366, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vpe_open, %if.end108)) #15
          to label %if.then102 [label %if.end108], !srcloc !386

if.then102:                                       ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #17
  %51 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vpe_open.__UNIQUE_ID_ddebug366, ptr noundef %52, ptr noundef nonnull @.str.47) #15
  br label %if.end108

if.end108:                                        ; preds = %if.then102, %do.body88, %if.end82.if.end108_crit_edge
  %bufs_per_job = getelementptr inbounds %struct.vpe_ctx, ptr %call7.i.i, i32 0, i32 6
  %53 = ptrtoint ptr %bufs_per_job to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 1, ptr %bufs_per_job, align 8
  %54 = ptrtoint ptr %load_mmrs.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 1, ptr %load_mmrs.i, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vpe_open.__UNIQUE_ID_ddebug367, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vpe_open, %do.end130)) #15
          to label %if.then123 [label %do.end130], !srcloc !386

if.then123:                                       ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #17
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %1, align 8
  %57 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %m2m_ctx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vpe_open.__UNIQUE_ID_ddebug367, ptr noundef %56, ptr noundef nonnull @.str.48, ptr noundef nonnull %call7.i.i, ptr noundef %58) #15
  br label %do.end130

do.end130:                                        ; preds = %if.then123, %if.end108
  tail call void @mutex_unlock(ptr noundef %dev_mutex) #15
  br label %cleanup

exit_fh:                                          ; preds = %if.then78, %if.end38.exit_fh_crit_edge, %if.end29.exit_fh_crit_edge
  %ret.0 = phi i32 [ %call69, %if.end38.exit_fh_crit_edge ], [ %49, %if.then78 ], [ %8, %if.end29.exit_fh_crit_edge ]
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl31) #15
  tail call void @v4l2_fh_exit(ptr noundef nonnull %call7.i.i) #15
  tail call void @vpdma_free_desc_buf(ptr noundef %sc_coeff_v) #15
  br label %free_sc_h

free_sc_h:                                        ; preds = %exit_fh, %if.end25.free_sc_h_crit_edge
  %ret.1 = phi i32 [ %call26, %if.end25.free_sc_h_crit_edge ], [ %ret.0, %exit_fh ]
  tail call void @vpdma_free_desc_buf(ptr noundef %sc_coeff_h) #15
  br label %free_mmr_adb

free_mmr_adb:                                     ; preds = %free_sc_h, %if.end21.free_mmr_adb_crit_edge
  %ret.2 = phi i32 [ %call22, %if.end21.free_mmr_adb_crit_edge ], [ %ret.1, %free_sc_h ]
  tail call void @vpdma_free_desc_buf(ptr noundef %mmr_adb) #15
  br label %free_desc_list

free_desc_list:                                   ; preds = %free_mmr_adb, %if.end17.free_desc_list_crit_edge
  %ret.3 = phi i32 [ %call18, %if.end17.free_desc_list_crit_edge ], [ %ret.2, %free_mmr_adb ]
  tail call void @vpdma_free_desc_list(ptr noundef %desc_list) #15
  br label %unlock

unlock:                                           ; preds = %free_desc_list, %if.end14.unlock_crit_edge
  %ret.4 = phi i32 [ %call15, %if.end14.unlock_crit_edge ], [ %ret.3, %free_desc_list ]
  tail call void @mutex_unlock(ptr noundef %dev_mutex) #15
  br label %free_ctx

free_ctx:                                         ; preds = %unlock, %if.end9.free_ctx_crit_edge
  %ret.5 = phi i32 [ %ret.4, %unlock ], [ -512, %if.end9.free_ctx_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #15
  br label %cleanup

cleanup:                                          ; preds = %free_ctx, %do.end130, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.5, %free_ctx ], [ 0, %do.end130 ], [ -12, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpe_release(ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #15
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vpe_release.__UNIQUE_ID_ddebug368, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vpe_release, %do.end)) #15
          to label %if.then [label %do.end], !srcloc !386

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vpe_release.__UNIQUE_ID_ddebug368, ptr noundef %5, ptr noundef nonnull @.str.120, ptr noundef %3) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %dev_mutex = getelementptr inbounds %struct.vpe_dev, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %dev_mutex, i32 noundef 0) #15
  %dev1.i.i = getelementptr inbounds %struct.vpe_ctx, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev1.i.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %mv_buf_size.i.i = getelementptr inbounds %struct.vpe_ctx, ptr %3, i32 0, i32 13
  %10 = ptrtoint ptr %mv_buf_size.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mv_buf_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i.i = icmp eq i32 %11, 0
  br i1 %cmp.i.i, label %do.end.free_mv_buffers.exit_crit_edge, label %if.end.i.i

do.end.free_mv_buffers.exit_crit_edge:            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %free_mv_buffers.exit

if.end.i.i:                                       ; preds = %do.end
  %mv_buf.i.i = getelementptr inbounds %struct.vpe_ctx, ptr %3, i32 0, i32 12
  %12 = ptrtoint ptr %mv_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mv_buf.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i, label %if.end.i.i.if.end8.i.i_crit_edge, label %if.then3.i.i

if.end.i.i.if.end8.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %mv_buf_dma.i.i = getelementptr inbounds %struct.vpe_ctx, ptr %3, i32 0, i32 11
  %14 = ptrtoint ptr %mv_buf_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mv_buf_dma.i.i, align 4
  tail call void @dma_free_attrs(ptr noundef %9, i32 noundef %11, ptr noundef nonnull %13, i32 noundef %15, i32 noundef 0) #15
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.then3.i.i, %if.end.i.i.if.end8.i.i_crit_edge
  %arrayidx10.i.i = getelementptr %struct.vpe_ctx, ptr %3, i32 0, i32 12, i32 1
  %16 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx10.i.i, align 4
  %tobool11.not.i.i = icmp eq ptr %17, null
  br i1 %tobool11.not.i.i, label %if.end8.i.i.free_mv_buffers.exit_crit_edge, label %if.then12.i.i

if.end8.i.i.free_mv_buffers.exit_crit_edge:       ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %free_mv_buffers.exit

if.then12.i.i:                                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %18 = ptrtoint ptr %mv_buf_size.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mv_buf_size.i.i, align 4
  %arrayidx17.i.i = getelementptr %struct.vpe_ctx, ptr %3, i32 0, i32 11, i32 1
  %20 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx17.i.i, align 4
  tail call void @dma_free_attrs(ptr noundef %9, i32 noundef %19, ptr noundef nonnull %17, i32 noundef %21, i32 noundef 0) #15
  br label %free_mv_buffers.exit

free_mv_buffers.exit:                             ; preds = %if.then12.i.i, %if.end8.i.i.free_mv_buffers.exit_crit_edge, %do.end.free_mv_buffers.exit_crit_edge
  %vpdma = getelementptr inbounds %struct.vpe_dev, ptr %1, i32 0, i32 11
  %22 = ptrtoint ptr %vpdma to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vpdma, align 8
  %desc_list = getelementptr inbounds %struct.vpe_ctx, ptr %3, i32 0, i32 17
  tail call void @vpdma_unmap_desc_buf(ptr noundef %23, ptr noundef %desc_list) #15
  %24 = ptrtoint ptr %vpdma to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %vpdma, align 8
  %mmr_adb = getelementptr inbounds %struct.vpe_ctx, ptr %3, i32 0, i32 14
  tail call void @vpdma_unmap_desc_buf(ptr noundef %25, ptr noundef %mmr_adb) #15
  %26 = ptrtoint ptr %vpdma to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %vpdma, align 8
  %sc_coeff_h = getelementptr inbounds %struct.vpe_ctx, ptr %3, i32 0, i32 15
  tail call void @vpdma_unmap_desc_buf(ptr noundef %27, ptr noundef %sc_coeff_h) #15
  %28 = ptrtoint ptr %vpdma to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %vpdma, align 8
  %sc_coeff_v = getelementptr inbounds %struct.vpe_ctx, ptr %3, i32 0, i32 16
  tail call void @vpdma_unmap_desc_buf(ptr noundef %29, ptr noundef %sc_coeff_v) #15
  tail call void @vpdma_free_desc_list(ptr noundef %desc_list) #15
  tail call void @vpdma_free_desc_buf(ptr noundef %mmr_adb) #15
  tail call void @vpdma_free_desc_buf(ptr noundef %sc_coeff_v) #15
  tail call void @vpdma_free_desc_buf(ptr noundef %sc_coeff_h) #15
  tail call void @v4l2_fh_del(ptr noundef %3) #15
  tail call void @v4l2_fh_exit(ptr noundef %3) #15
  %hdl = getelementptr inbounds %struct.vpe_ctx, ptr %3, i32 0, i32 2
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #15
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %3, i32 0, i32 10
  %30 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %m2m_ctx, align 4
  tail call void @v4l2_m2m_ctx_release(ptr noundef %31) #15
  tail call void @kfree(ptr noundef %3) #15
  %num_instances = getelementptr inbounds %struct.vpe_dev, ptr %1, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_instances, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !396
  tail call void @llvm.prefetch.p0(ptr %num_instances, i32 1, i32 3, i32 1) #15
  %32 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %num_instances, ptr %num_instances, i32 1, ptr elementtype(i32) %num_instances) #15, !srcloc !397
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %32, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !398
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp, label %do.body17, label %free_mv_buffers.exit.if.end37_crit_edge

free_mv_buffers.exit.if.end37_crit_edge:          ; preds = %free_mv_buffers.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end37

do.body17:                                        ; preds = %free_mv_buffers.exit
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vpe_release.__UNIQUE_ID_ddebug369, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vpe_release, %if.end37)) #15
          to label %if.then31 [label %if.end37], !srcloc !386

if.then31:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #17
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vpe_release.__UNIQUE_ID_ddebug369, ptr noundef %34, ptr noundef nonnull @.str.121) #15
  br label %if.end37

if.end37:                                         ; preds = %if.then31, %do.body17, %free_mv_buffers.exit.if.end37_crit_edge
  tail call void @mutex_unlock(ptr noundef %dev_mutex) #15
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vpdma_create_desc_list(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vpdma_alloc_desc_buf(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @init_adb_hdrs(ptr nocapture noundef readonly %ctx) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %mmr_adb = getelementptr inbounds %struct.vpe_ctx, ptr %ctx, i32 0, i32 14
  %0 = ptrtoint ptr %mmr_adb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmr_adb, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 268, ptr %1, align 4
  %nwords = getelementptr inbounds %struct.vpdma_adb_hdr, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %nwords to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %nwords, align 4
  %4 = load ptr, ptr %mmr_adb, align 4
  %add.ptr6 = getelementptr i8, ptr %4, i32 32
  %5 = ptrtoint ptr %add.ptr6 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 772, ptr %add.ptr6, align 4
  %nwords8 = getelementptr i8, ptr %4, i32 36
  %6 = ptrtoint ptr %nwords8 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 8, ptr %nwords8, align 4
  %7 = load ptr, ptr %mmr_adb, align 4
  %add.ptr15 = getelementptr i8, ptr %7, i32 80
  %8 = ptrtoint ptr %add.ptr15 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1028, ptr %add.ptr15, align 4
  %nwords17 = getelementptr i8, ptr %7, i32 84
  %9 = ptrtoint ptr %nwords17 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 8, ptr %nwords17, align 4
  %10 = load ptr, ptr %mmr_adb, align 4
  %add.ptr24 = getelementptr i8, ptr %10, i32 128
  %11 = ptrtoint ptr %add.ptr24 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1284, ptr %add.ptr24, align 4
  %nwords26 = getelementptr i8, ptr %10, i32 132
  %12 = ptrtoint ptr %nwords26 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 8, ptr %nwords26, align 4
  %13 = load ptr, ptr %mmr_adb, align 4
  %add.ptr33 = getelementptr i8, ptr %13, i32 176
  %14 = ptrtoint ptr %add.ptr33 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1536, ptr %add.ptr33, align 4
  %nwords35 = getelementptr i8, ptr %13, i32 180
  %15 = ptrtoint ptr %nwords35 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 8, ptr %nwords35, align 4
  %16 = load ptr, ptr %mmr_adb, align 4
  %add.ptr42 = getelementptr i8, ptr %16, i32 224
  %dev = getelementptr inbounds %struct.vpe_ctx, ptr %ctx, i32 0, i32 1
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  %sc = getelementptr inbounds %struct.vpe_dev, ptr %18, i32 0, i32 12
  %19 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sc, align 4
  %res = getelementptr inbounds %struct.sc_data, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %res, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  %res44 = getelementptr inbounds %struct.vpe_dev, ptr %18, i32 0, i32 9
  %25 = ptrtoint ptr %res44 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %res44, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  %sub = sub i32 %24, %28
  %29 = ptrtoint ptr %add.ptr42 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %sub, ptr %add.ptr42, align 4
  %nwords47 = getelementptr i8, ptr %16, i32 228
  %30 = ptrtoint ptr %nwords47 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 7, ptr %nwords47, align 4
  %31 = load ptr, ptr %mmr_adb, align 4
  %add.ptr54 = getelementptr i8, ptr %31, i32 272
  %32 = load ptr, ptr %dev, align 4
  %sc56 = getelementptr inbounds %struct.vpe_dev, ptr %32, i32 0, i32 12
  %33 = ptrtoint ptr %sc56 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sc56, align 4
  %res57 = getelementptr inbounds %struct.sc_data, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %res57 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %res57, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 4
  %res60 = getelementptr inbounds %struct.vpe_dev, ptr %32, i32 0, i32 9
  %39 = ptrtoint ptr %res60 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %res60, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 4
  %sub62 = add i32 %38, 32
  %add63 = sub i32 %sub62, %42
  %43 = ptrtoint ptr %add.ptr54 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %add63, ptr %add.ptr54, align 4
  %nwords65 = getelementptr i8, ptr %31, i32 276
  %44 = ptrtoint ptr %nwords65 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 6, ptr %nwords65, align 4
  %45 = load ptr, ptr %mmr_adb, align 4
  %add.ptr72 = getelementptr i8, ptr %45, i32 320
  %46 = load ptr, ptr %dev, align 4
  %sc74 = getelementptr inbounds %struct.vpe_dev, ptr %46, i32 0, i32 12
  %47 = ptrtoint ptr %sc74 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %sc74, align 4
  %res75 = getelementptr inbounds %struct.sc_data, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %res75 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %res75, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %50, align 4
  %res78 = getelementptr inbounds %struct.vpe_dev, ptr %46, i32 0, i32 9
  %53 = ptrtoint ptr %res78 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %res78, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %54, align 4
  %sub80 = add i32 %52, 68
  %add81 = sub i32 %sub80, %56
  %57 = ptrtoint ptr %add.ptr72 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %add81, ptr %add.ptr72, align 4
  %nwords83 = getelementptr i8, ptr %45, i32 324
  %58 = ptrtoint ptr %nwords83 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 9, ptr %nwords83, align 4
  %59 = load ptr, ptr %mmr_adb, align 4
  %add.ptr90 = getelementptr i8, ptr %59, i32 384
  %60 = load ptr, ptr %dev, align 4
  %csc = getelementptr inbounds %struct.vpe_dev, ptr %60, i32 0, i32 13
  %61 = ptrtoint ptr %csc to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %csc, align 8
  %res92 = getelementptr inbounds %struct.csc_data, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %res92 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %res92, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %64, align 4
  %res95 = getelementptr inbounds %struct.vpe_dev, ptr %60, i32 0, i32 9
  %67 = ptrtoint ptr %res95 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %res95, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %68, align 4
  %sub97 = sub i32 %66, %70
  %71 = ptrtoint ptr %add.ptr90 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %sub97, ptr %add.ptr90, align 4
  %nwords100 = getelementptr i8, ptr %59, i32 388
  %72 = ptrtoint ptr %nwords100 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 6, ptr %nwords100, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_custom(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__find_format(i32 noundef %fourcc) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @vpe_formats, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %fourcc)
  %cmp2 = icmp eq i32 %0, %fourcc
  br i1 %cmp2, label %entry.cleanup_crit_edge, label %for.cond

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.cond:                                         ; preds = %entry
  %1 = load i32, ptr getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %fourcc)
  %cmp2.1 = icmp eq i32 %1, %fourcc
  br i1 %cmp2.1, label %for.cond.cleanup_crit_edge, label %for.cond.1

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  %2 = load i32, ptr getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %fourcc)
  %cmp2.2 = icmp eq i32 %2, %fourcc
  br i1 %cmp2.2, label %for.cond.1.cleanup_crit_edge, label %for.cond.2

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.cond.2:                                       ; preds = %for.cond.1
  %3 = load i32, ptr getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %fourcc)
  %cmp2.3 = icmp eq i32 %3, %fourcc
  br i1 %cmp2.3, label %for.cond.2.cleanup_crit_edge, label %for.cond.3

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.cond.3:                                       ; preds = %for.cond.2
  %4 = load i32, ptr getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %fourcc)
  %cmp2.4 = icmp eq i32 %4, %fourcc
  br i1 %cmp2.4, label %for.cond.3.cleanup_crit_edge, label %for.cond.4

for.cond.3.cleanup_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.cond.4:                                       ; preds = %for.cond.3
  %5 = load i32, ptr getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %fourcc)
  %cmp2.5 = icmp eq i32 %5, %fourcc
  br i1 %cmp2.5, label %for.cond.4.cleanup_crit_edge, label %for.cond.5

for.cond.4.cleanup_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.cond.5:                                       ; preds = %for.cond.4
  %6 = load i32, ptr getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %fourcc)
  %cmp2.6 = icmp eq i32 %6, %fourcc
  br i1 %cmp2.6, label %for.cond.5.cleanup_crit_edge, label %for.cond.6

for.cond.5.cleanup_crit_edge:                     ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.cond.6:                                       ; preds = %for.cond.5
  %7 = load i32, ptr getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %fourcc)
  %cmp2.7 = icmp eq i32 %7, %fourcc
  br i1 %cmp2.7, label %for.cond.6.cleanup_crit_edge, label %for.cond.7

for.cond.6.cleanup_crit_edge:                     ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.cond.7:                                       ; preds = %for.cond.6
  %8 = load i32, ptr getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 8), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %fourcc)
  %cmp2.8 = icmp eq i32 %8, %fourcc
  br i1 %cmp2.8, label %for.cond.7.cleanup_crit_edge, label %for.cond.8

for.cond.7.cleanup_crit_edge:                     ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.cond.8:                                       ; preds = %for.cond.7
  %9 = load i32, ptr getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 9), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %fourcc)
  %cmp2.9 = icmp eq i32 %9, %fourcc
  br i1 %cmp2.9, label %for.cond.8.cleanup_crit_edge, label %for.cond.9

for.cond.8.cleanup_crit_edge:                     ; preds = %for.cond.8
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.cond.9:                                       ; preds = %for.cond.8
  call void @__sanitizer_cov_trace_pc() #17
  %10 = load i32, ptr getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 10), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %fourcc)
  %cmp2.10 = icmp eq i32 %10, %fourcc
  %spec.select = select i1 %cmp2.10, ptr getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 10), ptr null
  br label %cleanup

cleanup:                                          ; preds = %for.cond.9, %for.cond.8.cleanup_crit_edge, %for.cond.7.cleanup_crit_edge, %for.cond.6.cleanup_crit_edge, %for.cond.5.cleanup_crit_edge, %for.cond.4.cleanup_crit_edge, %for.cond.3.cleanup_crit_edge, %for.cond.2.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ @vpe_formats, %entry.cleanup_crit_edge ], [ getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 1), %for.cond.cleanup_crit_edge ], [ getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 2), %for.cond.1.cleanup_crit_edge ], [ getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 3), %for.cond.2.cleanup_crit_edge ], [ getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 4), %for.cond.3.cleanup_crit_edge ], [ getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 5), %for.cond.4.cleanup_crit_edge ], [ getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 6), %for.cond.5.cleanup_crit_edge ], [ getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 7), %for.cond.6.cleanup_crit_edge ], [ getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 8), %for.cond.7.cleanup_crit_edge ], [ getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 9), %for.cond.8.cleanup_crit_edge ], [ %spec.select, %for.cond.9 ]
  ret ptr %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_src_registers(ptr nocapture noundef %ctx) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr inbounds %struct.vpe_ctx, ptr %ctx, i32 0, i32 8, i32 0, i32 1
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %1, 28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool.not.i, ptr @us_coeffs, ptr getelementptr inbounds ([2 x %struct.vpe_us_coeffs], ptr @us_coeffs, i32 0, i32 1, i32 0)
  %add.ptr5.i = select i1 %tobool.not.i, ptr getelementptr inbounds ([2 x %struct.vpe_us_coeffs], ptr @us_coeffs, i32 0, i32 1, i32 0), ptr getelementptr inbounds ([2 x %struct.vpe_us_coeffs], ptr @us_coeffs, i32 1, i32 0, i32 0)
  %cmp26.i = icmp ult ptr %spec.select.i, %add.ptr5.i
  br i1 %cmp26.i, label %while.body.preheader.i, label %entry.set_us_coefficients.exit_crit_edge

entry.set_us_coefficients.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %set_us_coefficients.exit

while.body.preheader.i:                           ; preds = %entry
  %mmr_adb1.i = getelementptr inbounds %struct.vpe_ctx, ptr %ctx, i32 0, i32 14
  %2 = ptrtoint ptr %mmr_adb1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmr_adb1.i, align 4
  %us3_regs.i = getelementptr inbounds %struct.vpe_mmr_adb, ptr %3, i32 0, i32 8
  %us2_regs.i = getelementptr inbounds %struct.vpe_mmr_adb, ptr %3, i32 0, i32 6
  %us1_regs.i = getelementptr inbounds %struct.vpe_mmr_adb, ptr %3, i32 0, i32 4
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.preheader.i
  %cp.130.i = phi ptr [ %incdec.ptr6.i, %while.body.i.while.body.i_crit_edge ], [ %spec.select.i, %while.body.preheader.i ]
  %us3_reg.029.i = phi ptr [ %incdec.ptr10.i, %while.body.i.while.body.i_crit_edge ], [ %us3_regs.i, %while.body.preheader.i ]
  %us2_reg.028.i = phi ptr [ %incdec.ptr8.i, %while.body.i.while.body.i_crit_edge ], [ %us2_regs.i, %while.body.preheader.i ]
  %us1_reg.027.i = phi ptr [ %incdec.ptr9.i, %while.body.i.while.body.i_crit_edge ], [ %us1_regs.i, %while.body.preheader.i ]
  %incdec.ptr.i = getelementptr i16, ptr %cp.130.i, i32 1
  %4 = ptrtoint ptr %cp.130.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %cp.130.i, align 2
  %6 = ptrtoint ptr %us1_reg.027.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %us1_reg.027.i, align 4
  %and.i.i = and i32 %7, 262143
  %8 = and i16 %5, 16383
  %and1.i.i = zext i16 %8 to i32
  %shl2.i.i = shl nuw i32 %and1.i.i, 18
  %or.i.i = or i32 %shl2.i.i, %and.i.i
  store i32 %or.i.i, ptr %us1_reg.027.i, align 4
  %incdec.ptr6.i = getelementptr i16, ptr %cp.130.i, i32 2
  %9 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %incdec.ptr.i, align 2
  %and.i22.i = and i32 %or.i.i, -65533
  %11 = shl i16 %10, 2
  %shl2.i24.i = zext i16 %11 to i32
  %or.i25.i = or i32 %and.i22.i, %shl2.i24.i
  store i32 %or.i25.i, ptr %us1_reg.027.i, align 4
  %incdec.ptr8.i = getelementptr i32, ptr %us2_reg.028.i, i32 1
  %12 = ptrtoint ptr %us2_reg.028.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or.i25.i, ptr %us2_reg.028.i, align 4
  %incdec.ptr9.i = getelementptr i32, ptr %us1_reg.027.i, i32 1
  %incdec.ptr10.i = getelementptr i32, ptr %us3_reg.029.i, i32 1
  %13 = ptrtoint ptr %us3_reg.029.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or.i25.i, ptr %us3_reg.029.i, align 4
  %cmp.i = icmp ult ptr %incdec.ptr6.i, %add.ptr5.i
  br i1 %cmp.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.set_us_coefficients.exit_crit_edge

while.body.i.set_us_coefficients.exit_crit_edge:  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %set_us_coefficients.exit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i

set_us_coefficients.exit:                         ; preds = %while.body.i.set_us_coefficients.exit_crit_edge, %entry.set_us_coefficients.exit_crit_edge
  %load_mmrs.i = getelementptr inbounds %struct.vpe_ctx, ptr %ctx, i32 0, i32 19
  %14 = ptrtoint ptr %load_mmrs.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %load_mmrs.i, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_dst_registers(ptr nocapture noundef %ctx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %mmr_adb1 = getelementptr inbounds %struct.vpe_ctx, ptr %ctx, i32 0, i32 14
  %0 = ptrtoint ptr %mmr_adb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmr_adb1, align 4
  %fmt2 = getelementptr %struct.vpe_ctx, ptr %ctx, i32 0, i32 8, i32 1, i32 3
  %2 = ptrtoint ptr %fmt2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fmt2, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %call = tail call ptr @v4l2_format_info(i32 noundef %5) #15
  %tobool.not.i = icmp eq ptr %call, null
  br i1 %tobool.not.i, label %entry.if.else_crit_edge, label %v4l2_is_format_rgb.exit

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

v4l2_is_format_rgb.exit:                          ; preds = %entry
  %pixel_enc.i = getelementptr inbounds %struct.v4l2_format_info, ptr %call, i32 0, i32 1
  %6 = ptrtoint ptr %pixel_enc.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pixel_enc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %7)
  %cmp.i = icmp eq i8 %7, 2
  br i1 %cmp.i, label %if.then, label %v4l2_is_format_rgb.exit.if.else_crit_edge

v4l2_is_format_rgb.exit.if.else_crit_edge:        ; preds = %v4l2_is_format_rgb.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

if.then:                                          ; preds = %v4l2_is_format_rgb.exit
  call void @__sanitizer_cov_trace_pc() #17
  %dev = getelementptr inbounds %struct.vpe_ctx, ptr %ctx, i32 0, i32 1
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %vpdma = getelementptr inbounds %struct.vpe_dev, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %vpdma to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vpdma, align 8
  %vpdma_fmt = getelementptr inbounds %struct.vpe_fmt, ptr %3, i32 0, i32 3
  %12 = ptrtoint ptr %vpdma_fmt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vpdma_fmt, align 4
  tail call void @vpdma_set_bg_color(ptr noundef %11, ptr noundef %13, i32 noundef 255) #15
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr = load i32, ptr %3, align 4
  br label %if.end8

if.else:                                          ; preds = %v4l2_is_format_rgb.exit.if.else_crit_edge, %entry.if.else_crit_edge
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 909203022, i32 %16)
  %cmp = icmp eq i32 %16, 909203022
  %spec.select = select i1 %cmp, i32 264707, i32 2563
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then
  %17 = phi i32 [ %16, %if.else ], [ %.pr, %if.then ]
  %val.0 = phi i32 [ %spec.select, %if.else ], [ 2819, %if.then ]
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.139)
  switch i32 %17, label %if.then14 [
    i32 842094158, label %if.end8.if.end16_crit_edge
    i32 825382478, label %if.end8.if.end16_crit_edge29
  ]

if.end8.if.end16_crit_edge29:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16

if.end8.if.end16_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16

if.then14:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  %or15 = or i32 %val.0, 65536
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end8.if.end16_crit_edge, %if.end8.if.end16_crit_edge29
  %val.1 = phi i32 [ %or15, %if.then14 ], [ %val.0, %if.end8.if.end16_crit_edge ], [ %val.0, %if.end8.if.end16_crit_edge29 ]
  %out_fmt_reg = getelementptr inbounds %struct.vpe_mmr_adb, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %out_fmt_reg to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %val.1, ptr %out_fmt_reg, align 4
  %load_mmrs = getelementptr inbounds %struct.vpe_ctx, ptr %ctx, i32 0, i32 19
  %20 = ptrtoint ptr %load_mmrs to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %load_mmrs, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @set_srcdst_params(ptr noundef %ctx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %q_data = getelementptr inbounds %struct.vpe_ctx, ptr %ctx, i32 0, i32 8
  %arrayidx2 = getelementptr %struct.vpe_ctx, ptr %ctx, i32 0, i32 8, i32 1
  %mmr_adb3 = getelementptr inbounds %struct.vpe_ctx, ptr %ctx, i32 0, i32 14
  %0 = ptrtoint ptr %mmr_adb3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmr_adb3, align 4
  %width = getelementptr inbounds %struct.vpe_ctx, ptr %ctx, i32 0, i32 8, i32 0, i32 2, i32 2
  %2 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %width, align 4
  %height = getelementptr inbounds %struct.vpe_ctx, ptr %ctx, i32 0, i32 8, i32 0, i32 2, i32 3
  %4 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %height, align 4
  %width6 = getelementptr %struct.vpe_ctx, ptr %ctx, i32 0, i32 8, i32 1, i32 2, i32 2
  %6 = ptrtoint ptr %width6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %width6, align 4
  %height8 = getelementptr %struct.vpe_ctx, ptr %ctx, i32 0, i32 8, i32 1, i32 2, i32 3
  %8 = ptrtoint ptr %height8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %height8, align 4
  %sequence = getelementptr inbounds %struct.vpe_ctx, ptr %ctx, i32 0, i32 4
  %10 = ptrtoint ptr %sequence to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %sequence, align 4
  %field = getelementptr inbounds %struct.vpe_ctx, ptr %ctx, i32 0, i32 3
  %11 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %field, align 4
  %fmt = getelementptr inbounds %struct.vpe_ctx, ptr %ctx, i32 0, i32 8, i32 0, i32 0, i32 1
  %flags = getelementptr inbounds %struct.vpe_ctx, ptr %ctx, i32 0, i32 8, i32 0, i32 1
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 4
  %and = and i32 %13, 28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %flags9 = getelementptr %struct.vpe_ctx, ptr %ctx, i32 0, i32 8, i32 1, i32 1
  %14 = ptrtoint ptr %flags9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags9, align 4
  %and10 = and i32 %15, 28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %16 = ptrtoint ptr %fmt to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %fmt, align 1
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct.vpdma_data_format], ptr @vpdma_misc_fmts, i32 0, i32 0, i32 2) to i32))
  %18 = load i8, ptr getelementptr inbounds ([0 x %struct.vpdma_data_format], ptr @vpdma_misc_fmts, i32 0, i32 0, i32 2), align 4
  %conv = zext i8 %18 to i32
  %mul = mul i32 %17, %conv
  %shr = lshr i32 %mul, 3
  %add = add nuw nsw i32 %shr, 15
  %and13 = and i32 %add, 1073741808
  %height14 = getelementptr inbounds %struct.vpe_ctx, ptr %ctx, i32 0, i32 8, i32 0, i32 0, i32 1, i32 0, i32 1
  %19 = ptrtoint ptr %height14 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %height14, align 1
  %mul15 = mul i32 %and13, %20
  %deinterlacing = getelementptr inbounds %struct.vpe_ctx, ptr %ctx, i32 0, i32 18
  %21 = ptrtoint ptr %deinterlacing to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %deinterlacing, align 4
  %shl = shl i32 %5, 1
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %deinterlacing16 = getelementptr inbounds %struct.vpe_ctx, ptr %ctx, i32 0, i32 18
  %22 = ptrtoint ptr %deinterlacing16 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %deinterlacing16, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %src_h.0 = phi i32 [ %5, %if.else ], [ %shl, %if.then ]
  %mv_buf_size.0 = phi i32 [ 0, %if.else ], [ %mul15, %if.then ]
  %arrayidx.i = getelementptr %struct.vpe_ctx, ptr %ctx, i32 0, i32 9, i32 2
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i, align 4
  %cmp.i = icmp eq ptr %24, null
  br i1 %cmp.i, label %if.end.free_vbs.exit_crit_edge, label %do.body2.i

if.end.free_vbs.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %free_vbs.exit

do.body2.i:                                       ; preds = %if.end
  %dev1.i = getelementptr inbounds %struct.vpe_ctx, ptr %ctx, i32 0, i32 1
  %25 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev1.i, align 4
  %lock.i = getelementptr inbounds %struct.vpe_dev, ptr %26, i32 0, i32 6
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #15
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %28, null
  br i1 %tobool.not.i, label %do.body2.i.if.end29.i_crit_edge, label %if.then9.i

do.body2.i.if.end29.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end29.i

if.then9.i:                                       ; preds = %do.body2.i
  tail call void @vb2_buffer_done(ptr noundef nonnull %28, i32 noundef 5) #15
  %arrayidx13.i = getelementptr %struct.vpe_ctx, ptr %ctx, i32 0, i32 9, i32 1
  %29 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx13.i, align 4
  %tobool14.not.i = icmp eq ptr %30, null
  br i1 %tobool14.not.i, label %if.then9.i.if.end24.i_crit_edge, label %land.lhs.true.i

if.then9.i.if.end24.i_crit_edge:                  ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end24.i

land.lhs.true.i:                                  ; preds = %if.then9.i
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.i, align 4
  %cmp19.not.i = icmp eq ptr %30, %32
  br i1 %cmp19.not.i, label %land.lhs.true.i.if.end24.i_crit_edge, label %if.then21.i

land.lhs.true.i.if.end24.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end24.i

if.then21.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @vb2_buffer_done(ptr noundef nonnull %30, i32 noundef 5) #15
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then21.i, %land.lhs.true.i.if.end24.i_crit_edge, %if.then9.i.if.end24.i_crit_edge
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %arrayidx.i, align 4
  %34 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %arrayidx13.i, align 4
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.end24.i, %do.body2.i.if.end29.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call4.i) #15
  br label %free_vbs.exit

free_vbs.exit:                                    ; preds = %if.end29.i, %if.end.free_vbs.exit_crit_edge
  %src_vbs = getelementptr inbounds %struct.vpe_ctx, ptr %ctx, i32 0, i32 9
  %35 = ptrtoint ptr %src_vbs to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %src_vbs, align 4
  %arrayidx19 = getelementptr %struct.vpe_ctx, ptr %ctx, i32 0, i32 9, i32 1
  %36 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %arrayidx19, align 4
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %arrayidx.i, align 4
  %call = tail call fastcc i32 @realloc_mv_buffers(ptr noundef %ctx, i32 noundef %mv_buf_size.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool22.not = icmp eq i32 %call, 0
  br i1 %tobool22.not, label %if.end24, label %free_vbs.exit.cleanup_crit_edge

free_vbs.exit.cleanup_crit_edge:                  ; preds = %free_vbs.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end24:                                         ; preds = %free_vbs.exit
  %fmt1.i = getelementptr inbounds %struct.vpe_ctx, ptr %ctx, i32 0, i32 8, i32 0, i32 3
  %38 = ptrtoint ptr %fmt1.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %fmt1.i, align 4
  %40 = ptrtoint ptr %mmr_adb3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mmr_adb3, align 4
  %42 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 842094158, i32 %43)
  %switch.selectcmp.case1.i = icmp ne i32 %43, 842094158
  call void @__sanitizer_cov_trace_const_cmp4(i32 825382478, i32 %43)
  %switch.selectcmp.case2.i = icmp ne i32 %43, 825382478
  %not.switch.selectcmp.i = and i1 %switch.selectcmp.case1.i, %switch.selectcmp.case2.i
  %us3_regs.i = getelementptr inbounds %struct.vpe_mmr_adb, ptr %41, i32 0, i32 8
  %us2_regs.i = getelementptr inbounds %struct.vpe_mmr_adb, ptr %41, i32 0, i32 6
  %us1_regs.i = getelementptr inbounds %struct.vpe_mmr_adb, ptr %41, i32 0, i32 4
  %44 = ptrtoint ptr %us1_regs.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %us1_regs.i, align 4
  %and.i.i = and i32 %45, -196609
  %shl2.i.i = select i1 %not.switch.selectcmp.i, i32 65536, i32 0
  %or.i.i = or i32 %shl2.i.i, %and.i.i
  store i32 %or.i.i, ptr %us1_regs.i, align 4
  %46 = ptrtoint ptr %us2_regs.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %us2_regs.i, align 4
  %and.i15.i = and i32 %47, -196609
  %or.i17.i = or i32 %and.i15.i, %shl2.i.i
  store i32 %or.i17.i, ptr %us2_regs.i, align 4
  %48 = ptrtoint ptr %us3_regs.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %us3_regs.i, align 4
  %and.i18.i = and i32 %49, -196609
  %or.i20.i = or i32 %and.i18.i, %shl2.i.i
  store i32 %or.i20.i, ptr %us3_regs.i, align 4
  %load_mmrs.i = getelementptr inbounds %struct.vpe_ctx, ptr %ctx, i32 0, i32 19
  %50 = ptrtoint ptr %mmr_adb3 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mmr_adb3, align 4
  %52 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %height, align 4
  %54 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %width, align 4
  %56 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %flags, align 4
  %and.i = and i32 %57, 28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i83 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i83, label %if.end24.set_dei_regs.exit_crit_edge, label %lor.lhs.false.i

if.end24.set_dei_regs.exit_crit_edge:             ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #17
  br label %set_dei_regs.exit

lor.lhs.false.i:                                  ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #17
  %deinterlacing.i = getelementptr inbounds %struct.vpe_ctx, ptr %ctx, i32 0, i32 18
  %58 = ptrtoint ptr %deinterlacing.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %deinterlacing.i, align 4, !range !389
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool4.not.i = icmp eq i8 %59, 0
  %spec.select.i = select i1 %tobool4.not.i, i32 536870912, i32 0
  %not.tobool4.not.i = xor i1 %tobool4.not.i, true
  %mul19.i = zext i1 %not.tobool4.not.i to i32
  %spec.select23.i = shl i32 %53, %mul19.i
  br label %set_dei_regs.exit

set_dei_regs.exit:                                ; preds = %lor.lhs.false.i, %if.end24.set_dei_regs.exit_crit_edge
  %val.020.i = phi i32 [ 536870912, %if.end24.set_dei_regs.exit_crit_edge ], [ %spec.select.i, %lor.lhs.false.i ]
  %60 = phi i32 [ %53, %if.end24.set_dei_regs.exit_crit_edge ], [ %spec.select23.i, %lor.lhs.false.i ]
  %dei_regs.i = getelementptr inbounds %struct.vpe_mmr_adb, ptr %51, i32 0, i32 10
  %shl.i = shl i32 %60, 16
  %or.i = or i32 %55, %val.020.i
  %or7.i = or i32 %or.i, %shl.i
  %or8.i = or i32 %or7.i, 1073741824
  %61 = ptrtoint ptr %dei_regs.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %or8.i, ptr %dei_regs.i, align 4
  %62 = ptrtoint ptr %load_mmrs.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 1, ptr %load_mmrs.i, align 1
  %dev = getelementptr inbounds %struct.vpe_ctx, ptr %ctx, i32 0, i32 1
  %63 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev, align 4
  %csc = getelementptr inbounds %struct.vpe_dev, ptr %64, i32 0, i32 13
  %65 = ptrtoint ptr %csc to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %csc, align 8
  %csc_regs = getelementptr inbounds %struct.vpe_mmr_adb, ptr %1, i32 0, i32 21
  tail call void @csc_set_coeff(ptr noundef %66, ptr noundef %csc_regs, ptr noundef %q_data, ptr noundef %arrayidx2) #15
  %67 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev, align 4
  %sc = getelementptr inbounds %struct.vpe_dev, ptr %68, i32 0, i32 12
  %69 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %sc, align 4
  %sc_coeff_h = getelementptr inbounds %struct.vpe_ctx, ptr %ctx, i32 0, i32 15
  %71 = ptrtoint ptr %sc_coeff_h to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %sc_coeff_h, align 4
  tail call void @sc_set_hs_coeffs(ptr noundef %70, ptr noundef %72, i32 noundef %3, i32 noundef %7) #15
  %73 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev, align 4
  %sc31 = getelementptr inbounds %struct.vpe_dev, ptr %74, i32 0, i32 12
  %75 = ptrtoint ptr %sc31 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %sc31, align 4
  %sc_coeff_v = getelementptr inbounds %struct.vpe_ctx, ptr %ctx, i32 0, i32 16
  %77 = ptrtoint ptr %sc_coeff_v to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %sc_coeff_v, align 4
  tail call void @sc_set_vs_coeffs(ptr noundef %76, ptr noundef %78, i32 noundef %src_h.0, i32 noundef %9) #15
  %79 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev, align 4
  %sc34 = getelementptr inbounds %struct.vpe_dev, ptr %80, i32 0, i32 12
  %81 = ptrtoint ptr %sc34 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %sc34, align 4
  %sc_regs0 = getelementptr inbounds %struct.vpe_mmr_adb, ptr %1, i32 0, i32 12
  %sc_regs8 = getelementptr inbounds %struct.vpe_mmr_adb, ptr %1, i32 0, i32 15
  %sc_regs17 = getelementptr inbounds %struct.vpe_mmr_adb, ptr %1, i32 0, i32 18
  tail call void @sc_config_scaler(ptr noundef %82, ptr noundef %sc_regs0, ptr noundef %sc_regs8, ptr noundef %sc_regs17, i32 noundef %3, i32 noundef %src_h.0, i32 noundef %7, i32 noundef %9) #15
  br label %cleanup

cleanup:                                          ; preds = %set_dei_regs.exit, %free_vbs.exit.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_ctx_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @queue_init(ptr noundef %priv, ptr noundef %src_vq, ptr noundef %dst_vq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.vpe_ctx, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %2 = getelementptr inbounds i8, ptr %src_vq, i32 8
  %3 = call ptr @memset(ptr %2, i32 0, i32 504)
  %4 = ptrtoint ptr %src_vq to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 10, ptr %src_vq, align 4
  %io_modes = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 1
  %5 = ptrtoint ptr %io_modes to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 17, ptr %io_modes, align 4
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 10
  %6 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %priv, ptr %drv_priv, align 4
  %buf_struct_size = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 12
  %7 = ptrtoint ptr %buf_struct_size to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 744, ptr %buf_struct_size, align 4
  %ops = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 7
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @vpe_qops, ptr %ops, align 4
  %mem_ops = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 8
  %9 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @vb2_dma_contig_memops, ptr %mem_ops, align 4
  %timestamp_flags = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 13
  %10 = ptrtoint ptr %timestamp_flags to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 16384, ptr %timestamp_flags, align 4
  %dev_mutex = getelementptr inbounds %struct.vpe_dev, ptr %1, i32 0, i32 5
  %lock = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 5
  %11 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %dev_mutex, ptr %lock, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  %dev3 = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 2
  %14 = ptrtoint ptr %dev3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %dev3, align 4
  %call = tail call i32 @vb2_queue_init(ptr noundef %src_vq) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %15 = getelementptr inbounds i8, ptr %dst_vq, i32 8
  %16 = call ptr @memset(ptr %15, i32 0, i32 504)
  %17 = ptrtoint ptr %dst_vq to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 9, ptr %dst_vq, align 4
  %io_modes5 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 1
  %18 = ptrtoint ptr %io_modes5 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 17, ptr %io_modes5, align 4
  %drv_priv6 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 10
  %19 = ptrtoint ptr %drv_priv6 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %priv, ptr %drv_priv6, align 4
  %buf_struct_size7 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 12
  %20 = ptrtoint ptr %buf_struct_size7 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 744, ptr %buf_struct_size7, align 4
  %ops8 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 7
  %21 = ptrtoint ptr %ops8 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @vpe_qops, ptr %ops8, align 4
  %mem_ops9 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 8
  %22 = ptrtoint ptr %mem_ops9 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @vb2_dma_contig_memops, ptr %mem_ops9, align 4
  %timestamp_flags10 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 13
  %23 = ptrtoint ptr %timestamp_flags10 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 16384, ptr %timestamp_flags10, align 4
  %lock12 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 5
  %24 = ptrtoint ptr %lock12 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %dev_mutex, ptr %lock12, align 4
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 8
  %dev15 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 2
  %27 = ptrtoint ptr %dev15 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %dev15, align 4
  %call16 = tail call i32 @vb2_queue_init(ptr noundef %dst_vq) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vpdma_free_desc_buf(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vpdma_free_desc_list(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpe_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9967952, i32 %3)
  %cond = icmp eq i32 %3, 9967952
  br i1 %cond, label %sw.bb, label %do.end

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %4 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val, align 4
  %bufs_per_job = getelementptr i8, ptr %1, i32 196
  %6 = ptrtoint ptr %bufs_per_job to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %bufs_per_job, align 4
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %dev = getelementptr i8, ptr %1, i32 -4
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.50) #18
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.bb
  %retval.0 = phi i32 [ 0, %sw.bb ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vpdma_set_bg_color(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @realloc_mv_buffers(ptr noundef %ctx, i32 noundef %size) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.vpe_ctx, ptr %ctx, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %mv_buf_size = getelementptr inbounds %struct.vpe_ctx, ptr %ctx, i32 0, i32 13
  %4 = ptrtoint ptr %mv_buf_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mv_buf_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %size)
  %cmp = icmp eq i32 %5, %size
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %mv_buf = getelementptr inbounds %struct.vpe_ctx, ptr %ctx, i32 0, i32 12
  %6 = ptrtoint ptr %mv_buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mv_buf, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.end.if.end8_crit_edge, label %if.then3

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %mv_buf_dma = getelementptr inbounds %struct.vpe_ctx, ptr %ctx, i32 0, i32 11
  %8 = ptrtoint ptr %mv_buf_dma to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mv_buf_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %3, i32 noundef %5, ptr noundef nonnull %7, i32 noundef %9, i32 noundef 0) #15
  br label %if.end8

if.end8:                                          ; preds = %if.then3, %if.end.if.end8_crit_edge
  %arrayidx10 = getelementptr %struct.vpe_ctx, ptr %ctx, i32 0, i32 12, i32 1
  %10 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx10, align 4
  %tobool11.not = icmp eq ptr %11, null
  br i1 %tobool11.not, label %if.end8.if.end18_crit_edge, label %if.then12

if.end8.if.end18_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  %12 = ptrtoint ptr %mv_buf_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mv_buf_size, align 4
  %arrayidx17 = getelementptr %struct.vpe_ctx, ptr %ctx, i32 0, i32 11, i32 1
  %14 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx17, align 4
  tail call void @dma_free_attrs(ptr noundef %3, i32 noundef %13, ptr noundef nonnull %11, i32 noundef %15, i32 noundef 0) #15
  br label %if.end18

if.end18:                                         ; preds = %if.then12, %if.end8.if.end18_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp19 = icmp eq i32 %size, 0
  br i1 %cmp19, label %if.end18.cleanup_crit_edge, label %if.end21

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end21:                                         ; preds = %if.end18
  %mv_buf_dma22 = getelementptr inbounds %struct.vpe_ctx, ptr %ctx, i32 0, i32 11
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %3, i32 noundef %size, ptr noundef %mv_buf_dma22, i32 noundef 3264, i32 noundef 0) #15
  %16 = ptrtoint ptr %mv_buf to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i, ptr %mv_buf, align 4
  %tobool28.not = icmp eq ptr %call.i, null
  br i1 %tobool28.not, label %do.end, label %if.end33

do.end:                                           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #17
  %17 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev1, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.52) #18
  br label %cleanup

if.end33:                                         ; preds = %if.end21
  %arrayidx35 = getelementptr %struct.vpe_ctx, ptr %ctx, i32 0, i32 11, i32 1
  %call.i87 = tail call ptr @dma_alloc_attrs(ptr noundef %3, i32 noundef %size, ptr noundef %arrayidx35, i32 noundef 3264, i32 noundef 0) #15
  %21 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i87, ptr %arrayidx10, align 4
  %tobool41.not = icmp eq ptr %call.i87, null
  br i1 %tobool41.not, label %do.end45, label %if.end53

do.end45:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #17
  %22 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev1, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.52) #18
  %26 = ptrtoint ptr %mv_buf to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mv_buf, align 4
  %28 = ptrtoint ptr %mv_buf_dma22 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mv_buf_dma22, align 4
  tail call void @dma_free_attrs(ptr noundef %3, i32 noundef %size, ptr noundef %27, i32 noundef %29, i32 noundef 0) #15
  br label %cleanup

if.end53:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #17
  %30 = ptrtoint ptr %mv_buf_size to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %size, ptr %mv_buf_size, align 4
  %src_mv_buf_selector = getelementptr inbounds %struct.vpe_ctx, ptr %ctx, i32 0, i32 20
  %31 = ptrtoint ptr %src_mv_buf_selector to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %src_mv_buf_selector, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end53, %do.end45, %do.end, %if.end18.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end53 ], [ -12, %do.end45 ], [ -12, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @csc_set_coeff(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sc_set_hs_coeffs(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sc_set_vs_coeffs(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sc_config_scaler(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpe_queue_setup(ptr nocapture noundef readonly %vq, ptr nocapture noundef readonly %nbuffers, ptr nocapture noundef %nplanes, ptr nocapture noundef %sizes, ptr nocapture noundef readnone %alloc_devs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %2 = ptrtoint ptr %vq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vq, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.140)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 10, label %entry.sw.bb.i_crit_edge
    i32 2, label %entry.sw.bb.i_crit_edge64
    i32 9, label %entry.sw.bb1.i_crit_edge
    i32 1, label %entry.sw.bb1.i_crit_edge65
  ]

entry.sw.bb1.i_crit_edge65:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb1.i

entry.sw.bb1.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb1.i

entry.sw.bb.i_crit_edge64:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i

entry.sw.bb.i_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb.i:                                          ; preds = %entry.sw.bb.i_crit_edge, %entry.sw.bb.i_crit_edge64
  %q_data.i = getelementptr inbounds %struct.vpe_ctx, ptr %1, i32 0, i32 8
  br label %get_q_data.exit

sw.bb1.i:                                         ; preds = %entry.sw.bb1.i_crit_edge, %entry.sw.bb1.i_crit_edge65
  %arrayidx3.i = getelementptr %struct.vpe_ctx, ptr %1, i32 0, i32 8, i32 1
  br label %get_q_data.exit

get_q_data.exit:                                  ; preds = %sw.bb1.i, %sw.bb.i
  %retval.0.i57 = phi ptr [ %arrayidx3.i, %sw.bb1.i ], [ %q_data.i, %sw.bb.i ]
  %tobool.not = icmp eq ptr %retval.0.i57, null
  br i1 %tobool.not, label %get_q_data.exit.cleanup_crit_edge, label %if.end

get_q_data.exit.cleanup_crit_edge:                ; preds = %get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %get_q_data.exit
  %num_planes = getelementptr inbounds %struct.v4l2_format, ptr %retval.0.i57, i32 0, i32 1, i32 0, i32 6
  %5 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %num_planes, align 1
  %conv = zext i8 %6 to i32
  %7 = ptrtoint ptr %nplanes to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv, ptr %nplanes, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp62.not = icmp eq i8 %6, 0
  br i1 %cmp62.not, label %if.end.do.body_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.063 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.v4l2_format, ptr %retval.0.i57, i32 0, i32 1, i32 0, i32 5, i32 %i.063
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %arrayidx, align 1
  %arrayidx3 = getelementptr i32, ptr %sizes, i32 %i.063
  %10 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %arrayidx3, align 4
  %inc = add nuw i32 %i.063, 1
  %11 = ptrtoint ptr %nplanes to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nplanes, align 4
  %cmp = icmp ult i32 %inc, %12
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.do.body_crit_edge

for.body.do.body_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

do.body:                                          ; preds = %for.body.do.body_crit_edge, %if.end.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vpe_queue_setup.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vpe_queue_setup, %do.end)) #15
          to label %if.then9 [label %do.end], !srcloc !386

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %dev = getelementptr inbounds %struct.vpe_ctx, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 8
  %17 = ptrtoint ptr %nbuffers to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nbuffers, align 4
  %19 = ptrtoint ptr %sizes to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sizes, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vpe_queue_setup.__UNIQUE_ID_ddebug362, ptr noundef %16, ptr noundef nonnull @.str.57, i32 noundef %18, i32 noundef %20) #15
  br label %do.end

do.end:                                           ; preds = %if.then9, %do.body
  %21 = ptrtoint ptr %nplanes to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nplanes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %cmp13 = icmp eq i32 %22, 2
  br i1 %cmp13, label %do.body16, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body16:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vpe_queue_setup.__UNIQUE_ID_ddebug363, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vpe_queue_setup, %cleanup)) #15
          to label %if.then30 [label %cleanup], !srcloc !386

if.then30:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #17
  %dev31 = getelementptr inbounds %struct.vpe_ctx, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev31, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 8
  %arrayidx34 = getelementptr i32, ptr %sizes, i32 1
  %27 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx34, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vpe_queue_setup.__UNIQUE_ID_ddebug363, ptr noundef %26, ptr noundef nonnull @.str.58, i32 noundef %28) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then30, %do.body16, %do.end.cleanup_crit_edge, %get_q_data.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %get_q_data.exit.cleanup_crit_edge ], [ 0, %if.then30 ], [ 0, %do.end.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %do.body16 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpe_buf_prepare(ptr nocapture noundef %vb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vpe_buf_prepare.__UNIQUE_ID_ddebug364, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vpe_buf_prepare, %do.end)) #15
          to label %if.then [label %do.end], !srcloc !386

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %dev = getelementptr inbounds %struct.vpe_ctx, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %8 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vb, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vpe_buf_prepare.__UNIQUE_ID_ddebug364, ptr noundef %7, ptr noundef nonnull @.str.60, i32 noundef %11) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %12 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vb, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.141)
  switch i32 %15, label %do.end.cleanup_crit_edge [
    i32 10, label %do.end.sw.bb.i_crit_edge
    i32 2, label %do.end.sw.bb.i_crit_edge133
    i32 9, label %do.end.sw.bb1.i_crit_edge
    i32 1, label %do.end.sw.bb1.i_crit_edge134
  ]

do.end.sw.bb1.i_crit_edge134:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb1.i

do.end.sw.bb1.i_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb1.i

do.end.sw.bb.i_crit_edge133:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i

do.end.sw.bb.i_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb.i:                                          ; preds = %do.end.sw.bb.i_crit_edge, %do.end.sw.bb.i_crit_edge133
  %q_data.i = getelementptr inbounds %struct.vpe_ctx, ptr %3, i32 0, i32 8
  br label %get_q_data.exit

sw.bb1.i:                                         ; preds = %do.end.sw.bb1.i_crit_edge, %do.end.sw.bb1.i_crit_edge134
  %arrayidx3.i = getelementptr %struct.vpe_ctx, ptr %3, i32 0, i32 8, i32 1
  br label %get_q_data.exit

get_q_data.exit:                                  ; preds = %sw.bb1.i, %sw.bb.i
  %retval.0.i94 = phi ptr [ %arrayidx3.i, %sw.bb1.i ], [ %q_data.i, %sw.bb.i ]
  %tobool11.not = icmp eq ptr %retval.0.i94, null
  br i1 %tobool11.not, label %get_q_data.exit.cleanup_crit_edge, label %if.end13

get_q_data.exit.cleanup_crit_edge:                ; preds = %get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end13:                                         ; preds = %get_q_data.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %15)
  %cmp = icmp eq i32 %15, 10
  br i1 %cmp, label %if.then16, label %if.end13.if.end32_crit_edge

if.end13.if.end32_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32

if.then16:                                        ; preds = %if.end13
  %flags = getelementptr inbounds %struct.vpe_q_data, ptr %retval.0.i94, i32 0, i32 1
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags, align 4
  %and = and i32 %18, 28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool17.not = icmp eq i32 %and, 0
  %field = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %vb, i32 0, i32 2
  br i1 %tobool17.not, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #17
  %19 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %field, align 4
  br label %if.end32

if.else:                                          ; preds = %if.then16
  %20 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %field, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.142)
  switch i32 %21, label %if.else.cleanup_crit_edge [
    i32 2, label %if.else.if.end32_crit_edge
    i32 3, label %if.else.if.end32_crit_edge135
    i32 5, label %if.else.if.end32_crit_edge136
    i32 6, label %if.else.if.end32_crit_edge137
  ]

if.else.if.end32_crit_edge137:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32

if.else.if.end32_crit_edge136:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32

if.else.if.end32_crit_edge135:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32

if.else.if.end32_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end32:                                         ; preds = %if.else.if.end32_crit_edge, %if.else.if.end32_crit_edge135, %if.else.if.end32_crit_edge136, %if.else.if.end32_crit_edge137, %if.then18, %if.end13.if.end32_crit_edge
  %num_planes = getelementptr inbounds %struct.v4l2_format, ptr %retval.0.i94, i32 0, i32 1, i32 0, i32 6
  %23 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %num_planes, align 1
  %conv = zext i8 %24 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp33118.not = icmp eq i8 %24, 0
  br i1 %cmp33118.not, label %if.end32.cleanup_crit_edge, label %for.body.lr.ph

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end32
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %25 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_planes.i, align 8
  br label %for.body

for.cond50.preheader:                             ; preds = %for.inc
  %27 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %27)
  %.pr = load i8, ptr %num_planes, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %cmp53122.not = icmp eq i8 %.pr, 0
  br i1 %cmp53122.not, label %for.cond50.preheader.cleanup_crit_edge, label %for.body55.lr.ph

for.cond50.preheader.cleanup_crit_edge:           ; preds = %for.cond50.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body55.lr.ph:                                 ; preds = %for.cond50.preheader
  %num_planes.i102 = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  br label %for.body55

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0119 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %i.0119)
  %cmp.i = icmp ugt i32 %26, %i.0119
  br i1 %cmp.i, label %vb2_plane_size.exit, label %vb2_plane_size.exit.thread

vb2_plane_size.exit:                              ; preds = %for.body
  %length.i = getelementptr %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 %i.0119, i32 4
  %28 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %length.i, align 8
  %arrayidx = getelementptr %struct.v4l2_format, ptr %retval.0.i94, i32 0, i32 1, i32 0, i32 5, i32 %i.0119
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp36 = icmp ult i32 %29, %31
  br i1 %cmp36, label %if.then.i99, label %vb2_plane_size.exit.for.inc_crit_edge

vb2_plane_size.exit.for.inc_crit_edge:            ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

vb2_plane_size.exit.thread:                       ; preds = %for.body
  %arrayidx110 = getelementptr %struct.v4l2_format, ptr %retval.0.i94, i32 0, i32 1, i32 0, i32 5, i32 %i.0119
  %32 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %arrayidx110, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp36111.not = icmp eq i32 %33, 0
  br i1 %cmp36111.not, label %vb2_plane_size.exit.thread.for.inc_crit_edge, label %vb2_plane_size.exit.thread.vb2_plane_size.exit101_crit_edge

vb2_plane_size.exit.thread.vb2_plane_size.exit101_crit_edge: ; preds = %vb2_plane_size.exit.thread
  call void @__sanitizer_cov_trace_pc() #17
  br label %vb2_plane_size.exit101

vb2_plane_size.exit.thread.for.inc_crit_edge:     ; preds = %vb2_plane_size.exit.thread
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then.i99:                                      ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #17
  %34 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %length.i, align 8
  br label %vb2_plane_size.exit101

vb2_plane_size.exit101:                           ; preds = %if.then.i99, %vb2_plane_size.exit.thread.vb2_plane_size.exit101_crit_edge
  %36 = phi i32 [ %31, %if.then.i99 ], [ %33, %vb2_plane_size.exit.thread.vb2_plane_size.exit101_crit_edge ]
  %retval.0.i100 = phi i32 [ %35, %if.then.i99 ], [ 0, %vb2_plane_size.exit.thread.vb2_plane_size.exit101_crit_edge ]
  %.in.in = getelementptr inbounds %struct.vpe_ctx, ptr %3, i32 0, i32 1
  %37 = ptrtoint ptr %.in.in to i32
  call void @__asan_load4_noabort(i32 %37)
  %.in = load ptr, ptr %.in.in, align 4
  %38 = ptrtoint ptr %.in to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %.in, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.61, i32 noundef %retval.0.i100, i32 noundef %36) #18
  br label %cleanup

for.inc:                                          ; preds = %vb2_plane_size.exit.thread.for.inc_crit_edge, %vb2_plane_size.exit.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0119, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.cond50.preheader, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.body55:                                       ; preds = %vb2_set_plane_payload.exit.for.body55_crit_edge, %for.body55.lr.ph
  %i.1123 = phi i32 [ 0, %for.body55.lr.ph ], [ %inc60, %vb2_set_plane_payload.exit.for.body55_crit_edge ]
  %40 = ptrtoint ptr %num_planes.i102 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num_planes.i102, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %i.1123)
  %cmp.i103 = icmp ugt i32 %41, %i.1123
  br i1 %cmp.i103, label %if.then.i105, label %for.body55.vb2_set_plane_payload.exit_crit_edge

for.body55.vb2_set_plane_payload.exit_crit_edge:  ; preds = %for.body55
  call void @__sanitizer_cov_trace_pc() #17
  br label %vb2_set_plane_payload.exit

if.then.i105:                                     ; preds = %for.body55
  %arrayidx57 = getelementptr %struct.v4l2_format, ptr %retval.0.i94, i32 0, i32 1, i32 0, i32 5, i32 %i.1123
  %42 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %43 = load i32, ptr %arrayidx57, align 1
  %length.i104 = getelementptr %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 %i.1123, i32 4
  %44 = ptrtoint ptr %length.i104 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %length.i104, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %43)
  %cmp1.i = icmp ult i32 %45, %43
  br i1 %cmp1.i, label %land.rhs.i, label %if.then.i105.if.end42.i_crit_edge

if.then.i105.if.end42.i_crit_edge:                ; preds = %if.then.i105
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end42.i

land.rhs.i:                                       ; preds = %if.then.i105
  %.b55.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b55.i, label %land.rhs.i.if.then38.i_crit_edge, label %if.then8.i, !prof !399

land.rhs.i.if.then38.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then38.i

if.then8.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.62, i32 noundef 1163, i32 noundef 9, ptr noundef null) #15
  br label %if.then38.i

if.then38.i:                                      ; preds = %if.then8.i, %land.rhs.i.if.then38.i_crit_edge
  %46 = ptrtoint ptr %length.i104 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %length.i104, align 8
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then38.i, %if.then.i105.if.end42.i_crit_edge
  %size.addr.0.i = phi i32 [ %47, %if.then38.i ], [ %43, %if.then.i105.if.end42.i_crit_edge ]
  %bytesused.i = getelementptr %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 %i.1123, i32 3
  %48 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %size.addr.0.i, ptr %bytesused.i, align 4
  br label %vb2_set_plane_payload.exit

vb2_set_plane_payload.exit:                       ; preds = %if.end42.i, %for.body55.vb2_set_plane_payload.exit_crit_edge
  %inc60 = add nuw nsw i32 %i.1123, 1
  %49 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %num_planes, align 1
  %conv52 = zext i8 %50 to i32
  %cmp53 = icmp ult i32 %inc60, %conv52
  br i1 %cmp53, label %vb2_set_plane_payload.exit.for.body55_crit_edge, label %vb2_set_plane_payload.exit.cleanup_crit_edge

vb2_set_plane_payload.exit.cleanup_crit_edge:     ; preds = %vb2_set_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

vb2_set_plane_payload.exit.for.body55_crit_edge:  ; preds = %vb2_set_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body55

cleanup:                                          ; preds = %vb2_set_plane_payload.exit.cleanup_crit_edge, %vb2_plane_size.exit101, %for.cond50.preheader.cleanup_crit_edge, %if.end32.cleanup_crit_edge, %if.else.cleanup_crit_edge, %get_q_data.exit.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %vb2_plane_size.exit101 ], [ -22, %get_q_data.exit.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ], [ -22, %do.end.cleanup_crit_edge ], [ 0, %for.cond50.preheader.cleanup_crit_edge ], [ 0, %if.end32.cleanup_crit_edge ], [ 0, %vb2_set_plane_payload.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpe_start_streaming(ptr nocapture noundef readonly %q, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %width.i = getelementptr inbounds %struct.vpe_ctx, ptr %1, i32 0, i32 8, i32 0, i32 2, i32 2
  %2 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %width.i, align 4
  %height.i = getelementptr inbounds %struct.vpe_ctx, ptr %1, i32 0, i32 8, i32 0, i32 2, i32 3
  %4 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %height.i, align 4
  %width5.i = getelementptr %struct.vpe_ctx, ptr %1, i32 0, i32 8, i32 1, i32 2, i32 2
  %6 = ptrtoint ptr %width5.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %width5.i, align 4
  %height7.i = getelementptr %struct.vpe_ctx, ptr %1, i32 0, i32 8, i32 1, i32 2, i32 3
  %8 = ptrtoint ptr %height7.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %height7.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %7)
  %cmp.i = icmp eq i32 %3, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %9)
  %cmp8.i = icmp eq i32 %5, %9
  %or.cond.i = select i1 %cmp.i, i1 %cmp8.i, i1 false
  br i1 %or.cond.i, label %entry.if.end_crit_edge, label %check_srcdst_sizes.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

check_srcdst_sizes.exit:                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %5)
  %cmp9.i = icmp ult i32 %5, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %3)
  %cmp11.i = icmp ult i32 %3, 2048
  %or.cond30.i = select i1 %cmp9.i, i1 %cmp11.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %9)
  %cmp13.i = icmp ult i32 %9, 2048
  %or.cond31.i = select i1 %or.cond30.i, i1 %cmp13.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %7)
  %cmp15.i = icmp ult i32 %7, 2048
  %or.cond32.i = select i1 %or.cond31.i, i1 %cmp15.i, i1 false
  br i1 %or.cond32.i, label %check_srcdst_sizes.exit.if.end_crit_edge, label %do.end

check_srcdst_sizes.exit.if.end_crit_edge:         ; preds = %check_srcdst_sizes.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.end:                                           ; preds = %check_srcdst_sizes.exit
  call void @__sanitizer_cov_trace_pc() #17
  %dev = getelementptr inbounds %struct.vpe_ctx, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.63) #18
  tail call fastcc void @vpe_return_all_buffers(ptr noundef %1, ptr noundef %q, i32 noundef 3)
  br label %cleanup

if.end:                                           ; preds = %check_srcdst_sizes.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %deinterlacing = getelementptr inbounds %struct.vpe_ctx, ptr %1, i32 0, i32 18
  %14 = ptrtoint ptr %deinterlacing to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %deinterlacing, align 4, !range !389
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool3.not = icmp eq i8 %15, 0
  br i1 %tobool3.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %mmr_adb1.i = getelementptr inbounds %struct.vpe_ctx, ptr %1, i32 0, i32 14
  %16 = ptrtoint ptr %mmr_adb1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmr_adb1.i, align 4
  %arrayidx.i = getelementptr %struct.vpe_mmr_adb, ptr %17, i32 0, i32 10, i32 3
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i, align 4
  %and.i13.i = and i32 %19, -4
  store i32 %and.i13.i, ptr %arrayidx.i, align 4
  %load_mmrs.i = getelementptr inbounds %struct.vpe_ctx, ptr %1, i32 0, i32 19
  %20 = ptrtoint ptr %load_mmrs.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %load_mmrs.i, align 1
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %sequence = getelementptr inbounds %struct.vpe_ctx, ptr %1, i32 0, i32 4
  %21 = ptrtoint ptr %sequence to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sequence, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.not = icmp eq i32 %22, 0
  br i1 %cmp.not, label %if.end5.cleanup_crit_edge, label %if.then6

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then6:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  %call7 = tail call fastcc i32 @set_srcdst_params(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.end5.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.then6 ], [ 0, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vpe_stop_streaming(ptr nocapture noundef readonly %q) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %dev = getelementptr inbounds %struct.vpe_ctx, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call fastcc void @vpe_dump_regs(ptr noundef %3)
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %vpdma = getelementptr inbounds %struct.vpe_dev, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %vpdma to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vpdma, align 8
  tail call void @vpdma_dump_regs(ptr noundef %7) #15
  tail call fastcc void @vpe_return_all_buffers(ptr noundef %1, ptr noundef %q, i32 noundef 6)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vpe_buf_queue(ptr noundef %vb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m2m_ctx, align 4
  tail call void @v4l2_m2m_buf_queue(ptr noundef %5, ptr noundef %vb) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vpe_return_all_buffers(ptr nocapture noundef %ctx, ptr nocapture noundef readonly %q, i32 noundef %state) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %ctx, i32 0, i32 10
  %dev = getelementptr inbounds %struct.vpe_ctx, ptr %ctx, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %do.body26, %entry
  %0 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %q, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.143)
  switch i32 %1, label %if.else [
    i32 2, label %for.cond.if.then_crit_edge
    i32 10, label %for.cond.if.then_crit_edge204
    i32 3, label %for.cond.if.then_crit_edge205
    i32 8, label %for.cond.if.then_crit_edge206
    i32 5, label %for.cond.if.then_crit_edge207
    i32 7, label %for.cond.if.then_crit_edge208
    i32 12, label %for.cond.if.then_crit_edge209
    i32 14, label %for.cond.if.then_crit_edge210
  ]

for.cond.if.then_crit_edge210:                    ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

for.cond.if.then_crit_edge209:                    ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

for.cond.if.then_crit_edge208:                    ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

for.cond.if.then_crit_edge207:                    ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

for.cond.if.then_crit_edge206:                    ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

for.cond.if.then_crit_edge205:                    ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

for.cond.if.then_crit_edge204:                    ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

for.cond.if.then_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

if.then:                                          ; preds = %for.cond.if.then_crit_edge, %for.cond.if.then_crit_edge204, %for.cond.if.then_crit_edge205, %for.cond.if.then_crit_edge206, %for.cond.if.then_crit_edge207, %for.cond.if.then_crit_edge208, %for.cond.if.then_crit_edge209, %for.cond.if.then_crit_edge210
  %3 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %m2m_ctx, align 4
  %out_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %4, i32 0, i32 8
  br label %if.end

if.else:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #17
  %5 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %m2m_ctx, align 4
  %cap_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %6, i32 0, i32 7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %cap_q_ctx.i.sink = phi ptr [ %cap_q_ctx.i, %if.else ], [ %out_q_ctx.i, %if.then ]
  %call.i203 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %cap_q_ctx.i.sink) #15
  %tobool.not = icmp eq ptr %call.i203, null
  br i1 %tobool.not, label %for.end, label %do.body26

do.body26:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %lock = getelementptr inbounds %struct.vpe_dev, ptr %8, i32 0, i32 6
  %call29 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #15
  tail call void @vb2_buffer_done(ptr noundef nonnull %call.i203, i32 noundef %state) #15
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %lock33 = getelementptr inbounds %struct.vpe_dev, ptr %10, i32 0, i32 6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock33, i32 noundef %call29) #15
  br label %for.cond

for.end:                                          ; preds = %if.end
  %11 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %q, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.144)
  switch i32 %12, label %if.else128 [
    i32 2, label %for.end.do.body67_crit_edge
    i32 10, label %for.end.do.body67_crit_edge211
    i32 3, label %for.end.do.body67_crit_edge212
    i32 8, label %for.end.do.body67_crit_edge213
    i32 5, label %for.end.do.body67_crit_edge214
    i32 7, label %for.end.do.body67_crit_edge215
    i32 12, label %for.end.do.body67_crit_edge216
    i32 14, label %for.end.do.body67_crit_edge217
  ]

for.end.do.body67_crit_edge217:                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body67

for.end.do.body67_crit_edge216:                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body67

for.end.do.body67_crit_edge215:                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body67

for.end.do.body67_crit_edge214:                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body67

for.end.do.body67_crit_edge213:                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body67

for.end.do.body67_crit_edge212:                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body67

for.end.do.body67_crit_edge211:                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body67

for.end.do.body67_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body67

do.body67:                                        ; preds = %for.end.do.body67_crit_edge, %for.end.do.body67_crit_edge211, %for.end.do.body67_crit_edge212, %for.end.do.body67_crit_edge213, %for.end.do.body67_crit_edge214, %for.end.do.body67_crit_edge215, %for.end.do.body67_crit_edge216, %for.end.do.body67_crit_edge217
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %lock74 = getelementptr inbounds %struct.vpe_dev, ptr %15, i32 0, i32 6
  %call76 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock74) #15
  %src_vbs = getelementptr inbounds %struct.vpe_ctx, ptr %ctx, i32 0, i32 9
  %arrayidx = getelementptr %struct.vpe_ctx, ptr %ctx, i32 0, i32 9, i32 2
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  %tobool81.not = icmp eq ptr %17, null
  br i1 %tobool81.not, label %do.body67.if.end85_crit_edge, label %if.then82

do.body67.if.end85_crit_edge:                     ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end85

if.then82:                                        ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @vb2_buffer_done(ptr noundef nonnull %17, i32 noundef %state) #15
  br label %if.end85

if.end85:                                         ; preds = %if.then82, %do.body67.if.end85_crit_edge
  %arrayidx87 = getelementptr %struct.vpe_ctx, ptr %ctx, i32 0, i32 9, i32 1
  %18 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx87, align 4
  %tobool88.not = icmp eq ptr %19, null
  br i1 %tobool88.not, label %if.end85.if.end98_crit_edge, label %land.lhs.true

if.end85.if.end98_crit_edge:                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end98

land.lhs.true:                                    ; preds = %if.end85
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  %cmp93.not = icmp eq ptr %19, %21
  br i1 %cmp93.not, label %land.lhs.true.if.end98_crit_edge, label %if.then95

land.lhs.true.if.end98_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end98

if.then95:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @vb2_buffer_done(ptr noundef nonnull %19, i32 noundef %state) #15
  br label %if.end98

if.end98:                                         ; preds = %if.then95, %land.lhs.true.if.end98_crit_edge, %if.end85.if.end98_crit_edge
  %22 = ptrtoint ptr %src_vbs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %src_vbs, align 4
  %tobool101.not = icmp eq ptr %23, null
  br i1 %tobool101.not, label %if.end98.if.end119_crit_edge, label %land.lhs.true102

if.end98.if.end119_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end119

land.lhs.true102:                                 ; preds = %if.end98
  %24 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx87, align 4
  %cmp107.not = icmp eq ptr %23, %25
  br i1 %cmp107.not, label %land.lhs.true102.if.end119_crit_edge, label %land.lhs.true109

land.lhs.true102.if.end119_crit_edge:             ; preds = %land.lhs.true102
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end119

land.lhs.true109:                                 ; preds = %land.lhs.true102
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx, align 4
  %cmp114.not = icmp eq ptr %23, %27
  br i1 %cmp114.not, label %land.lhs.true109.if.end119_crit_edge, label %if.then116

land.lhs.true109.if.end119_crit_edge:             ; preds = %land.lhs.true109
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end119

if.then116:                                       ; preds = %land.lhs.true109
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @vb2_buffer_done(ptr noundef nonnull %23, i32 noundef %state) #15
  br label %if.end119

if.end119:                                        ; preds = %if.then116, %land.lhs.true109.if.end119_crit_edge, %land.lhs.true102.if.end119_crit_edge, %if.end98.if.end119_crit_edge
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %arrayidx, align 4
  %29 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %arrayidx87, align 4
  br label %if.end151.sink.split

if.else128:                                       ; preds = %for.end
  %dst_vb = getelementptr inbounds %struct.vpe_ctx, ptr %ctx, i32 0, i32 10
  %30 = ptrtoint ptr %dst_vb to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dst_vb, align 4
  %tobool129.not = icmp eq ptr %31, null
  br i1 %tobool129.not, label %if.else128.if.end151_crit_edge, label %do.body132

if.else128.if.end151_crit_edge:                   ; preds = %if.else128
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end151

do.body132:                                       ; preds = %if.else128
  call void @__sanitizer_cov_trace_pc() #17
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 4
  %lock139 = getelementptr inbounds %struct.vpe_dev, ptr %33, i32 0, i32 6
  %call141 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock139) #15
  %34 = ptrtoint ptr %dst_vb to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dst_vb, align 4
  tail call void @vb2_buffer_done(ptr noundef %35, i32 noundef %state) #15
  br label %if.end151.sink.split

if.end151.sink.split:                             ; preds = %do.body132, %if.end119
  %dst_vb.sink = phi ptr [ %dst_vb, %do.body132 ], [ %src_vbs, %if.end119 ]
  %call141.sink = phi i32 [ %call141, %do.body132 ], [ %call76, %if.end119 ]
  %36 = ptrtoint ptr %dst_vb.sink to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %dst_vb.sink, align 4
  %37 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev, align 4
  %lock149 = getelementptr inbounds %struct.vpe_dev, ptr %38, i32 0, i32 6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock149, i32 noundef %call141.sink) #15
  br label %if.end151

if.end151:                                        ; preds = %if.end151.sink.split, %if.else128.if.end151_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vpe_dump_regs(ptr noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vpe_dump_regs.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vpe_dump_regs, %do.body5)) #15
          to label %if.then [label %do.body5], !srcloc !386

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vpe_dump_regs.__UNIQUE_ID_ddebug299, ptr noundef %1, ptr noundef nonnull @.str.66) #15
  br label %do.body5

do.body5:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vpe_dump_regs.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vpe_dump_regs, %do.body25)) #15
          to label %if.then19 [label %do.body25], !srcloc !386

if.then19:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #17
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %base.i = getelementptr inbounds %struct.vpe_dev, ptr %dev, i32 0, i32 8
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #15, !srcloc !384
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !385
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vpe_dump_regs.__UNIQUE_ID_ddebug300, ptr noundef %3, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, i32 noundef %7) #15
  br label %do.body25

do.body25:                                        ; preds = %if.then19, %do.body5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vpe_dump_regs.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vpe_dump_regs, %do.body45)) #15
          to label %if.then39 [label %do.body45], !srcloc !386

if.then39:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #17
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  %base.i1282 = getelementptr inbounds %struct.vpe_dev, ptr %dev, i32 0, i32 8
  %10 = ptrtoint ptr %base.i1282 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i1282, align 8
  %add.ptr.i = getelementptr i8, ptr %11, i32 16
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #15, !srcloc !384
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !385
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vpe_dump_regs.__UNIQUE_ID_ddebug301, ptr noundef %9, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.69, i32 noundef %13) #15
  br label %do.body45

do.body45:                                        ; preds = %if.then39, %do.body25
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vpe_dump_regs.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vpe_dump_regs, %do.body65)) #15
          to label %if.then59 [label %do.body65], !srcloc !386

if.then59:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #17
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 8
  %base.i1283 = getelementptr inbounds %struct.vpe_dev, ptr %dev, i32 0, i32 8
  %16 = ptrtoint ptr %base.i1283 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i1283, align 8
  %add.ptr.i1284 = getelementptr i8, ptr %17, i32 32
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1284) #15, !srcloc !384
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !385
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vpe_dump_regs.__UNIQUE_ID_ddebug302, ptr noundef %15, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.70, i32 noundef %19) #15
  br label %do.body65

do.body65:                                        ; preds = %if.then59, %do.body45
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vpe_dump_regs.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vpe_dump_regs, %do.body85)) #15
          to label %if.then79 [label %do.body85], !srcloc !386

if.then79:                                        ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #17
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 8
  %base.i1285 = getelementptr inbounds %struct.vpe_dev, ptr %dev, i32 0, i32 8
  %22 = ptrtoint ptr %base.i1285 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i1285, align 8
  %add.ptr.i1286 = getelementptr i8, ptr %23, i32 40
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1286) #15, !srcloc !384
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !385
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vpe_dump_regs.__UNIQUE_ID_ddebug303, ptr noundef %21, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.71, i32 noundef %25) #15
  br label %do.body85

do.body85:                                        ; preds = %if.then79, %do.body65
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vpe_dump_regs.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vpe_dump_regs, %do.body105)) #15
          to label %if.then99 [label %do.body105], !srcloc !386

if.then99:                                        ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #17
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 8
  %base.i1287 = getelementptr inbounds %struct.vpe_dev, ptr %dev, i32 0, i32 8
  %28 = ptrtoint ptr %base.i1287 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i1287, align 8
  %add.ptr.i1288 = getelementptr i8, ptr %29, i32 48
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1288) #15, !srcloc !384
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !385
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vpe_dump_regs.__UNIQUE_ID_ddebug304, ptr noundef %27, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.72, i32 noundef %31) #15
  br label %do.body105

do.body105:                                       ; preds = %if.then99, %do.body85
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vpe_dump_regs.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vpe_dump_regs, %do.body125)) #15
          to label %if.then119 [label %do.body125], !srcloc !386

if.then119:                                       ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #17
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 8
  %base.i1289 = getelementptr inbounds %struct.vpe_dev, ptr %dev, i32 0, i32 8
  %34 = ptrtoint ptr %base.i1289 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base.i1289, align 8
  %add.ptr.i1290 = getelementptr i8, ptr %35, i32 36
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1290) #15, !srcloc !384
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !385
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vpe_dump_regs.__UNIQUE_ID_ddebug305, ptr noundef %33, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.73, i32 noundef %37) #15
  br label %do.body125

do.body125:                                       ; preds = %if.then119, %do.body105
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vpe_dump_regs.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vpe_dump_regs, %do.body145)) #15
          to label %if.then139 [label %do.body145], !srcloc !386

if.then139:                                       ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #17
  %38 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev, align 8
  %base.i1291 = getelementptr inbounds %struct.vpe_dev, ptr %dev, i32 0, i32 8
  %40 = ptrtoint ptr %base.i1291 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base.i1291, align 8
  %add.ptr.i1292 = getelementptr i8, ptr %41, i32 44
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1292) #15, !srcloc !384
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !385
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vpe_dump_regs.__UNIQUE_ID_ddebug306, ptr noundef %39, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.74, i32 noundef %43) #15
  br label %do.body145

do.body145:                                       ; preds = %if.then139, %do.body125
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vpe_dump_regs.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vpe_dump_regs, %do.body165)) #15
          to label %if.then159 [label %do.body165], !srcloc !386

if.then159:                                       ; preds = %do.body145
  call void @__sanitizer_cov_trace_pc() #17
  %44 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev, align 8
  %base.i1293 = getelementptr inbounds %struct.vpe_dev, ptr %dev, i32 0, i32 8
  %46 = ptrtoint ptr %base.i1293 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base.i1293, align 8
  %add.ptr.i1294 = getelementptr i8, ptr %47, i32 52
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1294) #15, !srcloc !384
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !385
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vpe_dump_regs.__UNIQUE_ID_ddebug307, ptr noundef %45, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.75, i32 noundef %49) #15
  br label %do.body165

do.body165:                                       ; preds = %if.then159, %do.body145
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vpe_dump_regs.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vpe_dump_regs, %do.body185)) #15
          to label %if.then179 [label %do.body185], !srcloc !386

if.then179:                                       ; preds = %do.body165
  call void @__sanitizer_cov_trace_pc() #17
  %50 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev, align 8
  %base.i1295 = getelementptr inbounds %struct.vpe_dev, ptr %dev, i32 0, i32 8
  %52 = ptrtoint ptr %base.i1295 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base.i1295, align 8
  %add.ptr.i1296 = getelementptr i8, ptr %53, i32 256
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1296) #15, !srcloc !384
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !385
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vpe_dump_regs.__UNIQUE_ID_ddebug308, ptr noundef %51, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.76, i32 noundef %55) #15
  br label %do.body185

do.body185:                                       ; preds = %if.then179, %do.body165
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vpe_dump_regs.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vpe_dump_regs, %do.body205)) #15
          to label %if.then199 [label %do.body205], !srcloc !386

if.then199:                                       ; preds = %do.body185
  call void @__sanitizer_cov_trace_pc() #17
  %56 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev, align 8
  %base.i1297 = getelementptr inbounds %struct.vpe_dev, ptr %dev, i32 0, i32 8
  %58 = ptrtoint ptr %base.i1297 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %base.i1297, align 8
  %add.ptr.i1298 = getelementptr i8, ptr %59, i32 260
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1298) #15, !srcloc !384
  %61 = tail call i32 @llvm.bswap.i32(i32 %60) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !385
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vpe_dump_regs.__UNIQUE_ID_ddebug309, ptr noundef %57, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.77, i32 noundef %61) #15
  br label %do.body205

do.body205:                                       ; preds = %if.then199, %do.body185
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vpe_dump_regs.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vpe_dump_regs, %do.body225)) #15
          to label %if.then219 [label %do.body225], !srcloc !386

if.then219:                                       ; preds = %do.body205
  call void @__sanitizer_cov_trace_pc() #17
  %62 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev, align 8
  %base.i1299 = getelementptr inbounds %struct.vpe_dev, ptr %dev, i32 0, i32 8
  %64 = ptrtoint ptr %base.i1299 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %base.i1299, align 8
  %add.ptr.i1300 = getelementptr i8, ptr %65, i32 268
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1300) #15, !srcloc !384
  %67 = tail call i32 @llvm.bswap.i32(i32 %66) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !385
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vpe_dump_regs.__UNIQUE_ID_ddebug310, ptr noundef %63, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.78, i32 noundef %67) #15
  br label %do.body225

do.body225:                                       ; preds = %if.then219, %do.body205
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vpe_dump_regs.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vpe_dump_regs, %do.body245)) #15
          to label %if.then239 [label %do.body245], !srcloc !386

if.then239:                                       ; preds = %do.body225
  call void @__sanitizer_cov_trace_pc() #17
  %68 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev, align 8
  %base.i1301 = getelementptr inbounds %struct.vpe_dev, ptr %dev, i32 0, i32 8
  %70 = ptrtoint ptr %base.i1301 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %base.i1301, align 8
  %add.ptr.i1302 = getelementptr i8, ptr %71, i32 284
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1302) #15, !srcloc !384
  %73 = tail call i32 @llvm.bswap.i32(i32 %72) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !385
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vpe_dump_regs.__UNIQUE_ID_ddebug311, ptr noundef %69, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.79, i32 noundef %73) #15
  br label %do.body245

do.body245:                                       ; preds = %if.then239, %do.body225
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vpe_dump_regs.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vpe_dump_regs, %do.body265)) #15
          to label %if.then259 [label %do.body265], !srcloc !386

if.then259:                                       ; preds = %do.body245
  call void @__sanitizer_cov_trace_pc() #17
  %74 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev, align 8
  %base.i1303 = getelementptr inbounds %struct.vpe_dev, ptr %dev, i32 0, i32 8
  %76 = ptrtoint ptr %base.i1303 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %base.i1303, align 8
  %add.ptr.i1304 = getelementptr i8, ptr %77, i32 772
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1304) #15, !srcloc !384
  %79 = tail call i32 @llvm.bswap.i32(i32 %78) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !385
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vpe_dump_regs.__UNIQUE_ID_ddebug312, ptr noundef %75, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.80, i32 noundef %79) #15
  br label %do.body265

do.body265:                                       ; preds = %if.then259, %do.body245
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vpe_dump_regs.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vpe_dump_regs, %do.body285)) #15
          to label %if.then279 [label %do.body285], !srcloc !386

if.then279:                                       ; preds = %do.body265
  call void @__sanitizer_cov_trace_pc() #17
  %80 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev, align 8
  %base.i1305 = getelementptr inbounds %struct.vpe_dev, ptr %dev, i32 0, i32 8
  %82 = ptrtoint ptr %base.i1305 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %base.i1305, align 8
  %add.ptr.i1306 = getelementptr i8, ptr %83, i32 776
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1306) #15, !srcloc !384
  %85 = tail call i32 @llvm.bswap.i32(i32 %84) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !385
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vpe_dump_regs.__UNIQUE_ID_ddebug313, ptr noundef %81, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.81, i32 noundef %85) #15
  br label %do.body285

do.body285:                                       ; preds = %if.then279, %do.body265
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vpe_dump_regs.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vpe_dump_regs, %do.body305)) #15
          to label %if.then299 [label %do.body305], !srcloc !386

if.then299:                                       ; preds = %do.body285
  call void @__sanitizer_cov_trace_pc() #17
  %86 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev, align 8
  %base.i1307 = getelementptr inbounds %struct.vpe_dev, ptr %dev, i32 0, i32 8
  %88 = ptrtoint ptr %base.i1307 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %base.i1307, align 8
  %add.ptr.i1308 = getelementptr i8, ptr %89, i32 780
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1308) #15, !srcloc !384
  %91 = tail call i32 @llvm.bswap.i32(i32 %90) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !385
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vpe_dump_regs.__UNIQUE_ID_ddebug314, ptr noundef %87, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.82, i32 noundef %91) #15
  br label %do.body305

do.body305:                                       ; preds = %if.then299, %do.body285
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vpe_dump_regs.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vpe_dump_regs, %do.body325)) #15
          to label %if.then319 [label %do.body325], !srcloc !386

if.then319:                                       ; preds = %do.body305
  call void @__sanitizer_cov_trace_pc() #17
  %92 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dev, align 8
  %base.i1309 = getelementptr inbounds %struct.vpe_dev, ptr %dev, i32 0, i32 8
  %94 = ptrtoint ptr %base.i1309 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %base.i1309, align 8
  %add.ptr.i1310 = getelementptr i8, ptr %95, i32 784
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1310) #15, !srcloc !384
  %97 = tail call i32 @llvm.bswap.i32(i32 %96) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !385
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vpe_dump_regs.__UNIQUE_ID_ddebug315, ptr noundef %93, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.83, i32 noundef %97) #15
  br label %do.body325

do.body325:                                       ; preds = %if.then319, %do.body305
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vpe_dump_regs.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vpe_dump_regs, %do.body345)) #15
          to label %if.then339 [label %do.body345], !srcloc !386

if.then339:                                       ; preds = %do.body325
  call void @__sanitizer_cov_trace_pc() #17
  %98 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dev, align 8
  %base.i1311 = getelementptr inbounds %struct.vpe_dev, ptr %dev, i32 0, i32 8
  %100 = ptrtoint ptr %base.i1311 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %base.i1311, align 8
  %add.ptr.i1312 = getelementptr i8, ptr %101, i32 788
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1312) #15, !srcloc !384
  %103 = tail call i32 @llvm.bswap.i32(i32 %102) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !385
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vpe_dump_regs.__UNIQUE_ID_ddebug316, ptr noundef %99, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.84, i32 noundef %103) #15
  br label %do.body345

do.body345:                                       ; preds = %if.then339, %do.body325
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vpe_dump_regs.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vpe_dump_regs, %do.body365)) #15
          to label %if.then359 [label %do.body365], !srcloc !386

if.then359:                                       ; preds = %do.body345
  call void @__sanitizer_cov_trace_pc() #17
  %104 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %dev, align 8
  %base.i1313 = getelementptr inbounds %struct.vpe_dev, ptr %dev, i32 0, i32 8
  %106 = ptrtoint ptr %base.i1313 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %base.i1313, align 8
  %add.ptr.i1314 = getelementptr i8, ptr %107, i32 792
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1314) #15, !srcloc !384
  %109 = tail call i32 @llvm.bswap.i32(i32 %108) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !385
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vpe_dump_regs.__UNIQUE_ID_ddebug317, ptr noundef %105, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.85, i32 noundef %109) #15
  br label %do.body365

do.body365:                                       ; preds = %if.then359, %do.body345
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vpe_dump_regs.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vpe_dump_regs, %do.body385)) #15
          to label %if.then379 [label %do.body385], !srcloc !386

if.then379:                                       ; preds = %do.body365
  call void @__sanitizer_cov_trace_pc() #17
  %110 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %dev, align 8
  %base.i1315 = getelementptr inbounds %struct.vpe_dev, ptr %dev, i32 0, i32 8
  %112 = ptrtoint ptr %base.i1315 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %base.i1315, align 8
  %add.ptr.i1316 = getelementptr i8, ptr %113, i32 796
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1316) #15, !srcloc !384
  %115 = tail call i32 @llvm.bswap.i32(i32 %114) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !385
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vpe_dump_regs.__UNIQUE_ID_ddebug318, ptr noundef %111, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.86, i32 noundef %115) #15
  br label %do.body385

do.body385:                                       ; preds = %if.then379, %do.body365
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vpe_dump_regs.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vpe_dump_regs, %do.body405)) #15
          to label %if.then399 [label %do.body405], !srcloc !386

if.then399:                                       ; preds = %do.body385
  call void @__sanitizer_cov_trace_pc() #17
  %116 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %dev, align 8
  %base.i1317 = getelementptr inbounds %struct.vpe_dev, ptr %dev, i32 0, i32 8
  %118 = ptrtoint ptr %base.i1317 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %base.i1317, align 8
  %add.ptr.i1318 = getelementptr i8, ptr %119, i32 800
  %120 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1318) #15, !srcloc !384
  %121 = tail call i32 @llvm.bswap.i32(i32 %120) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !385
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vpe_dump_regs.__UNIQUE_ID_ddebug319, ptr noundef %117, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.87, i32 noundef %121) #15
  br label %do.body405

do.body405:                                       ; preds = %if.then399, %do.body385
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vpe_dump_regs.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vpe_dump_regs, %do.body425)) #15
          to label %if.then419 [label %do.body425], !srcloc !386

if.then419:                                       ; preds = %do.body405
  call void @__sanitizer_cov_trace_pc() #17
  %122 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %dev, align 8
  %base.i1319 = getelementptr inbounds %struct.vpe_dev, ptr %dev, i32 0, i32 8
  %124 = ptrtoint ptr %base.i1319 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %base.i1319, align 8
  %add.ptr.i1320 = getelementptr i8, ptr %125, i32 1028
  %126 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1320) #15, !srcloc !384
  %127 = tail call i32 @llvm.bswap.i32(i32 %126) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !385
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vpe_dump_regs.__UNIQUE_ID_ddebug320, ptr noundef %123, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.88, i32 noundef %127) #15
  br label %do.body425

do.body425:                                       ; preds = %if.then419, %do.body405
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vpe_dump_regs.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vpe_dump_regs, %do.body445)) #15
          to label %if.then439 [label %do.body445], !srcloc !386

if.then439:                                       ; preds = %do.body425
  call void @__sanitizer_cov_trace_pc() #17
  %128 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %dev, align 8
  %base.i1321 = getelementptr inbounds %struct.vpe_dev, ptr %dev, i32 0, i32 8
  %130 = ptrtoint ptr %base.i1321 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %base.i1321, align 8
  %add.ptr.i1322 = getelementptr i8, ptr %131, i32 1032
  %132 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1322) #15, !srcloc !384
  %133 = tail call i32 @llvm.bswap.i32(i32 %132) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !385
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vpe_dump_regs.__UNIQUE_ID_ddebug321, ptr noundef %129, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.89, i32 noundef %133) #15
  br label %do.body445

do.body445:                                       ; preds = %if.then439, %do.body425
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vpe_dump_regs.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vpe_dump_regs, %do.body465)) #15
          to label %if.then459 [label %do.body465], !srcloc !386

if.then459:                                       ; preds = %do.body445
  call void @__sanitizer_cov_trace_pc() #17
  %134 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %dev, align 8
  %base.i1323 = getelementptr inbounds %struct.vpe_dev, ptr %dev, i32 0, i32 8
  %136 = ptrtoint ptr %base.i1323 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %base.i1323, align 8
  %add.ptr.i1324 = getelementptr i8, ptr %137, i32 1036
  %138 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1324) #15, !srcloc !384
  %139 = tail call i32 @llvm.bswap.i32(i32 %138) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !385
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vpe_dump_regs.__UNIQUE_ID_ddebug322, ptr noundef %135, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.90, i32 noundef %139) #15
  br label %do.body465

do.body465:                                       ; preds = %if.then459, %do.body445
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vpe_dump_regs.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vpe_dump_regs, %do.body485)) #15
          to label %if.then479 [label %do.body485], !srcloc !386

if.then479:                                       ; preds = %do.body465
  call void @__sanitizer_cov_trace_pc() #17
  %140 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %dev, align 8
  %base.i1325 = getelementptr inbounds %struct.vpe_dev, ptr %dev, i32 0, i32 8
  %142 = ptrtoint ptr %base.i1325 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %base.i1325, align 8
  %add.ptr.i1326 = getelementptr i8, ptr %143, i32 1040
  %144 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1326) #15, !srcloc !384
  %145 = tail call i32 @llvm.bswap.i32(i32 %144) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !385
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vpe_dump_regs.__UNIQUE_ID_ddebug323, ptr noundef %141, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.91, i32 noundef %145) #15
  br label %do.body485

do.body485:                                       ; preds = %if.then479, %do.body465
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vpe_dump_regs.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vpe_dump_regs, %do.body505)) #15
          to label %if.then499 [label %do.body505], !srcloc !386

if.then499:                                       ; preds = %do.body485
  call void @__sanitizer_cov_trace_pc() #17
  %146 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %dev, align 8
  %base.i1327 = getelementptr inbounds %struct.vpe_dev, ptr %dev, i32 0, i32 8
  %148 = ptrtoint ptr %base.i1327 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %base.i1327, align 8
  %add.ptr.i1328 = getelementptr i8, ptr %149, i32 1044
  %150 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1328) #15, !srcloc !384
  %151 = tail call i32 @llvm.bswap.i32(i32 %150) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !385
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vpe_dump_regs.__UNIQUE_ID_ddebug324, ptr noundef %147, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.92, i32 noundef %151) #15
  br label %do.body505

do.body505:                                       ; preds = %if.then499, %do.body485
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vpe_dump_regs.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vpe_dump_regs, %do.body525)) #15
          to label %if.then519 [label %do.body525], !srcloc !386

if.then519:                                       ; preds = %do.body505
  call void @__sanitizer_cov_trace_pc() #17
  %152 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %dev, align 8
  %base.i1329 = getelementptr inbounds %struct.vpe_dev, ptr %dev, i32 0, i32 8
  %154 = ptrtoint ptr %base.i1329 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %base.i1329, align 8
  %add.ptr.i1330 = getelementptr i8, ptr %155, i32 1048
  %156 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1330) #15, !srcloc !384
  %157 = tail call i32 @llvm.bswap.i32(i32 %156) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !385
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vpe_dump_regs.__UNIQUE_ID_ddebug325, ptr noundef %153, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.93, i32 noundef %157) #15
  br label %do.body525

do.body525:                                       ; preds = %if.then519, %do.body505
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vpe_dump_regs.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vpe_dump_regs, %do.body545)) #15
          to label %if.then539 [label %do.body545], !srcloc !386

if.then539:                                       ; preds = %do.body525
  call void @__sanitizer_cov_trace_pc() #17
  %158 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %dev, align 8
  %base.i1331 = getelementptr inbounds %struct.vpe_dev, ptr %dev, i32 0, i32 8
  %160 = ptrtoint ptr %base.i1331 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %base.i1331, align 8
  %add.ptr.i1332 = getelementptr i8, ptr %161, i32 1052
  %162 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1332) #15, !srcloc !384
  %163 = tail call i32 @llvm.bswap.i32(i32 %162) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !385
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vpe_dump_regs.__UNIQUE_ID_ddebug326, ptr noundef %159, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.94, i32 noundef %163) #15
  br label %do.body545

do.body545:                                       ; preds = %if.then539, %do.body525
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vpe_dump_regs.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vpe_dump_regs, %do.body565)) #15
          to label %if.then559 [label %do.body565], !srcloc !386

if.then559:                                       ; preds = %do.body545
  call void @__sanitizer_cov_trace_pc() #17
  %164 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %dev, align 8
  %base.i1333 = getelementptr inbounds %struct.vpe_dev, ptr %dev, i32 0, i32 8
  %166 = ptrtoint ptr %base.i1333 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %base.i1333, align 8
  %add.ptr.i1334 = getelementptr i8, ptr %167, i32 1056
  %168 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1334) #15, !srcloc !384
  %169 = tail call i32 @llvm.bswap.i32(i32 %168) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !385
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vpe_dump_regs.__UNIQUE_ID_ddebug327, ptr noundef %165, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.95, i32 noundef %169) #15
  br label %do.body565

do.body565:                                       ; preds = %if.then559, %do.body545
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vpe_dump_regs.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vpe_dump_regs, %do.body585)) #15
          to label %if.then579 [label %do.body585], !srcloc !386

if.then579:                                       ; preds = %do.body565
  call void @__sanitizer_cov_trace_pc() #17
  %170 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %dev, align 8
  %base.i1335 = getelementptr inbounds %struct.vpe_dev, ptr %dev, i32 0, i32 8
  %172 = ptrtoint ptr %base.i1335 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %base.i1335, align 8
  %add.ptr.i1336 = getelementptr i8, ptr %173, i32 1284
  %174 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1336) #15, !srcloc !384
  %175 = tail call i32 @llvm.bswap.i32(i32 %174) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !385
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vpe_dump_regs.__UNIQUE_ID_ddebug328, ptr noundef %171, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.96, i32 noundef %175) #15
  br label %do.body585

do.body585:                                       ; preds = %if.then579, %do.body565
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vpe_dump_regs.__UNIQUE_ID_ddebug329, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vpe_dump_regs, %do.body605)) #15
          to label %if.then599 [label %do.body605], !srcloc !386

if.then599:                                       ; preds = %do.body585
  call void @__sanitizer_cov_trace_pc() #17
  %176 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %dev, align 8
  %base.i1337 = getelementptr inbounds %struct.vpe_dev, ptr %dev, i32 0, i32 8
  %178 = ptrtoint ptr %base.i1337 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %base.i1337, align 8
  %add.ptr.i1338 = getelementptr i8, ptr %179, i32 1288
  %180 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1338) #15, !srcloc !384
  %181 = tail call i32 @llvm.bswap.i32(i32 %180) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !385
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vpe_dump_regs.__UNIQUE_ID_ddebug329, ptr noundef %177, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.97, i32 noundef %181) #15
  br label %do.body605

do.body605:                                       ; preds = %if.then599, %do.body585
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vpe_dump_regs.__UNIQUE_ID_ddebug330, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vpe_dump_regs, %do.body625)) #15
          to label %if.then619 [label %do.body625], !srcloc !386

if.then619:                                       ; preds = %do.body605
  call void @__sanitizer_cov_trace_pc() #17
  %182 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %dev, align 8
  %base.i1339 = getelementptr inbounds %struct.vpe_dev, ptr %dev, i32 0, i32 8
  %184 = ptrtoint ptr %base.i1339 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %base.i1339, align 8
  %add.ptr.i1340 = getelementptr i8, ptr %185, i32 1292
  %186 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1340) #15, !srcloc !384
  %187 = tail call i32 @llvm.bswap.i32(i32 %186) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !385
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vpe_dump_regs.__UNIQUE_ID_ddebug330, ptr noundef %183, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.98, i32 noundef %187) #15
  br label %do.body625

do.body625:                                       ; preds = %if.then619, %do.body605
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vpe_dump_regs.__UNIQUE_ID_ddebug331, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vpe_dump_regs, %do.body645)) #15
          to label %if.then639 [label %do.body645], !srcloc !386

if.then639:                                       ; preds = %do.body625
  call void @__sanitizer_cov_trace_pc() #17
  %188 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %dev, align 8
  %base.i1341 = getelementptr inbounds %struct.vpe_dev, ptr %dev, i32 0, i32 8
  %190 = ptrtoint ptr %base.i1341 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %base.i1341, align 8
  %add.ptr.i1342 = getelementptr i8, ptr %191, i32 1296
  %192 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1342) #15, !srcloc !384
  %193 = tail call i32 @llvm.bswap.i32(i32 %192) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !385
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vpe_dump_regs.__UNIQUE_ID_ddebug331, ptr noundef %189, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.99, i32 noundef %193) #15
  br label %do.body645

do.body645:                                       ; preds = %if.then639, %do.body625
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vpe_dump_regs.__UNIQUE_ID_ddebug332, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vpe_dump_regs, %do.body665)) #15
          to label %if.then659 [label %do.body665], !srcloc !386

if.then659:                                       ; preds = %do.body645
  call void @__sanitizer_cov_trace_pc() #17
  %194 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %dev, align 8
  %base.i1343 = getelementptr inbounds %struct.vpe_dev, ptr %dev, i32 0, i32 8
  %196 = ptrtoint ptr %base.i1343 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %base.i1343, align 8
  %add.ptr.i1344 = getelementptr i8, ptr %197, i32 1300
  %198 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1344) #15, !srcloc !384
  %199 = tail call i32 @llvm.bswap.i32(i32 %198) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !385
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vpe_dump_regs.__UNIQUE_ID_ddebug332, ptr noundef %195, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.100, i32 noundef %199) #15
  br label %do.body665

do.body665:                                       ; preds = %if.then659, %do.body645
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vpe_dump_regs.__UNIQUE_ID_ddebug333, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vpe_dump_regs, %do.body685)) #15
          to label %if.then679 [label %do.body685], !srcloc !386

if.then679:                                       ; preds = %do.body665
  call void @__sanitizer_cov_trace_pc() #17
  %200 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %dev, align 8
  %base.i1345 = getelementptr inbounds %struct.vpe_dev, ptr %dev, i32 0, i32 8
  %202 = ptrtoint ptr %base.i1345 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %base.i1345, align 8
  %add.ptr.i1346 = getelementptr i8, ptr %203, i32 1304
  %204 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1346) #15, !srcloc !384
  %205 = tail call i32 @llvm.bswap.i32(i32 %204) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !385
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vpe_dump_regs.__UNIQUE_ID_ddebug333, ptr noundef %201, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.101, i32 noundef %205) #15
  br label %do.body685

do.body685:                                       ; preds = %if.then679, %do.body665
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vpe_dump_regs.__UNIQUE_ID_ddebug334, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vpe_dump_regs, %do.body705)) #15
          to label %if.then699 [label %do.body705], !srcloc !386

if.then699:                                       ; preds = %do.body685
  call void @__sanitizer_cov_trace_pc() #17
  %206 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %dev, align 8
  %base.i1347 = getelementptr inbounds %struct.vpe_dev, ptr %dev, i32 0, i32 8
  %208 = ptrtoint ptr %base.i1347 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %base.i1347, align 8
  %add.ptr.i1348 = getelementptr i8, ptr %209, i32 1308
  %210 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1348) #15, !srcloc !384
  %211 = tail call i32 @llvm.bswap.i32(i32 %210) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !385
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vpe_dump_regs.__UNIQUE_ID_ddebug334, ptr noundef %207, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.102, i32 noundef %211) #15
  br label %do.body705

do.body705:                                       ; preds = %if.then699, %do.body685
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vpe_dump_regs.__UNIQUE_ID_ddebug335, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vpe_dump_regs, %do.body725)) #15
          to label %if.then719 [label %do.body725], !srcloc !386

if.then719:                                       ; preds = %do.body705
  call void @__sanitizer_cov_trace_pc() #17
  %212 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %dev, align 8
  %base.i1349 = getelementptr inbounds %struct.vpe_dev, ptr %dev, i32 0, i32 8
  %214 = ptrtoint ptr %base.i1349 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %base.i1349, align 8
  %add.ptr.i1350 = getelementptr i8, ptr %215, i32 1312
  %216 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1350) #15, !srcloc !384
  %217 = tail call i32 @llvm.bswap.i32(i32 %216) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !385
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vpe_dump_regs.__UNIQUE_ID_ddebug335, ptr noundef %213, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.103, i32 noundef %217) #15
  br label %do.body725

do.body725:                                       ; preds = %if.then719, %do.body705
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vpe_dump_regs.__UNIQUE_ID_ddebug336, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vpe_dump_regs, %do.body745)) #15
          to label %if.then739 [label %do.body745], !srcloc !386

if.then739:                                       ; preds = %do.body725
  call void @__sanitizer_cov_trace_pc() #17
  %218 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %dev, align 8
  %base.i1351 = getelementptr inbounds %struct.vpe_dev, ptr %dev, i32 0, i32 8
  %220 = ptrtoint ptr %base.i1351 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %base.i1351, align 8
  %add.ptr.i1352 = getelementptr i8, ptr %221, i32 1536
  %222 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1352) #15, !srcloc !384
  %223 = tail call i32 @llvm.bswap.i32(i32 %222) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !385
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vpe_dump_regs.__UNIQUE_ID_ddebug336, ptr noundef %219, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.104, i32 noundef %223) #15
  br label %do.body745

do.body745:                                       ; preds = %if.then739, %do.body725
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vpe_dump_regs.__UNIQUE_ID_ddebug337, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vpe_dump_regs, %do.body765)) #15
          to label %if.then759 [label %do.body765], !srcloc !386

if.then759:                                       ; preds = %do.body745
  call void @__sanitizer_cov_trace_pc() #17
  %224 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %dev, align 8
  %base.i1353 = getelementptr inbounds %struct.vpe_dev, ptr %dev, i32 0, i32 8
  %226 = ptrtoint ptr %base.i1353 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %base.i1353, align 8
  %add.ptr.i1354 = getelementptr i8, ptr %227, i32 1540
  %228 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1354) #15, !srcloc !384
  %229 = tail call i32 @llvm.bswap.i32(i32 %228) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !385
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vpe_dump_regs.__UNIQUE_ID_ddebug337, ptr noundef %225, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.105, i32 noundef %229) #15
  br label %do.body765

do.body765:                                       ; preds = %if.then759, %do.body745
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vpe_dump_regs.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vpe_dump_regs, %do.body785)) #15
          to label %if.then779 [label %do.body785], !srcloc !386

if.then779:                                       ; preds = %do.body765
  call void @__sanitizer_cov_trace_pc() #17
  %230 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %dev, align 8
  %base.i1355 = getelementptr inbounds %struct.vpe_dev, ptr %dev, i32 0, i32 8
  %232 = ptrtoint ptr %base.i1355 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %base.i1355, align 8
  %add.ptr.i1356 = getelementptr i8, ptr %233, i32 1544
  %234 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1356) #15, !srcloc !384
  %235 = tail call i32 @llvm.bswap.i32(i32 %234) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !385
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vpe_dump_regs.__UNIQUE_ID_ddebug338, ptr noundef %231, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.106, i32 noundef %235) #15
  br label %do.body785

do.body785:                                       ; preds = %if.then779, %do.body765
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vpe_dump_regs.__UNIQUE_ID_ddebug339, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vpe_dump_regs, %do.body805)) #15
          to label %if.then799 [label %do.body805], !srcloc !386

if.then799:                                       ; preds = %do.body785
  call void @__sanitizer_cov_trace_pc() #17
  %236 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %dev, align 8
  %base.i1357 = getelementptr inbounds %struct.vpe_dev, ptr %dev, i32 0, i32 8
  %238 = ptrtoint ptr %base.i1357 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %base.i1357, align 8
  %add.ptr.i1358 = getelementptr i8, ptr %239, i32 1548
  %240 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1358) #15, !srcloc !384
  %241 = tail call i32 @llvm.bswap.i32(i32 %240) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !385
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vpe_dump_regs.__UNIQUE_ID_ddebug339, ptr noundef %237, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.107, i32 noundef %241) #15
  br label %do.body805

do.body805:                                       ; preds = %if.then799, %do.body785
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vpe_dump_regs.__UNIQUE_ID_ddebug340, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vpe_dump_regs, %do.body825)) #15
          to label %if.then819 [label %do.body825], !srcloc !386

if.then819:                                       ; preds = %do.body805
  call void @__sanitizer_cov_trace_pc() #17
  %242 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %dev, align 8
  %base.i1359 = getelementptr inbounds %struct.vpe_dev, ptr %dev, i32 0, i32 8
  %244 = ptrtoint ptr %base.i1359 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %base.i1359, align 8
  %add.ptr.i1360 = getelementptr i8, ptr %245, i32 1552
  %246 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1360) #15, !srcloc !384
  %247 = tail call i32 @llvm.bswap.i32(i32 %246) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !385
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vpe_dump_regs.__UNIQUE_ID_ddebug340, ptr noundef %243, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.108, i32 noundef %247) #15
  br label %do.body825

do.body825:                                       ; preds = %if.then819, %do.body805
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vpe_dump_regs.__UNIQUE_ID_ddebug341, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vpe_dump_regs, %do.body845)) #15
          to label %if.then839 [label %do.body845], !srcloc !386

if.then839:                                       ; preds = %do.body825
  call void @__sanitizer_cov_trace_pc() #17
  %248 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %dev, align 8
  %base.i1361 = getelementptr inbounds %struct.vpe_dev, ptr %dev, i32 0, i32 8
  %250 = ptrtoint ptr %base.i1361 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %base.i1361, align 8
  %add.ptr.i1362 = getelementptr i8, ptr %251, i32 1556
  %252 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1362) #15, !srcloc !384
  %253 = tail call i32 @llvm.bswap.i32(i32 %252) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !385
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vpe_dump_regs.__UNIQUE_ID_ddebug341, ptr noundef %249, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.109, i32 noundef %253) #15
  br label %do.body845

do.body845:                                       ; preds = %if.then839, %do.body825
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vpe_dump_regs.__UNIQUE_ID_ddebug342, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vpe_dump_regs, %do.body865)) #15
          to label %if.then859 [label %do.body865], !srcloc !386

if.then859:                                       ; preds = %do.body845
  call void @__sanitizer_cov_trace_pc() #17
  %254 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %dev, align 8
  %base.i1363 = getelementptr inbounds %struct.vpe_dev, ptr %dev, i32 0, i32 8
  %256 = ptrtoint ptr %base.i1363 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %base.i1363, align 8
  %add.ptr.i1364 = getelementptr i8, ptr %257, i32 1560
  %258 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1364) #15, !srcloc !384
  %259 = tail call i32 @llvm.bswap.i32(i32 %258) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !385
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vpe_dump_regs.__UNIQUE_ID_ddebug342, ptr noundef %255, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.110, i32 noundef %259) #15
  br label %do.body865

do.body865:                                       ; preds = %if.then859, %do.body845
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vpe_dump_regs.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vpe_dump_regs, %do.body885)) #15
          to label %if.then879 [label %do.body885], !srcloc !386

if.then879:                                       ; preds = %do.body865
  call void @__sanitizer_cov_trace_pc() #17
  %260 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %dev, align 8
  %base.i1365 = getelementptr inbounds %struct.vpe_dev, ptr %dev, i32 0, i32 8
  %262 = ptrtoint ptr %base.i1365 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %base.i1365, align 8
  %add.ptr.i1366 = getelementptr i8, ptr %263, i32 1564
  %264 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1366) #15, !srcloc !384
  %265 = tail call i32 @llvm.bswap.i32(i32 %264) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !385
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vpe_dump_regs.__UNIQUE_ID_ddebug343, ptr noundef %261, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.111, i32 noundef %265) #15
  br label %do.body885

do.body885:                                       ; preds = %if.then879, %do.body865
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vpe_dump_regs.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vpe_dump_regs, %do.body905)) #15
          to label %if.then899 [label %do.body905], !srcloc !386

if.then899:                                       ; preds = %do.body885
  call void @__sanitizer_cov_trace_pc() #17
  %266 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %dev, align 8
  %base.i1367 = getelementptr inbounds %struct.vpe_dev, ptr %dev, i32 0, i32 8
  %268 = ptrtoint ptr %base.i1367 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %base.i1367, align 8
  %add.ptr.i1368 = getelementptr i8, ptr %269, i32 1568
  %270 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1368) #15, !srcloc !384
  %271 = tail call i32 @llvm.bswap.i32(i32 %270) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !385
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vpe_dump_regs.__UNIQUE_ID_ddebug344, ptr noundef %267, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.112, i32 noundef %271) #15
  br label %do.body905

do.body905:                                       ; preds = %if.then899, %do.body885
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vpe_dump_regs.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vpe_dump_regs, %do.body925)) #15
          to label %if.then919 [label %do.body925], !srcloc !386

if.then919:                                       ; preds = %do.body905
  call void @__sanitizer_cov_trace_pc() #17
  %272 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %dev, align 8
  %base.i1369 = getelementptr inbounds %struct.vpe_dev, ptr %dev, i32 0, i32 8
  %274 = ptrtoint ptr %base.i1369 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %base.i1369, align 8
  %add.ptr.i1370 = getelementptr i8, ptr %275, i32 1572
  %276 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1370) #15, !srcloc !384
  %277 = tail call i32 @llvm.bswap.i32(i32 %276) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !385
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vpe_dump_regs.__UNIQUE_ID_ddebug345, ptr noundef %273, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.113, i32 noundef %277) #15
  br label %do.body925

do.body925:                                       ; preds = %if.then919, %do.body905
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vpe_dump_regs.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vpe_dump_regs, %do.body945)) #15
          to label %if.then939 [label %do.body945], !srcloc !386

if.then939:                                       ; preds = %do.body925
  call void @__sanitizer_cov_trace_pc() #17
  %278 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %dev, align 8
  %base.i1371 = getelementptr inbounds %struct.vpe_dev, ptr %dev, i32 0, i32 8
  %280 = ptrtoint ptr %base.i1371 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %base.i1371, align 8
  %add.ptr.i1372 = getelementptr i8, ptr %281, i32 1576
  %282 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1372) #15, !srcloc !384
  %283 = tail call i32 @llvm.bswap.i32(i32 %282) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !385
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vpe_dump_regs.__UNIQUE_ID_ddebug346, ptr noundef %279, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.114, i32 noundef %283) #15
  br label %do.body945

do.body945:                                       ; preds = %if.then939, %do.body925
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vpe_dump_regs.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vpe_dump_regs, %do.body965)) #15
          to label %if.then959 [label %do.body965], !srcloc !386

if.then959:                                       ; preds = %do.body945
  call void @__sanitizer_cov_trace_pc() #17
  %284 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %dev, align 8
  %base.i1373 = getelementptr inbounds %struct.vpe_dev, ptr %dev, i32 0, i32 8
  %286 = ptrtoint ptr %base.i1373 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %base.i1373, align 8
  %add.ptr.i1374 = getelementptr i8, ptr %287, i32 1580
  %288 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1374) #15, !srcloc !384
  %289 = tail call i32 @llvm.bswap.i32(i32 %288) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !385
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vpe_dump_regs.__UNIQUE_ID_ddebug347, ptr noundef %285, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.115, i32 noundef %289) #15
  br label %do.body965

do.body965:                                       ; preds = %if.then959, %do.body945
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vpe_dump_regs.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vpe_dump_regs, %do.body985)) #15
          to label %if.then979 [label %do.body985], !srcloc !386

if.then979:                                       ; preds = %do.body965
  call void @__sanitizer_cov_trace_pc() #17
  %290 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %dev, align 8
  %base.i1375 = getelementptr inbounds %struct.vpe_dev, ptr %dev, i32 0, i32 8
  %292 = ptrtoint ptr %base.i1375 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %base.i1375, align 8
  %add.ptr.i1376 = getelementptr i8, ptr %293, i32 1584
  %294 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1376) #15, !srcloc !384
  %295 = tail call i32 @llvm.bswap.i32(i32 %294) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !385
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vpe_dump_regs.__UNIQUE_ID_ddebug348, ptr noundef %291, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.116, i32 noundef %295) #15
  br label %do.body985

do.body985:                                       ; preds = %if.then979, %do.body965
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vpe_dump_regs.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vpe_dump_regs, %do.body1005)) #15
          to label %if.then999 [label %do.body1005], !srcloc !386

if.then999:                                       ; preds = %do.body985
  call void @__sanitizer_cov_trace_pc() #17
  %296 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %dev, align 8
  %base.i1377 = getelementptr inbounds %struct.vpe_dev, ptr %dev, i32 0, i32 8
  %298 = ptrtoint ptr %base.i1377 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %base.i1377, align 8
  %add.ptr.i1378 = getelementptr i8, ptr %299, i32 1588
  %300 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1378) #15, !srcloc !384
  %301 = tail call i32 @llvm.bswap.i32(i32 %300) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !385
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vpe_dump_regs.__UNIQUE_ID_ddebug349, ptr noundef %297, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.117, i32 noundef %301) #15
  br label %do.body1005

do.body1005:                                      ; preds = %if.then999, %do.body985
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vpe_dump_regs.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vpe_dump_regs, %do.end1024)) #15
          to label %if.then1019 [label %do.end1024], !srcloc !386

if.then1019:                                      ; preds = %do.body1005
  call void @__sanitizer_cov_trace_pc() #17
  %302 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %dev, align 8
  %base.i1379 = getelementptr inbounds %struct.vpe_dev, ptr %dev, i32 0, i32 8
  %304 = ptrtoint ptr %base.i1379 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %base.i1379, align 8
  %add.ptr.i1380 = getelementptr i8, ptr %305, i32 1592
  %306 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1380) #15, !srcloc !384
  %307 = tail call i32 @llvm.bswap.i32(i32 %306) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !385
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vpe_dump_regs.__UNIQUE_ID_ddebug350, ptr noundef %303, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.118, i32 noundef %307) #15
  br label %do.end1024

do.end1024:                                       ; preds = %if.then1019, %do.body1005
  %sc = getelementptr inbounds %struct.vpe_dev, ptr %dev, i32 0, i32 12
  %308 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %sc, align 4
  tail call void @sc_dump_regs(ptr noundef %309) #15
  %csc = getelementptr inbounds %struct.vpe_dev, ptr %dev, i32 0, i32 13
  %310 = ptrtoint ptr %csc to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %csc, align 8
  tail call void @csc_dump_regs(ptr noundef %311) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vpdma_dump_regs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sc_dump_regs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @csc_dump_regs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_buf_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_ctx_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpe_querycap(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr noundef %cap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strscpy(ptr noundef %cap, ptr noundef nonnull @.str, i32 noundef 16) #15
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %call2 = tail call i32 @strscpy(ptr noundef %card, ptr noundef nonnull @.str, i32 noundef 32) #15
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %call4 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info, i32 noundef 32, ptr noundef nonnull @.str.122, ptr noundef nonnull @.str)
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpe_enum_fmt(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  %switch.tableidx = add i32 %1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %switch.tableidx)
  %2 = icmp ult i32 %switch.tableidx, 13
  br i1 %2, label %switch.lookup, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %switch.gep = getelementptr inbounds [13 x i32], ptr @switch.table.vpe_enum_fmt, i32 0, i32 %switch.tableidx
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %entry.return_crit_edge
  %.sink = phi i32 [ %switch.load, %switch.lookup ], [ 1, %entry.return_crit_edge ]
  %call21 = tail call fastcc i32 @__enum_fmt(ptr noundef %f, i32 noundef %.sink)
  ret i32 %call21
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpe_g_fmt(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m2m_ctx, align 4
  %4 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f, align 4
  %call = tail call ptr @v4l2_m2m_get_vq(ptr noundef %3, i32 noundef %5) #15
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %f, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.145)
  switch i32 %7, label %if.end.cleanup_crit_edge [
    i32 10, label %if.end.sw.bb.i_crit_edge
    i32 2, label %if.end.sw.bb.i_crit_edge63
    i32 9, label %if.end.sw.bb1.i_crit_edge
    i32 1, label %if.end.sw.bb1.i_crit_edge64
  ]

if.end.sw.bb1.i_crit_edge64:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb1.i

if.end.sw.bb1.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb1.i

if.end.sw.bb.i_crit_edge63:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i

if.end.sw.bb.i_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb.i:                                          ; preds = %if.end.sw.bb.i_crit_edge, %if.end.sw.bb.i_crit_edge63
  %q_data.i = getelementptr inbounds %struct.vpe_ctx, ptr %1, i32 0, i32 8
  br label %get_q_data.exit

sw.bb1.i:                                         ; preds = %if.end.sw.bb1.i_crit_edge, %if.end.sw.bb1.i_crit_edge64
  %arrayidx3.i = getelementptr %struct.vpe_ctx, ptr %1, i32 0, i32 8, i32 1
  br label %get_q_data.exit

get_q_data.exit:                                  ; preds = %sw.bb1.i, %sw.bb.i
  %retval.0.i = phi ptr [ %arrayidx3.i, %sw.bb1.i ], [ %q_data.i, %sw.bb.i ]
  %tobool3.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool3.not, label %get_q_data.exit.cleanup_crit_edge, label %if.end5

get_q_data.exit.cleanup_crit_edge:                ; preds = %get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end5:                                          ; preds = %get_q_data.exit
  %9 = call ptr @memcpy(ptr %f, ptr %retval.0.i, i32 204)
  %10 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %f, align 4
  %switch.tableidx = add i32 %11, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %switch.tableidx)
  %12 = icmp ult i32 %switch.tableidx, 13
  br i1 %12, label %switch.hole_check, label %if.end5.if.then27_crit_edge

if.end5.if.then27_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then27

if.then27:                                        ; preds = %switch.hole_check.if.then27_crit_edge, %if.end5.if.then27_crit_edge
  %colorspace = getelementptr inbounds %struct.vpe_ctx, ptr %1, i32 0, i32 8, i32 0, i32 0, i32 1, i32 0, i32 4
  %13 = ptrtoint ptr %colorspace to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %colorspace, align 1
  %colorspace31 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %15 = ptrtoint ptr %colorspace31 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 %14, ptr %colorspace31, align 1
  %xfer_func = getelementptr inbounds %struct.vpe_ctx, ptr %1, i32 0, i32 8, i32 0, i32 0, i32 1, i32 0, i32 10
  %16 = ptrtoint ptr %xfer_func to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %xfer_func, align 1
  %xfer_func32 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 10
  %18 = ptrtoint ptr %xfer_func32 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %xfer_func32, align 1
  %19 = getelementptr inbounds %struct.vpe_ctx, ptr %1, i32 0, i32 8, i32 0, i32 0, i32 1, i32 0, i32 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %19, align 1
  %22 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %21, ptr %22, align 1
  %quantization = getelementptr inbounds %struct.vpe_ctx, ptr %1, i32 0, i32 8, i32 0, i32 0, i32 1, i32 0, i32 9
  %24 = ptrtoint ptr %quantization to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %quantization, align 1
  %quantization33 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 9
  %26 = ptrtoint ptr %quantization33 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %quantization33, align 1
  br label %cleanup

switch.hole_check:                                ; preds = %if.end5
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 5483, %switch.maskindex
  %27 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %switch.lobit.not = icmp eq i16 %27, 0
  br i1 %switch.lobit.not, label %switch.hole_check.if.then27_crit_edge, label %switch.hole_check.cleanup_crit_edge

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

switch.hole_check.if.then27_crit_edge:            ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then27

cleanup:                                          ; preds = %switch.hole_check.cleanup_crit_edge, %if.then27, %get_q_data.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %get_q_data.exit.cleanup_crit_edge ], [ 0, %if.then27 ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %switch.hole_check.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpe_s_fmt(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %priv, ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %pixelformat.i.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %2 = ptrtoint ptr %pixelformat.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pixelformat.i.i, align 4
  %4 = load i32, ptr @vpe_formats, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp2.i.i.i = icmp eq i32 %4, %3
  br i1 %cmp2.i.i.i, label %entry.find_format.exit.i_crit_edge, label %for.cond.i.i.i

entry.find_format.exit.i_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %find_format.exit.i

for.cond.i.i.i:                                   ; preds = %entry
  %5 = load i32, ptr getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %3)
  %cmp2.1.i.i.i = icmp eq i32 %5, %3
  br i1 %cmp2.1.i.i.i, label %for.cond.i.i.i.find_format.exit.i_crit_edge, label %for.cond.1.i.i.i

for.cond.i.i.i.find_format.exit.i_crit_edge:      ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %find_format.exit.i

for.cond.1.i.i.i:                                 ; preds = %for.cond.i.i.i
  %6 = load i32, ptr getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %3)
  %cmp2.2.i.i.i = icmp eq i32 %6, %3
  br i1 %cmp2.2.i.i.i, label %for.cond.1.i.i.i.find_format.exit.i_crit_edge, label %for.cond.2.i.i.i

for.cond.1.i.i.i.find_format.exit.i_crit_edge:    ; preds = %for.cond.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %find_format.exit.i

for.cond.2.i.i.i:                                 ; preds = %for.cond.1.i.i.i
  %7 = load i32, ptr getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %3)
  %cmp2.3.i.i.i = icmp eq i32 %7, %3
  br i1 %cmp2.3.i.i.i, label %for.cond.2.i.i.i.find_format.exit.i_crit_edge, label %for.cond.3.i.i.i

for.cond.2.i.i.i.find_format.exit.i_crit_edge:    ; preds = %for.cond.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %find_format.exit.i

for.cond.3.i.i.i:                                 ; preds = %for.cond.2.i.i.i
  %8 = load i32, ptr getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %3)
  %cmp2.4.i.i.i = icmp eq i32 %8, %3
  br i1 %cmp2.4.i.i.i, label %for.cond.3.i.i.i.find_format.exit.i_crit_edge, label %for.cond.4.i.i.i

for.cond.3.i.i.i.find_format.exit.i_crit_edge:    ; preds = %for.cond.3.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %find_format.exit.i

for.cond.4.i.i.i:                                 ; preds = %for.cond.3.i.i.i
  %9 = load i32, ptr getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %3)
  %cmp2.5.i.i.i = icmp eq i32 %9, %3
  br i1 %cmp2.5.i.i.i, label %for.cond.4.i.i.i.find_format.exit.i_crit_edge, label %for.cond.5.i.i.i

for.cond.4.i.i.i.find_format.exit.i_crit_edge:    ; preds = %for.cond.4.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %find_format.exit.i

for.cond.5.i.i.i:                                 ; preds = %for.cond.4.i.i.i
  %10 = load i32, ptr getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %3)
  %cmp2.6.i.i.i = icmp eq i32 %10, %3
  br i1 %cmp2.6.i.i.i, label %for.cond.5.i.i.i.find_format.exit.i_crit_edge, label %for.cond.6.i.i.i

for.cond.5.i.i.i.find_format.exit.i_crit_edge:    ; preds = %for.cond.5.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %find_format.exit.i

for.cond.6.i.i.i:                                 ; preds = %for.cond.5.i.i.i
  %11 = load i32, ptr getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %3)
  %cmp2.7.i.i.i = icmp eq i32 %11, %3
  br i1 %cmp2.7.i.i.i, label %for.cond.6.i.i.i.find_format.exit.i_crit_edge, label %for.cond.7.i.i.i

for.cond.6.i.i.i.find_format.exit.i_crit_edge:    ; preds = %for.cond.6.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %find_format.exit.i

for.cond.7.i.i.i:                                 ; preds = %for.cond.6.i.i.i
  %12 = load i32, ptr getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 8), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %3)
  %cmp2.8.i.i.i = icmp eq i32 %12, %3
  br i1 %cmp2.8.i.i.i, label %for.cond.7.i.i.i.find_format.exit.i_crit_edge, label %for.cond.8.i.i.i

for.cond.7.i.i.i.find_format.exit.i_crit_edge:    ; preds = %for.cond.7.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %find_format.exit.i

for.cond.8.i.i.i:                                 ; preds = %for.cond.7.i.i.i
  %13 = load i32, ptr getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 9), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %3)
  %cmp2.9.i.i.i = icmp eq i32 %13, %3
  br i1 %cmp2.9.i.i.i, label %for.cond.8.i.i.i.find_format.exit.i_crit_edge, label %for.cond.9.i.i.i

for.cond.8.i.i.i.find_format.exit.i_crit_edge:    ; preds = %for.cond.8.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %find_format.exit.i

for.cond.9.i.i.i:                                 ; preds = %for.cond.8.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %14 = load i32, ptr getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 10), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %3)
  %cmp2.10.i.i.i = icmp eq i32 %14, %3
  %spec.select.i.i.i = select i1 %cmp2.10.i.i.i, ptr getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 10), ptr null
  br label %find_format.exit.i

find_format.exit.i:                               ; preds = %for.cond.9.i.i.i, %for.cond.8.i.i.i.find_format.exit.i_crit_edge, %for.cond.7.i.i.i.find_format.exit.i_crit_edge, %for.cond.6.i.i.i.find_format.exit.i_crit_edge, %for.cond.5.i.i.i.find_format.exit.i_crit_edge, %for.cond.4.i.i.i.find_format.exit.i_crit_edge, %for.cond.3.i.i.i.find_format.exit.i_crit_edge, %for.cond.2.i.i.i.find_format.exit.i_crit_edge, %for.cond.1.i.i.i.find_format.exit.i_crit_edge, %for.cond.i.i.i.find_format.exit.i_crit_edge, %entry.find_format.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ @vpe_formats, %entry.find_format.exit.i_crit_edge ], [ getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 1), %for.cond.i.i.i.find_format.exit.i_crit_edge ], [ getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 2), %for.cond.1.i.i.i.find_format.exit.i_crit_edge ], [ getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 3), %for.cond.2.i.i.i.find_format.exit.i_crit_edge ], [ getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 4), %for.cond.3.i.i.i.find_format.exit.i_crit_edge ], [ getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 5), %for.cond.4.i.i.i.find_format.exit.i_crit_edge ], [ getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 6), %for.cond.5.i.i.i.find_format.exit.i_crit_edge ], [ getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 7), %for.cond.6.i.i.i.find_format.exit.i_crit_edge ], [ getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 8), %for.cond.7.i.i.i.find_format.exit.i_crit_edge ], [ getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 9), %for.cond.8.i.i.i.find_format.exit.i_crit_edge ], [ %spec.select.i.i.i, %for.cond.9.i.i.i ]
  %15 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %f, align 4
  %switch.tableidx = add i32 %16, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %switch.tableidx)
  %17 = icmp ult i32 %switch.tableidx, 13
  br i1 %17, label %switch.lookup, label %find_format.exit.i.vpe_try_fmt.exit_crit_edge

find_format.exit.i.vpe_try_fmt.exit_crit_edge:    ; preds = %find_format.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %vpe_try_fmt.exit

switch.lookup:                                    ; preds = %find_format.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %switch.gep = getelementptr inbounds [13 x i32], ptr @switch.table.vpe_s_fmt, i32 0, i32 %switch.tableidx
  %18 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %18)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %vpe_try_fmt.exit

vpe_try_fmt.exit:                                 ; preds = %switch.lookup, %find_format.exit.i.vpe_try_fmt.exit_crit_edge
  %.sink.i = phi i32 [ %switch.load, %switch.lookup ], [ 1, %find_format.exit.i.vpe_try_fmt.exit_crit_edge ]
  tail call fastcc void @__vpe_try_fmt(ptr noundef %1, ptr noundef %f, ptr noundef %retval.0.i.i.i, i32 noundef %.sink.i) #15
  %call1 = tail call fastcc i32 @__vpe_s_fmt(ptr noundef %1, ptr noundef %f)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %vpe_try_fmt.exit.cleanup_crit_edge

vpe_try_fmt.exit.cleanup_crit_edge:               ; preds = %vpe_try_fmt.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end4:                                          ; preds = %vpe_try_fmt.exit
  %19 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %f, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.146)
  switch i32 %20, label %if.else [
    i32 2, label %if.end4.if.then25_crit_edge
    i32 10, label %if.end4.if.then25_crit_edge48
    i32 3, label %if.end4.if.then25_crit_edge49
    i32 8, label %if.end4.if.then25_crit_edge50
    i32 5, label %if.end4.if.then25_crit_edge51
    i32 7, label %if.end4.if.then25_crit_edge52
    i32 12, label %if.end4.if.then25_crit_edge53
    i32 14, label %if.end4.if.then25_crit_edge54
  ]

if.end4.if.then25_crit_edge54:                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then25

if.end4.if.then25_crit_edge53:                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then25

if.end4.if.then25_crit_edge52:                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then25

if.end4.if.then25_crit_edge51:                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then25

if.end4.if.then25_crit_edge50:                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then25

if.end4.if.then25_crit_edge49:                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then25

if.end4.if.then25_crit_edge48:                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then25

if.end4.if.then25_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then25

if.then25:                                        ; preds = %if.end4.if.then25_crit_edge, %if.end4.if.then25_crit_edge48, %if.end4.if.then25_crit_edge49, %if.end4.if.then25_crit_edge50, %if.end4.if.then25_crit_edge51, %if.end4.if.then25_crit_edge52, %if.end4.if.then25_crit_edge53, %if.end4.if.then25_crit_edge54
  %flags.i.i = getelementptr inbounds %struct.vpe_ctx, ptr %1, i32 0, i32 8, i32 0, i32 1
  %22 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %23, 28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr @us_coeffs, ptr getelementptr inbounds ([2 x %struct.vpe_us_coeffs], ptr @us_coeffs, i32 0, i32 1, i32 0)
  %add.ptr5.i.i = select i1 %tobool.not.i.i, ptr getelementptr inbounds ([2 x %struct.vpe_us_coeffs], ptr @us_coeffs, i32 0, i32 1, i32 0), ptr getelementptr inbounds ([2 x %struct.vpe_us_coeffs], ptr @us_coeffs, i32 1, i32 0, i32 0)
  %cmp26.i.i = icmp ult ptr %spec.select.i.i, %add.ptr5.i.i
  br i1 %cmp26.i.i, label %while.body.preheader.i.i, label %if.then25.if.end26_crit_edge

if.then25.if.end26_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end26

while.body.preheader.i.i:                         ; preds = %if.then25
  %mmr_adb1.i.i = getelementptr inbounds %struct.vpe_ctx, ptr %1, i32 0, i32 14
  %24 = ptrtoint ptr %mmr_adb1.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mmr_adb1.i.i, align 4
  %us3_regs.i.i = getelementptr inbounds %struct.vpe_mmr_adb, ptr %25, i32 0, i32 8
  %us2_regs.i.i = getelementptr inbounds %struct.vpe_mmr_adb, ptr %25, i32 0, i32 6
  %us1_regs.i.i = getelementptr inbounds %struct.vpe_mmr_adb, ptr %25, i32 0, i32 4
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.body.preheader.i.i
  %cp.130.i.i = phi ptr [ %incdec.ptr6.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %spec.select.i.i, %while.body.preheader.i.i ]
  %us3_reg.029.i.i = phi ptr [ %incdec.ptr10.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %us3_regs.i.i, %while.body.preheader.i.i ]
  %us2_reg.028.i.i = phi ptr [ %incdec.ptr8.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %us2_regs.i.i, %while.body.preheader.i.i ]
  %us1_reg.027.i.i = phi ptr [ %incdec.ptr9.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %us1_regs.i.i, %while.body.preheader.i.i ]
  %incdec.ptr.i.i = getelementptr i16, ptr %cp.130.i.i, i32 1
  %26 = ptrtoint ptr %cp.130.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %cp.130.i.i, align 2
  %28 = ptrtoint ptr %us1_reg.027.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %us1_reg.027.i.i, align 4
  %and.i.i.i = and i32 %29, 262143
  %30 = and i16 %27, 16383
  %and1.i.i.i = zext i16 %30 to i32
  %shl2.i.i.i = shl nuw i32 %and1.i.i.i, 18
  %or.i.i.i = or i32 %shl2.i.i.i, %and.i.i.i
  store i32 %or.i.i.i, ptr %us1_reg.027.i.i, align 4
  %incdec.ptr6.i.i = getelementptr i16, ptr %cp.130.i.i, i32 2
  %31 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %incdec.ptr.i.i, align 2
  %and.i22.i.i = and i32 %or.i.i.i, -65533
  %33 = shl i16 %32, 2
  %shl2.i24.i.i = zext i16 %33 to i32
  %or.i25.i.i = or i32 %and.i22.i.i, %shl2.i24.i.i
  store i32 %or.i25.i.i, ptr %us1_reg.027.i.i, align 4
  %incdec.ptr8.i.i = getelementptr i32, ptr %us2_reg.028.i.i, i32 1
  %34 = ptrtoint ptr %us2_reg.028.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %or.i25.i.i, ptr %us2_reg.028.i.i, align 4
  %incdec.ptr9.i.i = getelementptr i32, ptr %us1_reg.027.i.i, i32 1
  %incdec.ptr10.i.i = getelementptr i32, ptr %us3_reg.029.i.i, i32 1
  %35 = ptrtoint ptr %us3_reg.029.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %or.i25.i.i, ptr %us3_reg.029.i.i, align 4
  %cmp.i.i = icmp ult ptr %incdec.ptr6.i.i, %add.ptr5.i.i
  br i1 %cmp.i.i, label %while.body.i.i.while.body.i.i_crit_edge, label %while.body.i.i.if.end26_crit_edge

while.body.i.i.if.end26_crit_edge:                ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end26

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i.i

if.else:                                          ; preds = %if.end4
  %mmr_adb1.i = getelementptr inbounds %struct.vpe_ctx, ptr %1, i32 0, i32 14
  %36 = ptrtoint ptr %mmr_adb1.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mmr_adb1.i, align 4
  %fmt2.i = getelementptr %struct.vpe_ctx, ptr %1, i32 0, i32 8, i32 1, i32 3
  %38 = ptrtoint ptr %fmt2.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %fmt2.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 4
  %call.i = tail call ptr @v4l2_format_info(i32 noundef %41) #15
  %tobool.not.i.i45 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i.i45, label %if.else.if.else.i47_crit_edge, label %v4l2_is_format_rgb.exit.i

if.else.if.else.i47_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i47

v4l2_is_format_rgb.exit.i:                        ; preds = %if.else
  %pixel_enc.i.i = getelementptr inbounds %struct.v4l2_format_info, ptr %call.i, i32 0, i32 1
  %42 = ptrtoint ptr %pixel_enc.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %pixel_enc.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %43)
  %cmp.i.i46 = icmp eq i8 %43, 2
  br i1 %cmp.i.i46, label %if.then.i, label %v4l2_is_format_rgb.exit.i.if.else.i47_crit_edge

v4l2_is_format_rgb.exit.i.if.else.i47_crit_edge:  ; preds = %v4l2_is_format_rgb.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i47

if.then.i:                                        ; preds = %v4l2_is_format_rgb.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %dev.i = getelementptr inbounds %struct.vpe_ctx, ptr %1, i32 0, i32 1
  %44 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev.i, align 4
  %vpdma.i = getelementptr inbounds %struct.vpe_dev, ptr %45, i32 0, i32 11
  %46 = ptrtoint ptr %vpdma.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %vpdma.i, align 8
  %vpdma_fmt.i = getelementptr inbounds %struct.vpe_fmt, ptr %39, i32 0, i32 3
  %48 = ptrtoint ptr %vpdma_fmt.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %vpdma_fmt.i, align 4
  tail call void @vpdma_set_bg_color(ptr noundef %47, ptr noundef %49, i32 noundef 255) #15
  %50 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %50)
  %.pr.i = load i32, ptr %39, align 4
  br label %if.end8.i

if.else.i47:                                      ; preds = %v4l2_is_format_rgb.exit.i.if.else.i47_crit_edge, %if.else.if.else.i47_crit_edge
  %51 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 909203022, i32 %52)
  %cmp.i = icmp eq i32 %52, 909203022
  %spec.select.i = select i1 %cmp.i, i32 264707, i32 2563
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.else.i47, %if.then.i
  %53 = phi i32 [ %52, %if.else.i47 ], [ %.pr.i, %if.then.i ]
  %val.0.i = phi i32 [ %spec.select.i, %if.else.i47 ], [ 2819, %if.then.i ]
  %54 = zext i32 %53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.147)
  switch i32 %53, label %if.then14.i [
    i32 842094158, label %if.end8.i.set_dst_registers.exit_crit_edge
    i32 825382478, label %if.end8.i.set_dst_registers.exit_crit_edge55
  ]

if.end8.i.set_dst_registers.exit_crit_edge55:     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %set_dst_registers.exit

if.end8.i.set_dst_registers.exit_crit_edge:       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %set_dst_registers.exit

if.then14.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #17
  %or15.i = or i32 %val.0.i, 65536
  br label %set_dst_registers.exit

set_dst_registers.exit:                           ; preds = %if.then14.i, %if.end8.i.set_dst_registers.exit_crit_edge, %if.end8.i.set_dst_registers.exit_crit_edge55
  %val.1.i = phi i32 [ %or15.i, %if.then14.i ], [ %val.0.i, %if.end8.i.set_dst_registers.exit_crit_edge ], [ %val.0.i, %if.end8.i.set_dst_registers.exit_crit_edge55 ]
  %out_fmt_reg.i = getelementptr inbounds %struct.vpe_mmr_adb, ptr %37, i32 0, i32 1
  %55 = ptrtoint ptr %out_fmt_reg.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %val.1.i, ptr %out_fmt_reg.i, align 4
  br label %if.end26

if.end26:                                         ; preds = %set_dst_registers.exit, %while.body.i.i.if.end26_crit_edge, %if.then25.if.end26_crit_edge
  %load_mmrs.i = getelementptr inbounds %struct.vpe_ctx, ptr %1, i32 0, i32 19
  %56 = ptrtoint ptr %load_mmrs.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 1, ptr %load_mmrs.i, align 1
  %call27 = tail call fastcc i32 @set_srcdst_params(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %vpe_try_fmt.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call27, %if.end26 ], [ %call1, %vpe_try_fmt.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpe_try_fmt(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %priv, ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %pixelformat.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %2 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pixelformat.i, align 4
  %4 = load i32, ptr @vpe_formats, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp2.i.i = icmp eq i32 %4, %3
  br i1 %cmp2.i.i, label %entry.find_format.exit_crit_edge, label %for.cond.i.i

entry.find_format.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %find_format.exit

for.cond.i.i:                                     ; preds = %entry
  %5 = load i32, ptr getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %3)
  %cmp2.1.i.i = icmp eq i32 %5, %3
  br i1 %cmp2.1.i.i, label %for.cond.i.i.find_format.exit_crit_edge, label %for.cond.1.i.i

for.cond.i.i.find_format.exit_crit_edge:          ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %find_format.exit

for.cond.1.i.i:                                   ; preds = %for.cond.i.i
  %6 = load i32, ptr getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %3)
  %cmp2.2.i.i = icmp eq i32 %6, %3
  br i1 %cmp2.2.i.i, label %for.cond.1.i.i.find_format.exit_crit_edge, label %for.cond.2.i.i

for.cond.1.i.i.find_format.exit_crit_edge:        ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %find_format.exit

for.cond.2.i.i:                                   ; preds = %for.cond.1.i.i
  %7 = load i32, ptr getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %3)
  %cmp2.3.i.i = icmp eq i32 %7, %3
  br i1 %cmp2.3.i.i, label %for.cond.2.i.i.find_format.exit_crit_edge, label %for.cond.3.i.i

for.cond.2.i.i.find_format.exit_crit_edge:        ; preds = %for.cond.2.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %find_format.exit

for.cond.3.i.i:                                   ; preds = %for.cond.2.i.i
  %8 = load i32, ptr getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %3)
  %cmp2.4.i.i = icmp eq i32 %8, %3
  br i1 %cmp2.4.i.i, label %for.cond.3.i.i.find_format.exit_crit_edge, label %for.cond.4.i.i

for.cond.3.i.i.find_format.exit_crit_edge:        ; preds = %for.cond.3.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %find_format.exit

for.cond.4.i.i:                                   ; preds = %for.cond.3.i.i
  %9 = load i32, ptr getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %3)
  %cmp2.5.i.i = icmp eq i32 %9, %3
  br i1 %cmp2.5.i.i, label %for.cond.4.i.i.find_format.exit_crit_edge, label %for.cond.5.i.i

for.cond.4.i.i.find_format.exit_crit_edge:        ; preds = %for.cond.4.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %find_format.exit

for.cond.5.i.i:                                   ; preds = %for.cond.4.i.i
  %10 = load i32, ptr getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %3)
  %cmp2.6.i.i = icmp eq i32 %10, %3
  br i1 %cmp2.6.i.i, label %for.cond.5.i.i.find_format.exit_crit_edge, label %for.cond.6.i.i

for.cond.5.i.i.find_format.exit_crit_edge:        ; preds = %for.cond.5.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %find_format.exit

for.cond.6.i.i:                                   ; preds = %for.cond.5.i.i
  %11 = load i32, ptr getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %3)
  %cmp2.7.i.i = icmp eq i32 %11, %3
  br i1 %cmp2.7.i.i, label %for.cond.6.i.i.find_format.exit_crit_edge, label %for.cond.7.i.i

for.cond.6.i.i.find_format.exit_crit_edge:        ; preds = %for.cond.6.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %find_format.exit

for.cond.7.i.i:                                   ; preds = %for.cond.6.i.i
  %12 = load i32, ptr getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 8), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %3)
  %cmp2.8.i.i = icmp eq i32 %12, %3
  br i1 %cmp2.8.i.i, label %for.cond.7.i.i.find_format.exit_crit_edge, label %for.cond.8.i.i

for.cond.7.i.i.find_format.exit_crit_edge:        ; preds = %for.cond.7.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %find_format.exit

for.cond.8.i.i:                                   ; preds = %for.cond.7.i.i
  %13 = load i32, ptr getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 9), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %3)
  %cmp2.9.i.i = icmp eq i32 %13, %3
  br i1 %cmp2.9.i.i, label %for.cond.8.i.i.find_format.exit_crit_edge, label %for.cond.9.i.i

for.cond.8.i.i.find_format.exit_crit_edge:        ; preds = %for.cond.8.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %find_format.exit

for.cond.9.i.i:                                   ; preds = %for.cond.8.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %14 = load i32, ptr getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 10), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %3)
  %cmp2.10.i.i = icmp eq i32 %14, %3
  %spec.select.i.i = select i1 %cmp2.10.i.i, ptr getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 10), ptr null
  br label %find_format.exit

find_format.exit:                                 ; preds = %for.cond.9.i.i, %for.cond.8.i.i.find_format.exit_crit_edge, %for.cond.7.i.i.find_format.exit_crit_edge, %for.cond.6.i.i.find_format.exit_crit_edge, %for.cond.5.i.i.find_format.exit_crit_edge, %for.cond.4.i.i.find_format.exit_crit_edge, %for.cond.3.i.i.find_format.exit_crit_edge, %for.cond.2.i.i.find_format.exit_crit_edge, %for.cond.1.i.i.find_format.exit_crit_edge, %for.cond.i.i.find_format.exit_crit_edge, %entry.find_format.exit_crit_edge
  %retval.0.i.i = phi ptr [ @vpe_formats, %entry.find_format.exit_crit_edge ], [ getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 1), %for.cond.i.i.find_format.exit_crit_edge ], [ getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 2), %for.cond.1.i.i.find_format.exit_crit_edge ], [ getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 3), %for.cond.2.i.i.find_format.exit_crit_edge ], [ getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 4), %for.cond.3.i.i.find_format.exit_crit_edge ], [ getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 5), %for.cond.4.i.i.find_format.exit_crit_edge ], [ getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 6), %for.cond.5.i.i.find_format.exit_crit_edge ], [ getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 7), %for.cond.6.i.i.find_format.exit_crit_edge ], [ getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 8), %for.cond.7.i.i.find_format.exit_crit_edge ], [ getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 9), %for.cond.8.i.i.find_format.exit_crit_edge ], [ %spec.select.i.i, %for.cond.9.i.i ]
  %15 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %f, align 4
  %switch.tableidx = add i32 %16, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %switch.tableidx)
  %17 = icmp ult i32 %switch.tableidx, 13
  br i1 %17, label %switch.lookup, label %find_format.exit.cleanup_crit_edge

find_format.exit.cleanup_crit_edge:               ; preds = %find_format.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

switch.lookup:                                    ; preds = %find_format.exit
  call void @__sanitizer_cov_trace_pc() #17
  %switch.gep = getelementptr inbounds [13 x i32], ptr @switch.table.vpe_try_fmt, i32 0, i32 %switch.tableidx
  %18 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %18)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %find_format.exit.cleanup_crit_edge
  %.sink = phi i32 [ %switch.load, %switch.lookup ], [ 1, %find_format.exit.cleanup_crit_edge ]
  tail call fastcc void @__vpe_try_fmt(ptr noundef %1, ptr noundef %f, ptr noundef %retval.0.i.i, i32 noundef %.sink)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_reqbufs(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_querybuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_qbuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_expbuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_dqbuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_streamon(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_streamoff(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vpe_g_selection(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %s) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s, align 4
  %.off = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.148)
  switch i32 %3, label %if.end.cleanup_crit_edge [
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb.i
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb.i:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %q_data.i = getelementptr inbounds %struct.vpe_ctx, ptr %1, i32 0, i32 8
  br label %get_q_data.exit

sw.bb1.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx3.i = getelementptr %struct.vpe_ctx, ptr %1, i32 0, i32 8, i32 1
  br label %get_q_data.exit

get_q_data.exit:                                  ; preds = %sw.bb1.i, %sw.bb.i
  %retval.0.i = phi ptr [ %arrayidx3.i, %sw.bb1.i ], [ %q_data.i, %sw.bb.i ]
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %get_q_data.exit.cleanup_crit_edge, label %if.end5

get_q_data.exit.cleanup_crit_edge:                ; preds = %get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end5:                                          ; preds = %get_q_data.exit
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %retval.0.i, i32 0, i32 1
  %target = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 1
  %5 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %target, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.149)
  switch i32 %6, label %if.end5.cleanup_crit_edge [
    i32 257, label %if.end5.sw.bb_crit_edge
    i32 258, label %if.end5.sw.bb_crit_edge55
    i32 2, label %if.end5.sw.bb10_crit_edge
    i32 1, label %if.end5.sw.bb10_crit_edge56
    i32 256, label %sw.bb15
    i32 0, label %sw.bb20
  ]

if.end5.sw.bb10_crit_edge56:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb10

if.end5.sw.bb10_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb10

if.end5.sw.bb_crit_edge55:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

if.end5.sw.bb_crit_edge:                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb:                                            ; preds = %if.end5.sw.bb_crit_edge, %if.end5.sw.bb_crit_edge55
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp7 = icmp eq i32 %3, 2
  br i1 %cmp7, label %sw.bb.cleanup_crit_edge, label %sw.bb.if.else_crit_edge

sw.bb.if.else_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb10:                                          ; preds = %if.end5.sw.bb10_crit_edge, %if.end5.sw.bb10_crit_edge56
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp12 = icmp eq i32 %3, 1
  br i1 %cmp12, label %sw.bb10.cleanup_crit_edge, label %sw.bb10.if.else_crit_edge

sw.bb10.if.else_crit_edge:                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

sw.bb10.cleanup_crit_edge:                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb15:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp17 = icmp eq i32 %3, 2
  br i1 %cmp17, label %sw.bb15.cleanup_crit_edge, label %sw.bb15.if.then26_crit_edge

sw.bb15.if.then26_crit_edge:                      ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then26

sw.bb15.cleanup_crit_edge:                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb20:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp22 = icmp eq i32 %3, 1
  br i1 %cmp22, label %sw.bb20.cleanup_crit_edge, label %sw.bb20.if.then26_crit_edge

sw.bb20.if.then26_crit_edge:                      ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then26

sw.bb20.cleanup_crit_edge:                        ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then26:                                        ; preds = %sw.bb20.if.then26_crit_edge, %sw.bb15.if.then26_crit_edge
  %r = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3
  %c_rect = getelementptr inbounds %struct.vpe_q_data, ptr %retval.0.i, i32 0, i32 2
  %8 = call ptr @memcpy(ptr %r, ptr %c_rect, i32 16)
  br label %cleanup

if.else:                                          ; preds = %sw.bb10.if.else_crit_edge, %sw.bb.if.else_crit_edge
  %r27 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3
  %9 = ptrtoint ptr %r27 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %r27, align 4
  %top = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %top, align 4
  %11 = ptrtoint ptr %fmt to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %fmt, align 1
  %width30 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 2
  %13 = ptrtoint ptr %width30 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %width30, align 4
  %height = getelementptr inbounds %struct.v4l2_format, ptr %retval.0.i, i32 0, i32 1, i32 0, i32 1
  %14 = ptrtoint ptr %height to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %height, align 1
  %height32 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 3
  %16 = ptrtoint ptr %height32 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %height32, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then26, %sw.bb20.cleanup_crit_edge, %sw.bb15.cleanup_crit_edge, %sw.bb10.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %get_q_data.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %get_q_data.exit.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb10.cleanup_crit_edge ], [ -22, %sw.bb15.cleanup_crit_edge ], [ -22, %sw.bb20.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ], [ 0, %if.else ], [ 0, %if.then26 ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpe_s_selection(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef readonly %s) #2 align 64 {
entry:
  %sel = alloca %struct.v4l2_selection, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %sel) #15
  %2 = call ptr @memcpy(ptr %sel, ptr %s, i32 64)
  %3 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sel, align 4
  %.off.i = add i32 %4, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.150)
  switch i32 %4, label %if.end.i.cleanup_crit_edge [
    i32 1, label %sw.bb1.i.i
    i32 2, label %sw.bb.i.i
  ]

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb.i.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %q_data.i.i = getelementptr inbounds %struct.vpe_ctx, ptr %1, i32 0, i32 8
  br label %get_q_data.exit.i

sw.bb1.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx3.i.i = getelementptr %struct.vpe_ctx, ptr %1, i32 0, i32 8, i32 1
  br label %get_q_data.exit.i

get_q_data.exit.i:                                ; preds = %sw.bb1.i.i, %sw.bb.i.i
  %retval.0.i.i = phi ptr [ %arrayidx3.i.i, %sw.bb1.i.i ], [ %q_data.i.i, %sw.bb.i.i ]
  %tobool.not.i = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool.not.i, label %get_q_data.exit.i.cleanup_crit_edge, label %if.end5.i

get_q_data.exit.i.cleanup_crit_edge:              ; preds = %get_q_data.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end5.i:                                        ; preds = %get_q_data.exit.i
  %fmt.i = getelementptr inbounds %struct.v4l2_format, ptr %retval.0.i.i, i32 0, i32 1
  %target.i = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 1
  %6 = ptrtoint ptr %target.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %target.i, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.151)
  switch i32 %7, label %if.end5.i.cleanup_crit_edge [
    i32 256, label %sw.bb.i
    i32 0, label %sw.bb10.i
  ]

if.end5.i.cleanup_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb.i:                                          ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp7.i = icmp eq i32 %4, 2
  br i1 %cmp7.i, label %sw.bb.i.cleanup_crit_edge, label %sw.bb.i.sw.epilog.i_crit_edge

sw.bb.i.sw.epilog.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.i

sw.bb.i.cleanup_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb10.i:                                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp12.i = icmp eq i32 %4, 1
  br i1 %cmp12.i, label %sw.bb10.i.cleanup_crit_edge, label %sw.bb10.i.sw.epilog.i_crit_edge

sw.bb10.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.i

sw.bb10.i.cleanup_crit_edge:                      ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.epilog.i:                                      ; preds = %sw.bb10.i.sw.epilog.i_crit_edge, %sw.bb.i.sw.epilog.i_crit_edge
  %flags.i = getelementptr inbounds %struct.vpe_q_data, ptr %retval.0.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %10, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool15.not.i = icmp ne i32 %and.i, 0
  %height18.i = getelementptr inbounds %struct.v4l2_format, ptr %retval.0.i.i, i32 0, i32 1, i32 0, i32 1
  %11 = ptrtoint ptr %height18.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %height18.i, align 1
  %div94.i = zext i1 %tobool15.not.i to i32
  %height.0.i = lshr i32 %12, %div94.i
  %r.i = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3
  %top.i = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %top.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %top.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp20.i = icmp slt i32 %14, 0
  br i1 %cmp20.i, label %sw.epilog.i.do.end.i_crit_edge, label %lor.lhs.false.i

sw.epilog.i.do.end.i_crit_edge:                   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %sw.epilog.i
  %15 = ptrtoint ptr %r.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %r.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp22.i = icmp slt i32 %16, 0
  br i1 %cmp22.i, label %lor.lhs.false.i.do.end.i_crit_edge, label %lor.lhs.false.i.if.end29.i_crit_edge

lor.lhs.false.i.if.end29.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end29.i

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i

do.end.i:                                         ; preds = %lor.lhs.false.i.do.end.i_crit_edge, %sw.epilog.i.do.end.i_crit_edge
  %dev.i = getelementptr inbounds %struct.vpe_ctx, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.131) #18
  %21 = ptrtoint ptr %r.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %r.i, align 4
  %22 = ptrtoint ptr %top.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %top.i, align 4
  br label %if.end29.i

if.end29.i:                                       ; preds = %do.end.i, %lor.lhs.false.i.if.end29.i_crit_edge
  %width.i = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3, i32 2
  %23 = ptrtoint ptr %fmt.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %fmt.i, align 1
  %height33.i = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3, i32 3
  call void @v4l_bound_align_image(ptr noundef %width.i, i32 noundef 32, i32 noundef %24, i32 noundef 1, ptr noundef %height33.i, i32 noundef 32, i32 noundef %height.0.i, i32 noundef 1, i32 noundef 0) #15
  %25 = ptrtoint ptr %r.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %r.i, align 4
  %27 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %width.i, align 4
  %add.i = add i32 %28, %26
  %29 = ptrtoint ptr %fmt.i to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %fmt.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %30)
  %cmp39.i = icmp ugt i32 %add.i, %30
  br i1 %cmp39.i, label %if.then40.i, label %if.end29.i.if.end46.i_crit_edge

if.end29.i.if.end46.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end46.i

if.then40.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i = sub i32 %30, %28
  %31 = ptrtoint ptr %r.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %sub.i, ptr %r.i, align 4
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.then40.i, %if.end29.i.if.end46.i_crit_edge
  %32 = ptrtoint ptr %top.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %top.i, align 4
  %34 = ptrtoint ptr %height33.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %height33.i, align 4
  %add51.i = add i32 %35, %33
  %36 = ptrtoint ptr %height18.i to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %37 = load i32, ptr %height18.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add51.i, i32 %37)
  %cmp53.i = icmp ugt i32 %add51.i, %37
  br i1 %cmp53.i, label %if.then54.i, label %if.end46.i.if.end_crit_edge

if.end46.i.if.end_crit_edge:                      ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then54.i:                                      ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #17
  %sub58.i = sub i32 %37, %35
  %38 = ptrtoint ptr %top.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %sub58.i, ptr %top.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then54.i, %if.end46.i.if.end_crit_edge
  %39 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %sel, align 4
  %41 = zext i32 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.152)
  switch i32 %40, label %if.end.cleanup_crit_edge [
    i32 10, label %if.end.sw.bb.i46_crit_edge
    i32 2, label %if.end.sw.bb.i46_crit_edge53
    i32 9, label %if.end.sw.bb1.i_crit_edge
    i32 1, label %if.end.sw.bb1.i_crit_edge54
  ]

if.end.sw.bb1.i_crit_edge54:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb1.i

if.end.sw.bb1.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb1.i

if.end.sw.bb.i46_crit_edge53:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i46

if.end.sw.bb.i46_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i46

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb.i46:                                        ; preds = %if.end.sw.bb.i46_crit_edge, %if.end.sw.bb.i46_crit_edge53
  %q_data.i = getelementptr inbounds %struct.vpe_ctx, ptr %1, i32 0, i32 8
  br label %get_q_data.exit

sw.bb1.i:                                         ; preds = %if.end.sw.bb1.i_crit_edge, %if.end.sw.bb1.i_crit_edge54
  %arrayidx3.i = getelementptr %struct.vpe_ctx, ptr %1, i32 0, i32 8, i32 1
  br label %get_q_data.exit

get_q_data.exit:                                  ; preds = %sw.bb1.i, %sw.bb.i46
  %retval.0.i47 = phi ptr [ %arrayidx3.i, %sw.bb1.i ], [ %q_data.i, %sw.bb.i46 ]
  %tobool2.not = icmp eq ptr %retval.0.i47, null
  br i1 %tobool2.not, label %get_q_data.exit.cleanup_crit_edge, label %if.end4

get_q_data.exit.cleanup_crit_edge:                ; preds = %get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end4:                                          ; preds = %get_q_data.exit
  %c_rect = getelementptr inbounds %struct.vpe_q_data, ptr %retval.0.i47, i32 0, i32 2
  %42 = ptrtoint ptr %c_rect to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %c_rect, align 4
  %44 = ptrtoint ptr %r.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %r.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %45)
  %cmp = icmp eq i32 %43, %45
  br i1 %cmp, label %land.lhs.true, label %if.end4.if.end29_crit_edge

if.end4.if.end29_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end29

land.lhs.true:                                    ; preds = %if.end4
  %top = getelementptr inbounds %struct.vpe_q_data, ptr %retval.0.i47, i32 0, i32 2, i32 1
  %46 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %top, align 4
  %48 = ptrtoint ptr %top.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %top.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %49)
  %cmp9 = icmp eq i32 %47, %49
  br i1 %cmp9, label %land.lhs.true10, label %land.lhs.true.if.end29_crit_edge

land.lhs.true.if.end29_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end29

land.lhs.true10:                                  ; preds = %land.lhs.true
  %width = getelementptr inbounds %struct.vpe_q_data, ptr %retval.0.i47, i32 0, i32 2, i32 2
  %50 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %width, align 4
  %52 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %width.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %53)
  %cmp14 = icmp eq i32 %51, %53
  br i1 %cmp14, label %land.lhs.true15, label %land.lhs.true10.if.end29_crit_edge

land.lhs.true10.if.end29_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end29

land.lhs.true15:                                  ; preds = %land.lhs.true10
  %height = getelementptr inbounds %struct.vpe_q_data, ptr %retval.0.i47, i32 0, i32 2, i32 3
  %54 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %height, align 4
  %56 = ptrtoint ptr %height33.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %height33.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %57)
  %cmp19 = icmp eq i32 %55, %57
  br i1 %cmp19, label %do.body, label %land.lhs.true15.if.end29_crit_edge

land.lhs.true15.if.end29_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end29

do.body:                                          ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vpe_s_selection.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vpe_s_selection, %cleanup)) #15
          to label %if.then26 [label %cleanup], !srcloc !386

if.then26:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %dev = getelementptr inbounds %struct.vpe_ctx, ptr %1, i32 0, i32 1
  %58 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vpe_s_selection.__UNIQUE_ID_ddebug361, ptr noundef %61, ptr noundef nonnull @.str.130) #15
  br label %cleanup

if.end29:                                         ; preds = %land.lhs.true15.if.end29_crit_edge, %land.lhs.true10.if.end29_crit_edge, %land.lhs.true.if.end29_crit_edge, %if.end4.if.end29_crit_edge
  %62 = call ptr @memcpy(ptr %c_rect, ptr %r.i, i32 16)
  %call32 = call fastcc i32 @set_srcdst_params(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.then26, %do.body, %get_q_data.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %sw.bb10.i.cleanup_crit_edge, %sw.bb.i.cleanup_crit_edge, %if.end5.i.cleanup_crit_edge, %get_q_data.exit.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call32, %if.end29 ], [ -22, %get_q_data.exit.cleanup_crit_edge ], [ 0, %if.then26 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %get_q_data.exit.i.cleanup_crit_edge ], [ -22, %sw.bb.i.cleanup_crit_edge ], [ -22, %sw.bb10.i.cleanup_crit_edge ], [ -22, %if.end5.i.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %do.body ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %sel) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subscribe_event(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #14

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__enum_fmt(ptr nocapture noundef %f, i32 noundef %type) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 0, i32 1), align 4
  %conv = zext i8 %0 to i32
  %and = and i32 %conv, %type
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then:                                          ; preds = %entry
  %1 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp2 = icmp eq i32 %2, 0
  br i1 %cmp2, label %if.then.for.end_crit_edge, label %if.then.for.inc_crit_edge

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.inc:                                          ; preds = %if.then.for.inc_crit_edge, %entry.for.inc_crit_edge
  %index.1 = phi i32 [ 0, %entry.for.inc_crit_edge ], [ 1, %if.then.for.inc_crit_edge ]
  %3 = load i8, ptr getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 1, i32 1), align 4
  %conv.1 = zext i8 %3 to i32
  %and.1 = and i32 %conv.1, %type
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  %4 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %index.1, i32 %5)
  %cmp2.1 = icmp eq i32 %index.1, %5
  br i1 %cmp2.1, label %if.then.1.for.end_crit_edge, label %if.end.1

if.then.1.for.end_crit_edge:                      ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

if.end.1:                                         ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #17
  %inc.1 = add nuw nsw i32 %index.1, 1
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end.1, %for.inc.for.inc.1_crit_edge
  %index.1.1 = phi i32 [ %inc.1, %if.end.1 ], [ %index.1, %for.inc.for.inc.1_crit_edge ]
  %6 = load i8, ptr getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 2, i32 1), align 4
  %conv.2 = zext i8 %6 to i32
  %and.2 = and i32 %conv.2, %type
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  %7 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %index.1.1, i32 %8)
  %cmp2.2 = icmp eq i32 %index.1.1, %8
  br i1 %cmp2.2, label %if.then.2.for.end_crit_edge, label %if.end.2

if.then.2.for.end_crit_edge:                      ; preds = %if.then.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

if.end.2:                                         ; preds = %if.then.2
  call void @__sanitizer_cov_trace_pc() #17
  %inc.2 = add nuw nsw i32 %index.1.1, 1
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end.2, %for.inc.1.for.inc.2_crit_edge
  %index.1.2 = phi i32 [ %inc.2, %if.end.2 ], [ %index.1.1, %for.inc.1.for.inc.2_crit_edge ]
  %9 = load i8, ptr getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 3, i32 1), align 4
  %conv.3 = zext i8 %9 to i32
  %and.3 = and i32 %conv.3, %type
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  %10 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %index.1.2, i32 %11)
  %cmp2.3 = icmp eq i32 %index.1.2, %11
  br i1 %cmp2.3, label %if.then.3.for.end_crit_edge, label %if.end.3

if.then.3.for.end_crit_edge:                      ; preds = %if.then.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

if.end.3:                                         ; preds = %if.then.3
  call void @__sanitizer_cov_trace_pc() #17
  %inc.3 = add nuw nsw i32 %index.1.2, 1
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.end.3, %for.inc.2.for.inc.3_crit_edge
  %index.1.3 = phi i32 [ %inc.3, %if.end.3 ], [ %index.1.2, %for.inc.2.for.inc.3_crit_edge ]
  %12 = load i8, ptr getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 4, i32 1), align 4
  %conv.4 = zext i8 %12 to i32
  %and.4 = and i32 %conv.4, %type
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool.not.4 = icmp eq i32 %and.4, 0
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.4

if.then.4:                                        ; preds = %for.inc.3
  %13 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %index.1.3, i32 %14)
  %cmp2.4 = icmp eq i32 %index.1.3, %14
  br i1 %cmp2.4, label %if.then.4.for.end_crit_edge, label %if.end.4

if.then.4.for.end_crit_edge:                      ; preds = %if.then.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

if.end.4:                                         ; preds = %if.then.4
  call void @__sanitizer_cov_trace_pc() #17
  %inc.4 = add nuw nsw i32 %index.1.3, 1
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.end.4, %for.inc.3.for.inc.4_crit_edge
  %index.1.4 = phi i32 [ %inc.4, %if.end.4 ], [ %index.1.3, %for.inc.3.for.inc.4_crit_edge ]
  %15 = load i8, ptr getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 5, i32 1), align 4
  %conv.5 = zext i8 %15 to i32
  %and.5 = and i32 %conv.5, %type
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5)
  %tobool.not.5 = icmp eq i32 %and.5, 0
  br i1 %tobool.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.5

if.then.5:                                        ; preds = %for.inc.4
  %16 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %index.1.4, i32 %17)
  %cmp2.5 = icmp eq i32 %index.1.4, %17
  br i1 %cmp2.5, label %if.then.5.for.end_crit_edge, label %if.end.5

if.then.5.for.end_crit_edge:                      ; preds = %if.then.5
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

if.end.5:                                         ; preds = %if.then.5
  call void @__sanitizer_cov_trace_pc() #17
  %inc.5 = add nuw nsw i32 %index.1.4, 1
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.end.5, %for.inc.4.for.inc.5_crit_edge
  %index.1.5 = phi i32 [ %inc.5, %if.end.5 ], [ %index.1.4, %for.inc.4.for.inc.5_crit_edge ]
  %18 = load i8, ptr getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 6, i32 1), align 4
  %conv.6 = zext i8 %18 to i32
  %and.6 = and i32 %conv.6, %type
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6)
  %tobool.not.6 = icmp eq i32 %and.6, 0
  br i1 %tobool.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.then.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.6

if.then.6:                                        ; preds = %for.inc.5
  %19 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %index.1.5, i32 %20)
  %cmp2.6 = icmp eq i32 %index.1.5, %20
  br i1 %cmp2.6, label %if.then.6.for.end_crit_edge, label %if.end.6

if.then.6.for.end_crit_edge:                      ; preds = %if.then.6
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

if.end.6:                                         ; preds = %if.then.6
  call void @__sanitizer_cov_trace_pc() #17
  %inc.6 = add nuw nsw i32 %index.1.5, 1
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.end.6, %for.inc.5.for.inc.6_crit_edge
  %index.1.6 = phi i32 [ %inc.6, %if.end.6 ], [ %index.1.5, %for.inc.5.for.inc.6_crit_edge ]
  %21 = load i8, ptr getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 7, i32 1), align 4
  %conv.7 = zext i8 %21 to i32
  %and.7 = and i32 %conv.7, %type
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7)
  %tobool.not.7 = icmp eq i32 %and.7, 0
  br i1 %tobool.not.7, label %for.inc.6.for.inc.7_crit_edge, label %if.then.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.7

if.then.7:                                        ; preds = %for.inc.6
  %22 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %index.1.6, i32 %23)
  %cmp2.7 = icmp eq i32 %index.1.6, %23
  br i1 %cmp2.7, label %if.then.7.for.end_crit_edge, label %if.end.7

if.then.7.for.end_crit_edge:                      ; preds = %if.then.7
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

if.end.7:                                         ; preds = %if.then.7
  call void @__sanitizer_cov_trace_pc() #17
  %inc.7 = add nuw nsw i32 %index.1.6, 1
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.end.7, %for.inc.6.for.inc.7_crit_edge
  %index.1.7 = phi i32 [ %inc.7, %if.end.7 ], [ %index.1.6, %for.inc.6.for.inc.7_crit_edge ]
  %24 = load i8, ptr getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 8, i32 1), align 4
  %conv.8 = zext i8 %24 to i32
  %and.8 = and i32 %conv.8, %type
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.8)
  %tobool.not.8 = icmp eq i32 %and.8, 0
  br i1 %tobool.not.8, label %for.inc.7.for.inc.8_crit_edge, label %if.then.8

for.inc.7.for.inc.8_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.8

if.then.8:                                        ; preds = %for.inc.7
  %25 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %index.1.7, i32 %26)
  %cmp2.8 = icmp eq i32 %index.1.7, %26
  br i1 %cmp2.8, label %if.then.8.for.end_crit_edge, label %if.end.8

if.then.8.for.end_crit_edge:                      ; preds = %if.then.8
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

if.end.8:                                         ; preds = %if.then.8
  call void @__sanitizer_cov_trace_pc() #17
  %inc.8 = add nuw nsw i32 %index.1.7, 1
  br label %for.inc.8

for.inc.8:                                        ; preds = %if.end.8, %for.inc.7.for.inc.8_crit_edge
  %index.1.8 = phi i32 [ %inc.8, %if.end.8 ], [ %index.1.7, %for.inc.7.for.inc.8_crit_edge ]
  %27 = load i8, ptr getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 9, i32 1), align 4
  %conv.9 = zext i8 %27 to i32
  %and.9 = and i32 %conv.9, %type
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.9)
  %tobool.not.9 = icmp eq i32 %and.9, 0
  br i1 %tobool.not.9, label %for.inc.8.for.inc.9_crit_edge, label %if.then.9

for.inc.8.for.inc.9_crit_edge:                    ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.9

if.then.9:                                        ; preds = %for.inc.8
  %28 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %index.1.8, i32 %29)
  %cmp2.9 = icmp eq i32 %index.1.8, %29
  br i1 %cmp2.9, label %if.then.9.for.end_crit_edge, label %if.end.9

if.then.9.for.end_crit_edge:                      ; preds = %if.then.9
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

if.end.9:                                         ; preds = %if.then.9
  call void @__sanitizer_cov_trace_pc() #17
  %inc.9 = add nuw nsw i32 %index.1.8, 1
  br label %for.inc.9

for.inc.9:                                        ; preds = %if.end.9, %for.inc.8.for.inc.9_crit_edge
  %index.1.9 = phi i32 [ %inc.9, %if.end.9 ], [ %index.1.8, %for.inc.8.for.inc.9_crit_edge ]
  %30 = load i8, ptr getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 10, i32 1), align 4
  %conv.10 = zext i8 %30 to i32
  %and.10 = and i32 %conv.10, %type
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.10)
  %tobool.not.10 = icmp eq i32 %and.10, 0
  br i1 %tobool.not.10, label %for.inc.9.cleanup_crit_edge, label %if.then.10

for.inc.9.cleanup_crit_edge:                      ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then.10:                                       ; preds = %for.inc.9
  %31 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %index.1.9, i32 %32)
  %cmp2.10 = icmp eq i32 %index.1.9, %32
  br i1 %cmp2.10, label %if.then.10.for.end_crit_edge, label %if.then.10.cleanup_crit_edge

if.then.10.cleanup_crit_edge:                     ; preds = %if.then.10
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then.10.for.end_crit_edge:                     ; preds = %if.then.10
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %if.then.10.for.end_crit_edge, %if.then.9.for.end_crit_edge, %if.then.8.for.end_crit_edge, %if.then.7.for.end_crit_edge, %if.then.6.for.end_crit_edge, %if.then.5.for.end_crit_edge, %if.then.4.for.end_crit_edge, %if.then.3.for.end_crit_edge, %if.then.2.for.end_crit_edge, %if.then.1.for.end_crit_edge, %if.then.for.end_crit_edge
  %i.021.lcssa = phi i32 [ 0, %if.then.for.end_crit_edge ], [ 1, %if.then.1.for.end_crit_edge ], [ 2, %if.then.2.for.end_crit_edge ], [ 3, %if.then.3.for.end_crit_edge ], [ 4, %if.then.4.for.end_crit_edge ], [ 5, %if.then.5.for.end_crit_edge ], [ 6, %if.then.6.for.end_crit_edge ], [ 7, %if.then.7.for.end_crit_edge ], [ 8, %if.then.8.for.end_crit_edge ], [ 9, %if.then.9.for.end_crit_edge ], [ 10, %if.then.10.for.end_crit_edge ]
  %arrayidx.le = getelementptr [11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 %i.021.lcssa
  %tobool8.not = icmp eq ptr %arrayidx.le, null
  br i1 %tobool8.not, label %for.end.cleanup_crit_edge, label %if.end10

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end10:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  %33 = ptrtoint ptr %arrayidx.le to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.le, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %35 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %pixelformat, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %for.end.cleanup_crit_edge, %if.then.10.cleanup_crit_edge, %for.inc.9.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end10 ], [ -22, %for.end.cleanup_crit_edge ], [ -22, %if.then.10.cleanup_crit_edge ], [ -22, %for.inc.9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_get_vq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__vpe_s_fmt(ptr noundef %ctx, ptr nocapture noundef readonly %f) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %ctx, i32 0, i32 10
  %0 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m2m_ctx, align 4
  %2 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f, align 4
  %call = tail call ptr @v4l2_m2m_get_vq(ptr noundef %1, i32 noundef %3) #15
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %num_buffers.i = getelementptr inbounds %struct.vb2_queue, ptr %call, i32 0, i32 21
  %4 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i.not = icmp eq i32 %5, 0
  br i1 %cmp.i.not, label %if.end4, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %dev = getelementptr inbounds %struct.vpe_ctx, ptr %ctx, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.123) #18
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %10 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %f, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.153)
  switch i32 %11, label %if.end4.cleanup_crit_edge [
    i32 10, label %if.end4.sw.bb.i_crit_edge
    i32 2, label %if.end4.sw.bb.i_crit_edge132
    i32 9, label %if.end4.sw.bb1.i_crit_edge
    i32 1, label %if.end4.sw.bb1.i_crit_edge133
  ]

if.end4.sw.bb1.i_crit_edge133:                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb1.i

if.end4.sw.bb1.i_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb1.i

if.end4.sw.bb.i_crit_edge132:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i

if.end4.sw.bb.i_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb.i:                                          ; preds = %if.end4.sw.bb.i_crit_edge, %if.end4.sw.bb.i_crit_edge132
  %q_data.i = getelementptr inbounds %struct.vpe_ctx, ptr %ctx, i32 0, i32 8
  br label %get_q_data.exit

sw.bb1.i:                                         ; preds = %if.end4.sw.bb1.i_crit_edge, %if.end4.sw.bb1.i_crit_edge133
  %arrayidx3.i = getelementptr %struct.vpe_ctx, ptr %ctx, i32 0, i32 8, i32 1
  br label %get_q_data.exit

get_q_data.exit:                                  ; preds = %sw.bb1.i, %sw.bb.i
  %retval.0.i126 = phi ptr [ %arrayidx3.i, %sw.bb1.i ], [ %q_data.i, %sw.bb.i ]
  %tobool7.not = icmp eq ptr %retval.0.i126, null
  br i1 %tobool7.not, label %get_q_data.exit.cleanup_crit_edge, label %if.end9

get_q_data.exit.cleanup_crit_edge:                ; preds = %get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end9:                                          ; preds = %get_q_data.exit
  %pixelformat.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %13 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pixelformat.i, align 4
  %15 = load i32, ptr @vpe_formats, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %14)
  %cmp2.i.i = icmp eq i32 %15, %14
  br i1 %cmp2.i.i, label %if.end9.find_format.exit_crit_edge, label %for.cond.i.i

if.end9.find_format.exit_crit_edge:               ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %find_format.exit

for.cond.i.i:                                     ; preds = %if.end9
  %16 = load i32, ptr getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %14)
  %cmp2.1.i.i = icmp eq i32 %16, %14
  br i1 %cmp2.1.i.i, label %for.cond.i.i.find_format.exit_crit_edge, label %for.cond.1.i.i

for.cond.i.i.find_format.exit_crit_edge:          ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %find_format.exit

for.cond.1.i.i:                                   ; preds = %for.cond.i.i
  %17 = load i32, ptr getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %14)
  %cmp2.2.i.i = icmp eq i32 %17, %14
  br i1 %cmp2.2.i.i, label %for.cond.1.i.i.find_format.exit_crit_edge, label %for.cond.2.i.i

for.cond.1.i.i.find_format.exit_crit_edge:        ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %find_format.exit

for.cond.2.i.i:                                   ; preds = %for.cond.1.i.i
  %18 = load i32, ptr getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %14)
  %cmp2.3.i.i = icmp eq i32 %18, %14
  br i1 %cmp2.3.i.i, label %for.cond.2.i.i.find_format.exit_crit_edge, label %for.cond.3.i.i

for.cond.2.i.i.find_format.exit_crit_edge:        ; preds = %for.cond.2.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %find_format.exit

for.cond.3.i.i:                                   ; preds = %for.cond.2.i.i
  %19 = load i32, ptr getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %14)
  %cmp2.4.i.i = icmp eq i32 %19, %14
  br i1 %cmp2.4.i.i, label %for.cond.3.i.i.find_format.exit_crit_edge, label %for.cond.4.i.i

for.cond.3.i.i.find_format.exit_crit_edge:        ; preds = %for.cond.3.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %find_format.exit

for.cond.4.i.i:                                   ; preds = %for.cond.3.i.i
  %20 = load i32, ptr getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %14)
  %cmp2.5.i.i = icmp eq i32 %20, %14
  br i1 %cmp2.5.i.i, label %for.cond.4.i.i.find_format.exit_crit_edge, label %for.cond.5.i.i

for.cond.4.i.i.find_format.exit_crit_edge:        ; preds = %for.cond.4.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %find_format.exit

for.cond.5.i.i:                                   ; preds = %for.cond.4.i.i
  %21 = load i32, ptr getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %14)
  %cmp2.6.i.i = icmp eq i32 %21, %14
  br i1 %cmp2.6.i.i, label %for.cond.5.i.i.find_format.exit_crit_edge, label %for.cond.6.i.i

for.cond.5.i.i.find_format.exit_crit_edge:        ; preds = %for.cond.5.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %find_format.exit

for.cond.6.i.i:                                   ; preds = %for.cond.5.i.i
  %22 = load i32, ptr getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %14)
  %cmp2.7.i.i = icmp eq i32 %22, %14
  br i1 %cmp2.7.i.i, label %for.cond.6.i.i.find_format.exit_crit_edge, label %for.cond.7.i.i

for.cond.6.i.i.find_format.exit_crit_edge:        ; preds = %for.cond.6.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %find_format.exit

for.cond.7.i.i:                                   ; preds = %for.cond.6.i.i
  %23 = load i32, ptr getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 8), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %14)
  %cmp2.8.i.i = icmp eq i32 %23, %14
  br i1 %cmp2.8.i.i, label %for.cond.7.i.i.find_format.exit_crit_edge, label %for.cond.8.i.i

for.cond.7.i.i.find_format.exit_crit_edge:        ; preds = %for.cond.7.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %find_format.exit

for.cond.8.i.i:                                   ; preds = %for.cond.7.i.i
  %24 = load i32, ptr getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 9), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %14)
  %cmp2.9.i.i = icmp eq i32 %24, %14
  br i1 %cmp2.9.i.i, label %for.cond.8.i.i.find_format.exit_crit_edge, label %for.cond.9.i.i

for.cond.8.i.i.find_format.exit_crit_edge:        ; preds = %for.cond.8.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %find_format.exit

for.cond.9.i.i:                                   ; preds = %for.cond.8.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %25 = load i32, ptr getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 10), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %14)
  %cmp2.10.i.i = icmp eq i32 %25, %14
  %spec.select.i.i = select i1 %cmp2.10.i.i, ptr getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 10), ptr null
  br label %find_format.exit

find_format.exit:                                 ; preds = %for.cond.9.i.i, %for.cond.8.i.i.find_format.exit_crit_edge, %for.cond.7.i.i.find_format.exit_crit_edge, %for.cond.6.i.i.find_format.exit_crit_edge, %for.cond.5.i.i.find_format.exit_crit_edge, %for.cond.4.i.i.find_format.exit_crit_edge, %for.cond.3.i.i.find_format.exit_crit_edge, %for.cond.2.i.i.find_format.exit_crit_edge, %for.cond.1.i.i.find_format.exit_crit_edge, %for.cond.i.i.find_format.exit_crit_edge, %if.end9.find_format.exit_crit_edge
  %retval.0.i.i = phi ptr [ @vpe_formats, %if.end9.find_format.exit_crit_edge ], [ getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 1), %for.cond.i.i.find_format.exit_crit_edge ], [ getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 2), %for.cond.1.i.i.find_format.exit_crit_edge ], [ getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 3), %for.cond.2.i.i.find_format.exit_crit_edge ], [ getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 4), %for.cond.3.i.i.find_format.exit_crit_edge ], [ getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 5), %for.cond.4.i.i.find_format.exit_crit_edge ], [ getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 6), %for.cond.5.i.i.find_format.exit_crit_edge ], [ getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 7), %for.cond.6.i.i.find_format.exit_crit_edge ], [ getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 8), %for.cond.7.i.i.find_format.exit_crit_edge ], [ getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 9), %for.cond.8.i.i.find_format.exit_crit_edge ], [ %spec.select.i.i, %for.cond.9.i.i ]
  %fmt12 = getelementptr inbounds %struct.vpe_q_data, ptr %retval.0.i126, i32 0, i32 3
  %26 = ptrtoint ptr %fmt12 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %retval.0.i.i, ptr %fmt12, align 4
  %27 = call ptr @memcpy(ptr %retval.0.i126, ptr %f, i32 204)
  %c_rect = getelementptr inbounds %struct.vpe_q_data, ptr %retval.0.i126, i32 0, i32 2
  %28 = ptrtoint ptr %c_rect to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %c_rect, align 4
  %top = getelementptr inbounds %struct.vpe_q_data, ptr %retval.0.i126, i32 0, i32 2, i32 1
  %29 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %top, align 4
  %30 = ptrtoint ptr %fmt to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %fmt, align 1
  %width16 = getelementptr inbounds %struct.vpe_q_data, ptr %retval.0.i126, i32 0, i32 2, i32 2
  %32 = ptrtoint ptr %width16 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %width16, align 4
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %33 = ptrtoint ptr %height to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %height, align 1
  %height18 = getelementptr inbounds %struct.vpe_q_data, ptr %retval.0.i126, i32 0, i32 2, i32 3
  %35 = ptrtoint ptr %height18 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %height18, align 4
  %field = getelementptr inbounds %struct.v4l2_format, ptr %retval.0.i126, i32 0, i32 1, i32 0, i32 3
  %36 = ptrtoint ptr %field to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %37 = load i32, ptr %field, align 1
  %38 = zext i32 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.154)
  switch i32 %37, label %if.else31 [
    i32 7, label %if.then19
    i32 5, label %if.then22
    i32 6, label %if.then28
  ]

if.then19:                                        ; preds = %find_format.exit
  call void @__sanitizer_cov_trace_pc() #17
  %flags = getelementptr inbounds %struct.vpe_q_data, ptr %retval.0.i126, i32 0, i32 1
  %39 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %flags, align 4
  %or = or i32 %40, 4
  store i32 %or, ptr %flags, align 4
  br label %if.end35

if.then22:                                        ; preds = %find_format.exit
  call void @__sanitizer_cov_trace_pc() #17
  %flags23 = getelementptr inbounds %struct.vpe_q_data, ptr %retval.0.i126, i32 0, i32 1
  %41 = ptrtoint ptr %flags23 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flags23, align 4
  %or24 = or i32 %42, 8
  store i32 %or24, ptr %flags23, align 4
  br label %if.end35

if.then28:                                        ; preds = %find_format.exit
  call void @__sanitizer_cov_trace_pc() #17
  %flags29 = getelementptr inbounds %struct.vpe_q_data, ptr %retval.0.i126, i32 0, i32 1
  %43 = ptrtoint ptr %flags29 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %flags29, align 4
  %or30 = or i32 %44, 16
  store i32 %or30, ptr %flags29, align 4
  br label %if.end35

if.else31:                                        ; preds = %find_format.exit
  call void @__sanitizer_cov_trace_pc() #17
  %flags32 = getelementptr inbounds %struct.vpe_q_data, ptr %retval.0.i126, i32 0, i32 1
  %45 = ptrtoint ptr %flags32 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %flags32, align 4
  %and = and i32 %46, -29
  store i32 %and, ptr %flags32, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.else31, %if.then28, %if.then22, %if.then19
  %flags36 = getelementptr inbounds %struct.vpe_q_data, ptr %retval.0.i126, i32 0, i32 1
  %47 = ptrtoint ptr %flags36 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %flags36, align 4
  %and37 = and i32 %48, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end35.do.body43_crit_edge, label %if.then39

if.end35.do.body43_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body43

if.then39:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #17
  %49 = ptrtoint ptr %height18 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %height18, align 4
  %div122 = lshr i32 %50, 1
  store i32 %div122, ptr %height18, align 4
  br label %do.body43

do.body43:                                        ; preds = %if.then39, %if.end35.do.body43_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__vpe_s_fmt.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@__vpe_s_fmt, %do.end58)) #15
          to label %if.then49 [label %do.end58], !srcloc !386

if.then49:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #17
  %dev50 = getelementptr inbounds %struct.vpe_ctx, ptr %ctx, i32 0, i32 1
  %51 = ptrtoint ptr %dev50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev50, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 8
  %55 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %f, align 4
  %57 = ptrtoint ptr %fmt to i32
  call void @__asan_loadN_noabort(i32 %57, i32 4)
  %58 = load i32, ptr %fmt, align 1
  %59 = ptrtoint ptr %height to i32
  call void @__asan_loadN_noabort(i32 %59, i32 4)
  %60 = load i32, ptr %height, align 1
  %61 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_loadN_noabort(i32 %61, i32 4)
  %62 = load i32, ptr %pixelformat.i, align 1
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %63 = ptrtoint ptr %bytesperline to i32
  call void @__asan_loadN_noabort(i32 %63, i32 4)
  %64 = load i32, ptr %bytesperline, align 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__vpe_s_fmt.__UNIQUE_ID_ddebug359, ptr noundef %54, ptr noundef nonnull @.str.125, i32 noundef %56, i32 noundef %58, i32 noundef %60, i32 noundef %62, i32 noundef %64) #15
  br label %do.end58

do.end58:                                         ; preds = %if.then49, %do.body43
  %num_planes = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 6
  %65 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %num_planes, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %66)
  %cmp59 = icmp eq i8 %66, 2
  br i1 %cmp59, label %do.body62, label %do.end58.cleanup_crit_edge

do.end58.cleanup_crit_edge:                       ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body62:                                        ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__vpe_s_fmt.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@__vpe_s_fmt, %cleanup)) #15
          to label %if.then76 [label %cleanup], !srcloc !386

if.then76:                                        ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #17
  %dev77 = getelementptr inbounds %struct.vpe_ctx, ptr %ctx, i32 0, i32 1
  %67 = ptrtoint ptr %dev77 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev77, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %68, align 8
  %bytesperline82 = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %71 = ptrtoint ptr %bytesperline82 to i32
  call void @__asan_loadN_noabort(i32 %71, i32 4)
  %72 = load i32, ptr %bytesperline82, align 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__vpe_s_fmt.__UNIQUE_ID_ddebug360, ptr noundef %70, ptr noundef nonnull @.str.126, i32 noundef %72) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then76, %do.body62, %do.end58.cleanup_crit_edge, %get_q_data.exit.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ -22, %get_q_data.exit.cleanup_crit_edge ], [ 0, %if.then76 ], [ 0, %do.end58.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ], [ 0, %do.body62 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__vpe_try_fmt(ptr nocapture noundef readonly %ctx, ptr noundef %f, ptr noundef readonly %fmt, i32 noundef %type) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %fmt1 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %tobool.not = icmp eq ptr %fmt, null
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %lor.lhs.false

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

lor.lhs.false:                                    ; preds = %entry
  %types = getelementptr inbounds %struct.vpe_fmt, ptr %fmt, i32 0, i32 1
  %0 = ptrtoint ptr %types to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %types, align 4
  %conv = zext i8 %1 to i32
  %and = and i32 %conv, %type
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %lor.lhs.false.do.body_crit_edge, label %lor.lhs.false.if.end10_crit_edge

lor.lhs.false.if.end10_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__vpe_try_fmt.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@__vpe_try_fmt, %do.end)) #15
          to label %if.then7 [label %do.end], !srcloc !386

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %dev = getelementptr inbounds %struct.vpe_ctx, ptr %ctx, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %6 = ptrtoint ptr %pixelformat to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %pixelformat, align 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__vpe_try_fmt.__UNIQUE_ID_ddebug354, ptr noundef %5, ptr noundef nonnull @.str.128, i32 noundef %7) #15
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  %8 = load i32, ptr @vpe_formats, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1448695129, i32 %8)
  %cmp2.i = icmp eq i32 %8, 1448695129
  br i1 %cmp2.i, label %do.end.if.end10_crit_edge, label %for.cond.i

do.end.if.end10_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

for.cond.i:                                       ; preds = %do.end
  %9 = load i32, ptr getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1448695129, i32 %9)
  %cmp2.1.i = icmp eq i32 %9, 1448695129
  br i1 %cmp2.1.i, label %for.cond.i.if.end10_crit_edge, label %for.cond.1.i

for.cond.i.if.end10_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

for.cond.1.i:                                     ; preds = %for.cond.i
  %10 = load i32, ptr getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1448695129, i32 %10)
  %cmp2.2.i = icmp eq i32 %10, 1448695129
  br i1 %cmp2.2.i, label %for.cond.1.i.if.end10_crit_edge, label %for.cond.2.i

for.cond.1.i.if.end10_crit_edge:                  ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %11 = load i32, ptr getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1448695129, i32 %11)
  %cmp2.3.i = icmp eq i32 %11, 1448695129
  br i1 %cmp2.3.i, label %for.cond.2.i.if.end10_crit_edge, label %for.cond.3.i

for.cond.2.i.if.end10_crit_edge:                  ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

for.cond.3.i:                                     ; preds = %for.cond.2.i
  %12 = load i32, ptr getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1448695129, i32 %12)
  %cmp2.4.i = icmp eq i32 %12, 1448695129
  br i1 %cmp2.4.i, label %for.cond.3.i.if.end10_crit_edge, label %for.cond.4.i

for.cond.3.i.if.end10_crit_edge:                  ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

for.cond.4.i:                                     ; preds = %for.cond.3.i
  %13 = load i32, ptr getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1448695129, i32 %13)
  %cmp2.5.i = icmp eq i32 %13, 1448695129
  br i1 %cmp2.5.i, label %for.cond.4.i.if.end10_crit_edge, label %for.cond.5.i

for.cond.4.i.if.end10_crit_edge:                  ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

for.cond.5.i:                                     ; preds = %for.cond.4.i
  %14 = load i32, ptr getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1448695129, i32 %14)
  %cmp2.6.i = icmp eq i32 %14, 1448695129
  br i1 %cmp2.6.i, label %for.cond.5.i.if.end10_crit_edge, label %for.cond.6.i

for.cond.5.i.if.end10_crit_edge:                  ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

for.cond.6.i:                                     ; preds = %for.cond.5.i
  %15 = load i32, ptr getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1448695129, i32 %15)
  %cmp2.7.i = icmp eq i32 %15, 1448695129
  br i1 %cmp2.7.i, label %for.cond.6.i.if.end10_crit_edge, label %for.cond.7.i

for.cond.6.i.if.end10_crit_edge:                  ; preds = %for.cond.6.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

for.cond.7.i:                                     ; preds = %for.cond.6.i
  %16 = load i32, ptr getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 8), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1448695129, i32 %16)
  %cmp2.8.i = icmp eq i32 %16, 1448695129
  br i1 %cmp2.8.i, label %for.cond.7.i.if.end10_crit_edge, label %for.cond.8.i

for.cond.7.i.if.end10_crit_edge:                  ; preds = %for.cond.7.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

for.cond.8.i:                                     ; preds = %for.cond.7.i
  %17 = load i32, ptr getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 9), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1448695129, i32 %17)
  %cmp2.9.i = icmp eq i32 %17, 1448695129
  br i1 %cmp2.9.i, label %for.cond.8.i.if.end10_crit_edge, label %for.cond.9.i

for.cond.8.i.if.end10_crit_edge:                  ; preds = %for.cond.8.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

for.cond.9.i:                                     ; preds = %for.cond.8.i
  call void @__sanitizer_cov_trace_pc() #17
  %18 = load i32, ptr getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 10), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1448695129, i32 %18)
  %cmp2.10.i = icmp eq i32 %18, 1448695129
  %spec.select.i = select i1 %cmp2.10.i, ptr getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 10), ptr null
  br label %if.end10

if.end10:                                         ; preds = %for.cond.9.i, %for.cond.8.i.if.end10_crit_edge, %for.cond.7.i.if.end10_crit_edge, %for.cond.6.i.if.end10_crit_edge, %for.cond.5.i.if.end10_crit_edge, %for.cond.4.i.if.end10_crit_edge, %for.cond.3.i.if.end10_crit_edge, %for.cond.2.i.if.end10_crit_edge, %for.cond.1.i.if.end10_crit_edge, %for.cond.i.if.end10_crit_edge, %do.end.if.end10_crit_edge, %lor.lhs.false.if.end10_crit_edge
  %fmt.addr.0 = phi ptr [ %fmt, %lor.lhs.false.if.end10_crit_edge ], [ @vpe_formats, %do.end.if.end10_crit_edge ], [ getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 1), %for.cond.i.if.end10_crit_edge ], [ getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 2), %for.cond.1.i.if.end10_crit_edge ], [ getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 3), %for.cond.2.i.if.end10_crit_edge ], [ getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 4), %for.cond.3.i.if.end10_crit_edge ], [ getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 5), %for.cond.4.i.if.end10_crit_edge ], [ getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 6), %for.cond.5.i.if.end10_crit_edge ], [ getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 7), %for.cond.6.i.if.end10_crit_edge ], [ getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 8), %for.cond.7.i.if.end10_crit_edge ], [ getelementptr inbounds ([11 x %struct.vpe_fmt], ptr @vpe_formats, i32 0, i32 9), %for.cond.8.i.if.end10_crit_edge ], [ %spec.select.i, %for.cond.9.i ]
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %19 = ptrtoint ptr %field to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %field, align 1
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.155)
  switch i32 %20, label %if.then23 [
    i32 1, label %if.end10.if.end25_crit_edge
    i32 7, label %if.end10.if.end25_crit_edge12
    i32 5, label %if.end10.if.end25_crit_edge13
    i32 6, label %if.end10.if.end25_crit_edge14
  ]

if.end10.if.end25_crit_edge14:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end25

if.end10.if.end25_crit_edge13:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end25

if.end10.if.end25_crit_edge12:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end25

if.end10.if.end25_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end25

if.then23:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  %22 = ptrtoint ptr %field to i32
  call void @__asan_storeN_noabort(i32 %22, i32 4)
  store i32 1, ptr %field, align 1
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end10.if.end25_crit_edge, %if.end10.if.end25_crit_edge12, %if.end10.if.end25_crit_edge13, %if.end10.if.end25_crit_edge14
  %vpdma_fmt = getelementptr %struct.vpe_fmt, ptr %fmt.addr.0, i32 0, i32 3
  %23 = ptrtoint ptr %vpdma_fmt to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %vpdma_fmt, align 4
  %depth26 = getelementptr inbounds %struct.vpdma_data_format, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %depth26 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %depth26, align 4
  %27 = lshr i8 %26, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %27)
  %cmp28 = icmp eq i8 %27, 3
  br i1 %cmp28, label %if.end25.if.end74_crit_edge, label %cond.false55

if.end25.if.end74_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end74

cond.false55:                                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #17
  %28 = udiv i8 16, %27
  %div = zext i8 %28 to i32
  %sub.i3 = add nsw i32 %div, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i3)
  %tobool.not.i.i.i = icmp eq i32 %sub.i3, 0
  %29 = tail call i32 @llvm.ctlz.i32(i32 %sub.i3, i1 true) #15, !range !400
  %sub.i.i.i = sub nuw nsw i32 32, %29
  %sub.i.i.op.i = shl nuw i32 1, %sub.i.i.i
  %30 = call i32 @llvm.ctlz.i32(i32 %sub.i.i.op.i, i1 true), !range !400
  %.op = xor i32 %30, 31
  %sub.i.op.i4 = select i1 %tobool.not.i.i.i, i32 0, i32 %.op
  br label %if.end74

if.end74:                                         ; preds = %cond.false55, %if.end25.if.end74_crit_edge
  %w_align.0 = phi i32 [ 4, %if.end25.if.end74_crit_edge ], [ %sub.i.op.i4, %cond.false55 ]
  %height75 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  tail call void @v4l_bound_align_image(ptr noundef %fmt1, i32 noundef 32, i32 noundef 2048, i32 noundef %w_align.0, ptr noundef %height75, i32 noundef 32, i32 noundef 2048, i32 noundef 1, i32 noundef 0) #15
  %num_planes = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 6
  %31 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %num_planes, align 1
  %33 = add i8 %32, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %33)
  %34 = icmp ult i8 %33, -2
  br i1 %34, label %if.then82, label %if.else88

if.then82:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #17
  %coplanar = getelementptr inbounds %struct.vpe_fmt, ptr %fmt.addr.0, i32 0, i32 2
  %35 = ptrtoint ptr %coplanar to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %coplanar, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool84.not = icmp eq i8 %36, 0
  %conv86 = select i1 %tobool84.not, i8 1, i8 2
  br label %if.end99.sink.split

if.else88:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %32)
  %cmp91 = icmp eq i8 %32, 2
  br i1 %cmp91, label %land.lhs.true93, label %if.else88.if.end99_crit_edge

if.else88.if.end99_crit_edge:                     ; preds = %if.else88
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end99

land.lhs.true93:                                  ; preds = %if.else88
  %coplanar94 = getelementptr inbounds %struct.vpe_fmt, ptr %fmt.addr.0, i32 0, i32 2
  %37 = ptrtoint ptr %coplanar94 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %coplanar94, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool95.not = icmp eq i8 %38, 0
  br i1 %tobool95.not, label %land.lhs.true93.if.end99.sink.split_crit_edge, label %land.lhs.true93.if.end99_crit_edge

land.lhs.true93.if.end99_crit_edge:               ; preds = %land.lhs.true93
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end99

land.lhs.true93.if.end99.sink.split_crit_edge:    ; preds = %land.lhs.true93
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end99.sink.split

if.end99.sink.split:                              ; preds = %land.lhs.true93.if.end99.sink.split_crit_edge, %if.then82
  %.sink = phi i8 [ %conv86, %if.then82 ], [ 1, %land.lhs.true93.if.end99.sink.split_crit_edge ]
  %39 = ptrtoint ptr %num_planes to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %.sink, ptr %num_planes, align 1
  br label %if.end99

if.end99:                                         ; preds = %if.end99.sink.split, %land.lhs.true93.if.end99_crit_edge, %if.else88.if.end99_crit_edge
  %40 = ptrtoint ptr %fmt.addr.0 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %fmt.addr.0, align 4
  %pixelformat100 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %42 = ptrtoint ptr %pixelformat100 to i32
  call void @__asan_storeN_noabort(i32 %42, i32 4)
  store i32 %41, ptr %pixelformat100, align 1
  %43 = load i32, ptr %fmt.addr.0, align 4
  %call102 = tail call ptr @v4l2_format_info(i32 noundef %43) #15
  %44 = ptrtoint ptr %field to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %45 = load i32, ptr %field, align 1
  %.off = add i32 %45, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  %46 = ptrtoint ptr %height75 to i32
  call void @__asan_loadN_noabort(i32 %46, i32 4)
  %47 = load i32, ptr %height75, align 1
  %div1121 = zext i1 %switch to i32
  %height.0 = lshr i32 %47, %div1121
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %48 = ptrtoint ptr %colorspace to i32
  call void @__asan_loadN_noabort(i32 %48, i32 4)
  %49 = load i32, ptr %colorspace, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool116.not = icmp eq i32 %49, 0
  br i1 %tobool116.not, label %if.then117, label %if.end99.if.end130_crit_edge

if.end99.if.end130_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end130

if.then117:                                       ; preds = %if.end99
  %tobool.not.i = icmp eq ptr %call102, null
  br i1 %tobool.not.i, label %if.then117.if.else121_crit_edge, label %v4l2_is_format_rgb.exit

if.then117.if.else121_crit_edge:                  ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else121

v4l2_is_format_rgb.exit:                          ; preds = %if.then117
  %pixel_enc.i = getelementptr inbounds %struct.v4l2_format_info, ptr %call102, i32 0, i32 1
  %50 = ptrtoint ptr %pixel_enc.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %pixel_enc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %51)
  %cmp.i = icmp eq i8 %51, 2
  br i1 %cmp.i, label %v4l2_is_format_rgb.exit.if.end130.sink.split_crit_edge, label %v4l2_is_format_rgb.exit.if.else121_crit_edge

v4l2_is_format_rgb.exit.if.else121_crit_edge:     ; preds = %v4l2_is_format_rgb.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else121

v4l2_is_format_rgb.exit.if.end130.sink.split_crit_edge: ; preds = %v4l2_is_format_rgb.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end130.sink.split

if.else121:                                       ; preds = %v4l2_is_format_rgb.exit.if.else121_crit_edge, %if.then117.if.else121_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1280, i32 %height.0)
  %cmp122 = icmp sgt i32 %height.0, 1280
  %. = select i1 %cmp122, i32 3, i32 1
  br label %if.end130.sink.split

if.end130.sink.split:                             ; preds = %if.else121, %v4l2_is_format_rgb.exit.if.end130.sink.split_crit_edge
  %.sink11 = phi i32 [ 8, %v4l2_is_format_rgb.exit.if.end130.sink.split_crit_edge ], [ %., %if.else121 ]
  %52 = ptrtoint ptr %colorspace to i32
  call void @__asan_storeN_noabort(i32 %52, i32 4)
  store i32 %.sink11, ptr %colorspace, align 1
  br label %if.end130

if.end130:                                        ; preds = %if.end130.sink.split, %if.end99.if.end130_crit_edge
  %53 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %num_planes, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %cmp1337.not = icmp eq i8 %54, 0
  br i1 %cmp1337.not, label %if.end130.for.end_crit_edge, label %for.body.lr.ph

if.end130.for.end_crit_edge:                      ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end130
  %coplanar183 = getelementptr inbounds %struct.vpe_fmt, ptr %fmt.addr.0, i32 0, i32 2
  %arrayidx191 = getelementptr %struct.vpe_fmt, ptr %fmt.addr.0, i32 0, i32 3, i32 1
  %arrayidx136.peel = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0
  %55 = ptrtoint ptr %vpdma_fmt to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %vpdma_fmt, align 4
  %depth139.peel = getelementptr inbounds %struct.vpdma_data_format, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %depth139.peel to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %depth139.peel, align 4
  %conv140.peel = zext i8 %58 to i32
  %59 = ptrtoint ptr %fmt1 to i32
  call void @__asan_loadN_noabort(i32 %59, i32 4)
  %60 = load i32, ptr %fmt1, align 1
  %mul.peel = mul i32 %60, %conv140.peel
  %shr146.peel = lshr i32 %mul.peel, 3
  %bytesperline.peel = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %61 = ptrtoint ptr %bytesperline.peel to i32
  call void @__asan_loadN_noabort(i32 %61, i32 4)
  %62 = load i32, ptr %bytesperline.peel, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shr146.peel, i32 %62)
  %cmp147.peel = icmp ugt i32 %shr146.peel, %62
  br i1 %cmp147.peel, label %if.then149.peel, label %for.body.lr.ph.if.then174.peel_crit_edge

for.body.lr.ph.if.then174.peel_crit_edge:         ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then174.peel

if.then149.peel:                                  ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #17
  %63 = ptrtoint ptr %bytesperline.peel to i32
  call void @__asan_storeN_noabort(i32 %63, i32 4)
  store i32 %shr146.peel, ptr %bytesperline.peel, align 1
  br label %if.then174.peel

if.then174.peel:                                  ; preds = %if.then149.peel, %for.body.lr.ph.if.then174.peel_crit_edge
  %64 = ptrtoint ptr %bytesperline.peel to i32
  call void @__asan_loadN_noabort(i32 %64, i32 4)
  %65 = load i32, ptr %bytesperline.peel, align 1
  %66 = tail call i32 @llvm.umax.i32(i32 %65, i32 %shr146.peel)
  %67 = tail call i32 @llvm.umin.i32(i32 %66, i32 65520)
  %add169.peel = add nuw nsw i32 %67, 15
  %and170.peel = and i32 %add169.peel, 131056
  %68 = ptrtoint ptr %bytesperline.peel to i32
  call void @__asan_storeN_noabort(i32 %68, i32 4)
  store i32 %and170.peel, ptr %bytesperline.peel, align 1
  %69 = ptrtoint ptr %height75 to i32
  call void @__asan_loadN_noabort(i32 %69, i32 4)
  %70 = load i32, ptr %height75, align 1
  %mul177.peel = mul i32 %70, %and170.peel
  %71 = ptrtoint ptr %arrayidx136.peel to i32
  call void @__asan_storeN_noabort(i32 %71, i32 4)
  store i32 %mul177.peel, ptr %arrayidx136.peel, align 1
  %72 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %num_planes, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %73)
  %cmp180.peel = icmp eq i8 %73, 1
  br i1 %cmp180.peel, label %land.lhs.true182.peel, label %if.then174.peel.for.inc.peel_crit_edge

if.then174.peel.for.inc.peel_crit_edge:           ; preds = %if.then174.peel
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.peel

land.lhs.true182.peel:                            ; preds = %if.then174.peel
  %74 = ptrtoint ptr %coplanar183 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %coplanar183, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool185.not.peel = icmp eq i8 %75, 0
  br i1 %tobool185.not.peel, label %land.lhs.true182.peel.for.end_crit_edge, label %if.then186.peel

land.lhs.true182.peel.for.end_crit_edge:          ; preds = %land.lhs.true182.peel
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

if.then186.peel:                                  ; preds = %land.lhs.true182.peel
  call void @__sanitizer_cov_trace_pc() #17
  %76 = ptrtoint ptr %height75 to i32
  call void @__asan_loadN_noabort(i32 %76, i32 4)
  %77 = load i32, ptr %height75, align 1
  %mul189.peel = mul i32 %77, %and170.peel
  %78 = ptrtoint ptr %arrayidx191 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx191, align 4
  %depth192.peel = getelementptr inbounds %struct.vpdma_data_format, ptr %79, i32 0, i32 2
  %80 = ptrtoint ptr %depth192.peel to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %depth192.peel, align 4
  %conv193.peel = zext i8 %81 to i32
  %mul194.peel = mul i32 %mul189.peel, %conv193.peel
  %shr195.peel = lshr exact i32 %mul194.peel, 3
  %add197.peel = add i32 %shr195.peel, %mul177.peel
  %82 = ptrtoint ptr %arrayidx136.peel to i32
  call void @__asan_storeN_noabort(i32 %82, i32 4)
  store i32 %add197.peel, ptr %arrayidx136.peel, align 1
  %83 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %83)
  %.pr = load i8, ptr %num_planes, align 1
  br label %for.inc.peel

for.inc.peel:                                     ; preds = %if.then186.peel, %if.then174.peel.for.inc.peel_crit_edge
  %84 = phi i8 [ %.pr, %if.then186.peel ], [ %73, %if.then174.peel.for.inc.peel_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %84)
  %cmp133.peel = icmp ugt i8 %84, 1
  br i1 %cmp133.peel, label %for.inc.peel.for.body_crit_edge, label %for.inc.peel.for.end_crit_edge

for.inc.peel.for.end_crit_edge:                   ; preds = %for.inc.peel
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.inc.peel.for.body_crit_edge:                  ; preds = %for.inc.peel
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.inc.peel.for.body_crit_edge
  %i.08 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 1, %for.inc.peel.for.body_crit_edge ]
  %arrayidx136 = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 %i.08
  %arrayidx138 = getelementptr %struct.vpe_fmt, ptr %fmt.addr.0, i32 0, i32 3, i32 %i.08
  %85 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx138, align 4
  %depth139 = getelementptr inbounds %struct.vpdma_data_format, ptr %86, i32 0, i32 2
  %87 = ptrtoint ptr %depth139 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %depth139, align 4
  %conv140 = zext i8 %88 to i32
  %89 = ptrtoint ptr %fmt1 to i32
  call void @__asan_loadN_noabort(i32 %89, i32 4)
  %90 = load i32, ptr %fmt1, align 1
  %91 = ptrtoint ptr %vpdma_fmt to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %vpdma_fmt, align 4
  %depth144 = getelementptr inbounds %struct.vpdma_data_format, ptr %92, i32 0, i32 2
  %93 = ptrtoint ptr %depth144 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %depth144, align 4
  %conv145 = zext i8 %94 to i32
  %mul = mul i32 %90, %conv145
  %shr146 = lshr i32 %mul, 3
  %bytesperline = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 %i.08, i32 1
  %95 = ptrtoint ptr %bytesperline to i32
  call void @__asan_loadN_noabort(i32 %95, i32 4)
  %96 = load i32, ptr %bytesperline, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shr146, i32 %96)
  %cmp147 = icmp ugt i32 %shr146, %96
  br i1 %cmp147, label %if.then149, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then149:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %97 = ptrtoint ptr %bytesperline to i32
  call void @__asan_storeN_noabort(i32 %97, i32 4)
  store i32 %shr146, ptr %bytesperline, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then149, %for.body.for.inc_crit_edge
  %98 = ptrtoint ptr %bytesperline to i32
  call void @__asan_loadN_noabort(i32 %98, i32 4)
  %99 = load i32, ptr %bytesperline, align 1
  %100 = tail call i32 @llvm.umax.i32(i32 %99, i32 %shr146)
  %101 = tail call i32 @llvm.umin.i32(i32 %100, i32 65520)
  %add169 = add nuw nsw i32 %101, 15
  %and170 = and i32 %add169, 131056
  %102 = ptrtoint ptr %bytesperline to i32
  call void @__asan_storeN_noabort(i32 %102, i32 4)
  store i32 %and170, ptr %bytesperline, align 1
  %103 = ptrtoint ptr %height75 to i32
  call void @__asan_loadN_noabort(i32 %103, i32 4)
  %104 = load i32, ptr %height75, align 1
  %mul202 = mul nuw nsw i32 %and170, %conv140
  %mul203 = mul i32 %mul202, %104
  %shr204 = lshr exact i32 %mul203, 3
  %105 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_storeN_noabort(i32 %105, i32 4)
  store i32 %shr204, ptr %arrayidx136, align 1
  %inc = add nuw nsw i32 %i.08, 1
  %106 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %num_planes, align 1
  %conv132 = zext i8 %107 to i32
  %cmp133 = icmp ult i32 %inc, %conv132
  br i1 %cmp133, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge, !llvm.loop !401

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.inc.peel.for.end_crit_edge, %land.lhs.true182.peel.for.end_crit_edge, %if.end130.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l_bound_align_image(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 161)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 161)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !27, !28, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !46, !48, !49, !50, !52, !53, !55, !56, !57, !59, !60, !61, !62, !64, !65, !67, !68, !69, !70, !72, !73, !74, !75, !77, !78, !79, !80, !82, !84, !85, !86, !88, !90, !91, !92, !94, !95, !96, !97, !99, !100, !101, !102, !104, !106, !108, !109, !110, !112, !113, !115, !116, !118, !119, !121, !123, !125, !127, !128, !129, !130, !132, !134, !136, !138, !139, !140, !141, !143, !144, !146, !148, !149, !150, !152, !153, !155, !156, !157, !159, !160, !161, !163, !164, !166, !167, !168, !169, !171, !172, !173, !175, !176, !177, !179, !180, !182, !183, !185, !186, !188, !189, !191, !192, !194, !195, !197, !198, !200, !201, !203, !204, !206, !207, !209, !210, !212, !213, !215, !216, !218, !219, !221, !222, !224, !225, !227, !228, !230, !231, !233, !234, !236, !237, !239, !240, !242, !243, !245, !246, !248, !249, !251, !252, !254, !255, !257, !258, !260, !261, !263, !264, !266, !267, !269, !270, !272, !273, !275, !276, !278, !279, !281, !282, !284, !285, !287, !288, !290, !291, !293, !294, !296, !297, !299, !300, !302, !303, !305, !306, !308, !309, !311, !312, !314, !315, !317, !318, !320, !321, !323, !324, !326, !327, !329, !330, !331, !333, !334, !336, !338, !340, !341, !342, !343, !345, !346, !348, !349, !351, !352, !353, !355, !356, !357, !359, !360, !361, !362, !364, !365, !366, !368, !369, !370, !371}
!llvm.module.flags = !{!373, !374, !375, !376, !377, !378, !379, !380}
!llvm.ident = !{!381}

!0 = !{ptr @__initcall__kmod_ti_vpe__373_2661_vpe_pdrv_init6, !1, !"__initcall__kmod_ti_vpe__373_2661_vpe_pdrv_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 2661, i32 1}
!2 = !{ptr @__exitcall_vpe_pdrv_exit, !1, !"__exitcall_vpe_pdrv_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description374, !4, !"__UNIQUE_ID_description374", i1 false, i1 false}
!4 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 2663, i32 1}
!5 = !{ptr @__UNIQUE_ID_author375, !6, !"__UNIQUE_ID_author375", i1 false, i1 false}
!6 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 2664, i32 1}
!7 = !{ptr @__UNIQUE_ID_file376, !8, !"__UNIQUE_ID_file376", i1 false, i1 false}
!8 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 2665, i32 1}
!9 = !{ptr @__UNIQUE_ID_license377, !8, !"__UNIQUE_ID_license377", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 2656, i32 11}
!12 = !{ptr @vpe_pdrv, !13, !"vpe_pdrv", i1 false, i1 false}
!13 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 2652, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 2526, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @vpe_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @vpe_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @vpe_probe.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 2535, i32 2}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @vpe_probe.__key.7, !26, !"__key", i1 false, i1 false}
!26 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 2542, i32 2}
!27 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 2545, i32 7}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 2547, i32 3}
!32 = !{ptr @vpe_probe._entry.10, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @vpe_probe._entry_ptr.12, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 2573, i32 3}
!36 = !{ptr @vpe_probe._entry.13, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @vpe_probe._entry_ptr.15, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 2591, i32 2}
!40 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @vpe_probe.__UNIQUE_ID_ddebug372, !39, !"__UNIQUE_ID_ddebug372", i1 false, i1 false}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 2595, i32 28}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 2601, i32 30}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 1378, i32 3}
!48 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @vpe_irq.__UNIQUE_ID_ddebug351, !47, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 1384, i32 3}
!52 = !{ptr @vpe_irq.__UNIQUE_ID_ddebug352, !51, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 1389, i32 3}
!55 = !{ptr @vpe_irq._entry, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @vpe_irq._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 1413, i32 3}
!59 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @vpe_irq._entry.24, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @vpe_irq._entry_ptr.27, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 1510, i32 2}
!64 = !{ptr @vpe_irq.__UNIQUE_ID_ddebug353, !63, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!65 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 1355, i32 2}
!67 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @dei_error._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @dei_error._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 1361, i32 2}
!72 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @ds1_uv_error._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @ds1_uv_error._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.33, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 1057, i32 4}
!77 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @add_out_dtd._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @add_out_dtd._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @port_data, !81, !"port_data", i1 false, i1 false}
!81 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 173, i32 35}
!82 = !{ptr @.str.35, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 1123, i32 4}
!84 = !{ptr @add_in_dtd._entry, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @add_in_dtd._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @m2m_ops, !87, !"m2m_ops", i1 false, i1 false}
!87 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 2462, i32 34}
!88 = !{ptr @.str.36, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 2472, i32 2}
!90 = !{ptr @.str.37, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @vpe_runtime_get.__UNIQUE_ID_ddebug370, !89, !"__UNIQUE_ID_ddebug370", i1 false, i1 false}
!92 = !{ptr @.str.38, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 2503, i32 3}
!94 = !{ptr @.str.39, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @vpe_fw_cb._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @vpe_fw_cb._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.41, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 2515, i32 2}
!99 = !{ptr @.str.42, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @vpe_fw_cb._entry.40, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @vpe_fw_cb._entry_ptr.43, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @vpe_videodev, !103, !"vpe_videodev", i1 false, i1 false}
!103 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 2452, i32 34}
!104 = !{ptr @vpe_fops, !105, !"vpe_fops", i1 false, i1 false}
!105 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 2443, i32 42}
!106 = !{ptr @.str.44, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 2278, i32 2}
!108 = !{ptr @.str.45, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @vpe_open.__UNIQUE_ID_ddebug365, !107, !"__UNIQUE_ID_ddebug365", i1 false, i1 false}
!110 = !{ptr @vpe_open._key, !111, !"_key", i1 false, i1 false}
!111 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 2314, i32 2}
!112 = !{ptr @.str.46, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @.str.47, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 2373, i32 3}
!115 = !{ptr @vpe_open.__UNIQUE_ID_ddebug366, !114, !"__UNIQUE_ID_ddebug366", i1 false, i1 false}
!116 = !{ptr @.str.48, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 2379, i32 2}
!118 = !{ptr @vpe_open.__UNIQUE_ID_ddebug367, !117, !"__UNIQUE_ID_ddebug367", i1 false, i1 false}
!119 = !{ptr @.str.49, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 2258, i32 10}
!121 = !{ptr @vpe_bufs_per_job, !122, !"vpe_bufs_per_job", i1 false, i1 false}
!122 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 2255, i32 38}
!123 = !{ptr @vpe_ctrl_ops, !124, !"vpe_ctrl_ops", i1 false, i1 false}
!124 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 1989, i32 35}
!125 = !{ptr @.str.50, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 1982, i32 3}
!127 = !{ptr @.str.51, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @vpe_s_ctrl._entry, !126, !"_entry", i1 false, i1 false}
!129 = !{ptr @vpe_s_ctrl._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @vpe_formats, !131, !"vpe_formats", i1 false, i1 false}
!131 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 234, i32 23}
!132 = distinct !{null, !133, !"dei_regs", i1 false, i1 false}
!133 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 140, i32 34}
!134 = !{ptr @us_coeffs, !135, !"us_coeffs", i1 false, i1 false}
!135 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 109, i32 35}
!136 = !{ptr @.str.52, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 568, i32 3}
!138 = !{ptr @.str.53, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @realloc_mv_buffers._entry, !137, !"_entry", i1 false, i1 false}
!140 = !{ptr @realloc_mv_buffers._entry_ptr, !137, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @realloc_mv_buffers._entry.54, !142, !"_entry", i1 false, i1 false}
!142 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 575, i32 3}
!143 = !{ptr @realloc_mv_buffers._entry_ptr.55, !142, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @vpe_qops, !145, !"vpe_qops", i1 false, i1 false}
!145 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 2209, i32 29}
!146 = !{ptr @.str.56, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 2043, i32 2}
!148 = !{ptr @.str.57, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @vpe_queue_setup.__UNIQUE_ID_ddebug362, !147, !"__UNIQUE_ID_ddebug362", i1 false, i1 false}
!150 = !{ptr @.str.58, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 2046, i32 3}
!152 = !{ptr @vpe_queue_setup.__UNIQUE_ID_ddebug363, !151, !"__UNIQUE_ID_ddebug363", i1 false, i1 false}
!153 = !{ptr @.str.59, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 2059, i32 2}
!155 = !{ptr @.str.60, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @vpe_buf_prepare.__UNIQUE_ID_ddebug364, !154, !"__UNIQUE_ID_ddebug364", i1 false, i1 false}
!157 = !{ptr @.str.61, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 2081, i32 4}
!159 = !{ptr @vpe_buf_prepare._entry, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @vpe_buf_prepare._entry_ptr, !158, !"_entry_ptr", i1 false, i1 false}
!161 = distinct !{null, !162, !"__already_done", i1 false, i1 false}
!162 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!163 = !{ptr @.str.62, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @.str.63, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 2183, i32 3}
!166 = !{ptr @.str.64, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @vpe_start_streaming._entry, !165, !"_entry", i1 false, i1 false}
!168 = !{ptr @vpe_start_streaming._entry_ptr, !165, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.65, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 957, i32 2}
!171 = !{ptr @.str.66, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @vpe_dump_regs.__UNIQUE_ID_ddebug299, !170, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!173 = !{ptr @.str.67, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 959, i32 2}
!175 = !{ptr @vpe_dump_regs.__UNIQUE_ID_ddebug300, !174, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!176 = !{ptr @.str.68, !174, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @vpe_dump_regs.__UNIQUE_ID_ddebug301, !178, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!178 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 960, i32 2}
!179 = !{ptr @.str.69, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @vpe_dump_regs.__UNIQUE_ID_ddebug302, !181, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!181 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 961, i32 2}
!182 = !{ptr @.str.70, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @vpe_dump_regs.__UNIQUE_ID_ddebug303, !184, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!184 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 962, i32 2}
!185 = !{ptr @.str.71, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @vpe_dump_regs.__UNIQUE_ID_ddebug304, !187, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!187 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 963, i32 2}
!188 = !{ptr @.str.72, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @vpe_dump_regs.__UNIQUE_ID_ddebug305, !190, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!190 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 964, i32 2}
!191 = !{ptr @.str.73, !190, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @vpe_dump_regs.__UNIQUE_ID_ddebug306, !193, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!193 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 965, i32 2}
!194 = !{ptr @.str.74, !193, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @vpe_dump_regs.__UNIQUE_ID_ddebug307, !196, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!196 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 966, i32 2}
!197 = !{ptr @.str.75, !196, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @vpe_dump_regs.__UNIQUE_ID_ddebug308, !199, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!199 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 967, i32 2}
!200 = !{ptr @.str.76, !199, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @vpe_dump_regs.__UNIQUE_ID_ddebug309, !202, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!202 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 968, i32 2}
!203 = !{ptr @.str.77, !202, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @vpe_dump_regs.__UNIQUE_ID_ddebug310, !205, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!205 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 969, i32 2}
!206 = !{ptr @.str.78, !205, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @vpe_dump_regs.__UNIQUE_ID_ddebug311, !208, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!208 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 970, i32 2}
!209 = !{ptr @.str.79, !208, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @vpe_dump_regs.__UNIQUE_ID_ddebug312, !211, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!211 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 971, i32 2}
!212 = !{ptr @.str.80, !211, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @vpe_dump_regs.__UNIQUE_ID_ddebug313, !214, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!214 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 972, i32 2}
!215 = !{ptr @.str.81, !214, !"<string literal>", i1 false, i1 false}
!216 = !{ptr @vpe_dump_regs.__UNIQUE_ID_ddebug314, !217, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!217 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 973, i32 2}
!218 = !{ptr @.str.82, !217, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @vpe_dump_regs.__UNIQUE_ID_ddebug315, !220, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!220 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 974, i32 2}
!221 = !{ptr @.str.83, !220, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @vpe_dump_regs.__UNIQUE_ID_ddebug316, !223, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!223 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 975, i32 2}
!224 = !{ptr @.str.84, !223, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @vpe_dump_regs.__UNIQUE_ID_ddebug317, !226, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!226 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 976, i32 2}
!227 = !{ptr @.str.85, !226, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @vpe_dump_regs.__UNIQUE_ID_ddebug318, !229, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!229 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 977, i32 2}
!230 = !{ptr @.str.86, !229, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @vpe_dump_regs.__UNIQUE_ID_ddebug319, !232, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!232 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 978, i32 2}
!233 = !{ptr @.str.87, !232, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @vpe_dump_regs.__UNIQUE_ID_ddebug320, !235, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!235 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 979, i32 2}
!236 = !{ptr @.str.88, !235, !"<string literal>", i1 false, i1 false}
!237 = !{ptr @vpe_dump_regs.__UNIQUE_ID_ddebug321, !238, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!238 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 980, i32 2}
!239 = !{ptr @.str.89, !238, !"<string literal>", i1 false, i1 false}
!240 = !{ptr @vpe_dump_regs.__UNIQUE_ID_ddebug322, !241, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!241 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 981, i32 2}
!242 = !{ptr @.str.90, !241, !"<string literal>", i1 false, i1 false}
!243 = !{ptr @vpe_dump_regs.__UNIQUE_ID_ddebug323, !244, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!244 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 982, i32 2}
!245 = !{ptr @.str.91, !244, !"<string literal>", i1 false, i1 false}
!246 = !{ptr @vpe_dump_regs.__UNIQUE_ID_ddebug324, !247, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!247 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 983, i32 2}
!248 = !{ptr @.str.92, !247, !"<string literal>", i1 false, i1 false}
!249 = !{ptr @vpe_dump_regs.__UNIQUE_ID_ddebug325, !250, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!250 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 984, i32 2}
!251 = !{ptr @.str.93, !250, !"<string literal>", i1 false, i1 false}
!252 = !{ptr @vpe_dump_regs.__UNIQUE_ID_ddebug326, !253, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!253 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 985, i32 2}
!254 = !{ptr @.str.94, !253, !"<string literal>", i1 false, i1 false}
!255 = !{ptr @vpe_dump_regs.__UNIQUE_ID_ddebug327, !256, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!256 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 986, i32 2}
!257 = !{ptr @.str.95, !256, !"<string literal>", i1 false, i1 false}
!258 = !{ptr @vpe_dump_regs.__UNIQUE_ID_ddebug328, !259, !"__UNIQUE_ID_ddebug328", i1 false, i1 false}
!259 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 987, i32 2}
!260 = !{ptr @.str.96, !259, !"<string literal>", i1 false, i1 false}
!261 = !{ptr @vpe_dump_regs.__UNIQUE_ID_ddebug329, !262, !"__UNIQUE_ID_ddebug329", i1 false, i1 false}
!262 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 988, i32 2}
!263 = !{ptr @.str.97, !262, !"<string literal>", i1 false, i1 false}
!264 = !{ptr @vpe_dump_regs.__UNIQUE_ID_ddebug330, !265, !"__UNIQUE_ID_ddebug330", i1 false, i1 false}
!265 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 989, i32 2}
!266 = !{ptr @.str.98, !265, !"<string literal>", i1 false, i1 false}
!267 = !{ptr @vpe_dump_regs.__UNIQUE_ID_ddebug331, !268, !"__UNIQUE_ID_ddebug331", i1 false, i1 false}
!268 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 990, i32 2}
!269 = !{ptr @.str.99, !268, !"<string literal>", i1 false, i1 false}
!270 = !{ptr @vpe_dump_regs.__UNIQUE_ID_ddebug332, !271, !"__UNIQUE_ID_ddebug332", i1 false, i1 false}
!271 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 991, i32 2}
!272 = !{ptr @.str.100, !271, !"<string literal>", i1 false, i1 false}
!273 = !{ptr @vpe_dump_regs.__UNIQUE_ID_ddebug333, !274, !"__UNIQUE_ID_ddebug333", i1 false, i1 false}
!274 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 992, i32 2}
!275 = !{ptr @.str.101, !274, !"<string literal>", i1 false, i1 false}
!276 = !{ptr @vpe_dump_regs.__UNIQUE_ID_ddebug334, !277, !"__UNIQUE_ID_ddebug334", i1 false, i1 false}
!277 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 993, i32 2}
!278 = !{ptr @.str.102, !277, !"<string literal>", i1 false, i1 false}
!279 = !{ptr @vpe_dump_regs.__UNIQUE_ID_ddebug335, !280, !"__UNIQUE_ID_ddebug335", i1 false, i1 false}
!280 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 994, i32 2}
!281 = !{ptr @.str.103, !280, !"<string literal>", i1 false, i1 false}
!282 = !{ptr @vpe_dump_regs.__UNIQUE_ID_ddebug336, !283, !"__UNIQUE_ID_ddebug336", i1 false, i1 false}
!283 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 995, i32 2}
!284 = !{ptr @.str.104, !283, !"<string literal>", i1 false, i1 false}
!285 = !{ptr @vpe_dump_regs.__UNIQUE_ID_ddebug337, !286, !"__UNIQUE_ID_ddebug337", i1 false, i1 false}
!286 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 996, i32 2}
!287 = !{ptr @.str.105, !286, !"<string literal>", i1 false, i1 false}
!288 = !{ptr @vpe_dump_regs.__UNIQUE_ID_ddebug338, !289, !"__UNIQUE_ID_ddebug338", i1 false, i1 false}
!289 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 997, i32 2}
!290 = !{ptr @.str.106, !289, !"<string literal>", i1 false, i1 false}
!291 = !{ptr @vpe_dump_regs.__UNIQUE_ID_ddebug339, !292, !"__UNIQUE_ID_ddebug339", i1 false, i1 false}
!292 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 998, i32 2}
!293 = !{ptr @.str.107, !292, !"<string literal>", i1 false, i1 false}
!294 = !{ptr @vpe_dump_regs.__UNIQUE_ID_ddebug340, !295, !"__UNIQUE_ID_ddebug340", i1 false, i1 false}
!295 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 999, i32 2}
!296 = !{ptr @.str.108, !295, !"<string literal>", i1 false, i1 false}
!297 = !{ptr @vpe_dump_regs.__UNIQUE_ID_ddebug341, !298, !"__UNIQUE_ID_ddebug341", i1 false, i1 false}
!298 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 1000, i32 2}
!299 = !{ptr @.str.109, !298, !"<string literal>", i1 false, i1 false}
!300 = !{ptr @vpe_dump_regs.__UNIQUE_ID_ddebug342, !301, !"__UNIQUE_ID_ddebug342", i1 false, i1 false}
!301 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 1001, i32 2}
!302 = !{ptr @.str.110, !301, !"<string literal>", i1 false, i1 false}
!303 = !{ptr @vpe_dump_regs.__UNIQUE_ID_ddebug343, !304, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!304 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 1002, i32 2}
!305 = !{ptr @.str.111, !304, !"<string literal>", i1 false, i1 false}
!306 = !{ptr @vpe_dump_regs.__UNIQUE_ID_ddebug344, !307, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!307 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 1003, i32 2}
!308 = !{ptr @.str.112, !307, !"<string literal>", i1 false, i1 false}
!309 = !{ptr @vpe_dump_regs.__UNIQUE_ID_ddebug345, !310, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!310 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 1004, i32 2}
!311 = !{ptr @.str.113, !310, !"<string literal>", i1 false, i1 false}
!312 = !{ptr @vpe_dump_regs.__UNIQUE_ID_ddebug346, !313, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!313 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 1005, i32 2}
!314 = !{ptr @.str.114, !313, !"<string literal>", i1 false, i1 false}
!315 = !{ptr @vpe_dump_regs.__UNIQUE_ID_ddebug347, !316, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!316 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 1006, i32 2}
!317 = !{ptr @.str.115, !316, !"<string literal>", i1 false, i1 false}
!318 = !{ptr @vpe_dump_regs.__UNIQUE_ID_ddebug348, !319, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!319 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 1007, i32 2}
!320 = !{ptr @.str.116, !319, !"<string literal>", i1 false, i1 false}
!321 = !{ptr @vpe_dump_regs.__UNIQUE_ID_ddebug349, !322, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!322 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 1008, i32 2}
!323 = !{ptr @.str.117, !322, !"<string literal>", i1 false, i1 false}
!324 = !{ptr @vpe_dump_regs.__UNIQUE_ID_ddebug350, !325, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!325 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 1009, i32 2}
!326 = !{ptr @.str.118, !325, !"<string literal>", i1 false, i1 false}
!327 = !{ptr @.str.119, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 2407, i32 2}
!329 = !{ptr @.str.120, !328, !"<string literal>", i1 false, i1 false}
!330 = !{ptr @vpe_release.__UNIQUE_ID_ddebug368, !328, !"__UNIQUE_ID_ddebug368", i1 false, i1 false}
!331 = !{ptr @.str.121, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 2436, i32 3}
!333 = !{ptr @vpe_release.__UNIQUE_ID_ddebug369, !332, !"__UNIQUE_ID_ddebug369", i1 false, i1 false}
!334 = !{ptr @vpe_ioctl_ops, !335, !"vpe_ioctl_ops", i1 false, i1 false}
!335 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 1993, i32 36}
!336 = !{ptr @.str.122, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 1525, i32 49}
!338 = !{ptr @.str.123, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 1743, i32 3}
!340 = !{ptr @.str.124, !339, !"<string literal>", i1 false, i1 false}
!341 = !{ptr @__vpe_s_fmt._entry, !339, !"_entry", i1 false, i1 false}
!342 = !{ptr @__vpe_s_fmt._entry_ptr, !339, !"_entry_ptr", i1 false, i1 false}
!343 = !{ptr @.str.125, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 1773, i32 2}
!345 = !{ptr @__vpe_s_fmt.__UNIQUE_ID_ddebug359, !344, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!346 = !{ptr @.str.126, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 1777, i32 3}
!348 = !{ptr @__vpe_s_fmt.__UNIQUE_ID_ddebug360, !347, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!349 = !{ptr @.str.127, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 1607, i32 3}
!351 = !{ptr @.str.128, !350, !"<string literal>", i1 false, i1 false}
!352 = !{ptr @__vpe_try_fmt.__UNIQUE_ID_ddebug354, !350, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!353 = !{ptr @.str.129, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 1955, i32 3}
!355 = !{ptr @.str.130, !354, !"<string literal>", i1 false, i1 false}
!356 = !{ptr @vpe_s_selection.__UNIQUE_ID_ddebug361, !354, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!357 = !{ptr @.str.131, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 1855, i32 3}
!359 = !{ptr @.str.132, !358, !"<string literal>", i1 false, i1 false}
!360 = !{ptr @__vpe_try_selection._entry, !358, !"_entry", i1 false, i1 false}
!361 = !{ptr @__vpe_try_selection._entry_ptr, !358, !"_entry_ptr", i1 false, i1 false}
!362 = !{ptr @.str.133, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 2484, i32 2}
!364 = !{ptr @.str.134, !363, !"<string literal>", i1 false, i1 false}
!365 = !{ptr @vpe_runtime_put.__UNIQUE_ID_ddebug371, !363, !"__UNIQUE_ID_ddebug371", i1 false, i1 false}
!366 = !{ptr @.str.135, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 2629, i32 2}
!368 = !{ptr @.str.136, !367, !"<string literal>", i1 false, i1 false}
!369 = !{ptr @vpe_remove._entry, !367, !"_entry", i1 false, i1 false}
!370 = !{ptr @vpe_remove._entry_ptr, !367, !"_entry_ptr", i1 false, i1 false}
!371 = !{ptr @vpe_of_match, !372, !"vpe_of_match", i1 false, i1 false}
!372 = !{!"../drivers/media/platform/ti-vpe/vpe.c", i32 2643, i32 34}
!373 = !{i32 1, !"wchar_size", i32 2}
!374 = !{i32 1, !"min_enum_size", i32 4}
!375 = !{i32 8, !"branch-target-enforcement", i32 0}
!376 = !{i32 8, !"sign-return-address", i32 0}
!377 = !{i32 8, !"sign-return-address-all", i32 0}
!378 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!379 = !{i32 7, !"uwtable", i32 1}
!380 = !{i32 7, !"frame-pointer", i32 2}
!381 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!382 = !{i64 2153833897}
!383 = !{i64 6291775}
!384 = !{i64 6292193}
!385 = !{i64 2153832542}
!386 = !{i64 2148823979, i64 2148823984, i64 2148823997, i64 2148824041, i64 2148824075, i64 2148824096}
!387 = !{!"branch_weights", i32 1, i32 2000}
!388 = !{!"branch_weights", i32 1, i32 2001, i32 2000}
!389 = !{i8 0, i8 2}
!390 = !{i64 2148255733}
!391 = !{i64 740556, i64 740581, i64 740603, i64 740619, i64 740631, i64 740651, i64 740675, i64 740691, i64 740703}
!392 = !{i64 2148255921}
!393 = !{i64 2148341725}
!394 = !{i64 2148257034, i64 2148257066, i64 2148257095, i64 2148257129, i64 2148257160, i64 2148257183}
!395 = !{i64 2148341954}
!396 = !{i64 2148344766}
!397 = !{i64 2148259499, i64 2148259531, i64 2148259560, i64 2148259594, i64 2148259625, i64 2148259648}
!398 = !{i64 2148344995}
!399 = !{!"branch_weights", i32 2000, i32 1}
!400 = !{i32 0, i32 33}
!401 = distinct !{!401, !402}
!402 = !{!"llvm.loop.peeled.count", i32 1}
