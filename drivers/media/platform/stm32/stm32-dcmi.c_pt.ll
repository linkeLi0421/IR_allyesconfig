; ModuleID = '/llk/IR_all_yes/drivers/media/platform/stm32/stm32-dcmi.c_pt.bc'
source_filename = "../drivers/media/platform/stm32/stm32-dcmi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_async_notifier_operations = type { ptr, ptr, ptr }
%struct.dcmi_format = type { i32, i32, i8 }
%struct.v4l2_fwnode_endpoint = type { %struct.fwnode_endpoint, i32, %struct.anon.84, ptr, i32 }
%struct.fwnode_endpoint = type { i32, i32, ptr }
%struct.anon.84 = type { %struct.v4l2_fwnode_bus_parallel, %struct.v4l2_fwnode_bus_mipi_csi1, %struct.v4l2_fwnode_bus_mipi_csi2 }
%struct.v4l2_fwnode_bus_parallel = type { i32, i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi1 = type { i8, [2 x i8], i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi2 = type { i32, [8 x i8], i8, i8, [9 x i8] }
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
%struct.stm32_dcmi = type { %struct.spinlock, ptr, ptr, ptr, ptr, i32, %struct.list_head, ptr, i32, %struct.v4l2_device, ptr, %struct.v4l2_async_notifier, ptr, %struct.v4l2_format, %struct.v4l2_rect, i8, ptr, i32, ptr, ptr, i32, %struct.dcmi_framesize, %struct.v4l2_rect, %struct.mutex, %struct.vb2_queue, %struct.v4l2_fwnode_bus_parallel, i32, %struct.completion, ptr, i32, ptr, i32, i32, i32, i32, i32, %struct.mutex, %struct.media_device, %struct.media_pad, %struct.media_pipeline }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_async_notifier = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.v4l2_format = type { i32, %union.anon.97 }
%union.anon.97 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.99, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.99 = type { i8 }
%struct.dcmi_framesize = type { i32, i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.media_graph = type { [16 x %struct.anon.88], %struct.media_entity_enum, i32 }
%struct.anon.88 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.91 }
%union.anon.91 = type { %struct.anon.92 }
%struct.anon.92 = type { i32, i32 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.118, i16, i16, i16, [10 x i16] }
%union.anon.118 = type { i16 }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_subdev_state = type { ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_input = type { i32, [32 x i8], i32, i32, i32, i64, i32, i32, [3 x i32] }
%struct.v4l2_selection = type { i32, i32, i32, %struct.v4l2_rect, [9 x i32] }
%struct.v4l2_subdev_frame_size_enum = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32] }
%struct.v4l2_frmsizeenum = type { i32, i32, i32, %union.anon.114, [2 x i32] }
%union.anon.114 = type { %struct.v4l2_frmsize_stepwise }
%struct.v4l2_frmsize_stepwise = type { i32, i32, i32, i32, i32, i32 }
%struct.v4l2_subdev_frame_interval_enum = type { i32, i32, i32, i32, i32, %struct.v4l2_fract, i32, [8 x i32] }
%struct.v4l2_fract = type { i32, i32 }
%struct.v4l2_frmivalenum = type { i32, i32, i32, i32, i32, %union.anon.115, [2 x i32] }
%union.anon.115 = type { %struct.v4l2_frmival_stepwise }
%struct.v4l2_frmival_stepwise = type { %struct.v4l2_fract, %struct.v4l2_fract, %struct.v4l2_fract }
%struct.dcmi_buf = type { %struct.vb2_v4l2_buffer, i8, i32, i32, %struct.list_head }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.87, i32 }
%union.anon.87 = type { i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.v4l2_subdev_selection = type { i32, i32, i32, i32, %struct.v4l2_rect, [8 x i32] }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }

@__initcall__kmod_stm32_dcmi__361_2156_stm32_dcmi_driver_init6 = internal global ptr @stm32_dcmi_driver_init, section ".initcall6.init", align 4
@stm32_dcmi_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @dcmi_probe, ptr @dcmi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @stm32_dcmi_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dcmi_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_stm32_dcmi_driver_exit = internal global ptr @stm32_dcmi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author362 = internal constant [57 x i8] c"stm32_dcmi.author=Yannick Fertre <yannick.fertre@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author363 = internal constant [57 x i8] c"stm32_dcmi.author=Hugues Fruchet <hugues.fruchet@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description364 = internal constant [87 x i8] c"stm32_dcmi.description=STMicroelectronics STM32 Digital Camera Memory Interface driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file365 = internal constant [56 x i8] c"stm32_dcmi.file=drivers/media/platform/stm32/stm32-dcmi\00", section ".modinfo", align 1
@__UNIQUE_ID_license366 = internal constant [23 x i8] c"stm32_dcmi.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"stm32-dcmi\00", [21 x i8] zeroinitializer }, align 32
@stm32_dcmi_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32-dcmi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@dcmi_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @dcmi_suspend, ptr @dcmi_resume, ptr @dcmi_suspend, ptr @dcmi_resume, ptr @dcmi_suspend, ptr @dcmi_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dcmi_runtime_suspend, ptr @dcmi_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@dcmi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1875, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Could not find a match in devicetree\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dcmi_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/media/platform/stm32/stm32-dcmi.c\00", [54 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dcmi_probe._entry_ptr = internal global ptr @dcmi_probe._entry, section ".printk_index", align 4
@dcmi_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 1886, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Could not get reset control\0A\00", [35 x i8] zeroinitializer }, align 32
@dcmi_probe._entry_ptr.8 = internal global ptr @dcmi_probe._entry.6, section ".printk_index", align 4
@dcmi_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 1894, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Could not find the endpoint\0A\00", [35 x i8] zeroinitializer }, align 32
@dcmi_probe._entry_ptr.11 = internal global ptr @dcmi_probe._entry.9, section ".printk_index", align 4
@dcmi_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 1901, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Could not parse the endpoint\0A\00", [34 x i8] zeroinitializer }, align 32
@dcmi_probe._entry_ptr.14 = internal global ptr @dcmi_probe._entry.12, section ".printk_index", align 4
@dcmi_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 1906, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"CSI bus not supported\0A\00", [41 x i8] zeroinitializer }, align 32
@dcmi_probe._entry_ptr.17 = internal global ptr @dcmi_probe._entry.15, section ".printk_index", align 4
@dcmi_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 1913, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"BT656 bus conflicts with %u bits bus width (8 bits required)\0A\00", [34 x i8] zeroinitializer }, align 32
@dcmi_probe._entry_ptr.20 = internal global ptr @dcmi_probe._entry.18, section ".printk_index", align 4
@dcmi_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 1930, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Could not get resource\0A\00", [40 x i8] zeroinitializer }, align 32
@dcmi_probe._entry_ptr.23 = internal global ptr @dcmi_probe._entry.21, section ".printk_index", align 4
@dcmi_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.2, ptr @.str.3, i32 1936, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Could not map registers\0A\00", [39 x i8] zeroinitializer }, align 32
@dcmi_probe._entry_ptr.26 = internal global ptr @dcmi_probe._entry.24, section ".printk_index", align 4
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mclk\00", [27 x i8] zeroinitializer }, align 32
@dcmi_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.2, ptr @.str.3, i32 1943, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Unable to get mclk\0A\00", [44 x i8] zeroinitializer }, align 32
@dcmi_probe._entry_ptr.30 = internal global ptr @dcmi_probe._entry.28, section ".printk_index", align 4
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@dcmi_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.2, ptr @.str.3, i32 1952, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to request DMA channel: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@dcmi_probe._entry_ptr.34 = internal global ptr @dcmi_probe._entry.32, section ".printk_index", align 4
@dcmi_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&dcmi->irqlock\00", [17 x i8] zeroinitializer }, align 32
@dcmi_probe.__key.36 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.37 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&dcmi->lock\00", [20 x i8] zeroinitializer }, align 32
@dcmi_probe.__key.38 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&dcmi->dma_lock\00", [16 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"platform:%s\00", [20 x i8] zeroinitializer }, align 32
@dcmi_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr @vb2_fop_read, ptr null, ptr @vb2_fop_poll, ptr @video_ioctl2, ptr null, ptr @vb2_fop_mmap, ptr @dcmi_open, ptr @dcmi_release }, [60 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"stm32_dcmi\00", [21 x i8] zeroinitializer }, align 32
@dcmi_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @dcmi_querycap, ptr @dcmi_enum_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dcmi_g_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dcmi_s_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dcmi_try_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vb2_ioctl_reqbufs, ptr @vb2_ioctl_querybuf, ptr @vb2_ioctl_qbuf, ptr @vb2_ioctl_expbuf, ptr @vb2_ioctl_dqbuf, ptr @vb2_ioctl_create_bufs, ptr @vb2_ioctl_prepare_buf, ptr null, ptr null, ptr null, ptr @vb2_ioctl_streamon, ptr @vb2_ioctl_streamoff, ptr null, ptr null, ptr null, ptr @dcmi_enum_input, ptr @dcmi_g_input, ptr @dcmi_s_input, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dcmi_g_selection, ptr @dcmi_s_selection, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dcmi_g_parm, ptr @dcmi_s_parm, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_log_status, ptr null, ptr null, ptr null, ptr null, ptr @dcmi_enum_framesizes, ptr @dcmi_enum_frameintervals, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, [120 x i8] zeroinitializer }, align 32
@dcmi_probe._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.2, ptr @.str.3, i32 2006, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to init media entity pad\0A\00", [63 x i8] zeroinitializer }, align 32
@dcmi_probe._entry_ptr.44 = internal global ptr @dcmi_probe._entry.42, section ".printk_index", align 4
@dcmi_probe._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.2, ptr @.str.3, i32 2013, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to register video device\0A\00", [63 x i8] zeroinitializer }, align 32
@dcmi_probe._entry_ptr.47 = internal global ptr @dcmi_probe._entry.45, section ".printk_index", align 4
@dcmi_probe.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.41, ptr @.str.2, ptr @.str.3, ptr @.str.48, i8 1, i8 -8, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Device registered as %s\0A\00", [39 x i8] zeroinitializer }, align 32
@dcmi_video_qops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @dcmi_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr @dcmi_buf_init, ptr @dcmi_buf_prepare, ptr null, ptr null, ptr @dcmi_start_streaming, ptr @dcmi_stop_streaming, ptr @dcmi_buf_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@vb2_dma_contig_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@dcmi_probe._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.2, ptr @.str.3, i32 2034, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to initialize vb2 queue\0A\00", [32 x i8] zeroinitializer }, align 32
@dcmi_probe._entry_ptr.51 = internal global ptr @dcmi_probe._entry.49, section ".printk_index", align 4
@dcmi_probe._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.2, ptr @.str.3, i32 2045, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to assert the reset line\0A\00", [63 x i8] zeroinitializer }, align 32
@dcmi_probe._entry_ptr.54 = internal global ptr @dcmi_probe._entry.52, section ".printk_index", align 4
@dcmi_probe._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.2, ptr @.str.3, i32 2053, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to deassert the reset line\0A\00", [61 x i8] zeroinitializer }, align 32
@dcmi_probe._entry_ptr.57 = internal global ptr @dcmi_probe._entry.55, section ".printk_index", align 4
@dcmi_probe._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.2, ptr @.str.3, i32 2057, ptr @.str.60, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Probe done\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@dcmi_probe._entry_ptr.61 = internal global ptr @dcmi_probe._entry.58, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.62 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@dcmi_set_fmt.__UNIQUE_ID_ddebug341 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.41, ptr @.str.63, ptr @.str.3, ptr @.str.64, i8 1, i8 19, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dcmi_set_fmt\00", [19 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Sensor format set to 0x%x %ux%u\0A\00", [63 x i8] zeroinitializer }, align 32
@dcmi_set_fmt.__UNIQUE_ID_ddebug342 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.41, ptr @.str.63, ptr @.str.3, ptr @.str.65, i8 1, i8 20, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Buffer format set to %4.4s %ux%u\0A\00", [62 x i8] zeroinitializer }, align 32
@dcmi_pipeline_s_fmt.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.41, ptr @.str.66, ptr @.str.3, ptr @.str.67, i8 0, i8 -96, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dcmi_pipeline_s_fmt\00", [44 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\22%s\22:%d pad format set to 0x%x %ux%u\0A\00", [58 x i8] zeroinitializer }, align 32
@dcmi_pipeline_s_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.66, ptr @.str.3, i32 651, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%s: Failed to set format 0x%x %ux%u on \22%s\22:%d pad (%d)\0A\00", [39 x i8] zeroinitializer }, align 32
@dcmi_pipeline_s_fmt._entry_ptr = internal global ptr @dcmi_pipeline_s_fmt._entry, section ".printk_index", align 4
@dcmi_pipeline_s_fmt.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.41, ptr @.str.66, ptr @.str.3, ptr @.str.69, i8 0, i8 -91, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\22%s\22:%d pad format has been changed to 0x%x %ux%u\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"STM32 Camera Memory Interface\00", [34 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"platform:dcmi\00", [18 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Camera\00", [25 x i8] zeroinitializer }, align 32
@dcmi_s_selection.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.41, ptr @.str.73, ptr @.str.3, ptr @.str.74, i8 1, i8 75, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dcmi_s_selection\00", [47 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"s_selection: crop %ux%u@(%u,%u) from %ux%u\0A\00", [52 x i8] zeroinitializer }, align 32
@dcmi_s_selection.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.41, ptr @.str.73, ptr @.str.3, ptr @.str.75, i8 1, i8 76, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"s_selection: crop is disabled\0A\00", [33 x i8] zeroinitializer }, align 32
@dcmi_queue_setup.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.41, ptr @.str.76, ptr @.str.3, ptr @.str.77, i8 0, i8 126, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dcmi_queue_setup\00", [47 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Setup queue, count=%d, size=%d\0A\00", [32 x i8] zeroinitializer }, align 32
@dcmi_buf_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.3, i32 532, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s data will not fit into plane (%lu < %lu)\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dcmi_buf_prepare\00", [47 x i8] zeroinitializer }, align 32
@dcmi_buf_prepare._entry_ptr = internal global ptr @dcmi_buf_prepare._entry, section ".printk_index", align 4
@dcmi_buf_prepare.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.41, ptr @.str.79, ptr @.str.3, ptr @.str.80, i8 0, i8 -119, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"buffer[%d] phy=%pad size=%zu\0A\00", [34 x i8] zeroinitializer }, align 32
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.81 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@dcmi_start_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.3, i32 730, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s: Failed to start streaming, cannot get sync (%d)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dcmi_start_streaming\00", [43 x i8] zeroinitializer }, align 32
@dcmi_start_streaming._entry_ptr = internal global ptr @dcmi_start_streaming._entry, section ".printk_index", align 4
@dcmi_start_streaming._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.83, ptr @.str.3, i32 737, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"%s: Failed to start streaming, media pipeline start error (%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@dcmi_start_streaming._entry_ptr.86 = internal global ptr @dcmi_start_streaming._entry.84, section ".printk_index", align 4
@dcmi_start_streaming.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.41, ptr @.str.83, ptr @.str.3, ptr @.str.87, i8 0, i8 -53, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Start streaming is deferred to next buffer queueing\0A\00", [43 x i8] zeroinitializer }, align 32
@dcmi_start_streaming.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.41, ptr @.str.83, ptr @.str.3, ptr @.str.88, i8 0, i8 -50, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Start streaming, starting capture\0A\00", [61 x i8] zeroinitializer }, align 32
@dcmi_start_streaming._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.83, ptr @.str.3, i32 832, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: Start streaming failed, cannot start capture\0A\00", [46 x i8] zeroinitializer }, align 32
@dcmi_start_streaming._entry_ptr.91 = internal global ptr @dcmi_start_streaming._entry.89, section ".printk_index", align 4
@dcmi_pipeline_s_stream._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.93, ptr @.str.3, i32 699, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: \22%s\22 failed to %s streaming (%d)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dcmi_pipeline_s_stream\00", [41 x i8] zeroinitializer }, align 32
@dcmi_pipeline_s_stream._entry_ptr = internal global ptr @dcmi_pipeline_s_stream._entry, section ".printk_index", align 4
@.str.94 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"start\00", [26 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"stop\00", [27 x i8] zeroinitializer }, align 32
@dcmi_pipeline_s_stream.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.41, ptr @.str.93, ptr @.str.3, ptr @.str.96, i8 0, i8 -80, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.96 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\22%s\22 is %s\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"started\00", [24 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"stopped\00", [24 x i8] zeroinitializer }, align 32
@dcmi_set_crop.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.41, ptr @.str.99, ptr @.str.3, ptr @.str.100, i8 0, i8 98, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.99 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dcmi_set_crop\00", [18 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Cropping to %ux%u@%u:%u\0A\00", [39 x i8] zeroinitializer }, align 32
@dcmi_start_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.102, ptr @.str.3, i32 317, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: DMA channel config failed (%d)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dcmi_start_dma\00", [17 x i8] zeroinitializer }, align 32
@dcmi_start_dma._entry_ptr = internal global ptr @dcmi_start_dma._entry, section ".printk_index", align 4
@dcmi_start_dma._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.102, ptr @.str.3, i32 335, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"%s: DMA dmaengine_prep_slave_single failed for buffer phy=%pad size=%zu\0A\00", [55 x i8] zeroinitializer }, align 32
@dcmi_start_dma._entry_ptr.105 = internal global ptr @dcmi_start_dma._entry.103, section ".printk_index", align 4
@dcmi_start_dma._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.102, ptr @.str.3, i32 347, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: DMA submission failed\0A\00", [37 x i8] zeroinitializer }, align 32
@dcmi_start_dma._entry_ptr.108 = internal global ptr @dcmi_start_dma._entry.106, section ".printk_index", align 4
@dcmi_dma_callback.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.41, ptr @.str.109, ptr @.str.3, ptr @.str.110, i8 0, i8 66, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.109 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dcmi_dma_callback\00", [46 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: Received DMA_IN_PROGRESS\0A\00", [34 x i8] zeroinitializer }, align 32
@dcmi_dma_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.109, ptr @.str.3, i32 270, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: Received DMA_PAUSED\0A\00", [39 x i8] zeroinitializer }, align 32
@dcmi_dma_callback._entry_ptr = internal global ptr @dcmi_dma_callback._entry, section ".printk_index", align 4
@dcmi_dma_callback._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.109, ptr @.str.3, i32 273, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: Received DMA_ERROR\0A\00", [40 x i8] zeroinitializer }, align 32
@dcmi_dma_callback._entry_ptr.114 = internal global ptr @dcmi_dma_callback._entry.112, section ".printk_index", align 4
@dcmi_dma_callback.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.41, ptr @.str.109, ptr @.str.3, ptr @.str.115, i8 0, i8 69, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.115 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: Received DMA_COMPLETE\0A\00", [37 x i8] zeroinitializer }, align 32
@dcmi_dma_callback._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.109, ptr @.str.3, i32 289, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: Cannot restart capture on DMA complete\0A\00", [52 x i8] zeroinitializer }, align 32
@dcmi_dma_callback._entry_ptr.118 = internal global ptr @dcmi_dma_callback._entry.116, section ".printk_index", align 4
@dcmi_dma_callback._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.109, ptr @.str.3, i32 292, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: Received unknown status\0A\00", [35 x i8] zeroinitializer }, align 32
@dcmi_dma_callback._entry_ptr.121 = internal global ptr @dcmi_dma_callback._entry.119, section ".printk_index", align 4
@dcmi_buffer_done.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.41, ptr @.str.122, ptr @.str.3, ptr @.str.123, i8 0, i8 55, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.122 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dcmi_buffer_done\00", [47 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"buffer[%d] done seq=%d, bytesused=%zu\0A\00", [57 x i8] zeroinitializer }, align 32
@dcmi_restart_capture.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.41, ptr @.str.124, ptr @.str.3, ptr @.str.125, i8 0, i8 60, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.124 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dcmi_restart_capture\00", [43 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Capture restart is deferred to next buffer queueing\0A\00", [43 x i8] zeroinitializer }, align 32
@dcmi_stop_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.127, ptr @.str.3, i32 906, ptr @.str.128, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"Some errors found while streaming: errors=%d (overrun=%d), buffers=%d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dcmi_stop_streaming\00", [44 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@dcmi_stop_streaming._entry_ptr = internal global ptr @dcmi_stop_streaming._entry, section ".printk_index", align 4
@dcmi_stop_streaming.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.41, ptr @.str.127, ptr @.str.3, ptr @.str.129, i8 0, i8 -29, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.129 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Stop streaming, errors=%d (overrun=%d), buffers=%d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/dmaengine.h\00", [38 x i8] zeroinitializer }, align 32
@dcmi_buf_queue.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.41, ptr @.str.131, ptr @.str.3, ptr @.str.132, i8 0, i8 -114, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.131 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dcmi_buf_queue\00", [17 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Starting capture on buffer[%d] queued\0A\00", [57 x i8] zeroinitializer }, align 32
@dcmi_buf_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.131, ptr @.str.3, i32 575, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s: Cannot restart capture on overflow or error\0A\00", [47 x i8] zeroinitializer }, align 32
@dcmi_buf_queue._entry_ptr = internal global ptr @dcmi_buf_queue._entry, section ".printk_index", align 4
@dcmi_graph_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.135, ptr @.str.3, i32 1832, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to get next endpoint\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dcmi_graph_init\00", [16 x i8] zeroinitializer }, align 32
@dcmi_graph_init._entry_ptr = internal global ptr @dcmi_graph_init._entry, section ".printk_index", align 4
@dcmi_graph_init._entry.136 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.135, ptr @.str.3, i32 1845, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to add subdev notifier\0A\00", [33 x i8] zeroinitializer }, align 32
@dcmi_graph_init._entry_ptr.138 = internal global ptr @dcmi_graph_init._entry.136, section ".printk_index", align 4
@dcmi_graph_notify_ops = internal constant { %struct.v4l2_async_notifier_operations, [20 x i8] } { %struct.v4l2_async_notifier_operations { ptr @dcmi_graph_notify_bound, ptr @dcmi_graph_notify_complete, ptr @dcmi_graph_notify_unbind }, [20 x i8] zeroinitializer }, align 32
@dcmi_graph_init._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.135, ptr @.str.3, i32 1853, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to register notifier\0A\00", [35 x i8] zeroinitializer }, align 32
@dcmi_graph_init._entry_ptr.141 = internal global ptr @dcmi_graph_init._entry.139, section ".printk_index", align 4
@dcmi_graph_notify_bound.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.41, ptr @.str.142, ptr @.str.3, ptr @.str.143, i8 1, i8 -64, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.142 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dcmi_graph_notify_bound\00", [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Subdev \22%s\22 bound\0A\00", [45 x i8] zeroinitializer }, align 32
@dcmi_graph_notify_bound._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.142, ptr @.str.3, i32 1810, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Failed to create media pad link with subdev \22%s\22\0A\00", [46 x i8] zeroinitializer }, align 32
@dcmi_graph_notify_bound._entry_ptr = internal global ptr @dcmi_graph_notify_bound._entry, section ".printk_index", align 4
@dcmi_graph_notify_bound.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.41, ptr @.str.142, ptr @.str.3, ptr @.str.145, i8 1, i8 -59, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.145 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DCMI is now linked to \22%s\22\0A\00", [36 x i8] zeroinitializer }, align 32
@dcmi_graph_notify_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.147, ptr @.str.3, i32 1733, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Source subdevice not found\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dcmi_graph_notify_complete\00", [37 x i8] zeroinitializer }, align 32
@dcmi_graph_notify_complete._entry_ptr = internal global ptr @dcmi_graph_notify_complete._entry, section ".printk_index", align 4
@dcmi_graph_notify_complete._entry.148 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.147, ptr @.str.3, i32 1741, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"No supported mediabus format found\0A\00", [60 x i8] zeroinitializer }, align 32
@dcmi_graph_notify_complete._entry_ptr.150 = internal global ptr @dcmi_graph_notify_complete._entry.148, section ".printk_index", align 4
@dcmi_graph_notify_complete._entry.151 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.147, ptr @.str.3, i32 1747, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Could not initialize framesizes\0A\00", [63 x i8] zeroinitializer }, align 32
@dcmi_graph_notify_complete._entry_ptr.153 = internal global ptr @dcmi_graph_notify_complete._entry.151, section ".printk_index", align 4
@dcmi_graph_notify_complete._entry.154 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.155, ptr @.str.147, ptr @.str.3, i32 1753, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Could not get sensor bounds\0A\00", [35 x i8] zeroinitializer }, align 32
@dcmi_graph_notify_complete._entry_ptr.156 = internal global ptr @dcmi_graph_notify_complete._entry.154, section ".printk_index", align 4
@dcmi_graph_notify_complete._entry.157 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.147, ptr @.str.3, i32 1759, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Could not set default format\0A\00", [34 x i8] zeroinitializer }, align 32
@dcmi_graph_notify_complete._entry_ptr.159 = internal global ptr @dcmi_graph_notify_complete._entry.157, section ".printk_index", align 4
@dcmi_graph_notify_complete._entry.160 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.161, ptr @.str.147, ptr @.str.3, i32 1767, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unable to request irq %d\0A\00", [38 x i8] zeroinitializer }, align 32
@dcmi_graph_notify_complete._entry_ptr.162 = internal global ptr @dcmi_graph_notify_complete._entry.160, section ".printk_index", align 4
@dcmi_formats = internal constant { [8 x %struct.dcmi_format], [32 x i8] } { [8 x %struct.dcmi_format] [%struct.dcmi_format { i32 1346520914, i32 4104, i8 2 }, %struct.dcmi_format { i32 1448695129, i32 8200, i8 2 }, %struct.dcmi_format { i32 1498831189, i32 8198, i8 2 }, %struct.dcmi_format { i32 1195724874, i32 16385, i8 1 }, %struct.dcmi_format { i32 825770306, i32 12289, i8 1 }, %struct.dcmi_format { i32 1196573255, i32 12307, i8 1 }, %struct.dcmi_format { i32 1195528775, i32 12290, i8 1 }, %struct.dcmi_format { i32 1111967570, i32 12308, i8 1 }], [32 x i8] zeroinitializer }, align 32
@dcmi_formats_init.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.41, ptr @.str.163, ptr @.str.3, ptr @.str.164, i8 1, i8 -102, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.163 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dcmi_formats_init\00", [46 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Skipping fourcc/code: %4.4s/0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@dcmi_formats_init.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.41, ptr @.str.163, ptr @.str.3, ptr @.str.165, i8 1, i8 -100, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.165 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Supported fourcc/code: %4.4s/0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@dcmi_formats_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.166, ptr @.str.163, ptr @.str.3, i32 1665, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Could not allocate memory\0A\00", [37 x i8] zeroinitializer }, align 32
@dcmi_formats_init._entry_ptr = internal global ptr @dcmi_formats_init._entry, section ".printk_index", align 4
@dcmi_framesizes_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.166, ptr @.str.167, ptr @.str.3, i32 1701, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dcmi_framesizes_init\00", [43 x i8] zeroinitializer }, align 32
@dcmi_framesizes_init._entry_ptr = internal global ptr @dcmi_framesizes_init._entry, section ".printk_index", align 4
@dcmi_framesizes_init.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.41, ptr @.str.167, ptr @.str.3, ptr @.str.168, i8 1, i8 -86, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.168 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Sensor supports %u frame sizes:\0A\00", [63 x i8] zeroinitializer }, align 32
@dcmi_framesizes_init.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.41, ptr @.str.167, ptr @.str.3, ptr @.str.169, i8 1, i8 -84, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.169 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%ux%u\0A\00", [25 x i8] zeroinitializer }, align 32
@dcmi_process_jpeg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.170, ptr @.str.171, ptr @.str.3, i32 430, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: Cannot get JPEG size from DMA\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dcmi_process_jpeg\00", [46 x i8] zeroinitializer }, align 32
@dcmi_process_jpeg._entry_ptr = internal global ptr @dcmi_process_jpeg._entry, section ".printk_index", align 4
@dcmi_process_jpeg._entry.172 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.173, ptr @.str.171, ptr @.str.3, i32 441, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: Cannot restart capture on JPEG received\0A\00", [51 x i8] zeroinitializer }, align 32
@dcmi_process_jpeg._entry_ptr.174 = internal global ptr @dcmi_process_jpeg._entry.172, section ".printk_index", align 4
@dcmi_graph_notify_unbind.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.41, ptr @.str.175, ptr @.str.3, ptr @.str.176, i8 1, i8 -67, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.175 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dcmi_graph_notify_unbind\00", [39 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Removing %s\0A\00", [19 x i8] zeroinitializer }, align 32
@dcmi_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.177, ptr @.str.178, ptr @.str.3, i32 2113, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: Failed to prepare_enable clock\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dcmi_runtime_resume\00", [44 x i8] zeroinitializer }, align 32
@dcmi_runtime_resume._entry_ptr = internal global ptr @dcmi_runtime_resume._entry, section ".printk_index", align 4
@switch.table.dcmi_start_streaming = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 1024, i32 0, i32 2048, i32 0, i32 3072], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 5]
@__sancov_gen_cov_switch_values.179 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.180 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.181 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966781]
@___asan_gen_.182 = private unnamed_addr constant [18 x i8] c"stm32_dcmi_driver\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 2146, i32 31 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 2150, i32 11 }
@___asan_gen_.188 = private unnamed_addr constant [20 x i8] c"stm32_dcmi_of_match\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1447, i32 34 }
@___asan_gen_.191 = private unnamed_addr constant [12 x i8] c"dcmi_pm_ops\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 2140, i32 32 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1875, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1886, i32 4 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1894, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1901, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1906, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1912, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1930, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1936, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1940, i32 34 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1943, i32 4 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1947, i32 38 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1951, i32 4 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1956, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1957, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1958, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1974, i32 4 }
@___asan_gen_.293 = private unnamed_addr constant [10 x i8] c"dcmi_fops\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1540, i32 42 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1993, i32 28 }
@___asan_gen_.299 = private unnamed_addr constant [15 x i8] c"dcmi_ioctl_ops\00", align 1
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1505, i32 36 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 2006, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 2013, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 2017, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant [16 x i8] c"dcmi_video_qops\00", align 1
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 912, i32 29 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 2034, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 2045, i32 3 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 2053, i32 3 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 2057, i32 2 }
@___asan_gen_.347 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.351 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 87, i32 2 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1101, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1103, i32 2 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 641, i32 3 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 648, i32 4 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 658, i32 4 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1342, i32 21 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1344, i32 25 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1355, i32 19 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1325, i32 3 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1331, i32 3 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 505, i32 2 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 531, i32 3 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 547, i32 3 }
@___asan_gen_.414 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 1163, i32 7 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 729, i32 3 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 736, i32 3 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 815, i32 3 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 826, i32 2 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 831, i32 3 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 697, i32 4 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 703, i32 3 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 392, i32 2 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 316, i32 3 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 334, i32 3 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 347, i32 3 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 267, i32 3 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 270, i32 3 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 273, i32 3 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 279, i32 3 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 288, i32 4 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 292, i32 3 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 220, i32 2 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 240, i32 3 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 904, i32 3 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 907, i32 2 }
@___asan_gen_.555 = private unnamed_addr constant [29 x i8] c"../include/linux/dmaengine.h\00", align 1
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 1169, i32 2 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 569, i32 3 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 574, i32 4 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1832, i32 3 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1845, i32 3 }
@___asan_gen_.584 = private unnamed_addr constant [22 x i8] c"dcmi_graph_notify_ops\00", align 1
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1818, i32 52 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1853, i32 3 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1794, i32 2 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1809, i32 3 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1812, i32 3 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1733, i32 3 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1741, i32 3 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1747, i32 3 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1753, i32 3 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1759, i32 3 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1767, i32 3 }
@___asan_gen_.647 = private unnamed_addr constant [13 x i8] c"dcmi_formats\00", align 1
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1580, i32 33 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1641, i32 6 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1649, i32 5 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1665, i32 3 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1701, i32 3 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1706, i32 2 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1715, i32 3 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 429, i32 3 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 440, i32 3 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1780, i32 2 }
@___asan_gen_.698 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.704 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.705 = private constant [45 x i8] c"../drivers/media/platform/stm32/stm32-dcmi.c\00", align 1
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 2113, i32 3 }
@___asan_gen_.707 = private unnamed_addr constant [34 x i8] c"switch.table.dcmi_start_streaming\00", align 1
@llvm.compiler.used = appending global [230 x ptr] [ptr @__UNIQUE_ID_author362, ptr @__UNIQUE_ID_author363, ptr @__UNIQUE_ID_description364, ptr @__UNIQUE_ID_file365, ptr @__UNIQUE_ID_license366, ptr @__exitcall_stm32_dcmi_driver_exit, ptr @__initcall__kmod_stm32_dcmi__361_2156_stm32_dcmi_driver_init6, ptr @dcmi_buf_prepare._entry, ptr @dcmi_buf_prepare._entry_ptr, ptr @dcmi_buf_queue._entry, ptr @dcmi_buf_queue._entry_ptr, ptr @dcmi_dma_callback._entry, ptr @dcmi_dma_callback._entry.112, ptr @dcmi_dma_callback._entry.116, ptr @dcmi_dma_callback._entry.119, ptr @dcmi_dma_callback._entry_ptr, ptr @dcmi_dma_callback._entry_ptr.114, ptr @dcmi_dma_callback._entry_ptr.118, ptr @dcmi_dma_callback._entry_ptr.121, ptr @dcmi_formats_init._entry, ptr @dcmi_formats_init._entry_ptr, ptr @dcmi_framesizes_init._entry, ptr @dcmi_framesizes_init._entry_ptr, ptr @dcmi_graph_init._entry, ptr @dcmi_graph_init._entry.136, ptr @dcmi_graph_init._entry.139, ptr @dcmi_graph_init._entry_ptr, ptr @dcmi_graph_init._entry_ptr.138, ptr @dcmi_graph_init._entry_ptr.141, ptr @dcmi_graph_notify_bound._entry, ptr @dcmi_graph_notify_bound._entry_ptr, ptr @dcmi_graph_notify_complete._entry, ptr @dcmi_graph_notify_complete._entry.148, ptr @dcmi_graph_notify_complete._entry.151, ptr @dcmi_graph_notify_complete._entry.154, ptr @dcmi_graph_notify_complete._entry.157, ptr @dcmi_graph_notify_complete._entry.160, ptr @dcmi_graph_notify_complete._entry_ptr, ptr @dcmi_graph_notify_complete._entry_ptr.150, ptr @dcmi_graph_notify_complete._entry_ptr.153, ptr @dcmi_graph_notify_complete._entry_ptr.156, ptr @dcmi_graph_notify_complete._entry_ptr.159, ptr @dcmi_graph_notify_complete._entry_ptr.162, ptr @dcmi_pipeline_s_fmt._entry, ptr @dcmi_pipeline_s_fmt._entry_ptr, ptr @dcmi_pipeline_s_stream._entry, ptr @dcmi_pipeline_s_stream._entry_ptr, ptr @dcmi_probe._entry, ptr @dcmi_probe._entry.12, ptr @dcmi_probe._entry.15, ptr @dcmi_probe._entry.18, ptr @dcmi_probe._entry.21, ptr @dcmi_probe._entry.24, ptr @dcmi_probe._entry.28, ptr @dcmi_probe._entry.32, ptr @dcmi_probe._entry.42, ptr @dcmi_probe._entry.45, ptr @dcmi_probe._entry.49, ptr @dcmi_probe._entry.52, ptr @dcmi_probe._entry.55, ptr @dcmi_probe._entry.58, ptr @dcmi_probe._entry.6, ptr @dcmi_probe._entry.9, ptr @dcmi_probe._entry_ptr, ptr @dcmi_probe._entry_ptr.11, ptr @dcmi_probe._entry_ptr.14, ptr @dcmi_probe._entry_ptr.17, ptr @dcmi_probe._entry_ptr.20, ptr @dcmi_probe._entry_ptr.23, ptr @dcmi_probe._entry_ptr.26, ptr @dcmi_probe._entry_ptr.30, ptr @dcmi_probe._entry_ptr.34, ptr @dcmi_probe._entry_ptr.44, ptr @dcmi_probe._entry_ptr.47, ptr @dcmi_probe._entry_ptr.51, ptr @dcmi_probe._entry_ptr.54, ptr @dcmi_probe._entry_ptr.57, ptr @dcmi_probe._entry_ptr.61, ptr @dcmi_probe._entry_ptr.8, ptr @dcmi_process_jpeg._entry, ptr @dcmi_process_jpeg._entry.172, ptr @dcmi_process_jpeg._entry_ptr, ptr @dcmi_process_jpeg._entry_ptr.174, ptr @dcmi_runtime_resume._entry, ptr @dcmi_runtime_resume._entry_ptr, ptr @dcmi_start_dma._entry, ptr @dcmi_start_dma._entry.103, ptr @dcmi_start_dma._entry.106, ptr @dcmi_start_dma._entry_ptr, ptr @dcmi_start_dma._entry_ptr.105, ptr @dcmi_start_dma._entry_ptr.108, ptr @dcmi_start_streaming._entry, ptr @dcmi_start_streaming._entry.84, ptr @dcmi_start_streaming._entry.89, ptr @dcmi_start_streaming._entry_ptr, ptr @dcmi_start_streaming._entry_ptr.86, ptr @dcmi_start_streaming._entry_ptr.91, ptr @dcmi_stop_streaming._entry, ptr @dcmi_stop_streaming._entry_ptr, ptr @stm32_dcmi_driver_exit, ptr @stm32_dcmi_driver, ptr @.str, ptr @stm32_dcmi_of_match, ptr @dcmi_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @dcmi_probe.__key, ptr @.str.35, ptr @dcmi_probe.__key.36, ptr @.str.37, ptr @dcmi_probe.__key.38, ptr @.str.39, ptr @.str.40, ptr @dcmi_fops, ptr @.str.41, ptr @dcmi_ioctl_ops, ptr @.str.43, ptr @.str.46, ptr @.str.48, ptr @dcmi_video_qops, ptr @.str.50, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.60, ptr @init_completion.__key, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.85, ptr @.str.87, ptr @.str.88, ptr @.str.90, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.104, ptr @.str.107, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.113, ptr @.str.115, ptr @.str.117, ptr @.str.120, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.137, ptr @dcmi_graph_notify_ops, ptr @.str.140, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.149, ptr @.str.152, ptr @.str.155, ptr @.str.158, ptr @.str.161, ptr @dcmi_formats, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.173, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @switch.table.dcmi_start_streaming], section "llvm.metadata"
@0 = internal global [176 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_dcmi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_dcmi_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dcmi_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dcmi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dcmi_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dcmi_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dcmi_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dcmi_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dcmi_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dcmi_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dcmi_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dcmi_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dcmi_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dcmi_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dcmi_probe.__key.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dcmi_probe.__key.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dcmi_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dcmi_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dcmi_probe._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dcmi_probe._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dcmi_video_qops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dcmi_probe._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dcmi_probe._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dcmi_probe._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dcmi_probe._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dcmi_pipeline_s_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dcmi_buf_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dcmi_start_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dcmi_start_streaming._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dcmi_start_streaming._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dcmi_pipeline_s_stream._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dcmi_start_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dcmi_start_dma._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dcmi_start_dma._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dcmi_dma_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dcmi_dma_callback._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dcmi_dma_callback._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dcmi_dma_callback._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dcmi_stop_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dcmi_buf_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dcmi_graph_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dcmi_graph_init._entry.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dcmi_graph_notify_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dcmi_graph_init._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dcmi_graph_notify_bound._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dcmi_graph_notify_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dcmi_graph_notify_complete._entry.148 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dcmi_graph_notify_complete._entry.151 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dcmi_graph_notify_complete._entry.154 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dcmi_graph_notify_complete._entry.157 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dcmi_graph_notify_complete._entry.160 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dcmi_formats to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dcmi_formats_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dcmi_framesizes_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dcmi_process_jpeg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dcmi_process_jpeg._entry.172 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dcmi_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dcmi_start_streaming to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_dcmi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @stm32_dcmi_driver, ptr noundef null) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @stm32_dcmi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @platform_driver_unregister(ptr noundef nonnull @stm32_dcmi_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dcmi_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %ep = alloca %struct.v4l2_fwnode_endpoint, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %ep) #11
  %2 = call ptr @memset(ptr %ep, i32 0, i32 64)
  %call = tail call ptr @of_match_device(ptr noundef nonnull @stm32_dcmi_of_match, ptr noundef %dev) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 2112, i32 noundef 3520) #11
  %tobool5.not = icmp eq ptr %call.i, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call.i411 = tail call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #11
  %rstc = getelementptr inbounds %struct.stm32_dcmi, ptr %call.i, i32 0, i32 4
  %3 = ptrtoint ptr %rstc to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i411, ptr %rstc, align 8
  %cmp.i = icmp ugt ptr %call.i411, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then12, label %if.end23

