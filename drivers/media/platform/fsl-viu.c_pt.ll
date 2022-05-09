; ModuleID = '/llk/IR_all_yes/drivers/media/platform/fsl-viu.c_pt.bc'
source_filename = "../drivers/media/platform/fsl-viu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.videobuf_queue_ops = type { ptr, ptr, ptr, ptr }
%struct.viu_fmt = type { i32, i32, i32 }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.viu_dev = type { %struct.v4l2_device, %struct.v4l2_ctrl_handler, %struct.mutex, %struct.spinlock, i32, ptr, ptr, %struct.viu_dmaqueue, i32, i32, i32, i32, ptr, i32, %struct.viu_status, %struct.v4l2_framebuffer, ptr, i32, i32, %struct.v4l2_rect, ptr, ptr, i64 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.viu_dmaqueue = type { ptr, %struct.list_head, %struct.list_head, %struct.timer_list }
%struct.viu_status = type { i32, i32, i32, i32, i32, i32 }
%struct.v4l2_framebuffer = type { i32, i32, ptr, %struct.anon.93 }
%struct.anon.93 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.viu_buf = type { %struct.videobuf_buffer, ptr }
%struct.videobuf_buffer = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.wait_queue_head, i32, i64, i32, i32, i32, i32, ptr, i32, ptr }
%struct.viu_reg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.viu_fh = type { %struct.v4l2_fh, ptr, %struct.videobuf_queue, %struct.spinlock, %struct.v4l2_window, [1 x %struct.v4l2_clip], ptr, i32, i32, i32, i32 }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.videobuf_queue = type { %struct.mutex, ptr, ptr, ptr, %struct.wait_queue_head, i32, i32, i32, i32, [32 x ptr], ptr, ptr, i8, %struct.list_head, i32, ptr, ptr }
%struct.v4l2_window = type { %struct.v4l2_rect, i32, i32, ptr, i32, ptr, i8 }
%struct.v4l2_clip = type { %struct.v4l2_rect, ptr }
%struct.poll_table_struct = type { ptr, i32 }
%struct.videobuf_qtype_ops = type { i32, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_format = type { i32, %union.anon.87 }
%union.anon.87 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.89, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.89 = type { i8 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_input = type { i32, [32 x i8], i32, i32, i32, i64, i32, i32, [3 x i32] }

@reg_val.0 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@reg_val.1 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@reg_val.2 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@reg_val.3 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@buffer_activate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 398, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017viu: buffer_activate [%p/%d]: dma addr 0x%lx\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"buffer_activate\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/media/platform/fsl-viu.c\00", [63 x i8] zeroinitializer }, align 32
@buffer_activate._entry_ptr = internal global ptr @buffer_activate._entry, section ".printk_index", align 4
@buffer_activate._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 414, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017viu: doesn't support color depth(%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@buffer_activate._entry_ptr.5 = internal global ptr @buffer_activate._entry.3, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@viu_activate_next_buf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 957, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017viu: start another queued buffer: 0x%p\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"viu_activate_next_buf\00", [42 x i8] zeroinitializer }, align 32
@viu_activate_next_buf._entry_ptr = internal global ptr @viu_activate_next_buf._entry, section ".printk_index", align 4
@viu_activate_next_buf._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 964, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@viu_activate_next_buf._entry_ptr.9 = internal global ptr @viu_activate_next_buf._entry.8, section ".printk_index", align 4
@viu_default_settings._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 980, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017viu: status reg: 0x%08x, field base: 0x%08x\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"viu_default_settings\00", [43 x i8] zeroinitializer }, align 32
@viu_default_settings._entry_ptr = internal global ptr @viu_default_settings._entry, section ".printk_index", align 4
@__initcall__kmod_fsl_viu__294_1594_viu_of_platform_driver_init6 = internal global ptr @viu_of_platform_driver_init, section ".initcall6.init", align 4
@viu_of_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @viu_of_probe, ptr @viu_of_remove, ptr null, ptr @viu_suspend, ptr @viu_resume, %struct.device_driver { ptr @.str.13, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mpc512x_viu_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_viu_of_platform_driver_exit = internal global ptr @viu_of_platform_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description295 = internal constant [44 x i8] c"fsl_viu.description=Freescale Video-In(VIU)\00", section ".modinfo", align 1
@__UNIQUE_ID_author296 = internal constant [28 x i8] c"fsl_viu.author=Hongjun Chen\00", section ".modinfo", align 1
@__UNIQUE_ID_file297 = internal constant [44 x i8] c"fsl_viu.file=drivers/media/platform/fsl-viu\00", section ".modinfo", align 1
@__UNIQUE_ID_license298 = internal constant [20 x i8] c"fsl_viu.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version299 = internal constant [22 x i8] c"fsl_viu.version=0.5.1\00", section ".modinfo", align 1
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"fsl_viu\00", [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0.5.1\00", [26 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str.12, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.13, ptr @.str.14 }, section "__modver", align 4
@mpc512x_viu_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,mpc5121-viu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@viu_of_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 1383, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Can't parse device node resource\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"viu_of_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@viu_of_probe._entry_ptr = internal global ptr @viu_of_probe._entry, section ".printk_index", align 4
@viu_of_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.16, ptr @.str.2, i32 1389, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Error while mapping the irq\0A\00", [35 x i8] zeroinitializer }, align 32
@viu_of_probe._entry_ptr.21 = internal global ptr @viu_of_probe._entry.19, section ".printk_index", align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@viu_of_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.16, ptr @.str.2, i32 1396, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Error while requesting mem region\0A\00", [61 x i8] zeroinitializer }, align 32
@viu_of_probe._entry_ptr.24 = internal global ptr @viu_of_probe._entry.22, section ".printk_index", align 4
@viu_of_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.16, ptr @.str.2, i32 1404, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Can't map register set\0A\00", [40 x i8] zeroinitializer }, align 32
@viu_of_probe._entry_ptr.27 = internal global ptr @viu_of_probe._entry.25, section ".printk_index", align 4
@viu_of_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.16, ptr @.str.2, i32 1412, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Can't allocate private structure\0A\00", [62 x i8] zeroinitializer }, align 32
@viu_of_probe._entry_ptr.30 = internal global ptr @viu_of_probe._entry.28, section ".printk_index", align 4
@viu_of_probe._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.16, ptr @.str.2, i32 1429, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"v4l2_device_register() failed: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@viu_of_probe._entry_ptr.35 = internal global ptr @viu_of_probe._entry.33, section ".printk_index", align 4
@viu_of_probe._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.16, ptr @.str.2, i32 1436, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"couldn't get i2c adapter\0A\00", [38 x i8] zeroinitializer }, align 32
@viu_of_probe._entry_ptr.38 = internal global ptr @viu_of_probe._entry.36, section ".printk_index", align 4
@viu_of_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.39 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"fsl_viu:1440:(&viu_dev->hdl)->_lock\00", [60 x i8] zeroinitializer }, align 32
@viu_of_probe._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.16, ptr @.str.2, i32 1443, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"couldn't register control\0A\00", [37 x i8] zeroinitializer }, align 32
@viu_of_probe._entry_ptr.42 = internal global ptr @viu_of_probe._entry.40, section ".printk_index", align 4
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"saa7113\00", [24 x i8] zeroinitializer }, align 32
@viu_of_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.44 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"(&viu_dev->vidq.timeout)\00", [39 x i8] zeroinitializer }, align 32
@viu_template = internal constant { %struct.video_device, [344 x i8] } { %struct.video_device { %struct.media_entity zeroinitializer, ptr null, %struct.media_pipeline zeroinitializer, ptr @viu_fops, i32 83886085, %struct.device zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [32 x i8] c"FSL viu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 -1, i16 0, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, i32 0, i64 4351, ptr @video_device_release, ptr @viu_ioctl_ops, [6 x i32] zeroinitializer, ptr null }, [344 x i8] zeroinitializer }, align 32
@viu_of_probe.__key.45 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.46 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&viu_dev->lock\00", [17 x i8] zeroinitializer }, align 32
@viu_of_probe.__key.47 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.48 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&viu_dev->slock\00", [16 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ipg\00", [28 x i8] zeroinitializer }, align 32
@viu_of_probe._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.16, ptr @.str.2, i32 1487, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to lookup the clock!\0A\00", [35 x i8] zeroinitializer }, align 32
@viu_of_probe._entry_ptr.52 = internal global ptr @viu_of_probe._entry.50, section ".printk_index", align 4
@viu_of_probe._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.16, ptr @.str.2, i32 1493, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to enable the clock!\0A\00", [35 x i8] zeroinitializer }, align 32
@viu_of_probe._entry_ptr.55 = internal global ptr @viu_of_probe._entry.53, section ".printk_index", align 4
@.str.56 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"viu\00", [28 x i8] zeroinitializer }, align 32
@viu_of_probe._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.16, ptr @.str.2, i32 1503, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Request VIU IRQ failed.\0A\00", [39 x i8] zeroinitializer }, align 32
@viu_of_probe._entry_ptr.59 = internal global ptr @viu_of_probe._entry.57, section ".printk_index", align 4
@viu_of_probe._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.16, ptr @.str.2, i32 1510, ptr @.str.62, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Freescale VIU Video Capture Board\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@viu_of_probe._entry_ptr.63 = internal global ptr @viu_of_probe._entry.60, section ".printk_index", align 4
@viu_vid_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.2, i32 348, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017viu: viu/0: [%p/%d] timeout\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"viu_vid_timeout\00", [16 x i8] zeroinitializer }, align 32
@viu_vid_timeout._entry_ptr = internal global ptr @viu_vid_timeout._entry, section ".printk_index", align 4
@restart_video_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.2, i32 288, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\017viu: %s vidq=%p\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"restart_video_queue\00", [44 x i8] zeroinitializer }, align 32
@restart_video_queue._entry_ptr = internal global ptr @restart_video_queue._entry, section ".printk_index", align 4
@restart_video_queue._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.67, ptr @.str.2, i32 292, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017viu: restart_queue [%p/%d]: restart dma\0A\00", [53 x i8] zeroinitializer }, align 32
@restart_video_queue._entry_ptr.70 = internal global ptr @restart_video_queue._entry.68, section ".printk_index", align 4
@restart_video_queue._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.67, ptr @.str.2, i32 314, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017viu: Restarting video dma\0A\00", [35 x i8] zeroinitializer }, align 32
@restart_video_queue._entry_ptr.73 = internal global ptr @restart_video_queue._entry.71, section ".printk_index", align 4
@restart_video_queue._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.67, ptr @.str.2, i32 321, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017viu: [%p/%d] restart_queue - first active\0A\00", [51 x i8] zeroinitializer }, align 32
@restart_video_queue._entry_ptr.76 = internal global ptr @restart_video_queue._entry.74, section ".printk_index", align 4
@restart_video_queue._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.67, ptr @.str.2, i32 329, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017viu: [%p/%d] restart_queue - move to active\0A\00", [49 x i8] zeroinitializer }, align 32
@restart_video_queue._entry_ptr.79 = internal global ptr @restart_video_queue._entry.77, section ".printk_index", align 4
@viu_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr @viu_read, ptr null, ptr @viu_poll, ptr @video_ioctl2, ptr null, ptr @viu_mmap, ptr @viu_open, ptr @viu_release }, [60 x i8] zeroinitializer }, align 32
@viu_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @vidioc_querycap, ptr @vidioc_enum_fmt, ptr @vidioc_enum_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_g_fmt_cap, ptr @vidioc_g_fmt_overlay, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_s_fmt_cap, ptr @vidioc_s_fmt_overlay, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_try_fmt_cap, ptr @vidioc_try_fmt_overlay, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_reqbufs, ptr @vidioc_querybuf, ptr @vidioc_qbuf, ptr null, ptr @vidioc_dqbuf, ptr null, ptr null, ptr @vidioc_overlay, ptr @vidioc_g_fbuf, ptr @vidioc_s_fbuf, ptr @vidioc_streamon, ptr @vidioc_streamoff, ptr @vidioc_g_std, ptr @vidioc_s_std, ptr @vidioc_querystd, ptr @vidioc_enum_input, ptr @vidioc_g_input, ptr @vidioc_s_input, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_log_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, [120 x i8] zeroinitializer }, align 32
@viu_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.2, i32 1226, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\017viu: %s\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"viu_read\00", [23 x i8] zeroinitializer }, align 32
@viu_read._entry_ptr = internal global ptr @viu_read._entry, section ".printk_index", align 4
@viu_mmap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.2, i32 1304, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017viu: mmap called, vma=%p\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"viu_mmap\00", [23 x i8] zeroinitializer }, align 32
@viu_mmap._entry_ptr = internal global ptr @viu_mmap._entry, section ".printk_index", align 4
@viu_mmap._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.83, ptr @.str.2, i32 1314, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017viu: vma start=0x%08lx, size=%ld, ret=%d\0A\00", [52 x i8] zeroinitializer }, align 32
@viu_mmap._entry_ptr.86 = internal global ptr @viu_mmap._entry.84, section ".printk_index", align 4
@viu_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str.2, i32 1154, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017viu: viu: open (minor=%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"viu_open\00", [23 x i8] zeroinitializer }, align 32
@viu_open._entry_ptr = internal global ptr @viu_open._entry, section ".printk_index", align 4
@viu_open._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.88, ptr @.str.2, i32 1165, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017viu: open minor=%d type=%s users=%d\0A\00", [57 x i8] zeroinitializer }, align 32
@viu_open._entry_ptr.91 = internal global ptr @viu_open._entry.89, section ".printk_index", align 4
@viu_open._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.88, ptr @.str.2, i32 1191, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017viu: Open: fh=%p, dev=%p, dev->vidq=%p\0A\00", [54 x i8] zeroinitializer }, align 32
@viu_open._entry_ptr.94 = internal global ptr @viu_open._entry.92, section ".printk_index", align 4
@viu_open._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.88, ptr @.str.2, i32 1193, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017viu: Open: list_empty queued=%d\0A\00", [61 x i8] zeroinitializer }, align 32
@viu_open._entry_ptr.97 = internal global ptr @viu_open._entry.95, section ".printk_index", align 4
@viu_open._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.88, ptr @.str.2, i32 1195, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017viu: Open: list_empty active=%d\0A\00", [61 x i8] zeroinitializer }, align 32
@viu_open._entry_ptr.100 = internal global ptr @viu_open._entry.98, section ".printk_index", align 4
@viu_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.101 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&fh->vbq_lock\00", [18 x i8] zeroinitializer }, align 32
@viu_video_qops = internal constant { %struct.videobuf_queue_ops, [16 x i8] } { %struct.videobuf_queue_ops { ptr @buffer_setup, ptr @buffer_prepare, ptr @buffer_queue, ptr @buffer_release }, [16 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@formats = internal global { [2 x %struct.viu_fmt], [40 x i8] } { [2 x %struct.viu_fmt] [%struct.viu_fmt { i32 1346520914, i32 1346520914, i32 16 }, %struct.viu_fmt { i32 876758866, i32 876758866, i32 32 }], [40 x i8] zeroinitializer }, align 32
@format_by_fourcc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.103, ptr @.str.2, i32 236, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017viu: unknown pixelformat:'%4.4s'\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"format_by_fourcc\00", [47 x i8] zeroinitializer }, align 32
@format_by_fourcc._entry_ptr = internal global ptr @format_by_fourcc._entry, section ".printk_index", align 4
@buffer_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.105, ptr @.str.2, i32 369, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017viu: %s, count=%d, size=%d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"buffer_setup\00", [19 x i8] zeroinitializer }, align 32
@buffer_setup._entry_ptr = internal global ptr @buffer_setup._entry, section ".printk_index", align 4
@buffer_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.107, ptr @.str.2, i32 493, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017viu: adding vb queue=%p\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"buffer_queue\00", [19 x i8] zeroinitializer }, align 32
@buffer_queue._entry_ptr = internal global ptr @buffer_queue._entry, section ".printk_index", align 4
@buffer_queue._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.107, ptr @.str.2, i32 495, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017viu: vidq pointer 0x%p, queued 0x%p\0A\00", [57 x i8] zeroinitializer }, align 32
@buffer_queue._entry_ptr.110 = internal global ptr @buffer_queue._entry.108, section ".printk_index", align 4
@buffer_queue._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.107, ptr @.str.2, i32 498, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017viu: dev %p, queued: self %p, next %p, head %p\0A\00", [46 x i8] zeroinitializer }, align 32
@buffer_queue._entry_ptr.113 = internal global ptr @buffer_queue._entry.111, section ".printk_index", align 4
@buffer_queue._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.107, ptr @.str.2, i32 502, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017viu: [%p/%d] buffer_queue - append to queued\0A\00", [48 x i8] zeroinitializer }, align 32
@buffer_queue._entry_ptr.116 = internal global ptr @buffer_queue._entry.114, section ".printk_index", align 4
@buffer_queue._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.107, ptr @.str.2, i32 504, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017viu: adding vb active=%p\0A\00", [36 x i8] zeroinitializer }, align 32
@buffer_queue._entry_ptr.119 = internal global ptr @buffer_queue._entry.117, section ".printk_index", align 4
@buffer_queue._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.107, ptr @.str.2, i32 509, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017viu: [%p/%d] buffer_queue - first active\0A\00", [52 x i8] zeroinitializer }, align 32
@buffer_queue._entry_ptr.122 = internal global ptr @buffer_queue._entry.120, section ".printk_index", align 4
@buffer_queue._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.107, ptr @.str.2, i32 513, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017viu: adding vb queue2=%p\0A\00", [36 x i8] zeroinitializer }, align 32
@buffer_queue._entry_ptr.125 = internal global ptr @buffer_queue._entry.123, section ".printk_index", align 4
@buffer_queue._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.107, ptr @.str.2, i32 521, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017viu: [%p/%d] buffer_queue - append to active\0A\00", [48 x i8] zeroinitializer }, align 32
@buffer_queue._entry_ptr.128 = internal global ptr @buffer_queue._entry.126, section ".printk_index", align 4
@buffer_queue._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.107, ptr @.str.2, i32 526, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017viu: [%p/%d] buffer_queue - first queued\0A\00", [52 x i8] zeroinitializer }, align 32
@buffer_queue._entry_ptr.131 = internal global ptr @buffer_queue._entry.129, section ".printk_index", align 4
@viu_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.133, ptr @.str.2, i32 1280, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017viu: close (minor=%d, users=%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"viu_release\00", [20 x i8] zeroinitializer }, align 32
@viu_release._entry_ptr = internal global ptr @viu_release._entry, section ".printk_index", align 4
@.str.134 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"platform:viu\00", [19 x i8] zeroinitializer }, align 32
@viu_setup_preview._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.136, ptr @.str.2, i32 703, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\017viu: %s %dx%d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"viu_setup_preview\00", [46 x i8] zeroinitializer }, align 32
@viu_setup_preview._entry_ptr = internal global ptr @viu_setup_preview._entry, section ".printk_index", align 4
@viu_setup_preview._entry.137 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.136, ptr @.str.2, i32 724, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017viu: device doesn't support color depth(%d)\0A\00", [49 x i8] zeroinitializer }, align 32
@viu_setup_preview._entry_ptr.139 = internal global ptr @viu_setup_preview._entry.137, section ".printk_index", align 4
@vidioc_try_fmt_cap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.141, ptr @.str.2, i32 598, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017viu: Fourcc format (0x%08x) invalid.\00", [57 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vidioc_try_fmt_cap\00", [45 x i8] zeroinitializer }, align 32
@vidioc_try_fmt_cap._entry_ptr = internal global ptr @vidioc_try_fmt_cap._entry, section ".printk_index", align 4
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@.str.142 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Camera\00", [25 x i8] zeroinitializer }, align 32
@viu_intr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.144, ptr @.str.2, i32 1096, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017viu: Err: error(%d), times:%d!\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"viu_intr\00", [23 x i8] zeroinitializer }, align 32
@viu_intr._entry_ptr = internal global ptr @viu_intr._entry, section ".printk_index", align 4
@viu_intr._entry.145 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.144, ptr @.str.2, i32 1106, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017viu: VIU DMA end interrupt times: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@viu_intr._entry_ptr.147 = internal global ptr @viu_intr._entry.145, section ".printk_index", align 4
@viu_intr._entry.148 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.144, ptr @.str.2, i32 1115, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017viu: VIU field interrupt times: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@viu_intr._entry_ptr.150 = internal global ptr @viu_intr._entry.148, section ".printk_index", align 4
@viu_intr._entry.151 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.144, ptr @.str.2, i32 1124, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017viu: VIU vsync interrupt times: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@viu_intr._entry_ptr.153 = internal global ptr @viu_intr._entry.151, section ".printk_index", align 4
@viu_capture_intr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.155, ptr @.str.2, i32 1032, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017viu: irq: field %d, done %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"viu_capture_intr\00", [47 x i8] zeroinitializer }, align 32
@viu_capture_intr._entry_ptr = internal global ptr @viu_capture_intr._entry, section ".printk_index", align 4
@viu_capture_intr._entry.156 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.155, ptr @.str.2, i32 1036, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017viu: activate first buf\0A\00", [37 x i8] zeroinitializer }, align 32
@viu_capture_intr._entry_ptr.158 = internal global ptr @viu_capture_intr._entry.156, section ".printk_index", align 4
@viu_capture_intr._entry.159 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.155, ptr @.str.2, i32 1039, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017viu: wait field 0\0A\00", [43 x i8] zeroinitializer }, align 32
@viu_capture_intr._entry_ptr.161 = internal global ptr @viu_capture_intr._entry.159, section ".printk_index", align 4
@viu_capture_intr._entry.162 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.155, ptr @.str.2, i32 1050, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017viu: field 1, 0x%lx, dev field %d\0A\00", [59 x i8] zeroinitializer }, align 32
@viu_capture_intr._entry_ptr.164 = internal global ptr @viu_capture_intr._entry.162, section ".printk_index", align 4
@viu_capture_intr._entry.165 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.166, ptr @.str.155, ptr @.str.2, i32 1068, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017viu: viu/0: [%p/%d] 0x%lx/0x%lx: dma complete\0A\00", [47 x i8] zeroinitializer }, align 32
@viu_capture_intr._entry_ptr.167 = internal global ptr @viu_capture_intr._entry.165, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.168 = internal global [7 x i64] [i64 5, i64 32, i64 4, i64 5, i64 6, i64 8, i64 9]
@__sancov_gen_cov_switch_values.169 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.170 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.171 = internal global [7 x i64] [i64 5, i64 32, i64 4, i64 5, i64 6, i64 8, i64 9]
@___asan_gen_.172 = private unnamed_addr constant [10 x i8] c"reg_val.0\00", align 1
@___asan_gen_.173 = private unnamed_addr constant [10 x i8] c"reg_val.1\00", align 1
@___asan_gen_.174 = private unnamed_addr constant [10 x i8] c"reg_val.2\00", align 1
@___asan_gen_.175 = private unnamed_addr constant [10 x i8] c"reg_val.3\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 397, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 413, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 957, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 964, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 979, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant [23 x i8] c"viu_of_platform_driver\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1581, i32 31 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1599, i32 1 }
@___asan_gen_.227 = private unnamed_addr constant [21 x i8] c"mpc512x_viu_of_match\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1573, i32 34 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1383, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1389, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1396, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1404, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1412, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1429, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1436, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1440, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1443, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1450, i32 4 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1452, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant [13 x i8] c"viu_template\00", align 1
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1359, i32 34 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1470, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1472, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1485, i32 31 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1487, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1493, i32 3 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1502, i32 45 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1503, i32 3 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1510, i32 2 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 348, i32 3 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 288, i32 2 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 291, i32 3 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 314, i32 4 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 320, i32 4 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 328, i32 4 }
@___asan_gen_.392 = private unnamed_addr constant [9 x i8] c"viu_fops\00", align 1
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1319, i32 42 }
@___asan_gen_.395 = private unnamed_addr constant [14 x i8] c"viu_ioctl_ops\00", align 1
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1329, i32 36 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1226, i32 2 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1304, i32 2 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1311, i32 2 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1154, i32 2 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1164, i32 2 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1191, i32 2 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1192, i32 2 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1194, i32 2 }
@___asan_gen_.455 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1208, i32 2 }
@___asan_gen_.461 = private unnamed_addr constant [15 x i8] c"viu_video_qops\00", align 1
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 542, i32 40 }
@___asan_gen_.464 = private unnamed_addr constant [8 x i8] c"formats\00", align 1
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 58, i32 23 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 236, i32 2 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 369, i32 2 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 493, i32 3 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 494, i32 3 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 496, i32 3 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 501, i32 3 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 504, i32 3 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 508, i32 3 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 513, i32 3 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 520, i32 4 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 525, i32 4 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1279, i32 2 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 557, i32 25 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 702, i32 2 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 723, i32 3 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 597, i32 3 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 926, i32 21 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1095, i32 4 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1105, i32 3 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1114, i32 3 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1123, i32 3 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1031, i32 3 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1036, i32 5 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1039, i32 5 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1049, i32 5 }
@___asan_gen_.635 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.638 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.639 = private constant [36 x i8] c"../drivers/media/platform/fsl-viu.c\00", align 1
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1065, i32 3 }
@llvm.compiler.used = appending global [223 x ptr] [ptr @__UNIQUE_ID_author296, ptr @__UNIQUE_ID_description295, ptr @__UNIQUE_ID_file297, ptr @__UNIQUE_ID_license298, ptr @__UNIQUE_ID_version299, ptr @__exitcall_viu_of_platform_driver_exit, ptr @__initcall__kmod_fsl_viu__294_1594_viu_of_platform_driver_init6, ptr @__modver_attr, ptr @buffer_activate._entry, ptr @buffer_activate._entry.3, ptr @buffer_activate._entry_ptr, ptr @buffer_activate._entry_ptr.5, ptr @buffer_queue._entry, ptr @buffer_queue._entry.108, ptr @buffer_queue._entry.111, ptr @buffer_queue._entry.114, ptr @buffer_queue._entry.117, ptr @buffer_queue._entry.120, ptr @buffer_queue._entry.123, ptr @buffer_queue._entry.126, ptr @buffer_queue._entry.129, ptr @buffer_queue._entry_ptr, ptr @buffer_queue._entry_ptr.110, ptr @buffer_queue._entry_ptr.113, ptr @buffer_queue._entry_ptr.116, ptr @buffer_queue._entry_ptr.119, ptr @buffer_queue._entry_ptr.122, ptr @buffer_queue._entry_ptr.125, ptr @buffer_queue._entry_ptr.128, ptr @buffer_queue._entry_ptr.131, ptr @buffer_setup._entry, ptr @buffer_setup._entry_ptr, ptr @format_by_fourcc._entry, ptr @format_by_fourcc._entry_ptr, ptr @restart_video_queue._entry, ptr @restart_video_queue._entry.68, ptr @restart_video_queue._entry.71, ptr @restart_video_queue._entry.74, ptr @restart_video_queue._entry.77, ptr @restart_video_queue._entry_ptr, ptr @restart_video_queue._entry_ptr.70, ptr @restart_video_queue._entry_ptr.73, ptr @restart_video_queue._entry_ptr.76, ptr @restart_video_queue._entry_ptr.79, ptr @vidioc_try_fmt_cap._entry, ptr @vidioc_try_fmt_cap._entry_ptr, ptr @viu_activate_next_buf._entry, ptr @viu_activate_next_buf._entry.8, ptr @viu_activate_next_buf._entry_ptr, ptr @viu_activate_next_buf._entry_ptr.9, ptr @viu_capture_intr._entry, ptr @viu_capture_intr._entry.156, ptr @viu_capture_intr._entry.159, ptr @viu_capture_intr._entry.162, ptr @viu_capture_intr._entry.165, ptr @viu_capture_intr._entry_ptr, ptr @viu_capture_intr._entry_ptr.158, ptr @viu_capture_intr._entry_ptr.161, ptr @viu_capture_intr._entry_ptr.164, ptr @viu_capture_intr._entry_ptr.167, ptr @viu_default_settings._entry, ptr @viu_default_settings._entry_ptr, ptr @viu_intr._entry, ptr @viu_intr._entry.145, ptr @viu_intr._entry.148, ptr @viu_intr._entry.151, ptr @viu_intr._entry_ptr, ptr @viu_intr._entry_ptr.147, ptr @viu_intr._entry_ptr.150, ptr @viu_intr._entry_ptr.153, ptr @viu_mmap._entry, ptr @viu_mmap._entry.84, ptr @viu_mmap._entry_ptr, ptr @viu_mmap._entry_ptr.86, ptr @viu_of_platform_driver_exit, ptr @viu_of_probe._entry, ptr @viu_of_probe._entry.19, ptr @viu_of_probe._entry.22, ptr @viu_of_probe._entry.25, ptr @viu_of_probe._entry.28, ptr @viu_of_probe._entry.33, ptr @viu_of_probe._entry.36, ptr @viu_of_probe._entry.40, ptr @viu_of_probe._entry.50, ptr @viu_of_probe._entry.53, ptr @viu_of_probe._entry.57, ptr @viu_of_probe._entry.60, ptr @viu_of_probe._entry_ptr, ptr @viu_of_probe._entry_ptr.21, ptr @viu_of_probe._entry_ptr.24, ptr @viu_of_probe._entry_ptr.27, ptr @viu_of_probe._entry_ptr.30, ptr @viu_of_probe._entry_ptr.35, ptr @viu_of_probe._entry_ptr.38, ptr @viu_of_probe._entry_ptr.42, ptr @viu_of_probe._entry_ptr.52, ptr @viu_of_probe._entry_ptr.55, ptr @viu_of_probe._entry_ptr.59, ptr @viu_of_probe._entry_ptr.63, ptr @viu_open._entry, ptr @viu_open._entry.89, ptr @viu_open._entry.92, ptr @viu_open._entry.95, ptr @viu_open._entry.98, ptr @viu_open._entry_ptr, ptr @viu_open._entry_ptr.100, ptr @viu_open._entry_ptr.91, ptr @viu_open._entry_ptr.94, ptr @viu_open._entry_ptr.97, ptr @viu_read._entry, ptr @viu_read._entry_ptr, ptr @viu_release._entry, ptr @viu_release._entry_ptr, ptr @viu_setup_preview._entry, ptr @viu_setup_preview._entry.137, ptr @viu_setup_preview._entry_ptr, ptr @viu_setup_preview._entry_ptr.139, ptr @viu_vid_timeout._entry, ptr @viu_vid_timeout._entry_ptr, ptr @reg_val.0, ptr @reg_val.1, ptr @reg_val.2, ptr @reg_val.3, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.10, ptr @.str.11, ptr @viu_of_platform_driver, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @mpc512x_viu_of_match, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.34, ptr @.str.37, ptr @viu_of_probe._key, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @viu_of_probe.__key, ptr @.str.44, ptr @viu_template, ptr @viu_of_probe.__key.45, ptr @.str.46, ptr @viu_of_probe.__key.47, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.54, ptr @.str.56, ptr @.str.58, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.69, ptr @.str.72, ptr @.str.75, ptr @.str.78, ptr @viu_fops, ptr @viu_ioctl_ops, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.85, ptr @.str.87, ptr @.str.88, ptr @.str.90, ptr @.str.93, ptr @.str.96, ptr @.str.99, ptr @viu_open.__key, ptr @.str.101, ptr @viu_video_qops, ptr @formats, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.109, ptr @.str.112, ptr @.str.115, ptr @.str.118, ptr @.str.121, ptr @.str.124, ptr @.str.127, ptr @.str.130, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.138, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.146, ptr @.str.149, ptr @.str.152, ptr @.str.154, ptr @.str.155, ptr @.str.157, ptr @.str.160, ptr @.str.163, ptr @.str.166], section "llvm.metadata"
@0 = internal global [159 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_val.0 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_val.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_val.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_val.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buffer_activate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buffer_activate._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viu_activate_next_buf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viu_activate_next_buf._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viu_default_settings._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viu_of_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpc512x_viu_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viu_of_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viu_of_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viu_of_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viu_of_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viu_of_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viu_of_probe._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viu_of_probe._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viu_of_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viu_of_probe._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viu_of_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viu_template to i32), i32 1352, i32 1696, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viu_of_probe.__key.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viu_of_probe.__key.47 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viu_of_probe._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viu_of_probe._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viu_of_probe._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viu_of_probe._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viu_vid_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @restart_video_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @restart_video_queue._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @restart_video_queue._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @restart_video_queue._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @restart_video_queue._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viu_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viu_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viu_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viu_mmap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viu_mmap._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viu_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viu_open._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viu_open._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viu_open._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viu_open._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viu_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viu_video_qops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @formats to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @format_by_fourcc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buffer_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buffer_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buffer_queue._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buffer_queue._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buffer_queue._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buffer_queue._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buffer_queue._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buffer_queue._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buffer_queue._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buffer_queue._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viu_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viu_setup_preview._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viu_setup_preview._entry.137 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_try_fmt_cap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viu_intr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viu_intr._entry.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viu_intr._entry.148 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viu_intr._entry.151 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viu_capture_intr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viu_capture_intr._entry.156 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viu_capture_intr._entry.159 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viu_capture_intr._entry.162 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viu_capture_intr._entry.165 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @buffer_activate(ptr noundef %dev, ptr noundef %buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %vr1 = getelementptr inbounds %struct.viu_dev, ptr %dev, i32 0, i32 12
  %0 = ptrtoint ptr %vr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vr1, align 8
  %call = tail call i32 @videobuf_to_dma_contig(ptr noundef %buf) #13
  store i32 %call, ptr @reg_val.1, align 4
  store i32 0, ptr @reg_val.0, align 4
  %fmt = getelementptr inbounds %struct.viu_buf, ptr %buf, i32 0, i32 1
  %2 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fmt, align 8
  %depth = getelementptr inbounds %struct.viu_fmt, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %depth, align 4
  %shr = ashr i32 %5, 3
  %6 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr, label %do.end17 [
    i32 2, label %entry.sw.epilog_crit_edge
    i32 4, label %sw.bb8
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  store i32 -2147483648, ptr @reg_val.0, align 4
  br label %sw.epilog

do.end17:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %mul19 = and i32 %5, -8
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %mul19) #16
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb8, %entry.sw.epilog_crit_edge
  %.sink83 = phi i32 [ 2, %sw.bb8 ], [ 1, %entry.sw.epilog_crit_edge ]
  %width10 = getelementptr inbounds %struct.videobuf_buffer, ptr %buf, i32 0, i32 2
  %7 = ptrtoint ptr %width10 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %width10, align 8
  %mul11 = shl i32 %8, %.sink83
  store i32 %mul11, ptr @reg_val.2, align 4
  %height = getelementptr inbounds %struct.videobuf_buffer, ptr %buf, i32 0, i32 3
  %9 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %height, align 4
  %11 = shl i32 %10, 15
  %shl = and i32 %11, -65536
  %width26 = getelementptr inbounds %struct.videobuf_buffer, ptr %buf, i32 0, i32 2
  %12 = ptrtoint ptr %width26 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %width26, align 8
  %or27 = or i32 %shl, %13
  store i32 %or27, ptr @reg_val.3, align 4
  %14 = load i32, ptr @reg_val.0, align 4
  %or28 = or i32 %14, 134222080
  store i32 %or28, ptr @reg_val.0, align 4
  %state = getelementptr inbounds %struct.videobuf_buffer, ptr %buf, i32 0, i32 7
  %15 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 3, ptr %state, align 4
  %field = getelementptr inbounds %struct.videobuf_buffer, ptr %buf, i32 0, i32 6
  %16 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %field, align 8
  %capfield = getelementptr inbounds %struct.viu_dev, ptr %dev, i32 0, i32 8
  %18 = ptrtoint ptr %capfield to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %capfield, align 8
  %19 = load i32, ptr %field, align 8
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.168)
  switch i32 %19, label %if.then49 [
    i32 4, label %sw.epilog.do.body51_crit_edge
    i32 8, label %sw.epilog.do.body51_crit_edge84
    i32 9, label %sw.epilog.do.body51_crit_edge85
    i32 5, label %sw.epilog.do.body51_crit_edge86
    i32 6, label %sw.epilog.do.body51_crit_edge87
  ]