if.then12:                                        ; preds = %if.end7
  %cmp.not = icmp eq ptr %call.i411, inttoptr (i32 -517 to ptr)
  br i1 %cmp.not, label %if.then12.if.end20_crit_edge, label %do.end18

if.then12.if.end20_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

do.end18:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #14
  br label %if.end20

if.end20:                                         ; preds = %do.end18, %if.then12.if.end20_crit_edge
  %4 = ptrtoint ptr %rstc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rstc, align 8
  %6 = ptrtoint ptr %5 to i32
  br label %cleanup

if.end23:                                         ; preds = %if.end7
  %call24 = tail call ptr @of_graph_get_next_endpoint(ptr noundef %1, ptr noundef null) #11
  %tobool25.not = icmp eq ptr %call24, null
  br i1 %tobool25.not, label %do.end29, label %cond.end

do.end29:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #14
  br label %cleanup

cond.end:                                         ; preds = %if.end23
  %fwnode = getelementptr inbounds %struct.device_node, ptr %call24, i32 0, i32 3
  %call33 = call i32 @v4l2_fwnode_endpoint_parse(ptr noundef %fwnode, ptr noundef nonnull %ep) #11
  call void @of_node_put(ptr noundef nonnull %call24) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end40, label %do.end38

do.end38:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #14
  br label %cleanup

if.end40:                                         ; preds = %cond.end
  %bus_type = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %ep, i32 0, i32 1
  %7 = ptrtoint ptr %bus_type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bus_type, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %8, label %if.end40.if.end61_crit_edge [
    i32 5, label %do.end45
    i32 2, label %land.lhs.true
  ]

if.end40.if.end61_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end61

do.end45:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #14
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end40
  %bus_width = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %ep, i32 0, i32 2, i32 0, i32 1
  %10 = ptrtoint ptr %bus_width to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bus_width, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %11)
  %cmp50.not = icmp eq i8 %11, 8
  br i1 %cmp50.not, label %land.lhs.true.if.end61_crit_edge, label %do.end55

land.lhs.true.if.end61_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end61

do.end55:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %conv = zext i8 %11 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %conv) #14
  br label %cleanup

if.end61:                                         ; preds = %land.lhs.true.if.end61_crit_edge, %if.end40.if.end61_crit_edge
  %bus62 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %ep, i32 0, i32 2
  %12 = ptrtoint ptr %bus62 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bus62, align 4
  %bus64 = getelementptr inbounds %struct.stm32_dcmi, ptr %call.i, i32 0, i32 25
  %14 = ptrtoint ptr %bus64 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %bus64, align 8
  %bus_width68 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %ep, i32 0, i32 2, i32 0, i32 1
  %15 = ptrtoint ptr %bus_width68 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bus_width68, align 4
  %bus_width70 = getelementptr inbounds %struct.stm32_dcmi, ptr %call.i, i32 0, i32 25, i32 1
  %17 = ptrtoint ptr %bus_width70 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %bus_width70, align 4
  %data_shift = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %ep, i32 0, i32 2, i32 0, i32 2
  %18 = ptrtoint ptr %data_shift to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %data_shift, align 1
  %data_shift74 = getelementptr inbounds %struct.stm32_dcmi, ptr %call.i, i32 0, i32 25, i32 2
  %20 = ptrtoint ptr %data_shift74 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %data_shift74, align 1
  %bus_type76 = getelementptr inbounds %struct.stm32_dcmi, ptr %call.i, i32 0, i32 26
  %21 = ptrtoint ptr %bus_type76 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %8, ptr %bus_type76, align 8
  %call77 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call77)
  %cmp78 = icmp slt i32 %call77, 1
  br i1 %cmp78, label %if.then80, label %if.end86

if.then80:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool81.not = icmp eq i32 %call77, 0
  %spec.select = select i1 %tobool81.not, i32 -6, i32 %call77
  br label %cleanup

if.end86:                                         ; preds = %if.end61
  %irq87 = getelementptr inbounds %struct.stm32_dcmi, ptr %call.i, i32 0, i32 8
  %22 = ptrtoint ptr %irq87 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call77, ptr %irq87, align 4
  %call88 = call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #11
  %res = getelementptr inbounds %struct.stm32_dcmi, ptr %call.i, i32 0, i32 3
  %23 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call88, ptr %res, align 4
  %tobool90.not = icmp eq ptr %call88, null
  br i1 %tobool90.not, label %do.end94, label %if.end96

do.end94:                                         ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22) #14
  br label %cleanup

if.end96:                                         ; preds = %if.end86
  %call99 = call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef nonnull %call88) #11
  %regs = getelementptr inbounds %struct.stm32_dcmi, ptr %call.i, i32 0, i32 2
  %24 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call99, ptr %regs, align 8
  %cmp.i412 = icmp ugt ptr %call99, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i412, label %do.end105, label %if.end109

do.end105:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25) #14
  %25 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs, align 8
  %27 = ptrtoint ptr %26 to i32
  br label %cleanup

if.end109:                                        ; preds = %if.end96
  %call111 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.27) #11
  %cmp.i413 = icmp ugt ptr %call111, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i413, label %if.then113, label %if.end124

if.then113:                                       ; preds = %if.end109
  %cmp115.not = icmp eq ptr %call111, inttoptr (i32 -517 to ptr)
  br i1 %cmp115.not, label %if.then113.cleanup_crit_edge, label %do.end120

if.then113.cleanup_crit_edge:                     ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end120:                                        ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %call111 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.29) #14
  br label %cleanup

if.end124:                                        ; preds = %if.end109
  %call126 = call ptr @dma_request_chan(ptr noundef %dev, ptr noundef nonnull @.str.31) #11
  %cmp.i414 = icmp ugt ptr %call126, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i414, label %if.then128, label %do.body139

if.then128:                                       ; preds = %if.end124
  %cmp130.not = icmp eq ptr %call126, inttoptr (i32 -517 to ptr)
  br i1 %cmp130.not, label %if.then128.cleanup_crit_edge, label %do.end135

if.then128.cleanup_crit_edge:                     ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end135:                                        ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #13
  %29 = ptrtoint ptr %call126 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.33, i32 noundef %29) #14
  br label %cleanup

do.body139:                                       ; preds = %if.end124
  call void @__raw_spin_lock_init(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.35, ptr noundef nonnull @dcmi_probe.__key, i16 noundef signext 3) #11
  %lock = getelementptr inbounds %struct.stm32_dcmi, ptr %call.i, i32 0, i32 23
  call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.37, ptr noundef nonnull @dcmi_probe.__key.36) #11
  %dma_lock = getelementptr inbounds %struct.stm32_dcmi, ptr %call.i, i32 0, i32 36
  call void @__mutex_init(ptr noundef %dma_lock, ptr noundef nonnull @.str.39, ptr noundef nonnull @dcmi_probe.__key.38) #11
  %complete = getelementptr inbounds %struct.stm32_dcmi, ptr %call.i, i32 0, i32 27
  %30 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %complete, align 4
  %wait.i = getelementptr inbounds %struct.stm32_dcmi, ptr %call.i, i32 0, i32 27, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.62, ptr noundef nonnull @init_completion.__key) #11
  %buffers = getelementptr inbounds %struct.stm32_dcmi, ptr %call.i, i32 0, i32 6
  %31 = ptrtoint ptr %buffers to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %buffers, ptr %buffers, align 4
  %prev.i = getelementptr inbounds %struct.stm32_dcmi, ptr %call.i, i32 0, i32 6, i32 1
  %32 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %buffers, ptr %prev.i, align 4
  %dev150 = getelementptr inbounds %struct.stm32_dcmi, ptr %call.i, i32 0, i32 1
  %33 = ptrtoint ptr %dev150 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %dev, ptr %dev150, align 4
  %mclk151 = getelementptr inbounds %struct.stm32_dcmi, ptr %call.i, i32 0, i32 28
  %34 = ptrtoint ptr %mclk151 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call111, ptr %mclk151, align 4
  %state = getelementptr inbounds %struct.stm32_dcmi, ptr %call.i, i32 0, i32 29
  %35 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %state, align 8
  %dma_chan = getelementptr inbounds %struct.stm32_dcmi, ptr %call.i, i32 0, i32 30
  %36 = ptrtoint ptr %dma_chan to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call126, ptr %dma_chan, align 4
  %queue = getelementptr inbounds %struct.stm32_dcmi, ptr %call.i, i32 0, i32 24
  %mdev = getelementptr inbounds %struct.stm32_dcmi, ptr %call.i, i32 0, i32 37
  %v4l2_dev = getelementptr inbounds %struct.stm32_dcmi, ptr %call.i, i32 0, i32 9
  %mdev152 = getelementptr inbounds %struct.stm32_dcmi, ptr %call.i, i32 0, i32 9, i32 1
  %37 = ptrtoint ptr %mdev152 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %mdev, ptr %mdev152, align 4
  %model = getelementptr inbounds %struct.stm32_dcmi, ptr %call.i, i32 0, i32 37, i32 2
  %call154 = call i32 @strscpy(ptr noundef %model, ptr noundef nonnull @.str, i32 noundef 32) #11
  %bus_info = getelementptr inbounds %struct.stm32_dcmi, ptr %call.i, i32 0, i32 37, i32 5
  %call157 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info, i32 noundef 32, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str)
  %38 = ptrtoint ptr %mdev to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %dev, ptr %mdev, align 8
  call void @media_device_init(ptr noundef %mdev) #11
  %call164 = call i32 @v4l2_device_register(ptr noundef %dev, ptr noundef %v4l2_dev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call164)
  %tobool165.not = icmp eq i32 %call164, 0
  br i1 %tobool165.not, label %if.end167, label %do.body139.err_media_device_cleanup_crit_edge

do.body139.err_media_device_cleanup_crit_edge:    ; preds = %do.body139
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_media_device_cleanup

if.end167:                                        ; preds = %do.body139
  %call168 = call ptr @video_device_alloc() #11
  %vdev = getelementptr inbounds %struct.stm32_dcmi, ptr %call.i, i32 0, i32 10
  %39 = ptrtoint ptr %vdev to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call168, ptr %vdev, align 8
  %tobool170.not = icmp eq ptr %call168, null
  br i1 %tobool170.not, label %if.end167.err_device_unregister_crit_edge, label %if.end172

if.end167.err_device_unregister_crit_edge:        ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_device_unregister

if.end172:                                        ; preds = %if.end167
  %fops = getelementptr inbounds %struct.video_device, ptr %call168, i32 0, i32 3
  %40 = ptrtoint ptr %fops to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @dcmi_fops, ptr %fops, align 4
  %41 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %vdev, align 8
  %v4l2_dev176 = getelementptr inbounds %struct.video_device, ptr %42, i32 0, i32 7
  %43 = ptrtoint ptr %v4l2_dev176 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %v4l2_dev, ptr %v4l2_dev176, align 4
  %44 = load ptr, ptr %vdev, align 8
  %queue179 = getelementptr inbounds %struct.video_device, ptr %44, i32 0, i32 10
  %45 = ptrtoint ptr %queue179 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %queue, ptr %queue179, align 8
  %46 = load ptr, ptr %vdev, align 8
  %name = getelementptr inbounds %struct.video_device, ptr %46, i32 0, i32 12
  %call182 = call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str.41, i32 noundef 32) #11
  %47 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %vdev, align 8
  %release = getelementptr inbounds %struct.video_device, ptr %48, i32 0, i32 23
  %49 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @video_device_release, ptr %release, align 8
  %50 = load ptr, ptr %vdev, align 8
  %ioctl_ops = getelementptr inbounds %struct.video_device, ptr %50, i32 0, i32 24
  %51 = ptrtoint ptr %ioctl_ops to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @dcmi_ioctl_ops, ptr %ioctl_ops, align 4
  %52 = load ptr, ptr %vdev, align 8
  %lock187 = getelementptr inbounds %struct.video_device, ptr %52, i32 0, i32 26
  %53 = ptrtoint ptr %lock187 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %lock, ptr %lock187, align 8
  %54 = load ptr, ptr %vdev, align 8
  %device_caps = getelementptr inbounds %struct.video_device, ptr %54, i32 0, i32 4
  %55 = ptrtoint ptr %device_caps to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 83886081, ptr %device_caps, align 8
  %56 = load ptr, ptr %vdev, align 8
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %56, i32 0, i32 5, i32 8
  %57 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %vid_cap_pad = getelementptr inbounds %struct.stm32_dcmi, ptr %call.i, i32 0, i32 38
  %flags190 = getelementptr inbounds %struct.stm32_dcmi, ptr %call.i, i32 0, i32 38, i32 4
  %58 = ptrtoint ptr %flags190 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 1, ptr %flags190, align 4
  %59 = load ptr, ptr %vdev, align 8
  %call193 = call i32 @media_entity_pads_init(ptr noundef %59, i16 noundef zeroext 1, ptr noundef %vid_cap_pad) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call193)
  %tobool194.not = icmp eq i32 %call193, 0
  br i1 %tobool194.not, label %if.end200, label %do.end198

do.end198:                                        ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #13
  %60 = ptrtoint ptr %dev150 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev150, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.43) #14
  br label %err_device_release

if.end200:                                        ; preds = %if.end172
  %62 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %vdev, align 8
  %flags203 = getelementptr inbounds %struct.media_entity, ptr %63, i32 0, i32 4
  %64 = ptrtoint ptr %flags203 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %flags203, align 4
  %or = or i32 %65, 1
  store i32 %or, ptr %flags203, align 4
  %66 = load ptr, ptr %vdev, align 8
  %fops.i = getelementptr inbounds %struct.video_device, ptr %66, i32 0, i32 3
  %67 = ptrtoint ptr %fops.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %fops.i, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %68, align 4
  %call.i415 = call i32 @__video_register_device(ptr noundef %66, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef %70) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i415)
  %tobool206.not = icmp eq i32 %call.i415, 0
  br i1 %tobool206.not, label %do.body213, label %do.end210

do.end210:                                        ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #13
  %71 = ptrtoint ptr %dev150 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev150, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %72, ptr noundef nonnull @.str.46) #14
  br label %err_device_release

do.body213:                                       ; preds = %if.end200
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dcmi_probe.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dcmi_probe, %if.then219)) #11
          to label %do.end225 [label %if.then219], !srcloc !363

if.then219:                                       ; preds = %do.body213
  %73 = ptrtoint ptr %dev150 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev150, align 4
  %75 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %vdev, align 8
  %init_name.i.i = getelementptr inbounds %struct.video_device, ptr %76, i32 0, i32 5, i32 3
  %77 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %78, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then219.video_device_node_name.exit_crit_edge

if.then219.video_device_node_name.exit_crit_edge: ; preds = %if.then219
  call void @__sanitizer_cov_trace_pc() #13
  br label %video_device_node_name.exit

if.end.i.i:                                       ; preds = %if.then219
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.video_device, ptr %76, i32 0, i32 5
  %79 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev.i, align 4
  br label %video_device_node_name.exit

video_device_node_name.exit:                      ; preds = %if.end.i.i, %if.then219.video_device_node_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %80, %if.end.i.i ], [ %78, %if.then219.video_device_node_name.exit_crit_edge ]
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dcmi_probe.__UNIQUE_ID_ddebug360, ptr noundef %74, ptr noundef nonnull @.str.48, ptr noundef %retval.0.i.i) #11
  br label %do.end225

do.end225:                                        ; preds = %video_device_node_name.exit, %do.body213
  %81 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 1, ptr %queue, align 4
  %io_modes = getelementptr inbounds %struct.stm32_dcmi, ptr %call.i, i32 0, i32 24, i32 1
  %82 = ptrtoint ptr %io_modes to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 21, ptr %io_modes, align 4
  %lock227 = getelementptr inbounds %struct.stm32_dcmi, ptr %call.i, i32 0, i32 24, i32 5
  %83 = ptrtoint ptr %lock227 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %lock, ptr %lock227, align 4
  %drv_priv = getelementptr inbounds %struct.stm32_dcmi, ptr %call.i, i32 0, i32 24, i32 10
  %84 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %call.i, ptr %drv_priv, align 4
  %buf_struct_size = getelementptr inbounds %struct.stm32_dcmi, ptr %call.i, i32 0, i32 24, i32 12
  %85 = ptrtoint ptr %buf_struct_size to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 760, ptr %buf_struct_size, align 4
  %ops = getelementptr inbounds %struct.stm32_dcmi, ptr %call.i, i32 0, i32 24, i32 7
  %86 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @dcmi_video_qops, ptr %ops, align 4
  %mem_ops = getelementptr inbounds %struct.stm32_dcmi, ptr %call.i, i32 0, i32 24, i32 8
  %87 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr @vb2_dma_contig_memops, ptr %mem_ops, align 4
  %timestamp_flags = getelementptr inbounds %struct.stm32_dcmi, ptr %call.i, i32 0, i32 24, i32 13
  %88 = ptrtoint ptr %timestamp_flags to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 8192, ptr %timestamp_flags, align 4
  %min_buffers_needed = getelementptr inbounds %struct.stm32_dcmi, ptr %call.i, i32 0, i32 24, i32 15
  %89 = ptrtoint ptr %min_buffers_needed to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 2, ptr %min_buffers_needed, align 4
  %dev229 = getelementptr inbounds %struct.stm32_dcmi, ptr %call.i, i32 0, i32 24, i32 2
  %90 = ptrtoint ptr %dev229 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %dev, ptr %dev229, align 4
  %call230 = call i32 @vb2_queue_init(ptr noundef %queue) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call230)
  %cmp231 = icmp slt i32 %call230, 0
  br i1 %cmp231, label %do.end236, label %if.end238

do.end236:                                        ; preds = %do.end225
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.50) #14
  br label %err_device_release

if.end238:                                        ; preds = %do.end225
  %call239 = call fastcc i32 @dcmi_graph_init(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call239)
  %cmp240 = icmp slt i32 %call239, 0
  br i1 %cmp240, label %if.end238.err_device_release_crit_edge, label %if.end243

if.end238.err_device_release_crit_edge:           ; preds = %if.end238
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_device_release

if.end243:                                        ; preds = %if.end238
  %91 = ptrtoint ptr %rstc to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %rstc, align 8
  %call245 = call i32 @reset_control_assert(ptr noundef %92) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call245)
  %tobool246.not = icmp eq i32 %call245, 0
  br i1 %tobool246.not, label %if.end252, label %if.end243.err_cleanup_crit_edge

if.end243.err_cleanup_crit_edge:                  ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_cleanup

if.end252:                                        ; preds = %if.end243
  call void @usleep_range_state(i32 noundef 3000, i32 noundef 5000, i32 noundef 2) #11
  %93 = ptrtoint ptr %rstc to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %rstc, align 8
  %call254 = call i32 @reset_control_deassert(ptr noundef %94) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call254)
  %tobool255.not = icmp eq i32 %call254, 0
  br i1 %tobool255.not, label %do.end264, label %if.end252.err_cleanup_crit_edge

if.end252.err_cleanup_crit_edge:                  ; preds = %if.end252
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_cleanup

do.end264:                                        ; preds = %if.end252
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.59) #14
  %driver_data.i.i416 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %95 = ptrtoint ptr %driver_data.i.i416 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %call.i, ptr %driver_data.i.i416, align 4
  call void @pm_runtime_enable(ptr noundef %dev) #11
  br label %cleanup

err_cleanup:                                      ; preds = %if.end252.err_cleanup_crit_edge, %if.end243.err_cleanup_crit_edge
  %.str.56.sink = phi ptr [ @.str.53, %if.end243.err_cleanup_crit_edge ], [ @.str.56, %if.end252.err_cleanup_crit_edge ]
  %ret.0 = phi i32 [ %call245, %if.end243.err_cleanup_crit_edge ], [ %call254, %if.end252.err_cleanup_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.56.sink) #14
  %notifier = getelementptr inbounds %struct.stm32_dcmi, ptr %call.i, i32 0, i32 11
  call void @v4l2_async_nf_cleanup(ptr noundef %notifier) #11
  br label %err_device_release

err_device_release:                               ; preds = %err_cleanup, %if.end238.err_device_release_crit_edge, %do.end236, %do.end210, %do.end198
  %ret.2 = phi i32 [ %call193, %do.end198 ], [ %call.i415, %do.end210 ], [ %call230, %do.end236 ], [ %call239, %if.end238.err_device_release_crit_edge ], [ %ret.0, %err_cleanup ]
  %96 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %vdev, align 8
  call void @video_device_release(ptr noundef %97) #11
  br label %err_device_unregister

err_device_unregister:                            ; preds = %err_device_release, %if.end167.err_device_unregister_crit_edge
  %ret.3 = phi i32 [ %ret.2, %err_device_release ], [ -12, %if.end167.err_device_unregister_crit_edge ]
  call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #11
  br label %err_media_device_cleanup

err_media_device_cleanup:                         ; preds = %err_device_unregister, %do.body139.err_media_device_cleanup_crit_edge
  %ret.4 = phi i32 [ %call164, %do.body139.err_media_device_cleanup_crit_edge ], [ %ret.3, %err_device_unregister ]
  call void @media_device_cleanup(ptr noundef %mdev) #11
  %98 = ptrtoint ptr %dma_chan to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dma_chan, align 4
  call void @dma_release_channel(ptr noundef %99) #11
  br label %cleanup

cleanup:                                          ; preds = %err_media_device_cleanup, %do.end264, %do.end135, %if.then128.cleanup_crit_edge, %do.end120, %if.then113.cleanup_crit_edge, %do.end105, %do.end94, %if.then80, %do.end55, %do.end45, %do.end38, %do.end29, %if.end20, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %6, %if.end20 ], [ %call33, %do.end38 ], [ -19, %do.end45 ], [ -19, %do.end55 ], [ %spec.select, %if.then80 ], [ %27, %do.end105 ], [ %ret.4, %err_media_device_cleanup ], [ 0, %do.end264 ], [ -19, %do.end94 ], [ -19, %do.end29 ], [ -19, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ %29, %do.end135 ], [ -517, %if.then128.cleanup_crit_edge ], [ %28, %do.end120 ], [ -517, %if.then113.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %ep) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dcmi_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #11
  %notifier = getelementptr inbounds %struct.stm32_dcmi, ptr %1, i32 0, i32 11
  tail call void @v4l2_async_nf_unregister(ptr noundef %notifier) #11
  tail call void @v4l2_async_nf_cleanup(ptr noundef %notifier) #11
  %v4l2_dev = getelementptr inbounds %struct.stm32_dcmi, ptr %1, i32 0, i32 9
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #11
  %mdev = getelementptr inbounds %struct.stm32_dcmi, ptr %1, i32 0, i32 37
  tail call void @media_device_cleanup(ptr noundef %mdev) #11
  %dma_chan = getelementptr inbounds %struct.stm32_dcmi, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %dma_chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma_chan, align 4
  tail call void @dma_release_channel(ptr noundef %3) #11
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_next_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fwnode_endpoint_parse(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_device_alloc() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dcmi_graph_init(ptr noundef %dcmi) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.stm32_dcmi, ptr %dcmi, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_graph_get_next_endpoint(ptr noundef %3, ptr noundef null) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.134) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %notifier = getelementptr inbounds %struct.stm32_dcmi, ptr %dcmi, i32 0, i32 11
  tail call void @v4l2_async_nf_init(ptr noundef %notifier) #11
  %fwnode = getelementptr inbounds %struct.device_node, ptr %call, i32 0, i32 3
  %call4 = tail call ptr @__v4l2_async_nf_add_fwnode_remote(ptr noundef %notifier, ptr noundef %fwnode, i32 noundef 28) #11
  tail call void @of_node_put(ptr noundef nonnull %call) #11
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end9, label %if.end12

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.137) #14
  %8 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %9 = ptrtoint ptr %notifier to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @dcmi_graph_notify_ops, ptr %notifier, align 4
  %v4l2_dev = getelementptr inbounds %struct.stm32_dcmi, ptr %dcmi, i32 0, i32 9
  %call15 = tail call i32 @v4l2_async_nf_register(ptr noundef %v4l2_dev, ptr noundef %notifier) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp = icmp slt i32 %call15, 0
  br i1 %cmp, label %do.end19, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end19:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.140) #14
  tail call void @v4l2_async_nf_cleanup(ptr noundef %notifier) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end19, %if.end12.cleanup_crit_edge, %do.end9, %do.end
  %retval.0 = phi i32 [ %8, %do.end9 ], [ %call15, %do.end19 ], [ -22, %do.end ], [ 0, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_nf_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_poll(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_mmap(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dcmi_open(ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %source = getelementptr inbounds %struct.stm32_dcmi, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %source to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %source, align 4
  %lock = getelementptr inbounds %struct.stm32_dcmi, ptr %1, i32 0, i32 23
  %call1 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %lock, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @v4l2_fh_open(ptr noundef %file) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.end.unlock_crit_edge, label %if.end4

if.end.unlock_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

if.end4:                                          ; preds = %if.end
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %4 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data.i, align 4
  %call.i108 = tail call i32 @v4l2_fh_is_singular(ptr noundef %5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i108)
  %tobool6.not = icmp eq i32 %call.i108, 0
  br i1 %tobool6.not, label %if.end4.fh_rel_crit_edge, label %if.end8

if.end4.fh_rel_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %fh_rel

if.end8:                                          ; preds = %if.end4
  %tobool9.not = icmp eq ptr %3, null
  br i1 %tobool9.not, label %if.end8.if.end31_crit_edge, label %if.else

if.end8.if.end31_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

if.else:                                          ; preds = %if.end8
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %tobool11.not = icmp eq ptr %9, null
  br i1 %tobool11.not, label %if.else.if.end36_crit_edge, label %land.lhs.true

if.else.if.end36_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

land.lhs.true:                                    ; preds = %if.else
  %s_power = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %9, i32 0, i32 10
  %10 = ptrtoint ptr %s_power to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_power, align 4
  %tobool14.not = icmp eq ptr %11, null
  br i1 %tobool14.not, label %land.lhs.true.if.end36_crit_edge, label %if.else16

land.lhs.true.if.end36_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

if.else16:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @v4l2_subdev_call_wrappers to i32))
  %12 = load ptr, ptr @v4l2_subdev_call_wrappers, align 4
  %tobool17.not = icmp eq ptr %12, null
  br i1 %tobool17.not, label %if.else16.if.else24_crit_edge, label %land.lhs.true18

if.else16.if.else24_crit_edge:                    ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else24

land.lhs.true18:                                  ; preds = %if.else16
  %s_power19 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %12, i32 0, i32 10
  %13 = ptrtoint ptr %s_power19 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_power19, align 4
  %tobool20.not = icmp eq ptr %14, null
  br i1 %tobool20.not, label %land.lhs.true18.if.else24_crit_edge, label %land.lhs.true18.if.end31.sink.split_crit_edge

land.lhs.true18.if.end31.sink.split_crit_edge:    ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31.sink.split

land.lhs.true18.if.else24_crit_edge:              ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else24

if.else24:                                        ; preds = %land.lhs.true18.if.else24_crit_edge, %if.else16.if.else24_crit_edge
  br label %if.end31.sink.split

if.end31.sink.split:                              ; preds = %if.else24, %land.lhs.true18.if.end31.sink.split_crit_edge
  %.sink = phi ptr [ %11, %if.else24 ], [ %14, %land.lhs.true18.if.end31.sink.split_crit_edge ]
  %call28 = tail call i32 %.sink(ptr noundef nonnull %3, i32 noundef 1) #11
  br label %if.end31

if.end31:                                         ; preds = %if.end31.sink.split, %if.end8.if.end31_crit_edge
  %__result.0 = phi i32 [ -19, %if.end8.if.end31_crit_edge ], [ %call28, %if.end31.sink.split ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %__result.0)
  %cmp32 = icmp sgt i32 %__result.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -515, i32 %__result.0)
  %cmp34.not = icmp eq i32 %__result.0, -515
  %or.cond = or i1 %cmp32, %cmp34.not
  br i1 %or.cond, label %if.end31.if.end36_crit_edge, label %if.end31.if.then73_crit_edge

if.end31.if.then73_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then73

if.end31.if.end36_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

if.end36:                                         ; preds = %if.end31.if.end36_crit_edge, %land.lhs.true.if.end36_crit_edge, %if.else.if.end36_crit_edge
  %fmt = getelementptr inbounds %struct.stm32_dcmi, ptr %1, i32 0, i32 13
  %call37 = tail call fastcc i32 @dcmi_set_fmt(ptr noundef %1, ptr noundef %fmt)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  %brmerge = select i1 %tobool38.not, i1 true, i1 %tobool9.not
  br i1 %brmerge, label %if.end36.fh_rel_crit_edge, label %if.else44

if.end36.fh_rel_crit_edge:                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  br label %fh_rel

if.else44:                                        ; preds = %if.end36
  %ops45 = getelementptr inbounds %struct.v4l2_subdev, ptr %3, i32 0, i32 6
  %15 = ptrtoint ptr %ops45 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops45, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %tobool47.not = icmp eq ptr %18, null
  br i1 %tobool47.not, label %if.else44.if.then73_crit_edge, label %land.lhs.true48

if.else44.if.then73_crit_edge:                    ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then73

land.lhs.true48:                                  ; preds = %if.else44
  %s_power51 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %18, i32 0, i32 10
  %19 = ptrtoint ptr %s_power51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %s_power51, align 4
  %tobool52.not = icmp eq ptr %20, null
  br i1 %tobool52.not, label %land.lhs.true48.if.then73_crit_edge, label %if.else54

land.lhs.true48.if.then73_crit_edge:              ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then73

if.else54:                                        ; preds = %land.lhs.true48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @v4l2_subdev_call_wrappers to i32))
  %21 = load ptr, ptr @v4l2_subdev_call_wrappers, align 4
  %tobool55.not = icmp eq ptr %21, null
  br i1 %tobool55.not, label %if.else54.if.else62_crit_edge, label %land.lhs.true56

if.else54.if.else62_crit_edge:                    ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else62

land.lhs.true56:                                  ; preds = %if.else54
  %s_power57 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %21, i32 0, i32 10
  %22 = ptrtoint ptr %s_power57 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %s_power57, align 4
  %tobool58.not = icmp eq ptr %23, null
  br i1 %tobool58.not, label %land.lhs.true56.if.else62_crit_edge, label %land.lhs.true56.if.then73.sink.split_crit_edge

land.lhs.true56.if.then73.sink.split_crit_edge:   ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then73.sink.split

land.lhs.true56.if.else62_crit_edge:              ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else62

if.else62:                                        ; preds = %land.lhs.true56.if.else62_crit_edge, %if.else54.if.else62_crit_edge
  br label %if.then73.sink.split