sw.epilog.do.body51_crit_edge87:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body51

sw.epilog.do.body51_crit_edge86:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body51

sw.epilog.do.body51_crit_edge85:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body51

sw.epilog.do.body51_crit_edge84:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body51

sw.epilog.do.body51_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body51

if.then49:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  store i32 0, ptr @reg_val.2, align 4
  br label %do.body51

do.body51:                                        ; preds = %if.then49, %sw.epilog.do.body51_crit_edge, %sw.epilog.do.body51_crit_edge84, %sw.epilog.do.body51_crit_edge85, %sw.epilog.do.body51_crit_edge86, %sw.epilog.do.body51_crit_edge87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !312
  tail call void @arm_heavy_mb() #13
  %21 = load i32, ptr @reg_val.2, align 4
  %dma_inc = getelementptr inbounds %struct.viu_reg, ptr %1, i32 0, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dma_inc, i32 %21) #13, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !314
  tail call void @arm_heavy_mb() #13
  %22 = load i32, ptr @reg_val.3, align 4
  %picture_count = getelementptr inbounds %struct.viu_reg, ptr %1, i32 0, i32 7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %picture_count, i32 %22) #13, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !315
  tail call void @arm_heavy_mb() #13
  %23 = load i32, ptr @reg_val.1, align 4
  %field_base_addr = getelementptr inbounds %struct.viu_reg, ptr %1, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %field_base_addr, i32 %23) #13, !srcloc !313
  %timeout = getelementptr inbounds %struct.viu_dev, ptr %dev, i32 0, i32 7, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %24 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %24, 50
  %call61 = tail call i32 @mod_timer(ptr noundef %timeout, i32 noundef %add) #13
  br label %cleanup

cleanup:                                          ; preds = %do.body51, %do.end17
  %retval.0 = phi i32 [ -22, %do.end17 ], [ 0, %do.body51 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @videobuf_to_dma_contig(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @viu_activate_overlay(ptr noundef %vr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !316
  tail call void @arm_heavy_mb() #13
  %0 = load i32, ptr @reg_val.1, align 4
  %field_base_addr = getelementptr inbounds %struct.viu_reg, ptr %vr, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %field_base_addr, i32 %0) #13, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !317
  tail call void @arm_heavy_mb() #13
  %1 = load i32, ptr @reg_val.2, align 4
  %dma_inc = getelementptr inbounds %struct.viu_reg, ptr %vr, i32 0, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dma_inc, i32 %1) #13, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %2 = load i32, ptr @reg_val.3, align 4
  %picture_count = getelementptr inbounds %struct.viu_reg, ptr %vr, i32 0, i32 7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %picture_count, i32 %2) #13, !srcloc !313
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @viu_activate_next_buf(ptr noundef %dev, ptr noundef %viuq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %active = getelementptr inbounds %struct.viu_dmaqueue, ptr %viuq, i32 0, i32 1
  %0 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %active, align 4
  %cmp.i.not = icmp eq ptr %1, %active
  br i1 %cmp.i.not, label %if.else, label %entry.if.end34.sink.split_crit_edge

entry.if.end34.sink.split_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34.sink.split

if.else:                                          ; preds = %entry
  %queued = getelementptr inbounds %struct.viu_dmaqueue, ptr %viuq, i32 0, i32 2
  %2 = ptrtoint ptr %queued to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %queued, align 4
  %cmp.i46.not = icmp eq ptr %3, %queued
  br i1 %cmp.i46.not, label %if.else.if.end34_crit_edge, label %if.then11

if.else.if.end34_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34

if.then11:                                        ; preds = %if.else
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %3) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.then11.list_del.exit_crit_edge

if.then11.list_del.exit_crit_edge:                ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then11.list_del.exit_crit_edge
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %prev.i48 = getelementptr inbounds %struct.viu_dmaqueue, ptr %viuq, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %prev.i48 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i48, align 4
  %call.i.i49 = tail call zeroext i1 @__list_add_valid(ptr noundef %3, ptr noundef %13, ptr noundef %active) #13
  br i1 %call.i.i49, label %if.end.i.i50, label %list_del.exit.list_add_tail.exit_crit_edge

list_del.exit.list_add_tail.exit_crit_edge:       ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit

if.end.i.i50:                                     ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %prev.i48 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %3, ptr %prev.i48, align 4
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %active, ptr %3, align 4
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %3, ptr %13, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i50, %list_del.exit.list_add_tail.exit_crit_edge
  %state = getelementptr i8, ptr %3, i32 -12
  %18 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 3, ptr %state, align 4
  br label %if.end34.sink.split

if.end34.sink.split:                              ; preds = %list_add_tail.exit, %entry.if.end34.sink.split_crit_edge
  %.pn = phi ptr [ %3, %list_add_tail.exit ], [ %1, %entry.if.end34.sink.split_crit_edge ]
  %add.ptr16.sink = getelementptr i8, ptr %.pn, i32 -40
  %call32 = tail call i32 @buffer_activate(ptr noundef %dev, ptr noundef %add.ptr16.sink)
  br label %if.end34

if.end34:                                         ; preds = %if.end34.sink.split, %if.else.if.end34_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @viu_default_settings(ptr noundef %vr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !319
  tail call void @arm_heavy_mb() #13
  %luminance = getelementptr inbounds %struct.viu_reg, ptr %vr, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %luminance, i32 -1793940908) #13, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !320
  tail call void @arm_heavy_mb() #13
  %chroma_r = getelementptr inbounds %struct.viu_reg, ptr %vr, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %chroma_r, i32 53542912) #13, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !321
  tail call void @arm_heavy_mb() #13
  %chroma_g = getelementptr inbounds %struct.viu_reg, ptr %vr, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %chroma_g, i32 106958648) #13, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !322
  tail call void @arm_heavy_mb() #13
  %chroma_b = getelementptr inbounds %struct.viu_reg, ptr %vr, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %chroma_b, i32 1033) #13, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !323
  tail call void @arm_heavy_mb() #13
  %alpha = getelementptr inbounds %struct.viu_reg, ptr %vr, i32 0, i32 9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %alpha, i32 255) #13, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !324
  tail call void @arm_heavy_mb() #13
  %req_alarm = getelementptr inbounds %struct.viu_reg, ptr %vr, i32 0, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %req_alarm, i32 144) #13, !srcloc !313
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @viu_of_platform_driver_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @viu_of_platform_driver, ptr noundef null) #13
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @viu_of_platform_driver_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @platform_driver_unregister(ptr noundef nonnull @viu_of_platform_driver) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @viu_of_probe(ptr noundef %op) #5 align 64 {
entry:
  %r = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %r) #13
  %dev = getelementptr inbounds %struct.platform_device, ptr %op, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %op, i32 0, i32 3, i32 27
  %0 = call ptr @memset(ptr %r, i32 255, i32 32)
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %call = call i32 @of_address_to_resource(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %r) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node, align 8
  %call4 = call i32 @irq_of_parse_and_map(ptr noundef %4, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %do.end9, label %if.end11

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20) #16
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %5 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %r, align 4
  %call13 = call ptr @__devm_request_region(ptr noundef %dev, ptr noundef nonnull @iomem_resource, i32 noundef %6, i32 noundef 40, ptr noundef nonnull @.str.13) #13
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %do.end18, label %if.end20

do.end18:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23) #16
  br label %err_irq

if.end20:                                         ; preds = %if.end11
  %7 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %r, align 4
  %call23 = call ptr @devm_ioremap(ptr noundef %dev, i32 noundef %8, i32 noundef 40) #13
  %tobool24.not = icmp eq ptr %call23, null
  br i1 %tobool24.not, label %do.end28, label %if.end30

do.end28:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26) #16
  br label %err_irq

if.end30:                                         ; preds = %if.end20
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 664, i32 noundef 2848) #13
  %tobool33.not = icmp eq ptr %call.i, null
  br i1 %tobool33.not, label %do.end37, label %if.end39

do.end37:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.29) #16
  br label %err_irq

if.end39:                                         ; preds = %if.end30
  %vr = getelementptr inbounds %struct.viu_dev, ptr %call.i, i32 0, i32 12
  %9 = ptrtoint ptr %vr to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call23, ptr %vr, align 8
  %irq = getelementptr inbounds %struct.viu_dev, ptr %call.i, i32 0, i32 13
  %10 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call4, ptr %irq, align 4
  %dev41 = getelementptr inbounds %struct.viu_dev, ptr %call.i, i32 0, i32 5
  %11 = ptrtoint ptr %dev41 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %dev, ptr %dev41, align 4
  %active = getelementptr inbounds %struct.viu_dev, ptr %call.i, i32 0, i32 7, i32 1
  %12 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %active, ptr %active, align 4
  %prev.i = getelementptr inbounds %struct.viu_dev, ptr %call.i, i32 0, i32 7, i32 1, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %active, ptr %prev.i, align 4
  %queued = getelementptr inbounds %struct.viu_dev, ptr %call.i, i32 0, i32 7, i32 2
  %14 = ptrtoint ptr %queued to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %queued, ptr %queued, align 4
  %prev.i225 = getelementptr inbounds %struct.viu_dev, ptr %call.i, i32 0, i32 7, i32 2, i32 1
  %15 = ptrtoint ptr %prev.i225 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %queued, ptr %prev.i225, align 4
  %name = getelementptr inbounds %struct.v4l2_device, ptr %call.i, i32 0, i32 4
  %16 = ptrtoint ptr %name to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 1447646464, ptr %name, align 1
  %call46 = call i32 @v4l2_device_register(ptr noundef %dev, ptr noundef nonnull %call.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp = icmp slt i32 %call46, 0
  br i1 %cmp, label %do.end50, label %if.end52

do.end50:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.34, i32 noundef %call46) #16
  br label %err_irq

if.end52:                                         ; preds = %if.end39
  %call53 = call ptr @i2c_get_adapter(i32 noundef 0) #13
  %tobool54.not = icmp eq ptr %call53, null
  br i1 %tobool54.not, label %if.then55, label %if.end60

if.then55:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.37) #16
  br label %err_v4l2

if.end60:                                         ; preds = %if.end52
  %hdl = getelementptr inbounds %struct.viu_dev, ptr %call.i, i32 0, i32 1
  %call61 = call i32 @v4l2_ctrl_handler_init_class(ptr noundef %hdl, i32 noundef 5, ptr noundef nonnull @viu_of_probe._key, ptr noundef nonnull @.str.39) #13
  %error = getelementptr inbounds %struct.viu_dev, ptr %call.i, i32 0, i32 1, i32 9
  %17 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool63.not = icmp eq i32 %18, 0
  br i1 %tobool63.not, label %if.end71, label %if.then64

if.then64:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.41) #16
  br label %err_i2c

if.end71:                                         ; preds = %if.end60
  %ctrl_handler = getelementptr inbounds %struct.v4l2_device, ptr %call.i, i32 0, i32 6
  %19 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %hdl, ptr %ctrl_handler, align 4
  %call75 = call ptr @v4l2_i2c_new_subdev(ptr noundef nonnull %call.i, ptr noundef nonnull %call53, ptr noundef nonnull @.str.43, i8 noundef zeroext 37, ptr noundef null) #13
  %decoder = getelementptr inbounds %struct.viu_dev, ptr %call.i, i32 0, i32 21
  %20 = ptrtoint ptr %decoder to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call75, ptr %decoder, align 4
  %timeout = getelementptr inbounds %struct.viu_dev, ptr %call.i, i32 0, i32 7, i32 3
  call void @init_timer_key(ptr noundef %timeout, ptr noundef nonnull @viu_vid_timeout, i32 noundef 0, ptr noundef nonnull @.str.44, ptr noundef nonnull @viu_of_probe.__key) #13
  %std = getelementptr inbounds %struct.viu_dev, ptr %call.i, i32 0, i32 22
  %21 = ptrtoint ptr %std to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 4096, ptr %std, align 8
  %first = getelementptr inbounds %struct.viu_dev, ptr %call.i, i32 0, i32 10
  %22 = ptrtoint ptr %first to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %first, align 8
  %call80 = call ptr @video_device_alloc() #13
  %cmp81 = icmp eq ptr %call80, null
  br i1 %cmp81, label %if.end71.err_hdl_crit_edge, label %if.end83

if.end71.err_hdl_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_hdl

if.end83:                                         ; preds = %if.end71
  %23 = call ptr @memcpy(ptr %call80, ptr @viu_template, i32 1352)
  %v4l2_dev85 = getelementptr inbounds %struct.video_device, ptr %call80, i32 0, i32 7
  %24 = ptrtoint ptr %v4l2_dev85 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i, ptr %v4l2_dev85, align 4
  %vdev86 = getelementptr inbounds %struct.viu_dev, ptr %call.i, i32 0, i32 6
  %25 = ptrtoint ptr %vdev86 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call80, ptr %vdev86, align 8
  %lock = getelementptr inbounds %struct.viu_dev, ptr %call.i, i32 0, i32 2
  call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.46, ptr noundef nonnull @viu_of_probe.__key.45) #13
  %26 = ptrtoint ptr %vdev86 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %vdev86, align 8
  %lock92 = getelementptr inbounds %struct.video_device, ptr %27, i32 0, i32 26
  %28 = ptrtoint ptr %lock92 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %lock, ptr %lock92, align 8
  %slock = getelementptr inbounds %struct.viu_dev, ptr %call.i, i32 0, i32 3
  call void @__raw_spin_lock_init(ptr noundef %slock, ptr noundef nonnull @.str.48, ptr noundef nonnull @viu_of_probe.__key.47, i16 noundef signext 3) #13
  %29 = ptrtoint ptr %vdev86 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %vdev86, align 8
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %30, i32 0, i32 5, i32 8
  %31 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  %32 = ptrtoint ptr %vdev86 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %vdev86, align 8
  %fops.i = getelementptr inbounds %struct.video_device, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %fops.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %fops.i, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %call.i226 = call i32 @__video_register_device(ptr noundef %33, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef %37) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i226)
  %cmp101 = icmp slt i32 %call.i226, 0
  br i1 %cmp101, label %if.then102, label %if.end104

if.then102:                                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #15
  %38 = ptrtoint ptr %vdev86 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %vdev86, align 8
  call void @video_device_release(ptr noundef %39) #13
  br label %err_unlock

if.end104:                                        ; preds = %if.end83
  %call106 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.49) #13
  %cmp.i = icmp ugt ptr %call106, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end111, label %if.end114

do.end111:                                        ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.51) #16
  %40 = ptrtoint ptr %call106 to i32
  br label %err_vdev

if.end114:                                        ; preds = %if.end104
  %call115 = call fastcc i32 @clk_prepare_enable(ptr noundef %call106)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %tobool116.not = icmp eq i32 %call115, 0
  br i1 %tobool116.not, label %if.end122, label %do.end120

do.end120:                                        ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.54) #16
  br label %err_vdev

if.end122:                                        ; preds = %if.end114
  %clk123 = getelementptr inbounds %struct.viu_dev, ptr %call.i, i32 0, i32 20
  %41 = ptrtoint ptr %clk123 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call106, ptr %clk123, align 8
  %42 = ptrtoint ptr %vr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %vr, align 8
  call fastcc void @viu_reset(ptr noundef %43)
  %44 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %irq, align 4
  %call.i227 = call i32 @request_threaded_irq(i32 noundef %45, ptr noundef nonnull @viu_intr, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.56, ptr noundef nonnull %call.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i227)
  %tobool127.not = icmp eq i32 %call.i227, 0
  br i1 %tobool127.not, label %if.end133, label %do.end131

do.end131:                                        ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.58) #16
  %46 = ptrtoint ptr %clk123 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %clk123, align 8
  call void @clk_disable(ptr noundef %47) #13
  call void @clk_unprepare(ptr noundef %47) #13
  br label %err_vdev

if.end133:                                        ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #15
  call void @mutex_unlock(ptr noundef %lock) #13
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.61) #16
  br label %cleanup

err_vdev:                                         ; preds = %do.end131, %do.end120, %do.end111
  %ret.0 = phi i32 [ %40, %do.end111 ], [ %call115, %do.end120 ], [ -19, %do.end131 ]
  %48 = ptrtoint ptr %vdev86 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %vdev86, align 8
  call void @video_unregister_device(ptr noundef %49) #13
  br label %err_unlock

err_unlock:                                       ; preds = %err_vdev, %if.then102
  %ret.1 = phi i32 [ %call.i226, %if.then102 ], [ %ret.0, %err_vdev ]
  call void @mutex_unlock(ptr noundef %lock) #13
  br label %err_hdl

err_hdl:                                          ; preds = %err_unlock, %if.end71.err_hdl_crit_edge
  %ret.2 = phi i32 [ %ret.1, %err_unlock ], [ -12, %if.end71.err_hdl_crit_edge ]
  call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #13
  br label %err_i2c

err_i2c:                                          ; preds = %err_hdl, %if.then64
  %ret.3 = phi i32 [ %18, %if.then64 ], [ %ret.2, %err_hdl ]
  call void @i2c_put_adapter(ptr noundef nonnull %call53) #13
  br label %err_v4l2

err_v4l2:                                         ; preds = %err_i2c, %if.then55
  %ret.4 = phi i32 [ %ret.3, %err_i2c ], [ -14, %if.then55 ]
  call void @v4l2_device_unregister(ptr noundef nonnull %call.i) #13
  br label %err_irq

err_irq:                                          ; preds = %err_v4l2, %do.end50, %do.end37, %do.end28, %do.end18
  %ret.5 = phi i32 [ %call46, %do.end50 ], [ %ret.4, %err_v4l2 ], [ -12, %do.end37 ], [ -12, %do.end28 ], [ -16, %do.end18 ]
  call void @irq_dispose_mapping(i32 noundef %call4) #13
  br label %cleanup

cleanup:                                          ; preds = %err_irq, %if.end133, %do.end9, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ %ret.5, %err_irq ], [ 0, %if.end133 ], [ -22, %do.end9 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %r) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @viu_of_remove(ptr nocapture noundef readonly %op) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %op, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %subdevs = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %subdevs, align 4
  %dev_priv.i = getelementptr i8, ptr %3, i32 72
  %4 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_priv.i, align 4
  %irq = getelementptr inbounds %struct.viu_dev, ptr %1, i32 0, i32 13
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  %call5 = tail call ptr @free_irq(i32 noundef %7, ptr noundef %1) #13
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 4
  tail call void @irq_dispose_mapping(i32 noundef %9) #13
  %clk = getelementptr inbounds %struct.viu_dev, ptr %1, i32 0, i32 20
  %10 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %11) #13
  tail call void @clk_unprepare(ptr noundef %11) #13
  %hdl = getelementptr inbounds %struct.viu_dev, ptr %1, i32 0, i32 1
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #13
  %vdev = getelementptr inbounds %struct.viu_dev, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vdev, align 8
  tail call void @video_unregister_device(ptr noundef %13) #13
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 3
  %14 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %adapter, align 8
  tail call void @i2c_put_adapter(ptr noundef %15) #13
  tail call void @v4l2_device_unregister(ptr noundef %1) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @viu_suspend(ptr nocapture noundef readonly %op, [1 x i32] %state.coerce) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %op, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %clk = getelementptr inbounds %struct.viu_dev, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %3) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @viu_resume(ptr nocapture noundef readonly %op) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %op, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %clk = getelementptr inbounds %struct.viu_dev, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 8
  %call1 = tail call i32 @clk_enable(ptr noundef %3) #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_request_region(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_get_adapter(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_i2c_new_subdev(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @viu_vid_timeout(ptr noundef %t) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %active = getelementptr i8, ptr %t, i32 -16
  %0 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %active, align 4
  %cmp.i.not22 = icmp eq ptr %1, %active
  br i1 %cmp.i.not22, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %2 = phi ptr [ %13, %list_del.exit.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #13
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %2, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %state = getelementptr i8, ptr %2, i32 -12
  %11 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 5, ptr %state, align 4
  %done = getelementptr i8, ptr %2, i32 8
  tail call void @__wake_up(ptr noundef %done, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  %12 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %active, align 4
  %cmp.i.not = icmp eq ptr %13, %active
  br i1 %cmp.i.not, label %list_del.exit.while.end_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

list_del.exit.while.end_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %list_del.exit.while.end_crit_edge, %entry.while.end_crit_edge
  %vidq1 = getelementptr i8, ptr %t, i32 -20
  %14 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %active, align 4
  %cmp.i.not.i = icmp eq ptr %15, %active
  br i1 %cmp.i.not.i, label %for.cond46.preheader.i, label %do.end18.i

for.cond46.preheader.i:                           ; preds = %while.end
  %queued.i = getelementptr i8, ptr %t, i32 -8
  %16 = ptrtoint ptr %queued.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %queued.i, align 4
  %cmp.i2.not21.i = icmp eq ptr %17, %queued.i
  br i1 %cmp.i2.not21.i, label %for.cond46.preheader.i.restart_video_queue.exit_crit_edge, label %if.end50.lr.ph.i

for.cond46.preheader.i.restart_video_queue.exit_crit_edge: ; preds = %for.cond46.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %restart_video_queue.exit

if.end50.lr.ph.i:                                 ; preds = %for.cond46.preheader.i
  %prev.i2.i12.i = getelementptr i8, ptr %t, i32 -12
  br label %if.end50.i

do.end18.i:                                       ; preds = %while.end
  %18 = ptrtoint ptr %vidq1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %vidq1, align 4
  tail call fastcc void @viu_stop_dma(ptr noundef %19) #13
  %20 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %active, align 4
  %cmp32.not18.i = icmp eq ptr %21, %active
  br i1 %cmp32.not18.i, label %do.end18.i.for.end.i_crit_edge, label %do.end18.i.for.body.i_crit_edge

do.end18.i.for.body.i_crit_edge:                  ; preds = %do.end18.i
  br label %for.body.i

do.end18.i.for.end.i_crit_edge:                   ; preds = %do.end18.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %do.end18.i.for.body.i_crit_edge
  %.pn.in19.i = phi ptr [ %.pn.i, %list_del.exit.i.for.body.i_crit_edge ], [ %21, %do.end18.i.for.body.i_crit_edge ]
  %22 = ptrtoint ptr %.pn.in19.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn.i = load ptr, ptr %.pn.in19.i, align 8
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in19.i) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in19.i, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i.i.i, align 4
  %25 = ptrtoint ptr %.pn.in19.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %.pn.in19.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev1.i.i.i.i, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %26, ptr %24, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %29 = ptrtoint ptr %.pn.in19.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in19.i, align 4
  %prev.i.i21 = getelementptr inbounds %struct.list_head, ptr %.pn.in19.i, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i.i21 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i21, align 4
  %state.i = getelementptr i8, ptr %.pn.in19.i, i32 -12
  %31 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 5, ptr %state.i, align 4
  %done.i = getelementptr i8, ptr %.pn.in19.i, i32 8
  tail call void @__wake_up(ptr noundef %done.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  %cmp32.not.i = icmp eq ptr %.pn.i, %active
  br i1 %cmp32.not.i, label %list_del.exit.i.for.end.i_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

list_del.exit.i.for.end.i_crit_edge:              ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.end.i:                                        ; preds = %list_del.exit.i.for.end.i_crit_edge, %do.end18.i.for.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %32 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %32, 50
  %call44.i = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add.i) #13
  br label %restart_video_queue.exit

if.end50.i:                                       ; preds = %if.end125.i.if.end50.i_crit_edge, %if.end50.lr.ph.i
  %33 = phi ptr [ %17, %if.end50.lr.ph.i ], [ %81, %if.end125.i.if.end50.i_crit_edge ]
  %prev.122.i = phi ptr [ null, %if.end50.lr.ph.i ], [ %add.ptr55.i, %if.end125.i.if.end50.i_crit_edge ]
  %add.ptr55.i = getelementptr i8, ptr %33, i32 -40
  %cmp56.i = icmp eq ptr %prev.122.i, null
  br i1 %cmp56.i, label %if.then57.i, label %if.else.i

if.then57.i:                                      ; preds = %if.end50.i
  %call.i.i4.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %33) #13
  br i1 %call.i.i4.i, label %if.end.i.i7.i, label %if.then57.i.__list_del_entry.exit.i.i_crit_edge

if.then57.i.__list_del_entry.exit.i.i_crit_edge:  ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__list_del_entry.exit.i.i

if.end.i.i7.i:                                    ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i5.i = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %prev.i.i5.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i.i5.i, align 4
  %36 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %33, align 4
  %prev1.i.i.i6.i = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %prev1.i.i.i6.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %prev1.i.i.i6.i, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %37, ptr %35, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i7.i, %if.then57.i.__list_del_entry.exit.i.i_crit_edge
  %40 = ptrtoint ptr %prev.i2.i12.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prev.i2.i12.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %33, ptr noundef %41, ptr noundef %active) #13
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge

__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_move_tail.exit.i

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %42 = ptrtoint ptr %prev.i2.i12.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %33, ptr %prev.i2.i12.i, align 4
  %43 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %active, ptr %33, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %44 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %prev3.i.i.i.i, align 4
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %33, ptr %41, align 4
  br label %list_move_tail.exit.i

list_move_tail.exit.i:                            ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge
  %46 = ptrtoint ptr %vidq1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %vidq1, align 4
  tail call fastcc void @viu_stop_dma(ptr noundef %47) #13
  %48 = ptrtoint ptr %vidq1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %vidq1, align 4
  %vr1.i.i = getelementptr inbounds %struct.viu_dev, ptr %49, i32 0, i32 12
  %50 = ptrtoint ptr %vr1.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %vr1.i.i, align 8
  %field.i.i = getelementptr inbounds %struct.viu_dev, ptr %49, i32 0, i32 9
  %52 = ptrtoint ptr %field.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %field.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !325
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 1) #13, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !326
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 256) #13, !srcloc !313
  %state75.i = getelementptr i8, ptr %33, i32 -12
  %53 = ptrtoint ptr %state75.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 3, ptr %state75.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %54 = load volatile i32, ptr @jiffies, align 128
  %add78.i = add i32 %54, 50
  %call79.i = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add78.i) #13
  br label %if.end125.i

if.else.i:                                        ; preds = %if.end50.i
  %width.i = getelementptr inbounds %struct.videobuf_buffer, ptr %prev.122.i, i32 0, i32 2
  %55 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %width.i, align 8
  %width95.i = getelementptr i8, ptr %33, i32 -32
  %57 = ptrtoint ptr %width95.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %width95.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %58)
  %cmp96.i = icmp eq i32 %56, %58
  br i1 %cmp96.i, label %land.lhs.true.i, label %if.else.i.restart_video_queue.exit_crit_edge

if.else.i.restart_video_queue.exit_crit_edge:     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %restart_video_queue.exit

land.lhs.true.i:                                  ; preds = %if.else.i
  %height.i = getelementptr inbounds %struct.videobuf_buffer, ptr %prev.122.i, i32 0, i32 3
  %59 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %height.i, align 4
  %height99.i = getelementptr i8, ptr %33, i32 -28
  %61 = ptrtoint ptr %height99.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %height99.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %62)
  %cmp100.i = icmp eq i32 %60, %62
  br i1 %cmp100.i, label %land.lhs.true101.i, label %land.lhs.true.i.restart_video_queue.exit_crit_edge

land.lhs.true.i.restart_video_queue.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %restart_video_queue.exit

land.lhs.true101.i:                               ; preds = %land.lhs.true.i
  %fmt.i = getelementptr inbounds %struct.viu_buf, ptr %prev.122.i, i32 0, i32 1
  %63 = ptrtoint ptr %fmt.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %fmt.i, align 8
  %fmt102.i = getelementptr i8, ptr %33, i32 104
  %65 = ptrtoint ptr %fmt102.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %fmt102.i, align 8
  %cmp103.i = icmp eq ptr %64, %66
  br i1 %cmp103.i, label %if.then104.i, label %land.lhs.true101.i.restart_video_queue.exit_crit_edge

land.lhs.true101.i.restart_video_queue.exit_crit_edge: ; preds = %land.lhs.true101.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %restart_video_queue.exit

if.then104.i:                                     ; preds = %land.lhs.true101.i
  %call.i.i8.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %33) #13
  br i1 %call.i.i8.i, label %if.end.i.i11.i, label %if.then104.i.__list_del_entry.exit.i14.i_crit_edge

if.then104.i.__list_del_entry.exit.i14.i_crit_edge: ; preds = %if.then104.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__list_del_entry.exit.i14.i

if.end.i.i11.i:                                   ; preds = %if.then104.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i9.i = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %67 = ptrtoint ptr %prev.i.i9.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %prev.i.i9.i, align 4
  %69 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %33, align 4
  %prev1.i.i.i10.i = getelementptr inbounds %struct.list_head, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %prev1.i.i.i10.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %68, ptr %prev1.i.i.i10.i, align 4
  %72 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile ptr %70, ptr %68, align 4
  br label %__list_del_entry.exit.i14.i

__list_del_entry.exit.i14.i:                      ; preds = %if.end.i.i11.i, %if.then104.i.__list_del_entry.exit.i14.i_crit_edge
  %73 = ptrtoint ptr %prev.i2.i12.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %prev.i2.i12.i, align 4
  %call.i.i.i13.i = tail call zeroext i1 @__list_add_valid(ptr noundef %33, ptr noundef %74, ptr noundef %active) #13
  br i1 %call.i.i.i13.i, label %if.end.i.i.i16.i, label %__list_del_entry.exit.i14.i.list_move_tail.exit17.i_crit_edge

__list_del_entry.exit.i14.i.list_move_tail.exit17.i_crit_edge: ; preds = %__list_del_entry.exit.i14.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_move_tail.exit17.i

if.end.i.i.i16.i:                                 ; preds = %__list_del_entry.exit.i14.i
  call void @__sanitizer_cov_trace_pc() #15
  %75 = ptrtoint ptr %prev.i2.i12.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %33, ptr %prev.i2.i12.i, align 4
  %76 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %active, ptr %33, align 4
  %prev3.i.i.i15.i = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %77 = ptrtoint ptr %prev3.i.i.i15.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %74, ptr %prev3.i.i.i15.i, align 4
  %78 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile ptr %33, ptr %74, align 4
  br label %list_move_tail.exit17.i

list_move_tail.exit17.i:                          ; preds = %if.end.i.i.i16.i, %__list_del_entry.exit.i14.i.list_move_tail.exit17.i_crit_edge
  %state109.i = getelementptr i8, ptr %33, i32 -12
  %79 = ptrtoint ptr %state109.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 3, ptr %state109.i, align 4
  br label %if.end125.i

if.end125.i:                                      ; preds = %list_move_tail.exit17.i, %list_move_tail.exit.i
  %80 = ptrtoint ptr %queued.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile ptr, ptr %queued.i, align 4
  %cmp.i2.not.i = icmp eq ptr %81, %queued.i
  br i1 %cmp.i2.not.i, label %if.end125.i.restart_video_queue.exit_crit_edge, label %if.end125.i.if.end50.i_crit_edge

if.end125.i.if.end50.i_crit_edge:                 ; preds = %if.end125.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end50.i

if.end125.i.restart_video_queue.exit_crit_edge:   ; preds = %if.end125.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %restart_video_queue.exit

restart_video_queue.exit:                         ; preds = %if.end125.i.restart_video_queue.exit_crit_edge, %land.lhs.true101.i.restart_video_queue.exit_crit_edge, %land.lhs.true.i.restart_video_queue.exit_crit_edge, %if.else.i.restart_video_queue.exit_crit_edge, %for.end.i, %for.cond46.preheader.i.restart_video_queue.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_device_alloc() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @clk_unprepare(ptr noundef %clk) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @viu_reset(ptr noundef %reg) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !327
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %reg, i32 0) #13, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !328
  tail call void @arm_heavy_mb() #13
  %luminance = getelementptr inbounds %struct.viu_reg, ptr %reg, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %luminance, i32 -1793940908) #13, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !329
  tail call void @arm_heavy_mb() #13
  %chroma_r = getelementptr inbounds %struct.viu_reg, ptr %reg, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %chroma_r, i32 53542912) #13, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !330
  tail call void @arm_heavy_mb() #13
  %chroma_g = getelementptr inbounds %struct.viu_reg, ptr %reg, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %chroma_g, i32 106958648) #13, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !331
  tail call void @arm_heavy_mb() #13
  %chroma_b = getelementptr inbounds %struct.viu_reg, ptr %reg, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %chroma_b, i32 1033) #13, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !332
  tail call void @arm_heavy_mb() #13
  %field_base_addr = getelementptr inbounds %struct.viu_reg, ptr %reg, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %field_base_addr, i32 0) #13, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %dma_inc = getelementptr inbounds %struct.viu_reg, ptr %reg, i32 0, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dma_inc, i32 0) #13, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  tail call void @arm_heavy_mb() #13
  %picture_count = getelementptr inbounds %struct.viu_reg, ptr %reg, i32 0, i32 7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %picture_count, i32 31458000) #13, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !335
  tail call void @arm_heavy_mb() #13
  %req_alarm = getelementptr inbounds %struct.viu_reg, ptr %reg, i32 0, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %req_alarm, i32 144) #13, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !336
  tail call void @arm_heavy_mb() #13
  %alpha = getelementptr inbounds %struct.viu_reg, ptr %reg, i32 0, i32 9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %alpha, i32 255) #13, !srcloc !313
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @viu_intr(i32 noundef %irq, ptr noundef %dev_id) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %vr1 = getelementptr inbounds %struct.viu_dev, ptr %dev_id, i32 0, i32 12
  %0 = ptrtoint ptr %vr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vr1, align 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #13, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !338
  %and = and i32 %2, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end19_crit_edge, label %if.then

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %error_irq = getelementptr inbounds %struct.viu_dev, ptr %dev_id, i32 0, i32 14, i32 5
  %3 = ptrtoint ptr %error_irq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %error_irq, align 4
  %inc = add i32 %4, 1
  store i32 %inc, ptr %error_irq, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !339
  tail call void @arm_heavy_mb() #13
  %and17 = and i32 %2, -4128769
  %or = or i32 %and17, 2097152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %or) #13, !srcloc !313
  br label %if.end19

if.end19:                                         ; preds = %if.then, %entry.if.end19_crit_edge
  %and20 = and i32 %2, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end19.if.end38_crit_edge, label %if.then22

if.end19.if.end38_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  %dma_end_irq = getelementptr inbounds %struct.viu_dev, ptr %dev_id, i32 0, i32 14, i32 4
  %5 = ptrtoint ptr %dma_end_irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dma_end_irq, align 8
  %inc24 = add i32 %6, 1
  store i32 %inc24, ptr %dma_end_irq, align 8
  %dma_done = getelementptr inbounds %struct.viu_dev, ptr %dev_id, i32 0, i32 11
  %7 = ptrtoint ptr %dma_done to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %dma_done, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then22, %if.end19.if.end38_crit_edge
  %and39 = and i32 %2, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.end38.if.end44_crit_edge, label %if.then41

if.end38.if.end44_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end44

if.then41:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #15
  %hsync_irq = getelementptr inbounds %struct.viu_dev, ptr %dev_id, i32 0, i32 14, i32 2
  %8 = ptrtoint ptr %hsync_irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hsync_irq, align 8
  %inc43 = add i32 %9, 1
  store i32 %inc43, ptr %hsync_irq, align 8
  br label %if.end44

if.end44:                                         ; preds = %if.then41, %if.end38.if.end44_crit_edge
  %and45 = and i32 %2, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.end44.if.end63_crit_edge, label %if.then47

if.end44.if.end63_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end63

if.then47:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  %irqs48 = getelementptr inbounds %struct.viu_dev, ptr %dev_id, i32 0, i32 14
  %10 = ptrtoint ptr %irqs48 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irqs48, align 8
  %inc49 = add i32 %11, 1
  store i32 %inc49, ptr %irqs48, align 8
  br label %if.end63

if.end63:                                         ; preds = %if.then47, %if.end44.if.end63_crit_edge
  %and64 = and i32 %2, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %if.end63.if.end69_crit_edge, label %if.then66