fh_rel:                                           ; preds = %if.end36.fh_rel_crit_edge, %if.end4.fh_rel_crit_edge
  %ret.0 = phi i32 [ %call37, %if.end36.fh_rel_crit_edge ], [ %call2, %if.end4.fh_rel_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool72.not = icmp eq i32 %ret.0, 0
  br i1 %tobool72.not, label %fh_rel.unlock_crit_edge, label %fh_rel.if.then73_crit_edge

fh_rel.if.then73_crit_edge:                       ; preds = %fh_rel
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then73

fh_rel.unlock_crit_edge:                          ; preds = %fh_rel
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

if.then73.sink.split:                             ; preds = %if.else62, %land.lhs.true56.if.then73.sink.split_crit_edge
  %.sink116 = phi ptr [ %20, %if.else62 ], [ %23, %land.lhs.true56.if.then73.sink.split_crit_edge ]
  %call61 = tail call i32 %.sink116(ptr noundef nonnull %3, i32 noundef 0) #11
  br label %if.then73

if.then73:                                        ; preds = %if.then73.sink.split, %fh_rel.if.then73_crit_edge, %land.lhs.true48.if.then73_crit_edge, %if.else44.if.then73_crit_edge, %if.end31.if.then73_crit_edge
  %ret.0115 = phi i32 [ %ret.0, %fh_rel.if.then73_crit_edge ], [ %call37, %land.lhs.true48.if.then73_crit_edge ], [ %call37, %if.else44.if.then73_crit_edge ], [ %__result.0, %if.end31.if.then73_crit_edge ], [ %call37, %if.then73.sink.split ]
  %call74 = tail call i32 @v4l2_fh_release(ptr noundef %file) #11
  br label %unlock

unlock:                                           ; preds = %if.then73, %fh_rel.unlock_crit_edge, %if.end.unlock_crit_edge
  %ret.1 = phi i32 [ %call2, %if.end.unlock_crit_edge ], [ %ret.0115, %if.then73 ], [ 0, %fh_rel.unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #11
  br label %cleanup

cleanup:                                          ; preds = %unlock, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %unlock ], [ -512, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dcmi_release(ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %source = getelementptr inbounds %struct.stm32_dcmi, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %source to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %source, align 4
  %lock = getelementptr inbounds %struct.stm32_dcmi, ptr %1, i32 0, i32 23
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %4 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data.i, align 4
  %call.i40 = tail call i32 @v4l2_fh_is_singular(ptr noundef %5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i40)
  %tobool.not = icmp eq i32 %call.i40, 0
  %call2 = tail call i32 @_vb2_fop_release(ptr noundef %file, ptr noundef null) #11
  %tobool4.not = icmp eq ptr %3, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool4.not
  br i1 %or.cond, label %entry.if.end26_crit_edge, label %if.else

entry.if.end26_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.else:                                          ; preds = %entry
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %tobool6.not = icmp eq ptr %9, null
  br i1 %tobool6.not, label %if.else.if.end26_crit_edge, label %land.lhs.true

if.else.if.end26_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

land.lhs.true:                                    ; preds = %if.else
  %s_power = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %9, i32 0, i32 10
  %10 = ptrtoint ptr %s_power to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_power, align 4
  %tobool9.not = icmp eq ptr %11, null
  br i1 %tobool9.not, label %land.lhs.true.if.end26_crit_edge, label %if.else11

land.lhs.true.if.end26_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.else11:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @v4l2_subdev_call_wrappers to i32))
  %12 = load ptr, ptr @v4l2_subdev_call_wrappers, align 4
  %tobool12.not = icmp eq ptr %12, null
  br i1 %tobool12.not, label %if.else11.if.else19_crit_edge, label %land.lhs.true13

if.else11.if.else19_crit_edge:                    ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else19

land.lhs.true13:                                  ; preds = %if.else11
  %s_power14 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %12, i32 0, i32 10
  %13 = ptrtoint ptr %s_power14 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_power14, align 4
  %tobool15.not = icmp eq ptr %14, null
  br i1 %tobool15.not, label %land.lhs.true13.if.else19_crit_edge, label %land.lhs.true13.if.end26.sink.split_crit_edge

land.lhs.true13.if.end26.sink.split_crit_edge:    ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26.sink.split

land.lhs.true13.if.else19_crit_edge:              ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else19

if.else19:                                        ; preds = %land.lhs.true13.if.else19_crit_edge, %if.else11.if.else19_crit_edge
  br label %if.end26.sink.split

if.end26.sink.split:                              ; preds = %if.else19, %land.lhs.true13.if.end26.sink.split_crit_edge
  %.sink = phi ptr [ %11, %if.else19 ], [ %14, %land.lhs.true13.if.end26.sink.split_crit_edge ]
  %call18 = tail call i32 %.sink(ptr noundef nonnull %3, i32 noundef 0) #11
  br label %if.end26

if.end26:                                         ; preds = %if.end26.sink.split, %land.lhs.true.if.end26_crit_edge, %if.else.if.end26_crit_edge, %entry.if.end26_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #11
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_open(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dcmi_set_fmt(ptr nocapture noundef %dcmi, ptr noundef %f) unnamed_addr #2 align 64 {
entry:
  %format = alloca %struct.v4l2_subdev_format, align 4
  %sd_format = alloca ptr, align 4
  %sd_framesize = alloca %struct.dcmi_framesize, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %format) #11
  %0 = getelementptr inbounds i8, ptr %format, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 84)
  %2 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %format, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sd_format) #11
  %3 = ptrtoint ptr %sd_format to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %sd_format, align 4, !annotation !364
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sd_framesize) #11
  %4 = ptrtoint ptr %sd_framesize to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %sd_framesize, align 8, !annotation !364
  %5 = getelementptr inbounds %struct.dcmi_framesize, ptr %sd_framesize, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !364
  %format1 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %call = call fastcc i32 @dcmi_try_fmt(ptr noundef %dcmi, ptr noundef %f, ptr noundef nonnull %sd_format, ptr noundef nonnull %sd_framesize)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %7 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pixelformat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1195724874, i32 %8)
  %cmp = icmp eq i32 %8, 1195724874
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

land.lhs.true:                                    ; preds = %if.end
  %bus_type = getelementptr inbounds %struct.stm32_dcmi, ptr %dcmi, i32 0, i32 26
  %9 = ptrtoint ptr %bus_type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bus_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp2.not = icmp eq i32 %10, 2
  br i1 %cmp2.not, label %land.lhs.true.if.end4_crit_edge, label %if.then3

land.lhs.true.if.end4_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %do_crop = getelementptr inbounds %struct.stm32_dcmi, ptr %dcmi, i32 0, i32 15
  %11 = ptrtoint ptr %do_crop to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %do_crop, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %land.lhs.true.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %12 = ptrtoint ptr %sd_format to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sd_format, align 4
  %mbus_code = getelementptr inbounds %struct.dcmi_format, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %mbus_code to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mbus_code, align 4
  %height.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %height2.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %field.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %16 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %field.i, align 4
  %field3.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 3
  %18 = ptrtoint ptr %field3.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %field3.i, align 4
  %colorspace.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %19 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %colorspace.i, align 4
  %colorspace4.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 4
  %21 = ptrtoint ptr %colorspace4.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %colorspace4.i, align 4
  %22 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  %conv.i = trunc i32 %24 to i16
  %25 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 5
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv.i, ptr %25, align 4
  %quantization.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1
  %27 = ptrtoint ptr %quantization.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %quantization.i, align 4
  %conv5.i = trunc i32 %28 to i16
  %quantization6.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 6
  %29 = ptrtoint ptr %quantization6.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv5.i, ptr %quantization6.i, align 2
  %xfer_func.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %30 = ptrtoint ptr %xfer_func.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %xfer_func.i, align 4
  %conv7.i = trunc i32 %31 to i16
  %xfer_func8.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 7
  %32 = ptrtoint ptr %xfer_func8.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv7.i, ptr %xfer_func8.i, align 4
  %code9.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 2
  %33 = ptrtoint ptr %code9.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %15, ptr %code9.i, align 4
  %34 = ptrtoint ptr %sd_framesize to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sd_framesize, align 8
  %36 = ptrtoint ptr %format1 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %format1, align 4
  %37 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %5, align 4
  %39 = ptrtoint ptr %height2.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %height2.i, align 4
  %call7 = call fastcc i32 @dcmi_pipeline_s_fmt(ptr noundef %dcmi, ptr noundef nonnull %format)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.end4.cleanup_crit_edge, label %do.body

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %if.end4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dcmi_set_fmt.__UNIQUE_ID_ddebug341, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dcmi_set_fmt, %if.then15)) #11
          to label %do.body19 [label %if.then15], !srcloc !363

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.stm32_dcmi, ptr %dcmi, i32 0, i32 1
  %40 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev, align 4
  %42 = ptrtoint ptr %code9.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %code9.i, align 4
  %44 = ptrtoint ptr %format1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %format1, align 4
  %46 = ptrtoint ptr %height2.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %height2.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dcmi_set_fmt.__UNIQUE_ID_ddebug341, ptr noundef %41, ptr noundef nonnull @.str.64, i32 noundef %43, i32 noundef %45, i32 noundef %47) #11
  br label %do.body19

do.body19:                                        ; preds = %if.then15, %do.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dcmi_set_fmt.__UNIQUE_ID_ddebug342, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dcmi_set_fmt, %if.then31)) #11
          to label %do.end38 [label %if.then31], !srcloc !363

if.then31:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #13
  %dev32 = getelementptr inbounds %struct.stm32_dcmi, ptr %dcmi, i32 0, i32 1
  %48 = ptrtoint ptr %dev32 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev32, align 4
  %50 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %fmt, align 4
  %52 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %height.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dcmi_set_fmt.__UNIQUE_ID_ddebug342, ptr noundef %49, ptr noundef nonnull @.str.65, ptr noundef %pixelformat, i32 noundef %51, i32 noundef %53) #11
  br label %do.end38

do.end38:                                         ; preds = %if.then31, %do.body19
  %fmt39 = getelementptr inbounds %struct.stm32_dcmi, ptr %dcmi, i32 0, i32 13
  %54 = call ptr @memcpy(ptr %fmt39, ptr %f, i32 204)
  %55 = ptrtoint ptr %sd_format to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %sd_format, align 4
  %sd_format40 = getelementptr inbounds %struct.stm32_dcmi, ptr %dcmi, i32 0, i32 18
  %57 = ptrtoint ptr %sd_format40 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %56, ptr %sd_format40, align 8
  %sd_framesize41 = getelementptr inbounds %struct.stm32_dcmi, ptr %dcmi, i32 0, i32 21
  %58 = ptrtoint ptr %sd_framesize to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %sd_framesize, align 8
  %60 = ptrtoint ptr %sd_framesize41 to i32
  call void @__asan_storeN_noabort(i32 %60, i32 8)
  store i64 %59, ptr %sd_framesize41, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end38, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end38 ], [ %call, %entry.cleanup_crit_edge ], [ %call7, %if.end4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sd_framesize) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sd_format) #11
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %format) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_is_singular(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dcmi_try_fmt(ptr nocapture noundef %dcmi, ptr noundef %f, ptr noundef writeonly %sd_format, ptr noundef writeonly %sd_framesize) unnamed_addr #2 align 64 {
entry:
  %pad_cfg = alloca %struct.v4l2_subdev_pad_config, align 4
  %pad_state = alloca %struct.v4l2_subdev_state, align 4
  %format = alloca %struct.v4l2_subdev_format, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %pad_cfg) #11
  %0 = call ptr @memset(ptr %pad_cfg, i32 255, i32 80)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pad_state) #11
  %1 = ptrtoint ptr %pad_state to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %pad_cfg, ptr %pad_state, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %format) #11
  %2 = call ptr @memset(ptr %format, i32 0, i32 88)
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %3 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pixelformat, align 4
  %num_of_sd_formats.i = getelementptr inbounds %struct.stm32_dcmi, ptr %dcmi, i32 0, i32 17
  %5 = ptrtoint ptr %num_of_sd_formats.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_of_sd_formats.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp9.not.i = icmp eq i32 %6, 0
  br i1 %cmp9.not.i, label %entry.cleanup_crit_edge, label %for.body.lr.ph.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %entry
  %sd_formats.i = getelementptr inbounds %struct.stm32_dcmi, ptr %dcmi, i32 0, i32 16
  %7 = ptrtoint ptr %sd_formats.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sd_formats.i, align 8
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.010.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %6
  br i1 %exitcond.not.i, label %for.cond.i.if.end_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.cond.i.if.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.010.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr ptr, ptr %8, i32 %i.010.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %4)
  %cmp2.i = icmp eq i32 %12, %4
  br i1 %cmp2.i, label %find_format_by_fourcc.exit, label %for.cond.i

find_format_by_fourcc.exit:                       ; preds = %for.body.i
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %find_format_by_fourcc.exit.if.end_crit_edge, label %find_format_by_fourcc.exit.if.end5_crit_edge

find_format_by_fourcc.exit.if.end5_crit_edge:     ; preds = %find_format_by_fourcc.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

find_format_by_fourcc.exit.if.end_crit_edge:      ; preds = %find_format_by_fourcc.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %find_format_by_fourcc.exit.if.end_crit_edge, %for.cond.i.if.end_crit_edge
  %13 = ptrtoint ptr %sd_formats.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sd_formats.i, align 8
  %sub = add i32 %6, -1
  %arrayidx = getelementptr ptr, ptr %14, i32 %sub
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %19 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %pixelformat, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.end, %find_format_by_fourcc.exit.if.end5_crit_edge
  %sd_fmt.0 = phi ptr [ %10, %find_format_by_fourcc.exit.if.end5_crit_edge ], [ %16, %if.end ]
  %20 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fmt, align 4
  %22 = call i32 @llvm.umax.i32(i32 %21, i32 16)
  %23 = call i32 @llvm.umin.i32(i32 %22, i32 2592)
  %24 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %fmt, align 4
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %25 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %height, align 4
  %27 = call i32 @llvm.umax.i32(i32 %26, i32 16)
  %28 = call i32 @llvm.umin.i32(i32 %27, i32 2592)
  %29 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %height, align 4
  %do_crop26 = getelementptr inbounds %struct.stm32_dcmi, ptr %dcmi, i32 0, i32 15
  %30 = ptrtoint ptr %do_crop26 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %do_crop26, align 4, !range !365
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool27.not = icmp eq i8 %31, 0
  br i1 %tobool27.not, label %if.end5.if.end37_crit_edge, label %land.end

if.end5.if.end37_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

land.end:                                         ; preds = %if.end5
  %32 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pixelformat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1195724874, i32 %33)
  %cmp29.not = icmp eq i32 %33, 1195724874
  br i1 %cmp29.not, label %land.end.if.end37_crit_edge, label %land.lhs.true

land.end.if.end37_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

land.lhs.true:                                    ; preds = %land.end
  %num_of_sd_framesizes = getelementptr inbounds %struct.stm32_dcmi, ptr %dcmi, i32 0, i32 20
  %34 = ptrtoint ptr %num_of_sd_framesizes to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_of_sd_framesizes, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool31.not = icmp eq i32 %35, 0
  br i1 %tobool31.not, label %land.lhs.true.if.end37_crit_edge, label %for.body.lr.ph.i211

land.lhs.true.if.end37_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

for.body.lr.ph.i211:                              ; preds = %land.lhs.true
  %sd_framesizes.i = getelementptr inbounds %struct.stm32_dcmi, ptr %dcmi, i32 0, i32 19
  %36 = ptrtoint ptr %sd_framesizes.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sd_framesizes.i, align 4
  %38 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %height, align 4
  br label %for.body.i215

for.body.i215:                                    ; preds = %for.body.i215.for.body.i215_crit_edge, %for.body.lr.ph.i211
  %match.027.i = phi ptr [ null, %for.body.lr.ph.i211 ], [ %match.1.i, %for.body.i215.for.body.i215_crit_edge ]
  %min_err.026.i = phi i32 [ -1, %for.body.lr.ph.i211 ], [ %min_err.1.i, %for.body.i215.for.body.i215_crit_edge ]
  %i.025.i = phi i32 [ 0, %for.body.lr.ph.i211 ], [ %inc.i213, %for.body.i215.for.body.i215_crit_edge ]
  %arrayidx.i212 = getelementptr %struct.dcmi_framesize, ptr %37, i32 %i.025.i
  %40 = ptrtoint ptr %arrayidx.i212 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx.i212, align 4
  %sub.i = sub i32 %41, %23
  %height.i = getelementptr %struct.dcmi_framesize, ptr %37, i32 %i.025.i, i32 1
  %42 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %height.i, align 4
  %sub3.i = sub i32 %43, %39
  %add.i = add i32 %sub3.i, %sub.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i)
  %cmp4.i = icmp sgt i32 %sub.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub3.i)
  %cmp5.i = icmp sgt i32 %sub3.i, -1
  %or.cond.i = select i1 %cmp4.i, i1 %cmp5.i, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %min_err.026.i)
  %cmp7.i = icmp ult i32 %add.i, %min_err.026.i
  %or.cond23.i = select i1 %or.cond.i, i1 %cmp7.i, i1 false
  %min_err.1.i = select i1 %or.cond23.i, i32 %add.i, i32 %min_err.026.i
  %match.1.i = select i1 %or.cond23.i, ptr %arrayidx.i212, ptr %match.027.i
  %inc.i213 = add nuw i32 %i.025.i, 1
  %exitcond.not.i214 = icmp eq i32 %inc.i213, %35
  br i1 %exitcond.not.i214, label %for.end.i, label %for.body.i215.for.body.i215_crit_edge

for.body.i215.for.body.i215_crit_edge:            ; preds = %for.body.i215
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i215

for.end.i:                                        ; preds = %for.body.i215
  %tobool.not.i = icmp eq ptr %match.1.i, null
  br i1 %tobool.not.i, label %if.then8.i, label %for.end.i.__find_outer_frame_size.exit_crit_edge

for.end.i.__find_outer_frame_size.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__find_outer_frame_size.exit

if.then8.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %44 = ptrtoint ptr %sd_framesizes.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %sd_framesizes.i, align 4
  br label %__find_outer_frame_size.exit

__find_outer_frame_size.exit:                     ; preds = %if.then8.i, %for.end.i.__find_outer_frame_size.exit_crit_edge
  %match.2.i = phi ptr [ %match.1.i, %for.end.i.__find_outer_frame_size.exit_crit_edge ], [ %45, %if.then8.i ]
  %46 = ptrtoint ptr %match.2.i to i32
  call void @__asan_loadN_noabort(i32 %46, i32 8)
  %47 = load i64, ptr %match.2.i, align 4
  %outer_sd_fsize.sroa.0.0.extract.shift = lshr i64 %47, 32
  %outer_sd_fsize.sroa.0.0.extract.trunc = trunc i64 %outer_sd_fsize.sroa.0.0.extract.shift to i32
  %outer_sd_fsize.sroa.5.0.extract.trunc = trunc i64 %47 to i32
  %48 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %outer_sd_fsize.sroa.0.0.extract.trunc, ptr %fmt, align 4
  %49 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %outer_sd_fsize.sroa.5.0.extract.trunc, ptr %height, align 4
  br label %if.end37

if.end37:                                         ; preds = %__find_outer_frame_size.exit, %land.lhs.true.if.end37_crit_edge, %land.end.if.end37_crit_edge, %if.end5.if.end37_crit_edge
  %50 = phi i1 [ true, %__find_outer_frame_size.exit ], [ true, %land.lhs.true.if.end37_crit_edge ], [ false, %land.end.if.end37_crit_edge ], [ false, %if.end5.if.end37_crit_edge ]
  %format38 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %mbus_code = getelementptr inbounds %struct.dcmi_format, ptr %sd_fmt.0, i32 0, i32 1
  %51 = ptrtoint ptr %mbus_code to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %mbus_code, align 4
  %53 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %fmt, align 4
  %55 = ptrtoint ptr %format38 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %format38, align 4
  %56 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %height, align 4
  %height2.i217 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %58 = ptrtoint ptr %height2.i217 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %height2.i217, align 4
  %field.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %59 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %field.i, align 4
  %field3.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 3
  %61 = ptrtoint ptr %field3.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %field3.i, align 4
  %colorspace.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %62 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %colorspace.i, align 4
  %colorspace4.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 4
  %64 = ptrtoint ptr %colorspace4.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %colorspace4.i, align 4
  %65 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %65, align 4
  %conv.i = trunc i32 %67 to i16
  %68 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 5
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %conv.i, ptr %68, align 4
  %quantization.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1
  %70 = ptrtoint ptr %quantization.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %quantization.i, align 4
  %conv5.i = trunc i32 %71 to i16
  %quantization6.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 6
  %72 = ptrtoint ptr %quantization6.i to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %conv5.i, ptr %quantization6.i, align 2
  %xfer_func.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %73 = ptrtoint ptr %xfer_func.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %xfer_func.i, align 4
  %conv7.i = trunc i32 %74 to i16
  %xfer_func8.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 7
  %75 = ptrtoint ptr %xfer_func8.i to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %conv7.i, ptr %xfer_func8.i, align 4
  %code9.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 2
  %76 = ptrtoint ptr %code9.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %52, ptr %code9.i, align 4
  %source = getelementptr inbounds %struct.stm32_dcmi, ptr %dcmi, i32 0, i32 12
  %77 = ptrtoint ptr %source to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %source, align 4
  %tobool39.not = icmp eq ptr %78, null
  br i1 %tobool39.not, label %if.end37.cleanup_crit_edge, label %if.else

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else:                                          ; preds = %if.end37
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %78, i32 0, i32 6
  %79 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ops, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %80, i32 0, i32 7
  %81 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %pad, align 4
  %tobool41.not = icmp eq ptr %82, null
  br i1 %tobool41.not, label %if.else.cleanup_crit_edge, label %land.lhs.true42

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true42:                                  ; preds = %if.else
  %set_fmt = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %82, i32 0, i32 5
  %83 = ptrtoint ptr %set_fmt to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %set_fmt, align 4
  %tobool45.not = icmp eq ptr %84, null
  br i1 %tobool45.not, label %land.lhs.true42.cleanup_crit_edge, label %if.else47

land.lhs.true42.cleanup_crit_edge:                ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else47:                                        ; preds = %land.lhs.true42
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %85 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool48.not = icmp eq ptr %85, null
  br i1 %tobool48.not, label %if.else47.if.else55_crit_edge, label %land.lhs.true49

if.else47.if.else55_crit_edge:                    ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else55

land.lhs.true49:                                  ; preds = %if.else47
  %set_fmt50 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %85, i32 0, i32 5
  %86 = ptrtoint ptr %set_fmt50 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %set_fmt50, align 4
  %tobool51.not = icmp eq ptr %87, null
  br i1 %tobool51.not, label %land.lhs.true49.if.else55_crit_edge, label %land.lhs.true49.if.end62_crit_edge

land.lhs.true49.if.end62_crit_edge:               ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end62

land.lhs.true49.if.else55_crit_edge:              ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else55

if.else55:                                        ; preds = %land.lhs.true49.if.else55_crit_edge, %if.else47.if.else55_crit_edge
  br label %if.end62

if.end62:                                         ; preds = %if.else55, %land.lhs.true49.if.end62_crit_edge
  %.sink = phi ptr [ %84, %if.else55 ], [ %87, %land.lhs.true49.if.end62_crit_edge ]
  %call59 = call i32 %.sink(ptr noundef nonnull %78, ptr noundef nonnull %pad_state, ptr noundef nonnull %format) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %cmp64 = icmp slt i32 %call59, 0
  br i1 %cmp64, label %if.end62.cleanup_crit_edge, label %if.end66

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end66:                                         ; preds = %if.end62
  %88 = ptrtoint ptr %format38 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %format38, align 4
  %90 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %fmt, align 4
  %91 = ptrtoint ptr %height2.i217 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %height2.i217, align 4
  %93 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %height, align 4
  %94 = ptrtoint ptr %field3.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %field3.i, align 4
  %96 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %field.i, align 4
  %97 = ptrtoint ptr %colorspace4.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %colorspace4.i, align 4
  %99 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %colorspace.i, align 4
  %100 = ptrtoint ptr %68 to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %68, align 4
  %conv.i224 = zext i16 %101 to i32
  %102 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %conv.i224, ptr %65, align 4
  %103 = ptrtoint ptr %quantization6.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %quantization6.i, align 2
  %conv5.i226 = zext i16 %104 to i32
  %105 = ptrtoint ptr %quantization.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %conv5.i226, ptr %quantization.i, align 4
  %106 = ptrtoint ptr %xfer_func8.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %xfer_func8.i, align 4
  %conv7.i229 = zext i16 %107 to i32
  %108 = ptrtoint ptr %xfer_func.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %conv7.i229, ptr %xfer_func.i, align 4
  br i1 %50, label %if.then73, label %if.end66.if.end119_crit_edge

if.end66.if.end119_crit_edge:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end119

if.then73:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #13
  %crop = getelementptr inbounds %struct.stm32_dcmi, ptr %dcmi, i32 0, i32 14
  %109 = ptrtoint ptr %crop to i32
  call void @__asan_load4_noabort(i32 %109)
  %c.sroa.0.0.copyload = load i32, ptr %crop, align 4
  %c.sroa.11.0.crop.sroa_idx = getelementptr inbounds %struct.stm32_dcmi, ptr %dcmi, i32 0, i32 14, i32 1
  %110 = ptrtoint ptr %c.sroa.11.0.crop.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %110)
  %c.sroa.11.0.copyload = load i32, ptr %c.sroa.11.0.crop.sroa_idx, align 4
  %c.sroa.18.0.crop.sroa_idx = getelementptr inbounds %struct.stm32_dcmi, ptr %dcmi, i32 0, i32 14, i32 2
  %111 = ptrtoint ptr %c.sroa.18.0.crop.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %111)
  %c.sroa.18.0.copyload = load i32, ptr %c.sroa.18.0.crop.sroa_idx, align 4
  %c.sroa.23.0.crop.sroa_idx = getelementptr inbounds %struct.stm32_dcmi, ptr %dcmi, i32 0, i32 14, i32 3
  %112 = ptrtoint ptr %c.sroa.23.0.crop.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %112)
  %c.sroa.23.0.copyload = load i32, ptr %c.sroa.23.0.crop.sroa_idx, align 4
  %113 = call i32 @llvm.umin.i32(i32 %c.sroa.18.0.copyload, i32 %89)
  %114 = call i32 @llvm.umin.i32(i32 %c.sroa.23.0.copyload, i32 %92)
  %115 = call i32 @llvm.smax.i32(i32 %c.sroa.0.0.copyload, i32 0)
  %116 = call i32 @llvm.smax.i32(i32 %c.sroa.11.0.copyload, i32 0)
  %add.i232 = add i32 %113, %115
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i232, i32 %89)
  %cmp14.i = icmp ugt i32 %add.i232, %89
  %sub.i233 = sub i32 %89, %113
  %c.sroa.0.1 = select i1 %cmp14.i, i32 %sub.i233, i32 %115
  %add23.i = add i32 %114, %116
  call void @__sanitizer_cov_trace_cmp4(i32 %add23.i, i32 %92)
  %cmp27.i = icmp ugt i32 %add23.i, %92
  %sub33.i = sub i32 %92, %114
  %c.sroa.11.1 = select i1 %cmp27.i, i32 %sub33.i, i32 %116
  %117 = call i32 @llvm.smax.i32(i32 %c.sroa.11.1, i32 0)
  %118 = call i32 @llvm.smin.i32(i32 %117, i32 %sub33.i)
  %119 = call i32 @llvm.smax.i32(i32 %c.sroa.0.1, i32 0)
  %120 = call i32 @llvm.smin.i32(i32 %119, i32 %sub.i233)
  %121 = ptrtoint ptr %crop to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %120, ptr %crop, align 4
  %122 = ptrtoint ptr %c.sroa.11.0.crop.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %118, ptr %c.sroa.11.0.crop.sroa_idx, align 4
  %123 = ptrtoint ptr %c.sroa.18.0.crop.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %113, ptr %c.sroa.18.0.crop.sroa_idx, align 4
  %124 = ptrtoint ptr %c.sroa.23.0.crop.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %114, ptr %c.sroa.23.0.crop.sroa_idx, align 4
  %125 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %113, ptr %fmt, align 4
  %126 = load i32, ptr %c.sroa.23.0.crop.sroa_idx, align 4
  %127 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %126, ptr %height, align 4
  br label %if.end119

if.end119:                                        ; preds = %if.then73, %if.end66.if.end119_crit_edge
  %128 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 1, ptr %field.i, align 4
  %129 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %fmt, align 4
  %bpp = getelementptr inbounds %struct.dcmi_format, ptr %sd_fmt.0, i32 0, i32 2
  %131 = ptrtoint ptr %bpp to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %bpp, align 4
  %conv = zext i8 %132 to i32
  %mul = mul i32 %130, %conv
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %133 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %mul, ptr %bytesperline, align 4
  %134 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %height, align 4
  %mul123 = mul i32 %mul, %135
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %136 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %mul123, ptr %sizeimage, align 4
  %tobool124.not = icmp eq ptr %sd_format, null
  br i1 %tobool124.not, label %if.end119.if.end126_crit_edge, label %if.then125

if.end119.if.end126_crit_edge:                    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end126

if.then125:                                       ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #13
  %137 = ptrtoint ptr %sd_format to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %sd_fmt.0, ptr %sd_format, align 4
  br label %if.end126

if.end126:                                        ; preds = %if.then125, %if.end119.if.end126_crit_edge
  %tobool127.not = icmp eq ptr %sd_framesize, null
  br i1 %tobool127.not, label %if.end126.cleanup_crit_edge, label %if.then128

if.end126.cleanup_crit_edge:                      ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then128:                                       ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #13
  %138 = ptrtoint ptr %sd_framesize to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %89, ptr %sd_framesize, align 4
  %sd_fsize.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %sd_framesize, i32 4
  %139 = ptrtoint ptr %sd_fsize.sroa.5.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %92, ptr %sd_fsize.sroa.5.0..sroa_idx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then128, %if.end126.cleanup_crit_edge, %if.end62.cleanup_crit_edge, %land.lhs.true42.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end37.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call59, %if.end62.cleanup_crit_edge ], [ 0, %if.then128 ], [ 0, %if.end126.cleanup_crit_edge ], [ -515, %if.else.cleanup_crit_edge ], [ -515, %land.lhs.true42.cleanup_crit_edge ], [ -19, %if.end37.cleanup_crit_edge ], [ -61, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %format) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pad_state) #11
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %pad_cfg) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dcmi_pipeline_s_fmt(ptr nocapture noundef readonly %dcmi, ptr nocapture noundef %format) unnamed_addr #2 align 64 {
entry:
  %fmt = alloca %struct.v4l2_subdev_format, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %source = getelementptr inbounds %struct.stm32_dcmi, ptr %dcmi, i32 0, i32 12
  %0 = ptrtoint ptr %source to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %source, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fmt) #11
  %2 = call ptr @memcpy(ptr %fmt, ptr %format, i32 88)
  %dev = getelementptr inbounds %struct.stm32_dcmi, ptr %dcmi, i32 0, i32 1
  %format17 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %code = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 2
  %height = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %pad23 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 1
  %format67 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %code68 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  %height81 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  br label %while.cond

while.cond:                                       ; preds = %is_media_entity_v4l2_subdev.exit.while.cond_crit_edge, %entry
  %found.0.off0 = phi i1 [ false, %entry ], [ true, %is_media_entity_v4l2_subdev.exit.while.cond_crit_edge ]
  %pad.0 = phi ptr [ null, %entry ], [ %pad.3, %is_media_entity_v4l2_subdev.exit.while.cond_crit_edge ]
  %src_pad.0 = phi ptr [ null, %entry ], [ %src_pad.112, %is_media_entity_v4l2_subdev.exit.while.cond_crit_edge ]
  %sink_pad.0 = phi ptr [ null, %entry ], [ %call115, %is_media_entity_v4l2_subdev.exit.while.cond_crit_edge ]
  %entity.0 = phi ptr [ %1, %entry ], [ %65, %is_media_entity_v4l2_subdev.exit.while.cond_crit_edge ]
  %num_pads = getelementptr inbounds %struct.media_entity, ptr %entity.0, i32 0, i32 5
  %3 = ptrtoint ptr %num_pads to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %num_pads, align 4
  %conv = zext i16 %4 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %cmp35.not = icmp eq i16 %4, 0
  br i1 %cmp35.not, label %while.cond.for.end_crit_edge, label %for.body.lr.ph

while.cond.for.end_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %while.cond
  %pads = getelementptr inbounds %struct.media_entity, ptr %entity.0, i32 0, i32 9
  %5 = ptrtoint ptr %pads to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pads, align 4
  %uglygep = getelementptr i8, ptr %6, i32 -32
  %7 = shl nuw nsw i32 %conv, 5
  %uglygep39 = getelementptr i8, ptr %uglygep, i32 %7
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.036, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.036 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %flags = getelementptr %struct.media_pad, ptr %6, i32 %i.036, i32 4
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  %and = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.cond, label %if.end5.loopexit

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %while.cond.for.end_crit_edge
  %pad.1.lcssa = phi ptr [ %pad.0, %while.cond.for.end_crit_edge ], [ %uglygep39, %for.cond.for.end_crit_edge ]
  br i1 %found.0.off0, label %for.end.if.end5_crit_edge, label %for.end.while.end_crit_edge

for.end.while.end_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

for.end.if.end5_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.end5.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx = getelementptr %struct.media_pad, ptr %6, i32 %i.036
  br label %if.end5

if.end5:                                          ; preds = %if.end5.loopexit, %for.end.if.end5_crit_edge
  %src_pad.112 = phi ptr [ %src_pad.0, %for.end.if.end5_crit_edge ], [ %arrayidx, %if.end5.loopexit ]
  %pad.210 = phi ptr [ %pad.1.lcssa, %for.end.if.end5_crit_edge ], [ %arrayidx, %if.end5.loopexit ]
  %tobool6.not = icmp eq ptr %entity.0, null
  %tobool8.not = icmp eq ptr %sink_pad.0, null
  %pad.3 = select i1 %tobool8.not, ptr %pad.210, ptr %sink_pad.0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dcmi_pipeline_s_fmt.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dcmi_pipeline_s_fmt, %if.then15)) #11
          to label %do.end [label %if.then15], !srcloc !363

if.then15:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %entity.0, i32 0, i32 9
  %index = getelementptr inbounds %struct.media_pad, ptr %pad.3, i32 0, i32 2
  %12 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %index, align 4
  %conv16 = zext i16 %13 to i32
  %14 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %code, align 4
  %16 = ptrtoint ptr %format17 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %format17, align 4
  %18 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %height, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dcmi_pipeline_s_fmt.__UNIQUE_ID_ddebug319, ptr noundef %11, ptr noundef nonnull @.str.67, ptr noundef %name, i32 noundef %conv16, i32 noundef %15, i32 noundef %17, i32 noundef %19) #11
  br label %do.end

do.end:                                           ; preds = %if.then15, %if.end5
  %index21 = getelementptr inbounds %struct.media_pad, ptr %pad.3, i32 0, i32 2
  %20 = ptrtoint ptr %index21 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %index21, align 4
  %conv22 = zext i16 %21 to i32
  %22 = ptrtoint ptr %pad23 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv22, ptr %pad23, align 4
  br i1 %tobool6.not, label %do.end.cleanup.thread25_crit_edge, label %if.else

do.end.cleanup.thread25_crit_edge:                ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread25

if.else:                                          ; preds = %do.end
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %entity.0, i32 0, i32 6
  %23 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops, align 4
  %pad26 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %24, i32 0, i32 7
  %25 = ptrtoint ptr %pad26 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pad26, align 4
  %tobool27.not = icmp eq ptr %26, null
  br i1 %tobool27.not, label %if.else.cleanup.thread25_crit_edge, label %land.lhs.true

if.else.cleanup.thread25_crit_edge:               ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread25

land.lhs.true:                                    ; preds = %if.else
  %set_fmt = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %26, i32 0, i32 5
  %27 = ptrtoint ptr %set_fmt to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %set_fmt, align 4
  %tobool30.not = icmp eq ptr %28, null
  br i1 %tobool30.not, label %land.lhs.true.cleanup.thread25_crit_edge, label %if.else32

land.lhs.true.cleanup.thread25_crit_edge:         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread25

if.else32:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool33.not = icmp eq ptr %29, null
  br i1 %tobool33.not, label %if.else32.if.else40_crit_edge, label %land.lhs.true34

if.else32.if.else40_crit_edge:                    ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else40

land.lhs.true34:                                  ; preds = %if.else32
  %set_fmt35 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %set_fmt35 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %set_fmt35, align 4
  %tobool36.not = icmp eq ptr %31, null
  br i1 %tobool36.not, label %land.lhs.true34.if.else40_crit_edge, label %land.lhs.true34.if.end47_crit_edge

land.lhs.true34.if.end47_crit_edge:               ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47