if.end63.if.end69_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then66:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #15
  %vstart_irq = getelementptr inbounds %struct.viu_dev, ptr %dev_id, i32 0, i32 14, i32 3
  %12 = ptrtoint ptr %vstart_irq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vstart_irq, align 4
  %inc68 = add i32 %13, 1
  store i32 %inc68, ptr %vstart_irq, align 4
  br label %if.end69

if.end69:                                         ; preds = %if.then66, %if.end63.if.end69_crit_edge
  %and70 = and i32 %2, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %if.end69.if.end88_crit_edge, label %if.then72

if.end69.if.end88_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end88

if.then72:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #15
  %vsync_irq = getelementptr inbounds %struct.viu_dev, ptr %dev_id, i32 0, i32 14, i32 1
  %14 = ptrtoint ptr %vsync_irq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vsync_irq, align 4
  %inc74 = add i32 %15, 1
  store i32 %inc74, ptr %vsync_irq, align 4
  br label %if.end88

if.end88:                                         ; preds = %if.then72, %if.end69.if.end88_crit_edge
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #13, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !340
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !341
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %16) #13, !srcloc !313
  %ovenable = getelementptr inbounds %struct.viu_dev, ptr %dev_id, i32 0, i32 17
  %17 = ptrtoint ptr %ovenable to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ovenable, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool100.not = icmp eq i32 %18, 0
  %19 = ptrtoint ptr %vr1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %vr1, align 8
  br i1 %tobool100.not, label %if.end102, label %if.then101

if.then101:                                       ; preds = %if.end88
  %and.i = and i32 %16, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then101.if.end.i_crit_edge, label %if.then.i

if.then101.if.end.i_crit_edge:                    ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i:                                        ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #15
  %dma_done.i = getelementptr inbounds %struct.viu_dev, ptr %dev_id, i32 0, i32 11
  %21 = ptrtoint ptr %dma_done.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %dma_done.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then101.if.end.i_crit_edge
  %and2.i = and i32 %16, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.end.i.cleanup_crit_edge, label %if.then4.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then4.i:                                       ; preds = %if.end.i
  %dma_done5.i = getelementptr inbounds %struct.viu_dev, ptr %dev_id, i32 0, i32 11
  %22 = ptrtoint ptr %dma_done5.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dma_done5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool6.not.i = icmp eq i32 %23, 0
  br i1 %tobool6.not.i, label %if.else.i, label %if.then7.i

if.then7.i:                                       ; preds = %if.then4.i
  %24 = load i32, ptr @reg_val.1, align 4
  %25 = ptrtoint ptr %dma_done5.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %dma_done5.i, align 4
  %and9.i = and i32 %16, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %if.then7.i.do.body.i_crit_edge, label %if.then11.i

if.then7.i.do.body.i_crit_edge:                   ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i

if.then11.i:                                      ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #15
  %26 = load i32, ptr @reg_val.2, align 4
  %add.i = add i32 %26, %24
  br label %do.body.i

do.body.i:                                        ; preds = %if.then11.i, %if.then7.i.do.body.i_crit_edge
  %addr.0.i = phi i32 [ %add.i, %if.then11.i ], [ %24, %if.then7.i.do.body.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !342
  tail call void @arm_heavy_mb() #13
  %field_base_addr.i = getelementptr inbounds %struct.viu_reg, ptr %20, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %field_base_addr.i, i32 %addr.0.i) #13, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !343
  tail call void @arm_heavy_mb() #13
  %27 = load i32, ptr @reg_val.2, align 4
  %dma_inc.i = getelementptr inbounds %struct.viu_reg, ptr %20, i32 0, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dma_inc.i, i32 %27) #13, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !344
  tail call void @arm_heavy_mb() #13
  %28 = load i32, ptr @reg_val.0, align 4
  %or21.i = or i32 %28, %16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %or21.i) #13, !srcloc !313
  br label %cleanup

if.else.i:                                        ; preds = %if.then4.i
  %and22.i = and i32 %16, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool23.not.i = icmp eq i32 %and22.i, 0
  br i1 %tobool23.not.i, label %if.else.i.cleanup_crit_edge, label %do.body25.i

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body25.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !345
  tail call void @arm_heavy_mb() #13
  %29 = load i32, ptr @reg_val.0, align 4
  %or31.i = or i32 %29, %16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %or31.i) #13, !srcloc !313
  br label %cleanup

if.end102:                                        ; preds = %if.end88
  %and.i135 = and i32 %16, 268435456
  %capfield.i = getelementptr inbounds %struct.viu_dev, ptr %dev_id, i32 0, i32 8
  %30 = ptrtoint ptr %capfield.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %capfield.i, align 8
  %switch.tableidx = add i32 %31, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %32 = icmp ugt i32 %switch.tableidx, 5
  %switch.cast = trunc i32 %switch.tableidx to i6
  %33 = sext i6 %switch.cast to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %33)
  %switch.masked = icmp eq i6 %switch.cast, 3
  %34 = or i1 %32, %switch.masked
  %and13.i = and i32 %16, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool.not.i136 = icmp eq i32 %and13.i, 0
  br i1 %tobool.not.i136, label %if.end102.if.end23.i_crit_edge, label %if.then.i137

if.end102.if.end23.i_crit_edge:                   ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23.i

if.then.i137:                                     ; preds = %if.end102
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i135)
  %cond.i = icmp eq i32 %and.i135, 0
  %field.i = getelementptr inbounds %struct.viu_dev, ptr %dev_id, i32 0, i32 9
  %35 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %field.i, align 4
  br i1 %cond.i, label %land.lhs.true.i, label %land.lhs.true18.i

land.lhs.true.i:                                  ; preds = %if.then.i137
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp15.i = icmp eq i32 %36, 0
  br i1 %cmp15.i, label %land.lhs.true.i.if.then21.i_crit_edge, label %land.lhs.true.i.if.end23.i_crit_edge

land.lhs.true.i.if.end23.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23.i

land.lhs.true.i.if.then21.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then21.i

land.lhs.true18.i:                                ; preds = %if.then.i137
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %36)
  %cmp20.i = icmp eq i32 %36, 1
  br i1 %cmp20.i, label %land.lhs.true18.i.if.then21.i_crit_edge, label %land.lhs.true18.i.if.end23.i_crit_edge

land.lhs.true18.i.if.end23.i_crit_edge:           ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23.i

land.lhs.true18.i.if.then21.i_crit_edge:          ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then21.i

if.then21.i:                                      ; preds = %land.lhs.true18.i.if.then21.i_crit_edge, %land.lhs.true.i.if.then21.i_crit_edge
  %inc.i = add nuw nsw i32 %36, 1
  %37 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %inc.i, ptr %field.i, align 4
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then21.i, %land.lhs.true18.i.if.end23.i_crit_edge, %land.lhs.true.i.if.end23.i_crit_edge, %if.end102.if.end23.i_crit_edge
  %and24.i = and i32 %16, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  br i1 %tobool25.not.i, label %if.end23.i.if.end102.i_crit_edge, label %do.end34.i

if.end23.i.if.end102.i_crit_edge:                 ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end102.i

do.end34.i:                                       ; preds = %if.end23.i
  %first.i = getelementptr inbounds %struct.viu_dev, ptr %dev_id, i32 0, i32 10
  %38 = ptrtoint ptr %first.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %first.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool35.not.i = icmp eq i32 %39, 0
  br i1 %tobool35.not.i, label %if.end68.i, label %if.then41.i, !prof !346

if.then41.i:                                      ; preds = %do.end34.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i135)
  %cmp42.i = icmp eq i32 %and.i135, 0
  br i1 %cmp42.i, label %if.then43.i, label %if.then41.i.cleanup_crit_edge

if.then41.i.cleanup_crit_edge:                    ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then43.i:                                      ; preds = %if.then41.i
  %40 = ptrtoint ptr %first.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %first.i, align 8
  %active.i142 = getelementptr inbounds %struct.viu_dev, ptr %dev_id, i32 0, i32 7, i32 1
  %41 = ptrtoint ptr %active.i142 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile ptr, ptr %active.i142, align 4
  %cmp.i.not.i143 = icmp eq ptr %42, %active.i142
  br i1 %cmp.i.not.i143, label %if.else.i144, label %if.then43.i.if.end34.sink.split.i_crit_edge

if.then43.i.if.end34.sink.split.i_crit_edge:      ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34.sink.split.i

if.else.i144:                                     ; preds = %if.then43.i
  %queued.i = getelementptr inbounds %struct.viu_dev, ptr %dev_id, i32 0, i32 7, i32 2
  %43 = ptrtoint ptr %queued.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile ptr, ptr %queued.i, align 4
  %cmp.i46.not.i = icmp eq ptr %44, %queued.i
  br i1 %cmp.i46.not.i, label %if.else.i144.cleanup_crit_edge, label %if.then11.i146

if.else.i144.cleanup_crit_edge:                   ; preds = %if.else.i144
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then11.i146:                                   ; preds = %if.else.i144
  %call.i.i.i145 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %44) #13
  br i1 %call.i.i.i145, label %if.end.i.i.i149, label %if.then11.i146.list_del.exit.i151_crit_edge

if.then11.i146.list_del.exit.i151_crit_edge:      ; preds = %if.then11.i146
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit.i151

if.end.i.i.i149:                                  ; preds = %if.then11.i146
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i147 = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %prev.i.i.i147 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %prev.i.i.i147, align 4
  %47 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %44, align 4
  %prev1.i.i.i.i148 = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %prev1.i.i.i.i148 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %46, ptr %prev1.i.i.i.i148, align 4
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %48, ptr %46, align 4
  br label %list_del.exit.i151

list_del.exit.i151:                               ; preds = %if.end.i.i.i149, %if.then11.i146.list_del.exit.i151_crit_edge
  %51 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr inttoptr (i32 256 to ptr), ptr %44, align 4
  %prev.i.i150 = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %52 = ptrtoint ptr %prev.i.i150 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i150, align 4
  %prev.i48.i = getelementptr inbounds %struct.viu_dev, ptr %dev_id, i32 0, i32 7, i32 1, i32 1
  %53 = ptrtoint ptr %prev.i48.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %prev.i48.i, align 4
  %call.i.i49.i = tail call zeroext i1 @__list_add_valid(ptr noundef %44, ptr noundef %54, ptr noundef %active.i142) #13
  br i1 %call.i.i49.i, label %if.end.i.i50.i, label %list_del.exit.i151.list_add_tail.exit.i_crit_edge

list_del.exit.i151.list_add_tail.exit.i_crit_edge: ; preds = %list_del.exit.i151
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit.i

if.end.i.i50.i:                                   ; preds = %list_del.exit.i151
  call void @__sanitizer_cov_trace_pc() #15
  %55 = ptrtoint ptr %prev.i48.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %44, ptr %prev.i48.i, align 4
  %56 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %active.i142, ptr %44, align 4
  %57 = ptrtoint ptr %prev.i.i150 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %54, ptr %prev.i.i150, align 4
  %58 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %44, ptr %54, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i50.i, %list_del.exit.i151.list_add_tail.exit.i_crit_edge
  %state.i152 = getelementptr i8, ptr %44, i32 -12
  %59 = ptrtoint ptr %state.i152 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 3, ptr %state.i152, align 4
  br label %if.end34.sink.split.i

if.end34.sink.split.i:                            ; preds = %list_add_tail.exit.i, %if.then43.i.if.end34.sink.split.i_crit_edge
  %.pn.i = phi ptr [ %44, %list_add_tail.exit.i ], [ %42, %if.then43.i.if.end34.sink.split.i_crit_edge ]
  %add.ptr16.sink.i = getelementptr i8, ptr %.pn.i, i32 -40
  %call32.i = tail call i32 @buffer_activate(ptr noundef %dev_id, ptr noundef %add.ptr16.sink.i) #13
  br label %cleanup

if.end68.i:                                       ; preds = %do.end34.i
  %active.i = getelementptr inbounds %struct.viu_dev, ptr %dev_id, i32 0, i32 7, i32 1
  %60 = ptrtoint ptr %active.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile ptr, ptr %active.i, align 4
  %cmp.i.not.i = icmp eq ptr %61, %active.i
  br i1 %cmp.i.not.i, label %if.end68.i.if.end102.i_crit_edge, label %if.then71.i

if.end68.i.if.end102.i_crit_edge:                 ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end102.i

if.then71.i:                                      ; preds = %if.end68.i
  %62 = load i32, ptr @reg_val.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i135)
  %tobool72.not.i = icmp eq i32 %and.i135, 0
  %brmerge.i = or i1 %tobool72.not.i, %34
  br i1 %brmerge.i, label %if.then71.i.do.body89.i_crit_edge, label %if.then75.i

if.then71.i.do.body89.i_crit_edge:                ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body89.i

if.then75.i:                                      ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #15
  %63 = load i32, ptr @reg_val.2, align 4
  %add.i138 = add i32 %63, %62
  br label %do.body89.i

do.body89.i:                                      ; preds = %if.then75.i, %if.then71.i.do.body89.i_crit_edge
  %addr.0.i139 = phi i32 [ %add.i138, %if.then75.i ], [ %62, %if.then71.i.do.body89.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !347
  tail call void @arm_heavy_mb() #13
  %field_base_addr.i140 = getelementptr inbounds %struct.viu_reg, ptr %20, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %field_base_addr.i140, i32 %addr.0.i139) #13, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !348
  tail call void @arm_heavy_mb() #13
  %64 = load i32, ptr @reg_val.2, align 4
  %dma_inc.i141 = getelementptr inbounds %struct.viu_reg, ptr %20, i32 0, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dma_inc.i141, i32 %64) #13, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !349
  tail call void @arm_heavy_mb() #13
  %65 = load i32, ptr @reg_val.0, align 4
  %or100.i = or i32 %65, %16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %or100.i) #13, !srcloc !313
  br label %cleanup

if.end102.i:                                      ; preds = %if.end68.i.if.end102.i_crit_edge, %if.end23.i.if.end102.i_crit_edge
  %66 = and i32 %16, 269484032
  call void @__sanitizer_cov_trace_const_cmp4(i32 269484032, i32 %66)
  %.not191.i = icmp eq i32 %66, 269484032
  br i1 %.not191.i, label %land.lhs.true106.i, label %if.end102.i.cleanup_crit_edge

if.end102.i.cleanup_crit_edge:                    ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true106.i:                               ; preds = %if.end102.i
  %field107.i = getelementptr inbounds %struct.viu_dev, ptr %dev_id, i32 0, i32 9
  %67 = ptrtoint ptr %field107.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %field107.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %68)
  %cmp108.i = icmp eq i32 %68, 2
  br i1 %cmp108.i, label %if.then109.i, label %land.lhs.true106.i.cleanup_crit_edge

land.lhs.true106.i.cleanup_crit_edge:             ; preds = %land.lhs.true106.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then109.i:                                     ; preds = %land.lhs.true106.i
  %69 = ptrtoint ptr %field107.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %field107.i, align 4
  %active111.i = getelementptr inbounds %struct.viu_dev, ptr %dev_id, i32 0, i32 7, i32 1
  %70 = ptrtoint ptr %active111.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %active111.i, align 4
  %done.i = getelementptr i8, ptr %71, i32 8
  %head.i.i = getelementptr i8, ptr %71, i32 52
  %72 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile ptr, ptr %head.i.i, align 4
  %cmp.i.i.not.i = icmp eq ptr %73, %head.i.i
  br i1 %cmp.i.i.not.i, label %if.then109.i.if.end141.i_crit_edge, label %if.then132.i

if.then109.i.if.end141.i_crit_edge:               ; preds = %if.then109.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end141.i

if.then132.i:                                     ; preds = %if.then109.i
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %71) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then132.i.list_del.exit.i_crit_edge

if.then132.i.list_del.exit.i_crit_edge:           ; preds = %if.then132.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then132.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %71, i32 0, i32 1
  %74 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %prev.i.i.i, align 4
  %76 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %71, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %75, ptr %prev1.i.i.i.i, align 4
  %79 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile ptr %77, ptr %75, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then132.i.list_del.exit.i_crit_edge
  %80 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr inttoptr (i32 256 to ptr), ptr %71, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %71, i32 0, i32 1
  %81 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %call.i.i = tail call i64 @ktime_get() #13
  %ts.i = getelementptr i8, ptr %71, i32 64
  %82 = ptrtoint ptr %ts.i to i32
  call void @__asan_store8_noabort(i32 %82)
  store i64 %call.i.i, ptr %ts.i, align 8
  %state.i = getelementptr i8, ptr %71, i32 -12
  %83 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 4, ptr %state.i, align 4
  %field_count.i = getelementptr i8, ptr %71, i32 60
  %84 = ptrtoint ptr %field_count.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %field_count.i, align 4
  %inc138.i = add i32 %85, 1
  store i32 %inc138.i, ptr %field_count.i, align 4
  tail call void @__wake_up(ptr noundef %done.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  br label %if.end141.i

if.end141.i:                                      ; preds = %list_del.exit.i, %if.then109.i.if.end141.i_crit_edge
  %86 = ptrtoint ptr %active111.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile ptr, ptr %active111.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %87, %active111.i
  br i1 %cmp.i.not.i.i, label %if.else.i.i, label %if.end141.i.if.end34.sink.split.i.i_crit_edge

if.end141.i.if.end34.sink.split.i.i_crit_edge:    ; preds = %if.end141.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34.sink.split.i.i

if.else.i.i:                                      ; preds = %if.end141.i
  %queued.i.i = getelementptr inbounds %struct.viu_dev, ptr %dev_id, i32 0, i32 7, i32 2
  %88 = ptrtoint ptr %queued.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile ptr, ptr %queued.i.i, align 4
  %cmp.i46.not.i.i = icmp eq ptr %89, %queued.i.i
  br i1 %cmp.i46.not.i.i, label %if.else.i.i.cleanup_crit_edge, label %if.then11.i.i

if.else.i.i.cleanup_crit_edge:                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then11.i.i:                                    ; preds = %if.else.i.i
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %89) #13
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then11.i.i.list_del.exit.i.i_crit_edge

if.then11.i.i.list_del.exit.i.i_crit_edge:        ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %prev.i.i.i.i, align 4
  %92 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %89, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %91, ptr %prev1.i.i.i.i.i, align 4
  %95 = ptrtoint ptr %91 to i32
  call void @__asan_store4_noabort(i32 %95)
  store volatile ptr %93, ptr %91, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %if.then11.i.i.list_del.exit.i.i_crit_edge
  %96 = ptrtoint ptr %89 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr inttoptr (i32 256 to ptr), ptr %89, align 4
  %prev.i.i190.i = getelementptr inbounds %struct.list_head, ptr %89, i32 0, i32 1
  %97 = ptrtoint ptr %prev.i.i190.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i190.i, align 4
  %prev.i48.i.i = getelementptr inbounds %struct.viu_dev, ptr %dev_id, i32 0, i32 7, i32 1, i32 1
  %98 = ptrtoint ptr %prev.i48.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %prev.i48.i.i, align 4
  %call.i.i49.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %89, ptr noundef %99, ptr noundef %active111.i) #13
  br i1 %call.i.i49.i.i, label %if.end.i.i50.i.i, label %list_del.exit.i.i.list_add_tail.exit.i.i_crit_edge

list_del.exit.i.i.list_add_tail.exit.i.i_crit_edge: ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit.i.i

if.end.i.i50.i.i:                                 ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %100 = ptrtoint ptr %prev.i48.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %89, ptr %prev.i48.i.i, align 4
  %101 = ptrtoint ptr %89 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %active111.i, ptr %89, align 4
  %102 = ptrtoint ptr %prev.i.i190.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %99, ptr %prev.i.i190.i, align 4
  %103 = ptrtoint ptr %99 to i32
  call void @__asan_store4_noabort(i32 %103)
  store volatile ptr %89, ptr %99, align 4
  br label %list_add_tail.exit.i.i

list_add_tail.exit.i.i:                           ; preds = %if.end.i.i50.i.i, %list_del.exit.i.i.list_add_tail.exit.i.i_crit_edge
  %state.i.i = getelementptr i8, ptr %89, i32 -12
  %104 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 3, ptr %state.i.i, align 4
  br label %if.end34.sink.split.i.i

if.end34.sink.split.i.i:                          ; preds = %list_add_tail.exit.i.i, %if.end141.i.if.end34.sink.split.i.i_crit_edge
  %.pn.i.i = phi ptr [ %89, %list_add_tail.exit.i.i ], [ %87, %if.end141.i.if.end34.sink.split.i.i_crit_edge ]
  %add.ptr16.sink.i.i = getelementptr i8, ptr %.pn.i.i, i32 -40
  %call32.i.i = tail call i32 @buffer_activate(ptr noundef %dev_id, ptr noundef %add.ptr16.sink.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end34.sink.split.i.i, %if.else.i.i.cleanup_crit_edge, %land.lhs.true106.i.cleanup_crit_edge, %if.end102.i.cleanup_crit_edge, %do.body89.i, %if.end34.sink.split.i, %if.else.i144.cleanup_crit_edge, %if.then41.i.cleanup_crit_edge, %do.body25.i, %if.else.i.cleanup_crit_edge, %do.body.i, %if.end.i.cleanup_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_put_adapter(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_dispose_mapping(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @viu_stop_dma(ptr nocapture noundef %dev) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %vr1 = getelementptr inbounds %struct.viu_dev, ptr %dev, i32 0, i32 12
  %0 = ptrtoint ptr %vr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vr1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !350
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 0) #13, !srcloc !313
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #13, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !351
  %and = and i32 %2, 4128768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body4

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !352
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %and) #13, !srcloc !313
  br label %if.end

if.end:                                           ; preds = %do.body4, %entry.if.end_crit_edge
  %and9 = and i32 %2, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end.if.end39_crit_edge, label %if.end.do.body12_crit_edge

if.end.do.body12_crit_edge:                       ; preds = %if.end
  br label %do.body12

if.end.if.end39_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39

do.body12:                                        ; preds = %do.cond21.do.body12_crit_edge, %if.end.do.body12_crit_edge
  %cnt.0 = phi i32 [ %dec, %do.cond21.do.body12_crit_edge ], [ 100, %if.end.do.body12_crit_edge ]
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #13, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !353
  %and17 = and i32 %3, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %do.cond21, label %do.end23

do.cond21:                                        ; preds = %do.body12
  %dec = add nsw i32 %cnt.0, -1
  %tobool22.not = icmp eq i32 %cnt.0, 0
  br i1 %tobool22.not, label %do.cond21.do.body25_crit_edge, label %do.cond21.do.body12_crit_edge

do.cond21.do.body12_crit_edge:                    ; preds = %do.cond21
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body12

do.cond21.do.body25_crit_edge:                    ; preds = %do.cond21
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body25

do.end23:                                         ; preds = %do.body12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cnt.0)
  %cmp = icmp slt i32 %cnt.0, 0
  br i1 %cmp, label %do.end23.do.body25_crit_edge, label %do.body33

do.end23.do.body25_crit_edge:                     ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body25

do.body25:                                        ; preds = %do.end23.do.body25_crit_edge, %do.cond21.do.body25_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !354
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 1) #13, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !355
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 0) #13, !srcloc !313
  br label %if.end39

do.body33:                                        ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !356
  tail call void @arm_heavy_mb() #13
  %and36 = and i32 %3, 4128768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %and36) #13, !srcloc !313
  br label %if.end39

if.end39:                                         ; preds = %do.body33, %do.body25, %if.end.if.end39_crit_edge
  %field = getelementptr inbounds %struct.viu_dev, ptr %dev, i32 0, i32 9
  %4 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %field, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @viu_read(ptr nocapture noundef readonly %file, ptr noundef %data, i32 noundef %count, ptr noundef %ppos) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dev1 = getelementptr inbounds %struct.viu_fh, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %ovenable = getelementptr inbounds %struct.viu_dev, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %ovenable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ovenable, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then5

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %ovenable to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %ovenable, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %entry.if.end7_crit_edge
  %type = getelementptr inbounds %struct.viu_fh, ptr %1, i32 0, i32 10
  %7 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp8 = icmp eq i32 %8, 1
  br i1 %cmp8, label %if.then9, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then9:                                         ; preds = %if.end7
  %lock = getelementptr inbounds %struct.viu_dev, ptr %3, i32 0, i32 2
  %call10 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %lock, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.then9.cleanup_crit_edge

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end13:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #15
  %vr1.i = getelementptr inbounds %struct.viu_dev, ptr %3, i32 0, i32 12
  %9 = ptrtoint ptr %vr1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vr1.i, align 8
  %field.i = getelementptr inbounds %struct.viu_dev, ptr %3, i32 0, i32 9
  %11 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %field.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !325
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 1) #13, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !326
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 256) #13, !srcloc !313
  %vb_vidq = getelementptr inbounds %struct.viu_fh, ptr %1, i32 0, i32 2
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %12 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %f_flags, align 4
  %and = and i32 %13, 2048
  %call14 = tail call i32 @videobuf_read_stream(ptr noundef %vb_vidq, ptr noundef %data, i32 noundef %count, ptr noundef %ppos, i32 noundef 0, i32 noundef %and) #13
  tail call void @mutex_unlock(ptr noundef %lock) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then9.cleanup_crit_edge, %if.end7.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14, %if.end13 ], [ -512, %if.then9.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @viu_poll(ptr noundef %file, ptr noundef %wait) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %vb_vidq = getelementptr inbounds %struct.viu_fh, ptr %1, i32 0, i32 2
  %dev1 = getelementptr inbounds %struct.viu_fh, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %entry.poll_requested_events.exit_crit_edge, label %cond.true.i

entry.poll_requested_events.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %poll_requested_events.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %_key.i = getelementptr inbounds %struct.poll_table_struct, ptr %wait, i32 0, i32 1
  %4 = ptrtoint ptr %_key.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %_key.i, align 4
  %phi.bo = and i32 %5, 65
  br label %poll_requested_events.exit

poll_requested_events.exit:                       ; preds = %cond.true.i, %entry.poll_requested_events.exit_crit_edge
  %cond.i = phi i32 [ %phi.bo, %cond.true.i ], [ 65, %entry.poll_requested_events.exit_crit_edge ]
  %call2 = tail call i32 @v4l2_ctrl_poll(ptr noundef %file, ptr noundef %wait) #13
  %type = getelementptr inbounds %struct.viu_fh, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.not = icmp eq i32 %7, 1
  br i1 %cmp.not, label %if.end, label %poll_requested_events.exit.cleanup_crit_edge

poll_requested_events.exit.cleanup_crit_edge:     ; preds = %poll_requested_events.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %poll_requested_events.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %tobool.not = icmp eq i32 %cond.i, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %lock = getelementptr inbounds %struct.viu_dev, ptr %3, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  %call5 = tail call i32 @videobuf_poll_stream(ptr noundef %file, ptr noundef %vb_vidq, ptr noundef %wait) #13
  %or = or i32 %call5, %call2
  tail call void @mutex_unlock(ptr noundef %lock) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %poll_requested_events.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %or, %if.end4 ], [ 8, %poll_requested_events.exit.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @viu_mmap(ptr nocapture noundef readonly %file, ptr noundef %vma) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dev1 = getelementptr inbounds %struct.viu_fh, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %lock = getelementptr inbounds %struct.viu_dev, ptr %3, i32 0, i32 2
  %call5 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %lock, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end7, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %vb_vidq = getelementptr inbounds %struct.viu_fh, ptr %1, i32 0, i32 2
  %call8 = tail call i32 @videobuf_mmap_mapper(ptr noundef %vb_vidq, ptr noundef %vma) #13
  tail call void @mutex_unlock(ptr noundef %lock) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.end7 ], [ -512, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @viu_open(ptr noundef %file) #5 align 64 {
entry:
  %fourcc.addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %file) #13
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %users = getelementptr inbounds %struct.viu_dev, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %users to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %users, align 8
  %inc = add i32 %3, 1
  store i32 %inc, ptr %users, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %inc)
  %cmp8 = icmp sgt i32 %inc, 1
  br i1 %cmp8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %users to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %users, align 8
  br label %cleanup

if.end11:                                         ; preds = %entry
  %vr12 = getelementptr inbounds %struct.viu_dev, ptr %1, i32 0, i32 12
  %5 = ptrtoint ptr %vr12 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vr12, align 8
  %lock = getelementptr inbounds %struct.viu_dev, ptr %1, i32 0, i32 2
  %call25 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %lock, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool.not = icmp eq i32 %call25, 0
  br i1 %tobool.not, label %if.end29, label %if.then26

if.then26:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  %7 = ptrtoint ptr %users to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %users, align 8
  %dec28 = add i32 %8, -1
  store i32 %dec28, ptr %users, align 8
  br label %cleanup

if.end29:                                         ; preds = %if.end11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 652) #17
  %tobool31.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool31.not, label %if.then32, label %if.end36

if.then32:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %users to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %users, align 8
  %dec34 = add i32 %11, -1
  store i32 %dec34, ptr %users, align 8
  tail call void @mutex_unlock(ptr noundef %lock) #13
  br label %cleanup

if.end36:                                         ; preds = %if.end29
  tail call void @v4l2_fh_init(ptr noundef nonnull %call7.i.i, ptr noundef %call) #13
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %12 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7.i.i, ptr %private_data, align 4
  %dev38 = getelementptr inbounds %struct.viu_fh, ptr %call7.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %dev38 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %1, ptr %dev38, align 8
  %type = getelementptr inbounds %struct.viu_fh, ptr %call7.i.i, i32 0, i32 10
  %14 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %type, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fourcc.addr.i)
  %15 = ptrtoint ptr %fourcc.addr.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 876758866, ptr %fourcc.addr.i, align 4
  %16 = load i32, ptr getelementptr inbounds ([2 x %struct.viu_fmt], ptr @formats, i32 0, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 876758866, i32 %16)
  %cmp1.i = icmp eq i32 %16, 876758866
  br i1 %cmp1.i, label %if.end36.if.then.i_crit_edge, label %for.inc.i

if.end36.if.then.i_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

if.then.i:                                        ; preds = %for.inc.i.if.then.i_crit_edge, %if.end36.if.then.i_crit_edge
  %i.012.lcssa.i = phi i32 [ 0, %if.end36.if.then.i_crit_edge ], [ 1, %for.inc.i.if.then.i_crit_edge ]
  %add.ptr.i = getelementptr %struct.viu_fmt, ptr @formats, i32 %i.012.lcssa.i
  br label %format_by_fourcc.exit

for.inc.i:                                        ; preds = %if.end36
  %17 = load i32, ptr getelementptr inbounds ([2 x %struct.viu_fmt], ptr @formats, i32 0, i32 1, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 876758866, i32 %17)
  %cmp1.1.i = icmp eq i32 %17, 876758866
  br i1 %cmp1.1.i, label %for.inc.i.if.then.i_crit_edge, label %for.inc.1.i

for.inc.i.if.then.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

for.inc.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, ptr noundef nonnull %fourcc.addr.i) #16
  br label %format_by_fourcc.exit

format_by_fourcc.exit:                            ; preds = %for.inc.1.i, %if.then.i
  %retval.0.i = phi ptr [ %add.ptr.i, %if.then.i ], [ null, %for.inc.1.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fourcc.addr.i)
  %fmt = getelementptr inbounds %struct.viu_fh, ptr %call7.i.i, i32 0, i32 6
  %18 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %retval.0.i, ptr %fmt, align 8
  %width = getelementptr inbounds %struct.viu_fh, ptr %call7.i.i, i32 0, i32 7
  %19 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 720, ptr %width, align 4
  %height = getelementptr inbounds %struct.viu_fh, ptr %call7.i.i, i32 0, i32 8
  %20 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 576, ptr %height, align 8
  %width41 = getelementptr inbounds %struct.viu_dev, ptr %1, i32 0, i32 19, i32 2
  %21 = ptrtoint ptr %width41 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 720, ptr %width41, align 8
  %22 = load i32, ptr %height, align 8
  %height44 = getelementptr inbounds %struct.viu_dev, ptr %1, i32 0, i32 19, i32 3
  %23 = ptrtoint ptr %height44 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %height44, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !319
  call void @arm_heavy_mb() #13
  %luminance.i = getelementptr inbounds %struct.viu_reg, ptr %6, i32 0, i32 1
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %luminance.i, i32 -1793940908) #13, !srcloc !313
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !320
  call void @arm_heavy_mb() #13
  %chroma_r.i = getelementptr inbounds %struct.viu_reg, ptr %6, i32 0, i32 2
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %chroma_r.i, i32 53542912) #13, !srcloc !313
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !321
  call void @arm_heavy_mb() #13
  %chroma_g.i = getelementptr inbounds %struct.viu_reg, ptr %6, i32 0, i32 3
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %chroma_g.i, i32 106958648) #13, !srcloc !313
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !322
  call void @arm_heavy_mb() #13
  %chroma_b.i = getelementptr inbounds %struct.viu_reg, ptr %6, i32 0, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %chroma_b.i, i32 1033) #13, !srcloc !313
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !323
  call void @arm_heavy_mb() #13
  %alpha.i = getelementptr inbounds %struct.viu_reg, ptr %6, i32 0, i32 9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %alpha.i, i32 255) #13, !srcloc !313
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !324
  call void @arm_heavy_mb() #13
  %req_alarm.i = getelementptr inbounds %struct.viu_reg, ptr %6, i32 0, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %req_alarm.i, i32 144) #13, !srcloc !313
  %24 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #13, !srcloc !337
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !357
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !358
  call void @arm_heavy_mb() #13
  %and = and i32 %24, -32513
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %and) #13, !srcloc !313
  %25 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #13, !srcloc !337
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !359
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !360
  call void @arm_heavy_mb() #13
  %or = or i32 %25, 4128768
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %or) #13, !srcloc !313
  %vbq_lock = getelementptr inbounds %struct.viu_fh, ptr %call7.i.i, i32 0, i32 3
  call void @__raw_spin_lock_init(ptr noundef %vbq_lock, ptr noundef nonnull @.str.101, ptr noundef nonnull @viu_open.__key, i16 noundef signext 3) #13
  %vb_vidq = getelementptr inbounds %struct.viu_fh, ptr %call7.i.i, i32 0, i32 2
  %dev101 = getelementptr inbounds %struct.viu_dev, ptr %1, i32 0, i32 5
  %26 = ptrtoint ptr %dev101 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev101, align 4
  %28 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %type, align 8
  %30 = ptrtoint ptr %dev38 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev38, align 8
  %lock105 = getelementptr inbounds %struct.viu_dev, ptr %31, i32 0, i32 2
  call void @videobuf_queue_dma_contig_init(ptr noundef %vb_vidq, ptr noundef nonnull @viu_video_qops, ptr noundef %27, ptr noundef %vbq_lock, i32 noundef %29, i32 noundef 4, i32 noundef 152, ptr noundef nonnull %call7.i.i, ptr noundef %lock105) #13
  call void @v4l2_fh_add(ptr noundef nonnull %call7.i.i) #13
  call void @mutex_unlock(ptr noundef %lock) #13
  br label %cleanup

cleanup:                                          ; preds = %format_by_fourcc.exit, %if.then32, %if.then26, %if.then9
  %retval.0 = phi i32 [ -16, %if.then9 ], [ -512, %if.then26 ], [ 0, %format_by_fourcc.exit ], [ -12, %if.then32 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @viu_release(ptr noundef %file) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dev1 = getelementptr inbounds %struct.viu_fh, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %call = tail call ptr @video_devdata(ptr noundef %file) #13
  %lock = getelementptr inbounds %struct.viu_dev, ptr %3, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  tail call fastcc void @viu_stop_dma(ptr noundef %3)
  %vb_vidq = getelementptr inbounds %struct.viu_fh, ptr %1, i32 0, i32 2
  tail call void @videobuf_stop(ptr noundef %vb_vidq) #13
  %call4 = tail call i32 @videobuf_mmap_free(ptr noundef %vb_vidq) #13
  tail call void @v4l2_fh_del(ptr noundef %1) #13
  tail call void @v4l2_fh_exit(ptr noundef %1) #13
  tail call void @mutex_unlock(ptr noundef %lock) #13
  tail call void @kfree(ptr noundef %1) #13
  %users = getelementptr inbounds %struct.viu_dev, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %users to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %users, align 8
  %dec = add i32 %5, -1
  store i32 %dec, ptr %users, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @videobuf_read_stream(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_poll(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @videobuf_poll_stream(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @videobuf_mmap_mapper(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @videobuf_queue_dma_contig_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @buffer_setup(ptr nocapture noundef readonly %vq, ptr nocapture noundef %count, ptr nocapture noundef %size) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_data = getelementptr inbounds %struct.videobuf_queue, ptr %vq, i32 0, i32 16
  %0 = ptrtoint ptr %priv_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv_data, align 4
  %width = getelementptr inbounds %struct.viu_fh, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %width, align 4
  %height = getelementptr inbounds %struct.viu_fh, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %height, align 4
  %mul = mul i32 %5, %3
  %fmt = getelementptr inbounds %struct.viu_fh, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fmt, align 4
  %depth = getelementptr inbounds %struct.viu_fmt, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %depth, align 4
  %mul1 = mul i32 %mul, %9
  %shr = ashr i32 %mul1, 3
  %10 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %shr, ptr %size, align 4
  %11 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp = icmp eq i32 %12, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %13 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 32, ptr %count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %14 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size, align 4
  %16 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %count, align 4
  %mul218 = mul i32 %17, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194304, i32 %mul218)
  %cmp319 = icmp ugt i32 %mul218, 4194304
  br i1 %cmp319, label %if.end.while.body_crit_edge, label %if.end.do.end9_crit_edge

if.end.do.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end9

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end.while.body_crit_edge
  %18 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %17, %if.end.while.body_crit_edge ]
  %dec = add i32 %18, -1
  %19 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %dec, ptr %count, align 4
  %20 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %size, align 4
  %mul2 = mul i32 %dec, %21
  %cmp3 = icmp ugt i32 %mul2, 4194304
  br i1 %cmp3, label %while.body.while.body_crit_edge, label %while.body.do.end9_crit_edge

while.body.do.end9_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end9

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

do.end9:                                          ; preds = %while.body.do.end9_crit_edge, %if.end.do.end9_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @buffer_prepare(ptr noundef %vq, ptr noundef %vb, i32 noundef %field) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_data = getelementptr inbounds %struct.videobuf_queue, ptr %vq, i32 0, i32 16
  %0 = ptrtoint ptr %priv_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv_data, align 4
  %fmt = getelementptr inbounds %struct.viu_fh, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fmt, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %do.body2, label %do.end7, !prof !361

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/platform/fsl-viu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 446, 0\0A.popsection", ""() #13, !srcloc !362
  unreachable

do.end7:                                          ; preds = %entry
  %width = getelementptr inbounds %struct.viu_fh, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %width, align 4
  %6 = add i32 %5, -721
  call void @__sanitizer_cov_trace_const_cmp4(i32 -673, i32 %6)
  %7 = icmp ult i32 %6, -673
  br i1 %7, label %do.end7.cleanup_crit_edge, label %lor.lhs.false11

do.end7.cleanup_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false11:                                  ; preds = %do.end7
  %height = getelementptr inbounds %struct.viu_fh, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %height, align 4
  %10 = add i32 %9, -577
  call void @__sanitizer_cov_trace_const_cmp4(i32 -545, i32 %10)
  %11 = icmp ult i32 %10, -545
  br i1 %11, label %lor.lhs.false11.cleanup_crit_edge, label %if.end17

lor.lhs.false11.cleanup_crit_edge:                ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end17:                                         ; preds = %lor.lhs.false11
  %mul = mul nuw nsw i32 %9, %5
  %depth = getelementptr inbounds %struct.viu_fmt, ptr %3, i32 0, i32 2
  %12 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %depth, align 4
  %mul21 = mul i32 %mul, %13
  %shr = ashr i32 %mul21, 3
  %size = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 5
  %14 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %shr, ptr %size, align 4
  %baddr = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 16
  %15 = ptrtoint ptr %baddr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %baddr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp24.not = icmp eq i32 %16, 0
  br i1 %cmp24.not, label %if.end17.if.end30_crit_edge, label %land.lhs.true

if.end17.if.end30_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30

land.lhs.true:                                    ; preds = %if.end17
  %bsize = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 14
  %17 = ptrtoint ptr %bsize to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bsize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %shr)
  %cmp28 = icmp ult i32 %18, %shr
  br i1 %cmp28, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end30_crit_edge

land.lhs.true.if.end30_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end30:                                         ; preds = %land.lhs.true.if.end30_crit_edge, %if.end17.if.end30_crit_edge
  %fmt31 = getelementptr inbounds %struct.viu_buf, ptr %vb, i32 0, i32 1
  %19 = ptrtoint ptr %fmt31 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fmt31, align 8
  %21 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fmt, align 4
  %cmp33.not = icmp eq ptr %20, %22
  br i1 %cmp33.not, label %lor.lhs.false34, label %if.end30.if.then48_crit_edge

if.end30.if.then48_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then48

lor.lhs.false34:                                  ; preds = %if.end30
  %width36 = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 2
  %23 = ptrtoint ptr %width36 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %width36, align 8
  %25 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %width, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %26)
  %cmp38.not = icmp eq i32 %24, %26
  br i1 %cmp38.not, label %lor.lhs.false39, label %lor.lhs.false34.if.then48_crit_edge

lor.lhs.false34.if.then48_crit_edge:              ; preds = %lor.lhs.false34
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then48

lor.lhs.false39:                                  ; preds = %lor.lhs.false34
  %height41 = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 3
  %27 = ptrtoint ptr %height41 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %height41, align 4
  %29 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %30)
  %cmp43.not = icmp eq i32 %28, %30
  br i1 %cmp43.not, label %lor.lhs.false44, label %lor.lhs.false39.if.then48_crit_edge

lor.lhs.false39.if.then48_crit_edge:              ; preds = %lor.lhs.false39
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then48

lor.lhs.false44:                                  ; preds = %lor.lhs.false39
  %field46 = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 6
  %31 = ptrtoint ptr %field46 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %field46, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %field)
  %cmp47.not = icmp eq i32 %32, %field
  br i1 %cmp47.not, label %lor.lhs.false44.if.end59_crit_edge, label %lor.lhs.false44.if.then48_crit_edge

lor.lhs.false44.if.then48_crit_edge:              ; preds = %lor.lhs.false44
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then48

lor.lhs.false44.if.end59_crit_edge:               ; preds = %lor.lhs.false44
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end59

if.then48:                                        ; preds = %lor.lhs.false44.if.then48_crit_edge, %lor.lhs.false39.if.then48_crit_edge, %lor.lhs.false34.if.then48_crit_edge, %if.end30.if.then48_crit_edge
  %33 = ptrtoint ptr %fmt31 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %22, ptr %fmt31, align 8
  %34 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %width, align 4
  %width53 = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 2
  %36 = ptrtoint ptr %width53 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %width53, align 8
  %37 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %height, align 4
  %height56 = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 3
  %39 = ptrtoint ptr %height56 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %height56, align 4
  %field58 = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 6
  %40 = ptrtoint ptr %field58 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %field, ptr %field58, align 8
  br label %if.end59

if.end59:                                         ; preds = %if.then48, %lor.lhs.false44.if.end59_crit_edge
  %state = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 7
  %41 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp61 = icmp eq i32 %42, 0
  br i1 %cmp61, label %if.then62, label %if.end59.cleanup.sink.split_crit_edge

if.end59.cleanup.sink.split_crit_edge:            ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.then62:                                        ; preds = %if.end59
  %call = tail call i32 @videobuf_iolock(ptr noundef %vq, ptr noundef %vb, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp64.not = icmp eq i32 %call, 0
  br i1 %cmp64.not, label %if.end66, label %fail

if.end66:                                         ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #15
  %43 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %width, align 4
  %width69 = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 2
  %45 = ptrtoint ptr %width69 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %width69, align 8
  %46 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %height, align 4
  %height72 = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 3
  %48 = ptrtoint ptr %height72 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %height72, align 4
  %field74 = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 6
  %49 = ptrtoint ptr %field74 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %field, ptr %field74, align 8
  %50 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %fmt, align 4
  %52 = ptrtoint ptr %fmt31 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %51, ptr %fmt31, align 8
  br label %cleanup.sink.split

fail:                                             ; preds = %if.then62
  %call.i = tail call i32 @videobuf_waiton(ptr noundef %vq, ptr noundef %vb, i32 noundef 0, i32 noundef 0) #13
  %int_ops.i = getelementptr inbounds %struct.videobuf_queue, ptr %vq, i32 0, i32 11
  %53 = ptrtoint ptr %int_ops.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %int_ops.i, align 4
  %tobool.not.i = icmp eq ptr %54, null
  br i1 %tobool.not.i, label %fail.cleanup.sink.split_crit_edge, label %land.lhs.true.i

fail.cleanup.sink.split_crit_edge:                ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

land.lhs.true.i:                                  ; preds = %fail
  %vaddr4.i = getelementptr inbounds %struct.videobuf_qtype_ops, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %vaddr4.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %vaddr4.i, align 4
  %tobool5.not.i = icmp eq ptr %56, null
  br i1 %tobool5.not.i, label %land.lhs.true.i.cleanup.sink.split_crit_edge, label %if.then.i

land.lhs.true.i.cleanup.sink.split_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.then.i:                                        ; preds = %land.lhs.true.i
  %call8.i = tail call ptr %56(ptr noundef %vb) #13
  %phi.cmp.i = icmp eq ptr %call8.i, null
  br i1 %phi.cmp.i, label %if.then.i.cleanup.sink.split_crit_edge, label %if.then10.i

if.then.i.cleanup.sink.split_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.then10.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @videobuf_dma_contig_free(ptr noundef %vq, ptr noundef %vb) #13
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then10.i, %if.then.i.cleanup.sink.split_crit_edge, %land.lhs.true.i.cleanup.sink.split_crit_edge, %fail.cleanup.sink.split_crit_edge, %if.end66, %if.end59.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 1, %if.end66 ], [ 1, %if.end59.cleanup.sink.split_crit_edge ], [ 0, %fail.cleanup.sink.split_crit_edge ], [ 0, %land.lhs.true.i.cleanup.sink.split_crit_edge ], [ 0, %if.then.i.cleanup.sink.split_crit_edge ], [ 0, %if.then10.i ]
  %retval.0.ph = phi i32 [ 0, %if.end66 ], [ 0, %if.end59.cleanup.sink.split_crit_edge ], [ %call, %fail.cleanup.sink.split_crit_edge ], [ %call, %land.lhs.true.i.cleanup.sink.split_crit_edge ], [ %call, %if.then.i.cleanup.sink.split_crit_edge ], [ %call, %if.then10.i ]
  %57 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %.sink, ptr %state, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true.cleanup_crit_edge, %lor.lhs.false11.cleanup_crit_edge, %do.end7.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false11.cleanup_crit_edge ], [ -22, %do.end7.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @buffer_queue(ptr nocapture noundef readonly %vq, ptr noundef %vb) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_data = getelementptr inbounds %struct.videobuf_queue, ptr %vq, i32 0, i32 16
  %0 = ptrtoint ptr %priv_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv_data, align 4
  %dev1 = getelementptr inbounds %struct.viu_fh, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %queued = getelementptr inbounds %struct.viu_dev, ptr %3, i32 0, i32 7, i32 2
  %4 = ptrtoint ptr %queued to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %queued, align 4
  %cmp.i.not = icmp eq ptr %5, %queued
  br i1 %cmp.i.not, label %if.else, label %do.end36

do.end36:                                         ; preds = %entry
  %queue38 = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 9
  %prev.i = getelementptr inbounds %struct.viu_dev, ptr %3, i32 0, i32 7, i32 2, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %queue38, ptr noundef %7, ptr noundef %queued) #13
  br i1 %call.i.i, label %if.end.i.i, label %do.end36.list_add_tail.exit_crit_edge