land.lhs.true34.if.else40_crit_edge:              ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else40

if.else40:                                        ; preds = %land.lhs.true34.if.else40_crit_edge, %if.else32.if.else40_crit_edge
  br label %if.end47

if.end47:                                         ; preds = %if.else40, %land.lhs.true34.if.end47_crit_edge
  %.sink = phi ptr [ %28, %if.else40 ], [ %31, %land.lhs.true34.if.end47_crit_edge ]
  %call44 = call i32 %.sink(ptr noundef nonnull %entity.0, ptr noundef null, ptr noundef nonnull %fmt) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp49 = icmp slt i32 %call44, 0
  br i1 %cmp49, label %if.end47.cleanup.thread25_crit_edge, label %if.end66

if.end47.cleanup.thread25_crit_edge:              ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread25

cleanup.thread25:                                 ; preds = %if.end47.cleanup.thread25_crit_edge, %land.lhs.true.cleanup.thread25_crit_edge, %if.else.cleanup.thread25_crit_edge, %do.end.cleanup.thread25_crit_edge
  %__result.016 = phi i32 [ %call44, %if.end47.cleanup.thread25_crit_edge ], [ -19, %do.end.cleanup.thread25_crit_edge ], [ -515, %land.lhs.true.cleanup.thread25_crit_edge ], [ -515, %if.else.cleanup.thread25_crit_edge ]
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 4
  %34 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %code, align 4
  %36 = ptrtoint ptr %format17 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %format17, align 4
  %38 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %height, align 4
  %name62 = getelementptr inbounds %struct.v4l2_subdev, ptr %entity.0, i32 0, i32 9
  %40 = ptrtoint ptr %index21 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %index21, align 4
  %conv65 = zext i16 %41 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.66, i32 noundef %35, i32 noundef %37, i32 noundef %39, ptr noundef %name62, i32 noundef %conv65, i32 noundef %__result.016) #14
  br label %cleanup123

if.end66:                                         ; preds = %if.end47
  %42 = ptrtoint ptr %code68 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %code68, align 4
  %44 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %code, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %45)
  %cmp71.not = icmp eq i32 %43, %45
  br i1 %cmp71.not, label %lor.lhs.false, label %if.end66.do.body87_crit_edge

if.end66.do.body87_crit_edge:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body87

lor.lhs.false:                                    ; preds = %if.end66
  %46 = ptrtoint ptr %format67 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %format67, align 4
  %48 = ptrtoint ptr %format17 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %format17, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %49)
  %cmp77.not = icmp eq i32 %47, %49
  br i1 %cmp77.not, label %lor.lhs.false79, label %lor.lhs.false.do.body87_crit_edge

lor.lhs.false.do.body87_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body87

lor.lhs.false79:                                  ; preds = %lor.lhs.false
  %50 = ptrtoint ptr %height81 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %height81, align 4
  %52 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %53)
  %cmp84.not = icmp eq i32 %51, %53
  br i1 %cmp84.not, label %lor.lhs.false79.if.end114_crit_edge, label %lor.lhs.false79.do.body87_crit_edge

lor.lhs.false79.do.body87_crit_edge:              ; preds = %lor.lhs.false79
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body87

lor.lhs.false79.if.end114_crit_edge:              ; preds = %lor.lhs.false79
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end114

do.body87:                                        ; preds = %lor.lhs.false79.do.body87_crit_edge, %lor.lhs.false.do.body87_crit_edge, %if.end66.do.body87_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dcmi_pipeline_s_fmt.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dcmi_pipeline_s_fmt, %if.then99)) #11
          to label %if.end114 [label %if.then99], !srcloc !363

if.then99:                                        ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #13
  %54 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev, align 4
  %name101 = getelementptr inbounds %struct.v4l2_subdev, ptr %entity.0, i32 0, i32 9
  %56 = ptrtoint ptr %index21 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %index21, align 4
  %conv104 = zext i16 %57 to i32
  %58 = ptrtoint ptr %code68 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %code68, align 4
  %60 = ptrtoint ptr %format67 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %format67, align 4
  %62 = ptrtoint ptr %height81 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %height81, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dcmi_pipeline_s_fmt.__UNIQUE_ID_ddebug320, ptr noundef %55, ptr noundef nonnull @.str.69, ptr noundef %name101, i32 noundef %conv104, i32 noundef %59, i32 noundef %61, i32 noundef %63) #11
  br label %if.end114

if.end114:                                        ; preds = %if.then99, %do.body87, %lor.lhs.false79.if.end114_crit_edge
  %call115 = call ptr @media_entity_remote_pad(ptr noundef %src_pad.112) #11
  %tobool116.not = icmp eq ptr %call115, null
  br i1 %tobool116.not, label %if.end114.while.end_crit_edge, label %lor.lhs.false117

if.end114.while.end_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

lor.lhs.false117:                                 ; preds = %if.end114
  %entity118 = getelementptr inbounds %struct.media_pad, ptr %call115, i32 0, i32 1
  %64 = ptrtoint ptr %entity118 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %entity118, align 4
  %tobool.not.i = icmp eq ptr %65, null
  br i1 %tobool.not.i, label %lor.lhs.false117.while.end_crit_edge, label %is_media_entity_v4l2_subdev.exit

lor.lhs.false117.while.end_crit_edge:             ; preds = %lor.lhs.false117
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

is_media_entity_v4l2_subdev.exit:                 ; preds = %lor.lhs.false117
  %obj_type.i = getelementptr inbounds %struct.media_entity, ptr %65, i32 0, i32 2
  %66 = ptrtoint ptr %obj_type.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %obj_type.i, align 4
  %cmp.i = icmp eq i32 %67, 2
  br i1 %cmp.i, label %is_media_entity_v4l2_subdev.exit.while.cond_crit_edge, label %is_media_entity_v4l2_subdev.exit.while.end_crit_edge

is_media_entity_v4l2_subdev.exit.while.end_crit_edge: ; preds = %is_media_entity_v4l2_subdev.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

is_media_entity_v4l2_subdev.exit.while.cond_crit_edge: ; preds = %is_media_entity_v4l2_subdev.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond

while.end:                                        ; preds = %is_media_entity_v4l2_subdev.exit.while.end_crit_edge, %lor.lhs.false117.while.end_crit_edge, %if.end114.while.end_crit_edge, %for.end.while.end_crit_edge
  %68 = call ptr @memcpy(ptr %format, ptr %fmt, i32 88)
  br label %cleanup123

cleanup123:                                       ; preds = %while.end, %cleanup.thread25
  %retval.2 = phi i32 [ 0, %while.end ], [ %__result.016, %cleanup.thread25 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fmt) #11
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @media_entity_remote_pad(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_vb2_fop_release(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dcmi_querycap(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr noundef %cap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strscpy(ptr noundef %cap, ptr noundef nonnull @.str, i32 noundef 16) #11
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %call2 = tail call i32 @strscpy(ptr noundef %card, ptr noundef nonnull @.str.70, i32 noundef 32) #11
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %call4 = tail call i32 @strscpy(ptr noundef %bus_info, ptr noundef nonnull @.str.71, i32 noundef 32) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dcmi_enum_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f, align 4
  %num_of_sd_formats = getelementptr inbounds %struct.stm32_dcmi, ptr %1, i32 0, i32 17
  %4 = ptrtoint ptr %num_of_sd_formats to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_of_sd_formats, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not = icmp ult i32 %3, %5
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %sd_formats = getelementptr inbounds %struct.stm32_dcmi, ptr %1, i32 0, i32 16
  %6 = ptrtoint ptr %sd_formats to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sd_formats, align 8
  %arrayidx = getelementptr ptr, ptr %7, i32 %3
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %12 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %pixelformat, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dcmi_g_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %fmt1 = getelementptr inbounds %struct.stm32_dcmi, ptr %1, i32 0, i32 13
  %2 = call ptr @memcpy(ptr %fmt, ptr %fmt1, i32 204)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dcmi_s_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %streaming.i = getelementptr inbounds %struct.stm32_dcmi, ptr %1, i32 0, i32 24, i32 28
  %2 = ptrtoint ptr %streaming.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %streaming.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i)
  %tobool.i = icmp slt i16 %bf.load.i, 0
  br i1 %tobool.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call2 = tail call fastcc i32 @dcmi_set_fmt(ptr noundef %1, ptr noundef %f)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dcmi_try_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call fastcc i32 @dcmi_try_fmt(ptr noundef %1, ptr noundef %f, ptr noundef null, ptr noundef null)
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_reqbufs(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_querybuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_qbuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_expbuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_dqbuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_create_bufs(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_prepare_buf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamon(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamoff(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dcmi_enum_input(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr noundef %i) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %type = getelementptr inbounds %struct.v4l2_input, ptr %i, i32 0, i32 2
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %type, align 4
  %name = getelementptr inbounds %struct.v4l2_input, ptr %i, i32 0, i32 1
  %call = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str.72, i32 noundef 32) #11
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @dcmi_g_input(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %i) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %i, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dcmi_s_input(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, i32 noundef %i) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i)
  %cmp.not = icmp eq i32 %i, 0
  %. = select i1 %cmp.not, i32 0, i32 -22
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dcmi_g_selection(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %target = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 1
  %4 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %target, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.179)
  switch i32 %5, label %if.end.cleanup_crit_edge [
    i32 1, label %if.end.sw.bb_crit_edge
    i32 2, label %if.end.sw.bb_crit_edge25
    i32 0, label %sw.bb1
  ]

if.end.sw.bb_crit_edge25:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge25
  %r = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3
  %sd_bounds = getelementptr inbounds %struct.stm32_dcmi, ptr %1, i32 0, i32 22
  %7 = call ptr @memcpy(ptr %r, ptr %sd_bounds, i32 16)
  br label %cleanup

sw.bb1:                                           ; preds = %if.end
  %do_crop = getelementptr inbounds %struct.stm32_dcmi, ptr %1, i32 0, i32 15
  %8 = ptrtoint ptr %do_crop to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %do_crop, align 4, !range !365
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  %r4 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #13
  %crop = getelementptr inbounds %struct.stm32_dcmi, ptr %1, i32 0, i32 14
  %10 = call ptr @memcpy(ptr %r4, ptr %crop, i32 16)
  br label %cleanup

if.else:                                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #13
  %top = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 1
  %11 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %top, align 4
  %12 = ptrtoint ptr %r4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %r4, align 4
  %fmt6 = getelementptr inbounds %struct.stm32_dcmi, ptr %1, i32 0, i32 13, i32 1
  %13 = ptrtoint ptr %fmt6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fmt6, align 4
  %width8 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 2
  %15 = ptrtoint ptr %width8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %width8, align 4
  %height = getelementptr inbounds %struct.stm32_dcmi, ptr %1, i32 0, i32 13, i32 1, i32 0, i32 1
  %16 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %height, align 4
  %height12 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 3
  %18 = ptrtoint ptr %height12 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %height12, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then2, %sw.bb, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.then2 ], [ 0, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dcmi_s_selection(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %s) #2 align 64 {
entry:
  %format.i = alloca %struct.v4l2_subdev_format, align 4
  %pad_cfg.i = alloca %struct.v4l2_subdev_pad_config, align 4
  %pad_state.i = alloca %struct.v4l2_subdev_state, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %r1 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3
  %2 = ptrtoint ptr %r1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %r.sroa.0.0.copyload = load i32, ptr %r1, align 4
  %r.sroa.13.0.r1.sroa_idx = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 1
  %3 = ptrtoint ptr %r.sroa.13.0.r1.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %3)
  %r.sroa.13.0.copyload = load i32, ptr %r.sroa.13.0.r1.sroa_idx, align 4
  %r.sroa.22.0.r1.sroa_idx = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 2
  %4 = ptrtoint ptr %r.sroa.22.0.r1.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %r.sroa.22.0.copyload = load i32, ptr %r.sroa.22.0.r1.sroa_idx, align 4
  %r.sroa.29.0.r1.sroa_idx = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 3
  %5 = ptrtoint ptr %r.sroa.29.0.r1.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %5)
  %r.sroa.29.0.copyload = load i32, ptr %r.sroa.29.0.r1.sroa_idx, align 4
  %6 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.not = icmp eq i32 %7, 1
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %target = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 1
  %8 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %target, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp2.not = icmp eq i32 %9, 0
  br i1 %cmp2.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %pixelformat = getelementptr inbounds %struct.stm32_dcmi, ptr %1, i32 0, i32 13, i32 1, i32 0, i32 2
  %10 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pixelformat, align 4
  %sd_bounds = getelementptr inbounds %struct.stm32_dcmi, ptr %1, i32 0, i32 22
  %width = getelementptr inbounds %struct.stm32_dcmi, ptr %1, i32 0, i32 22, i32 2
  %12 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %width, align 4
  %height = getelementptr inbounds %struct.stm32_dcmi, ptr %1, i32 0, i32 22, i32 3
  %14 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %height, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %format.i) #11
  %16 = call ptr @memset(ptr %format.i, i32 0, i32 88)
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %pad_cfg.i) #11
  %17 = call ptr @memset(ptr %pad_cfg.i, i32 255, i32 80)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pad_state.i) #11
  %18 = ptrtoint ptr %pad_state.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %pad_cfg.i, ptr %pad_state.i, align 4
  %num_of_sd_formats.i.i = getelementptr inbounds %struct.stm32_dcmi, ptr %1, i32 0, i32 17
  %19 = ptrtoint ptr %num_of_sd_formats.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_of_sd_formats.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp9.not.i.i = icmp eq i32 %20, 0
  br i1 %cmp9.not.i.i, label %if.end.dcmi_set_sensor_format.exit_crit_edge, label %for.body.lr.ph.i.i

if.end.dcmi_set_sensor_format.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %dcmi_set_sensor_format.exit

for.body.lr.ph.i.i:                               ; preds = %if.end
  %sd_formats.i.i = getelementptr inbounds %struct.stm32_dcmi, ptr %1, i32 0, i32 16
  %21 = ptrtoint ptr %sd_formats.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sd_formats.i.i, align 8
  br label %for.body.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw i32 %i.010.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %20
  br i1 %exitcond.not.i.i, label %for.cond.i.i.if.end.i_crit_edge, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.cond.i.i.if.end.i_crit_edge:                  ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.010.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr ptr, ptr %22, i32 %i.010.i.i
  %23 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %11)
  %cmp2.i.i = icmp eq i32 %26, %11
  br i1 %cmp2.i.i, label %find_format_by_fourcc.exit.i, label %for.cond.i.i

find_format_by_fourcc.exit.i:                     ; preds = %for.body.i.i
  %tobool.not.i = icmp eq ptr %24, null
  br i1 %tobool.not.i, label %find_format_by_fourcc.exit.i.if.end.i_crit_edge, label %find_format_by_fourcc.exit.i.if.end5.i_crit_edge

find_format_by_fourcc.exit.i.if.end5.i_crit_edge: ; preds = %find_format_by_fourcc.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.i

find_format_by_fourcc.exit.i.if.end.i_crit_edge:  ; preds = %find_format_by_fourcc.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.end.i:                                         ; preds = %find_format_by_fourcc.exit.i.if.end.i_crit_edge, %for.cond.i.i.if.end.i_crit_edge
  %sub.i = add i32 %20, -1
  %arrayidx.i = getelementptr ptr, ptr %22, i32 %sub.i
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i, align 4
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.end.i, %find_format_by_fourcc.exit.i.if.end5.i_crit_edge
  %sd_fmt.0.i = phi ptr [ %24, %find_format_by_fourcc.exit.i.if.end5.i_crit_edge ], [ %28, %if.end.i ]
  %format6.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format.i, i32 0, i32 2
  %mbus_code.i = getelementptr inbounds %struct.dcmi_format, ptr %sd_fmt.0.i, i32 0, i32 1
  %29 = ptrtoint ptr %mbus_code.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mbus_code.i, align 4
  %31 = ptrtoint ptr %format6.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %13, ptr %format6.i, align 4
  %height2.i.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format.i, i32 0, i32 2, i32 1
  %32 = ptrtoint ptr %height2.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %15, ptr %height2.i.i, align 4
  %field3.i.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format.i, i32 0, i32 2, i32 3
  %code9.i.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format.i, i32 0, i32 2, i32 2
  %33 = call ptr @memset(ptr %field3.i.i, i32 255, i32 14)
  %34 = ptrtoint ptr %code9.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %30, ptr %code9.i.i, align 4
  %source.i = getelementptr inbounds %struct.stm32_dcmi, ptr %1, i32 0, i32 12
  %35 = ptrtoint ptr %source.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %source.i, align 4
  %tobool7.not.i = icmp eq ptr %36, null
  br i1 %tobool7.not.i, label %if.end5.i.dcmi_set_sensor_format.exit_crit_edge, label %if.else.i

if.end5.i.dcmi_set_sensor_format.exit_crit_edge:  ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dcmi_set_sensor_format.exit

if.else.i:                                        ; preds = %if.end5.i
  %ops.i = getelementptr inbounds %struct.v4l2_subdev, ptr %36, i32 0, i32 6
  %37 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ops.i, align 4
  %pad.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %38, i32 0, i32 7
  %39 = ptrtoint ptr %pad.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pad.i, align 4
  %tobool9.not.i = icmp eq ptr %40, null
  br i1 %tobool9.not.i, label %if.else.i.dcmi_set_sensor_format.exit_crit_edge, label %land.lhs.true.i

if.else.i.dcmi_set_sensor_format.exit_crit_edge:  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dcmi_set_sensor_format.exit

land.lhs.true.i:                                  ; preds = %if.else.i
  %set_fmt.i = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %40, i32 0, i32 5
  %41 = ptrtoint ptr %set_fmt.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %set_fmt.i, align 4
  %tobool12.not.i = icmp eq ptr %42, null
  br i1 %tobool12.not.i, label %land.lhs.true.i.dcmi_set_sensor_format.exit_crit_edge, label %if.else14.i

land.lhs.true.i.dcmi_set_sensor_format.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dcmi_set_sensor_format.exit

if.else14.i:                                      ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool15.not.i = icmp eq ptr %43, null
  br i1 %tobool15.not.i, label %if.else14.i.if.else22.i_crit_edge, label %land.lhs.true16.i

if.else14.i.if.else22.i_crit_edge:                ; preds = %if.else14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else22.i

land.lhs.true16.i:                                ; preds = %if.else14.i
  %set_fmt17.i = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %43, i32 0, i32 5
  %44 = ptrtoint ptr %set_fmt17.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %set_fmt17.i, align 4
  %tobool18.not.i = icmp eq ptr %45, null
  br i1 %tobool18.not.i, label %land.lhs.true16.i.if.else22.i_crit_edge, label %land.lhs.true16.i.cleanup.sink.split.i_crit_edge

land.lhs.true16.i.cleanup.sink.split.i_crit_edge: ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i

land.lhs.true16.i.if.else22.i_crit_edge:          ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else22.i

if.else22.i:                                      ; preds = %land.lhs.true16.i.if.else22.i_crit_edge, %if.else14.i.if.else22.i_crit_edge
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.else22.i, %land.lhs.true16.i.cleanup.sink.split.i_crit_edge
  %.sink.i = phi ptr [ %42, %if.else22.i ], [ %45, %land.lhs.true16.i.cleanup.sink.split.i_crit_edge ]
  %call21.i = call i32 %.sink.i(ptr noundef nonnull %36, ptr noundef nonnull %pad_state.i, ptr noundef nonnull %format.i) #11
  br label %dcmi_set_sensor_format.exit

dcmi_set_sensor_format.exit:                      ; preds = %cleanup.sink.split.i, %land.lhs.true.i.dcmi_set_sensor_format.exit_crit_edge, %if.else.i.dcmi_set_sensor_format.exit_crit_edge, %if.end5.i.dcmi_set_sensor_format.exit_crit_edge, %if.end.dcmi_set_sensor_format.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pad_state.i) #11
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %pad_cfg.i) #11
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %format.i) #11
  %46 = call i32 @llvm.umin.i32(i32 %r.sroa.22.0.copyload, i32 %13)
  %47 = call i32 @llvm.umin.i32(i32 %r.sroa.29.0.copyload, i32 %15)
  %48 = call i32 @llvm.smax.i32(i32 %r.sroa.0.0.copyload, i32 0)
  %49 = call i32 @llvm.smax.i32(i32 %r.sroa.13.0.copyload, i32 0)
  %add.i = add i32 %46, %48
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %13)
  %cmp14.i = icmp ugt i32 %add.i, %13
  %sub.i124 = sub i32 %13, %46
  %r.sroa.0.1 = select i1 %cmp14.i, i32 %sub.i124, i32 %48
  %add23.i = add i32 %47, %49
  call void @__sanitizer_cov_trace_cmp4(i32 %add23.i, i32 %15)
  %cmp27.i = icmp ugt i32 %add23.i, %15
  %sub33.i = sub i32 %15, %47
  %r.sroa.13.1 = select i1 %cmp27.i, i32 %sub33.i, i32 %49
  %50 = call i32 @llvm.smax.i32(i32 %r.sroa.13.1, i32 0)
  %51 = call i32 @llvm.smin.i32(i32 %50, i32 %sub33.i)
  %52 = call i32 @llvm.smax.i32(i32 %r.sroa.0.1, i32 0)
  %53 = call i32 @llvm.smin.i32(i32 %52, i32 %sub.i124)
  %top43 = getelementptr inbounds %struct.stm32_dcmi, ptr %1, i32 0, i32 22, i32 1
  %54 = ptrtoint ptr %top43 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %top43, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %55)
  %cmp44 = icmp eq i32 %51, %55
  br i1 %cmp44, label %land.lhs.true, label %dcmi_set_sensor_format.exit.if.then59_crit_edge

dcmi_set_sensor_format.exit.if.then59_crit_edge:  ; preds = %dcmi_set_sensor_format.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then59

land.lhs.true:                                    ; preds = %dcmi_set_sensor_format.exit
  %56 = ptrtoint ptr %sd_bounds to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %sd_bounds, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %57)
  %cmp48 = icmp eq i32 %53, %57
  br i1 %cmp48, label %land.lhs.true49, label %land.lhs.true.if.then59_crit_edge

land.lhs.true.if.then59_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then59

land.lhs.true49:                                  ; preds = %land.lhs.true
  %58 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %width, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %59)
  %cmp53 = icmp eq i32 %46, %59
  br i1 %cmp53, label %land.lhs.true54, label %land.lhs.true49.if.then59_crit_edge

land.lhs.true49.if.then59_crit_edge:              ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then59

land.lhs.true54:                                  ; preds = %land.lhs.true49
  %60 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %61)
  %cmp58 = icmp eq i32 %47, %61
  br i1 %cmp58, label %if.else, label %land.lhs.true54.if.then59_crit_edge

land.lhs.true54.if.then59_crit_edge:              ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then59

if.then59:                                        ; preds = %land.lhs.true54.if.then59_crit_edge, %land.lhs.true49.if.then59_crit_edge, %land.lhs.true.if.then59_crit_edge, %dcmi_set_sensor_format.exit.if.then59_crit_edge
  %do_crop = getelementptr inbounds %struct.stm32_dcmi, ptr %1, i32 0, i32 15
  %62 = ptrtoint ptr %do_crop to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 1, ptr %do_crop, align 4
  %crop = getelementptr inbounds %struct.stm32_dcmi, ptr %1, i32 0, i32 14
  %63 = ptrtoint ptr %crop to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %53, ptr %crop, align 4
  %r.sroa.13.0.crop.sroa_idx = getelementptr inbounds %struct.stm32_dcmi, ptr %1, i32 0, i32 14, i32 1
  %64 = ptrtoint ptr %r.sroa.13.0.crop.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %51, ptr %r.sroa.13.0.crop.sroa_idx, align 4
  %r.sroa.22.0.crop.sroa_idx = getelementptr inbounds %struct.stm32_dcmi, ptr %1, i32 0, i32 14, i32 2
  %65 = ptrtoint ptr %r.sroa.22.0.crop.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %46, ptr %r.sroa.22.0.crop.sroa_idx, align 4
  %r.sroa.29.0.crop.sroa_idx = getelementptr inbounds %struct.stm32_dcmi, ptr %1, i32 0, i32 14, i32 3
  %66 = ptrtoint ptr %r.sroa.29.0.crop.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %47, ptr %r.sroa.29.0.crop.sroa_idx, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dcmi_s_selection.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dcmi_s_selection, %if.then64)) #11
          to label %if.end90 [label %if.then64], !srcloc !363

if.then64:                                        ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.stm32_dcmi, ptr %1, i32 0, i32 1
  %67 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dcmi_s_selection.__UNIQUE_ID_ddebug351, ptr noundef %68, ptr noundef nonnull @.str.74, i32 noundef %46, i32 noundef %47, i32 noundef %53, i32 noundef %51, i32 noundef %13, i32 noundef %15) #11
  br label %if.end90

if.else:                                          ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #13
  %do_crop72 = getelementptr inbounds %struct.stm32_dcmi, ptr %1, i32 0, i32 15
  %69 = ptrtoint ptr %do_crop72 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %do_crop72, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dcmi_s_selection.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dcmi_s_selection, %if.then85)) #11
          to label %if.end90 [label %if.then85], !srcloc !363

if.then85:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %dev86 = getelementptr inbounds %struct.stm32_dcmi, ptr %1, i32 0, i32 1
  %70 = ptrtoint ptr %dev86 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev86, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dcmi_s_selection.__UNIQUE_ID_ddebug352, ptr noundef %71, ptr noundef nonnull @.str.75) #11
  br label %if.end90

if.end90:                                         ; preds = %if.then85, %if.else, %if.then64, %if.then59
  %72 = ptrtoint ptr %r1 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %53, ptr %r1, align 4
  %73 = ptrtoint ptr %r.sroa.13.0.r1.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %51, ptr %r.sroa.13.0.r1.sroa_idx, align 4
  %74 = ptrtoint ptr %r.sroa.22.0.r1.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %46, ptr %r.sroa.22.0.r1.sroa_idx, align 4
  %75 = ptrtoint ptr %r.sroa.29.0.r1.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %47, ptr %r.sroa.29.0.r1.sroa_idx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end90, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end90 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dcmi_g_parm(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call ptr @video_devdata(ptr noundef %file) #11
  %source = getelementptr inbounds %struct.stm32_dcmi, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %source to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %source, align 4
  %call2 = tail call i32 @v4l2_g_parm_cap(ptr noundef %call1, ptr noundef %3, ptr noundef %p) #11
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dcmi_s_parm(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call ptr @video_devdata(ptr noundef %file) #11
  %source = getelementptr inbounds %struct.stm32_dcmi, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %source to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %source, align 4
  %call2 = tail call i32 @v4l2_s_parm_cap(ptr noundef %call1, ptr noundef %3, ptr noundef %p) #11
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_log_status(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dcmi_enum_framesizes(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %fsize) #2 align 64 {
entry:
  %fse = alloca %struct.v4l2_subdev_frame_size_enum, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %fse) #11
  %2 = getelementptr inbounds i8, ptr %fse, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 60)
  %4 = ptrtoint ptr %fsize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fsize, align 4
  %6 = ptrtoint ptr %fse to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %fse, align 4
  %which = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 7
  %7 = ptrtoint ptr %which to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %which, align 4
  %pixel_format = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 1
  %8 = ptrtoint ptr %pixel_format to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pixel_format, align 4
  %num_of_sd_formats.i = getelementptr inbounds %struct.stm32_dcmi, ptr %1, i32 0, i32 17
  %10 = ptrtoint ptr %num_of_sd_formats.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_of_sd_formats.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp9.not.i = icmp eq i32 %11, 0
  br i1 %cmp9.not.i, label %entry.cleanup_crit_edge, label %for.body.lr.ph.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %entry
  %sd_formats.i = getelementptr inbounds %struct.stm32_dcmi, ptr %1, i32 0, i32 16
  %12 = ptrtoint ptr %sd_formats.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sd_formats.i, align 8
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.010.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %11
  br i1 %exitcond.not.i, label %for.cond.i.cleanup_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.010.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr ptr, ptr %13, i32 %i.010.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %9)
  %cmp2.i = icmp eq i32 %17, %9
  br i1 %cmp2.i, label %find_format_by_fourcc.exit, label %for.cond.i

find_format_by_fourcc.exit:                       ; preds = %for.body.i
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %find_format_by_fourcc.exit.cleanup_crit_edge, label %if.end

find_format_by_fourcc.exit.cleanup_crit_edge:     ; preds = %find_format_by_fourcc.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %find_format_by_fourcc.exit
  %mbus_code = getelementptr inbounds %struct.dcmi_format, ptr %15, i32 0, i32 1
  %18 = ptrtoint ptr %mbus_code to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mbus_code, align 4
  %code = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 2
  %20 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %code, align 4
  %source = getelementptr inbounds %struct.stm32_dcmi, ptr %1, i32 0, i32 12
  %21 = ptrtoint ptr %source to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %source, align 4
  %tobool3.not = icmp eq ptr %22, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.else

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else:                                          ; preds = %if.end
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %22, i32 0, i32 6
  %23 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %24, i32 0, i32 7
  %25 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pad, align 4
  %tobool5.not = icmp eq ptr %26, null
  br i1 %tobool5.not, label %if.else.cleanup_crit_edge, label %land.lhs.true

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true:                                    ; preds = %if.else
  %enum_frame_size = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %enum_frame_size to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %enum_frame_size, align 4
  %tobool8.not = icmp eq ptr %28, null
  br i1 %tobool8.not, label %land.lhs.true.cleanup_crit_edge, label %if.else10

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else10:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool11.not = icmp eq ptr %29, null
  br i1 %tobool11.not, label %if.else10.if.else18_crit_edge, label %land.lhs.true12

if.else10.if.else18_crit_edge:                    ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else18

land.lhs.true12:                                  ; preds = %if.else10
  %enum_frame_size13 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %enum_frame_size13 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %enum_frame_size13, align 4
  %tobool14.not = icmp eq ptr %31, null
  br i1 %tobool14.not, label %land.lhs.true12.if.else18_crit_edge, label %land.lhs.true12.if.end25_crit_edge

land.lhs.true12.if.end25_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

land.lhs.true12.if.else18_crit_edge:              ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else18

if.else18:                                        ; preds = %land.lhs.true12.if.else18_crit_edge, %if.else10.if.else18_crit_edge
  br label %if.end25

if.end25:                                         ; preds = %if.else18, %land.lhs.true12.if.end25_crit_edge
  %.sink = phi ptr [ %28, %if.else18 ], [ %31, %land.lhs.true12.if.end25_crit_edge ]
  %call22 = call i32 %.sink(ptr noundef nonnull %22, ptr noundef null, ptr noundef nonnull %fse) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool26.not = icmp eq i32 %call22, 0
  br i1 %tobool26.not, label %if.end28, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end28:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  %type = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 2
  %32 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %type, align 4
  %max_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 4
  %33 = ptrtoint ptr %max_width to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %max_width, align 4
  %35 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %34, ptr %35, align 4
  %max_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 6
  %37 = ptrtoint ptr %max_height to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %max_height, align 4
  %height = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 1
  %39 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %height, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.end25.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end.cleanup_crit_edge, %find_format_by_fourcc.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end28 ], [ -22, %find_format_by_fourcc.exit.cleanup_crit_edge ], [ %call22, %if.end25.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -515, %if.else.cleanup_crit_edge ], [ -515, %land.lhs.true.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -22, %for.cond.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %fse) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dcmi_enum_frameintervals(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %fival) #2 align 64 {
entry:
  %fie = alloca %struct.v4l2_subdev_frame_interval_enum, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %fie) #11
  %2 = getelementptr inbounds i8, ptr %fie, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 60)
  %4 = ptrtoint ptr %fival to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fival, align 4
  %6 = ptrtoint ptr %fie to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %fie, align 4
  %width = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 3
  %width2 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fival, i32 0, i32 2
  %7 = ptrtoint ptr %width2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %width2, align 4
  %9 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %width, align 4
  %height = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 4
  %height3 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fival, i32 0, i32 3
  %10 = ptrtoint ptr %height3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %height3, align 4
  %12 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %height, align 4
  %which = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 6
  %13 = ptrtoint ptr %which to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %which, align 4
  %pixel_format = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fival, i32 0, i32 1
  %14 = ptrtoint ptr %pixel_format to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pixel_format, align 4
  %num_of_sd_formats.i = getelementptr inbounds %struct.stm32_dcmi, ptr %1, i32 0, i32 17
  %16 = ptrtoint ptr %num_of_sd_formats.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_of_sd_formats.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp9.not.i = icmp eq i32 %17, 0
  br i1 %cmp9.not.i, label %entry.cleanup_crit_edge, label %for.body.lr.ph.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %entry
  %sd_formats.i = getelementptr inbounds %struct.stm32_dcmi, ptr %1, i32 0, i32 16
  %18 = ptrtoint ptr %sd_formats.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sd_formats.i, align 8
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.010.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %17
  br i1 %exitcond.not.i, label %for.cond.i.cleanup_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.010.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr ptr, ptr %19, i32 %i.010.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %15)
  %cmp2.i = icmp eq i32 %23, %15
  br i1 %cmp2.i, label %find_format_by_fourcc.exit, label %for.cond.i

find_format_by_fourcc.exit:                       ; preds = %for.body.i
  %tobool.not = icmp eq ptr %21, null
  br i1 %tobool.not, label %find_format_by_fourcc.exit.cleanup_crit_edge, label %if.end

find_format_by_fourcc.exit.cleanup_crit_edge:     ; preds = %find_format_by_fourcc.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %find_format_by_fourcc.exit
  %mbus_code = getelementptr inbounds %struct.dcmi_format, ptr %21, i32 0, i32 1
  %24 = ptrtoint ptr %mbus_code to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mbus_code, align 4
  %code = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 2
  %26 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %code, align 4
  %source = getelementptr inbounds %struct.stm32_dcmi, ptr %1, i32 0, i32 12
  %27 = ptrtoint ptr %source to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %source, align 4
  %tobool5.not = icmp eq ptr %28, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.else

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else:                                          ; preds = %if.end
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %28, i32 0, i32 6
  %29 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ops, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %30, i32 0, i32 7
  %31 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pad, align 4
  %tobool7.not = icmp eq ptr %32, null
  br i1 %tobool7.not, label %if.else.cleanup_crit_edge, label %land.lhs.true

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true:                                    ; preds = %if.else
  %enum_frame_interval = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %enum_frame_interval to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %enum_frame_interval, align 4
  %tobool10.not = icmp eq ptr %34, null
  br i1 %tobool10.not, label %land.lhs.true.cleanup_crit_edge, label %if.else12

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else12:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool13.not = icmp eq ptr %35, null
  br i1 %tobool13.not, label %if.else12.if.else20_crit_edge, label %land.lhs.true14

if.else12.if.else20_crit_edge:                    ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else20

land.lhs.true14:                                  ; preds = %if.else12
  %enum_frame_interval15 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %enum_frame_interval15 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %enum_frame_interval15, align 4
  %tobool16.not = icmp eq ptr %37, null
  br i1 %tobool16.not, label %land.lhs.true14.if.else20_crit_edge, label %land.lhs.true14.if.end27_crit_edge

land.lhs.true14.if.end27_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

land.lhs.true14.if.else20_crit_edge:              ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else20

if.else20:                                        ; preds = %land.lhs.true14.if.else20_crit_edge, %if.else12.if.else20_crit_edge
  br label %if.end27