do.end36.list_add_tail.exit_crit_edge:            ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %queue38, ptr %prev.i, align 4
  %9 = ptrtoint ptr %queue38 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %queued, ptr %queue38, align 4
  %prev3.i.i = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 9, i32 1
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev3.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %queue38, ptr %7, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.end36.list_add_tail.exit_crit_edge
  %state = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 7
  %12 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %state, align 4
  br label %if.end160

if.else:                                          ; preds = %entry
  %active = getelementptr inbounds %struct.viu_dev, ptr %3, i32 0, i32 7, i32 1
  %13 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %active, align 4
  %cmp.i199.not = icmp eq ptr %14, %active
  br i1 %cmp.i199.not, label %do.end68, label %do.end103

do.end68:                                         ; preds = %if.else
  %queue70 = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 9
  %prev.i201 = getelementptr inbounds %struct.viu_dev, ptr %3, i32 0, i32 7, i32 1, i32 1
  %15 = ptrtoint ptr %prev.i201 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i201, align 4
  %call.i.i202 = tail call zeroext i1 @__list_add_valid(ptr noundef %queue70, ptr noundef %16, ptr noundef %active) #13
  br i1 %call.i.i202, label %if.end.i.i204, label %do.end68.list_add_tail.exit205_crit_edge

do.end68.list_add_tail.exit205_crit_edge:         ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit205

if.end.i.i204:                                    ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #15
  %17 = ptrtoint ptr %prev.i201 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %queue70, ptr %prev.i201, align 4
  %18 = ptrtoint ptr %queue70 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %active, ptr %queue70, align 4
  %prev3.i.i203 = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 9, i32 1
  %19 = ptrtoint ptr %prev3.i.i203 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev3.i.i203, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %queue70, ptr %16, align 4
  br label %list_add_tail.exit205

list_add_tail.exit205:                            ; preds = %if.end.i.i204, %do.end68.list_add_tail.exit205_crit_edge
  %state73 = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 7
  %21 = ptrtoint ptr %state73 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 3, ptr %state73, align 4
  %timeout = getelementptr inbounds %struct.viu_dev, ptr %3, i32 0, i32 7, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %22 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %22, 50
  %call75 = tail call i32 @mod_timer(ptr noundef %timeout, i32 noundef %add) #13
  %call89 = tail call i32 @buffer_activate(ptr noundef %3, ptr noundef %vb)
  br label %if.end160

do.end103:                                        ; preds = %if.else
  %prev106 = getelementptr inbounds %struct.viu_dev, ptr %3, i32 0, i32 7, i32 1, i32 1
  %23 = ptrtoint ptr %prev106 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev106, align 4
  %width = getelementptr i8, ptr %24, i32 -32
  %25 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %width, align 8
  %width111 = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 2
  %27 = ptrtoint ptr %width111 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %width111, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %28)
  %cmp112 = icmp eq i32 %26, %28
  br i1 %cmp112, label %land.lhs.true, label %do.end103.if.else139_crit_edge

do.end103.if.else139_crit_edge:                   ; preds = %do.end103
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else139

land.lhs.true:                                    ; preds = %do.end103
  %height = getelementptr i8, ptr %24, i32 -28
  %29 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %height, align 4
  %height115 = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 3
  %31 = ptrtoint ptr %height115 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %height115, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %32)
  %cmp116 = icmp eq i32 %30, %32
  br i1 %cmp116, label %land.lhs.true117, label %land.lhs.true.if.else139_crit_edge

land.lhs.true.if.else139_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else139

land.lhs.true117:                                 ; preds = %land.lhs.true
  %fmt = getelementptr i8, ptr %24, i32 104
  %33 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %fmt, align 8
  %fmt118 = getelementptr inbounds %struct.viu_buf, ptr %vb, i32 0, i32 1
  %35 = ptrtoint ptr %fmt118 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %fmt118, align 8
  %cmp119 = icmp eq ptr %34, %36
  br i1 %cmp119, label %if.then120, label %land.lhs.true117.if.else139_crit_edge

land.lhs.true117.if.else139_crit_edge:            ; preds = %land.lhs.true117
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else139

if.then120:                                       ; preds = %land.lhs.true117
  %queue122 = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 9
  %37 = ptrtoint ptr %prev106 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev106, align 4
  %call.i.i207 = tail call zeroext i1 @__list_add_valid(ptr noundef %queue122, ptr noundef %38, ptr noundef %active) #13
  br i1 %call.i.i207, label %if.end.i.i209, label %if.then120.list_add_tail.exit210_crit_edge

if.then120.list_add_tail.exit210_crit_edge:       ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit210

if.end.i.i209:                                    ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #15
  %39 = ptrtoint ptr %prev106 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %queue122, ptr %prev106, align 4
  %40 = ptrtoint ptr %queue122 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %active, ptr %queue122, align 4
  %prev3.i.i208 = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 9, i32 1
  %41 = ptrtoint ptr %prev3.i.i208 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev3.i.i208, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %queue122, ptr %38, align 4
  br label %list_add_tail.exit210

list_add_tail.exit210:                            ; preds = %if.end.i.i209, %if.then120.list_add_tail.exit210_crit_edge
  %state125 = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 7
  %43 = ptrtoint ptr %state125 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 3, ptr %state125, align 4
  br label %if.end160

if.else139:                                       ; preds = %land.lhs.true117.if.else139_crit_edge, %land.lhs.true.if.else139_crit_edge, %do.end103.if.else139_crit_edge
  %queue141 = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 9
  %prev.i211 = getelementptr inbounds %struct.viu_dev, ptr %3, i32 0, i32 7, i32 2, i32 1
  %44 = ptrtoint ptr %prev.i211 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %prev.i211, align 4
  %call.i.i212 = tail call zeroext i1 @__list_add_valid(ptr noundef %queue141, ptr noundef %45, ptr noundef %queued) #13
  br i1 %call.i.i212, label %if.end.i.i214, label %if.else139.list_add_tail.exit215_crit_edge

if.else139.list_add_tail.exit215_crit_edge:       ; preds = %if.else139
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit215

if.end.i.i214:                                    ; preds = %if.else139
  call void @__sanitizer_cov_trace_pc() #15
  %46 = ptrtoint ptr %prev.i211 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %queue141, ptr %prev.i211, align 4
  %47 = ptrtoint ptr %queue141 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %queued, ptr %queue141, align 4
  %prev3.i.i213 = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 9, i32 1
  %48 = ptrtoint ptr %prev3.i.i213 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %45, ptr %prev3.i.i213, align 4
  %49 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %queue141, ptr %45, align 4
  br label %list_add_tail.exit215

list_add_tail.exit215:                            ; preds = %if.end.i.i214, %if.else139.list_add_tail.exit215_crit_edge
  %state144 = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 7
  %50 = ptrtoint ptr %state144 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 2, ptr %state144, align 4
  br label %if.end160

if.end160:                                        ; preds = %list_add_tail.exit215, %list_add_tail.exit210, %list_add_tail.exit205, %list_add_tail.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @buffer_release(ptr noundef %vq, ptr noundef %vb) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_data = getelementptr inbounds %struct.videobuf_queue, ptr %vq, i32 0, i32 16
  %0 = ptrtoint ptr %priv_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv_data, align 4
  %dev1 = getelementptr inbounds %struct.viu_fh, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  tail call fastcc void @viu_stop_dma(ptr noundef %3)
  %call.i = tail call i32 @videobuf_waiton(ptr noundef %vq, ptr noundef %vb, i32 noundef 0, i32 noundef 0) #13
  %int_ops.i = getelementptr inbounds %struct.videobuf_queue, ptr %vq, i32 0, i32 11
  %4 = ptrtoint ptr %int_ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %int_ops.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.free_buffer.exit_crit_edge, label %land.lhs.true.i

entry.free_buffer.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_buffer.exit

land.lhs.true.i:                                  ; preds = %entry
  %vaddr4.i = getelementptr inbounds %struct.videobuf_qtype_ops, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %vaddr4.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vaddr4.i, align 4
  %tobool5.not.i = icmp eq ptr %7, null
  br i1 %tobool5.not.i, label %land.lhs.true.i.free_buffer.exit_crit_edge, label %if.then.i

land.lhs.true.i.free_buffer.exit_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_buffer.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  %call8.i = tail call ptr %7(ptr noundef %vb) #13
  %phi.cmp.i = icmp eq ptr %call8.i, null
  br i1 %phi.cmp.i, label %if.then.i.free_buffer.exit_crit_edge, label %if.then10.i

if.then.i.free_buffer.exit_crit_edge:             ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_buffer.exit

if.then10.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @videobuf_dma_contig_free(ptr noundef %vq, ptr noundef %vb) #13
  br label %free_buffer.exit

free_buffer.exit:                                 ; preds = %if.then10.i, %if.then.i.free_buffer.exit_crit_edge, %land.lhs.true.i.free_buffer.exit_crit_edge, %entry.free_buffer.exit_crit_edge
  %state.i = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 7
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %state.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @videobuf_iolock(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @videobuf_waiton(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @videobuf_dma_contig_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @videobuf_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @videobuf_mmap_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_querycap(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr noundef %cap) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strscpy(ptr noundef %cap, ptr noundef nonnull @.str.56, i32 noundef 16) #13
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %call2 = tail call i32 @strscpy(ptr noundef %card, ptr noundef nonnull @.str.56, i32 noundef 32) #13
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %call4 = tail call i32 @strscpy(ptr noundef %bus_info, ptr noundef nonnull @.str.134, i32 noundef 32) #13
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vidioc_enum_fmt(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp ugt i32 %1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx = getelementptr [2 x %struct.viu_fmt], ptr @formats, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %4 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %pixelformat, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vidioc_g_fmt_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %priv, ptr nocapture noundef %f) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %width = getelementptr inbounds %struct.viu_fh, ptr %priv, i32 0, i32 7
  %0 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %width, align 4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %2 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %fmt, align 4
  %height = getelementptr inbounds %struct.viu_fh, ptr %priv, i32 0, i32 8
  %3 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %height, align 4
  %height3 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %5 = ptrtoint ptr %height3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %height3, align 4
  %field = getelementptr inbounds %struct.viu_fh, ptr %priv, i32 0, i32 2, i32 7
  %6 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %field, align 4
  %field5 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %8 = ptrtoint ptr %field5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %field5, align 4
  %fmt6 = getelementptr inbounds %struct.viu_fh, ptr %priv, i32 0, i32 6
  %9 = ptrtoint ptr %fmt6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fmt6, align 4
  %pixelformat = getelementptr inbounds %struct.viu_fmt, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pixelformat, align 4
  %pixelformat8 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %13 = ptrtoint ptr %pixelformat8 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %pixelformat8, align 4
  %14 = load ptr, ptr %fmt6, align 4
  %depth = getelementptr inbounds %struct.viu_fmt, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %depth, align 4
  %mul = mul i32 %16, %1
  %shr = lshr i32 %mul, 3
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %17 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %shr, ptr %bytesperline, align 4
  %sizeimage = getelementptr inbounds %struct.viu_fh, ptr %priv, i32 0, i32 9
  %18 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sizeimage, align 4
  %sizeimage14 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %20 = ptrtoint ptr %sizeimage14 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %sizeimage14, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %21 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %colorspace, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vidioc_g_fmt_overlay(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %priv, ptr nocapture noundef writeonly %f) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %win = getelementptr inbounds %struct.viu_fh, ptr %priv, i32 0, i32 4
  %0 = call ptr @memcpy(ptr %fmt, ptr %win, i32 40)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_fmt_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef writeonly %priv, ptr nocapture noundef %f) #5 align 64 {
entry:
  %fourcc.addr.i = alloca i32, align 4
  %fourcc.addr.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %fmt1.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %pixelformat.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %0 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pixelformat.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fourcc.addr.i.i) #13
  %2 = ptrtoint ptr %fourcc.addr.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %fourcc.addr.i.i, align 4
  %3 = load i32, ptr getelementptr inbounds ([2 x %struct.viu_fmt], ptr @formats, i32 0, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp1.i.i = icmp eq i32 %3, %1
  br i1 %cmp1.i.i, label %entry.format_by_fourcc.exit.i_crit_edge, label %for.inc.i.i

entry.format_by_fourcc.exit.i_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %format_by_fourcc.exit.i

for.inc.i.i:                                      ; preds = %entry
  %4 = load i32, ptr getelementptr inbounds ([2 x %struct.viu_fmt], ptr @formats, i32 0, i32 1, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %1)
  %cmp1.1.i.i = icmp eq i32 %4, %1
  br i1 %cmp1.1.i.i, label %for.inc.i.i.format_by_fourcc.exit.i_crit_edge, label %format_by_fourcc.exit.thread.i

for.inc.i.i.format_by_fourcc.exit.i_crit_edge:    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %format_by_fourcc.exit.i

format_by_fourcc.exit.thread.i:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, ptr noundef nonnull %fourcc.addr.i.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fourcc.addr.i.i) #13
  br label %cleanup

format_by_fourcc.exit.i:                          ; preds = %for.inc.i.i.format_by_fourcc.exit.i_crit_edge, %entry.format_by_fourcc.exit.i_crit_edge
  %i.012.lcssa.i.i = phi i32 [ 0, %entry.format_by_fourcc.exit.i_crit_edge ], [ 1, %for.inc.i.i.format_by_fourcc.exit.i_crit_edge ]
  %add.ptr.i.i = getelementptr %struct.viu_fmt, ptr @formats, i32 %i.012.lcssa.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fourcc.addr.i.i) #13
  %tobool.not.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not.i, label %format_by_fourcc.exit.i.cleanup_crit_edge, label %if.end9.i

format_by_fourcc.exit.i.cleanup_crit_edge:        ; preds = %format_by_fourcc.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end9.i:                                        ; preds = %format_by_fourcc.exit.i
  %field.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %5 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 4, ptr %field.i, align 4
  %height.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %6 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %height.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %7)
  %cmp12.i = icmp ult i32 %7, 32
  br i1 %cmp12.i, label %if.end9.i.if.end23.sink.split.i_crit_edge, label %if.end16.i

if.end9.i.if.end23.sink.split.i_crit_edge:        ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23.sink.split.i

if.end16.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 576, i32 %7)
  %cmp19.i = icmp ugt i32 %7, 576
  br i1 %cmp19.i, label %if.end16.i.if.end23.sink.split.i_crit_edge, label %if.end16.i.if.end23.i_crit_edge

if.end16.i.if.end23.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23.i

if.end16.i.if.end23.sink.split.i_crit_edge:       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23.sink.split.i

if.end23.sink.split.i:                            ; preds = %if.end16.i.if.end23.sink.split.i_crit_edge, %if.end9.i.if.end23.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 32, %if.end9.i.if.end23.sink.split.i_crit_edge ], [ 576, %if.end16.i.if.end23.sink.split.i_crit_edge ]
  %8 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %.sink.i, ptr %height.i, align 4
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.end23.sink.split.i, %if.end16.i.if.end23.i_crit_edge
  %9 = ptrtoint ptr %fmt1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fmt1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %10)
  %cmp25.i = icmp ult i32 %10, 48
  br i1 %cmp25.i, label %if.end23.i.if.end36.sink.split.i_crit_edge, label %if.end29.i

if.end23.i.if.end36.sink.split.i_crit_edge:       ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36.sink.split.i

if.end29.i:                                       ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 720, i32 %10)
  %cmp32.i = icmp ugt i32 %10, 720
  br i1 %cmp32.i, label %if.end29.i.if.end36.sink.split.i_crit_edge, label %if.end29.i.if.end_crit_edge

if.end29.i.if.end_crit_edge:                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end29.i.if.end36.sink.split.i_crit_edge:       ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36.sink.split.i

if.end36.sink.split.i:                            ; preds = %if.end29.i.if.end36.sink.split.i_crit_edge, %if.end23.i.if.end36.sink.split.i_crit_edge
  %.sink75.i = phi i32 [ 48, %if.end23.i.if.end36.sink.split.i_crit_edge ], [ 720, %if.end29.i.if.end36.sink.split.i_crit_edge ]
  %11 = ptrtoint ptr %fmt1.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %.sink75.i, ptr %fmt1.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.end36.sink.split.i, %if.end29.i.if.end_crit_edge
  %12 = ptrtoint ptr %fmt1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fmt1.i, align 4
  %and.i = and i32 %13, -4
  store i32 %and.i, ptr %fmt1.i, align 4
  %depth.i = getelementptr %struct.viu_fmt, ptr @formats, i32 %i.012.lcssa.i.i, i32 2
  %14 = ptrtoint ptr %depth.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %depth.i, align 4
  %mul.i = mul i32 %15, %and.i
  %shr.i = lshr i32 %mul.i, 3
  %bytesperline.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %16 = ptrtoint ptr %bytesperline.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %shr.i, ptr %bytesperline.i, align 4
  %17 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %height.i, align 4
  %mul46.i = mul i32 %18, %shr.i
  %sizeimage.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %19 = ptrtoint ptr %sizeimage.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %mul46.i, ptr %sizeimage.i, align 4
  %colorspace.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %20 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %colorspace.i, align 4
  %21 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pixelformat.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fourcc.addr.i)
  %23 = ptrtoint ptr %fourcc.addr.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %fourcc.addr.i, align 4
  %24 = load i32, ptr getelementptr inbounds ([2 x %struct.viu_fmt], ptr @formats, i32 0, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %22)
  %cmp1.i = icmp eq i32 %24, %22
  br i1 %cmp1.i, label %if.end.if.then.i_crit_edge, label %for.inc.i

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

if.then.i:                                        ; preds = %for.inc.i.if.then.i_crit_edge, %if.end.if.then.i_crit_edge
  %i.012.lcssa.i = phi i32 [ 0, %if.end.if.then.i_crit_edge ], [ 1, %for.inc.i.if.then.i_crit_edge ]
  %add.ptr.i = getelementptr %struct.viu_fmt, ptr @formats, i32 %i.012.lcssa.i
  br label %format_by_fourcc.exit

for.inc.i:                                        ; preds = %if.end
  %25 = load i32, ptr getelementptr inbounds ([2 x %struct.viu_fmt], ptr @formats, i32 0, i32 1, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %22)
  %cmp1.1.i = icmp eq i32 %25, %22
  br i1 %cmp1.1.i, label %for.inc.i.if.then.i_crit_edge, label %for.inc.1.i

for.inc.i.if.then.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

for.inc.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, ptr noundef nonnull %fourcc.addr.i) #16
  br label %format_by_fourcc.exit

format_by_fourcc.exit:                            ; preds = %for.inc.1.i, %if.then.i
  %retval.0.i26 = phi ptr [ %add.ptr.i, %if.then.i ], [ null, %for.inc.1.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fourcc.addr.i)
  %fmt2 = getelementptr inbounds %struct.viu_fh, ptr %priv, i32 0, i32 6
  %26 = ptrtoint ptr %fmt2 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %retval.0.i26, ptr %fmt2, align 4
  %27 = ptrtoint ptr %fmt1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %fmt1.i, align 4
  %width4 = getelementptr inbounds %struct.viu_fh, ptr %priv, i32 0, i32 7
  %29 = ptrtoint ptr %width4 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %width4, align 4
  %30 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %height.i, align 4
  %height6 = getelementptr inbounds %struct.viu_fh, ptr %priv, i32 0, i32 8
  %32 = ptrtoint ptr %height6 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %height6, align 4
  %33 = ptrtoint ptr %sizeimage.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sizeimage.i, align 4
  %sizeimage8 = getelementptr inbounds %struct.viu_fh, ptr %priv, i32 0, i32 9
  %35 = ptrtoint ptr %sizeimage8 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %sizeimage8, align 4
  %36 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %field.i, align 4
  %field10 = getelementptr inbounds %struct.viu_fh, ptr %priv, i32 0, i32 2, i32 7
  %38 = ptrtoint ptr %field10 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %field10, align 4
  %39 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %f, align 4
  %type11 = getelementptr inbounds %struct.viu_fh, ptr %priv, i32 0, i32 10
  %41 = ptrtoint ptr %type11 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %type11, align 4
  br label %cleanup

cleanup:                                          ; preds = %format_by_fourcc.exit, %format_by_fourcc.exit.i.cleanup_crit_edge, %format_by_fourcc.exit.thread.i
  %retval.0 = phi i32 [ 0, %format_by_fourcc.exit ], [ -22, %format_by_fourcc.exit.i.cleanup_crit_edge ], [ -22, %format_by_fourcc.exit.thread.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_fmt_overlay(ptr nocapture noundef readnone %file, ptr nocapture noundef %priv, ptr nocapture noundef %f) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.viu_fh, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %base.i = getelementptr inbounds %struct.viu_dev, ptr %1, i32 0, i32 15, i32 2
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 8
  %cmp.i = icmp eq ptr %3, null
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %ovfmt.i = getelementptr inbounds %struct.viu_dev, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %ovfmt.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ovfmt.i, align 4
  %cmp1.i = icmp eq ptr %5, null
  br i1 %cmp1.i, label %if.end.i.cleanup_crit_edge, label %if.end3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i
  %width.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %6 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %width.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %7)
  %cmp4.i = icmp ult i32 %7, 48
  br i1 %cmp4.i, label %if.end3.i.cleanup_crit_edge, label %lor.lhs.false.i

if.end3.i.cleanup_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.end3.i
  %height.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %8 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %height.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %9)
  %cmp6.i = icmp ult i32 %9, 32
  br i1 %cmp6.i, label %lor.lhs.false.i.cleanup_crit_edge, label %if.end8.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end8.i:                                        ; preds = %lor.lhs.false.i
  %field9.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %10 = ptrtoint ptr %field9.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %field9.i, align 4
  %width10.i = getelementptr inbounds %struct.viu_dev, ptr %1, i32 0, i32 19, i32 2
  %12 = ptrtoint ptr %width10.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %width10.i, align 8
  %height12.i = getelementptr inbounds %struct.viu_dev, ptr %1, i32 0, i32 19, i32 3
  %14 = ptrtoint ptr %height12.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %height12.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp13.i = icmp eq i32 %11, 0
  %div.i = sdiv i32 %15, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %div.i)
  %cmp17.i = icmp ugt i32 %9, %div.i
  %cond.i = select i1 %cmp17.i, i32 4, i32 2
  %field.0.i = select i1 %cmp13.i, i32 %cond.i, i32 %11
  %16 = zext i32 %field.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.169)
  switch i32 %field.0.i, label %if.end8.i.cleanup_crit_edge [
    i32 2, label %if.end8.i.sw.bb.i_crit_edge
    i32 3, label %if.end8.i.sw.bb.i_crit_edge25
    i32 4, label %if.end8.i.sw.epilog.i_crit_edge
  ]

if.end8.i.sw.epilog.i_crit_edge:                  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.i

if.end8.i.sw.bb.i_crit_edge25:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb.i

if.end8.i.sw.bb.i_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb.i

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb.i:                                          ; preds = %if.end8.i.sw.bb.i_crit_edge, %if.end8.i.sw.bb.i_crit_edge25
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb.i, %if.end8.i.sw.epilog.i_crit_edge
  %maxh.0.i = phi i32 [ %15, %if.end8.i.sw.epilog.i_crit_edge ], [ %div.i, %sw.bb.i ]
  %17 = ptrtoint ptr %field9.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %field.0.i, ptr %field9.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %13)
  %cmp23.i = icmp ugt i32 %7, %13
  br i1 %cmp23.i, label %if.then24.i, label %sw.epilog.i.if.end27.i_crit_edge

sw.epilog.i.if.end27.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27.i

if.then24.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #15
  %18 = ptrtoint ptr %width.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %13, ptr %width.i, align 4
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then24.i, %sw.epilog.i.if.end27.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %maxh.0.i)
  %cmp30.i = icmp ugt i32 %9, %maxh.0.i
  br i1 %cmp30.i, label %if.then31.i, label %if.end27.i.if.end_crit_edge

if.end27.i.if.end_crit_edge:                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then31.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  %19 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %maxh.0.i, ptr %height.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then31.i, %if.end27.i.if.end_crit_edge
  %win = getelementptr inbounds %struct.viu_fh, ptr %priv, i32 0, i32 4
  %20 = call ptr @memcpy(ptr %win, ptr %fmt, i32 40)
  %slock = getelementptr inbounds %struct.viu_dev, ptr %1, i32 0, i32 3
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #13
  store i32 0, ptr @reg_val.0, align 4
  %height8.i = getelementptr inbounds %struct.viu_fh, ptr %priv, i32 0, i32 4, i32 0, i32 3
  %21 = ptrtoint ptr %height8.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %height8.i, align 4
  %23 = shl i32 %22, 15
  %shl.i = and i32 %23, -65536
  %width11.i = getelementptr inbounds %struct.viu_fh, ptr %priv, i32 0, i32 4, i32 0, i32 2
  %24 = ptrtoint ptr %width11.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %width11.i, align 4
  %or.i = or i32 %shl.i, %25
  store i32 %or.i, ptr @reg_val.3, align 4
  %26 = ptrtoint ptr %ovfmt.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ovfmt.i, align 4
  %depth.i = getelementptr inbounds %struct.viu_fmt, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %depth.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %depth.i, align 4
  %div12.i = sdiv i32 %29, 8
  %30 = zext i32 %div12.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.170)
  switch i32 %div12.i, label %do.end27.i [
    i32 2, label %if.end.sw.epilog.i21_crit_edge
    i32 4, label %sw.bb16.i
  ]

if.end.sw.epilog.i21_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.i21

sw.bb16.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  store i32 -2147483648, ptr @reg_val.0, align 4
  br label %sw.epilog.i21

do.end27.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %mul29.i = shl nsw i32 %div12.i, 3
  %call30.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.138, i32 noundef %mul29.i) #16
  br label %viu_setup_preview.exit

sw.epilog.i21:                                    ; preds = %sw.bb16.i, %if.end.sw.epilog.i21_crit_edge
  %.sink.i = phi i32 [ 2, %sw.bb16.i ], [ 1, %if.end.sw.epilog.i21_crit_edge ]
  %mul21.i = shl i32 %25, %.sink.i
  store i32 %mul21.i, ptr @reg_val.2, align 4
  %field.i = getelementptr inbounds %struct.viu_fh, ptr %priv, i32 0, i32 4, i32 1
  %31 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %field.i, align 4
  %ovfield.i = getelementptr inbounds %struct.viu_dev, ptr %1, i32 0, i32 18
  %33 = ptrtoint ptr %ovfield.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %ovfield.i, align 4
  %34 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.171)
  switch i32 %32, label %if.then48.i [
    i32 4, label %sw.epilog.i21.if.end49.i_crit_edge
    i32 8, label %sw.epilog.i21.if.end49.i_crit_edge26
    i32 9, label %sw.epilog.i21.if.end49.i_crit_edge27
    i32 5, label %sw.epilog.i21.if.end49.i_crit_edge28
    i32 6, label %sw.epilog.i21.if.end49.i_crit_edge29
  ]

sw.epilog.i21.if.end49.i_crit_edge29:             ; preds = %sw.epilog.i21
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end49.i

sw.epilog.i21.if.end49.i_crit_edge28:             ; preds = %sw.epilog.i21
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end49.i

sw.epilog.i21.if.end49.i_crit_edge27:             ; preds = %sw.epilog.i21
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end49.i

sw.epilog.i21.if.end49.i_crit_edge26:             ; preds = %sw.epilog.i21
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end49.i

sw.epilog.i21.if.end49.i_crit_edge:               ; preds = %sw.epilog.i21
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end49.i

if.then48.i:                                      ; preds = %sw.epilog.i21
  call void @__sanitizer_cov_trace_pc() #15
  store i32 0, ptr @reg_val.2, align 4
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.then48.i, %sw.epilog.i21.if.end49.i_crit_edge, %sw.epilog.i21.if.end49.i_crit_edge26, %sw.epilog.i21.if.end49.i_crit_edge27, %sw.epilog.i21.if.end49.i_crit_edge28, %sw.epilog.i21.if.end49.i_crit_edge29
  %35 = load i32, ptr @reg_val.0, align 4
  %or50.i = or i32 %35, 134222080
  store i32 %or50.i, ptr @reg_val.0, align 4
  %36 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base.i, align 8
  %38 = ptrtoint ptr %37 to i32
  store i32 %38, ptr @reg_val.1, align 4
  br label %viu_setup_preview.exit

viu_setup_preview.exit:                           ; preds = %if.end49.i, %do.end27.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call5) #13
  br label %cleanup

cleanup:                                          ; preds = %viu_setup_preview.exit, %if.end8.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %if.end3.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %viu_setup_preview.exit ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ], [ -22, %lor.lhs.false.i.cleanup_crit_edge ], [ -22, %if.end3.i.cleanup_crit_edge ], [ -22, %if.end8.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_try_fmt_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #5 align 64 {
entry:
  %fourcc.addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %fmt1 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %0 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pixelformat, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fourcc.addr.i)
  %2 = ptrtoint ptr %fourcc.addr.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %fourcc.addr.i, align 4
  %3 = load i32, ptr getelementptr inbounds ([2 x %struct.viu_fmt], ptr @formats, i32 0, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp1.i = icmp eq i32 %3, %1
  br i1 %cmp1.i, label %entry.format_by_fourcc.exit_crit_edge, label %for.inc.i

entry.format_by_fourcc.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %format_by_fourcc.exit

for.inc.i:                                        ; preds = %entry
  %4 = load i32, ptr getelementptr inbounds ([2 x %struct.viu_fmt], ptr @formats, i32 0, i32 1, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %1)
  %cmp1.1.i = icmp eq i32 %4, %1
  br i1 %cmp1.1.i, label %for.inc.i.format_by_fourcc.exit_crit_edge, label %format_by_fourcc.exit.thread

for.inc.i.format_by_fourcc.exit_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %format_by_fourcc.exit

format_by_fourcc.exit.thread:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, ptr noundef nonnull %fourcc.addr.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fourcc.addr.i)
  br label %cleanup

format_by_fourcc.exit:                            ; preds = %for.inc.i.format_by_fourcc.exit_crit_edge, %entry.format_by_fourcc.exit_crit_edge
  %i.012.lcssa.i = phi i32 [ 0, %entry.format_by_fourcc.exit_crit_edge ], [ 1, %for.inc.i.format_by_fourcc.exit_crit_edge ]
  %add.ptr.i = getelementptr %struct.viu_fmt, ptr @formats, i32 %i.012.lcssa.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fourcc.addr.i)
  %tobool.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not, label %format_by_fourcc.exit.cleanup_crit_edge, label %if.end9

format_by_fourcc.exit.cleanup_crit_edge:          ; preds = %format_by_fourcc.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end9:                                          ; preds = %format_by_fourcc.exit
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %5 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 4, ptr %field, align 4
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %6 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %7)
  %cmp12 = icmp ult i32 %7, 32
  br i1 %cmp12, label %if.end9.if.end23.sink.split_crit_edge, label %if.end16

if.end9.if.end23.sink.split_crit_edge:            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23.sink.split

if.end16:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 576, i32 %7)
  %cmp19 = icmp ugt i32 %7, 576
  br i1 %cmp19, label %if.end16.if.end23.sink.split_crit_edge, label %if.end16.if.end23_crit_edge

if.end16.if.end23_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

if.end16.if.end23.sink.split_crit_edge:           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23.sink.split

if.end23.sink.split:                              ; preds = %if.end16.if.end23.sink.split_crit_edge, %if.end9.if.end23.sink.split_crit_edge
  %.sink = phi i32 [ 32, %if.end9.if.end23.sink.split_crit_edge ], [ 576, %if.end16.if.end23.sink.split_crit_edge ]
  %8 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %.sink, ptr %height, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.end23.sink.split, %if.end16.if.end23_crit_edge
  %9 = ptrtoint ptr %fmt1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fmt1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %10)
  %cmp25 = icmp ult i32 %10, 48
  br i1 %cmp25, label %if.end23.if.end36.sink.split_crit_edge, label %if.end29

if.end23.if.end36.sink.split_crit_edge:           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36.sink.split

if.end29:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_const_cmp4(i32 720, i32 %10)
  %cmp32 = icmp ugt i32 %10, 720
  br i1 %cmp32, label %if.end29.if.end36.sink.split_crit_edge, label %if.end29.if.end36_crit_edge

if.end29.if.end36_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36

if.end29.if.end36.sink.split_crit_edge:           ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36.sink.split

if.end36.sink.split:                              ; preds = %if.end29.if.end36.sink.split_crit_edge, %if.end23.if.end36.sink.split_crit_edge
  %.sink75 = phi i32 [ 48, %if.end23.if.end36.sink.split_crit_edge ], [ 720, %if.end29.if.end36.sink.split_crit_edge ]
  %11 = ptrtoint ptr %fmt1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %.sink75, ptr %fmt1, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.end36.sink.split, %if.end29.if.end36_crit_edge
  %12 = ptrtoint ptr %fmt1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fmt1, align 4
  %and = and i32 %13, -4
  store i32 %and, ptr %fmt1, align 4
  %depth = getelementptr %struct.viu_fmt, ptr @formats, i32 %i.012.lcssa.i, i32 2
  %14 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %depth, align 4
  %mul = mul i32 %15, %and
  %shr = lshr i32 %mul, 3
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %16 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %shr, ptr %bytesperline, align 4
  %17 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %height, align 4
  %mul46 = mul i32 %18, %shr
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %19 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %mul46, ptr %sizeimage, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %20 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %colorspace, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %format_by_fourcc.exit.cleanup_crit_edge, %format_by_fourcc.exit.thread
  %retval.0 = phi i32 [ 0, %if.end36 ], [ -22, %format_by_fourcc.exit.cleanup_crit_edge ], [ -22, %format_by_fourcc.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vidioc_try_fmt_overlay(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef readnone %f) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_reqbufs(ptr nocapture noundef readnone %file, ptr noundef %priv, ptr noundef %p) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %vb_vidq = getelementptr inbounds %struct.viu_fh, ptr %priv, i32 0, i32 2
  %call = tail call i32 @videobuf_reqbufs(ptr noundef %vb_vidq, ptr noundef %p) #13
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_querybuf(ptr nocapture noundef readnone %file, ptr noundef %priv, ptr noundef %p) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %vb_vidq = getelementptr inbounds %struct.viu_fh, ptr %priv, i32 0, i32 2
  %call = tail call i32 @videobuf_querybuf(ptr noundef %vb_vidq, ptr noundef %p) #13
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_qbuf(ptr nocapture noundef readnone %file, ptr noundef %priv, ptr noundef %p) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %vb_vidq = getelementptr inbounds %struct.viu_fh, ptr %priv, i32 0, i32 2
  %call = tail call i32 @videobuf_qbuf(ptr noundef %vb_vidq, ptr noundef %p) #13
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_dqbuf(ptr nocapture noundef readonly %file, ptr noundef %priv, ptr noundef %p) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %vb_vidq = getelementptr inbounds %struct.viu_fh, ptr %priv, i32 0, i32 2
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %0 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f_flags, align 4
  %and = and i32 %1, 2048
  %call = tail call i32 @videobuf_dqbuf(ptr noundef %vb_vidq, ptr noundef %p, i32 noundef %and) #13
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_overlay(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %priv, i32 noundef %on) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.viu_fh, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  br i1 %tobool.not, label %if.else, label %do.body2

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %slock = getelementptr inbounds %struct.viu_dev, ptr %1, i32 0, i32 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #13
  %vr = getelementptr inbounds %struct.viu_dev, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %vr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vr, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !316
  tail call void @arm_heavy_mb() #13
  %4 = load i32, ptr @reg_val.1, align 4
  %field_base_addr.i = getelementptr inbounds %struct.viu_reg, ptr %3, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %field_base_addr.i, i32 %4) #13, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !317
  tail call void @arm_heavy_mb() #13
  %5 = load i32, ptr @reg_val.2, align 4
  %dma_inc.i = getelementptr inbounds %struct.viu_reg, ptr %3, i32 0, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dma_inc.i, i32 %5) #13, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  tail call void @arm_heavy_mb() #13
  %6 = load i32, ptr @reg_val.3, align 4
  %picture_count.i = getelementptr inbounds %struct.viu_reg, ptr %3, i32 0, i32 7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %picture_count.i, i32 %6) #13, !srcloc !313
  %ovenable = getelementptr inbounds %struct.viu_dev, ptr %1, i32 0, i32 17
  %7 = ptrtoint ptr %ovenable to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %ovenable, align 8
  %8 = ptrtoint ptr %vr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vr, align 8
  %field.i = getelementptr inbounds %struct.viu_dev, ptr %1, i32 0, i32 9
  %10 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %field.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !325
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 1) #13, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !326
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 256) #13, !srcloc !313
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call3) #13
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @viu_stop_dma(ptr noundef %1)
  %ovenable7 = getelementptr inbounds %struct.viu_dev, ptr %1, i32 0, i32 17
  %11 = ptrtoint ptr %ovenable7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %ovenable7, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %do.body2
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vidioc_g_fbuf(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %priv, ptr nocapture noundef writeonly %arg) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.viu_fh, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %ovbuf = getelementptr inbounds %struct.viu_dev, ptr %1, i32 0, i32 15
  %2 = call ptr @memcpy(ptr %arg, ptr %ovbuf, i32 44)
  %3 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 4, ptr %arg, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_fbuf(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %arg) #5 align 64 {
entry:
  %fourcc.addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.viu_fh, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %call = tail call zeroext i1 @capable(i32 noundef 21) #13
  br i1 %call, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call zeroext i1 @capable(i32 noundef 17) #13
  br i1 %call2, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %pixelformat = getelementptr inbounds %struct.v4l2_framebuffer, ptr %arg, i32 0, i32 3, i32 2
  %2 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pixelformat, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fourcc.addr.i)
  %4 = ptrtoint ptr %fourcc.addr.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %fourcc.addr.i, align 4
  %5 = load i32, ptr getelementptr inbounds ([2 x %struct.viu_fmt], ptr @formats, i32 0, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %3)
  %cmp1.i = icmp eq i32 %5, %3
  br i1 %cmp1.i, label %if.end.format_by_fourcc.exit_crit_edge, label %for.inc.i

if.end.format_by_fourcc.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %format_by_fourcc.exit

for.inc.i:                                        ; preds = %if.end
  %6 = load i32, ptr getelementptr inbounds ([2 x %struct.viu_fmt], ptr @formats, i32 0, i32 1, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %3)
  %cmp1.1.i = icmp eq i32 %6, %3
  br i1 %cmp1.1.i, label %for.inc.i.format_by_fourcc.exit_crit_edge, label %format_by_fourcc.exit.thread

for.inc.i.format_by_fourcc.exit_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %format_by_fourcc.exit

format_by_fourcc.exit.thread:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, ptr noundef nonnull %fourcc.addr.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fourcc.addr.i)
  br label %cleanup

format_by_fourcc.exit:                            ; preds = %for.inc.i.format_by_fourcc.exit_crit_edge, %if.end.format_by_fourcc.exit_crit_edge
  %i.012.lcssa.i = phi i32 [ 0, %if.end.format_by_fourcc.exit_crit_edge ], [ 1, %for.inc.i.format_by_fourcc.exit_crit_edge ]
  %add.ptr.i = getelementptr %struct.viu_fmt, ptr @formats, i32 %i.012.lcssa.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fourcc.addr.i)
  %cmp = icmp eq ptr %add.ptr.i, null
  br i1 %cmp, label %format_by_fourcc.exit.cleanup_crit_edge, label %if.end6

format_by_fourcc.exit.cleanup_crit_edge:          ; preds = %format_by_fourcc.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6:                                          ; preds = %format_by_fourcc.exit
  %ovbuf = getelementptr inbounds %struct.viu_dev, ptr %1, i32 0, i32 15
  %7 = call ptr @memcpy(ptr %ovbuf, ptr %arg, i32 44)
  %ovfmt = getelementptr inbounds %struct.viu_dev, ptr %1, i32 0, i32 16
  %8 = ptrtoint ptr %ovfmt to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %add.ptr.i, ptr %ovfmt, align 4
  %bytesperline = getelementptr inbounds %struct.viu_dev, ptr %1, i32 0, i32 15, i32 3, i32 4
  %9 = ptrtoint ptr %bytesperline to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bytesperline, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp9 = icmp eq i32 %10, 0
  br i1 %cmp9, label %if.then10, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  %fmt8 = getelementptr inbounds %struct.viu_dev, ptr %1, i32 0, i32 15, i32 3
  %11 = ptrtoint ptr %fmt8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fmt8, align 4
  %depth = getelementptr %struct.viu_fmt, ptr @formats, i32 %i.012.lcssa.i, i32 2
  %13 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %depth, align 4
  %mul = mul i32 %14, %12
  %div27 = lshr i32 %mul, 3
  %15 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %div27, ptr %bytesperline, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.end6.cleanup_crit_edge, %format_by_fourcc.exit.cleanup_crit_edge, %format_by_fourcc.exit.thread, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %land.lhs.true.cleanup_crit_edge ], [ -22, %format_by_fourcc.exit.cleanup_crit_edge ], [ 0, %if.then10 ], [ 0, %if.end6.cleanup_crit_edge ], [ -22, %format_by_fourcc.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_streamon(ptr nocapture noundef readnone %file, ptr noundef %priv, i32 noundef %i) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.viu_fh, ptr %priv, i32 0, i32 1
  %type = getelementptr inbounds %struct.viu_fh, ptr %priv, i32 0, i32 10
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i)
  %cmp3.not = icmp eq i32 %i, 1
  %or.cond = and i1 %cmp3.not, %cmp.not
  br i1 %or.cond, label %if.end5, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %entry
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %ovenable = getelementptr inbounds %struct.viu_dev, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %ovenable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ovenable, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end5.if.end8_crit_edge, label %if.then6

if.end5.if.end8_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

if.then6:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %ovenable to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %ovenable, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end5.if.end8_crit_edge
  %7 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev1, align 4
  %vr1.i = getelementptr inbounds %struct.viu_dev, ptr %8, i32 0, i32 12
  %9 = ptrtoint ptr %vr1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vr1.i, align 8
  %field.i = getelementptr inbounds %struct.viu_dev, ptr %8, i32 0, i32 9
  %11 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %field.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !325
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 1) #13, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !326
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 256) #13, !srcloc !313
  %vb_vidq = getelementptr inbounds %struct.viu_fh, ptr %priv, i32 0, i32 2
  %call = tail call i32 @videobuf_streamon(ptr noundef %vb_vidq) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end8 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_streamoff(ptr nocapture noundef readnone %file, ptr noundef %priv, i32 noundef %i) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.viu_fh, ptr %priv, i32 0, i32 10
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i)
  %cmp2.not = icmp eq i32 %i, 1
  %or.cond = and i1 %cmp2.not, %cmp.not
  br i1 %or.cond, label %if.end4, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %dev = getelementptr inbounds %struct.viu_fh, ptr %priv, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call fastcc void @viu_stop_dma(ptr noundef %3)
  %vb_vidq = getelementptr inbounds %struct.viu_fh, ptr %priv, i32 0, i32 2
  %call = tail call i32 @videobuf_streamoff(ptr noundef %vb_vidq) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end4 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vidioc_g_std(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %priv, ptr nocapture noundef writeonly %std_id) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.viu_fh, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %std = getelementptr inbounds %struct.viu_dev, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %std to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %std, align 8
  %4 = ptrtoint ptr %std_id to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %3, ptr %std_id, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_std(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %priv, i64 noundef %id) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.viu_fh, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %std = getelementptr inbounds %struct.viu_dev, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %std to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %id, ptr %std, align 8
  %3 = load ptr, ptr %dev, align 4
  %decoder = getelementptr inbounds %struct.viu_dev, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %decoder to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %decoder, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end20_crit_edge, label %if.else

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

if.else:                                          ; preds = %entry
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %video, align 4
  %tobool2.not = icmp eq ptr %9, null
  br i1 %tobool2.not, label %if.else.if.end20_crit_edge, label %land.lhs.true

if.else.if.end20_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

land.lhs.true:                                    ; preds = %if.else
  %s_std = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %s_std to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_std, align 4
  %tobool5.not = icmp eq ptr %11, null
  br i1 %tobool5.not, label %land.lhs.true.if.end20_crit_edge, label %if.else7

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

if.else7:                                         ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool8.not = icmp eq ptr %12, null
  br i1 %tobool8.not, label %if.else7.if.else14_crit_edge, label %land.lhs.true9

if.else7.if.else14_crit_edge:                     ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else14

land.lhs.true9:                                   ; preds = %if.else7
  %s_std10 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %s_std10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_std10, align 4
  %tobool11.not = icmp eq ptr %14, null
  br i1 %tobool11.not, label %land.lhs.true9.if.else14_crit_edge, label %land.lhs.true9.if.end20.sink.split_crit_edge

land.lhs.true9.if.end20.sink.split_crit_edge:     ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20.sink.split

land.lhs.true9.if.else14_crit_edge:               ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else14

if.else14:                                        ; preds = %land.lhs.true9.if.else14_crit_edge, %if.else7.if.else14_crit_edge
  br label %if.end20.sink.split

if.end20.sink.split:                              ; preds = %if.else14, %land.lhs.true9.if.end20.sink.split_crit_edge
  %.sink = phi ptr [ %11, %if.else14 ], [ %14, %land.lhs.true9.if.end20.sink.split_crit_edge ]
  %call18 = tail call i32 %.sink(ptr noundef nonnull %5, i64 noundef %id) #13
  br label %if.end20

if.end20:                                         ; preds = %if.end20.sink.split, %land.lhs.true.if.end20_crit_edge, %if.else.if.end20_crit_edge, %entry.if.end20_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_querystd(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %priv, ptr noundef %std_id) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.viu_fh, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %decoder = getelementptr inbounds %struct.viu_dev, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %decoder to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %decoder, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end19_crit_edge, label %if.else

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

if.else:                                          ; preds = %entry
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %video, align 4
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %if.else.if.end19_crit_edge, label %land.lhs.true

if.else.if.end19_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

land.lhs.true:                                    ; preds = %if.else
  %querystd = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %querystd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %querystd, align 4
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %land.lhs.true.if.end19_crit_edge, label %if.else6

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

if.else6:                                         ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool7.not = icmp eq ptr %10, null
  br i1 %tobool7.not, label %if.else6.if.else13_crit_edge, label %land.lhs.true8

if.else6.if.else13_crit_edge:                     ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else13

land.lhs.true8:                                   ; preds = %if.else6
  %querystd9 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %querystd9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %querystd9, align 4
  %tobool10.not = icmp eq ptr %12, null
  br i1 %tobool10.not, label %land.lhs.true8.if.else13_crit_edge, label %land.lhs.true8.if.end19.sink.split_crit_edge

land.lhs.true8.if.end19.sink.split_crit_edge:     ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19.sink.split

land.lhs.true8.if.else13_crit_edge:               ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else13

if.else13:                                        ; preds = %land.lhs.true8.if.else13_crit_edge, %if.else6.if.else13_crit_edge
  br label %if.end19.sink.split

if.end19.sink.split:                              ; preds = %if.else13, %land.lhs.true8.if.end19.sink.split_crit_edge
  %.sink = phi ptr [ %9, %if.else13 ], [ %12, %land.lhs.true8.if.end19.sink.split_crit_edge ]
  %call17 = tail call i32 %.sink(ptr noundef nonnull %3, ptr noundef %std_id) #13
  br label %if.end19