if.end27:                                         ; preds = %if.else20, %land.lhs.true14.if.end27_crit_edge
  %.sink = phi ptr [ %34, %if.else20 ], [ %37, %land.lhs.true14.if.end27_crit_edge ]
  %call24 = call i32 %.sink(ptr noundef nonnull %28, ptr noundef null, ptr noundef nonnull %fie) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool28.not = icmp eq i32 %call24, 0
  br i1 %tobool28.not, label %if.end30, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end30:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  %type = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fival, i32 0, i32 4
  %38 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %type, align 4
  %39 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fival, i32 0, i32 5
  %interval = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 5
  %40 = ptrtoint ptr %interval to i32
  call void @__asan_loadN_noabort(i32 %40, i32 8)
  %41 = load i64, ptr %interval, align 4
  %42 = ptrtoint ptr %39 to i32
  call void @__asan_storeN_noabort(i32 %42, i32 8)
  store i64 %41, ptr %39, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.end27.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end.cleanup_crit_edge, %find_format_by_fourcc.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end30 ], [ -22, %find_format_by_fourcc.exit.cleanup_crit_edge ], [ %call24, %if.end27.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -515, %if.else.cleanup_crit_edge ], [ -515, %land.lhs.true.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -22, %for.cond.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %fie) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subscribe_event(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_g_parm_cap(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_s_parm_cap(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dcmi_queue_setup(ptr nocapture noundef readonly %vq, ptr nocapture noundef readonly %nbuffers, ptr nocapture noundef %nplanes, ptr nocapture noundef %sizes, ptr nocapture noundef readnone %alloc_devs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %sizeimage = getelementptr inbounds %struct.stm32_dcmi, ptr %1, i32 0, i32 13, i32 1, i32 0, i32 5
  %2 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sizeimage, align 4
  %4 = ptrtoint ptr %nplanes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nplanes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %sizes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sizes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %3)
  %cmp = icmp ult i32 %7, %3
  %cond = select i1 %cmp, i32 -22, i32 0
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %nplanes to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %nplanes, align 4
  %9 = ptrtoint ptr %sizes to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %3, ptr %sizes, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dcmi_queue_setup.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dcmi_queue_setup, %if.then7)) #11
          to label %cleanup [label %if.then7], !srcloc !363

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.stm32_dcmi, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %12 = ptrtoint ptr %nbuffers to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nbuffers, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dcmi_queue_setup.__UNIQUE_ID_ddebug316, ptr noundef %11, ptr noundef nonnull @.str.77, i32 noundef %13, i32 noundef %3) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end, %if.then
  %retval.0 = phi i32 [ %cond, %if.then ], [ 0, %if.then7 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #1

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dcmi_buf_init(ptr noundef %vb) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %list = getelementptr inbounds %struct.dcmi_buf, ptr %vb, i32 0, i32 4
  %0 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.dcmi_buf, ptr %vb, i32 0, i32 4, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %list, ptr %prev.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dcmi_buf_prepare(ptr noundef %vb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %sizeimage = getelementptr inbounds %struct.stm32_dcmi, ptr %3, i32 0, i32 13, i32 1, i32 0, i32 5
  %4 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sizeimage, align 4
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %6 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not.i = icmp eq i32 %7, 0
  br i1 %cmp.not.i, label %vb2_plane_size.exit, label %vb2_plane_size.exit.thread

vb2_plane_size.exit:                              ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %vb2_plane_size.exit.vb2_set_plane_payload.exit_crit_edge, label %vb2_plane_size.exit.vb2_plane_size.exit59_crit_edge

vb2_plane_size.exit.vb2_plane_size.exit59_crit_edge: ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %vb2_plane_size.exit59

vb2_plane_size.exit.vb2_set_plane_payload.exit_crit_edge: ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %vb2_set_plane_payload.exit

vb2_plane_size.exit.thread:                       ; preds = %entry
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 4
  %8 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %5)
  %cmp84 = icmp ult i32 %9, %5
  br i1 %cmp84, label %vb2_plane_size.exit.thread.vb2_plane_size.exit59_crit_edge, label %if.end42.i

vb2_plane_size.exit.thread.vb2_plane_size.exit59_crit_edge: ; preds = %vb2_plane_size.exit.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %vb2_plane_size.exit59

vb2_plane_size.exit59:                            ; preds = %vb2_plane_size.exit.thread.vb2_plane_size.exit59_crit_edge, %vb2_plane_size.exit.vb2_plane_size.exit59_crit_edge
  %retval.0.i58 = phi i32 [ 0, %vb2_plane_size.exit.vb2_plane_size.exit59_crit_edge ], [ %9, %vb2_plane_size.exit.thread.vb2_plane_size.exit59_crit_edge ]
  %.in = getelementptr inbounds %struct.stm32_dcmi, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %.in to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %.in, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.79, i32 noundef %retval.0.i58, i32 noundef %5) #14
  br label %cleanup

if.end42.i:                                       ; preds = %vb2_plane_size.exit.thread
  call void @__sanitizer_cov_trace_pc() #13
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 3
  %12 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %5, ptr %bytesused.i, align 4
  br label %vb2_set_plane_payload.exit

vb2_set_plane_payload.exit:                       ; preds = %if.end42.i, %vb2_plane_size.exit.vb2_set_plane_payload.exit_crit_edge
  %prepared = getelementptr inbounds %struct.dcmi_buf, ptr %vb, i32 0, i32 1
  %13 = ptrtoint ptr %prepared to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %prepared, align 8, !range !365
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not = icmp eq i8 %14, 0
  br i1 %tobool.not, label %if.then7, label %vb2_set_plane_payload.exit.cleanup_crit_edge

vb2_set_plane_payload.exit.cleanup_crit_edge:     ; preds = %vb2_set_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then7:                                         ; preds = %vb2_set_plane_payload.exit
  %call.i = tail call ptr @vb2_plane_cookie(ptr noundef %vb, i32 noundef 0) #11
  %15 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %call.i, align 4
  %paddr = getelementptr inbounds %struct.dcmi_buf, ptr %vb, i32 0, i32 2
  %17 = ptrtoint ptr %paddr to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %paddr, align 4
  %18 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.not.i65 = icmp eq i32 %19, 0
  br i1 %cmp.not.i65, label %vb2_plane_size.exit69.thread, label %if.then.i74

vb2_plane_size.exit69.thread:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  %size1387 = getelementptr inbounds %struct.dcmi_buf, ptr %vb, i32 0, i32 3
  %20 = ptrtoint ptr %size1387 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %size1387, align 8
  %21 = ptrtoint ptr %prepared to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %prepared, align 8
  br label %vb2_set_plane_payload.exit82

if.then.i74:                                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  %length.i66 = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 4
  %22 = ptrtoint ptr %length.i66 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %length.i66, align 8
  %size13 = getelementptr inbounds %struct.dcmi_buf, ptr %vb, i32 0, i32 3
  %24 = ptrtoint ptr %size13 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %size13, align 8
  %25 = ptrtoint ptr %prepared to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %prepared, align 8
  %bytesused.i80 = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 3
  %26 = ptrtoint ptr %bytesused.i80 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %23, ptr %bytesused.i80, align 4
  br label %vb2_set_plane_payload.exit82

vb2_set_plane_payload.exit82:                     ; preds = %if.then.i74, %vb2_plane_size.exit69.thread
  %size1388 = phi ptr [ %size1387, %vb2_plane_size.exit69.thread ], [ %size13, %if.then.i74 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dcmi_buf_prepare.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dcmi_buf_prepare, %if.then24)) #11
          to label %cleanup [label %if.then24], !srcloc !363

if.then24:                                        ; preds = %vb2_set_plane_payload.exit82
  call void @__sanitizer_cov_trace_pc() #13
  %dev25 = getelementptr inbounds %struct.stm32_dcmi, ptr %3, i32 0, i32 1
  %27 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev25, align 4
  %index = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 1
  %29 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %index, align 4
  %31 = ptrtoint ptr %size1388 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %size1388, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dcmi_buf_prepare.__UNIQUE_ID_ddebug317, ptr noundef %28, ptr noundef nonnull @.str.80, i32 noundef %30, ptr noundef %paddr, i32 noundef %32) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then24, %vb2_set_plane_payload.exit82, %vb2_set_plane_payload.exit.cleanup_crit_edge, %vb2_plane_size.exit59
  %retval.0 = phi i32 [ -22, %vb2_plane_size.exit59 ], [ 0, %if.then24 ], [ 0, %vb2_set_plane_payload.exit.cleanup_crit_edge ], [ 0, %vb2_set_plane_payload.exit82 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dcmi_start_streaming(ptr nocapture noundef readonly %vq, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %dev = getelementptr inbounds %struct.stm32_dcmi, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end

if.then.i:                                        ; preds = %entry
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !366
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #11
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #11, !srcloc !367
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.do.end_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.do.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !368
  br label %do.end

do.end:                                           ; preds = %do.end11.i.i.i.i.i, %if.then.i.do.end_crit_edge
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.83, i32 noundef %call.i) #14
  br label %err_unlocked

if.end:                                           ; preds = %entry
  %vdev = getelementptr inbounds %struct.stm32_dcmi, ptr %1, i32 0, i32 10
  %7 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vdev, align 8
  %pipeline = getelementptr inbounds %struct.stm32_dcmi, ptr %1, i32 0, i32 39
  %call3 = tail call i32 @media_pipeline_start(ptr noundef %8, ptr noundef %pipeline) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %do.end8, label %if.end10

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.83, i32 noundef %call3) #14
  br label %err_pm_put

if.end10:                                         ; preds = %if.end
  %call.i206 = tail call fastcc i32 @dcmi_pipeline_s_stream(ptr noundef %1, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i206)
  %tobool.not = icmp eq i32 %call.i206, 0
  br i1 %tobool.not, label %if.end13, label %if.end10.err_media_pipeline_stop_crit_edge

if.end10.err_media_pipeline_stop_crit_edge:       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_media_pipeline_stop

if.end13:                                         ; preds = %if.end10
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #11
  %bus = getelementptr inbounds %struct.stm32_dcmi, ptr %1, i32 0, i32 25
  %bus_width = getelementptr inbounds %struct.stm32_dcmi, ptr %1, i32 0, i32 25, i32 1
  %11 = ptrtoint ptr %bus_width to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bus_width, align 4
  %switch.tableidx = add i8 %12, -10
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %switch.tableidx)
  %13 = icmp ult i8 %switch.tableidx, 5
  br i1 %13, label %switch.lookup, label %if.end13.sw.epilog_crit_edge

if.end13.sw.epilog_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  %14 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.dcmi_start_streaming, i32 0, i32 %14
  %15 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %15)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %if.end13.sw.epilog_crit_edge
  %val.0 = phi i32 [ 0, %if.end13.sw.epilog_crit_edge ], [ %switch.load, %switch.lookup ]
  %16 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bus, align 8
  %and = shl i32 %17, 3
  %18 = and i32 %and, 128
  %19 = or i32 %18, %val.0
  %and25 = shl i32 %17, 4
  %20 = and i32 %and25, 64
  %21 = or i32 %19, %20
  %and32 = lshr i32 %17, 1
  %22 = and i32 %and32, 32
  %23 = or i32 %21, %22
  %bus_type = getelementptr inbounds %struct.stm32_dcmi, ptr %1, i32 0, i32 26
  %24 = ptrtoint ptr %bus_type to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bus_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %cmp37 = icmp eq i32 %25, 2
  br i1 %cmp37, label %if.then39, label %sw.epilog.if.end42_crit_edge

sw.epilog.if.end42_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42

if.then39:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %or40 = or i32 %23, 16
  %regs = getelementptr inbounds %struct.stm32_dcmi, ptr %1, i32 0, i32 2
  %26 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs, align 8
  %add.ptr.i = getelementptr i8, ptr %27, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -1) #11, !srcloc !369
  %28 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs, align 8
  %add.ptr.i207 = getelementptr i8, ptr %29, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i207, i32 -8348161) #11, !srcloc !369
  br label %if.end42

if.end42:                                         ; preds = %if.then39, %sw.epilog.if.end42_crit_edge
  %val.4 = phi i32 [ %or40, %if.then39 ], [ %23, %sw.epilog.if.end42_crit_edge ]
  %regs43 = getelementptr inbounds %struct.stm32_dcmi, ptr %1, i32 0, i32 2
  %30 = ptrtoint ptr %regs43 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs43, align 8
  %32 = tail call i32 @llvm.bswap.i32(i32 %val.4) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %32) #11, !srcloc !369
  %do_crop = getelementptr inbounds %struct.stm32_dcmi, ptr %1, i32 0, i32 15
  %33 = ptrtoint ptr %do_crop to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %do_crop, align 4, !range !365
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool44.not = icmp eq i8 %34, 0
  br i1 %tobool44.not, label %if.end42.if.end46_crit_edge, label %if.then45

if.end42.if.end46_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

if.then45:                                        ; preds = %if.end42
  %crop.i = getelementptr inbounds %struct.stm32_dcmi, ptr %1, i32 0, i32 14
  %height.i = getelementptr inbounds %struct.stm32_dcmi, ptr %1, i32 0, i32 14, i32 3
  %35 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %height.i, align 4
  %sub.i = shl i32 %36, 16
  %shl.i = add i32 %sub.i, -65536
  %width.i = getelementptr inbounds %struct.stm32_dcmi, ptr %1, i32 0, i32 14, i32 2
  %37 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %width.i, align 4
  %shl2.i = shl i32 %38, 1
  %sub3.i = add i32 %shl2.i, -1
  %or.i = or i32 %sub3.i, %shl.i
  %39 = ptrtoint ptr %regs43 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs43, align 8
  %41 = tail call i32 @llvm.bswap.i32(i32 %or.i) #11
  %add.ptr.i.i = getelementptr i8, ptr %40, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %41) #11, !srcloc !369
  %top.i = getelementptr inbounds %struct.stm32_dcmi, ptr %1, i32 0, i32 14, i32 1
  %42 = ptrtoint ptr %top.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %top.i, align 4
  %shl5.i = shl i32 %43, 16
  %44 = ptrtoint ptr %crop.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %crop.i, align 4
  %shl7.i = shl i32 %45, 1
  %or8.i = or i32 %shl7.i, %shl5.i
  %46 = ptrtoint ptr %regs43 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regs43, align 8
  %48 = tail call i32 @llvm.bswap.i32(i32 %or8.i) #11
  %add.ptr.i32.i = getelementptr i8, ptr %47, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32.i, i32 %48) #11, !srcloc !369
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dcmi_set_crop.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dcmi_start_streaming, %if.then.i208)) #11
          to label %dcmi_set_crop.exit [label %if.then.i208], !srcloc !363

if.then.i208:                                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #13
  %49 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev, align 4
  %51 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %width.i, align 4
  %53 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %height.i, align 4
  %55 = ptrtoint ptr %crop.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %crop.i, align 4
  %57 = ptrtoint ptr %top.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %top.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dcmi_set_crop.__UNIQUE_ID_ddebug315, ptr noundef %50, ptr noundef nonnull @.str.100, i32 noundef %52, i32 noundef %54, i32 noundef %56, i32 noundef %58) #11
  br label %dcmi_set_crop.exit

dcmi_set_crop.exit:                               ; preds = %if.then.i208, %if.then45
  %59 = ptrtoint ptr %regs43 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regs43, align 8
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %60) #11, !srcloc !370
  %62 = or i32 %61, 67108864
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %62) #11, !srcloc !369
  br label %if.end46

if.end46:                                         ; preds = %dcmi_set_crop.exit, %if.end42.if.end46_crit_edge
  %sd_format = getelementptr inbounds %struct.stm32_dcmi, ptr %1, i32 0, i32 18
  %63 = ptrtoint ptr %sd_format to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %sd_format, align 8
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1195724874, i32 %66)
  %cmp47 = icmp eq i32 %66, 1195724874
  br i1 %cmp47, label %if.then49, label %if.end46.if.end51_crit_edge

if.end46.if.end51_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end51

if.then49:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  %67 = ptrtoint ptr %regs43 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regs43, align 8
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %68) #11, !srcloc !370
  %70 = or i32 %69, 33554432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 %70) #11, !srcloc !369
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %if.end46.if.end51_crit_edge
  %71 = ptrtoint ptr %regs43 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %regs43, align 8
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %72) #11, !srcloc !370
  %74 = or i32 %73, 4194304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 %74) #11, !srcloc !369
  %sequence = getelementptr inbounds %struct.stm32_dcmi, ptr %1, i32 0, i32 5
  %75 = ptrtoint ptr %sequence to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %sequence, align 4
  %errors_count = getelementptr inbounds %struct.stm32_dcmi, ptr %1, i32 0, i32 33
  %76 = ptrtoint ptr %errors_count to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %errors_count, align 8
  %overrun_count = getelementptr inbounds %struct.stm32_dcmi, ptr %1, i32 0, i32 34
  %77 = ptrtoint ptr %overrun_count to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %overrun_count, align 4
  %buffers_count = getelementptr inbounds %struct.stm32_dcmi, ptr %1, i32 0, i32 35
  %78 = ptrtoint ptr %buffers_count to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %buffers_count, align 8
  %buffers = getelementptr inbounds %struct.stm32_dcmi, ptr %1, i32 0, i32 6
  %79 = ptrtoint ptr %buffers to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile ptr, ptr %buffers, align 4
  %cmp.i211.not = icmp eq ptr %80, %buffers
  br i1 %cmp.i211.not, label %do.body56, label %if.end67

do.body56:                                        ; preds = %if.end51
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dcmi_start_streaming.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dcmi_start_streaming, %if.then61)) #11
          to label %do.end65 [label %if.then61], !srcloc !363

if.then61:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #13
  %81 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dcmi_start_streaming.__UNIQUE_ID_ddebug322, ptr noundef %82, ptr noundef nonnull @.str.87) #11
  br label %do.end65

do.end65:                                         ; preds = %if.then61, %do.body56
  %state = getelementptr inbounds %struct.stm32_dcmi, ptr %1, i32 0, i32 29
  %83 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 1, ptr %state, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #11
  br label %cleanup

if.end67:                                         ; preds = %if.end51
  %add.ptr = getelementptr i8, ptr %80, i32 -748
  %active = getelementptr inbounds %struct.stm32_dcmi, ptr %1, i32 0, i32 7
  %84 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %add.ptr, ptr %active, align 8
  %state70 = getelementptr inbounds %struct.stm32_dcmi, ptr %1, i32 0, i32 29
  %85 = ptrtoint ptr %state70 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 2, ptr %state70, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dcmi_start_streaming.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dcmi_start_streaming, %if.then83)) #11
          to label %do.end87 [label %if.then83], !srcloc !363

if.then83:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #13
  %86 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dcmi_start_streaming.__UNIQUE_ID_ddebug323, ptr noundef %87, ptr noundef nonnull @.str.88) #11
  br label %do.end87

do.end87:                                         ; preds = %if.then83, %if.end67
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #11
  %call89 = tail call fastcc i32 @dcmi_start_capture(ptr noundef %1, ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.end96, label %do.end94

do.end94:                                         ; preds = %do.end87
  call void @__sanitizer_cov_trace_pc() #13
  %88 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %89, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.83) #14
  %call.i212 = tail call fastcc i32 @dcmi_pipeline_s_stream(ptr noundef %1, i32 noundef 0) #11
  br label %err_media_pipeline_stop

if.end96:                                         ; preds = %do.end87
  %90 = ptrtoint ptr %sd_format to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %sd_format, align 8
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %91, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1195724874, i32 %93)
  %cmp99 = icmp eq i32 %93, 1195724874
  %94 = ptrtoint ptr %regs43 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %regs43, align 8
  %add.ptr.i.i213 = getelementptr i8, ptr %95, i32 12
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i213) #11
  br i1 %cmp99, label %if.then101, label %if.else

if.then101:                                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #13
  %97 = or i32 %96, 117440512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i213, i32 %97) #11, !srcloc !369
  br label %cleanup

if.else:                                          ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #13
  %98 = or i32 %96, 100663296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i213, i32 %98) #11, !srcloc !369
  br label %cleanup

err_media_pipeline_stop:                          ; preds = %do.end94, %if.end10.err_media_pipeline_stop_crit_edge
  %ret.0 = phi i32 [ %call.i206, %if.end10.err_media_pipeline_stop_crit_edge ], [ %call89, %do.end94 ]
  %99 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %vdev, align 8
  tail call void @media_pipeline_stop(ptr noundef %100) #11
  br label %err_pm_put

err_pm_put:                                       ; preds = %err_media_pipeline_stop, %do.end8
  %ret.1 = phi i32 [ %call3, %do.end8 ], [ %ret.0, %err_media_pipeline_stop ]
  %101 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dev, align 4
  %call.i217 = tail call i32 @__pm_runtime_idle(ptr noundef %102, i32 noundef 5) #11
  br label %err_unlocked

err_unlocked:                                     ; preds = %err_pm_put, %do.end
  %ret.2 = phi i32 [ %call.i, %do.end ], [ %ret.1, %err_pm_put ]
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #11
  %buffers111 = getelementptr inbounds %struct.stm32_dcmi, ptr %1, i32 0, i32 6
  %103 = ptrtoint ptr %buffers111 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %buffers111, align 8
  %cmp121.not223 = icmp eq ptr %104, %buffers111
  br i1 %cmp121.not223, label %err_unlocked.for.end_crit_edge, label %err_unlocked.for.body_crit_edge

err_unlocked.for.body_crit_edge:                  ; preds = %err_unlocked
  br label %for.body

err_unlocked.for.end_crit_edge:                   ; preds = %err_unlocked
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %list_del_init.exit.for.body_crit_edge, %err_unlocked.for.body_crit_edge
  %.pn.in224 = phi ptr [ %.pn, %list_del_init.exit.for.body_crit_edge ], [ %104, %err_unlocked.for.body_crit_edge ]
  %buf.0 = getelementptr i8, ptr %.pn.in224, i32 -748
  %105 = ptrtoint ptr %.pn.in224 to i32
  call void @__asan_load4_noabort(i32 %105)
  %.pn = load ptr, ptr %.pn.in224, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in224) #11
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del_init.exit_crit_edge

for.body.list_del_init.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in224, i32 0, i32 1
  %106 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %prev.i.i, align 4
  %108 = ptrtoint ptr %.pn.in224 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %.pn.in224, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %109, i32 0, i32 1
  %110 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %107, ptr %prev1.i.i.i, align 4
  %111 = ptrtoint ptr %107 to i32
  call void @__asan_store4_noabort(i32 %111)
  store volatile ptr %109, ptr %107, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %for.body.list_del_init.exit_crit_edge
  %112 = ptrtoint ptr %.pn.in224 to i32
  call void @__asan_store4_noabort(i32 %112)
  store volatile ptr %.pn.in224, ptr %.pn.in224, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %.pn.in224, i32 0, i32 1
  %113 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %.pn.in224, ptr %prev.i3.i, align 4
  tail call void @vb2_buffer_done(ptr noundef %buf.0, i32 noundef 3) #11
  %cmp121.not = icmp eq ptr %.pn, %buffers111
  br i1 %cmp121.not, label %list_del_init.exit.for.end_crit_edge, label %list_del_init.exit.for.body_crit_edge

list_del_init.exit.for.body_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

list_del_init.exit.for.end_crit_edge:             ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %list_del_init.exit.for.end_crit_edge, %err_unlocked.for.end_crit_edge
  %active131 = getelementptr inbounds %struct.stm32_dcmi, ptr %1, i32 0, i32 7
  %114 = ptrtoint ptr %active131 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr null, ptr %active131, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #11
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.else, %if.then101, %do.end65
  %retval.0 = phi i32 [ %ret.2, %for.end ], [ 0, %do.end65 ], [ 0, %if.else ], [ 0, %if.then101 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dcmi_stop_streaming(ptr nocapture noundef readonly %vq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %call.i = tail call fastcc i32 @dcmi_pipeline_s_stream(ptr noundef %1, i32 noundef 0) #11
  %vdev = getelementptr inbounds %struct.stm32_dcmi, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdev, align 8
  tail call void @media_pipeline_stop(ptr noundef %3) #11
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #11
  %regs = getelementptr inbounds %struct.stm32_dcmi, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 8
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 12
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !370
  %7 = and i32 %6, -117440513
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %7) #11, !srcloc !369
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #11, !srcloc !370
  %11 = and i32 %10, -4194305
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %11) #11, !srcloc !369
  %buffers = getelementptr inbounds %struct.stm32_dcmi, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %buffers to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %buffers, align 8
  %cmp.not66 = icmp eq ptr %13, %buffers
  br i1 %cmp.not66, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %list_del_init.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in67 = phi ptr [ %.pn, %list_del_init.exit.for.body_crit_edge ], [ %13, %entry.for.body_crit_edge ]
  %buf.0 = getelementptr i8, ptr %.pn.in67, i32 -748
  %14 = ptrtoint ptr %.pn.in67 to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn = load ptr, ptr %.pn.in67, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in67) #11
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del_init.exit_crit_edge

for.body.list_del_init.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in67, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i, align 4
  %17 = ptrtoint ptr %.pn.in67 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %.pn.in67, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev1.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %16, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %for.body.list_del_init.exit_crit_edge
  %21 = ptrtoint ptr %.pn.in67 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %.pn.in67, ptr %.pn.in67, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %.pn.in67, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %.pn.in67, ptr %prev.i3.i, align 4
  tail call void @vb2_buffer_done(ptr noundef %buf.0, i32 noundef 6) #11
  %cmp.not = icmp eq ptr %.pn, %buffers
  br i1 %cmp.not, label %list_del_init.exit.for.end_crit_edge, label %list_del_init.exit.for.body_crit_edge

list_del_init.exit.for.body_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

list_del_init.exit.for.end_crit_edge:             ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %list_del_init.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %active = getelementptr inbounds %struct.stm32_dcmi, ptr %1, i32 0, i32 7
  %23 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %active, align 8
  %state = getelementptr inbounds %struct.stm32_dcmi, ptr %1, i32 0, i32 29
  %24 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %state, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #11
  %dma_lock = getelementptr inbounds %struct.stm32_dcmi, ptr %1, i32 0, i32 36
  tail call void @mutex_lock_nested(ptr noundef %dma_lock, i32 noundef 0) #11
  %dma_chan = getelementptr inbounds %struct.stm32_dcmi, ptr %1, i32 0, i32 30
  %25 = ptrtoint ptr %dma_chan to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dma_chan, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %device_terminate_all.i.i = getelementptr inbounds %struct.dma_device, ptr %28, i32 0, i32 47
  %29 = ptrtoint ptr %device_terminate_all.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %device_terminate_all.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %30, null
  br i1 %tobool.not.i.i, label %for.end.dmaengine_terminate_sync.exit_crit_edge, label %dmaengine_terminate_async.exit.i

for.end.dmaengine_terminate_sync.exit_crit_edge:  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %dmaengine_terminate_sync.exit

dmaengine_terminate_async.exit.i:                 ; preds = %for.end
  %call.i.i63 = tail call i32 %30(ptr noundef %26) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i63)
  %tobool.not.i = icmp eq i32 %call.i.i63, 0
  br i1 %tobool.not.i, label %if.end.i, label %dmaengine_terminate_async.exit.i.dmaengine_terminate_sync.exit_crit_edge

dmaengine_terminate_async.exit.i.dmaengine_terminate_sync.exit_crit_edge: ; preds = %dmaengine_terminate_async.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dmaengine_terminate_sync.exit

if.end.i:                                         ; preds = %dmaengine_terminate_async.exit.i
  tail call void @__might_sleep(ptr noundef nonnull @.str.130, i32 noundef 1169) #11
  %31 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %26, align 4
  %device_synchronize.i.i = getelementptr inbounds %struct.dma_device, ptr %32, i32 0, i32 48
  %33 = ptrtoint ptr %device_synchronize.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %device_synchronize.i.i, align 4
  %tobool.not.i1.i = icmp eq ptr %34, null
  br i1 %tobool.not.i1.i, label %if.end.i.dmaengine_terminate_sync.exit_crit_edge, label %if.then.i2.i

if.end.i.dmaengine_terminate_sync.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dmaengine_terminate_sync.exit

if.then.i2.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %34(ptr noundef %26) #11
  br label %dmaengine_terminate_sync.exit

dmaengine_terminate_sync.exit:                    ; preds = %if.then.i2.i, %if.end.i.dmaengine_terminate_sync.exit_crit_edge, %dmaengine_terminate_async.exit.i.dmaengine_terminate_sync.exit_crit_edge, %for.end.dmaengine_terminate_sync.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %dma_lock) #11
  %dev = getelementptr inbounds %struct.stm32_dcmi, ptr %1, i32 0, i32 1
  %35 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev, align 4
  %call.i64 = tail call i32 @__pm_runtime_idle(ptr noundef %36, i32 noundef 5) #11
  %errors_count = getelementptr inbounds %struct.stm32_dcmi, ptr %1, i32 0, i32 33
  %37 = ptrtoint ptr %errors_count to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %errors_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not = icmp eq i32 %38, 0
  br i1 %tobool.not, label %dmaengine_terminate_sync.exit.do.body20_crit_edge, label %do.end

dmaengine_terminate_sync.exit.do.body20_crit_edge: ; preds = %dmaengine_terminate_sync.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body20

do.end:                                           ; preds = %dmaengine_terminate_sync.exit
  call void @__sanitizer_cov_trace_pc() #13
  %39 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev, align 4
  %overrun_count = getelementptr inbounds %struct.stm32_dcmi, ptr %1, i32 0, i32 34
  %41 = ptrtoint ptr %overrun_count to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %overrun_count, align 4
  %buffers_count = getelementptr inbounds %struct.stm32_dcmi, ptr %1, i32 0, i32 35
  %43 = ptrtoint ptr %buffers_count to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %buffers_count, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %40, ptr noundef nonnull @.str.126, i32 noundef %38, i32 noundef %42, i32 noundef %44) #14
  br label %do.body20

do.body20:                                        ; preds = %do.end, %dmaengine_terminate_sync.exit.do.body20_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dcmi_stop_streaming.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dcmi_stop_streaming, %if.then27)) #11
          to label %do.end34 [label %if.then27], !srcloc !363

if.then27:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #13
  %45 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev, align 4
  %47 = ptrtoint ptr %errors_count to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %errors_count, align 8
  %overrun_count30 = getelementptr inbounds %struct.stm32_dcmi, ptr %1, i32 0, i32 34
  %49 = ptrtoint ptr %overrun_count30 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %overrun_count30, align 4
  %buffers_count31 = getelementptr inbounds %struct.stm32_dcmi, ptr %1, i32 0, i32 35
  %51 = ptrtoint ptr %buffers_count31 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %buffers_count31, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dcmi_stop_streaming.__UNIQUE_ID_ddebug324, ptr noundef %46, ptr noundef nonnull @.str.129, i32 noundef %48, i32 noundef %50, i32 noundef %52) #11
  br label %do.end34

do.end34:                                         ; preds = %if.then27, %do.body20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dcmi_buf_queue(ptr noundef %vb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %3) #11
  %list = getelementptr inbounds %struct.dcmi_buf, ptr %vb, i32 0, i32 4
  %buffers = getelementptr inbounds %struct.stm32_dcmi, ptr %3, i32 0, i32 6
  %prev.i = getelementptr inbounds %struct.stm32_dcmi, ptr %3, i32 0, i32 6, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %5, ptr noundef %buffers) #11
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %list, ptr %prev.i, align 4
  %7 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %buffers, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.dcmi_buf, ptr %vb, i32 0, i32 4, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev3.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %list, ptr %5, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  %state = getelementptr inbounds %struct.stm32_dcmi, ptr %3, i32 0, i32 29
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp = icmp eq i32 %11, 1
  br i1 %cmp, label %if.then, label %if.end20

if.then:                                          ; preds = %list_add_tail.exit
  %12 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %state, align 8
  %active = getelementptr inbounds %struct.stm32_dcmi, ptr %3, i32 0, i32 7
  %13 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %vb, ptr %active, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dcmi_buf_queue.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dcmi_buf_queue, %if.then9)) #11
          to label %do.end [label %if.then9], !srcloc !363

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.stm32_dcmi, ptr %3, i32 0, i32 1
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %index = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 1
  %16 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %index, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dcmi_buf_queue.__UNIQUE_ID_ddebug318, ptr noundef %15, ptr noundef nonnull @.str.132, i32 noundef %17) #11
  br label %do.end

do.end:                                           ; preds = %if.then9, %if.then
  tail call void @_raw_spin_unlock_irq(ptr noundef %3) #11
  %call12 = tail call fastcc i32 @dcmi_start_capture(ptr noundef %3, ptr noundef %vb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %do.end.cleanup_crit_edge, label %do.end17

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end17:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev18 = getelementptr inbounds %struct.stm32_dcmi, ptr %3, i32 0, i32 1
  %18 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev18, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.133, ptr noundef nonnull @.str.131) #14
  br label %cleanup

if.end20:                                         ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_irq(ptr noundef %3) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %do.end17, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_pipeline_start(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dcmi_start_capture(ptr noundef %dcmi, ptr noundef %buf) unnamed_addr #2 align 64 {
entry:
  %sg.i.i = alloca %struct.scatterlist, align 4
  %config.i = alloca %struct.dma_slave_config, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %buf, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %config.i) #11
  %0 = call ptr @memset(ptr %config.i, i32 0, i32 48)
  %res.i = getelementptr inbounds %struct.stm32_dcmi, ptr %dcmi, i32 0, i32 3
  %1 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %res.i, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  %add.i = add i32 %4, 40
  %src_addr.i = getelementptr inbounds %struct.dma_slave_config, ptr %config.i, i32 0, i32 1
  %5 = ptrtoint ptr %src_addr.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %add.i, ptr %src_addr.i, align 4
  %src_addr_width.i = getelementptr inbounds %struct.dma_slave_config, ptr %config.i, i32 0, i32 3
  %6 = ptrtoint ptr %src_addr_width.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4, ptr %src_addr_width.i, align 4
  %dst_addr_width.i = getelementptr inbounds %struct.dma_slave_config, ptr %config.i, i32 0, i32 4
  %7 = ptrtoint ptr %dst_addr_width.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 4, ptr %dst_addr_width.i, align 4
  %dst_maxburst.i = getelementptr inbounds %struct.dma_slave_config, ptr %config.i, i32 0, i32 6
  %8 = ptrtoint ptr %dst_maxburst.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4, ptr %dst_maxburst.i, align 4
  %dma_chan.i = getelementptr inbounds %struct.stm32_dcmi, ptr %dcmi, i32 0, i32 30
  %9 = ptrtoint ptr %dma_chan.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dma_chan.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %device_config.i.i = getelementptr inbounds %struct.dma_device, ptr %12, i32 0, i32 44
  %13 = ptrtoint ptr %device_config.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %device_config.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i.i, label %if.end.do.end.i_crit_edge, label %dmaengine_slave_config.exit.i

if.end.do.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

dmaengine_slave_config.exit.i:                    ; preds = %if.end
  %call.i.i = call i32 %14(ptr noundef %10, ptr noundef nonnull %config.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %dmaengine_slave_config.exit.i.do.end.i_crit_edge, label %if.end.i

dmaengine_slave_config.exit.i.do.end.i_crit_edge: ; preds = %dmaengine_slave_config.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

do.end.i:                                         ; preds = %dmaengine_slave_config.exit.i.do.end.i_crit_edge, %if.end.do.end.i_crit_edge
  %retval.0.i54.i = phi i32 [ %call.i.i, %dmaengine_slave_config.exit.i.do.end.i_crit_edge ], [ -38, %if.end.do.end.i_crit_edge ]
  %dev.i = getelementptr inbounds %struct.stm32_dcmi, ptr %dcmi, i32 0, i32 1
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.102, i32 noundef %retval.0.i54.i) #14
  br label %if.then2

if.end.i:                                         ; preds = %dmaengine_slave_config.exit.i
  %dma_lock.i = getelementptr inbounds %struct.stm32_dcmi, ptr %dcmi, i32 0, i32 36
  call void @mutex_lock_nested(ptr noundef %dma_lock.i, i32 noundef 0) #11
  %17 = ptrtoint ptr %dma_chan.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dma_chan.i, align 4
  %paddr.i = getelementptr inbounds %struct.dcmi_buf, ptr %buf, i32 0, i32 2
  %19 = ptrtoint ptr %paddr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %paddr.i, align 4
  %size.i = getelementptr inbounds %struct.dcmi_buf, ptr %buf, i32 0, i32 3
  %21 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %size.i, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg.i.i) #11
  %23 = getelementptr inbounds %struct.scatterlist, ptr %sg.i.i, i32 0, i32 3
  %24 = getelementptr inbounds %struct.scatterlist, ptr %sg.i.i, i32 0, i32 4
  %25 = call ptr @memset(ptr %sg.i.i, i32 255, i32 20)
  call void @sg_init_table(ptr noundef nonnull %sg.i.i, i32 noundef 1) #11
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %20, ptr %23, align 4
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %22, ptr %24, align 4
  %tobool.not.i48.i = icmp eq ptr %18, null
  br i1 %tobool.not.i48.i, label %if.end.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge, label %lor.lhs.false.i.i