if.end19:                                         ; preds = %if.end19.sink.split, %land.lhs.true.if.end19_crit_edge, %if.else.if.end19_crit_edge, %entry.if.end19_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_enum_input(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %priv, ptr noundef %inp) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %inp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %inp, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %type = getelementptr inbounds %struct.v4l2_input, ptr %inp, i32 0, i32 2
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %type, align 4
  %dev = getelementptr inbounds %struct.viu_fh, ptr %priv, i32 0, i32 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %vdev = getelementptr inbounds %struct.viu_dev, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vdev, align 8
  %tvnorms = getelementptr inbounds %struct.video_device, ptr %6, i32 0, i32 22
  %7 = ptrtoint ptr %tvnorms to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %tvnorms, align 8
  %std = getelementptr inbounds %struct.v4l2_input, ptr %inp, i32 0, i32 5
  %9 = ptrtoint ptr %std to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %std, align 8
  %name = getelementptr inbounds %struct.v4l2_input, ptr %inp, i32 0, i32 1
  %call = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str.142, i32 noundef 32) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @vidioc_g_input(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %i) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_input(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %priv, i32 noundef %i) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i)
  %tobool.not = icmp eq i32 %i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.viu_fh, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %decoder = getelementptr inbounds %struct.viu_dev, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %decoder to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %decoder, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.else

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.else:                                          ; preds = %if.end
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %video, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %if.else.cleanup_crit_edge, label %land.lhs.true

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true:                                    ; preds = %if.else
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %tobool6.not = icmp eq ptr %9, null
  br i1 %tobool6.not, label %land.lhs.true.cleanup_crit_edge, label %if.else8

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.else8:                                         ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool9.not = icmp eq ptr %10, null
  br i1 %tobool9.not, label %if.else8.if.else15_crit_edge, label %land.lhs.true10

if.else8.if.else15_crit_edge:                     ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else15

land.lhs.true10:                                  ; preds = %if.else8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %tobool12.not = icmp eq ptr %12, null
  br i1 %tobool12.not, label %land.lhs.true10.if.else15_crit_edge, label %land.lhs.true10.cleanup.sink.split_crit_edge

land.lhs.true10.cleanup.sink.split_crit_edge:     ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

land.lhs.true10.if.else15_crit_edge:              ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else15

if.else15:                                        ; preds = %land.lhs.true10.if.else15_crit_edge, %if.else8.if.else15_crit_edge
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else15, %land.lhs.true10.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %9, %if.else15 ], [ %12, %land.lhs.true10.cleanup.sink.split_crit_edge ]
  %call = tail call i32 %.sink(ptr noundef nonnull %3, i32 noundef 0, i32 noundef 0, i32 noundef 0) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_log_status(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subscribe_event(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @videobuf_reqbufs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @videobuf_querybuf(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @videobuf_qbuf(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @videobuf_dqbuf(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @videobuf_streamon(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @videobuf_streamoff(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 159)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 159)
  ret void
}

attributes #0 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !15, !17, !18, !20, !21, !22, !23, !25, !26, !28, !30, !32, !33, !35, !36, !37, !38, !39, !41, !43, !45, !47, !48, !49, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !72, !74, !75, !76, !78, !79, !80, !82, !83, !85, !86, !87, !89, !91, !92, !94, !95, !97, !98, !100, !102, !103, !104, !106, !107, !108, !110, !112, !113, !114, !116, !117, !118, !119, !121, !122, !123, !124, !126, !127, !128, !129, !131, !132, !133, !135, !136, !137, !139, !140, !141, !143, !144, !145, !147, !149, !151, !152, !153, !154, !156, !157, !158, !159, !161, !162, !163, !165, !166, !167, !168, !170, !171, !172, !174, !175, !176, !178, !179, !180, !182, !183, !184, !186, !187, !189, !190, !191, !192, !194, !196, !198, !199, !200, !201, !203, !204, !205, !206, !208, !209, !210, !212, !213, !214, !216, !217, !218, !220, !221, !222, !224, !225, !226, !228, !229, !230, !232, !233, !234, !236, !237, !238, !240, !241, !242, !243, !245, !247, !249, !250, !251, !252, !254, !255, !256, !258, !259, !260, !261, !263, !265, !266, !267, !268, !270, !271, !272, !274, !275, !276, !278, !279, !280, !282, !283, !284, !285, !287, !288, !289, !291, !292, !293, !295, !296, !297, !299, !300, !301}
!llvm.module.flags = !{!303, !304, !305, !306, !307, !308, !309, !310}
!llvm.ident = !{!311}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/fsl-viu.c", i32 397, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @buffer_activate._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @buffer_activate._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/platform/fsl-viu.c", i32 413, i32 3}
!8 = !{ptr @buffer_activate._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @buffer_activate._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/platform/fsl-viu.c", i32 957, i32 3}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @viu_activate_next_buf._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @viu_activate_next_buf._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @viu_activate_next_buf._entry.8, !16, !"_entry", i1 false, i1 false}
!16 = !{!"../drivers/media/platform/fsl-viu.c", i32 964, i32 3}
!17 = !{ptr @viu_activate_next_buf._entry_ptr.9, !16, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/platform/fsl-viu.c", i32 979, i32 2}
!20 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @viu_default_settings._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @viu_default_settings._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @__initcall__kmod_fsl_viu__294_1594_viu_of_platform_driver_init6, !24, !"__initcall__kmod_fsl_viu__294_1594_viu_of_platform_driver_init6", i1 false, i1 false}
!24 = !{!"../drivers/media/platform/fsl-viu.c", i32 1594, i32 1}
!25 = !{ptr @__exitcall_viu_of_platform_driver_exit, !24, !"__exitcall_viu_of_platform_driver_exit", i1 false, i1 false}
!26 = !{ptr @__UNIQUE_ID_description295, !27, !"__UNIQUE_ID_description295", i1 false, i1 false}
!27 = !{!"../drivers/media/platform/fsl-viu.c", i32 1596, i32 1}
!28 = !{ptr @__UNIQUE_ID_author296, !29, !"__UNIQUE_ID_author296", i1 false, i1 false}
!29 = !{!"../drivers/media/platform/fsl-viu.c", i32 1597, i32 1}
!30 = !{ptr @__UNIQUE_ID_file297, !31, !"__UNIQUE_ID_file297", i1 false, i1 false}
!31 = !{!"../drivers/media/platform/fsl-viu.c", i32 1598, i32 1}
!32 = !{ptr @__UNIQUE_ID_license298, !31, !"__UNIQUE_ID_license298", i1 false, i1 false}
!33 = !{ptr @__UNIQUE_ID_version299, !34, !"__UNIQUE_ID_version299", i1 false, i1 false}
!34 = !{!"../drivers/media/platform/fsl-viu.c", i32 1599, i32 1}
!35 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @__modver_attr, !34, !"__modver_attr", i1 false, i1 false}
!39 = distinct !{null, !40, !"info_level", i1 false, i1 false}
!40 = !{!"../drivers/media/platform/fsl-viu.c", i32 41, i32 12}
!41 = distinct !{null, !42, !"reg_val", i1 false, i1 false}
!42 = !{!"../drivers/media/platform/fsl-viu.c", i32 169, i32 23}
!43 = !{ptr @viu_of_platform_driver, !44, !"viu_of_platform_driver", i1 false, i1 false}
!44 = !{!"../drivers/media/platform/fsl-viu.c", i32 1581, i32 31}
!45 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/platform/fsl-viu.c", i32 1383, i32 3}
!47 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @viu_of_probe._entry, !46, !"_entry", i1 false, i1 false}
!51 = !{ptr @viu_of_probe._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/platform/fsl-viu.c", i32 1389, i32 3}
!54 = !{ptr @viu_of_probe._entry.19, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @viu_of_probe._entry_ptr.21, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/platform/fsl-viu.c", i32 1396, i32 3}
!58 = !{ptr @viu_of_probe._entry.22, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @viu_of_probe._entry_ptr.24, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/platform/fsl-viu.c", i32 1404, i32 3}
!62 = !{ptr @viu_of_probe._entry.25, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @viu_of_probe._entry_ptr.27, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/platform/fsl-viu.c", i32 1412, i32 3}
!66 = !{ptr @viu_of_probe._entry.28, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @viu_of_probe._entry_ptr.30, !65, !"_entry_ptr", i1 false, i1 false}
!68 = distinct !{null, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/platform/fsl-viu.c", i32 1426, i32 36}
!70 = distinct !{null, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/platform/fsl-viu.c", i32 1426, i32 42}
!72 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/platform/fsl-viu.c", i32 1429, i32 3}
!74 = !{ptr @viu_of_probe._entry.33, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @viu_of_probe._entry_ptr.35, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/platform/fsl-viu.c", i32 1436, i32 3}
!78 = !{ptr @viu_of_probe._entry.36, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @viu_of_probe._entry_ptr.38, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @viu_of_probe._key, !81, !"_key", i1 false, i1 false}
!81 = !{!"../drivers/media/platform/fsl-viu.c", i32 1440, i32 2}
!82 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.41, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/platform/fsl-viu.c", i32 1443, i32 3}
!85 = !{ptr @viu_of_probe._entry.40, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @viu_of_probe._entry_ptr.42, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.43, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/platform/fsl-viu.c", i32 1450, i32 4}
!89 = !{ptr @viu_of_probe.__key, !90, !"__key", i1 false, i1 false}
!90 = !{!"../drivers/media/platform/fsl-viu.c", i32 1452, i32 2}
!91 = !{ptr @.str.44, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @viu_of_probe.__key.45, !93, !"__key", i1 false, i1 false}
!93 = !{!"../drivers/media/platform/fsl-viu.c", i32 1470, i32 2}
!94 = !{ptr @.str.46, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @viu_of_probe.__key.47, !96, !"__key", i1 false, i1 false}
!96 = !{!"../drivers/media/platform/fsl-viu.c", i32 1472, i32 2}
!97 = !{ptr @.str.48, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.49, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/media/platform/fsl-viu.c", i32 1485, i32 31}
!100 = !{ptr @.str.51, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/platform/fsl-viu.c", i32 1487, i32 3}
!102 = !{ptr @viu_of_probe._entry.50, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @viu_of_probe._entry_ptr.52, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.54, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/platform/fsl-viu.c", i32 1493, i32 3}
!106 = !{ptr @viu_of_probe._entry.53, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @viu_of_probe._entry_ptr.55, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.56, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/media/platform/fsl-viu.c", i32 1502, i32 45}
!110 = !{ptr @.str.58, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/media/platform/fsl-viu.c", i32 1503, i32 3}
!112 = !{ptr @viu_of_probe._entry.57, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @viu_of_probe._entry_ptr.59, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.61, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/media/platform/fsl-viu.c", i32 1510, i32 2}
!116 = !{ptr @.str.62, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @viu_of_probe._entry.60, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @viu_of_probe._entry_ptr.63, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.64, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/media/platform/fsl-viu.c", i32 348, i32 3}
!121 = !{ptr @.str.65, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @viu_vid_timeout._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @viu_vid_timeout._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.66, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/media/platform/fsl-viu.c", i32 288, i32 2}
!126 = !{ptr @.str.67, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @restart_video_queue._entry, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @restart_video_queue._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.69, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/media/platform/fsl-viu.c", i32 291, i32 3}
!131 = !{ptr @restart_video_queue._entry.68, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @restart_video_queue._entry_ptr.70, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.72, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/media/platform/fsl-viu.c", i32 314, i32 4}
!135 = !{ptr @restart_video_queue._entry.71, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @restart_video_queue._entry_ptr.73, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.75, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/media/platform/fsl-viu.c", i32 320, i32 4}
!139 = !{ptr @restart_video_queue._entry.74, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @restart_video_queue._entry_ptr.76, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.78, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/media/platform/fsl-viu.c", i32 328, i32 4}
!143 = !{ptr @restart_video_queue._entry.77, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @restart_video_queue._entry_ptr.79, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @viu_template, !146, !"viu_template", i1 false, i1 false}
!146 = !{!"../drivers/media/platform/fsl-viu.c", i32 1359, i32 34}
!147 = !{ptr @viu_fops, !148, !"viu_fops", i1 false, i1 false}
!148 = !{!"../drivers/media/platform/fsl-viu.c", i32 1319, i32 42}
!149 = !{ptr @.str.80, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/media/platform/fsl-viu.c", i32 1226, i32 2}
!151 = !{ptr @.str.81, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @viu_read._entry, !150, !"_entry", i1 false, i1 false}
!153 = !{ptr @viu_read._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.82, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/media/platform/fsl-viu.c", i32 1304, i32 2}
!156 = !{ptr @.str.83, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @viu_mmap._entry, !155, !"_entry", i1 false, i1 false}
!158 = !{ptr @viu_mmap._entry_ptr, !155, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.85, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/media/platform/fsl-viu.c", i32 1311, i32 2}
!161 = !{ptr @viu_mmap._entry.84, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @viu_mmap._entry_ptr.86, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.87, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/media/platform/fsl-viu.c", i32 1154, i32 2}
!165 = !{ptr @.str.88, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @viu_open._entry, !164, !"_entry", i1 false, i1 false}
!167 = !{ptr @viu_open._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.90, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/media/platform/fsl-viu.c", i32 1164, i32 2}
!170 = !{ptr @viu_open._entry.89, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @viu_open._entry_ptr.91, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.93, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/media/platform/fsl-viu.c", i32 1191, i32 2}
!174 = !{ptr @viu_open._entry.92, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @viu_open._entry_ptr.94, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.96, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/media/platform/fsl-viu.c", i32 1192, i32 2}
!178 = !{ptr @viu_open._entry.95, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @viu_open._entry_ptr.97, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.99, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/media/platform/fsl-viu.c", i32 1194, i32 2}
!182 = !{ptr @viu_open._entry.98, !181, !"_entry", i1 false, i1 false}
!183 = !{ptr @viu_open._entry_ptr.100, !181, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @viu_open.__key, !185, !"__key", i1 false, i1 false}
!185 = !{!"../drivers/media/platform/fsl-viu.c", i32 1208, i32 2}
!186 = !{ptr @.str.101, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @.str.102, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/media/platform/fsl-viu.c", i32 236, i32 2}
!189 = !{ptr @.str.103, !188, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @format_by_fourcc._entry, !188, !"_entry", i1 false, i1 false}
!191 = !{ptr @format_by_fourcc._entry_ptr, !188, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @formats, !193, !"formats", i1 false, i1 false}
!193 = !{!"../drivers/media/platform/fsl-viu.c", i32 58, i32 23}
!194 = !{ptr @viu_video_qops, !195, !"viu_video_qops", i1 false, i1 false}
!195 = !{!"../drivers/media/platform/fsl-viu.c", i32 542, i32 40}
!196 = !{ptr @.str.104, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/media/platform/fsl-viu.c", i32 369, i32 2}
!198 = !{ptr @.str.105, !197, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @buffer_setup._entry, !197, !"_entry", i1 false, i1 false}
!200 = !{ptr @buffer_setup._entry_ptr, !197, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.106, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/media/platform/fsl-viu.c", i32 493, i32 3}
!203 = !{ptr @.str.107, !202, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @buffer_queue._entry, !202, !"_entry", i1 false, i1 false}
!205 = !{ptr @buffer_queue._entry_ptr, !202, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.109, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/media/platform/fsl-viu.c", i32 494, i32 3}
!208 = !{ptr @buffer_queue._entry.108, !207, !"_entry", i1 false, i1 false}
!209 = !{ptr @buffer_queue._entry_ptr.110, !207, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.112, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/media/platform/fsl-viu.c", i32 496, i32 3}
!212 = !{ptr @buffer_queue._entry.111, !211, !"_entry", i1 false, i1 false}
!213 = !{ptr @buffer_queue._entry_ptr.113, !211, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.115, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/media/platform/fsl-viu.c", i32 501, i32 3}
!216 = !{ptr @buffer_queue._entry.114, !215, !"_entry", i1 false, i1 false}
!217 = !{ptr @buffer_queue._entry_ptr.116, !215, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @.str.118, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/media/platform/fsl-viu.c", i32 504, i32 3}
!220 = !{ptr @buffer_queue._entry.117, !219, !"_entry", i1 false, i1 false}
!221 = !{ptr @buffer_queue._entry_ptr.119, !219, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @.str.121, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/media/platform/fsl-viu.c", i32 508, i32 3}
!224 = !{ptr @buffer_queue._entry.120, !223, !"_entry", i1 false, i1 false}
!225 = !{ptr @buffer_queue._entry_ptr.122, !223, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.124, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/media/platform/fsl-viu.c", i32 513, i32 3}
!228 = !{ptr @buffer_queue._entry.123, !227, !"_entry", i1 false, i1 false}
!229 = !{ptr @buffer_queue._entry_ptr.125, !227, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @.str.127, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/media/platform/fsl-viu.c", i32 520, i32 4}
!232 = !{ptr @buffer_queue._entry.126, !231, !"_entry", i1 false, i1 false}
!233 = !{ptr @buffer_queue._entry_ptr.128, !231, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @.str.130, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/media/platform/fsl-viu.c", i32 525, i32 4}
!236 = !{ptr @buffer_queue._entry.129, !235, !"_entry", i1 false, i1 false}
!237 = !{ptr @buffer_queue._entry_ptr.131, !235, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @.str.132, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/media/platform/fsl-viu.c", i32 1279, i32 2}
!240 = !{ptr @.str.133, !239, !"<string literal>", i1 false, i1 false}
!241 = !{ptr @viu_release._entry, !239, !"_entry", i1 false, i1 false}
!242 = !{ptr @viu_release._entry_ptr, !239, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @viu_ioctl_ops, !244, !"viu_ioctl_ops", i1 false, i1 false}
!244 = !{!"../drivers/media/platform/fsl-viu.c", i32 1329, i32 36}
!245 = !{ptr @.str.134, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/media/platform/fsl-viu.c", i32 557, i32 25}
!247 = !{ptr @.str.135, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/media/platform/fsl-viu.c", i32 702, i32 2}
!249 = !{ptr @.str.136, !248, !"<string literal>", i1 false, i1 false}
!250 = !{ptr @viu_setup_preview._entry, !248, !"_entry", i1 false, i1 false}
!251 = !{ptr @viu_setup_preview._entry_ptr, !248, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @.str.138, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/media/platform/fsl-viu.c", i32 723, i32 3}
!254 = !{ptr @viu_setup_preview._entry.137, !253, !"_entry", i1 false, i1 false}
!255 = !{ptr @viu_setup_preview._entry_ptr.139, !253, !"_entry_ptr", i1 false, i1 false}
!256 = !{ptr @.str.140, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/media/platform/fsl-viu.c", i32 597, i32 3}
!258 = !{ptr @.str.141, !257, !"<string literal>", i1 false, i1 false}
!259 = !{ptr @vidioc_try_fmt_cap._entry, !257, !"_entry", i1 false, i1 false}
!260 = !{ptr @vidioc_try_fmt_cap._entry_ptr, !257, !"_entry_ptr", i1 false, i1 false}
!261 = !{ptr @.str.142, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/media/platform/fsl-viu.c", i32 926, i32 21}
!263 = !{ptr @.str.143, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/media/platform/fsl-viu.c", i32 1095, i32 4}
!265 = !{ptr @.str.144, !264, !"<string literal>", i1 false, i1 false}
!266 = !{ptr @viu_intr._entry, !264, !"_entry", i1 false, i1 false}
!267 = !{ptr @viu_intr._entry_ptr, !264, !"_entry_ptr", i1 false, i1 false}
!268 = !{ptr @.str.146, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/media/platform/fsl-viu.c", i32 1105, i32 3}
!270 = !{ptr @viu_intr._entry.145, !269, !"_entry", i1 false, i1 false}
!271 = !{ptr @viu_intr._entry_ptr.147, !269, !"_entry_ptr", i1 false, i1 false}
!272 = !{ptr @.str.149, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/media/platform/fsl-viu.c", i32 1114, i32 3}
!274 = !{ptr @viu_intr._entry.148, !273, !"_entry", i1 false, i1 false}
!275 = !{ptr @viu_intr._entry_ptr.150, !273, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @.str.152, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/media/platform/fsl-viu.c", i32 1123, i32 3}
!278 = !{ptr @viu_intr._entry.151, !277, !"_entry", i1 false, i1 false}
!279 = !{ptr @viu_intr._entry_ptr.153, !277, !"_entry_ptr", i1 false, i1 false}
!280 = !{ptr @.str.154, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/media/platform/fsl-viu.c", i32 1031, i32 3}
!282 = !{ptr @.str.155, !281, !"<string literal>", i1 false, i1 false}
!283 = !{ptr @viu_capture_intr._entry, !281, !"_entry", i1 false, i1 false}
!284 = !{ptr @viu_capture_intr._entry_ptr, !281, !"_entry_ptr", i1 false, i1 false}
!285 = !{ptr @.str.157, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/media/platform/fsl-viu.c", i32 1036, i32 5}
!287 = !{ptr @viu_capture_intr._entry.156, !286, !"_entry", i1 false, i1 false}
!288 = !{ptr @viu_capture_intr._entry_ptr.158, !286, !"_entry_ptr", i1 false, i1 false}
!289 = !{ptr @.str.160, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/media/platform/fsl-viu.c", i32 1039, i32 5}
!291 = !{ptr @viu_capture_intr._entry.159, !290, !"_entry", i1 false, i1 false}
!292 = !{ptr @viu_capture_intr._entry_ptr.161, !290, !"_entry_ptr", i1 false, i1 false}
!293 = !{ptr @.str.163, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/media/platform/fsl-viu.c", i32 1049, i32 5}
!295 = !{ptr @viu_capture_intr._entry.162, !294, !"_entry", i1 false, i1 false}
!296 = !{ptr @viu_capture_intr._entry_ptr.164, !294, !"_entry_ptr", i1 false, i1 false}
!297 = !{ptr @.str.166, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/media/platform/fsl-viu.c", i32 1065, i32 3}
!299 = !{ptr @viu_capture_intr._entry.165, !298, !"_entry", i1 false, i1 false}
!300 = !{ptr @viu_capture_intr._entry_ptr.167, !298, !"_entry_ptr", i1 false, i1 false}
!301 = !{ptr @mpc512x_viu_of_match, !302, !"mpc512x_viu_of_match", i1 false, i1 false}
!302 = !{!"../drivers/media/platform/fsl-viu.c", i32 1573, i32 34}
!303 = !{i32 1, !"wchar_size", i32 2}
!304 = !{i32 1, !"min_enum_size", i32 4}
!305 = !{i32 8, !"branch-target-enforcement", i32 0}
!306 = !{i32 8, !"sign-return-address", i32 0}
!307 = !{i32 8, !"sign-return-address-all", i32 0}
!308 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!309 = !{i32 7, !"uwtable", i32 1}
!310 = !{i32 7, !"frame-pointer", i32 2}
!311 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!312 = !{i64 2156418057}
!313 = !{i64 6892403}
!314 = !{i64 2156418389}
!315 = !{i64 2156418731}
!316 = !{i64 2156443233}
!317 = !{i64 2156443561}
!318 = !{i64 2156443893}
!319 = !{i64 2156456963}
!320 = !{i64 2156457274}
!321 = !{i64 2156457585}
!322 = !{i64 2156457896}
!323 = !{i64 2156458204}
!324 = !{i64 2156458516}
!325 = !{i64 2156388886}
!326 = !{i64 2156389199}
!327 = !{i64 2156502781}
!328 = !{i64 2156503085}
!329 = !{i64 2156503397}
!330 = !{i64 2156503709}
!331 = !{i64 2156504021}
!332 = !{i64 2156504331}
!333 = !{i64 2156504624}
!334 = !{i64 2156504932}
!335 = !{i64 2156505245}
!336 = !{i64 2156505554}
!337 = !{i64 6892821}
!338 = !{i64 2156475756}
!339 = !{i64 2156477749}
!340 = !{i64 2156487350}
!341 = !{i64 2156487879}
!342 = !{i64 2156461327}
!343 = !{i64 2156461636}
!344 = !{i64 2156462268}
!345 = !{i64 2156463080}
!346 = !{!"branch_weights", i32 2000, i32 1}
!347 = !{i64 2156470380}
!348 = !{i64 2156470689}
!349 = !{i64 2156471321}
!350 = !{i64 2156389505}
!351 = !{i64 2156389859}
!352 = !{i64 2156390116}
!353 = !{i64 2156390490}
!354 = !{i64 2156390734}
!355 = !{i64 2156391036}
!356 = !{i64 2156391351}
!357 = !{i64 2156497401}
!358 = !{i64 2156497764}
!359 = !{i64 2156498244}
!360 = !{i64 2156498750}
!361 = !{!"branch_weights", i32 1, i32 2000}
!362 = !{i64 2156420319, i64 2156420816, i64 2156420356, i64 2156420412, i64 2156420446, i64 2156420470, i64 2156420511, i64 2156420532, i64 2156420560, i64 2156420594}