if.end.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dmaengine_prep_slave_single.exit.thread.i

lor.lhs.false.i.i:                                ; preds = %if.end.i
  %28 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %18, align 4
  %tobool1.not.i.i = icmp eq ptr %29, null
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge, label %lor.lhs.false2.i.i

lor.lhs.false.i.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dmaengine_prep_slave_single.exit.thread.i

lor.lhs.false2.i.i:                               ; preds = %lor.lhs.false.i.i
  %device_prep_slave_sg.i.i = getelementptr inbounds %struct.dma_device, ptr %29, i32 0, i32 39
  %30 = ptrtoint ptr %device_prep_slave_sg.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %device_prep_slave_sg.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %31, null
  br i1 %tobool4.not.i.i, label %lor.lhs.false2.i.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge, label %dmaengine_prep_slave_single.exit.i

lor.lhs.false2.i.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge: ; preds = %lor.lhs.false2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dmaengine_prep_slave_single.exit.thread.i

dmaengine_prep_slave_single.exit.thread.i:        ; preds = %lor.lhs.false2.i.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge, %lor.lhs.false.i.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge, %if.end.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i.i) #11
  br label %do.end6.i

dmaengine_prep_slave_single.exit.i:               ; preds = %lor.lhs.false2.i.i
  %call.i49.i = call ptr %31(ptr noundef nonnull %18, ptr noundef nonnull %sg.i.i, i32 noundef 1, i32 noundef 2, i32 noundef 1, ptr noundef null) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i.i) #11
  %tobool.not.i = icmp eq ptr %call.i49.i, null
  br i1 %tobool.not.i, label %dmaengine_prep_slave_single.exit.i.do.end6.i_crit_edge, label %if.end11.i

dmaengine_prep_slave_single.exit.i.do.end6.i_crit_edge: ; preds = %dmaengine_prep_slave_single.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end6.i

do.end6.i:                                        ; preds = %dmaengine_prep_slave_single.exit.i.do.end6.i_crit_edge, %dmaengine_prep_slave_single.exit.thread.i
  %dev7.i = getelementptr inbounds %struct.stm32_dcmi, ptr %dcmi, i32 0, i32 1
  %32 = ptrtoint ptr %dev7.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev7.i, align 4
  %34 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %size.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.102, ptr noundef %paddr.i, i32 noundef %35) #14
  call void @mutex_unlock(ptr noundef %dma_lock.i) #11
  br label %if.then2

if.end11.i:                                       ; preds = %dmaengine_prep_slave_single.exit.i
  %callback.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i49.i, i32 0, i32 6
  %36 = ptrtoint ptr %callback.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @dcmi_dma_callback, ptr %callback.i, align 4
  %callback_param.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i49.i, i32 0, i32 8
  %37 = ptrtoint ptr %callback_param.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %dcmi, ptr %callback_param.i, align 4
  %tx_submit.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i49.i, i32 0, i32 4
  %38 = ptrtoint ptr %tx_submit.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tx_submit.i.i, align 4
  %call.i51.i = call i32 %39(ptr noundef nonnull %call.i49.i) #11
  %dma_cookie.i = getelementptr inbounds %struct.stm32_dcmi, ptr %dcmi, i32 0, i32 31
  %40 = ptrtoint ptr %dma_cookie.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %call.i51.i, ptr %dma_cookie.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i51.i)
  %tobool15.not.i = icmp sgt i32 %call.i51.i, -1
  br i1 %tobool15.not.i, label %if.end3, label %do.end19.i

do.end19.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev20.i = getelementptr inbounds %struct.stm32_dcmi, ptr %dcmi, i32 0, i32 1
  %41 = ptrtoint ptr %dev20.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev20.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.102) #14
  call void @mutex_unlock(ptr noundef %dma_lock.i) #11
  br label %if.then2

if.then2:                                         ; preds = %do.end19.i, %do.end6.i, %do.end.i
  %retval.0.i.ph = phi i32 [ -22, %do.end6.i ], [ -6, %do.end19.i ], [ %retval.0.i54.i, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %config.i) #11
  %errors_count = getelementptr inbounds %struct.stm32_dcmi, ptr %dcmi, i32 0, i32 33
  %43 = ptrtoint ptr %errors_count to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %errors_count, align 8
  %inc = add i32 %44, 1
  store i32 %inc, ptr %errors_count, align 8
  br label %cleanup

if.end3:                                          ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @mutex_unlock(ptr noundef %dma_lock.i) #11
  %45 = ptrtoint ptr %dma_chan.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dma_chan.i, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 4
  %device_issue_pending.i.i = getelementptr inbounds %struct.dma_device, ptr %48, i32 0, i32 50
  %49 = ptrtoint ptr %device_issue_pending.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %device_issue_pending.i.i, align 4
  call void %50(ptr noundef %46) #11
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %config.i) #11
  %regs = getelementptr inbounds %struct.stm32_dcmi, ptr %dcmi, i32 0, i32 2
  %51 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regs, align 8
  %53 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #11, !srcloc !370
  %54 = or i32 %53, 16777216
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %54) #11, !srcloc !369
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %if.then2 ], [ 0, %if.end3 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_pipeline_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dcmi_pipeline_s_stream(ptr nocapture noundef readonly %dcmi, i32 noundef %state) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vdev = getelementptr inbounds %struct.stm32_dcmi, ptr %dcmi, i32 0, i32 10
  %0 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdev, align 8
  %pads87 = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %pads87 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pads87, align 4
  %flags88 = getelementptr inbounds %struct.media_pad, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %flags88 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags88, align 4
  %and89 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %tobool.not90 = icmp eq i32 %and89, 0
  br i1 %tobool.not90, label %entry.cleanup_crit_edge, label %if.end.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.lr.ph:                                     ; preds = %entry
  %dev47 = getelementptr inbounds %struct.stm32_dcmi, ptr %dcmi, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool50.not = icmp eq i32 %state, 0
  %cond51 = select i1 %tobool50.not, ptr @.str.98, ptr @.str.97
  br label %if.end

if.end:                                           ; preds = %do.end54.if.end_crit_edge, %if.end.lr.ph
  %6 = phi ptr [ %3, %if.end.lr.ph ], [ %25, %do.end54.if.end_crit_edge ]
  %call = tail call ptr @media_entity_remote_pad(ptr noundef %6) #11
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %entity3 = getelementptr inbounds %struct.media_pad, ptr %call, i32 0, i32 1
  %7 = ptrtoint ptr %entity3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %entity3, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %lor.lhs.false.cleanup_crit_edge, label %is_media_entity_v4l2_subdev.exit

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

is_media_entity_v4l2_subdev.exit:                 ; preds = %lor.lhs.false
  %obj_type.i = getelementptr inbounds %struct.media_entity, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %obj_type.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %obj_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp.i = icmp eq i32 %10, 2
  br i1 %cmp.i, label %if.else, label %is_media_entity_v4l2_subdev.exit.cleanup_crit_edge

is_media_entity_v4l2_subdev.exit.cleanup_crit_edge: ; preds = %is_media_entity_v4l2_subdev.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else:                                          ; preds = %is_media_entity_v4l2_subdev.exit
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %8, i32 0, i32 6
  %11 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %video, align 4
  %tobool12.not = icmp eq ptr %14, null
  br i1 %tobool12.not, label %if.else.do.body40_crit_edge, label %land.lhs.true

if.else.do.body40_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body40

land.lhs.true:                                    ; preds = %if.else
  %s_stream = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %14, i32 0, i32 10
  %15 = ptrtoint ptr %s_stream to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %s_stream, align 4
  %tobool15.not = icmp eq ptr %16, null
  br i1 %tobool15.not, label %land.lhs.true.do.body40_crit_edge, label %if.else17

land.lhs.true.do.body40_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body40

if.else17:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool18.not = icmp eq ptr %17, null
  br i1 %tobool18.not, label %if.else17.if.else25_crit_edge, label %land.lhs.true19

if.else17.if.else25_crit_edge:                    ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else25

land.lhs.true19:                                  ; preds = %if.else17
  %s_stream20 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %17, i32 0, i32 10
  %18 = ptrtoint ptr %s_stream20 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %s_stream20, align 4
  %tobool21.not = icmp eq ptr %19, null
  br i1 %tobool21.not, label %land.lhs.true19.if.else25_crit_edge, label %land.lhs.true19.if.end32_crit_edge

land.lhs.true19.if.end32_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

land.lhs.true19.if.else25_crit_edge:              ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else25

if.else25:                                        ; preds = %land.lhs.true19.if.else25_crit_edge, %if.else17.if.else25_crit_edge
  br label %if.end32

if.end32:                                         ; preds = %if.else25, %land.lhs.true19.if.end32_crit_edge
  %.sink = phi ptr [ %16, %if.else25 ], [ %19, %land.lhs.true19.if.end32_crit_edge ]
  %call29 = tail call i32 %.sink(ptr noundef nonnull %8, i32 noundef %state) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call29)
  %cmp = icmp sgt i32 %call29, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -515, i32 %call29)
  %cmp35.not = icmp eq i32 %call29, -515
  %or.cond = or i1 %cmp, %cmp35.not
  br i1 %or.cond, label %if.end32.do.body40_crit_edge, label %do.end

if.end32.do.body40_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body40

do.end:                                           ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %dev47 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev47, align 4
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %8, i32 0, i32 9
  %cond38 = select i1 %tobool50.not, ptr @.str.95, ptr @.str.94
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.93, ptr noundef %name, ptr noundef nonnull %cond38, i32 noundef %call29) #14
  br label %cleanup

do.body40:                                        ; preds = %if.end32.do.body40_crit_edge, %land.lhs.true.do.body40_crit_edge, %if.else.do.body40_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dcmi_pipeline_s_stream.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dcmi_pipeline_s_stream, %if.then46)) #11
          to label %do.end54 [label %if.then46], !srcloc !363

if.then46:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %dev47 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev47, align 4
  %name48 = getelementptr inbounds %struct.v4l2_subdev, ptr %8, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dcmi_pipeline_s_stream.__UNIQUE_ID_ddebug321, ptr noundef %23, ptr noundef nonnull @.str.96, ptr noundef %name48, ptr noundef nonnull %cond51) #11
  br label %do.end54

do.end54:                                         ; preds = %if.then46, %do.body40
  %pads = getelementptr inbounds %struct.media_entity, ptr %8, i32 0, i32 9
  %24 = ptrtoint ptr %pads to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pads, align 4
  %flags = getelementptr inbounds %struct.media_pad, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags, align 4
  %and = and i32 %27, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end54.cleanup_crit_edge, label %do.end54.if.end_crit_edge

do.end54.if.end_crit_edge:                        ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end54.cleanup_crit_edge:                       ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %do.end54.cleanup_crit_edge, %do.end, %is_media_entity_v4l2_subdev.exit.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call29, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %do.end54.cleanup_crit_edge ], [ 0, %is_media_entity_v4l2_subdev.exit.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dcmi_dma_callback(ptr noundef %param) #2 align 64 {
entry:
  %state = alloca %struct.dma_tx_state, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %state) #11
  %active = getelementptr inbounds %struct.stm32_dcmi, ptr %param, i32 0, i32 7
  %0 = call ptr @memset(ptr %state, i32 255, i32 16)
  %1 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %active, align 8
  tail call void @_raw_spin_lock_irq(ptr noundef %param) #11
  %dma_chan = getelementptr inbounds %struct.stm32_dcmi, ptr %param, i32 0, i32 30
  %3 = ptrtoint ptr %dma_chan to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dma_chan, align 4
  %dma_cookie = getelementptr inbounds %struct.stm32_dcmi, ptr %param, i32 0, i32 31
  %5 = ptrtoint ptr %dma_cookie to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dma_cookie, align 8
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 4
  %device_tx_status.i = getelementptr inbounds %struct.dma_device, ptr %8, i32 0, i32 49
  %9 = ptrtoint ptr %device_tx_status.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %device_tx_status.i, align 4
  %call.i = call i32 %10(ptr noundef %4, i32 noundef %6, ptr noundef nonnull %state) #11
  %11 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.180)
  switch i32 %call.i, label %do.end43 [
    i32 1, label %do.body
    i32 2, label %do.end7
    i32 3, label %do.end12
    i32 0, label %do.body15
  ]

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dcmi_dma_callback.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dcmi_dma_callback, %if.then)) #11
          to label %sw.epilog [label %if.then], !srcloc !363

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.stm32_dcmi, ptr %param, i32 0, i32 1
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dcmi_dma_callback.__UNIQUE_ID_ddebug313, ptr noundef %13, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.109) #11
  br label %sw.epilog

do.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev8 = getelementptr inbounds %struct.stm32_dcmi, ptr %param, i32 0, i32 1
  %14 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev8, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.109) #14
  br label %sw.epilog

do.end12:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev13 = getelementptr inbounds %struct.stm32_dcmi, ptr %param, i32 0, i32 1
  %16 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev13, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.109) #14
  call fastcc void @dcmi_buffer_done(ptr noundef %param, ptr noundef %2, i32 noundef 0, i32 noundef -5)
  br label %sw.epilog

do.body15:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dcmi_dma_callback.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dcmi_dma_callback, %if.then27)) #11
          to label %do.end31 [label %if.then27], !srcloc !363

if.then27:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #13
  %dev28 = getelementptr inbounds %struct.stm32_dcmi, ptr %param, i32 0, i32 1
  %18 = ptrtoint ptr %dev28 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev28, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dcmi_dma_callback.__UNIQUE_ID_ddebug314, ptr noundef %19, ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.109) #11
  br label %do.end31

do.end31:                                         ; preds = %if.then27, %do.body15
  %size = getelementptr inbounds %struct.dcmi_buf, ptr %2, i32 0, i32 3
  %20 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %size, align 8
  call fastcc void @dcmi_buffer_done(ptr noundef %param, ptr noundef %2, i32 noundef %21, i32 noundef 0)
  call void @_raw_spin_unlock_irq(ptr noundef %param) #11
  %call33 = call fastcc i32 @dcmi_restart_capture(ptr noundef %param)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %do.end31.cleanup_crit_edge, label %do.end38

do.end31.cleanup_crit_edge:                       ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end38:                                         ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #13
  %dev39 = getelementptr inbounds %struct.stm32_dcmi, ptr %param, i32 0, i32 1
  %22 = ptrtoint ptr %dev39 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev39, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.109) #14
  br label %cleanup

do.end43:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev44 = getelementptr inbounds %struct.stm32_dcmi, ptr %param, i32 0, i32 1
  %24 = ptrtoint ptr %dev44 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev44, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.109) #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end43, %do.end12, %do.end7, %if.then, %do.body
  call void @_raw_spin_unlock_irq(ptr noundef %param) #11
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end38, %do.end31.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %state) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dcmi_buffer_done(ptr nocapture noundef %dcmi, ptr noundef %buf, i32 noundef %bytesused, i32 noundef %err) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %buf, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %list = getelementptr inbounds %struct.dcmi_buf, ptr %buf, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del_init.exit_crit_edge

if.end.list_del_init.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.dcmi_buf, ptr %buf, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end.list_del_init.exit_crit_edge
  %6 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %list, ptr %list, align 4
  %prev.i3.i = getelementptr inbounds %struct.dcmi_buf, ptr %buf, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %list, ptr %prev.i3.i, align 4
  %sequence = getelementptr inbounds %struct.stm32_dcmi, ptr %dcmi, i32 0, i32 5
  %8 = ptrtoint ptr %sequence to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sequence, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %sequence, align 4
  %sequence1 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %buf, i32 0, i32 4
  %10 = ptrtoint ptr %sequence1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %sequence1, align 8
  %field = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %buf, i32 0, i32 2
  %11 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %field, align 4
  %call.i = tail call i64 @ktime_get() #11
  %timestamp = getelementptr inbounds %struct.vb2_buffer, ptr %buf, i32 0, i32 5
  %12 = ptrtoint ptr %timestamp to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %call.i, ptr %timestamp, align 8
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %buf, i32 0, i32 4
  %13 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.not.i = icmp eq i32 %14, 0
  br i1 %cmp.not.i, label %list_del_init.exit.vb2_set_plane_payload.exit_crit_edge, label %if.then.i

list_del_init.exit.vb2_set_plane_payload.exit_crit_edge: ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %vb2_set_plane_payload.exit

if.then.i:                                        ; preds = %list_del_init.exit
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %buf, i32 0, i32 10, i32 0, i32 4
  %15 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %bytesused)
  %cmp1.i = icmp ult i32 %16, %bytesused
  br i1 %cmp1.i, label %land.rhs.i, label %if.then.i.if.end42.i_crit_edge

if.then.i.if.end42.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42.i

land.rhs.i:                                       ; preds = %if.then.i
  %.b1.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.then38.i_crit_edge, label %if.then8.i, !prof !371

land.rhs.i.if.then38.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then38.i

if.then8.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.81, i32 noundef 1163, i32 noundef 9, ptr noundef null) #11
  br label %if.then38.i

if.then38.i:                                      ; preds = %if.then8.i, %land.rhs.i.if.then38.i_crit_edge
  %17 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %length.i, align 8
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then38.i, %if.then.i.if.end42.i_crit_edge
  %size.addr.0.i = phi i32 [ %18, %if.then38.i ], [ %bytesused, %if.then.i.if.end42.i_crit_edge ]
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %buf, i32 0, i32 10, i32 0, i32 3
  %19 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %size.addr.0.i, ptr %bytesused.i, align 4
  br label %vb2_set_plane_payload.exit

vb2_set_plane_payload.exit:                       ; preds = %if.end42.i, %list_del_init.exit.vb2_set_plane_payload.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err)
  %tobool4.not = icmp eq i32 %err, 0
  %cond = select i1 %tobool4.not, i32 5, i32 6
  tail call void @vb2_buffer_done(ptr noundef nonnull %buf, i32 noundef %cond) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dcmi_buffer_done.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dcmi_buffer_done, %if.then9)) #11
          to label %do.end [label %if.then9], !srcloc !363

if.then9:                                         ; preds = %vb2_set_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.stm32_dcmi, ptr %dcmi, i32 0, i32 1
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  %index = getelementptr inbounds %struct.vb2_buffer, ptr %buf, i32 0, i32 1
  %22 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %index, align 4
  %24 = ptrtoint ptr %sequence1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sequence1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dcmi_buffer_done.__UNIQUE_ID_ddebug311, ptr noundef %21, ptr noundef nonnull @.str.123, i32 noundef %23, i32 noundef %25, i32 noundef %bytesused) #11
  br label %do.end

do.end:                                           ; preds = %if.then9, %vb2_set_plane_payload.exit
  %buffers_count = getelementptr inbounds %struct.stm32_dcmi, ptr %dcmi, i32 0, i32 35
  %26 = ptrtoint ptr %buffers_count to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %buffers_count, align 8
  %inc13 = add i32 %27, 1
  store i32 %inc13, ptr %buffers_count, align 8
  %active = getelementptr inbounds %struct.stm32_dcmi, ptr %dcmi, i32 0, i32 7
  %28 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %active, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dcmi_restart_capture(ptr noundef %dcmi) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_irq(ptr noundef %dcmi) #11
  %state = getelementptr inbounds %struct.stm32_dcmi, ptr %dcmi, i32 0, i32 29
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.not = icmp eq i32 %1, 2
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_irq(ptr noundef %dcmi) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %buffers = getelementptr inbounds %struct.stm32_dcmi, ptr %dcmi, i32 0, i32 6
  %2 = ptrtoint ptr %buffers to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %buffers, align 4
  %cmp.i.not = icmp eq ptr %3, %buffers
  br i1 %cmp.i.not, label %do.body, label %if.end11

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dcmi_restart_capture.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dcmi_restart_capture, %if.then7)) #11
          to label %do.end [label %if.then7], !srcloc !363

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.stm32_dcmi, ptr %dcmi, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dcmi_restart_capture.__UNIQUE_ID_ddebug312, ptr noundef %5, ptr noundef nonnull @.str.125) #11
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  %6 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %state, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %dcmi) #11
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr = getelementptr i8, ptr %3, i32 -748
  %active = getelementptr inbounds %struct.stm32_dcmi, ptr %dcmi, i32 0, i32 7
  %7 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %add.ptr, ptr %active, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %dcmi) #11
  %call15 = tail call fastcc i32 @dcmi_start_capture(ptr noundef %dcmi, ptr noundef %add.ptr)
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %do.end, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ 0, %do.end ], [ %call15, %if.end11 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_nf_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__v4l2_async_nf_add_fwnode_remote(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_nf_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dcmi_graph_notify_bound(ptr nocapture noundef readonly %notifier, ptr noundef %subdev, ptr nocapture noundef readnone %asd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dcmi_graph_notify_bound.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dcmi_graph_notify_bound, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !363

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr i8, ptr %notifier, i32 -168
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %subdev, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dcmi_graph_notify_bound.__UNIQUE_ID_ddebug358, ptr noundef %1, ptr noundef nonnull @.str.143, ptr noundef %name) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %fwnode = getelementptr inbounds %struct.v4l2_subdev, ptr %subdev, i32 0, i32 15
  %2 = ptrtoint ptr %fwnode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fwnode, align 4
  %call4 = tail call i32 @media_entity_get_fwnode_pad(ptr noundef %subdev, ptr noundef %3, i32 noundef 2) #11
  %conv = trunc i32 %call4 to i16
  %vdev = getelementptr i8, ptr %notifier, i32 -4
  %4 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vdev, align 8
  %call7 = tail call i32 @media_create_pad_link(ptr noundef %subdev, i16 noundef zeroext %conv, ptr noundef %5, i16 noundef zeroext 0, i32 noundef 3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %do.body16, label %do.end12

do.end12:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev13 = getelementptr i8, ptr %notifier, i32 -168
  %6 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev13, align 4
  %name14 = getelementptr inbounds %struct.v4l2_subdev, ptr %subdev, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.144, ptr noundef %name14) #14
  br label %if.end35

do.body16:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dcmi_graph_notify_bound.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dcmi_graph_notify_bound, %if.then28)) #11
          to label %if.end35 [label %if.then28], !srcloc !363

if.then28:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #13
  %dev29 = getelementptr i8, ptr %notifier, i32 -168
  %8 = ptrtoint ptr %dev29 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev29, align 4
  %name30 = getelementptr inbounds %struct.v4l2_subdev, ptr %subdev, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dcmi_graph_notify_bound.__UNIQUE_ID_ddebug359, ptr noundef %9, ptr noundef nonnull @.str.145, ptr noundef %name30) #11
  br label %if.end35

if.end35:                                         ; preds = %if.then28, %do.body16, %do.end12
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dcmi_graph_notify_complete(ptr noundef %notifier) #2 align 64 {
entry:
  %f.i = alloca %struct.v4l2_format, align 4
  %fmt.i.i = alloca %struct.v4l2_subdev_format, align 4
  %bounds.i = alloca %struct.v4l2_subdev_selection, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %notifier, i32 -212
  %vdev.i = getelementptr i8, ptr %notifier, i32 -4
  br label %while.cond.i

while.cond.i:                                     ; preds = %is_media_entity_v4l2_subdev.exit.i.while.cond.i_crit_edge, %entry
  %entity.0.in.i = phi ptr [ %vdev.i, %entry ], [ %entity3.i, %is_media_entity_v4l2_subdev.exit.i.while.cond.i_crit_edge ]
  %0 = ptrtoint ptr %entity.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %entity.0.i = load ptr, ptr %entity.0.in.i, align 4
  %pads.i = getelementptr inbounds %struct.media_entity, ptr %entity.0.i, i32 0, i32 9
  %1 = ptrtoint ptr %pads.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pads.i, align 4
  %flags.i = getelementptr inbounds %struct.media_pad, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %while.cond.i.dcmi_find_source.exit_crit_edge, label %if.end.i

while.cond.i.dcmi_find_source.exit_crit_edge:     ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dcmi_find_source.exit

if.end.i:                                         ; preds = %while.cond.i
  %call.i = tail call ptr @media_entity_remote_pad(ptr noundef %2) #11
  %tobool2.not.i = icmp eq ptr %call.i, null
  br i1 %tobool2.not.i, label %if.end.i.dcmi_find_source.exit_crit_edge, label %lor.lhs.false.i

if.end.i.dcmi_find_source.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dcmi_find_source.exit

lor.lhs.false.i:                                  ; preds = %if.end.i
  %entity3.i = getelementptr inbounds %struct.media_pad, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %entity3.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %entity3.i, align 4
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.dcmi_find_source.exit_crit_edge, label %is_media_entity_v4l2_subdev.exit.i

lor.lhs.false.i.dcmi_find_source.exit_crit_edge:  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dcmi_find_source.exit

is_media_entity_v4l2_subdev.exit.i:               ; preds = %lor.lhs.false.i
  %obj_type.i.i = getelementptr inbounds %struct.media_entity, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %obj_type.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %obj_type.i.i, align 4
  %cmp.i.i = icmp eq i32 %8, 2
  br i1 %cmp.i.i, label %is_media_entity_v4l2_subdev.exit.i.while.cond.i_crit_edge, label %is_media_entity_v4l2_subdev.exit.i.dcmi_find_source.exit_crit_edge

is_media_entity_v4l2_subdev.exit.i.dcmi_find_source.exit_crit_edge: ; preds = %is_media_entity_v4l2_subdev.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dcmi_find_source.exit

is_media_entity_v4l2_subdev.exit.i.while.cond.i_crit_edge: ; preds = %is_media_entity_v4l2_subdev.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i

dcmi_find_source.exit:                            ; preds = %is_media_entity_v4l2_subdev.exit.i.dcmi_find_source.exit_crit_edge, %lor.lhs.false.i.dcmi_find_source.exit_crit_edge, %if.end.i.dcmi_find_source.exit_crit_edge, %while.cond.i.dcmi_find_source.exit_crit_edge
  %tobool.not = icmp eq ptr %entity.0.i, null
  %source = getelementptr i8, ptr %notifier, i32 48
  %9 = ptrtoint ptr %source to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %entity.0.i, ptr %source, align 4
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %dcmi_find_source.exit
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr i8, ptr %notifier, i32 -168
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.146) #14
  br label %cleanup

if.end:                                           ; preds = %dcmi_find_source.exit
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %entity.0.i, i32 0, i32 8
  %12 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctrl_handler, align 4
  %14 = ptrtoint ptr %vdev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vdev.i, align 8
  %ctrl_handler6 = getelementptr inbounds %struct.video_device, ptr %15, i32 0, i32 9
  %16 = ptrtoint ptr %ctrl_handler6 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %ctrl_handler6, align 4
  %call7 = tail call fastcc i32 @dcmi_formats_init(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end14, label %do.end12

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev13 = getelementptr i8, ptr %notifier, i32 -168
  %17 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev13, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.149) #14
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %call15 = tail call fastcc i32 @dcmi_framesizes_init(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end22, label %do.end20

do.end20:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  %dev21 = getelementptr i8, ptr %notifier, i32 -168
  %19 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev21, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.152) #14
  br label %cleanup

if.end22:                                         ; preds = %if.end14
  %sd_bounds = getelementptr i8, ptr %notifier, i32 304
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %bounds.i) #11
  %21 = getelementptr inbounds i8, ptr %bounds.i, i32 4
  %22 = call ptr @memset(ptr %21, i32 0, i32 60)
  %23 = ptrtoint ptr %bounds.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %bounds.i, align 4
  %24 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %bounds.i, i32 0, i32 2
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 2, ptr %24, align 4
  %26 = ptrtoint ptr %source to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %source, align 4
  %tobool.not.i82 = icmp eq ptr %27, null
  br i1 %tobool.not.i82, label %if.end22.dcmi_get_sensor_bounds.exit.thread94_crit_edge, label %if.else.i

if.end22.dcmi_get_sensor_bounds.exit.thread94_crit_edge: ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %dcmi_get_sensor_bounds.exit.thread94

if.else.i:                                        ; preds = %if.end22
  %ops.i = getelementptr inbounds %struct.v4l2_subdev, ptr %27, i32 0, i32 6
  %28 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ops.i, align 4
  %pad.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %29, i32 0, i32 7
  %30 = ptrtoint ptr %pad.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pad.i, align 4
  %tobool1.not.i = icmp eq ptr %31, null
  br i1 %tobool1.not.i, label %if.else.i.for.cond.preheader.i_crit_edge, label %land.lhs.true.i

if.else.i.for.cond.preheader.i_crit_edge:         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.preheader.i

land.lhs.true.i:                                  ; preds = %if.else.i
  %get_selection.i = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %31, i32 0, i32 6
  %32 = ptrtoint ptr %get_selection.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %get_selection.i, align 4
  %tobool4.not.i = icmp eq ptr %33, null
  br i1 %tobool4.not.i, label %land.lhs.true.i.for.cond.preheader.i_crit_edge, label %if.else6.i

land.lhs.true.i.for.cond.preheader.i_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.preheader.i

if.else6.i:                                       ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool7.not.i = icmp eq ptr %34, null
  br i1 %tobool7.not.i, label %if.else6.i.if.else13.i_crit_edge, label %land.lhs.true8.i

if.else6.i.if.else13.i_crit_edge:                 ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else13.i

land.lhs.true8.i:                                 ; preds = %if.else6.i
  %get_selection9.i = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %34, i32 0, i32 6
  %35 = ptrtoint ptr %get_selection9.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %get_selection9.i, align 4
  %tobool10.not.i = icmp eq ptr %36, null
  br i1 %tobool10.not.i, label %land.lhs.true8.i.if.else13.i_crit_edge, label %land.lhs.true8.i.if.end19.i_crit_edge

land.lhs.true8.i.if.end19.i_crit_edge:            ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19.i

land.lhs.true8.i.if.else13.i_crit_edge:           ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else13.i

if.else13.i:                                      ; preds = %land.lhs.true8.i.if.else13.i_crit_edge, %if.else6.i.if.else13.i_crit_edge
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.else13.i, %land.lhs.true8.i.if.end19.i_crit_edge
  %.sink.i = phi ptr [ %33, %if.else13.i ], [ %36, %land.lhs.true8.i.if.end19.i_crit_edge ]
  %call17.i = call i32 %.sink.i(ptr noundef nonnull %27, ptr noundef null, ptr noundef nonnull %bounds.i) #11
  %37 = zext i32 %call17.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.181)
  switch i32 %call17.i, label %dcmi_get_sensor_bounds.exit [
    i32 0, label %if.then21.i
    i32 -515, label %if.end19.i.for.cond.preheader.i_crit_edge
  ]

if.end19.i.for.cond.preheader.i_crit_edge:        ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end19.i.for.cond.preheader.i_crit_edge, %land.lhs.true.i.for.cond.preheader.i_crit_edge, %if.else.i.for.cond.preheader.i_crit_edge
  %num_of_sd_framesizes.i = getelementptr i8, ptr %notifier, i32 292
  %38 = ptrtoint ptr %num_of_sd_framesizes.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_of_sd_framesizes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp2691.not.i = icmp eq i32 %39, 0
  br i1 %cmp2691.not.i, label %for.cond.preheader.i.if.end36.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.if.end36.i_crit_edge:        ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %sd_framesizes.i = getelementptr i8, ptr %notifier, i32 288
  %40 = ptrtoint ptr %sd_framesizes.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sd_framesizes.i, align 4
  br label %for.body.i

if.then21.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #13
  %r22.i = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %bounds.i, i32 0, i32 4
  %42 = call ptr @memcpy(ptr %sd_bounds, ptr %r22.i, i32 16)
  br label %dcmi_get_sensor_bounds.exit.thread

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.095.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %max_pixsize.094.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %47, %for.body.i.for.body.i_crit_edge ]
  %max_height.093.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %max_height.1.i, %for.body.i.for.body.i_crit_edge ]
  %max_width.092.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %max_width.1.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.dcmi_framesize, ptr %41, i32 %i.095.i
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.i, align 4
  %height.i = getelementptr %struct.dcmi_framesize, ptr %41, i32 %i.095.i, i32 1
  %45 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %height.i, align 4
  %mul.i = mul i32 %46, %44
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %max_pixsize.094.i)
  %cmp27.i = icmp ugt i32 %mul.i, %max_pixsize.094.i
  %max_width.1.i = select i1 %cmp27.i, i32 %44, i32 %max_width.092.i
  %max_height.1.i = select i1 %cmp27.i, i32 %46, i32 %max_height.093.i
  %47 = call i32 @llvm.umax.i32(i32 %mul.i, i32 %max_pixsize.094.i) #11
  %inc.i = add nuw i32 %i.095.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %39
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %phi.cmp.i = icmp eq i32 %47, 0
  br i1 %phi.cmp.i, label %for.end.i.if.end36.i_crit_edge, label %if.then33.i

for.end.i.if.end36.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36.i

if.then33.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %top.i = getelementptr i8, ptr %notifier, i32 308
  %48 = ptrtoint ptr %top.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %top.i, align 4
  %49 = ptrtoint ptr %sd_bounds to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %sd_bounds, align 4
  %width34.i = getelementptr i8, ptr %notifier, i32 312
  %50 = ptrtoint ptr %width34.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %max_width.1.i, ptr %width34.i, align 4
  %height35.i = getelementptr i8, ptr %notifier, i32 316
  %51 = ptrtoint ptr %height35.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %max_height.1.i, ptr %height35.i, align 4
  br label %dcmi_get_sensor_bounds.exit.thread

if.end36.i:                                       ; preds = %for.end.i.if.end36.i_crit_edge, %for.cond.preheader.i.if.end36.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fmt.i.i) #11
  %52 = getelementptr inbounds i8, ptr %fmt.i.i, i32 4
  %53 = call ptr @memset(ptr %52, i32 0, i32 84)
  %54 = ptrtoint ptr %fmt.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 1, ptr %fmt.i.i, align 4
  %55 = ptrtoint ptr %source to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %source, align 4
  %tobool.not.i.i83 = icmp eq ptr %56, null
  br i1 %tobool.not.i.i83, label %if.end36.i.dcmi_get_sensor_format.exit.thread.i_crit_edge, label %if.else.i.i

if.end36.i.dcmi_get_sensor_format.exit.thread.i_crit_edge: ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dcmi_get_sensor_format.exit.thread.i

if.else.i.i:                                      ; preds = %if.end36.i
  %ops.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %56, i32 0, i32 6
  %57 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ops.i.i, align 4
  %pad.i.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %58, i32 0, i32 7
  %59 = ptrtoint ptr %pad.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pad.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %60, null
  br i1 %tobool1.not.i.i, label %if.else.i.i.dcmi_get_sensor_format.exit.thread.i_crit_edge, label %land.lhs.true.i.i

if.else.i.i.dcmi_get_sensor_format.exit.thread.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dcmi_get_sensor_format.exit.thread.i

land.lhs.true.i.i:                                ; preds = %if.else.i.i
  %get_fmt.i.i = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %60, i32 0, i32 4
  %61 = ptrtoint ptr %get_fmt.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %get_fmt.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %62, null
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i.dcmi_get_sensor_format.exit.thread.i_crit_edge, label %if.else6.i.i

land.lhs.true.i.i.dcmi_get_sensor_format.exit.thread.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dcmi_get_sensor_format.exit.thread.i

if.else6.i.i:                                     ; preds = %land.lhs.true.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %63 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool7.not.i.i = icmp eq ptr %63, null
  br i1 %tobool7.not.i.i, label %if.else6.i.i.if.else13.i.i_crit_edge, label %land.lhs.true8.i.i

if.else6.i.i.if.else13.i.i_crit_edge:             ; preds = %if.else6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else13.i.i

land.lhs.true8.i.i:                               ; preds = %if.else6.i.i
  %get_fmt9.i.i = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %63, i32 0, i32 4
  %64 = ptrtoint ptr %get_fmt9.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %get_fmt9.i.i, align 4
  %tobool10.not.i.i = icmp eq ptr %65, null
  br i1 %tobool10.not.i.i, label %land.lhs.true8.i.i.if.else13.i.i_crit_edge, label %land.lhs.true8.i.i.if.end19.i.i_crit_edge

land.lhs.true8.i.i.if.end19.i.i_crit_edge:        ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19.i.i

land.lhs.true8.i.i.if.else13.i.i_crit_edge:       ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else13.i.i

if.else13.i.i:                                    ; preds = %land.lhs.true8.i.i.if.else13.i.i_crit_edge, %if.else6.i.i.if.else13.i.i_crit_edge
  br label %if.end19.i.i

if.end19.i.i:                                     ; preds = %if.else13.i.i, %land.lhs.true8.i.i.if.end19.i.i_crit_edge
  %.sink.i.i = phi ptr [ %62, %if.else13.i.i ], [ %65, %land.lhs.true8.i.i.if.end19.i.i_crit_edge ]
  %call17.i.i = call i32 %.sink.i.i(ptr noundef nonnull %56, ptr noundef null, ptr noundef nonnull %fmt.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i.i)
  %tobool20.not.i.i = icmp eq i32 %call17.i.i, 0
  br i1 %tobool20.not.i.i, label %if.end40.i, label %if.end19.i.i.dcmi_get_sensor_format.exit.thread.i_crit_edge

if.end19.i.i.dcmi_get_sensor_format.exit.thread.i_crit_edge: ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dcmi_get_sensor_format.exit.thread.i

dcmi_get_sensor_format.exit.thread.i:             ; preds = %if.end19.i.i.dcmi_get_sensor_format.exit.thread.i_crit_edge, %land.lhs.true.i.i.dcmi_get_sensor_format.exit.thread.i_crit_edge, %if.else.i.i.dcmi_get_sensor_format.exit.thread.i_crit_edge, %if.end36.i.dcmi_get_sensor_format.exit.thread.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ -19, %if.end36.i.dcmi_get_sensor_format.exit.thread.i_crit_edge ], [ -515, %land.lhs.true.i.i.dcmi_get_sensor_format.exit.thread.i_crit_edge ], [ -515, %if.else.i.i.dcmi_get_sensor_format.exit.thread.i_crit_edge ], [ %call17.i.i, %if.end19.i.i.dcmi_get_sensor_format.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fmt.i.i) #11
  br label %dcmi_get_sensor_bounds.exit.thread94

if.end40.i:                                       ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %format.i.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt.i.i, i32 0, i32 2
  %66 = ptrtoint ptr %format.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %format.i.i, align 4
  %height.i.i.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt.i.i, i32 0, i32 2, i32 1
  %68 = ptrtoint ptr %height.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %height.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fmt.i.i) #11
  %top41.i = getelementptr i8, ptr %notifier, i32 308
  %70 = ptrtoint ptr %top41.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %top41.i, align 4
  %71 = ptrtoint ptr %sd_bounds to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %sd_bounds, align 4
  %width44.i = getelementptr i8, ptr %notifier, i32 312
  %72 = ptrtoint ptr %width44.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %67, ptr %width44.i, align 4
  %height46.i = getelementptr i8, ptr %notifier, i32 316
  %73 = ptrtoint ptr %height46.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %69, ptr %height46.i, align 4
  br label %dcmi_get_sensor_bounds.exit.thread

dcmi_get_sensor_bounds.exit.thread:               ; preds = %if.end40.i, %if.then33.i, %if.then21.i
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %bounds.i) #11
  call void @llvm.lifetime.start.p0(i64 204, ptr nonnull %f.i) #11
  %74 = getelementptr inbounds i8, ptr %f.i, i32 20
  %75 = call ptr @memset(ptr %74, i32 0, i32 184)
  %76 = ptrtoint ptr %f.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 1, ptr %f.i, align 4
  %fmt.i = getelementptr inbounds %struct.v4l2_format, ptr %f.i, i32 0, i32 1
  %77 = ptrtoint ptr %fmt.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 352, ptr %fmt.i, align 4
  %height.i84 = getelementptr inbounds %struct.v4l2_format, ptr %f.i, i32 0, i32 1, i32 0, i32 1
  %78 = ptrtoint ptr %height.i84 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 288, ptr %height.i84, align 4
  %pixelformat.i = getelementptr inbounds %struct.v4l2_format, ptr %f.i, i32 0, i32 1, i32 0, i32 2
  %sd_formats.i = getelementptr i8, ptr %notifier, i32 276
  %79 = ptrtoint ptr %sd_formats.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %sd_formats.i, align 8
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %80, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %82, align 4
  %85 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %pixelformat.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_format, ptr %f.i, i32 0, i32 1, i32 0, i32 3
  %86 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 1, ptr %field.i, align 4
  %call.i85 = call fastcc i32 @dcmi_try_fmt(ptr noundef %add.ptr.i, ptr noundef nonnull %f.i, ptr noundef null, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i85)
  %tobool.not.i86 = icmp eq i32 %call.i85, 0
  br i1 %tobool.not.i86, label %if.end38, label %do.end36

dcmi_get_sensor_bounds.exit.thread94:             ; preds = %dcmi_get_sensor_format.exit.thread.i, %if.end22.dcmi_get_sensor_bounds.exit.thread94_crit_edge
  %retval.0.i.ph = phi i32 [ -19, %if.end22.dcmi_get_sensor_bounds.exit.thread94_crit_edge ], [ %retval.0.i.ph.i, %dcmi_get_sensor_format.exit.thread.i ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %bounds.i) #11
  br label %do.end28

dcmi_get_sensor_bounds.exit:                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %bounds.i) #11
  br label %do.end28

do.end28:                                         ; preds = %dcmi_get_sensor_bounds.exit, %dcmi_get_sensor_bounds.exit.thread94
  %retval.0.i97 = phi i32 [ %retval.0.i.ph, %dcmi_get_sensor_bounds.exit.thread94 ], [ %call17.i, %dcmi_get_sensor_bounds.exit ]
  %dev29 = getelementptr i8, ptr %notifier, i32 -168
  %87 = ptrtoint ptr %dev29 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev29, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %88, ptr noundef nonnull @.str.155) #14
  br label %cleanup

do.end36:                                         ; preds = %dcmi_get_sensor_bounds.exit.thread
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 204, ptr nonnull %f.i) #11
  %dev37 = getelementptr i8, ptr %notifier, i32 -168
  %89 = ptrtoint ptr %dev37 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dev37, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %90, ptr noundef nonnull @.str.158) #14
  br label %cleanup

if.end38:                                         ; preds = %dcmi_get_sensor_bounds.exit.thread
  %91 = ptrtoint ptr %sd_formats.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %sd_formats.i, align 8
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %92, align 4
  %sd_format.i = getelementptr i8, ptr %notifier, i32 284
  %95 = ptrtoint ptr %sd_format.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %94, ptr %sd_format.i, align 8
  %fmt3.i = getelementptr i8, ptr %notifier, i32 52
  %96 = call ptr @memcpy(ptr %fmt3.i, ptr %f.i, i32 204)
  call void @llvm.lifetime.end.p0(i64 204, ptr nonnull %f.i) #11
  %dev39 = getelementptr i8, ptr %notifier, i32 -168
  %97 = ptrtoint ptr %dev39 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dev39, align 4
  %irq = getelementptr i8, ptr %notifier, i32 -136
  %99 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %irq, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %98, i32 0, i32 3
  %101 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i88 = icmp eq ptr %102, null
  br i1 %tobool.not.i88, label %if.end.i89, label %if.end38.dev_name.exit_crit_edge

if.end38.dev_name.exit_crit_edge:                 ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit

if.end.i89:                                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  %103 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %98, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i89, %if.end38.dev_name.exit_crit_edge
  %retval.0.i90 = phi ptr [ %104, %if.end.i89 ], [ %102, %if.end38.dev_name.exit_crit_edge ]
  %call42 = call i32 @devm_request_threaded_irq(ptr noundef %98, i32 noundef %100, ptr noundef nonnull @dcmi_irq_callback, ptr noundef nonnull @dcmi_irq_thread, i32 noundef 8192, ptr noundef %retval.0.i90, ptr noundef %add.ptr.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %dev_name.exit.cleanup_crit_edge, label %do.end47

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end47:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  %105 = ptrtoint ptr %dev39 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dev39, align 4
  %107 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %irq, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %106, ptr noundef nonnull @.str.161, i32 noundef %108) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end47, %dev_name.exit.cleanup_crit_edge, %do.end36, %do.end28, %do.end20, %do.end12, %do.end
  %retval.0 = phi i32 [ %call7, %do.end12 ], [ %call15, %do.end20 ], [ %retval.0.i97, %do.end28 ], [ %call.i85, %do.end36 ], [ %call42, %do.end47 ], [ -19, %do.end ], [ 0, %dev_name.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dcmi_graph_notify_unbind(ptr nocapture noundef readonly %notifier, ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %asd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dcmi_graph_notify_unbind.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dcmi_graph_notify_unbind, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !363

if.then:                                          ; preds = %entry
  %dev = getelementptr i8, ptr %notifier, i32 -168
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %vdev = getelementptr i8, ptr %notifier, i32 -4
  %2 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdev, align 8
  %init_name.i.i = getelementptr inbounds %struct.video_device, ptr %3, i32 0, i32 5, i32 3
  %4 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.video_device_node_name.exit_crit_edge

if.then.video_device_node_name.exit_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %video_device_node_name.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.video_device, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  br label %video_device_node_name.exit

video_device_node_name.exit:                      ; preds = %if.end.i.i, %if.then.video_device_node_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %7, %if.end.i.i ], [ %5, %if.then.video_device_node_name.exit_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dcmi_graph_notify_unbind.__UNIQUE_ID_ddebug357, ptr noundef %1, ptr noundef nonnull @.str.176, ptr noundef %retval.0.i.i) #11
  br label %do.end

do.end:                                           ; preds = %video_device_node_name.exit, %entry
  %vdev5 = getelementptr i8, ptr %notifier, i32 -4
  %8 = ptrtoint ptr %vdev5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vdev5, align 8
  tail call void @video_unregister_device(ptr noundef %9) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_get_fwnode_pad(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_create_pad_link(ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dcmi_formats_init(ptr nocapture noundef %dcmi) unnamed_addr #2 align 64 {
entry:
  %sd_fmts = alloca [8 x ptr], align 4
  %mbus_code = alloca %struct.v4l2_subdev_mbus_code_enum, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %sd_fmts) #11
  %source = getelementptr inbounds %struct.stm32_dcmi, ptr %dcmi, i32 0, i32 12
  %0 = call ptr @memset(ptr %sd_fmts, i32 255, i32 32)
  %1 = ptrtoint ptr %source to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %source, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %mbus_code) #11
  %3 = call ptr @memset(ptr %mbus_code, i32 0, i32 48)
  %4 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %mbus_code, i32 0, i32 3
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %4, align 4
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %2, i32 0, i32 6
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.else.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else.lr.ph:                                    ; preds = %entry
  %code = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %mbus_code, i32 0, i32 2
  %bus_type = getelementptr inbounds %struct.stm32_dcmi, ptr %dcmi, i32 0, i32 26
  %dev = getelementptr inbounds %struct.stm32_dcmi, ptr %dcmi, i32 0, i32 1
  %index = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %mbus_code, i32 0, i32 1
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %pad173 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %pad173 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pad173, align 4
  %tobool1.not174 = icmp eq ptr %9, null
  br i1 %tobool1.not174, label %if.else.lr.ph.while.end_crit_edge, label %if.else.lr.ph.land.lhs.true_crit_edge

if.else.lr.ph.land.lhs.true_crit_edge:            ; preds = %if.else.lr.ph
  br label %land.lhs.true

if.else.lr.ph.while.end_crit_edge:                ; preds = %if.else.lr.ph
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

land.lhs.true:                                    ; preds = %for.end81.land.lhs.true_crit_edge, %if.else.lr.ph.land.lhs.true_crit_edge
  %10 = phi ptr [ %42, %for.end81.land.lhs.true_crit_edge ], [ %9, %if.else.lr.ph.land.lhs.true_crit_edge ]
  %num_fmts.0157175 = phi i32 [ %num_fmts.2, %for.end81.land.lhs.true_crit_edge ], [ 0, %if.else.lr.ph.land.lhs.true_crit_edge ]
  %enum_mbus_code = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %enum_mbus_code to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %enum_mbus_code, align 4
  %tobool4.not = icmp eq ptr %12, null
  br i1 %tobool4.not, label %land.lhs.true.while.end_crit_edge, label %if.else6

land.lhs.true.while.end_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.else6:                                         ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool7.not = icmp eq ptr %13, null
  br i1 %tobool7.not, label %if.else6.if.else13_crit_edge, label %land.lhs.true8

if.else6.if.else13_crit_edge:                     ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else13

land.lhs.true8:                                   ; preds = %if.else6
  %enum_mbus_code9 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %enum_mbus_code9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %enum_mbus_code9, align 4
  %tobool10.not = icmp eq ptr %15, null
  br i1 %tobool10.not, label %land.lhs.true8.if.else13_crit_edge, label %land.lhs.true8.if.end19_crit_edge

land.lhs.true8.if.end19_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

land.lhs.true8.if.else13_crit_edge:               ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else13

if.else13:                                        ; preds = %land.lhs.true8.if.else13_crit_edge, %if.else6.if.else13_crit_edge
  br label %if.end19

if.end19:                                         ; preds = %if.else13, %land.lhs.true8.if.end19_crit_edge
  %.sink = phi ptr [ %12, %if.else13 ], [ %15, %land.lhs.true8.if.end19_crit_edge ]
  %call17 = call i32 %.sink(ptr noundef nonnull %2, ptr noundef null, ptr noundef nonnull %mbus_code) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool20.not = icmp eq i32 %call17, 0
  br i1 %tobool20.not, label %if.end19.for.body_crit_edge, label %if.end19.while.end_crit_edge

if.end19.while.end_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end19.for.body_crit_edge:                      ; preds = %if.end19
  br label %for.body

for.body:                                         ; preds = %for.inc79.for.body_crit_edge, %if.end19.for.body_crit_edge
  %num_fmts.1156 = phi i32 [ %num_fmts.2, %for.inc79.for.body_crit_edge ], [ %num_fmts.0157175, %if.end19.for.body_crit_edge ]
  %i.0154 = phi i32 [ %inc80, %for.inc79.for.body_crit_edge ], [ 0, %if.end19.for.body_crit_edge ]
  %mbus_code21 = getelementptr [8 x %struct.dcmi_format], ptr @dcmi_formats, i32 0, i32 %i.0154, i32 1
  %16 = ptrtoint ptr %mbus_code21 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mbus_code21, align 4
  %18 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %code, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp22.not = icmp eq i32 %17, %19
  br i1 %cmp22.not, label %if.end24, label %for.body.for.inc79_crit_edge

for.body.for.inc79_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc79

if.end24:                                         ; preds = %for.body
  %arrayidx = getelementptr [8 x %struct.dcmi_format], ptr @dcmi_formats, i32 0, i32 %i.0154
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1195724874, i32 %21)
  %cmp26 = icmp eq i32 %21, 1195724874
  br i1 %cmp26, label %land.lhs.true27, label %if.end24.if.end30_crit_edge

if.end24.if.end30_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

land.lhs.true27:                                  ; preds = %if.end24
  %22 = ptrtoint ptr %bus_type to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bus_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %cmp28 = icmp eq i32 %23, 2
  br i1 %cmp28, label %land.lhs.true27.for.inc79_crit_edge, label %land.lhs.true27.if.end30_crit_edge

land.lhs.true27.if.end30_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

land.lhs.true27.for.inc79_crit_edge:              ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc79

if.end30:                                         ; preds = %land.lhs.true27.if.end30_crit_edge, %if.end24.if.end30_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_fmts.1156)
  %cmp32152.not = icmp eq i32 %num_fmts.1156, 0
  br i1 %cmp32152.not, label %if.end30.for.end_crit_edge, label %if.end30.for.body33_crit_edge

if.end30.for.body33_crit_edge:                    ; preds = %if.end30
  br label %for.body33

if.end30.for.end_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body33:                                       ; preds = %for.inc.for.body33_crit_edge, %if.end30.for.body33_crit_edge
  %j.0153 = phi i32 [ %inc, %for.inc.for.body33_crit_edge ], [ 0, %if.end30.for.body33_crit_edge ]
  %arrayidx34 = getelementptr [8 x ptr], ptr %sd_fmts, i32 0, i32 %j.0153
  %24 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx34, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %21)
  %cmp38 = icmp eq i32 %27, %21
  br i1 %cmp38, label %do.body, label %for.inc

do.body:                                          ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dcmi_formats_init.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dcmi_formats_init, %if.then46)) #11
          to label %for.end [label %if.then46], !srcloc !363

if.then46:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 4
  %30 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %code, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dcmi_formats_init.__UNIQUE_ID_ddebug353, ptr noundef %29, ptr noundef nonnull @.str.164, ptr noundef %25, i32 noundef %31) #11
  br label %for.end

for.inc:                                          ; preds = %for.body33
  %inc = add nuw i32 %j.0153, 1
  %exitcond.not = icmp eq i32 %inc, %num_fmts.1156
  br i1 %exitcond.not, label %for.inc.if.then53_crit_edge, label %for.inc.for.body33_crit_edge

for.inc.for.body33_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body33

for.inc.if.then53_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then53

for.end:                                          ; preds = %if.then46, %do.body, %if.end30.for.end_crit_edge
  %j.0151 = phi i32 [ %j.0153, %do.body ], [ %j.0153, %if.then46 ], [ 0, %if.end30.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %j.0151, i32 %num_fmts.1156)
  %cmp52 = icmp eq i32 %j.0151, %num_fmts.1156
  br i1 %cmp52, label %for.end.if.then53_crit_edge, label %for.end.for.inc79_crit_edge

for.end.for.inc79_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc79

for.end.if.then53_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then53

if.then53:                                        ; preds = %for.end.if.then53_crit_edge, %for.inc.if.then53_crit_edge
  %inc54 = add i32 %num_fmts.1156, 1
  %arrayidx55 = getelementptr [8 x ptr], ptr %sd_fmts, i32 0, i32 %num_fmts.1156
  %32 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %arrayidx, ptr %arrayidx55, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dcmi_formats_init.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dcmi_formats_init, %if.then68)) #11
          to label %for.inc79 [label %if.then68], !srcloc !363

if.then68:                                        ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #13
  %33 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev, align 4
  %35 = ptrtoint ptr %mbus_code21 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mbus_code21, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dcmi_formats_init.__UNIQUE_ID_ddebug354, ptr noundef %34, ptr noundef nonnull @.str.165, ptr noundef %arrayidx, i32 noundef %36) #11
  br label %for.inc79

for.inc79:                                        ; preds = %if.then68, %if.then53, %for.end.for.inc79_crit_edge, %land.lhs.true27.for.inc79_crit_edge, %for.body.for.inc79_crit_edge
  %num_fmts.2 = phi i32 [ %num_fmts.1156, %for.body.for.inc79_crit_edge ], [ %num_fmts.1156, %land.lhs.true27.for.inc79_crit_edge ], [ %inc54, %if.then68 ], [ %num_fmts.1156, %for.end.for.inc79_crit_edge ], [ %inc54, %if.then53 ]
  %inc80 = add nuw nsw i32 %i.0154, 1
  %exitcond164.not = icmp eq i32 %inc80, 8
  br i1 %exitcond164.not, label %for.end81, label %for.inc79.for.body_crit_edge

for.inc79.for.body_crit_edge:                     ; preds = %for.inc79
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end81:                                        ; preds = %for.inc79
  %37 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %index, align 4
  %inc82 = add i32 %38, 1
  store i32 %inc82, ptr %index, align 4
  %39 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ops, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %40, i32 0, i32 7
  %41 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pad, align 4
  %tobool1.not = icmp eq ptr %42, null
  br i1 %tobool1.not, label %for.end81.while.end_crit_edge, label %for.end81.land.lhs.true_crit_edge

for.end81.land.lhs.true_crit_edge:                ; preds = %for.end81
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

for.end81.while.end_crit_edge:                    ; preds = %for.end81
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %for.end81.while.end_crit_edge, %if.end19.while.end_crit_edge, %land.lhs.true.while.end_crit_edge, %if.else.lr.ph.while.end_crit_edge
  %num_fmts.0157.lcssa = phi i32 [ 0, %if.else.lr.ph.while.end_crit_edge ], [ %num_fmts.2, %for.end81.while.end_crit_edge ], [ %num_fmts.0157175, %land.lhs.true.while.end_crit_edge ], [ %num_fmts.0157175, %if.end19.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_fmts.0157.lcssa)
  %tobool83.not = icmp eq i32 %num_fmts.0157.lcssa, 0
  br i1 %tobool83.not, label %while.end.cleanup_crit_edge, label %if.end85

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end85:                                         ; preds = %while.end
  %num_of_sd_formats = getelementptr inbounds %struct.stm32_dcmi, ptr %dcmi, i32 0, i32 17
  %43 = ptrtoint ptr %num_of_sd_formats to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %num_fmts.0157.lcssa, ptr %num_of_sd_formats, align 4
  %dev86 = getelementptr inbounds %struct.stm32_dcmi, ptr %dcmi, i32 0, i32 1
  %44 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num_fmts.0157.lcssa, i32 4) #11
  %45 = extractvalue { i32, i1 } %44, 1
  br i1 %45, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !372

devm_kcalloc.exit.thread:                         ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #13
  %sd_formats148 = getelementptr inbounds %struct.stm32_dcmi, ptr %dcmi, i32 0, i32 16
  %46 = ptrtoint ptr %sd_formats148 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %sd_formats148, align 8
  br label %do.end93

devm_kcalloc.exit:                                ; preds = %if.end85
  %47 = ptrtoint ptr %dev86 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev86, align 4
  %49 = extractvalue { i32, i1 } %44, 0
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %48, i32 noundef %49, i32 noundef 3520) #11
  %sd_formats = getelementptr inbounds %struct.stm32_dcmi, ptr %dcmi, i32 0, i32 16
  %50 = ptrtoint ptr %sd_formats to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call5.i.i, ptr %sd_formats, align 8
  %tobool89.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool89.not, label %devm_kcalloc.exit.do.end93_crit_edge, label %if.end95

devm_kcalloc.exit.do.end93_crit_edge:             ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end93

do.end93:                                         ; preds = %devm_kcalloc.exit.do.end93_crit_edge, %devm_kcalloc.exit.thread
  %51 = ptrtoint ptr %dev86 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev86, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.166) #14
  br label %cleanup

if.end95:                                         ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #13
  %mul = shl nuw i32 %num_fmts.0157.lcssa, 2
  %53 = call ptr @memcpy(ptr %call5.i.i, ptr %sd_fmts, i32 %mul)
  %54 = ptrtoint ptr %sd_formats to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %sd_formats, align 8
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  %sd_format = getelementptr inbounds %struct.stm32_dcmi, ptr %dcmi, i32 0, i32 18
  %58 = ptrtoint ptr %sd_format to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %57, ptr %sd_format, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end95, %do.end93, %while.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end95 ], [ -12, %do.end93 ], [ -6, %while.end.cleanup_crit_edge ], [ -6, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %mbus_code) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %sd_fmts) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dcmi_framesizes_init(ptr nocapture noundef %dcmi) unnamed_addr #2 align 64 {
entry:
  %fse = alloca %struct.v4l2_subdev_frame_size_enum, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %source = getelementptr inbounds %struct.stm32_dcmi, ptr %dcmi, i32 0, i32 12
  %0 = ptrtoint ptr %source to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %source, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %fse) #11
  %2 = call ptr @memset(ptr %fse, i32 0, i32 64)
  %code = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 2
  %sd_format = getelementptr inbounds %struct.stm32_dcmi, ptr %dcmi, i32 0, i32 18
  %3 = ptrtoint ptr %sd_format to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sd_format, align 8
  %mbus_code = getelementptr inbounds %struct.dcmi_format, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %mbus_code to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mbus_code, align 4
  %7 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %code, align 4
  %which = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 7
  %8 = ptrtoint ptr %which to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %which, align 4
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 6
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.while.end_crit_edge, label %if.else.preheader

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.else.preheader:                                ; preds = %entry
  %9 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops, align 4
  %pad166 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %pad166 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pad166, align 4
  %tobool1.not167 = icmp eq ptr %12, null
  br i1 %tobool1.not167, label %if.else.preheader.while.end_crit_edge, label %if.else.preheader.land.lhs.true_crit_edge

if.else.preheader.land.lhs.true_crit_edge:        ; preds = %if.else.preheader
  br label %land.lhs.true

if.else.preheader.while.end_crit_edge:            ; preds = %if.else.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

land.lhs.true:                                    ; preds = %while.body.land.lhs.true_crit_edge, %if.else.preheader.land.lhs.true_crit_edge
  %13 = phi ptr [ %24, %while.body.land.lhs.true_crit_edge ], [ %12, %if.else.preheader.land.lhs.true_crit_edge ]
  %enum_frame_size = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %enum_frame_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %enum_frame_size, align 4
  %tobool4.not = icmp eq ptr %15, null
  br i1 %tobool4.not, label %land.lhs.true.while.end_crit_edge, label %if.else6

land.lhs.true.while.end_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.else6:                                         ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool7.not = icmp eq ptr %16, null
  br i1 %tobool7.not, label %if.else6.if.else13_crit_edge, label %land.lhs.true8

if.else6.if.else13_crit_edge:                     ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else13

land.lhs.true8:                                   ; preds = %if.else6
  %enum_frame_size9 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %enum_frame_size9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %enum_frame_size9, align 4
  %tobool10.not = icmp eq ptr %18, null
  br i1 %tobool10.not, label %land.lhs.true8.if.else13_crit_edge, label %land.lhs.true8.if.end19_crit_edge

land.lhs.true8.if.end19_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

land.lhs.true8.if.else13_crit_edge:               ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else13

if.else13:                                        ; preds = %land.lhs.true8.if.else13_crit_edge, %if.else6.if.else13_crit_edge
  br label %if.end19

if.end19:                                         ; preds = %if.else13, %land.lhs.true8.if.end19_crit_edge
  %.sink = phi ptr [ %15, %if.else13 ], [ %18, %land.lhs.true8.if.end19_crit_edge ]
  %call17 = call i32 %.sink(ptr noundef nonnull %1, ptr noundef null, ptr noundef nonnull %fse) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool20.not = icmp eq i32 %call17, 0
  br i1 %tobool20.not, label %while.body, label %if.end19.while.end_crit_edge

if.end19.while.end_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %if.end19
  %19 = ptrtoint ptr %fse to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fse, align 4
  %inc = add i32 %20, 1
  store i32 %inc, ptr %fse, align 4
  %21 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ops, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %22, i32 0, i32 7
  %23 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pad, align 4
  %tobool1.not = icmp eq ptr %24, null
  br i1 %tobool1.not, label %while.body.while.end_crit_edge, label %while.body.land.lhs.true_crit_edge

while.body.land.lhs.true_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end19.while.end_crit_edge, %land.lhs.true.while.end_crit_edge, %if.else.preheader.while.end_crit_edge, %entry.while.end_crit_edge
  %25 = ptrtoint ptr %fse to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %fse, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool22.not = icmp eq i32 %26, 0
  br i1 %tobool22.not, label %while.end.cleanup_crit_edge, label %if.end24

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end24:                                         ; preds = %while.end
  %num_of_sd_framesizes = getelementptr inbounds %struct.stm32_dcmi, ptr %dcmi, i32 0, i32 20
  %27 = ptrtoint ptr %num_of_sd_framesizes to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %num_of_sd_framesizes, align 8
  %dev = getelementptr inbounds %struct.stm32_dcmi, ptr %dcmi, i32 0, i32 1
  %28 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %26, i32 8) #11
  %29 = extractvalue { i32, i1 } %28, 1
  br i1 %29, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !372

devm_kcalloc.exit.thread:                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  %sd_framesizes149 = getelementptr inbounds %struct.stm32_dcmi, ptr %dcmi, i32 0, i32 19
  %30 = ptrtoint ptr %sd_framesizes149 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %sd_framesizes149, align 4
  br label %do.end

devm_kcalloc.exit:                                ; preds = %if.end24
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev, align 4
  %33 = extractvalue { i32, i1 } %28, 0
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %32, i32 noundef %33, i32 noundef 3520) #11
  %sd_framesizes = getelementptr inbounds %struct.stm32_dcmi, ptr %dcmi, i32 0, i32 19
  %34 = ptrtoint ptr %sd_framesizes to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call5.i.i, ptr %sd_framesizes, align 4
  %tobool27.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool27.not, label %devm_kcalloc.exit.do.end_crit_edge, label %do.body31

devm_kcalloc.exit.do.end_crit_edge:               ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %devm_kcalloc.exit.do.end_crit_edge, %devm_kcalloc.exit.thread
  %35 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.166) #14
  br label %cleanup

do.body31:                                        ; preds = %devm_kcalloc.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dcmi_framesizes_init.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dcmi_framesizes_init, %if.then38)) #11
          to label %do.end42 [label %if.then38], !srcloc !363

if.then38:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #13
  %37 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dcmi_framesizes_init.__UNIQUE_ID_ddebug355, ptr noundef %38, ptr noundef nonnull @.str.168, i32 noundef %26) #11
  br label %do.end42

do.end42:                                         ; preds = %if.then38, %do.body31
  %39 = ptrtoint ptr %num_of_sd_framesizes to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %num_of_sd_framesizes, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp158.not = icmp eq i32 %40, 0
  br i1 %cmp158.not, label %do.end42.cleanup_crit_edge, label %for.body.lr.ph

do.end42.cleanup_crit_edge:                       ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %do.end42
  %max_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 4
  %max_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0159 = phi i32 [ 0, %for.body.lr.ph ], [ %inc103, %for.inc.for.body_crit_edge ]
  %41 = ptrtoint ptr %fse to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %i.0159, ptr %fse, align 4
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.else49

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else49:                                        ; preds = %for.body
  %42 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ops, align 4
  %pad51 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %43, i32 0, i32 7
  %44 = ptrtoint ptr %pad51 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pad51, align 4
  %tobool52.not = icmp eq ptr %45, null
  br i1 %tobool52.not, label %if.else49.cleanup_crit_edge, label %land.lhs.true53

if.else49.cleanup_crit_edge:                      ; preds = %if.else49
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true53:                                  ; preds = %if.else49
  %enum_frame_size56 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %enum_frame_size56 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %enum_frame_size56, align 4
  %tobool57.not = icmp eq ptr %47, null
  br i1 %tobool57.not, label %land.lhs.true53.cleanup_crit_edge, label %if.else59

land.lhs.true53.cleanup_crit_edge:                ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else59:                                        ; preds = %land.lhs.true53
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool60.not = icmp eq ptr %48, null
  br i1 %tobool60.not, label %if.else59.if.else67_crit_edge, label %land.lhs.true61

if.else59.if.else67_crit_edge:                    ; preds = %if.else59
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else67

land.lhs.true61:                                  ; preds = %if.else59
  %enum_frame_size62 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %enum_frame_size62 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %enum_frame_size62, align 4
  %tobool63.not = icmp eq ptr %50, null
  br i1 %tobool63.not, label %land.lhs.true61.if.else67_crit_edge, label %land.lhs.true61.if.end74_crit_edge

land.lhs.true61.if.end74_crit_edge:               ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end74

land.lhs.true61.if.else67_crit_edge:              ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else67

if.else67:                                        ; preds = %land.lhs.true61.if.else67_crit_edge, %if.else59.if.else67_crit_edge
  br label %if.end74

if.end74:                                         ; preds = %if.else67, %land.lhs.true61.if.end74_crit_edge
  %.sink165 = phi ptr [ %47, %if.else67 ], [ %50, %land.lhs.true61.if.end74_crit_edge ]
  %call71 = call i32 %.sink165(ptr noundef nonnull %1, ptr noundef null, ptr noundef nonnull %fse) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool76.not = icmp eq i32 %call71, 0
  br i1 %tobool76.not, label %if.end78, label %if.end74.cleanup_crit_edge

if.end74.cleanup_crit_edge:                       ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end78:                                         ; preds = %if.end74
  %51 = ptrtoint ptr %max_width to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %max_width, align 4
  %53 = ptrtoint ptr %sd_framesizes to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %sd_framesizes, align 4
  %55 = ptrtoint ptr %fse to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %fse, align 4
  %arrayidx = getelementptr %struct.dcmi_framesize, ptr %54, i32 %56
  %57 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %52, ptr %arrayidx, align 4
  %58 = ptrtoint ptr %max_height to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %max_height, align 4
  %60 = load ptr, ptr %sd_framesizes, align 4
  %61 = load i32, ptr %fse, align 4
  %height = getelementptr %struct.dcmi_framesize, ptr %60, i32 %61, i32 1
  %62 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %59, ptr %height, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dcmi_framesizes_init.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dcmi_framesizes_init, %if.then96)) #11
          to label %for.inc [label %if.then96], !srcloc !363

if.then96:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #13
  %63 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev, align 4
  %65 = ptrtoint ptr %max_width to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %max_width, align 4
  %67 = ptrtoint ptr %max_height to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %max_height, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dcmi_framesizes_init.__UNIQUE_ID_ddebug356, ptr noundef %64, ptr noundef nonnull @.str.169, i32 noundef %66, i32 noundef %68) #11
  br label %for.inc

for.inc:                                          ; preds = %if.then96, %if.end78
  %inc103 = add nuw i32 %i.0159, 1
  %69 = ptrtoint ptr %num_of_sd_framesizes to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %num_of_sd_framesizes, align 8
  %cmp = icmp ult i32 %inc103, %70
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end74.cleanup_crit_edge, %land.lhs.true53.cleanup_crit_edge, %if.else49.cleanup_crit_edge, %for.body.cleanup_crit_edge, %do.end42.cleanup_crit_edge, %do.end, %while.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end ], [ 0, %while.end.cleanup_crit_edge ], [ 0, %do.end42.cleanup_crit_edge ], [ %call71, %if.end74.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ], [ -19, %for.body.cleanup_crit_edge ], [ -515, %land.lhs.true53.cleanup_crit_edge ], [ -515, %if.else49.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %fse) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dcmi_irq_callback(i32 noundef %irq, ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %arg) #11
  %regs = getelementptr inbounds %struct.stm32_dcmi, ptr %arg, i32 0, i32 2
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !370
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #11
  %misr = getelementptr inbounds %struct.stm32_dcmi, ptr %arg, i32 0, i32 32
  %4 = ptrtoint ptr %misr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %misr, align 4
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 8
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 20
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !370
  %8 = or i32 %7, 117440512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %8) #11, !srcloc !369
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %arg, i32 noundef %call2) #11
  ret i32 2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dcmi_irq_thread(i32 noundef %irq, ptr noundef %arg) #2 align 64 {
entry:
  %state.i = alloca %struct.dma_tx_state, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_irq(ptr noundef %arg) #11
  %misr = getelementptr inbounds %struct.stm32_dcmi, ptr %arg, i32 0, i32 32
  %0 = ptrtoint ptr %misr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %misr, align 4
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.then:                                          ; preds = %entry
  %overrun_count = getelementptr inbounds %struct.stm32_dcmi, ptr %arg, i32 0, i32 34
  %2 = ptrtoint ptr %overrun_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %overrun_count, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %overrun_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc)
  %cmp = icmp sgt i32 %inc, 3
  br i1 %cmp, label %if.then2, label %if.then.if.end4_crit_edge

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %errors_count = getelementptr inbounds %struct.stm32_dcmi, ptr %arg, i32 0, i32 33
  %4 = ptrtoint ptr %errors_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %errors_count, align 8
  %inc3 = add i32 %5, 1
  store i32 %inc3, ptr %errors_count, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %and6 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end4.if.end11_crit_edge, label %if.then8

if.end4.if.end11_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %errors_count9 = getelementptr inbounds %struct.stm32_dcmi, ptr %arg, i32 0, i32 33
  %6 = ptrtoint ptr %errors_count9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %errors_count9, align 8
  %inc10 = add i32 %7, 1
  store i32 %inc10, ptr %errors_count9, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end4.if.end11_crit_edge
  %sd_format = getelementptr inbounds %struct.stm32_dcmi, ptr %arg, i32 0, i32 18
  %8 = ptrtoint ptr %sd_format to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sd_format, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1195724874, i32 %11)
  %cmp12 = icmp ne i32 %11, 1195724874
  %and14 = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  %or.cond = select i1 %cmp12, i1 true, i1 %tobool15.not
  tail call void @_raw_spin_unlock_irq(ptr noundef %arg) #11
  br i1 %or.cond, label %if.end11.cleanup_crit_edge, label %if.then16

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then16:                                        ; preds = %if.end11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %state.i) #11
  %12 = getelementptr inbounds %struct.dma_tx_state, ptr %state.i, i32 0, i32 2
  %active.i = getelementptr inbounds %struct.stm32_dcmi, ptr %arg, i32 0, i32 7
  %13 = call ptr @memset(ptr %state.i, i32 255, i32 16)
  %14 = ptrtoint ptr %active.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %active.i, align 8
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.then16.dcmi_process_jpeg.exit_crit_edge, label %if.end.i

if.then16.dcmi_process_jpeg.exit_crit_edge:       ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #13
  br label %dcmi_process_jpeg.exit

if.end.i:                                         ; preds = %if.then16
  %dma_chan.i = getelementptr inbounds %struct.stm32_dcmi, ptr %arg, i32 0, i32 30
  %16 = ptrtoint ptr %dma_chan.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dma_chan.i, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.130, i32 noundef 1169) #11
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %device_synchronize.i.i = getelementptr inbounds %struct.dma_device, ptr %19, i32 0, i32 48
  %20 = ptrtoint ptr %device_synchronize.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %device_synchronize.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %21, null
  br i1 %tobool.not.i.i, label %if.end.i.dmaengine_synchronize.exit.i_crit_edge, label %if.then.i.i

if.end.i.dmaengine_synchronize.exit.i_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dmaengine_synchronize.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %21(ptr noundef %17) #11
  br label %dmaengine_synchronize.exit.i

dmaengine_synchronize.exit.i:                     ; preds = %if.then.i.i, %if.end.i.dmaengine_synchronize.exit.i_crit_edge
  %22 = ptrtoint ptr %dma_chan.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dma_chan.i, align 4
  %dma_cookie.i = getelementptr inbounds %struct.stm32_dcmi, ptr %arg, i32 0, i32 31
  %24 = ptrtoint ptr %dma_cookie.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dma_cookie.i, align 8
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %23, align 4
  %device_tx_status.i.i = getelementptr inbounds %struct.dma_device, ptr %27, i32 0, i32 49
  %28 = ptrtoint ptr %device_tx_status.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %device_tx_status.i.i, align 4
  %call.i.i = call i32 %29(ptr noundef %23, i32 noundef %25, ptr noundef nonnull %state.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 3
  br i1 %cmp.not.i, label %dmaengine_synchronize.exit.i.if.else.i_crit_edge, label %land.lhs.true.i

dmaengine_synchronize.exit.i.if.else.i_crit_edge: ; preds = %dmaengine_synchronize.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %dmaengine_synchronize.exit.i
  %30 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %12, align 4
  %size.i = getelementptr inbounds %struct.dcmi_buf, ptr %15, i32 0, i32 3
  %32 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %31)
  %cmp2.i = icmp ugt i32 %33, %31
  br i1 %cmp2.i, label %if.then3.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

if.then3.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i = sub i32 %33, %31
  call fastcc void @dcmi_buffer_done(ptr noundef %arg, ptr noundef nonnull %15, i32 noundef %sub.i, i32 noundef 0) #11
  br label %if.end6.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %dmaengine_synchronize.exit.i.if.else.i_crit_edge
  %errors_count.i = getelementptr inbounds %struct.stm32_dcmi, ptr %arg, i32 0, i32 33
  %34 = ptrtoint ptr %errors_count.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %errors_count.i, align 8
  %inc.i = add i32 %35, 1
  store i32 %inc.i, ptr %errors_count.i, align 8
  %dev.i = getelementptr inbounds %struct.stm32_dcmi, ptr %arg, i32 0, i32 1
  %36 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.170, ptr noundef nonnull @.str.171) #14
  call fastcc void @dcmi_buffer_done(ptr noundef %arg, ptr noundef nonnull %15, i32 noundef 0, i32 noundef -5) #11
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.else.i, %if.then3.i
  %38 = ptrtoint ptr %dma_chan.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dma_chan.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %device_terminate_all.i.i.i = getelementptr inbounds %struct.dma_device, ptr %41, i32 0, i32 47
  %42 = ptrtoint ptr %device_terminate_all.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %device_terminate_all.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %43, null
  br i1 %tobool.not.i.i.i, label %if.end6.i.dmaengine_terminate_sync.exit.i_crit_edge, label %dmaengine_terminate_async.exit.i.i

if.end6.i.dmaengine_terminate_sync.exit.i_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dmaengine_terminate_sync.exit.i

dmaengine_terminate_async.exit.i.i:               ; preds = %if.end6.i
  %call.i.i.i = call i32 %43(ptr noundef %39) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i35.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i35.i, label %if.end.i.i, label %dmaengine_terminate_async.exit.i.i.dmaengine_terminate_sync.exit.i_crit_edge

dmaengine_terminate_async.exit.i.i.dmaengine_terminate_sync.exit.i_crit_edge: ; preds = %dmaengine_terminate_async.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dmaengine_terminate_sync.exit.i

if.end.i.i:                                       ; preds = %dmaengine_terminate_async.exit.i.i
  call void @__might_sleep(ptr noundef nonnull @.str.130, i32 noundef 1169) #11
  %44 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %39, align 4
  %device_synchronize.i.i.i = getelementptr inbounds %struct.dma_device, ptr %45, i32 0, i32 48
  %46 = ptrtoint ptr %device_synchronize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %device_synchronize.i.i.i, align 4
  %tobool.not.i1.i.i = icmp eq ptr %47, null
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.dmaengine_terminate_sync.exit.i_crit_edge, label %if.then.i2.i.i

if.end.i.i.dmaengine_terminate_sync.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dmaengine_terminate_sync.exit.i

if.then.i2.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void %47(ptr noundef %39) #11
  br label %dmaengine_terminate_sync.exit.i

dmaengine_terminate_sync.exit.i:                  ; preds = %if.then.i2.i.i, %if.end.i.i.dmaengine_terminate_sync.exit.i_crit_edge, %dmaengine_terminate_async.exit.i.i.dmaengine_terminate_sync.exit.i_crit_edge, %if.end6.i.dmaengine_terminate_sync.exit.i_crit_edge
  %call9.i = call fastcc i32 @dcmi_restart_capture(ptr noundef %arg) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %dmaengine_terminate_sync.exit.i.dcmi_process_jpeg.exit_crit_edge, label %do.end14.i

dmaengine_terminate_sync.exit.i.dcmi_process_jpeg.exit_crit_edge: ; preds = %dmaengine_terminate_sync.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dcmi_process_jpeg.exit

do.end14.i:                                       ; preds = %dmaengine_terminate_sync.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev15.i = getelementptr inbounds %struct.stm32_dcmi, ptr %arg, i32 0, i32 1
  %48 = ptrtoint ptr %dev15.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev15.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.173, ptr noundef nonnull @.str.171) #14
  br label %dcmi_process_jpeg.exit

dcmi_process_jpeg.exit:                           ; preds = %do.end14.i, %dmaengine_terminate_sync.exit.i.dcmi_process_jpeg.exit_crit_edge, %if.then16.dcmi_process_jpeg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %state.i) #11
  br label %cleanup

cleanup:                                          ; preds = %dcmi_process_jpeg.exit, %if.end11.cleanup_crit_edge
  ret i32 1
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_nf_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dcmi_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pm_runtime_force_suspend(ptr noundef %dev) #11
  %call1 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %dev) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dcmi_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %dev) #11
  %call1 = tail call i32 @pm_runtime_force_resume(ptr noundef %dev) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dcmi_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mclk = getelementptr inbounds %struct.stm32_dcmi, ptr %1, i32 0, i32 28
  %2 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mclk, align 4
  tail call void @clk_disable(ptr noundef %3) #11
  tail call void @clk_unprepare(ptr noundef %3) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dcmi_runtime_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mclk = getelementptr inbounds %struct.stm32_dcmi, ptr %1, i32 0, i32 28
  %2 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mclk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end_crit_edge, label %if.then3.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_unprepare(ptr noundef %3) #11
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %entry.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %entry.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.177, ptr noundef nonnull @.str.178) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %if.end.i.if.end_crit_edge
  %retval.0.i7 = phi i32 [ %retval.0.i.ph, %do.end ], [ 0, %if.end.i.if.end_crit_edge ]
  ret i32 %retval.0.i7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 176)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 176)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !56, !57, !58, !60, !62, !63, !64, !66, !67, !69, !70, !72, !73, !75, !77, !79, !80, !81, !83, !84, !85, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !105, !107, !108, !110, !112, !113, !114, !116, !117, !119, !120, !121, !123, !124, !125, !127, !128, !130, !132, !134, !136, !138, !139, !140, !142, !143, !145, !147, !148, !149, !151, !152, !153, !154, !156, !157, !159, !160, !162, !163, !164, !165, !167, !168, !169, !171, !172, !174, !175, !177, !178, !179, !181, !182, !183, !184, !185, !186, !188, !189, !190, !191, !193, !194, !195, !197, !198, !199, !200, !202, !203, !204, !206, !207, !208, !210, !211, !212, !214, !215, !216, !218, !219, !220, !222, !223, !225, !226, !227, !229, !230, !231, !233, !234, !235, !237, !238, !239, !241, !242, !243, !244, !245, !247, !248, !250, !252, !253, !254, !256, !257, !258, !260, !261, !262, !263, !265, !266, !267, !269, !270, !271, !273, !275, !276, !277, !279, !280, !281, !283, !284, !286, !287, !288, !289, !291, !292, !293, !295, !296, !297, !299, !300, !301, !303, !304, !305, !307, !308, !309, !311, !312, !313, !315, !316, !318, !319, !320, !322, !324, !325, !326, !328, !329, !331, !332, !334, !335, !336, !337, !339, !340, !341, !343, !344, !345, !347, !349, !351, !352, !353}
!llvm.module.flags = !{!354, !355, !356, !357, !358, !359, !360, !361}
!llvm.ident = !{!362}

!0 = !{ptr @__initcall__kmod_stm32_dcmi__361_2156_stm32_dcmi_driver_init6, !1, !"__initcall__kmod_stm32_dcmi__361_2156_stm32_dcmi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/stm32/stm32-dcmi.c", i32 2156, i32 1}
!2 = !{ptr @__exitcall_stm32_dcmi_driver_exit, !1, !"__exitcall_stm32_dcmi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author362, !4, !"__UNIQUE_ID_author362", i1 false, i1 false}
!4 = !{!"../drivers/media/platform/stm32/stm32-dcmi.c", i32 2158, i32 1}
!5 = !{ptr @__UNIQUE_ID_author363, !6, !"__UNIQUE_ID_author363", i1 false, i1 false}
!6 = !{!"../drivers/media/platform/stm32/stm32-dcmi.c", i32 2159, i32 1}
!7 = !{ptr @__UNIQUE_ID_description364, !8, !"__UNIQUE_ID_description364", i1 false, i1 false}
!8 = !{!"../drivers/media/platform/stm32/stm32-dcmi.c", i32 2160, i32 1}
!9 = !{ptr @__UNIQUE_ID_file365, !10, !"__UNIQUE_ID_file365", i1 false, i1 false}
!10 = !{!"../drivers/media/platform/stm32/stm32-dcmi.c", i32 2161, i32 1}
!11 = !{ptr @__UNIQUE_ID_license366, !10, !"__UNIQUE_ID_license366", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/platform/stm32/stm32-dcmi.c", i32 2150, i32 11}
!14 = !{ptr @stm32_dcmi_driver, !15, !"stm32_dcmi_driver", i1 false, i1 false}
!15 = !{!"../drivers/media/platform/stm32/stm32-dcmi.c", i32 2146, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/platform/stm32/stm32-dcmi.c", i32 1875, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @dcmi_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @dcmi_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/platform/stm32/stm32-dcmi.c", i32 1886, i32 4}
!26 = !{ptr @dcmi_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @dcmi_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/platform/stm32/stm32-dcmi.c", i32 1894, i32 3}
!30 = !{ptr @dcmi_probe._entry.9, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @dcmi_probe._entry_ptr.11, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/platform/stm32/stm32-dcmi.c", i32 1901, i32 3}
!34 = !{ptr @dcmi_probe._entry.12, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @dcmi_probe._entry_ptr.14, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/platform/stm32/stm32-dcmi.c", i32 1906, i32 3}
!38 = !{ptr @dcmi_probe._entry.15, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @dcmi_probe._entry_ptr.17, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/platform/stm32/stm32-dcmi.c", i32 1912, i32 3}
!42 = !{ptr @dcmi_probe._entry.18, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @dcmi_probe._entry_ptr.20, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/platform/stm32/stm32-dcmi.c", i32 1930, i32 3}
!46 = !{ptr @dcmi_probe._entry.21, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @dcmi_probe._entry_ptr.23, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/platform/stm32/stm32-dcmi.c", i32 1936, i32 3}
!50 = !{ptr @dcmi_probe._entry.24, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @dcmi_probe._entry_ptr.26, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/platform/stm32/stm32-dcmi.c", i32 1940, i32 34}
!54 = !{ptr @.str.29, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/platform/stm32/stm32-dcmi.c", i32 1943, i32 4}
!56 = !{ptr @dcmi_probe._entry.28, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @dcmi_probe._entry_ptr.30, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.31, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/platform/stm32/stm32-dcmi.c", i32 1947, i32 38}
!60 = !{ptr @.str.33, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/platform/stm32/stm32-dcmi.c", i32 1951, i32 4}
!62 = !{ptr @dcmi_probe._entry.32, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @dcmi_probe._entry_ptr.34, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @dcmi_probe.__key, !65, !"__key", i1 false, i1 false}
!65 = !{!"../drivers/media/platform/stm32/stm32-dcmi.c", i32 1956, i32 2}
!66 = !{ptr @.str.35, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @dcmi_probe.__key.36, !68, !"__key", i1 false, i1 false}
!68 = !{!"../drivers/media/platform/stm32/stm32-dcmi.c", i32 1957, i32 2}
!69 = !{ptr @.str.37, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @dcmi_probe.__key.38, !71, !"__key", i1 false, i1 false}
!71 = !{!"../drivers/media/platform/stm32/stm32-dcmi.c", i32 1958, i32 2}
!72 = !{ptr @.str.39, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.40, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/platform/stm32/stm32-dcmi.c", i32 1974, i32 4}
!75 = !{ptr @.str.41, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/platform/stm32/stm32-dcmi.c", i32 1993, i32 28}
!77 = !{ptr @.str.43, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/platform/stm32/stm32-dcmi.c", i32 2006, i32 3}
!79 = !{ptr @dcmi_probe._entry.42, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @dcmi_probe._entry_ptr.44, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.46, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/platform/stm32/stm32-dcmi.c", i32 2013, i32 3}
!83 = !{ptr @dcmi_probe._entry.45, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @dcmi_probe._entry_ptr.47, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.48, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/platform/stm32/stm32-dcmi.c", i32 2017, i32 2}
!87 = !{ptr @dcmi_probe.__UNIQUE_ID_ddebug360, !86, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!88 = !{ptr @.str.50, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/platform/stm32/stm32-dcmi.c", i32 2034, i32 3}
!90 = !{ptr @dcmi_probe._entry.49, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @dcmi_probe._entry_ptr.51, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.53, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/platform/stm32/stm32-dcmi.c", i32 2045, i32 3}
!94 = !{ptr @dcmi_probe._entry.52, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @dcmi_probe._entry_ptr.54, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.56, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/platform/stm32/stm32-dcmi.c", i32 2053, i32 3}
!98 = !{ptr @dcmi_probe._entry.55, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @dcmi_probe._entry_ptr.57, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.59, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/platform/stm32/stm32-dcmi.c", i32 2057, i32 2}
!102 = !{ptr @.str.60, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @dcmi_probe._entry.58, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @dcmi_probe._entry_ptr.61, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @init_completion.__key, !106, !"__key", i1 false, i1 false}
!106 = !{!"../include/linux/completion.h", i32 87, i32 2}
!107 = !{ptr @.str.62, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @dcmi_fops, !109, !"dcmi_fops", i1 false, i1 false}
!109 = !{!"../drivers/media/platform/stm32/stm32-dcmi.c", i32 1540, i32 42}
!110 = !{ptr @.str.63, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/media/platform/stm32/stm32-dcmi.c", i32 1101, i32 2}
!112 = !{ptr @.str.64, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @dcmi_set_fmt.__UNIQUE_ID_ddebug341, !111, !"__UNIQUE_ID_ddebug341", i1 false, i1 false}
!114 = !{ptr @.str.65, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/media/platform/stm32/stm32-dcmi.c", i32 1103, i32 2}
!116 = !{ptr @dcmi_set_fmt.__UNIQUE_ID_ddebug342, !115, !"__UNIQUE_ID_ddebug342", i1 false, i1 false}
!117 = !{ptr @.str.66, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/media/platform/stm32/stm32-dcmi.c", i32 641, i32 3}
!119 = !{ptr @.str.67, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @dcmi_pipeline_s_fmt.__UNIQUE_ID_ddebug319, !118, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!121 = !{ptr @.str.68, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/media/platform/stm32/stm32-dcmi.c", i32 648, i32 4}
!123 = !{ptr @dcmi_pipeline_s_fmt._entry, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @dcmi_pipeline_s_fmt._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.69, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/media/platform/stm32/stm32-dcmi.c", i32 658, i32 4}
!127 = !{ptr @dcmi_pipeline_s_fmt.__UNIQUE_ID_ddebug320, !126, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!128 = !{ptr @dcmi_ioctl_ops, !129, !"dcmi_ioctl_ops", i1 false, i1 false}
!129 = !{!"../drivers/media/platform/stm32/stm32-dcmi.c", i32 1505, i32 36}
!130 = !{ptr @.str.70, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/media/platform/stm32/stm32-dcmi.c", i32 1342, i32 21}
!132 = !{ptr @.str.71, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/media/platform/stm32/stm32-dcmi.c", i32 1344, i32 25}
!134 = !{ptr @.str.72, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/media/platform/stm32/stm32-dcmi.c", i32 1355, i32 19}
!136 = !{ptr @.str.73, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/media/platform/stm32/stm32-dcmi.c", i32 1325, i32 3}
!138 = !{ptr @.str.74, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @dcmi_s_selection.__UNIQUE_ID_ddebug351, !137, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!140 = !{ptr @.str.75, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/media/platform/stm32/stm32-dcmi.c", i32 1331, i32 3}
!142 = !{ptr @dcmi_s_selection.__UNIQUE_ID_ddebug352, !141, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!143 = !{ptr @dcmi_video_qops, !144, !"dcmi_video_qops", i1 false, i1 false}
!144 = !{!"../drivers/media/platform/stm32/stm32-dcmi.c", i32 912, i32 29}
!145 = !{ptr @.str.76, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/media/platform/stm32/stm32-dcmi.c", i32 505, i32 2}
!147 = !{ptr @.str.77, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @dcmi_queue_setup.__UNIQUE_ID_ddebug316, !146, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!149 = !{ptr @.str.78, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/media/platform/stm32/stm32-dcmi.c", i32 531, i32 3}
!151 = !{ptr @.str.79, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @dcmi_buf_prepare._entry, !150, !"_entry", i1 false, i1 false}
!153 = !{ptr @dcmi_buf_prepare._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.80, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/media/platform/stm32/stm32-dcmi.c", i32 547, i32 3}
!156 = !{ptr @dcmi_buf_prepare.__UNIQUE_ID_ddebug317, !155, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!157 = distinct !{null, !158, !"__already_done", i1 false, i1 false}
!158 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!159 = !{ptr @.str.81, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @.str.82, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/media/platform/stm32/stm32-dcmi.c", i32 729, i32 3}
!162 = !{ptr @.str.83, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @dcmi_start_streaming._entry, !161, !"_entry", i1 false, i1 false}
!164 = !{ptr @dcmi_start_streaming._entry_ptr, !161, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.85, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/media/platform/stm32/stm32-dcmi.c", i32 736, i32 3}
!167 = !{ptr @dcmi_start_streaming._entry.84, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @dcmi_start_streaming._entry_ptr.86, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.87, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/media/platform/stm32/stm32-dcmi.c", i32 815, i32 3}
!171 = !{ptr @dcmi_start_streaming.__UNIQUE_ID_ddebug322, !170, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!172 = !{ptr @.str.88, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/media/platform/stm32/stm32-dcmi.c", i32 826, i32 2}
!174 = !{ptr @dcmi_start_streaming.__UNIQUE_ID_ddebug323, !173, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!175 = !{ptr @.str.90, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/media/platform/stm32/stm32-dcmi.c", i32 831, i32 3}
!177 = !{ptr @dcmi_start_streaming._entry.89, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @dcmi_start_streaming._entry_ptr.91, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.92, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/media/platform/stm32/stm32-dcmi.c", i32 697, i32 4}
!181 = !{ptr @.str.93, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @dcmi_pipeline_s_stream._entry, !180, !"_entry", i1 false, i1 false}
!183 = !{ptr @dcmi_pipeline_s_stream._entry_ptr, !180, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.94, !180, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @.str.95, !180, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @.str.96, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/media/platform/stm32/stm32-dcmi.c", i32 703, i32 3}
!188 = !{ptr @dcmi_pipeline_s_stream.__UNIQUE_ID_ddebug321, !187, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!189 = !{ptr @.str.97, !187, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @.str.98, !187, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @.str.99, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/media/platform/stm32/stm32-dcmi.c", i32 392, i32 2}
!193 = !{ptr @.str.100, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @dcmi_set_crop.__UNIQUE_ID_ddebug315, !192, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!195 = !{ptr @.str.101, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/media/platform/stm32/stm32-dcmi.c", i32 316, i32 3}
!197 = !{ptr @.str.102, !196, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @dcmi_start_dma._entry, !196, !"_entry", i1 false, i1 false}
!199 = !{ptr @dcmi_start_dma._entry_ptr, !196, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.104, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/media/platform/stm32/stm32-dcmi.c", i32 334, i32 3}
!202 = !{ptr @dcmi_start_dma._entry.103, !201, !"_entry", i1 false, i1 false}
!203 = !{ptr @dcmi_start_dma._entry_ptr.105, !201, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.107, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/media/platform/stm32/stm32-dcmi.c", i32 347, i32 3}
!206 = !{ptr @dcmi_start_dma._entry.106, !205, !"_entry", i1 false, i1 false}
!207 = !{ptr @dcmi_start_dma._entry_ptr.108, !205, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.109, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/media/platform/stm32/stm32-dcmi.c", i32 267, i32 3}
!210 = !{ptr @.str.110, !209, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @dcmi_dma_callback.__UNIQUE_ID_ddebug313, !209, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!212 = !{ptr @.str.111, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/media/platform/stm32/stm32-dcmi.c", i32 270, i32 3}
!214 = !{ptr @dcmi_dma_callback._entry, !213, !"_entry", i1 false, i1 false}
!215 = !{ptr @dcmi_dma_callback._entry_ptr, !213, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.113, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/media/platform/stm32/stm32-dcmi.c", i32 273, i32 3}
!218 = !{ptr @dcmi_dma_callback._entry.112, !217, !"_entry", i1 false, i1 false}
!219 = !{ptr @dcmi_dma_callback._entry_ptr.114, !217, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.115, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/media/platform/stm32/stm32-dcmi.c", i32 279, i32 3}
!222 = !{ptr @dcmi_dma_callback.__UNIQUE_ID_ddebug314, !221, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!223 = !{ptr @.str.117, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/media/platform/stm32/stm32-dcmi.c", i32 288, i32 4}
!225 = !{ptr @dcmi_dma_callback._entry.116, !224, !"_entry", i1 false, i1 false}
!226 = !{ptr @dcmi_dma_callback._entry_ptr.118, !224, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @.str.120, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/media/platform/stm32/stm32-dcmi.c", i32 292, i32 3}
!229 = !{ptr @dcmi_dma_callback._entry.119, !228, !"_entry", i1 false, i1 false}
!230 = !{ptr @dcmi_dma_callback._entry_ptr.121, !228, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @.str.122, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/media/platform/stm32/stm32-dcmi.c", i32 220, i32 2}
!233 = !{ptr @.str.123, !232, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @dcmi_buffer_done.__UNIQUE_ID_ddebug311, !232, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!235 = !{ptr @.str.124, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/media/platform/stm32/stm32-dcmi.c", i32 240, i32 3}
!237 = !{ptr @.str.125, !236, !"<string literal>", i1 false, i1 false}
!238 = !{ptr @dcmi_restart_capture.__UNIQUE_ID_ddebug312, !236, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!239 = !{ptr @.str.126, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/media/platform/stm32/stm32-dcmi.c", i32 904, i32 3}
!241 = !{ptr @.str.127, !240, !"<string literal>", i1 false, i1 false}
!242 = !{ptr @.str.128, !240, !"<string literal>", i1 false, i1 false}
!243 = !{ptr @dcmi_stop_streaming._entry, !240, !"_entry", i1 false, i1 false}
!244 = !{ptr @dcmi_stop_streaming._entry_ptr, !240, !"_entry_ptr", i1 false, i1 false}
!245 = !{ptr @.str.129, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/media/platform/stm32/stm32-dcmi.c", i32 907, i32 2}
!247 = !{ptr @dcmi_stop_streaming.__UNIQUE_ID_ddebug324, !246, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!248 = !{ptr @.str.130, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../include/linux/dmaengine.h", i32 1169, i32 2}
!250 = !{ptr @.str.131, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/media/platform/stm32/stm32-dcmi.c", i32 569, i32 3}
!252 = !{ptr @.str.132, !251, !"<string literal>", i1 false, i1 false}
!253 = !{ptr @dcmi_buf_queue.__UNIQUE_ID_ddebug318, !251, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!254 = !{ptr @.str.133, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/media/platform/stm32/stm32-dcmi.c", i32 574, i32 4}
!256 = !{ptr @dcmi_buf_queue._entry, !255, !"_entry", i1 false, i1 false}
!257 = !{ptr @dcmi_buf_queue._entry_ptr, !255, !"_entry_ptr", i1 false, i1 false}
!258 = !{ptr @.str.134, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/media/platform/stm32/stm32-dcmi.c", i32 1832, i32 3}
!260 = !{ptr @.str.135, !259, !"<string literal>", i1 false, i1 false}
!261 = !{ptr @dcmi_graph_init._entry, !259, !"_entry", i1 false, i1 false}
!262 = !{ptr @dcmi_graph_init._entry_ptr, !259, !"_entry_ptr", i1 false, i1 false}
!263 = !{ptr @.str.137, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/media/platform/stm32/stm32-dcmi.c", i32 1845, i32 3}
!265 = !{ptr @dcmi_graph_init._entry.136, !264, !"_entry", i1 false, i1 false}
!266 = !{ptr @dcmi_graph_init._entry_ptr.138, !264, !"_entry_ptr", i1 false, i1 false}
!267 = !{ptr @.str.140, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/media/platform/stm32/stm32-dcmi.c", i32 1853, i32 3}
!269 = !{ptr @dcmi_graph_init._entry.139, !268, !"_entry", i1 false, i1 false}
!270 = !{ptr @dcmi_graph_init._entry_ptr.141, !268, !"_entry_ptr", i1 false, i1 false}
!271 = !{ptr @dcmi_graph_notify_ops, !272, !"dcmi_graph_notify_ops", i1 false, i1 false}
!272 = !{!"../drivers/media/platform/stm32/stm32-dcmi.c", i32 1818, i32 52}
!273 = !{ptr @.str.142, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/media/platform/stm32/stm32-dcmi.c", i32 1794, i32 2}
!275 = !{ptr @.str.143, !274, !"<string literal>", i1 false, i1 false}
!276 = !{ptr @dcmi_graph_notify_bound.__UNIQUE_ID_ddebug358, !274, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!277 = !{ptr @.str.144, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/media/platform/stm32/stm32-dcmi.c", i32 1809, i32 3}
!279 = !{ptr @dcmi_graph_notify_bound._entry, !278, !"_entry", i1 false, i1 false}
!280 = !{ptr @dcmi_graph_notify_bound._entry_ptr, !278, !"_entry_ptr", i1 false, i1 false}
!281 = !{ptr @.str.145, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/media/platform/stm32/stm32-dcmi.c", i32 1812, i32 3}
!283 = !{ptr @dcmi_graph_notify_bound.__UNIQUE_ID_ddebug359, !282, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!284 = !{ptr @.str.146, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/media/platform/stm32/stm32-dcmi.c", i32 1733, i32 3}
!286 = !{ptr @.str.147, !285, !"<string literal>", i1 false, i1 false}
!287 = !{ptr @dcmi_graph_notify_complete._entry, !285, !"_entry", i1 false, i1 false}
!288 = !{ptr @dcmi_graph_notify_complete._entry_ptr, !285, !"_entry_ptr", i1 false, i1 false}
!289 = !{ptr @.str.149, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/media/platform/stm32/stm32-dcmi.c", i32 1741, i32 3}
!291 = !{ptr @dcmi_graph_notify_complete._entry.148, !290, !"_entry", i1 false, i1 false}
!292 = !{ptr @dcmi_graph_notify_complete._entry_ptr.150, !290, !"_entry_ptr", i1 false, i1 false}
!293 = !{ptr @.str.152, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/media/platform/stm32/stm32-dcmi.c", i32 1747, i32 3}
!295 = !{ptr @dcmi_graph_notify_complete._entry.151, !294, !"_entry", i1 false, i1 false}
!296 = !{ptr @dcmi_graph_notify_complete._entry_ptr.153, !294, !"_entry_ptr", i1 false, i1 false}
!297 = !{ptr @.str.155, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/media/platform/stm32/stm32-dcmi.c", i32 1753, i32 3}
!299 = !{ptr @dcmi_graph_notify_complete._entry.154, !298, !"_entry", i1 false, i1 false}
!300 = !{ptr @dcmi_graph_notify_complete._entry_ptr.156, !298, !"_entry_ptr", i1 false, i1 false}
!301 = !{ptr @.str.158, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/media/platform/stm32/stm32-dcmi.c", i32 1759, i32 3}
!303 = !{ptr @dcmi_graph_notify_complete._entry.157, !302, !"_entry", i1 false, i1 false}
!304 = !{ptr @dcmi_graph_notify_complete._entry_ptr.159, !302, !"_entry_ptr", i1 false, i1 false}
!305 = !{ptr @.str.161, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/media/platform/stm32/stm32-dcmi.c", i32 1767, i32 3}
!307 = !{ptr @dcmi_graph_notify_complete._entry.160, !306, !"_entry", i1 false, i1 false}
!308 = !{ptr @dcmi_graph_notify_complete._entry_ptr.162, !306, !"_entry_ptr", i1 false, i1 false}
!309 = !{ptr @.str.163, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/media/platform/stm32/stm32-dcmi.c", i32 1641, i32 6}
!311 = !{ptr @.str.164, !310, !"<string literal>", i1 false, i1 false}
!312 = !{ptr @dcmi_formats_init.__UNIQUE_ID_ddebug353, !310, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!313 = !{ptr @.str.165, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/media/platform/stm32/stm32-dcmi.c", i32 1649, i32 5}
!315 = !{ptr @dcmi_formats_init.__UNIQUE_ID_ddebug354, !314, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!316 = !{ptr @.str.166, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/media/platform/stm32/stm32-dcmi.c", i32 1665, i32 3}
!318 = !{ptr @dcmi_formats_init._entry, !317, !"_entry", i1 false, i1 false}
!319 = !{ptr @dcmi_formats_init._entry_ptr, !317, !"_entry_ptr", i1 false, i1 false}
!320 = !{ptr @dcmi_formats, !321, !"dcmi_formats", i1 false, i1 false}
!321 = !{!"../drivers/media/platform/stm32/stm32-dcmi.c", i32 1580, i32 33}
!322 = !{ptr @.str.167, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/media/platform/stm32/stm32-dcmi.c", i32 1701, i32 3}
!324 = !{ptr @dcmi_framesizes_init._entry, !323, !"_entry", i1 false, i1 false}
!325 = !{ptr @dcmi_framesizes_init._entry_ptr, !323, !"_entry_ptr", i1 false, i1 false}
!326 = !{ptr @.str.168, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/media/platform/stm32/stm32-dcmi.c", i32 1706, i32 2}
!328 = !{ptr @dcmi_framesizes_init.__UNIQUE_ID_ddebug355, !327, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!329 = !{ptr @.str.169, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/media/platform/stm32/stm32-dcmi.c", i32 1715, i32 3}
!331 = !{ptr @dcmi_framesizes_init.__UNIQUE_ID_ddebug356, !330, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!332 = !{ptr @.str.170, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/media/platform/stm32/stm32-dcmi.c", i32 429, i32 3}
!334 = !{ptr @.str.171, !333, !"<string literal>", i1 false, i1 false}
!335 = !{ptr @dcmi_process_jpeg._entry, !333, !"_entry", i1 false, i1 false}
!336 = !{ptr @dcmi_process_jpeg._entry_ptr, !333, !"_entry_ptr", i1 false, i1 false}
!337 = !{ptr @.str.173, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/media/platform/stm32/stm32-dcmi.c", i32 440, i32 3}
!339 = !{ptr @dcmi_process_jpeg._entry.172, !338, !"_entry", i1 false, i1 false}
!340 = !{ptr @dcmi_process_jpeg._entry_ptr.174, !338, !"_entry_ptr", i1 false, i1 false}
!341 = !{ptr @.str.175, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/media/platform/stm32/stm32-dcmi.c", i32 1780, i32 2}
!343 = !{ptr @.str.176, !342, !"<string literal>", i1 false, i1 false}
!344 = !{ptr @dcmi_graph_notify_unbind.__UNIQUE_ID_ddebug357, !342, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!345 = !{ptr @stm32_dcmi_of_match, !346, !"stm32_dcmi_of_match", i1 false, i1 false}
!346 = !{!"../drivers/media/platform/stm32/stm32-dcmi.c", i32 1447, i32 34}
!347 = !{ptr @dcmi_pm_ops, !348, !"dcmi_pm_ops", i1 false, i1 false}
!348 = !{!"../drivers/media/platform/stm32/stm32-dcmi.c", i32 2140, i32 32}
!349 = !{ptr @.str.177, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/media/platform/stm32/stm32-dcmi.c", i32 2113, i32 3}
!351 = !{ptr @.str.178, !350, !"<string literal>", i1 false, i1 false}
!352 = !{ptr @dcmi_runtime_resume._entry, !350, !"_entry", i1 false, i1 false}
!353 = !{ptr @dcmi_runtime_resume._entry_ptr, !350, !"_entry_ptr", i1 false, i1 false}
!354 = !{i32 1, !"wchar_size", i32 2}
!355 = !{i32 1, !"min_enum_size", i32 4}
!356 = !{i32 8, !"branch-target-enforcement", i32 0}
!357 = !{i32 8, !"sign-return-address", i32 0}
!358 = !{i32 8, !"sign-return-address-all", i32 0}
!359 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!360 = !{i32 7, !"uwtable", i32 1}
!361 = !{i32 7, !"frame-pointer", i32 2}
!362 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!363 = !{i64 2148773676, i64 2148773681, i64 2148773694, i64 2148773738, i64 2148773772, i64 2148773793}
!364 = !{!"auto-init"}
!365 = !{i8 0, i8 2}
!366 = !{i64 2148291280}
!367 = !{i64 776103, i64 776128, i64 776150, i64 776166, i64 776178, i64 776198, i64 776222, i64 776238, i64 776250}
!368 = !{i64 2148291468}
!369 = !{i64 6358266}
!370 = !{i64 6358684}
!371 = !{!"branch_weights", i32 2000, i32 1}
!372 = !{!"branch_weights", i32 1, i32 2000}
